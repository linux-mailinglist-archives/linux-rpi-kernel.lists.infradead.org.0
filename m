Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2E441FDC22
	for <lists+linux-rpi-kernel@lfdr.de>; Thu, 18 Jun 2020 03:17:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X+5G9iaSjWFv4oLo0TDn+AikEB3ERMTGfYtyAoZrqfA=; b=WV0ZzP5R+pVtGE
	c3US02H+Fb0c059pIcZ3yHNnadv0brzQhWGba8JlTWj4UI5wQeHGe3fQVUcuyxdV//caQ/Wf8kyEB
	GtB7Npkm2DyxV6E9Mtkh6Y4ZQcXKukouzywZO8X/7Y0GMTdg1sPnFdKu+2VRnO2beH9UFsk+4TDQh
	09Pz/zFDfHA/CeoQBUqKxIHPm1hunFsCgyJZ3CuSO6jJ/369caB4Z2CVEQktm7ffu3Pi0JyG3uplk
	Ep1jXNDiIvHKocmkJqtN3EVkXXe74+lOVLssJ0nwJrGxdSuv6Ctu47qQyTTHb90pXN/Wi5AlWqKa4
	WErFOHnPenTCYkiUzwgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jljAy-0007w5-C1; Thu, 18 Jun 2020 01:17:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlj4h-0000SJ-M4; Thu, 18 Jun 2020 01:10:41 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B45B420CC7;
 Thu, 18 Jun 2020 01:10:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592442638;
 bh=rhVADCPT/OCDnHYRLvpB5LjV+mc8Z/AZJUCSyHnY/oc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=x7/eNye9SjigWGQs2wSi3u2fLu6zVPOJ9/NxnkYFHGKEm/bK8gelGPQBHDyRhUWDe
 QJk8p5kBrd2Aoz30WpbkHr+MgR+erehducWV0D7VJGoF3b60Sc/mfJvQFyCVC6RgCn
 25SFXm299F2/n6T5xgbGwACyLeNmc8ajsUmq0wLk=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.7 114/388] ARM: dts: bcm283x: Use firmware PM driver
 for V3D
Date: Wed, 17 Jun 2020 21:03:31 -0400
Message-Id: <20200618010805.600873-114-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618010805.600873-1-sashal@kernel.org>
References: <20200618010805.600873-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_181039_837107_A0953451 
X-CRM114-Status: GOOD (  14.45  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

[ Upstream commit 3ac395a5b3f3b678663fbb58381fdae2b1b57588 ]

The register based driver turned out to be unstable, specially on RPi3a+
but not limited to it. While a fix is being worked on, we roll back to
using firmware based scheme.

Fixes: e1dc2b2e1bef ("ARM: bcm283x: Switch V3D over to using the PM driver instead of firmware")
Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Tested-by: Stefan Wahren <stefan.wahren@i2se.com>
Link: https://lore.kernel.org/r/20200303173217.3987-1-nsaenzjulienne@suse.de
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/boot/dts/bcm2835-common.dtsi     |  1 -
 arch/arm/boot/dts/bcm2835-rpi-common.dtsi | 12 ++++++++++++
 arch/arm/boot/dts/bcm2835.dtsi            |  1 +
 arch/arm/boot/dts/bcm2836.dtsi            |  1 +
 arch/arm/boot/dts/bcm2837.dtsi            |  1 +
 5 files changed, 15 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boot/dts/bcm2835-rpi-common.dtsi

diff --git a/arch/arm/boot/dts/bcm2835-common.dtsi b/arch/arm/boot/dts/bcm2835-common.dtsi
index 2b1d9d4c0cde..4119271c979d 100644
--- a/arch/arm/boot/dts/bcm2835-common.dtsi
+++ b/arch/arm/boot/dts/bcm2835-common.dtsi
@@ -130,7 +130,6 @@ v3d: v3d@7ec00000 {
 			compatible = "brcm,bcm2835-v3d";
 			reg = <0x7ec00000 0x1000>;
 			interrupts = <1 10>;
-			power-domains = <&pm BCM2835_POWER_DOMAIN_GRAFX_V3D>;
 		};
 
 		vc4: gpu {
diff --git a/arch/arm/boot/dts/bcm2835-rpi-common.dtsi b/arch/arm/boot/dts/bcm2835-rpi-common.dtsi
new file mode 100644
index 000000000000..8a55b6cded59
--- /dev/null
+++ b/arch/arm/boot/dts/bcm2835-rpi-common.dtsi
@@ -0,0 +1,12 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * This include file covers the common peripherals and configuration between
+ * bcm2835, bcm2836 and bcm2837 implementations that interact with RPi's
+ * firmware interface.
+ */
+
+#include <dt-bindings/power/raspberrypi-power.h>
+
+&v3d {
+	power-domains = <&power RPI_POWER_DOMAIN_V3D>;
+};
diff --git a/arch/arm/boot/dts/bcm2835.dtsi b/arch/arm/boot/dts/bcm2835.dtsi
index 53bf4579cc22..0549686134ea 100644
--- a/arch/arm/boot/dts/bcm2835.dtsi
+++ b/arch/arm/boot/dts/bcm2835.dtsi
@@ -1,6 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0
 #include "bcm283x.dtsi"
 #include "bcm2835-common.dtsi"
+#include "bcm2835-rpi-common.dtsi"
 
 / {
 	compatible = "brcm,bcm2835";
diff --git a/arch/arm/boot/dts/bcm2836.dtsi b/arch/arm/boot/dts/bcm2836.dtsi
index 82d6c4662ae4..b390006aef79 100644
--- a/arch/arm/boot/dts/bcm2836.dtsi
+++ b/arch/arm/boot/dts/bcm2836.dtsi
@@ -1,6 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0
 #include "bcm283x.dtsi"
 #include "bcm2835-common.dtsi"
+#include "bcm2835-rpi-common.dtsi"
 
 / {
 	compatible = "brcm,bcm2836";
diff --git a/arch/arm/boot/dts/bcm2837.dtsi b/arch/arm/boot/dts/bcm2837.dtsi
index 9e95fee78e19..0199ec98cd61 100644
--- a/arch/arm/boot/dts/bcm2837.dtsi
+++ b/arch/arm/boot/dts/bcm2837.dtsi
@@ -1,5 +1,6 @@
 #include "bcm283x.dtsi"
 #include "bcm2835-common.dtsi"
+#include "bcm2835-rpi-common.dtsi"
 
 / {
 	compatible = "brcm,bcm2837";
-- 
2.25.1


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
