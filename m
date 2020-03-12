Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E072183B7F
	for <lists+linux-rpi-kernel@lfdr.de>; Thu, 12 Mar 2020 22:38:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=FDBDff8CpGn7erqVobsUK4CQpnF4v3Eau07s9RAaxX4=; b=dS6gGi11w9xIUHZv+oU4LT415f
	VeVMnTF1qxncaKfdysJmBpi0gy6M9snqWzyLCPwanXeoCZTW8D81ltUrcmUuqA4Hy7d5dGUmB1ntQ
	Qt9I59NbEUzgfC2QUiJtROeNWR9IkJklL4RQQRsOsTJo0E3vRSmPQmxUi6xmzEC6ksEvwvWp7pDHq
	hXbkMOdVUja3zmY2m4WnmZLW2cXj1Izsnba+hFV3ifA2dlh2e9hawohojBvCRra+T3aIfMDXmuBOn
	NXzG7af3u4P12JYodt5LC+swb6FN6++V5BMk7rwQySB1+SbksEFFEOR4DVL5QbLqg13YJule2kQhZ
	yoBePwxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCVXM-0000iZ-Q5; Thu, 12 Mar 2020 21:38:40 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCVXH-0000Uk-9D
 for linux-rpi-kernel@lists.infradead.org; Thu, 12 Mar 2020 21:38:38 +0000
Received: from localhost.localdomain ([37.4.249.171]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MWiYi-1ioLsr0cSO-00X61a; Thu, 12 Mar 2020 22:38:29 +0100
From: Stefan Wahren <stefan.wahren@i2se.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>
Subject: [PATCH 2/2] staging: bcm2835-camera: Use designators to init V4L2
 controls
Date: Thu, 12 Mar 2020 22:37:39 +0100
Message-Id: <1584049059-6772-3-git-send-email-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1584049059-6772-1-git-send-email-stefan.wahren@i2se.com>
References: <1584049059-6772-1-git-send-email-stefan.wahren@i2se.com>
X-Provags-ID: V03:K1:KyWMc589nFZ9LqjvacDPh7lYoE+p5X62LuOBM4SCa5/ddO8UbAi
 j6Z5D90tuK1pmTHU4gAZ82hdIdyQIkqC1xhOZ8U7dsL294ELyP66Kctge3YpTlJt3ReXbeF
 RnbZV0u4npRwOeqd5L6xKZh72jJc0FjYyfVFGg3AYZU7vLFcOM2gEPpxFDINZnSfZ4MACyN
 oGb5xEbReKk9PieMRV4FA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:D4Lm/lHq1d4=:p1XBVqlmXW9k5i1Qx12r1k
 tI5Vr/tbRST87yS8AEKxCpJXKmoZ3cYfsPNCPvJkDWxNBUvmkFAqB0kYmjtzl5JN3io32XpFt
 DnO/jrcMeioKbphnLjxpIlXWVY9Ia8kXrLsuXL3z/7rk+xsT/Qq5HgfeeqOl754kRxDMISVCz
 5opnmLbtrICrlrrWn/NNE/pgDnXI3az8/BkYacSYezJWls1rrk7FQf9yOtdl+nDI9qofpJvvi
 HcfxcNp2EawqtsGhd1u7jtc5smLZEryHZDrFsC40sQkRHPO9OggQ/4nkWODlETHD1NTup5FS4
 b4khHO7HgOcW90WDaRPg99DWyedl7ZpHGHBNtBraQ2LRv6LGDm0PzA6vhgpfgjLSPUj7A99M0
 UdkV1O3u4odBcNAW6bz5zPSUQhGBRJ1aSWFrENtGmqRS5OoNZohvO97P7D0R1UWZ7jVrQUijr
 1R29lj23MhHLn8IDrAeYDBP91nQH0MbncTceMyooY62UUU+S02rS35U2/2cvAVk31mgl9PRac
 0o7NqC4HRrzQWPs/l7BThpngpiAzSmrSYmV4l5firoe7xHf5yTj8zF7+m20gRYlTs7mHAzjjS
 nfwj6Tr/mm1a+WvJRael+nm8/XmixxMo3UiWm/P2olJtK3zI9HHXIFpnQwJ+9/cmI56jcofJr
 iV7VJ7AeRSJINt9XChWnYhtuGdjH22h1pX8eFgslttCjUD8H9SKjj3vr3DSRd8M0NFTem0D5S
 EQCw/tj3ZVPFzQP8EAAk1vvlbxx5sFPfPNF7IAHfNc3ttKxsZv7ZumluJtWrjWyBnd/Mt7967
 PQ9Ka96mzjVy9aICvJTlK3DwqRCRH+o5M760mJDMsuxNOSio3H3sMU7JKSCLIkLH4LJqSBB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_143835_617764_B2973DD1 
X-CRM114-Status: GOOD (  11.92  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
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
Cc: devel@driverdev.osuosl.org, linux-rpi-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

The initializer lists for the V4L2 controls are hard to read.
So improve this by using designators.

Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
---
 .../vc04_services/bcm2835-camera/controls.c        | 424 ++++++++++++++-------
 1 file changed, 277 insertions(+), 147 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/controls.c b/drivers/staging/vc04_services/bcm2835-camera/controls.c
index 50f7c8b..5137fcf 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/controls.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/controls.c
@@ -920,210 +920,340 @@ static const struct v4l2_ctrl_ops bm2835_mmal_ctrl_ops = {
 
 static const struct bm2835_mmal_v4l2_ctrl v4l2_ctrls[V4L2_CTRL_COUNT] = {
 	{
-		V4L2_CID_SATURATION, MMAL_CONTROL_TYPE_STD,
-		-100, 100, 0, 1, NULL,
-		MMAL_PARAMETER_SATURATION,
-		ctrl_set_rational,
+		.id = V4L2_CID_SATURATION,
+		.type = MMAL_CONTROL_TYPE_STD,
+		.min = -100,
+		.max = 100,
+		.def = 0,
+		.step = 1,
+		.imenu = NULL,
+		.mmal_id = MMAL_PARAMETER_SATURATION,
+		.setter = ctrl_set_rational,
 	},
 	{
-		V4L2_CID_SHARPNESS, MMAL_CONTROL_TYPE_STD,
-		-100, 100, 0, 1, NULL,
-		MMAL_PARAMETER_SHARPNESS,
-		ctrl_set_rational,
+		.id = V4L2_CID_SHARPNESS,
+		.type = MMAL_CONTROL_TYPE_STD,
+		.min = -100,
+		.max = 100,
+		.def = 0,
+		.step = 1,
+		.imenu = NULL,
+		.mmal_id = MMAL_PARAMETER_SHARPNESS,
+		.setter = ctrl_set_rational,
 	},
 	{
-		V4L2_CID_CONTRAST, MMAL_CONTROL_TYPE_STD,
-		-100, 100, 0, 1, NULL,
-		MMAL_PARAMETER_CONTRAST,
-		ctrl_set_rational,
+		.id = V4L2_CID_CONTRAST,
+		.type = MMAL_CONTROL_TYPE_STD,
+		.min = -100,
+		.max = 100,
+		.def = 0,
+		.step = 1,
+		.imenu = NULL,
+		.mmal_id = MMAL_PARAMETER_CONTRAST,
+		.setter = ctrl_set_rational,
 	},
 	{
-		V4L2_CID_BRIGHTNESS, MMAL_CONTROL_TYPE_STD,
-		0, 100, 50, 1, NULL,
-		MMAL_PARAMETER_BRIGHTNESS,
-		ctrl_set_rational,
+		.id = V4L2_CID_BRIGHTNESS,
+		.type = MMAL_CONTROL_TYPE_STD,
+		.min = 0,
+		.max = 100,
+		.def = 50,
+		.step = 1,
+		.imenu = NULL,
+		.mmal_id = MMAL_PARAMETER_BRIGHTNESS,
+		.setter = ctrl_set_rational,
 	},
 	{
-		V4L2_CID_ISO_SENSITIVITY, MMAL_CONTROL_TYPE_INT_MENU,
-		0, ARRAY_SIZE(iso_qmenu) - 1, 0, 1, iso_qmenu,
-		MMAL_PARAMETER_ISO,
-		ctrl_set_iso,
+		.id = V4L2_CID_ISO_SENSITIVITY,
+		.type = MMAL_CONTROL_TYPE_INT_MENU,
+		.min = 0,
+		.max = ARRAY_SIZE(iso_qmenu) - 1,
+		.def = 0,
+		.step = 1,
+		.imenu = iso_qmenu,
+		.mmal_id = MMAL_PARAMETER_ISO,
+		.setter = ctrl_set_iso,
 	},
 	{
-		V4L2_CID_ISO_SENSITIVITY_AUTO, MMAL_CONTROL_TYPE_STD_MENU,
-		0, V4L2_ISO_SENSITIVITY_AUTO, V4L2_ISO_SENSITIVITY_AUTO, 1,
-		NULL, MMAL_PARAMETER_ISO,
-		ctrl_set_iso,
+		.id = V4L2_CID_ISO_SENSITIVITY_AUTO,
+		.type = MMAL_CONTROL_TYPE_STD_MENU,
+		.min = 0,
+		.max = V4L2_ISO_SENSITIVITY_AUTO,
+		.def = V4L2_ISO_SENSITIVITY_AUTO,
+		.step = 1,
+		.imenu = NULL,
+		.mmal_id = MMAL_PARAMETER_ISO,
+		.setter = ctrl_set_iso,
 	},
 	{
-		V4L2_CID_IMAGE_STABILIZATION, MMAL_CONTROL_TYPE_STD,
-		0, 1, 0, 1, NULL,
-		MMAL_PARAMETER_VIDEO_STABILISATION,
-		ctrl_set_value,
+		.id = V4L2_CID_IMAGE_STABILIZATION,
+		.type = MMAL_CONTROL_TYPE_STD,
+		.min = 0,
+		.max = 1,
+		.def = 0,
+		.step = 1,
+		.imenu = NULL,
+		.mmal_id = MMAL_PARAMETER_VIDEO_STABILISATION,
+		.setter = ctrl_set_value,
 	},
 	{
-		V4L2_CID_EXPOSURE_AUTO, MMAL_CONTROL_TYPE_STD_MENU,
-		~0x03, V4L2_EXPOSURE_APERTURE_PRIORITY, V4L2_EXPOSURE_AUTO, 0,
-		NULL, MMAL_PARAMETER_EXPOSURE_MODE,
-		ctrl_set_exposure,
+		.id = V4L2_CID_EXPOSURE_AUTO,
+		.type = MMAL_CONTROL_TYPE_STD_MENU,
+		.min = ~0x03,
+		.max = V4L2_EXPOSURE_APERTURE_PRIORITY,
+		.def = V4L2_EXPOSURE_AUTO,
+		.step = 0,
+		.imenu = NULL,
+		.mmal_id = MMAL_PARAMETER_EXPOSURE_MODE,
+		.setter = ctrl_set_exposure,
 	},
 	{
-		V4L2_CID_EXPOSURE_ABSOLUTE, MMAL_CONTROL_TYPE_STD,
+		.id = V4L2_CID_EXPOSURE_ABSOLUTE,
+		.type = MMAL_CONTROL_TYPE_STD,
 		/* Units of 100usecs */
-		1, 1 * 1000 * 10, 100 * 10, 1, NULL,
-		MMAL_PARAMETER_SHUTTER_SPEED,
-		ctrl_set_exposure,
+		.min = 1,
+		.max = 1 * 1000 * 10,
+		.def = 100 * 10,
+		.step = 1,
+		.imenu = NULL,
+		.mmal_id = MMAL_PARAMETER_SHUTTER_SPEED,
+		.setter = ctrl_set_exposure,
 	},
 	{
-		V4L2_CID_AUTO_EXPOSURE_BIAS, MMAL_CONTROL_TYPE_INT_MENU,
-		0, ARRAY_SIZE(ev_bias_qmenu) - 1,
-		(ARRAY_SIZE(ev_bias_qmenu) + 1) / 2 - 1, 0, ev_bias_qmenu,
-		MMAL_PARAMETER_EXPOSURE_COMP,
-		ctrl_set_value_ev,
+		.id = V4L2_CID_AUTO_EXPOSURE_BIAS,
+		.type = MMAL_CONTROL_TYPE_INT_MENU,
+		.min = 0,
+		.max = ARRAY_SIZE(ev_bias_qmenu) - 1,
+		.def = (ARRAY_SIZE(ev_bias_qmenu) + 1) / 2 - 1,
+		.step = 0,
+		.imenu = ev_bias_qmenu,
+		.mmal_id = MMAL_PARAMETER_EXPOSURE_COMP,
+		.setter = ctrl_set_value_ev,
 	},
 	{
-		V4L2_CID_EXPOSURE_AUTO_PRIORITY, MMAL_CONTROL_TYPE_STD,
-		0, 1,
-		0, 1, NULL,
-		0,	/* Dummy MMAL ID as it gets mapped into FPS range*/
-		ctrl_set_exposure,
+		.id = V4L2_CID_EXPOSURE_AUTO_PRIORITY,
+		.type = MMAL_CONTROL_TYPE_STD,
+		.min = 0,
+		.max = 1,
+		.def = 0,
+		.step = 1,
+		.imenu = NULL,
+		/* Dummy MMAL ID as it gets mapped into FPS range */
+		.mmal_id = 0,
+		.setter = ctrl_set_exposure,
 	},
 	{
-		V4L2_CID_EXPOSURE_METERING,
-		MMAL_CONTROL_TYPE_STD_MENU,
-		~0x7, V4L2_EXPOSURE_METERING_SPOT,
-		V4L2_EXPOSURE_METERING_AVERAGE, 0, NULL,
-		MMAL_PARAMETER_EXP_METERING_MODE,
-		ctrl_set_metering_mode,
+		.id = V4L2_CID_EXPOSURE_METERING,
+		.type = MMAL_CONTROL_TYPE_STD_MENU,
+		.min = ~0x7,
+		.max = V4L2_EXPOSURE_METERING_SPOT,
+		.def = V4L2_EXPOSURE_METERING_AVERAGE,
+		.step = 0,
+		.imenu = NULL,
+		.mmal_id = MMAL_PARAMETER_EXP_METERING_MODE,
+		.setter = ctrl_set_metering_mode,
 	},
 	{
-		V4L2_CID_AUTO_N_PRESET_WHITE_BALANCE,
-		MMAL_CONTROL_TYPE_STD_MENU,
-		~0x3ff, V4L2_WHITE_BALANCE_SHADE, V4L2_WHITE_BALANCE_AUTO, 0,
-		NULL,
-		MMAL_PARAMETER_AWB_MODE,
-		ctrl_set_awb_mode,
+		.id = V4L2_CID_AUTO_N_PRESET_WHITE_BALANCE,
+		.type = MMAL_CONTROL_TYPE_STD_MENU,
+		.min = ~0x3ff,
+		.max = V4L2_WHITE_BALANCE_SHADE,
+		.def = V4L2_WHITE_BALANCE_AUTO,
+		.step = 0,
+		.imenu = NULL,
+		.mmal_id = MMAL_PARAMETER_AWB_MODE,
+		.setter = ctrl_set_awb_mode,
 	},
 	{
-		V4L2_CID_RED_BALANCE, MMAL_CONTROL_TYPE_STD,
-		1, 7999, 1000, 1, NULL,
-		MMAL_PARAMETER_CUSTOM_AWB_GAINS,
-		ctrl_set_awb_gains,
+		.id = V4L2_CID_RED_BALANCE,
+		.type = MMAL_CONTROL_TYPE_STD,
+		.min = 1,
+		.max = 7999,
+		.def = 1000,
+		.step = 1,
+		.imenu = NULL,
+		.mmal_id = MMAL_PARAMETER_CUSTOM_AWB_GAINS,
+		.setter = ctrl_set_awb_gains,
 	},
 	{
-		V4L2_CID_BLUE_BALANCE, MMAL_CONTROL_TYPE_STD,
-		1, 7999, 1000, 1, NULL,
-		MMAL_PARAMETER_CUSTOM_AWB_GAINS,
-		ctrl_set_awb_gains,
+		.id = V4L2_CID_BLUE_BALANCE,
+		.type = MMAL_CONTROL_TYPE_STD,
+		.min = 1,
+		.max = 7999,
+		.def = 1000,
+		.step = 1,
+		.imenu = NULL,
+		.mmal_id = MMAL_PARAMETER_CUSTOM_AWB_GAINS,
+		.setter = ctrl_set_awb_gains,
 	},
 	{
-		V4L2_CID_COLORFX, MMAL_CONTROL_TYPE_STD_MENU,
-		0, V4L2_COLORFX_SET_CBCR, V4L2_COLORFX_NONE, 0, NULL,
-		MMAL_PARAMETER_IMAGE_EFFECT,
-		ctrl_set_image_effect,
+		.id = V4L2_CID_COLORFX,
+		.type = MMAL_CONTROL_TYPE_STD_MENU,
+		.min = 0,
+		.max = V4L2_COLORFX_SET_CBCR,
+		.def = V4L2_COLORFX_NONE,
+		.step = 0,
+		.imenu = NULL,
+		.mmal_id = MMAL_PARAMETER_IMAGE_EFFECT,
+		.setter = ctrl_set_image_effect,
 	},
 	{
-		V4L2_CID_COLORFX_CBCR, MMAL_CONTROL_TYPE_STD,
-		0, 0xffff, 0x8080, 1, NULL,
-		MMAL_PARAMETER_COLOUR_EFFECT,
-		ctrl_set_colfx,
+		.id = V4L2_CID_COLORFX_CBCR,
+		.type = MMAL_CONTROL_TYPE_STD,
+		.min = 0,
+		.max = 0xffff,
+		.def = 0x8080,
+		.step = 1,
+		.imenu = NULL,
+		.mmal_id = MMAL_PARAMETER_COLOUR_EFFECT,
+		.setter = ctrl_set_colfx,
 	},
 	{
-		V4L2_CID_ROTATE, MMAL_CONTROL_TYPE_STD,
-		0, 360, 0, 90, NULL,
-		MMAL_PARAMETER_ROTATION,
-		ctrl_set_rotate,
+		.id = V4L2_CID_ROTATE,
+		.type = MMAL_CONTROL_TYPE_STD,
+		.min = 0,
+		.max = 360,
+		.def = 0,
+		.step = 90,
+		.imenu = NULL,
+		.mmal_id = MMAL_PARAMETER_ROTATION,
+		.setter = ctrl_set_rotate,
 	},
 	{
-		V4L2_CID_HFLIP, MMAL_CONTROL_TYPE_STD,
-		0, 1, 0, 1, NULL,
-		MMAL_PARAMETER_MIRROR,
-		ctrl_set_flip,
+		.id = V4L2_CID_HFLIP,
+		.type = MMAL_CONTROL_TYPE_STD,
+		.min = 0,
+		.max = 1,
+		.def = 0,
+		.step = 1,
+		.imenu = NULL,
+		.mmal_id = MMAL_PARAMETER_MIRROR,
+		.setter = ctrl_set_flip,
 	},
 	{
-		V4L2_CID_VFLIP, MMAL_CONTROL_TYPE_STD,
-		0, 1, 0, 1, NULL,
-		MMAL_PARAMETER_MIRROR,
-		ctrl_set_flip,
+		.id = V4L2_CID_VFLIP,
+		.type = MMAL_CONTROL_TYPE_STD,
+		.min = 0,
+		.max = 1,
+		.def = 0,
+		.step = 1,
+		.imenu = NULL,
+		.mmal_id = MMAL_PARAMETER_MIRROR,
+		.setter = ctrl_set_flip,
 	},
 	{
-		V4L2_CID_MPEG_VIDEO_BITRATE_MODE, MMAL_CONTROL_TYPE_STD_MENU,
-		0, V4L2_MPEG_VIDEO_BITRATE_MODE_CBR,
-		0, 0, NULL,
-		MMAL_PARAMETER_RATECONTROL,
-		ctrl_set_bitrate_mode,
+		.id = V4L2_CID_MPEG_VIDEO_BITRATE_MODE,
+		.type = MMAL_CONTROL_TYPE_STD_MENU,
+		.min = 0,
+		.max = V4L2_MPEG_VIDEO_BITRATE_MODE_CBR,
+		.def = 0,
+		.step = 0,
+		.imenu = NULL,
+		.mmal_id = MMAL_PARAMETER_RATECONTROL,
+		.setter = ctrl_set_bitrate_mode,
 	},
 	{
-		V4L2_CID_MPEG_VIDEO_BITRATE, MMAL_CONTROL_TYPE_STD,
-		25 * 1000, 25 * 1000 * 1000, 10 * 1000 * 1000, 25 * 1000, NULL,
-		MMAL_PARAMETER_VIDEO_BIT_RATE,
-		ctrl_set_bitrate,
+		.id = V4L2_CID_MPEG_VIDEO_BITRATE,
+		.type = MMAL_CONTROL_TYPE_STD,
+		.min = 25 * 1000,
+		.max = 25 * 1000 * 1000,
+		.def = 10 * 1000 * 1000,
+		.step = 25 * 1000,
+		.imenu = NULL,
+		.mmal_id = MMAL_PARAMETER_VIDEO_BIT_RATE,
+		.setter = ctrl_set_bitrate,
 	},
 	{
-		V4L2_CID_JPEG_COMPRESSION_QUALITY, MMAL_CONTROL_TYPE_STD,
-		1, 100,
-		30, 1, NULL,
-		MMAL_PARAMETER_JPEG_Q_FACTOR,
-		ctrl_set_image_encode_output,
+		.id = V4L2_CID_JPEG_COMPRESSION_QUALITY,
+		.type = MMAL_CONTROL_TYPE_STD,
+		.min = 1,
+		.max = 100,
+		.def = 30,
+		.step = 1,
+		.imenu = NULL,
+		.mmal_id = MMAL_PARAMETER_JPEG_Q_FACTOR,
+		.setter = ctrl_set_image_encode_output,
 	},
 	{
-		V4L2_CID_POWER_LINE_FREQUENCY, MMAL_CONTROL_TYPE_STD_MENU,
-		0, V4L2_CID_POWER_LINE_FREQUENCY_AUTO,
-		1, 1, NULL,
-		MMAL_PARAMETER_FLICKER_AVOID,
-		ctrl_set_flicker_avoidance,
+		.id = V4L2_CID_POWER_LINE_FREQUENCY,
+		.type = MMAL_CONTROL_TYPE_STD_MENU,
+		.min = 0,
+		.max = V4L2_CID_POWER_LINE_FREQUENCY_AUTO,
+		.def = 1,
+		.step = 1,
+		.imenu = NULL,
+		.mmal_id = MMAL_PARAMETER_FLICKER_AVOID,
+		.setter = ctrl_set_flicker_avoidance,
 	},
 	{
-		V4L2_CID_MPEG_VIDEO_REPEAT_SEQ_HEADER, MMAL_CONTROL_TYPE_STD,
-		0, 1,
-		0, 1, NULL,
-		MMAL_PARAMETER_VIDEO_ENCODE_INLINE_HEADER,
-		ctrl_set_video_encode_param_output,
+		.id = V4L2_CID_MPEG_VIDEO_REPEAT_SEQ_HEADER,
+		.type = MMAL_CONTROL_TYPE_STD,
+		.min = 0,
+		.max = 1,
+		.def = 0,
+		.step = 1,
+		.imenu = NULL,
+		.mmal_id = MMAL_PARAMETER_VIDEO_ENCODE_INLINE_HEADER,
+		.setter = ctrl_set_video_encode_param_output,
 	},
 	{
-		V4L2_CID_MPEG_VIDEO_H264_PROFILE,
-		MMAL_CONTROL_TYPE_STD_MENU,
-		~(BIT(V4L2_MPEG_VIDEO_H264_PROFILE_BASELINE) |
-		  BIT(V4L2_MPEG_VIDEO_H264_PROFILE_CONSTRAINED_BASELINE) |
-		  BIT(V4L2_MPEG_VIDEO_H264_PROFILE_MAIN) |
-		  BIT(V4L2_MPEG_VIDEO_H264_PROFILE_HIGH)),
-		V4L2_MPEG_VIDEO_H264_PROFILE_HIGH,
-		V4L2_MPEG_VIDEO_H264_PROFILE_HIGH, 1, NULL,
-		MMAL_PARAMETER_PROFILE,
-		ctrl_set_video_encode_profile_level,
+		.id = V4L2_CID_MPEG_VIDEO_H264_PROFILE,
+		.type = MMAL_CONTROL_TYPE_STD_MENU,
+		.min = ~(BIT(V4L2_MPEG_VIDEO_H264_PROFILE_BASELINE) |
+			 BIT(V4L2_MPEG_VIDEO_H264_PROFILE_CONSTRAINED_BASELINE) |
+			 BIT(V4L2_MPEG_VIDEO_H264_PROFILE_MAIN) |
+			 BIT(V4L2_MPEG_VIDEO_H264_PROFILE_HIGH)),
+		.max = V4L2_MPEG_VIDEO_H264_PROFILE_HIGH,
+		.def = V4L2_MPEG_VIDEO_H264_PROFILE_HIGH,
+		.step = 1,
+		.imenu = NULL,
+		.mmal_id = MMAL_PARAMETER_PROFILE,
+		.setter = ctrl_set_video_encode_profile_level,
 	},
 	{
-		V4L2_CID_MPEG_VIDEO_H264_LEVEL, MMAL_CONTROL_TYPE_STD_MENU,
-		~(BIT(V4L2_MPEG_VIDEO_H264_LEVEL_1_0) |
-		  BIT(V4L2_MPEG_VIDEO_H264_LEVEL_1B) |
-		  BIT(V4L2_MPEG_VIDEO_H264_LEVEL_1_1) |
-		  BIT(V4L2_MPEG_VIDEO_H264_LEVEL_1_2) |
-		  BIT(V4L2_MPEG_VIDEO_H264_LEVEL_1_3) |
-		  BIT(V4L2_MPEG_VIDEO_H264_LEVEL_2_0) |
-		  BIT(V4L2_MPEG_VIDEO_H264_LEVEL_2_1) |
-		  BIT(V4L2_MPEG_VIDEO_H264_LEVEL_2_2) |
-		  BIT(V4L2_MPEG_VIDEO_H264_LEVEL_3_0) |
-		  BIT(V4L2_MPEG_VIDEO_H264_LEVEL_3_1) |
-		  BIT(V4L2_MPEG_VIDEO_H264_LEVEL_3_2) |
-		  BIT(V4L2_MPEG_VIDEO_H264_LEVEL_4_0)),
-		V4L2_MPEG_VIDEO_H264_LEVEL_4_0,
-		V4L2_MPEG_VIDEO_H264_LEVEL_4_0, 1, NULL,
-		MMAL_PARAMETER_PROFILE,
-		ctrl_set_video_encode_profile_level,
+		.id = V4L2_CID_MPEG_VIDEO_H264_LEVEL,
+		.type = MMAL_CONTROL_TYPE_STD_MENU,
+		.min = ~(BIT(V4L2_MPEG_VIDEO_H264_LEVEL_1_0) |
+			 BIT(V4L2_MPEG_VIDEO_H264_LEVEL_1B) |
+			 BIT(V4L2_MPEG_VIDEO_H264_LEVEL_1_1) |
+			 BIT(V4L2_MPEG_VIDEO_H264_LEVEL_1_2) |
+			 BIT(V4L2_MPEG_VIDEO_H264_LEVEL_1_3) |
+			 BIT(V4L2_MPEG_VIDEO_H264_LEVEL_2_0) |
+			 BIT(V4L2_MPEG_VIDEO_H264_LEVEL_2_1) |
+			 BIT(V4L2_MPEG_VIDEO_H264_LEVEL_2_2) |
+			 BIT(V4L2_MPEG_VIDEO_H264_LEVEL_3_0) |
+			 BIT(V4L2_MPEG_VIDEO_H264_LEVEL_3_1) |
+			 BIT(V4L2_MPEG_VIDEO_H264_LEVEL_3_2) |
+			 BIT(V4L2_MPEG_VIDEO_H264_LEVEL_4_0)),
+		.max = V4L2_MPEG_VIDEO_H264_LEVEL_4_0,
+		.def = V4L2_MPEG_VIDEO_H264_LEVEL_4_0,
+		.step = 1,
+		.imenu = NULL,
+		.mmal_id = MMAL_PARAMETER_PROFILE,
+		.setter = ctrl_set_video_encode_profile_level,
 	},
 	{
-		V4L2_CID_SCENE_MODE, MMAL_CONTROL_TYPE_STD_MENU,
-		-1,	/* Min (mask) is computed at runtime */
-		V4L2_SCENE_MODE_TEXT,
-		V4L2_SCENE_MODE_NONE, 1, NULL,
-		MMAL_PARAMETER_PROFILE,
-		ctrl_set_scene_mode,
+		.id = V4L2_CID_SCENE_MODE,
+		.type = MMAL_CONTROL_TYPE_STD_MENU,
+		/* mask is computed at runtime */
+		.min = -1,
+		.max = V4L2_SCENE_MODE_TEXT,
+		.def = V4L2_SCENE_MODE_NONE,
+		.step = 1,
+		.imenu = NULL,
+		.mmal_id = MMAL_PARAMETER_PROFILE,
+		.setter = ctrl_set_scene_mode,
 	},
 	{
-		V4L2_CID_MPEG_VIDEO_H264_I_PERIOD, MMAL_CONTROL_TYPE_STD,
-		0, 0x7FFFFFFF, 60, 1, NULL,
-		MMAL_PARAMETER_INTRAPERIOD,
-		ctrl_set_video_encode_param_output,
+		.id = V4L2_CID_MPEG_VIDEO_H264_I_PERIOD,
+		.type = MMAL_CONTROL_TYPE_STD,
+		.min = 0,
+		.max = 0x7FFFFFFF,
+		.def = 60,
+		.step = 1,
+		.imenu = NULL,
+		.mmal_id = MMAL_PARAMETER_INTRAPERIOD,
+		.setter = ctrl_set_video_encode_param_output,
 	},
 };
 
-- 
2.7.4


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
