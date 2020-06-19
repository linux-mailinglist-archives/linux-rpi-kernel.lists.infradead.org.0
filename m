Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81449201984
	for <lists+linux-rpi-kernel@lfdr.de>; Fri, 19 Jun 2020 19:34:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HrrpiOtEQIeQ0xUqHIx4SewTCL1Qg3KauPS9+P+F2OM=; b=XCNHCSpW9wR7Iy
	bSfpKwNwknNNRtoiZf97yalc4oziVgyptF2FGnvpGh0rk/kwPn1YhgeBTNPAmrQ98iRUCI2zVXIKY
	s9nCnF/yJ+F2vS7y5GQyJbpkeHiYnP18Q9JmcKAcBejTt3iqaVwGqgTHU6CvzUWvM5gkExyiVYOcb
	zas/GgTyf+apM8b3e6MlOiwHuMBJ9AlyeRYLTXn70DC44Bwk5Zk2i2n7oEcdmYQaRc+5E+Bepm2JP
	NNfovIy7LePR3F0JiNoxHmDe95QnClGNnBy+GW1WLAzIB1PtzHrB7XEOJ2X3PRqLPNPa8WIkA9LcY
	3L8M/qQ5qOq6Cix+Ya/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmKuf-0006ph-Kv; Fri, 19 Jun 2020 17:34:49 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmKuc-0006og-My
 for linux-rpi-kernel@lists.infradead.org; Fri, 19 Jun 2020 17:34:48 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id B7EEAACCC;
 Fri, 19 Jun 2020 17:34:35 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: linux-rpi-kernel@lists.infradead.org
Subject: [PATCH] NOT TO BE MERGED: ARM: dts: bcm2711: Add support for PiFi
 DAC+ v2.0/Hifiberry DAC+
Date: Fri, 19 Jun 2020 19:34:26 +0200
Message-Id: <20200619173426.22665-1-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_103446_892170_DEE36AC7 
X-CRM114-Status: GOOD (  14.42  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
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
Cc: stuart@hifiberry.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

This might be useful to someone in the future as it took me a tangible
amount of time to figure out.

The downstream kernel[1] enables this trough custom made ASoC drivers
but I figured out that for the simpler HifiBerry DACs there is no need
for them and can be enabled by directly using the 'simple-audio-card'
driver.

There is no control over the board's led, but this could be easily fixed
by implementing a gpio-chip driver in the codec driver (pcm512x.c) and
turning it into a gpio-led device. Same goes for the clock gates on the
pro version of the DAC.

Overall I think this pattern could be used to enable most of the simpler
HifiBerry devices as well.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

[1] https://github.com/raspberrypi/linux/tree/rpi-5.7.y/sound/soc/bcm
---
 arch/arm/boot/dts/bcm2711-rpi-4-b.dts | 53 +++++++++++++++++++++++++++
 1 file changed, 53 insertions(+)

diff --git a/arch/arm/boot/dts/bcm2711-rpi-4-b.dts b/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
index 5b54d2185893..6df9352d12fd 100644
--- a/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
+++ b/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
@@ -68,6 +68,31 @@ sd_vcc_reg: sd_vcc_reg {
 		enable-active-high;
 		gpio = <&expgpio 6 GPIO_ACTIVE_HIGH>;
 	};
+
+	vdd_3v3_reg: fixedregulator_3v3 {
+		compatible = "regulator-fixed";
+		regulator-always-on;
+		regulator-max-microvolt = <3300000>;
+		regulator-min-microvolt = <3300000>;
+		regulator-name = "3v3";
+	};
+
+	sound {
+		compatible = "simple-audio-card";
+		simple-audio-card,name = "hifiberry-dac-plus";
+		simple-audio-card,format = "i2s";
+		simple-audio-card,frame-master = <&cpudai>;
+		simple-audio-card,bitclock-master = <&cpudai>;
+
+		cpudai: simple-audio-card,cpu {
+			sound-dai = <&i2s>;
+		};
+
+		link_codec: simple-audio-card,codec {
+			sound-dai = <&pcm5122>;
+		};
+
+	};
 };
 
 &firmware {
@@ -248,3 +273,31 @@ &uart1 {
 &vchiq {
 	interrupts = <GIC_SPI 34 IRQ_TYPE_LEVEL_HIGH>;
 };
+
+&i2s {
+	#sound-dai-cells = <0>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pcm_gpio18>;
+	dmas = <&dma 2>, <&dma 3>;
+	dma-names = "tx", "rx";
+	status = "okay";
+};
+
+
+&i2c1 {
+	#address-cells = <1>;
+	#size-cells = <0>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2c1_gpio2>;
+	clock-frequency = <100000>;
+	status = "okay";
+
+	pcm5122: pcm5122@4d {
+		#sound-dai-cells = <0>;
+		compatible = "ti,pcm5122";
+		reg = <0x4d>;
+		AVDD-supply = <&vdd_3v3_reg>;
+		DVDD-supply = <&vdd_3v3_reg>;
+		CPVDD-supply = <&vdd_3v3_reg>;
+	};
+};
-- 
2.27.0


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
