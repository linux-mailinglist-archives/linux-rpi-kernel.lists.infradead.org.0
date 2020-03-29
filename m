Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16BC4196D78
	for <lists+linux-rpi-kernel@lfdr.de>; Sun, 29 Mar 2020 14:46:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=QTYmt0QpafxE2L+CE4jvOnW8fxw7FhDp7TGxp0WvV/8=; b=afyu2ifmHXmfu8SLIL9tUiKg/d
	emGunsG+42pQcDOchWCo+40+3gxtlB2RMnEmZNIOq3Nv3K5eNT6CCLRtRD2nXiJLc7/mFN6FDvT43
	z6gG8E74L56WofshsfH809Qj5KrnVrEaIxyIaK1TUZgQAcI6weWcqzmTPlYvI0jzVpcKfmdwE1ZiZ
	ul0DQTMrwYaWkEykiQLCNRAXSJ+yKYArtp0IUThmBy2cz5UEUDeO7qFsivvTkqFRilHagqyJcSCuJ
	2JvPQlGafpf/zuNbLRUNaddwK6BR0qBHgOy69mfNMvXqiwT+Fdzn/JxohOoX/NXePCdolvlzVkCaV
	LwxjwY3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIXK5-0001R2-3n; Sun, 29 Mar 2020 12:45:53 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIXJu-0001HU-Bl
 for linux-rpi-kernel@lists.infradead.org; Sun, 29 Mar 2020 12:45:45 +0000
Received: from localhost.localdomain ([37.4.249.171]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MCKSA-1jRvEk0HK6-009LmP; Sun, 29 Mar 2020 14:45:32 +0200
From: Stefan Wahren <stefan.wahren@i2se.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>
Subject: [PATCH 8/9] staging: bcm2835-camera: reduce multiline statements
Date: Sun, 29 Mar 2020 14:45:00 +0200
Message-Id: <1585485901-10172-9-git-send-email-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1585485901-10172-1-git-send-email-stefan.wahren@i2se.com>
References: <1585485901-10172-1-git-send-email-stefan.wahren@i2se.com>
X-Provags-ID: V03:K1:l6whX8QTXfBXl89rHgbkU34/88HDpwwHEXvad/lCrHwMx7VseJZ
 +oX6EzEP+Ii4+0Hqvpygb5nvovxK7nst+05MhYwYq63r0QPQFWlSk/Ot1dnrB0H9Epa4far
 aHXchfDywQKX1+xalsQ9DQprVsgLveqlj1lKv9Cerao03SxPFupBZcDiRMfKOgGw99YKBnT
 A5exJA1NKbs9DKs1czz4Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:nPMHPRSBrcM=:I68VAdqqfV8DKJ6E1ay1C8
 p72Up5o6uKW8S4NzlUI+PxAsvDmjWhgFbu7ZEFGqfmbYbc7gdW/vt5wiZqNXORv8pSRlyTpQT
 jWqQ2hAMyyG+n/78qVl+pDkAgDmj7pzNCz00P873A2IiEdfnBgv4uq+lhaw56JeAHML8WIMZ+
 NrENRKCOp3Xel4B/IY5CL+z8OjOe73Gn8eSVFr0cmTjvtAEoYWJ8NTLLWK8GWoRl3LIh4iWbN
 vL8PoVU1HzAMWbxrX+68kJfeXsyatq8n+pFw1oNp9oTKwMqUDJsDjiQk2PlbN97UBrsPw1DUE
 273NOBzc/39ebvNrSXdCop6DLzv9pakCaiY3k7d8GchaTLtsJXkCan0mxBtVbiK+GqqUbkVlj
 hA4AeKsVO8jjFYajfaGDuLYU1Lpj5Tkkh0dN8N29M7OP7LdAyY2rGSmCIDRLZQdoF6la3EurZ
 JjtJEsJ0nmn9GTstqgzp2srzffLeI09epuh4MOixyuh5nl4EN9hM37QYiWhBBQbsx2buK+65d
 KmPTmItva5Tav7e+YdrIPpB3yvmF7m74CWa9F3xmidJJceUkwYypboINOSF/mVDgnfcNa22Td
 qpQthM699r6ISj3XBSMMnge9FCmmRymLxPg6BASxsLyqpBa4VmjE/LOCViEWiULojeAR4bxfo
 98vQfHgJdhhMTIamuqBKgVBmZ5VCxYwtN9Pn4Y4huQvBr4rXHCcxOl64Mt8Yu1N9fN/fjKPUk
 i+cD4ACqAeZ8ivKhXzsDIS6i/XrgNaM4BbwDYRp4EAqgZ+bTwegAlkji9QG6sa4uO2xexTAon
 AdWfmB6BuMkY7VAHtqdzzrTm5qijJK+arKtEFZTuq6GkN3BIjt40VJK9UdJJz290Vf1TwA+
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200329_054542_708689_204387D5 
X-CRM114-Status: GOOD (  14.95  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
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

There are a lot of multiline statements which can be reduced.

Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
---
 .../vc04_services/bcm2835-camera/bcm2835-camera.c  | 57 +++++++++-------------
 .../vc04_services/bcm2835-camera/controls.c        |  3 +-
 2 files changed, 23 insertions(+), 37 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
index 91f767f..6d554d4 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
@@ -369,8 +369,7 @@ static void buffer_cb(struct vchiq_mmal_instance *instance,
 
 	if (dev->capture.vc_start_timestamp != -1 && pts) {
 		ktime_t timestamp;
-		s64 runtime_us = pts -
-		    dev->capture.vc_start_timestamp;
+		s64 runtime_us = pts - dev->capture.vc_start_timestamp;
 		timestamp = ktime_add_us(dev->capture.kernel_start_ts,
 					 runtime_us);
 		v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev,
@@ -420,9 +419,8 @@ static int enable_camera(struct bm2835_mmal_dev *dev)
 			return -EINVAL;
 		}
 
-		ret = vchiq_mmal_component_enable(
-				dev->instance,
-				dev->component[COMP_CAMERA]);
+		ret = vchiq_mmal_component_enable(dev->instance,
+						  dev->component[COMP_CAMERA]);
 		if (ret < 0) {
 			v4l2_err(&dev->v4l2_dev,
 				 "Failed enabling camera, ret %d\n", ret);
@@ -451,10 +449,8 @@ static int disable_camera(struct bm2835_mmal_dev *dev)
 
 		v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev,
 			 "Disabling camera\n");
-		ret =
-		    vchiq_mmal_component_disable(
-				dev->instance,
-				dev->component[COMP_CAMERA]);
+		ret = vchiq_mmal_component_disable(dev->instance,
+						   dev->component[COMP_CAMERA]);
 		if (ret < 0) {
 			v4l2_err(&dev->v4l2_dev,
 				 "Failed disabling camera, ret %d\n", ret);
@@ -555,8 +551,8 @@ static int start_streaming(struct vb2_queue *vq, unsigned int count)
 
 	/* enable the camera port */
 	dev->capture.port->cb_ctx = dev;
-	ret =
-	    vchiq_mmal_port_enable(dev->instance, dev->capture.port, buffer_cb);
+	ret = vchiq_mmal_port_enable(dev->instance, dev->capture.port,
+				     buffer_cb);
 	if (ret) {
 		v4l2_err(&dev->v4l2_dev,
 			 "Failed to enable capture port - error %d. Disabling camera port again\n",
@@ -767,16 +763,14 @@ static int vidioc_overlay(struct file *file, void *f, unsigned int on)
 	    (!on && !dev->component[COMP_PREVIEW]->enabled))
 		return 0;	/* already in requested state */
 
-	src =
-	    &dev->component[COMP_CAMERA]->output[CAM_PORT_PREVIEW];
+	src = &dev->component[COMP_CAMERA]->output[CAM_PORT_PREVIEW];
 
 	if (!on) {
 		/* disconnect preview ports and disable component */
 		ret = vchiq_mmal_port_disable(dev->instance, src);
 		if (!ret)
-			ret =
-			    vchiq_mmal_port_connect_tunnel(dev->instance, src,
-							   NULL);
+			ret = vchiq_mmal_port_connect_tunnel(dev->instance, src,
+							     NULL);
 		if (ret >= 0)
 			ret = vchiq_mmal_component_disable(
 					dev->instance,
@@ -800,9 +794,8 @@ static int vidioc_overlay(struct file *file, void *f, unsigned int on)
 	if (enable_camera(dev) < 0)
 		return -EINVAL;
 
-	ret = vchiq_mmal_component_enable(
-			dev->instance,
-			dev->component[COMP_PREVIEW]);
+	ret = vchiq_mmal_component_enable(dev->instance,
+					  dev->component[COMP_PREVIEW]);
 	if (ret < 0)
 		return ret;
 
@@ -1210,8 +1203,7 @@ static int mmal_setup_components(struct bm2835_mmal_dev *dev,
 	}
 
 	remove_padding = mfmt->remove_padding;
-	vchiq_mmal_port_parameter_set(dev->instance,
-				      camera_port,
+	vchiq_mmal_port_parameter_set(dev->instance, camera_port,
 				      MMAL_PARAMETER_NO_IMAGE_PADDING,
 				      &remove_padding, sizeof(remove_padding));
 
@@ -1665,9 +1657,8 @@ static int mmal_init(struct bm2835_mmal_dev *dev)
 	dev->capture.enc_level = V4L2_MPEG_VIDEO_H264_LEVEL_4_0;
 
 	/* get the preview component ready */
-	ret = vchiq_mmal_component_init(
-			dev->instance, "ril.video_render",
-			&dev->component[COMP_PREVIEW]);
+	ret = vchiq_mmal_component_init(dev->instance, "ril.video_render",
+					&dev->component[COMP_PREVIEW]);
 	if (ret < 0)
 		goto unreg_camera;
 
@@ -1679,9 +1670,8 @@ static int mmal_init(struct bm2835_mmal_dev *dev)
 	}
 
 	/* get the image encoder component ready */
-	ret = vchiq_mmal_component_init(
-		dev->instance, "ril.image_encode",
-		&dev->component[COMP_IMAGE_ENCODE]);
+	ret = vchiq_mmal_component_init(dev->instance, "ril.image_encode",
+					&dev->component[COMP_IMAGE_ENCODE]);
 	if (ret < 0)
 		goto unreg_preview;
 
@@ -1741,15 +1731,13 @@ static int mmal_init(struct bm2835_mmal_dev *dev)
 
 unreg_vid_encoder:
 	pr_err("Cleanup: Destroy video encoder\n");
-	vchiq_mmal_component_finalise(
-		dev->instance,
-		dev->component[COMP_VIDEO_ENCODE]);
+	vchiq_mmal_component_finalise(dev->instance,
+				      dev->component[COMP_VIDEO_ENCODE]);
 
 unreg_image_encoder:
 	pr_err("Cleanup: Destroy image encoder\n");
-	vchiq_mmal_component_finalise(
-		dev->instance,
-		dev->component[COMP_IMAGE_ENCODE]);
+	vchiq_mmal_component_finalise(dev->instance,
+				      dev->component[COMP_IMAGE_ENCODE]);
 
 unreg_preview:
 	pr_err("Cleanup: Destroy video render\n");
@@ -1782,8 +1770,7 @@ static int bm2835_mmal_init_device(struct bm2835_mmal_dev *dev,
 	/* video device needs to be able to access instance data */
 	video_set_drvdata(vfd, dev);
 
-	ret = video_register_device(vfd,
-				    VFL_TYPE_VIDEO,
+	ret = video_register_device(vfd, VFL_TYPE_VIDEO,
 				    video_nr[dev->camera_num]);
 	if (ret < 0)
 		return ret;
diff --git a/drivers/staging/vc04_services/bcm2835-camera/controls.c b/drivers/staging/vc04_services/bcm2835-camera/controls.c
index e46f150..8e10a66 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/controls.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/controls.c
@@ -839,8 +839,7 @@ static int ctrl_set_scene_mode(struct bm2835_mmal_dev *dev,
 		enum mmal_parameter_exposuremeteringmode metering_mode;
 
 		for (i = 0; i < ARRAY_SIZE(scene_configs); i++) {
-			if (scene_configs[i].v4l2_scene ==
-				ctrl->val) {
+			if (scene_configs[i].v4l2_scene == ctrl->val) {
 				scene = &scene_configs[i];
 				break;
 			}
-- 
2.7.4


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
