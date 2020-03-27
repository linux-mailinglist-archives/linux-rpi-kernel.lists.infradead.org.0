Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FD51196057
	for <lists+linux-rpi-kernel@lfdr.de>; Fri, 27 Mar 2020 22:17:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sXmOk6Y3Vb+WwpltB29GmFWOSb9BQi3uK3o/PdGLj3U=; b=DiBxWm1DC9txml
	okZc2CMBp4+pbtN3f0zxOiOJY8kwyRmokugH10dlzzxpNK5RKAabAnNEEes/YZsQtytFsyINirX3p
	llJtBIEtPQs03fRXiUwC18cI+/6AZLKpxCPlPDlhnYyPoruA4nUVloYQOhZGHNSAtolwWG1zKmMmx
	hIVB3OStVch6b2Gjme1u+QXdADBIxAgFuDoEX0SgIhlFdrMXnDVp/Ka/6ecxqYpUgAXYRWtTGZCO1
	ikh2/r0ng46tL4Ptox2aj/0PSBy+2sMgeLRzPh9LFDd2MjxO/chZeKkkDc0IIyieFK+vSO+evox9C
	oXJq4h5JDIv0y3CIrB9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHwME-0003Lj-KX; Fri, 27 Mar 2020 21:17:38 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHwLG-0002O3-8Y; Fri, 27 Mar 2020 21:16:40 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 3B4E7AC4A;
 Fri, 27 Mar 2020 21:16:36 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: [GIT PULL 1/3] bcm2835-dt-fixes-2020-03-27
Date: Fri, 27 Mar 2020 22:16:30 +0100
Message-Id: <20200327211632.32346-1-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_141638_444935_AC3D35A8 
X-CRM114-Status: UNSURE (   9.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-arm-kernel@lists.infradead.org, bcm-kernel-feedback-list@broadcom.com,
 linux-kernel@vger.kernel.org, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

Hi Florian,

The following changes since commit 55c7c0621078bd73e9d4d2a11eb36e61bc6fe998:

  ARM: dts: bcm283x: Fix vc4's firmware bus DMA limitations (2020-03-22 14:45:24 -0700)

are available in the Git repository at:

  ssh://git@gitolite.kernel.org/pub/scm/linux/kernel/git/nsaenz/linux-rpi.git tags/bcm2835-dt-fixes-2020-03-27

for you to fetch changes up to be08d278eb09210fefbad4c9b27d7843f1c096b2:

  ARM: dts: bcm283x: Add cells encoding format to firmware bus (2020-03-27 21:36:17 +0100)

----------------------------------------------------------------
This patch is to be squashed into 55c7c0621078 ("ARM: dts: bcm283x: Fix
vc4's firmware bus DMA limitations") as it turned out to be faulty

----------------------------------------------------------------
Nicolas Saenz Julienne (1):
      ARM: dts: bcm283x: Add cells encoding format to firmware bus

 arch/arm/boot/dts/bcm2835-rpi.dtsi | 3 +++
 1 file changed, 3 insertions(+)

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
