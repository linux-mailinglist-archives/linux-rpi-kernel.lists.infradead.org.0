Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73F46196D80
	for <lists+linux-rpi-kernel@lfdr.de>; Sun, 29 Mar 2020 14:46:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=UxrqI8aK3JW0+UP5VdMsX6E5UBiPli5l8FkP63dytxc=; b=af5PmSFnWkPV/21RsPABLMLwRr
	n+bV9BsxyGcdNzl5feSG8uIVYJiybAv3wlbp5gsHMnGHST0D+EiNxZ/FPF2UnYj53szmpGfXzJkDP
	VHwA1pQWjZq2Mia5+i8EaJXkX0V3/w8jtnFiYf50lG2VBrjxyxfoG53zyicWU8hqv23mP35OHwnq5
	KdmnNvmwlkWRpTmzcToqMO8UQTxql1JuscDUwU8zqBcWO8+gjtcDsNce/LdvoVdU2uSO6whywlQ0j
	06I3xWIJICAUgxZ7CM0WJcNQN1aFWvRfBKXvOkDjtFJJL/6WOFtA5WkQzc04bfKmQNiw2hOGdrs/h
	lw4at0RQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIXK2-0001Om-09; Sun, 29 Mar 2020 12:45:50 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIXJv-0001HZ-35
 for linux-rpi-kernel@lists.infradead.org; Sun, 29 Mar 2020 12:45:45 +0000
Received: from localhost.localdomain ([37.4.249.171]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MRTAj-1jfxzV1gqT-00NV3q; Sun, 29 Mar 2020 14:45:32 +0200
From: Stefan Wahren <stefan.wahren@i2se.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>
Subject: [PATCH 9/9] staging: bcm2835-camera: reduce indentation in
 ctrl_set_image_effect
Date: Sun, 29 Mar 2020 14:45:01 +0200
Message-Id: <1585485901-10172-10-git-send-email-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1585485901-10172-1-git-send-email-stefan.wahren@i2se.com>
References: <1585485901-10172-1-git-send-email-stefan.wahren@i2se.com>
X-Provags-ID: V03:K1:fSjMU+03CqpgmXCTuLpBxjY0rmtg18kPTRx6bTNsEkSCRV12794
 KFIgccZOB/J1ScT3/S6sMgE8UirrRw5i+OiAWYyS61kHJweT8eJQAz5vTuqSlHkZaJLVFwt
 r04MR+y7wVCOhHcmUVmqG40IycTI5hYtKX98FeNpVQKIIzvE2PTJgk/a+/b/PlMxPkdWLY8
 59zHsP9mXOLaLgdcPARwA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:o2AHnmVI52g=:fFaKgeHTUjkdA6SgtuT1ly
 v4wqWkOeKEuc5ytAGxKEbZYjMNO+t+XAzJkOOK/uVdE6H5TfZvaLzpW0J/1EB57SVjB9sPP9F
 fMYCV1RMmbeCgk/7pTTJnVgwGQ9O1UB4p+KXZKsF9QTzqqRsWNlzUW1XXe9UN4xe6sQX/BBf5
 sm4siCd7jUr+SgmFkDDVKXadHYv+RgBPnRfU0H4vtYe/XwmSPsavV4FoRy0LIaylCKwbIz81P
 y6avcNnLQHsqwra8ZmN5JzBtc0lwsYejbuu2crrUuhm62S5M3Bxmd3ROVTU39R2MMHZvuYQhj
 Xn1KlQaSDG8tFu/DJcVTNTmjHfdUrxoDQ+2RZ0hWRql6waMgVQl1nlIaRpe90WvQfTkjuMwpn
 Lue2xJIakDfThPGlBvAMMN/Ykcgo8lVzfh9nyT7nGyPso4Al+hMDZarZmGzmUHhm9g7WoVSZ6
 x2mhRfPgi2mu1YYSKLda1iTQomtTL6DbF8OOLXba9J1OJGJzsjWImih2HvgKl8JcCEoL7btSM
 SjAzzUizq9nrIdzFux7209EJly3I2jq59PhLtW/+9XdINyFHmjhQglIMSvHzXq7CRoRKLuBBG
 tHdRGclue5cEHybjhApPNGflQD8p+0C5sWm4l3+6chN605j3VSa07Po/GS7I7isS9+qeHpHo5
 qqlCC99ORCs7a4bubCZ843FieQApKwKAxjkegGbLJKGFHCzBGshfG9ch6FgdpUfo4nAo7qTba
 R4Wf/H69GmSjjQuI6gVeRLhN/FvH1wwFhXNQdkIJhJLTctm9bAdfoTDzb6qhenNMsEsChZaDZ
 uXgEj/8eZwR2zrUQ77KX83xMsFie59B5x6q/T/stoaoDyTmsC2Xfk4HqLRRTI8BViXsfJ5l
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200329_054543_434845_76F8A35E 
X-CRM114-Status: GOOD (  14.26  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
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

We can reduce the indentation in the loop by using continue in case the
effect doesn't match.

Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
---
 .../vc04_services/bcm2835-camera/controls.c        | 63 +++++++++++-----------
 1 file changed, 31 insertions(+), 32 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/controls.c b/drivers/staging/vc04_services/bcm2835-camera/controls.c
index 8e10a66..b096a12 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/controls.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/controls.c
@@ -514,42 +514,41 @@ static int ctrl_set_image_effect(struct bm2835_mmal_dev *dev,
 	struct mmal_parameter_imagefx_parameters imagefx;
 
 	for (i = 0; i < ARRAY_SIZE(v4l2_to_mmal_effects_values); i++) {
-		if (ctrl->val == v4l2_to_mmal_effects_values[i].v4l2_effect) {
-			imagefx.effect =
-				v4l2_to_mmal_effects_values[i].mmal_effect;
-			imagefx.num_effect_params =
-				v4l2_to_mmal_effects_values[i].num_effect_params;
-
-			if (imagefx.num_effect_params > MMAL_MAX_IMAGEFX_PARAMETERS)
-				imagefx.num_effect_params = MMAL_MAX_IMAGEFX_PARAMETERS;
-
-			for (j = 0; j < imagefx.num_effect_params; j++)
-				imagefx.effect_parameter[j] =
-					v4l2_to_mmal_effects_values[i].effect_params[j];
-
-			dev->colourfx.enable =
-				v4l2_to_mmal_effects_values[i].col_fx_enable;
-			if (!v4l2_to_mmal_effects_values[i].col_fx_fixed_cbcr) {
-				dev->colourfx.u =
-					v4l2_to_mmal_effects_values[i].u;
-				dev->colourfx.v =
-					v4l2_to_mmal_effects_values[i].v;
-			}
+		if (ctrl->val != v4l2_to_mmal_effects_values[i].v4l2_effect)
+			continue;
+
+		imagefx.effect =
+			v4l2_to_mmal_effects_values[i].mmal_effect;
+		imagefx.num_effect_params =
+			v4l2_to_mmal_effects_values[i].num_effect_params;
 
-			control = &dev->component[COMP_CAMERA]->control;
+		if (imagefx.num_effect_params > MMAL_MAX_IMAGEFX_PARAMETERS)
+			imagefx.num_effect_params = MMAL_MAX_IMAGEFX_PARAMETERS;
 
-			ret = vchiq_mmal_port_parameter_set(
-					dev->instance, control,
-					MMAL_PARAMETER_IMAGE_EFFECT_PARAMETERS,
-					&imagefx, sizeof(imagefx));
-			if (ret)
-				goto exit;
+		for (j = 0; j < imagefx.num_effect_params; j++)
+			imagefx.effect_parameter[j] =
+				v4l2_to_mmal_effects_values[i].effect_params[j];
 
-			ret = vchiq_mmal_port_parameter_set(
-					dev->instance, control,
-					MMAL_PARAMETER_COLOUR_EFFECT,
-					&dev->colourfx, sizeof(dev->colourfx));
+		dev->colourfx.enable =
+			v4l2_to_mmal_effects_values[i].col_fx_enable;
+		if (!v4l2_to_mmal_effects_values[i].col_fx_fixed_cbcr) {
+			dev->colourfx.u = v4l2_to_mmal_effects_values[i].u;
+			dev->colourfx.v = v4l2_to_mmal_effects_values[i].v;
 		}
+
+		control = &dev->component[COMP_CAMERA]->control;
+
+		ret = vchiq_mmal_port_parameter_set(
+				dev->instance, control,
+				MMAL_PARAMETER_IMAGE_EFFECT_PARAMETERS,
+				&imagefx, sizeof(imagefx));
+		if (ret)
+			goto exit;
+
+		ret = vchiq_mmal_port_parameter_set(
+				dev->instance, control,
+				MMAL_PARAMETER_COLOUR_EFFECT,
+				&dev->colourfx, sizeof(dev->colourfx));
 	}
 
 exit:
-- 
2.7.4


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
