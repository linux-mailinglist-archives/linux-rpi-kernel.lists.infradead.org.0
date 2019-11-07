Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07917F2B9D
	for <lists+linux-rpi-kernel@lfdr.de>; Thu,  7 Nov 2019 10:56:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TClXLMPadFPLYsLR9V2ZfEKnVvDmjRUdM0suIJ9jVmQ=; b=iDO4kCLhQf+oLN
	hFWGFU98pAF6/Md7jCbTSJROF+7Zkhs2ljat72wdEqw21hXL1L00AtwFgLJnO/A/QBErWN/FGXoOR
	OVAiJWI6bZuN2kBTtu/UClLKWdOjI51bzBTtNLF15j1BqtJrwj3h9ULZFKPcm45lQpaHwyTV31riN
	rqe/ycYQnyC/H4+R9fI3sVL+qilCB8rQxvgbMB0FYHwC6J1hNaZgkPVo0lBNZi2PZHIU1Ci7s0J2U
	+1ayFF7EbgvukXOFksaQqZXMpDFahsqNx9D7kub26B/nJeRTXbocdDQn6iYQuCmBfRQccIlKXzPWy
	6gIrDv7v2LUHqX26i70w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSeWm-0004vc-8L; Thu, 07 Nov 2019 09:56:32 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSeWa-0004l4-0c; Thu, 07 Nov 2019 09:56:21 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 9FC4DAFA7;
 Thu,  7 Nov 2019 09:56:18 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: catalin.marinas@arm.com,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 0/2] arm64: Fix CMA/crashkernel reservation
Date: Thu,  7 Nov 2019 10:56:09 +0100
Message-Id: <20191107095611.18429-1-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_015620_201642_5FEF3632 
X-CRM114-Status: UNSURE (   7.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-rpi-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-rpi-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rpi-kernel>, 
 <mailto:linux-rpi-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rpi-kernel/>
List-Post: <mailto:linux-rpi-kernel@lists.infradead.org>
List-Help: <mailto:linux-rpi-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel>, 
 <mailto:linux-rpi-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

As pointed out by Qian Cai[1] the series enabling ZONE_DMA in arm64
breaks CMA/crashkernel reservations on large devices, as it changed its
default placement. After discussing it with Catalin Marinas we're
restoring the old behavior.

The Raspberry Pi 4, being the only device that needs CMA and crashkernel
in ZONE_DMA will explicitly do so trough it's device tree.

[1] https://lkml.org/lkml/2019/10/21/725

---

Changes since v1:
  - Move CMA area registration into bcm2711.dtsi

Changes since v1:
  - s/Raspberry Pi/bcm2711 in bcm2711.dtsi

Nicolas Saenz Julienne (2):
  ARM: dts: bcm2711: force CMA into first GB of memory
  arm64: mm: reserve CMA and crashkernel in ZONE_DMA32

 arch/arm/boot/dts/bcm2711.dtsi | 20 ++++++++++++++++++++
 arch/arm64/mm/init.c           |  4 ++--
 2 files changed, 22 insertions(+), 2 deletions(-)

-- 
2.23.0


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
