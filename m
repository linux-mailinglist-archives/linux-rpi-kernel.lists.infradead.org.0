Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67FF8155BC8
	for <lists+linux-rpi-kernel@lfdr.de>; Fri,  7 Feb 2020 17:31:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:To:Subject
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hlY1m4y2+fjX3Yj8sxVNX/eqtpjsS8EX5WLBapcLcGo=; b=KdmL+ll7bm739n
	PpqA2IFzkdM5zCigEM0gg1ppKJ3+vjZQNArMbjQwSDl2qxZ3tOFQt/Xp3vnBJ/me8u27ai7Q4Xey4
	srJ6xmmUrzjqu/u4VY4VZYwQhp1mgvaJd9Ra36ISFhmWAp04DSpQaYnrxzZ9AqVxgrWkTO+Tx5yZZ
	gPHNoH5GEyHK0wFVvnfBG+q1HTAkb4e9f+MwMc/gHSTUTsXScuIavx12sfFaVF54RrfYdxLMsLYSn
	qykgVvQcAv3ySoBACt/ONhvVo095Ey4yWOWC0qRWZDeUgGVSXbh/dfJ9KyBfyw50bN8IIAVykvOD/
	cA/diBAp8x3OYpjmtEKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j06Wh-0008Km-E9; Fri, 07 Feb 2020 16:30:43 +0000
Received: from cable.insite.cz ([84.242.75.189])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j06Wd-0008K5-SX
 for linux-rpi-kernel@lists.infradead.org; Fri, 07 Feb 2020 16:30:41 +0000
Received: from localhost (localhost [127.0.0.1])
 by cable.insite.cz (Postfix) with ESMTP id BADA7A1A40B08;
 Fri,  7 Feb 2020 17:30:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=ivitera.com; s=mail;
 t=1581093035; bh=qsVc9li1fSz4GnDlcZZEioA7hvf54QxlFumBuo2gVok=;
 h=From:Subject:To:Date:From;
 b=TNOWV1V8XUrr3TaoR45yVPEYe6775YJzz/0eVv41q82odStcVDbsCbFGAq4d5YvD6
 0VZwojaFPkOYex/5VLROOr2CEzC9OZHUxk2QLWP6ePTvz3yYfvD8nKmhBKmJyHDWqN
 WZg51uCKz66s2BESOmiSOnl46IvnYCuRLvIIalMk=
Received: from cable.insite.cz ([84.242.75.189])
 by localhost (server.insite.cz [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wl7j5AY9GYVC; Fri,  7 Feb 2020 17:30:35 +0100 (CET)
Received: from [192.168.100.32] (unknown [192.168.100.32])
 (Authenticated sender: pavel)
 by cable.insite.cz (Postfix) with ESMTPSA id 89C01A1A40B05;
 Fri,  7 Feb 2020 17:30:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=ivitera.com; s=mail;
 t=1581093035; bh=qsVc9li1fSz4GnDlcZZEioA7hvf54QxlFumBuo2gVok=;
 h=From:Subject:To:Date:From;
 b=TNOWV1V8XUrr3TaoR45yVPEYe6775YJzz/0eVv41q82odStcVDbsCbFGAq4d5YvD6
 0VZwojaFPkOYex/5VLROOr2CEzC9OZHUxk2QLWP6ePTvz3yYfvD8nKmhBKmJyHDWqN
 WZg51uCKz66s2BESOmiSOnl46IvnYCuRLvIIalMk=
From: Pavel Hofman <pavel.hofman@ivitera.com>
Subject: [PATCH] overlays: dwc2: Increase RX FIFO size
To: Minas Harutyunyan <hminas@synopsys.com>, Rob Herring
 <robh+dt@kernel.org>, Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
 linux-rpi-kernel@lists.infradead.org
Message-ID: <43db1d9c-6fa2-88bd-11df-6ae2f48a4ac9@ivitera.com>
Date: Fri, 7 Feb 2020 17:30:35 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_083040_247055_E9ADC974 
X-CRM114-Status: GOOD (  11.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

The previous version of the dwc2 overlay set the RX FIFO size to
256 4-byte words. This sounds large enough for a 1024 byte packet (the
largest isochronous high speed packet allowed), but it doesn't take
into account some extra space needed by the hardware.

Minas Harutyunyan at Synopsys (the source of the DWC OTG design)
came up with a more correct value, 301, but since there is spare packet
RAM this can be increased to 558 to allow two packets per frame.

See: https://github.com/raspberrypi/linux/issues/3447

Signed-off-by: Phil Elwell <phil@raspberrypi.com>
Signed-off-by: Pavel Hofman <pavel.hofman@ivitera.com>
---
 arch/arm/boot/dts/bcm283x-rpi-usb-otg.dtsi        | 2 +-
 arch/arm/boot/dts/bcm283x-rpi-usb-peripheral.dtsi | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/bcm283x-rpi-usb-otg.dtsi
b/arch/arm/boot/dts/bcm283x-rpi-usb-otg.dtsi
index e2fd961..20322de 100644
--- a/arch/arm/boot/dts/bcm283x-rpi-usb-otg.dtsi
+++ b/arch/arm/boot/dts/bcm283x-rpi-usb-otg.dtsi
@@ -1,7 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0
 &usb {
 	dr_mode = "otg";
-	g-rx-fifo-size = <256>;
+	g-rx-fifo-size = <558>;
 	g-np-tx-fifo-size = <32>;
 	/*
 	 * According to dwc2 the sum of all device EP
diff --git a/arch/arm/boot/dts/bcm283x-rpi-usb-peripheral.dtsi
b/arch/arm/boot/dts/bcm283x-rpi-usb-peripheral.dtsi
index 0ff0e9e..1409d1b 100644
--- a/arch/arm/boot/dts/bcm283x-rpi-usb-peripheral.dtsi
+++ b/arch/arm/boot/dts/bcm283x-rpi-usb-peripheral.dtsi
@@ -1,7 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0
 &usb {
 	dr_mode = "peripheral";
-	g-rx-fifo-size = <256>;
+	g-rx-fifo-size = <558>;
 	g-np-tx-fifo-size = <32>;
 	g-tx-fifo-size = <256 256 512 512 512 768 768>;
 };
-- 
1.9.1


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
