Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EEEF1BFA2D
	for <lists+linux-rpi-kernel@lfdr.de>; Thu, 30 Apr 2020 15:52:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PZs6GM4Wp/sp9QcpI6VtVV9q6mHFX7piU8JsOW+bUrE=; b=Tt7MkU0GY+56sT
	pPtIM/R39mewudksp9r32U+QeBOa4wwbt94B9B3IACcE1WqbARjtLkAUp+CRSasdxrUBPiEu7BVQz
	mpK6IPkGaMaQD1fOnKO9XmPjJrcilqlpciYmSBE2JSLTY4RY+j1L+c0A99p6r3CHfS4h8AEaxShp1
	JD6cfkLNFJruVRIP45sl8bWKS6XRLZwbDWDSFLPGiXn5tX0whSsFjnXaVH5hPHS3w9lQV/7O4b8E/
	arXOcEzdxww2Fi+anItG39ps/rALf+MN2BnNxnOV8Bok8QsY3qUuhMhgzF2c7tFmkCt6E3nNw2Gld
	+tVoLYWIjvvumRTpYDMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU9bd-0000nR-7G; Thu, 30 Apr 2020 13:52:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU9aS-0008NL-Pf; Thu, 30 Apr 2020 13:50:50 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B717B2082E;
 Thu, 30 Apr 2020 13:50:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588254648;
 bh=2mLw8FLDMvON6Ru0EDLJPgLcxLqD12on0r+a5CvEJY0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=U85ZRaV6Bz3WrXAeXONYpX3hRADMsBEJfcMoAskF1LSa+d4uVWs3Kmg2md7UtjuLr
 a+JXtlT0RDM/lPFma3Tmm4K5fXgb9SRWUIcUM4zG3hrm80DDXQSdj494+v1fAigTUK
 tVMP2JOSD4aCjtX+M7NylwmIJdbI4UzwnKjGJwtM=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.6 03/79] ARM: dts: bcm283x: Add cells encoding
 format to firmware bus
Date: Thu, 30 Apr 2020 09:49:27 -0400
Message-Id: <20200430135043.19851-3-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200430135043.19851-1-sashal@kernel.org>
References: <20200430135043.19851-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_065048_858443_9CE49F8E 
X-CRM114-Status: GOOD (  10.07  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

[ Upstream commit be08d278eb09210fefbad4c9b27d7843f1c096b2 ]

With the introduction of 55c7c0621078 ("ARM: dts: bcm283x: Fix vc4's
firmware bus DMA limitations") the firmware bus has to comply with
/soc's DMA limitations. Ultimately linking both buses to a same
dma-ranges property. The patch (and author) missed the fact that a bus'
#address-cells and #size-cells properties are not inherited, but set to
a fixed value which, in this case, doesn't match /soc's. This, although
not breaking Linux's DMA mapping functionality, generates ugly dtc
warnings.

Fix the issue by adding the correct address and size cells properties
under the firmware bus.

Fixes: 55c7c0621078 ("ARM: dts: bcm283x: Fix vc4's firmware bus DMA limitations")
Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Link: https://lore.kernel.org/r/20200326134413.12298-1-nsaenzjulienne@suse.de
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/boot/dts/bcm2835-rpi.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/boot/dts/bcm2835-rpi.dtsi b/arch/arm/boot/dts/bcm2835-rpi.dtsi
index fd2c766e0f710..f7ae5a4530b88 100644
--- a/arch/arm/boot/dts/bcm2835-rpi.dtsi
+++ b/arch/arm/boot/dts/bcm2835-rpi.dtsi
@@ -14,6 +14,9 @@
 	soc {
 		firmware: firmware {
 			compatible = "raspberrypi,bcm2835-firmware", "simple-bus";
+			#address-cells = <1>;
+			#size-cells = <1>;
+
 			mboxes = <&mailbox>;
 			dma-ranges;
 		};
-- 
2.20.1


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
