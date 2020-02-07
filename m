Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A45AF156096
	for <lists+linux-rpi-kernel@lfdr.de>; Fri,  7 Feb 2020 22:13:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:To:Subject
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=G+AMTJAyyOoK1Ee2GlfOrLbP79eEeMMt5JAOjfVZhIw=; b=BLbuVGFfLCTy2Q
	Uq4Nqr6JPg+NUz/y+KdmFb1A2053BBwGBsaodR6yJ/9472tYL6DCYkWHKiPOwwxBD3oHE4dGcyPxc
	wF3QRX1xQvQZmTUzMwAWcJOPTr09vlF1+qkMjhvhyo9nR+uojOEG0qZrMOWxntSPWQLQAUeJEA7wj
	I1TWXfipGkcrM4O22ies1boTRS2YL6YhP3vaq5ohozkWdEYKKDtnYo6oKaUWeKkcfZwf1aqcrKbF1
	Aquy/ewhQ0QCj/3Nf6AT/GEzUnl4orshVSIiAfBXRWfaI0vTRoUOhSjISMcb7hBEMI3KSCqcxnq+l
	XNEhvUzuXlvGQTXaDXZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j0Avn-00038I-Bw; Fri, 07 Feb 2020 21:12:55 +0000
Received: from cable.insite.cz ([84.242.75.189])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0Avk-00037l-6V
 for linux-rpi-kernel@lists.infradead.org; Fri, 07 Feb 2020 21:12:54 +0000
Received: from localhost (localhost [127.0.0.1])
 by cable.insite.cz (Postfix) with ESMTP id D29A2A1A40B05;
 Fri,  7 Feb 2020 22:12:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=ivitera.com; s=mail;
 t=1581109966; bh=vjLjZRimaLLdXirEYigexl5ECe4JAQKBxtDHAHr0fkA=;
 h=From:Subject:To:Date:From;
 b=EM3+GpOBcRrrMKJJbXiJt8IVWUvAiBlP8bptXOGVKEfmcpVYbgThkCAKNDryo3QFx
 prx5MEXezvSbsrjqiqIeEGmhJDVFfWwEUMrbkBqHdKrPBBn6oTkrQ8xKiHZuRtwnTd
 zMw6zQ7RD9KKz0RNHiiH08yGyNIUFOlnfyZp/xhw=
Received: from cable.insite.cz ([84.242.75.189])
 by localhost (server.insite.cz [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4OWGe8gPi5rn; Fri,  7 Feb 2020 22:12:41 +0100 (CET)
Received: from [192.168.105.151] (ip28.insite.cz [81.0.237.28])
 (Authenticated sender: pavel)
 by cable.insite.cz (Postfix) with ESMTPSA id 656E4A1A40B08;
 Fri,  7 Feb 2020 22:12:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=ivitera.com; s=mail;
 t=1581109961; bh=vjLjZRimaLLdXirEYigexl5ECe4JAQKBxtDHAHr0fkA=;
 h=From:Subject:To:Date:From;
 b=ZV4WN0uTlKZ3FOmRERUXyVtK5rWH45ea/8XfajTHqwoM5MFOWHQaQ5+5cXbTunXgn
 K4+pfL3kHfdoTSeOI2OqbXYHpY0U5RXAY1e7tG3sWR77oRuzRnJUNuAX3tF8jpZ7Tx
 Byf5kL4eVaEid9g+bRVAGfT5mg0BuKCdpqh+IQsk=
From: Pavel Hofman <pavel.hofman@ivitera.com>
Subject: [PATCH] ARM: dts: bcm283x: increase dwc2's RX FIFO size
To: Minas Harutyunyan <hminas@synopsys.com>, Rob Herring
 <robh+dt@kernel.org>, Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
 linux-rpi-kernel@lists.infradead.org
Message-ID: <22beb919-a3c6-33c0-8d3f-070061a6c853@ivitera.com>
Date: Fri, 7 Feb 2020 22:12:40 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_131252_736749_A44DF0D5 
X-CRM114-Status: GOOD (  13.61  )
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
256 4-byte words. This is not enough for 1024 bytes of the largest
isochronous high speed packet allowed, because it doesn't take into
account extra space needed by dwc2.

Below is a detailed calculation which arises from dwc2 documentation:

* RAM for SETUP Packets: 4 * n + 6 locations in Scatter/Gather DMA mode
and 5 * n+8 locations in Slave and Buffer DMA mode must be reserved in
the RxFIFO to receive up to n SETUP packets on control endpoints, where n
is the number of control endpoints the device controller supports.

bcm283x: 5*n+8. The Broadcom core has 1 control EP (n=1), so 13 locations

* One location for Global OUT NAK

bcm283x: 1 location

* Status information is written to the FIFO along with each received
packet. Therefore, a minimum space of (Largest Packet Size / 4) + 1 must
be allotted to receive packets. If a high-bandwidth endpoint is enabled,
or multiple isochronous endpoints are enabled, then at least two (Largest
Packet Size / 4) + 1 spaces must be allotted to receive back-to-back
packets. Typically, two (Largest Packet Size / 4) + 1 spaces are
recommended so that when the previous packet is being transferred to AHB,
the USB can receive the subsequent packet. If AHB latency is high, you
must allocate enough space to receive multiple packets. This is critical
to prevent dropping of any isochronous packets.

bcm283x: (1024/4) +1 = 257 locations. For MC >1: 2 * 257 = 514 locations

* Along with last packet of each endpoint, transfer complete status
information is also pushed in to the FIFO.

bcm283x: The core should have 5 IN and 5 OUT EP's.
1 location for each EP - 10 locations.

It's for the case when all EPs are simultaneously completing transfers.

* An additional location for EPDisable status for each endpoint is
also required.

bcm283x: 1 location for each EP - 10 EP's - 10 locations
It's for case if EP simultaneously disabled.

* Typically, two locations for each OUT endpoint is recommended.

bcm283x: 5*2 = 10 locations

Total: 13 + 1 + 257 + 10 +10 + 10 = 301 locations

Safer is 301 + 257 (for MC>1) = 558 locations.

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
