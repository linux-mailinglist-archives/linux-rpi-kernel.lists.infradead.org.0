Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37AE8183B7E
	for <lists+linux-rpi-kernel@lfdr.de>; Thu, 12 Mar 2020 22:38:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=7APh6pFV8r70GBO3fBRdU/5RjoCZGisbot+nWeHSNTI=; b=pMMBBbLX1QbVD1sopuG0WqwXHb
	AHhXTZlBNGjwNQn/IkEHQWrlLfVJQvJG/3HTs3RYCtdU9mvm8MHt0cnzDTCtdHsb1sgdxanDwq1Fh
	B1915qML1i+/UZJ3kATMs1lTaPua4UYI/0FZbqZDdzKN3QHHsy9hOxUgw8ZJ6B40FH+yS49lfetKp
	5PWR11wyM0euYPyM1UKHb7MJHau3fXfEoVjP2NIHmlJEU7MEMLKkwIaitR6qJheVn7ZjDQ3qmqVAo
	bZ6K/Clxl5gEehBYBoo7uUpG6NoevxDiCsqT/KbKpbXnH3lfZCigzFbrjpTsiA1roM4m4nxYARiiA
	TOZlDhww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCVXL-0000gL-OH; Thu, 12 Mar 2020 21:38:39 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCVXH-0000Uj-9A
 for linux-rpi-kernel@lists.infradead.org; Thu, 12 Mar 2020 21:38:37 +0000
Received: from localhost.localdomain ([37.4.249.171]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1Mzz6s-1jZ0QU3bYU-00x6dg; Thu, 12 Mar 2020 22:38:28 +0100
From: Stefan Wahren <stefan.wahren@i2se.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>
Subject: [PATCH 1/2] staging: bcm2835-camera: Drop unused ignore_errors flag
Date: Thu, 12 Mar 2020 22:37:38 +0100
Message-Id: <1584049059-6772-2-git-send-email-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1584049059-6772-1-git-send-email-stefan.wahren@i2se.com>
References: <1584049059-6772-1-git-send-email-stefan.wahren@i2se.com>
X-Provags-ID: V03:K1:UziKNZb9NVjqxdpw3xje+SAyL4D0xDmigHYr37tt/113Re32qe8
 etEFK/cKQiqAVnqwAPKueM/QttLqhGDZPsJK6XFv6ukg/jadpXUUTWmo6BGTTmjrA3t9Qp3
 Mqde22NwB9NMHhUKM7bWJgyFPJAr3yFtdvN6MhrH7kOMVi5SNSgyDo73BVxA6VCiJXxHYib
 h+/UIejRTyrY+ZLpUqLpQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Y23U/sfVVvo=:fkdLt87nUnMHDlOqwdRA41
 3uh7DN3grS7dOnE+MuqFFaa7J3N6zTvxaBQT1HhIlCSP163wkWJ6hhZE32x8veX1foZU6+aq2
 PPeeh6lyCIDOZyhtwTKZT3rJeVJrwb7wrbRFtU5jbucMrDXRR2yHgOFsoLbt9O4m5mGNyKCTd
 BscBQQ77OPPXGPYo3rKuyje7e+4Ilnw481WYTr5Ze8HHtIZhdxrHnQyxDdjMNQj8WBpKZdrBT
 9BOXyJEnAKVEilH55zYpkzJIBHNO9Z3rwDYgGvZqz1rSPJePhJKTEqMsLwGQymA2JbOBAucl+
 ZHiJeBjzdasa7y2oSrVT8S46Zo/PwnV5KOQp0/0RguSLjsrnTGrumDp58rXKWhhbR8wByKoJq
 55zFMmIE5BTW738ei9odi+XGXJJAIxyyIs33Z9/tp7JjFwwVjEgwd9utnh8rRynziUsh3pVTo
 poJfdWIHfjQGPW9zvKmpJ9wlWNGgbTYHYfSKzGo7jVG+URiSkYqDCUOfop/zHoi3qh609iqz1
 ctKKx3HhppBRkPUddJ6kTqVNZtsUX1Fh8QYqV8B0bGUefMWKDtKsgO3WJuaDi7vHEKR70mSee
 z1V6ZTFKpTTRLLDujDD2TSy4dSkjsXAn+nVz8Cm/gUa2ElKXABoX2nzqNt9VCXuMdkrid7ZnK
 3MJLz5wbQW1tjnYJkkeFXXa2XMZbkEVHx0GIFRmrmrExTJ9nwxWt3lNXsqddfDNPVmwJiE2SP
 gg3o6PFJD7jldBp6y4Id00Ho8wtPpjy9A/+uLqmm4c+0vd3CnzE+6mTsXLowoP6ZWHYVkDdnF
 RldPpaJAkb1lfu70r/gUkfCSu42cUlcEQESCoWk1JtKVpu8Pasu+74HTcXu6wUt5i2tzcCV
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_143835_627612_8FCB5AE2 
X-CRM114-Status: GOOD (  12.89  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
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
Cc: devel@driverdev.osuosl.org, linux-rpi-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

The struct bm2835_mmal_v4l2_ctrl contains an ignore_errors flag which
was always set to false. So drop the unused flag.

Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
---
 .../vc04_services/bcm2835-camera/controls.c        | 34 +---------------------
 1 file changed, 1 insertion(+), 33 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/controls.c b/drivers/staging/vc04_services/bcm2835-camera/controls.c
index 89786c2..50f7c8b 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/controls.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/controls.c
@@ -85,7 +85,6 @@ struct bm2835_mmal_v4l2_ctrl {
 	const s64 *imenu; /* integer menu array */
 	u32 mmal_id; /* mmal parameter id */
 	bm2835_mmal_v4l2_ctrl_cb *setter;
-	bool ignore_errors;
 };
 
 struct v4l2_to_mmal_effects_setting {
@@ -912,8 +911,6 @@ static int bm2835_mmal_s_ctrl(struct v4l2_ctrl *ctrl)
 	if (ret)
 		pr_warn("ctrl id:%d/MMAL param %08X- returned ret %d\n",
 			ctrl->id, mmal_ctrl->mmal_id, ret);
-	if (mmal_ctrl->ignore_errors)
-		ret = 0;
 	return ret;
 }
 
@@ -927,56 +924,48 @@ static const struct bm2835_mmal_v4l2_ctrl v4l2_ctrls[V4L2_CTRL_COUNT] = {
 		-100, 100, 0, 1, NULL,
 		MMAL_PARAMETER_SATURATION,
 		ctrl_set_rational,
-		false
 	},
 	{
 		V4L2_CID_SHARPNESS, MMAL_CONTROL_TYPE_STD,
 		-100, 100, 0, 1, NULL,
 		MMAL_PARAMETER_SHARPNESS,
 		ctrl_set_rational,
-		false
 	},
 	{
 		V4L2_CID_CONTRAST, MMAL_CONTROL_TYPE_STD,
 		-100, 100, 0, 1, NULL,
 		MMAL_PARAMETER_CONTRAST,
 		ctrl_set_rational,
-		false
 	},
 	{
 		V4L2_CID_BRIGHTNESS, MMAL_CONTROL_TYPE_STD,
 		0, 100, 50, 1, NULL,
 		MMAL_PARAMETER_BRIGHTNESS,
 		ctrl_set_rational,
-		false
 	},
 	{
 		V4L2_CID_ISO_SENSITIVITY, MMAL_CONTROL_TYPE_INT_MENU,
 		0, ARRAY_SIZE(iso_qmenu) - 1, 0, 1, iso_qmenu,
 		MMAL_PARAMETER_ISO,
 		ctrl_set_iso,
-		false
 	},
 	{
 		V4L2_CID_ISO_SENSITIVITY_AUTO, MMAL_CONTROL_TYPE_STD_MENU,
 		0, V4L2_ISO_SENSITIVITY_AUTO, V4L2_ISO_SENSITIVITY_AUTO, 1,
 		NULL, MMAL_PARAMETER_ISO,
 		ctrl_set_iso,
-		false
 	},
 	{
 		V4L2_CID_IMAGE_STABILIZATION, MMAL_CONTROL_TYPE_STD,
 		0, 1, 0, 1, NULL,
 		MMAL_PARAMETER_VIDEO_STABILISATION,
 		ctrl_set_value,
-		false
 	},
 	{
 		V4L2_CID_EXPOSURE_AUTO, MMAL_CONTROL_TYPE_STD_MENU,
 		~0x03, V4L2_EXPOSURE_APERTURE_PRIORITY, V4L2_EXPOSURE_AUTO, 0,
 		NULL, MMAL_PARAMETER_EXPOSURE_MODE,
 		ctrl_set_exposure,
-		false
 	},
 	{
 		V4L2_CID_EXPOSURE_ABSOLUTE, MMAL_CONTROL_TYPE_STD,
@@ -984,7 +973,6 @@ static const struct bm2835_mmal_v4l2_ctrl v4l2_ctrls[V4L2_CTRL_COUNT] = {
 		1, 1 * 1000 * 10, 100 * 10, 1, NULL,
 		MMAL_PARAMETER_SHUTTER_SPEED,
 		ctrl_set_exposure,
-		false
 	},
 	{
 		V4L2_CID_AUTO_EXPOSURE_BIAS, MMAL_CONTROL_TYPE_INT_MENU,
@@ -992,7 +980,6 @@ static const struct bm2835_mmal_v4l2_ctrl v4l2_ctrls[V4L2_CTRL_COUNT] = {
 		(ARRAY_SIZE(ev_bias_qmenu) + 1) / 2 - 1, 0, ev_bias_qmenu,
 		MMAL_PARAMETER_EXPOSURE_COMP,
 		ctrl_set_value_ev,
-		false
 	},
 	{
 		V4L2_CID_EXPOSURE_AUTO_PRIORITY, MMAL_CONTROL_TYPE_STD,
@@ -1000,7 +987,6 @@ static const struct bm2835_mmal_v4l2_ctrl v4l2_ctrls[V4L2_CTRL_COUNT] = {
 		0, 1, NULL,
 		0,	/* Dummy MMAL ID as it gets mapped into FPS range*/
 		ctrl_set_exposure,
-		false
 	},
 	{
 		V4L2_CID_EXPOSURE_METERING,
@@ -1009,7 +995,6 @@ static const struct bm2835_mmal_v4l2_ctrl v4l2_ctrls[V4L2_CTRL_COUNT] = {
 		V4L2_EXPOSURE_METERING_AVERAGE, 0, NULL,
 		MMAL_PARAMETER_EXP_METERING_MODE,
 		ctrl_set_metering_mode,
-		false
 	},
 	{
 		V4L2_CID_AUTO_N_PRESET_WHITE_BALANCE,
@@ -1018,56 +1003,48 @@ static const struct bm2835_mmal_v4l2_ctrl v4l2_ctrls[V4L2_CTRL_COUNT] = {
 		NULL,
 		MMAL_PARAMETER_AWB_MODE,
 		ctrl_set_awb_mode,
-		false
 	},
 	{
 		V4L2_CID_RED_BALANCE, MMAL_CONTROL_TYPE_STD,
 		1, 7999, 1000, 1, NULL,
 		MMAL_PARAMETER_CUSTOM_AWB_GAINS,
 		ctrl_set_awb_gains,
-		false
 	},
 	{
 		V4L2_CID_BLUE_BALANCE, MMAL_CONTROL_TYPE_STD,
 		1, 7999, 1000, 1, NULL,
 		MMAL_PARAMETER_CUSTOM_AWB_GAINS,
 		ctrl_set_awb_gains,
-		false
 	},
 	{
 		V4L2_CID_COLORFX, MMAL_CONTROL_TYPE_STD_MENU,
 		0, V4L2_COLORFX_SET_CBCR, V4L2_COLORFX_NONE, 0, NULL,
 		MMAL_PARAMETER_IMAGE_EFFECT,
 		ctrl_set_image_effect,
-		false
 	},
 	{
 		V4L2_CID_COLORFX_CBCR, MMAL_CONTROL_TYPE_STD,
 		0, 0xffff, 0x8080, 1, NULL,
 		MMAL_PARAMETER_COLOUR_EFFECT,
 		ctrl_set_colfx,
-		false
 	},
 	{
 		V4L2_CID_ROTATE, MMAL_CONTROL_TYPE_STD,
 		0, 360, 0, 90, NULL,
 		MMAL_PARAMETER_ROTATION,
 		ctrl_set_rotate,
-		false
 	},
 	{
 		V4L2_CID_HFLIP, MMAL_CONTROL_TYPE_STD,
 		0, 1, 0, 1, NULL,
 		MMAL_PARAMETER_MIRROR,
 		ctrl_set_flip,
-		false
 	},
 	{
 		V4L2_CID_VFLIP, MMAL_CONTROL_TYPE_STD,
 		0, 1, 0, 1, NULL,
 		MMAL_PARAMETER_MIRROR,
 		ctrl_set_flip,
-		false
 	},
 	{
 		V4L2_CID_MPEG_VIDEO_BITRATE_MODE, MMAL_CONTROL_TYPE_STD_MENU,
@@ -1075,14 +1052,12 @@ static const struct bm2835_mmal_v4l2_ctrl v4l2_ctrls[V4L2_CTRL_COUNT] = {
 		0, 0, NULL,
 		MMAL_PARAMETER_RATECONTROL,
 		ctrl_set_bitrate_mode,
-		false
 	},
 	{
 		V4L2_CID_MPEG_VIDEO_BITRATE, MMAL_CONTROL_TYPE_STD,
 		25 * 1000, 25 * 1000 * 1000, 10 * 1000 * 1000, 25 * 1000, NULL,
 		MMAL_PARAMETER_VIDEO_BIT_RATE,
 		ctrl_set_bitrate,
-		false
 	},
 	{
 		V4L2_CID_JPEG_COMPRESSION_QUALITY, MMAL_CONTROL_TYPE_STD,
@@ -1090,7 +1065,6 @@ static const struct bm2835_mmal_v4l2_ctrl v4l2_ctrls[V4L2_CTRL_COUNT] = {
 		30, 1, NULL,
 		MMAL_PARAMETER_JPEG_Q_FACTOR,
 		ctrl_set_image_encode_output,
-		false
 	},
 	{
 		V4L2_CID_POWER_LINE_FREQUENCY, MMAL_CONTROL_TYPE_STD_MENU,
@@ -1098,7 +1072,6 @@ static const struct bm2835_mmal_v4l2_ctrl v4l2_ctrls[V4L2_CTRL_COUNT] = {
 		1, 1, NULL,
 		MMAL_PARAMETER_FLICKER_AVOID,
 		ctrl_set_flicker_avoidance,
-		false
 	},
 	{
 		V4L2_CID_MPEG_VIDEO_REPEAT_SEQ_HEADER, MMAL_CONTROL_TYPE_STD,
@@ -1106,7 +1079,6 @@ static const struct bm2835_mmal_v4l2_ctrl v4l2_ctrls[V4L2_CTRL_COUNT] = {
 		0, 1, NULL,
 		MMAL_PARAMETER_VIDEO_ENCODE_INLINE_HEADER,
 		ctrl_set_video_encode_param_output,
-		false
 	},
 	{
 		V4L2_CID_MPEG_VIDEO_H264_PROFILE,
@@ -1119,7 +1091,6 @@ static const struct bm2835_mmal_v4l2_ctrl v4l2_ctrls[V4L2_CTRL_COUNT] = {
 		V4L2_MPEG_VIDEO_H264_PROFILE_HIGH, 1, NULL,
 		MMAL_PARAMETER_PROFILE,
 		ctrl_set_video_encode_profile_level,
-		false
 	},
 	{
 		V4L2_CID_MPEG_VIDEO_H264_LEVEL, MMAL_CONTROL_TYPE_STD_MENU,
@@ -1139,7 +1110,6 @@ static const struct bm2835_mmal_v4l2_ctrl v4l2_ctrls[V4L2_CTRL_COUNT] = {
 		V4L2_MPEG_VIDEO_H264_LEVEL_4_0, 1, NULL,
 		MMAL_PARAMETER_PROFILE,
 		ctrl_set_video_encode_profile_level,
-		false
 	},
 	{
 		V4L2_CID_SCENE_MODE, MMAL_CONTROL_TYPE_STD_MENU,
@@ -1148,14 +1118,12 @@ static const struct bm2835_mmal_v4l2_ctrl v4l2_ctrls[V4L2_CTRL_COUNT] = {
 		V4L2_SCENE_MODE_NONE, 1, NULL,
 		MMAL_PARAMETER_PROFILE,
 		ctrl_set_scene_mode,
-		false
 	},
 	{
 		V4L2_CID_MPEG_VIDEO_H264_I_PERIOD, MMAL_CONTROL_TYPE_STD,
 		0, 0x7FFFFFFF, 60, 1, NULL,
 		MMAL_PARAMETER_INTRAPERIOD,
 		ctrl_set_video_encode_param_output,
-		false
 	},
 };
 
@@ -1168,7 +1136,7 @@ int bm2835_mmal_set_all_camera_controls(struct bm2835_mmal_dev *dev)
 		if ((dev->ctrls[c]) && (v4l2_ctrls[c].setter)) {
 			ret = v4l2_ctrls[c].setter(dev, dev->ctrls[c],
 						   &v4l2_ctrls[c]);
-			if (!v4l2_ctrls[c].ignore_errors && ret) {
+			if (ret) {
 				v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev,
 					 "Failed when setting default values for ctrl %d\n",
 					 c);
-- 
2.7.4


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
