Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 293D858AB6
	for <lists+linux-rpi-kernel@lfdr.de>; Thu, 27 Jun 2019 21:08:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9pHt4gF/CRRrX5AEDakJR04suo8YIeIc+7gMRsH/ePk=; b=Z+7hiwVcECUlnPeaNcnQU7zc14
	Y+/ojM79PGAqtEy1iU3IhNciZOW4fPZY9XD8nCqqJyoT2o/0IfO+vLcbuaoX+Zstyr2KWyD62bTlI
	XNDDHMdf1mc49oUVteLkJOUhohnLMmgMOG/ls3yzOH3DmgifeqneimkkWz0UM+oCmB1Tq0nYZLIGM
	UC3JqNL615oi+mPYmXW3J3cXv6d1xPjU3QB5z4kpd5X8mr/a5j4S/9aQR/jZzWX2jHLWgYOadH4ta
	h5gfTGt9PblaAhVn1UccAFrrMZjTu4oI9lHVdE5/IoYY5YHNi9xiDF92R511gkS7PB5+adJXsB4kq
	lZGFZCVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgZlE-0004cV-9a; Thu, 27 Jun 2019 19:08:44 +0000
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgZjg-0003Yy-4A; Thu, 27 Jun 2019 19:07:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1561662413;
 bh=KPoMqiu38WlQMmOQWFYe9adp8jz5h/iuig80LINOB4k=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=IT2VK/5EObt3ez4g9KdsSOUWQ8xTMpZxWED6ztqOEDmLW2yqEepu/kWCNpoxUEkfk
 jbBftQCjzmkGk498+Q1GYYOjej4AC7riOjildD5M+E9r1t8ownxfNbIOJ5iahjZOtV
 0Jgj19okACJzUJuwCTx2afBliy05XQq8DFVkFgaw=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.111]) by mail.gmx.com
 (mrgmx101 [212.227.17.168]) with ESMTPSA (Nemesis) id
 0LgMCe-1iJEPh2fCu-00njBV; Thu, 27 Jun 2019 21:06:53 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH 24/31] staging: bcm2835-camera: Use enums for max value in
 controls
Date: Thu, 27 Jun 2019 21:06:19 +0200
Message-Id: <1561662386-23045-5-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561662386-23045-1-git-send-email-wahrenst@gmx.net>
References: <1561662386-23045-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:3XP1iFPzKjcE3p+U1Ak2b6SJhsYxTarneZ55FwTTURUP+SRzUf2
 FDw/bHz/dvpgjhwJcEowKra52RKq+zYcmHrtzd+LAoR7uxGjw9ThkOKOxd7MiQAPzK8NfnV
 YgEVVlGlpY0JHBe96GZFBzNWgLsBE6BspnUiGqu3d47YE8meQ6Bdm+rJxI9Of5yFwxJ8c0p
 /VgwTWf3XmfaVDyI+C/yw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:1OKiNi5XAjA=:0DfKaAE4FOi3ZmL7jnR1Zb
 c/NxKVdz0J2U3n/i1fwt89swsJknmF8aShGJSuDJfn7fVxPGdfQ4pL4qmx4cyWDfH3ts4q9Hj
 N4z9kNckmm5Y0+bNWp9y/1yAFLny75zgbT05sjzixAQeqHA1TgNl2TrQLBaSitFzBeEkVgSIu
 4hZBn+gs3WDT8MGmkcic8MT1eBEUXXSrDT8TavAiZVJqBgb2w7IctHsUcJE66Oo3fS1F67iu4
 YWPDtAVsVn45Qoqcwe2y1z99mU4QGWNaB1k2HzgIHJkvlvVbVSgf3yG5QGP7L7fmFRco8U1mH
 b03vJ/VnPiBR7fePexnZ6sLBAehrRoZEojEJEom/Z/z/m8icRyR9VWymIqXvDVj63B4pMStzR
 YWfCQ+lAFV8TpiiyrmtkDSN7fO6/MpOEO20VaAqRAEQ4zHPfn6Oz2pTCg0RzExnlnfgkPiemK
 hXq3IWkS10sj8qS/NmL+puiXr2w7jhFdBWM8TwoTn454dfLspziK61jJVfrJirbI7xFW2UsFb
 BeFrUiv1US+KjUX1Sb6qH5JTtATSS9LtDCfB5IWxFrNf+djrg9OyvVJJOruhawBl23k0sWRzq
 5J8ZR0gNzDcP0LWKoj+fYmPxW/irWrRM+ByHwKvZPdqAF/SEbqb9VtR+XDCC7lIIe//CnZSWb
 tzDYXZqjGVg3Wrq+fVO+8SfuTejRMb/5xUwptLyLnsLvJjWuKGvaj67isyQ7SBXEnyclEz5W0
 pl1q7SVVsV6Q6bMTHBio33/6KSzfXN6RLNBQsTeYwPO0xmx7ne0NnaYWlr3mAHl2yPWLueeTf
 Hje1gRcADLELw85dUz0mTZl8zgKpWkFTzoZMjL6grWKyxvPMpedVBt1rzL4OmRkJC5MmpOI1h
 GPOm0aoSm6ESqWMWcyMttSphqNmpCkUJPBJwGhuCsOFHBno+e/pLxLDa842X1KAiUsLTBRaWF
 SpeL0cwFh0+0s/4pIJc4aBS4tTDB73EIL9xJYt3Ib3cFUNC1bFoJXWtCURtxy8qOD+/jvXJre
 xbxai6myvGdQt357eJRObvbqMdwwsiAVfKGgIH/kNkRIVETLNTwXH2Tt/0SFUICUDV78ia/sP
 sAfQvGM7sDzrFU=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_120708_468654_E3267313 
X-CRM114-Status: UNSURE (   8.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.21 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devel@driverdev.osuosl.org, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

From: Dave Stevenson <dave.stevenson@raspberrypi.org>

Controls of type MMAL_CONTROL_TYPE_STD_MENU call v4l2_ctrl_new_std_menu
with a max value and a mask. The max value is one of the defined
values for the control, however in the config array there are several
entries where raw numbers have been used instead. Replace these
with the appropriate enum.

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.org>
---
 .../vc04_services/bcm2835-camera/controls.c        | 37 ++++++++--------------
 1 file changed, 13 insertions(+), 24 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/controls.c b/drivers/staging/vc04_services/bcm2835-camera/controls.c
index bc2f3f4..038b9b9 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/controls.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/controls.c
@@ -58,19 +58,6 @@ static const u32 iso_values[] = {
 	0, 100, 200, 400, 800,
 };

-static const s64 mains_freq_qmenu[] = {
-	V4L2_CID_POWER_LINE_FREQUENCY_DISABLED,
-	V4L2_CID_POWER_LINE_FREQUENCY_50HZ,
-	V4L2_CID_POWER_LINE_FREQUENCY_60HZ,
-	V4L2_CID_POWER_LINE_FREQUENCY_AUTO
-};
-
-/* Supported video encode modes */
-static const s64 bitrate_mode_qmenu[] = {
-	(s64)V4L2_MPEG_VIDEO_BITRATE_MODE_VBR,
-	(s64)V4L2_MPEG_VIDEO_BITRATE_MODE_CBR,
-};
-
 enum bm2835_mmal_ctrl_type {
 	MMAL_CONTROL_TYPE_STD,
 	MMAL_CONTROL_TYPE_STD_MENU,
@@ -972,8 +959,8 @@ static const struct bm2835_mmal_v4l2_ctrl v4l2_ctrls[V4L2_CTRL_COUNT] = {
 	},
 	{
 		V4L2_CID_ISO_SENSITIVITY_AUTO, MMAL_CONTROL_TYPE_STD_MENU,
-		0, 1, V4L2_ISO_SENSITIVITY_AUTO, 1, NULL,
-		MMAL_PARAMETER_ISO,
+		0, V4L2_ISO_SENSITIVITY_AUTO, V4L2_ISO_SENSITIVITY_AUTO, 1,
+		NULL, MMAL_PARAMETER_ISO,
 		ctrl_set_iso,
 		false
 	},
@@ -990,8 +977,8 @@ static const struct bm2835_mmal_v4l2_ctrl v4l2_ctrls[V4L2_CTRL_COUNT] = {
  */
 	{
 		V4L2_CID_EXPOSURE_AUTO, MMAL_CONTROL_TYPE_STD_MENU,
-		~0x03, 3, V4L2_EXPOSURE_AUTO, 0, NULL,
-		MMAL_PARAMETER_EXPOSURE_MODE,
+		~0x03, V4L2_EXPOSURE_APERTURE_PRIORITY, V4L2_EXPOSURE_AUTO, 0,
+		NULL, MMAL_PARAMETER_EXPOSURE_MODE,
 		ctrl_set_exposure,
 		false
 	},
@@ -1027,7 +1014,8 @@ static const struct bm2835_mmal_v4l2_ctrl v4l2_ctrls[V4L2_CTRL_COUNT] = {
 	{
 		V4L2_CID_EXPOSURE_METERING,
 		MMAL_CONTROL_TYPE_STD_MENU,
-		~0x7, 2, V4L2_EXPOSURE_METERING_AVERAGE, 0, NULL,
+		~0x7, V4L2_EXPOSURE_METERING_SPOT,
+		V4L2_EXPOSURE_METERING_AVERAGE, 0, NULL,
 		MMAL_PARAMETER_EXP_METERING_MODE,
 		ctrl_set_metering_mode,
 		false
@@ -1035,7 +1023,8 @@ static const struct bm2835_mmal_v4l2_ctrl v4l2_ctrls[V4L2_CTRL_COUNT] = {
 	{
 		V4L2_CID_AUTO_N_PRESET_WHITE_BALANCE,
 		MMAL_CONTROL_TYPE_STD_MENU,
-		~0x3ff, 9, V4L2_WHITE_BALANCE_AUTO, 0, NULL,
+		~0x3ff, V4L2_WHITE_BALANCE_SHADE, V4L2_WHITE_BALANCE_AUTO, 0,
+		NULL,
 		MMAL_PARAMETER_AWB_MODE,
 		ctrl_set_awb_mode,
 		false
@@ -1056,7 +1045,7 @@ static const struct bm2835_mmal_v4l2_ctrl v4l2_ctrls[V4L2_CTRL_COUNT] = {
 	},
 	{
 		V4L2_CID_COLORFX, MMAL_CONTROL_TYPE_STD_MENU,
-		0, 15, V4L2_COLORFX_NONE, 0, NULL,
+		0, V4L2_COLORFX_SET_CBCR, V4L2_COLORFX_NONE, 0, NULL,
 		MMAL_PARAMETER_IMAGE_EFFECT,
 		ctrl_set_image_effect,
 		false
@@ -1091,8 +1080,8 @@ static const struct bm2835_mmal_v4l2_ctrl v4l2_ctrls[V4L2_CTRL_COUNT] = {
 	},
 	{
 		V4L2_CID_MPEG_VIDEO_BITRATE_MODE, MMAL_CONTROL_TYPE_STD_MENU,
-		0, ARRAY_SIZE(bitrate_mode_qmenu) - 1,
-		0, 0, bitrate_mode_qmenu,
+		0, V4L2_MPEG_VIDEO_BITRATE_MODE_CBR,
+		0, 0, NULL,
 		MMAL_PARAMETER_RATECONTROL,
 		ctrl_set_bitrate_mode,
 		false
@@ -1114,8 +1103,8 @@ static const struct bm2835_mmal_v4l2_ctrl v4l2_ctrls[V4L2_CTRL_COUNT] = {
 	},
 	{
 		V4L2_CID_POWER_LINE_FREQUENCY, MMAL_CONTROL_TYPE_STD_MENU,
-		0, ARRAY_SIZE(mains_freq_qmenu) - 1,
-		1, 1, mains_freq_qmenu,
+		0, V4L2_CID_POWER_LINE_FREQUENCY_AUTO,
+		1, 1, NULL,
 		MMAL_PARAMETER_FLICKER_AVOID,
 		ctrl_set_flicker_avoidance,
 		false
--
2.7.4


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
