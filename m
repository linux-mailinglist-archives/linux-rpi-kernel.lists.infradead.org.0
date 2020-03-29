Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C890A196D7F
	for <lists+linux-rpi-kernel@lfdr.de>; Sun, 29 Mar 2020 14:46:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=eNog0Oj46MVgI3OaqIOAYZt57ZyebeeDy5Ng1Dl7zyk=; b=tn2p8tCq2mS33SiL5nPUlOHDDy
	Q2zO3KsLdEpk2OcVWBOBkHIgrbjGeoifkgK56W6xrVPtBbnmiCv1erhyPHFPwTNCSjTuGzbFjE+Cf
	qpbrbAieX4Pnd6tHRxSJ1f9EtD7Q0j/UDnsBgVKSQjMmeHV4gzLdrEP/gk19Hlt0YWl09a3X01L3n
	VqK3jNR08OfKfpG7FCrHE1PACQEezX5624s/6bSkJEzDy3EtoDkGlETd5iY1r87qydpkHWUhIz49/
	DP4e99UNfCHRmjWasN3g3hY3hMLRvLc4ddVuw0C5kMfgWir8czlpkbaTcO0POV7AtlfcxK1jppGQl
	DfXWuatQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIXKC-0001VR-27; Sun, 29 Mar 2020 12:46:00 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIXJv-0001H7-6T
 for linux-rpi-kernel@lists.infradead.org; Sun, 29 Mar 2020 12:45:46 +0000
Received: from localhost.localdomain ([37.4.249.171]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MsqIi-1j33nX062q-00tFRX; Sun, 29 Mar 2020 14:45:31 +0200
From: Stefan Wahren <stefan.wahren@i2se.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>
Subject: [PATCH 5/9] staging: bcm2835-camera: Move encode component setup in
 its own function
Date: Sun, 29 Mar 2020 14:44:57 +0200
Message-Id: <1585485901-10172-6-git-send-email-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1585485901-10172-1-git-send-email-stefan.wahren@i2se.com>
References: <1585485901-10172-1-git-send-email-stefan.wahren@i2se.com>
X-Provags-ID: V03:K1:BQPmHhJvmbzHkT7+st7uQHneaHyjrOkAfOE/UNb/XiYKc9w+ShP
 E4Cj0TO9bTMNsZ9+9izHwwl27TxlKKbjmcft93WjyG0NyygR62/7tYBE1avHffWDAuZ/2+B
 0e/5D9DxS55R8hF/RJwoTByBoihZyoagq20dUyBViebFOUkCiBagJxq8HBNQOjKUsd/2P4A
 JtoEo5DMPAtMAGnNME6cQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:SFeXStu2+Ao=:+kjDDBBKgaAgOG/vrhF3Qg
 oaTI9Lry7VLHUuj6fCYyoS7qpXw6kcdnDUd/4bb1HppYdGBT/a/8WIU9BbDlLbW7I0QsO6pMd
 7pmnBdKRleY2TVMo+0/HKnirTgWuv/ivY6cZFgvvZqmUoiiB8gUdOj0F+F2Dm87eFejHAZJwu
 Y0HXQoi6JXrrAVQOxVrAhIXqdufVV6ek+/Xty+TlZME4bPgnCsRxlK6k6JVjGnXj2/bYDbVMc
 LaMqs61YYn1Gj1InVUqj/2rHHiuTnkn880hUADMJWb5mj83lHVhktEiyTCGuIUcz7ZzDuREin
 dpHUumRzGEO8i3/+KHl/fody/vWpqWWd//X0d38r3t44tChPd8VlNOa7cTn9wQipHwd60WosX
 5hMk2HBk/Y6Q8G1khepCLtS+xdhVSVJCFiHvRPI/HTc+PvA6cdJH3zQ7zsJ+w+Q4k0uTBPOVJ
 6pqAc7qZoMfAvhIEmaNuioPGT8+q/v9pr6sNoLRD+do/Ml0DNqzuYlp2ZCD78GzFGTzenD/QU
 /uQnjuJCkuVsaSwjAItmGAwtYw8kmZargRGdkTi8y3LA1On89OZNVJocLFkG2me1PEnHmreLQ
 r5P1a2p6Tld3XMOo08SvImlP9BzsfH/Vrb8/kxUeePJPFTgqHB9oeKhKOVoGBhpoo2HKY0qTI
 /i5BcDHiDnwqZZ12vupInvciqGLqQd4rAw/F9GK3YkRGSyngc6gMO0Ewj4XOJLOfkxWw+w7w+
 vwXE6A/+3B8B+Wcb+qpoIRkYPqkHOb3iW2cKJft4s9mHCRI5kQxiq593ex9Hj6Y3fI17aiiWn
 YtgQ8NKqbQZIWNEdogaAmtEI0kgetRLALRPUx1NAcFJNomw7eWKKrYBDnWwub5KlGM0fkg3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200329_054543_543944_858990CE 
X-CRM114-Status: GOOD (  15.36  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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

The function mmal_setup_components has to many indention levels. So move
the setup code for encode component in its own function.

Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
---
 .../vc04_services/bcm2835-camera/bcm2835-camera.c  | 185 ++++++++++-----------
 1 file changed, 91 insertions(+), 94 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
index ff2ba23..f101918 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
@@ -1001,6 +1001,94 @@ static int vidioc_try_fmt_vid_cap(struct file *file, void *priv,
 	return 0;
 }
 
+static int mmal_setup_encode_component(struct bm2835_mmal_dev *dev,
+				       struct v4l2_format *f,
+				       struct vchiq_mmal_port *port,
+				       struct vchiq_mmal_port *camera_port,
+				       struct vchiq_mmal_component *component)
+{
+	struct mmal_fmt *mfmt = get_format(f);
+	int ret;
+
+	v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev,
+		 "vid_cap - set up encode comp\n");
+
+	/* configure buffering */
+	camera_port->current_buffer.size = camera_port->recommended_buffer.size;
+	camera_port->current_buffer.num = camera_port->recommended_buffer.num;
+
+	ret = vchiq_mmal_port_connect_tunnel(dev->instance, camera_port,
+					     &component->input[0]);
+	if (ret) {
+		v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev,
+			 "%s failed to create connection\n", __func__);
+		/* ensure capture is not going to be tried */
+		dev->capture.port = NULL;
+		return ret;
+	}
+
+	port->es.video.width = f->fmt.pix.width;
+	port->es.video.height = f->fmt.pix.height;
+	port->es.video.crop.x = 0;
+	port->es.video.crop.y = 0;
+	port->es.video.crop.width = f->fmt.pix.width;
+	port->es.video.crop.height = f->fmt.pix.height;
+	port->es.video.frame_rate.num =
+		  dev->capture.timeperframe.denominator;
+	port->es.video.frame_rate.den =
+		  dev->capture.timeperframe.numerator;
+
+	port->format.encoding = mfmt->mmal;
+	port->format.encoding_variant = 0;
+	/* Set any encoding specific parameters */
+	switch (mfmt->mmal_component) {
+	case COMP_VIDEO_ENCODE:
+		port->format.bitrate = dev->capture.encode_bitrate;
+		break;
+	case COMP_IMAGE_ENCODE:
+		/* Could set EXIF parameters here */
+		break;
+	default:
+		break;
+	}
+
+	ret = vchiq_mmal_port_set_format(dev->instance, port);
+	if (ret) {
+		v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev,
+			 "%s failed to set format %dx%d fmt %08X\n",
+			 __func__,
+			 f->fmt.pix.width,
+			 f->fmt.pix.height,
+			 f->fmt.pix.pixelformat);
+		return ret;
+	}
+
+	ret = vchiq_mmal_component_enable(dev->instance, component);
+	if (ret) {
+		v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev,
+			 "%s Failed to enable encode components\n", __func__);
+		return ret;
+	}
+
+	/* configure buffering */
+	port->current_buffer.num = 1;
+	port->current_buffer.size = f->fmt.pix.sizeimage;
+	if (port->format.encoding == MMAL_ENCODING_JPEG) {
+		v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev,
+			 "JPG - buf size now %d was %d\n",
+			 f->fmt.pix.sizeimage,
+			 port->current_buffer.size);
+		port->current_buffer.size =
+		    (f->fmt.pix.sizeimage < (100 << 10)) ?
+		    (100 << 10) : f->fmt.pix.sizeimage;
+	}
+	v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev,
+		 "vid_cap - cur_buf.size set to %d\n", f->fmt.pix.sizeimage);
+	port->current_buffer.alignment = 0;
+
+	return 0;
+}
+
 static int mmal_setup_components(struct bm2835_mmal_dev *dev,
 				 struct v4l2_format *f)
 {
@@ -1147,100 +1235,9 @@ static int mmal_setup_components(struct bm2835_mmal_dev *dev,
 		dev->capture.port = NULL;
 	} else {
 		if (encode_component) {
-			v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev,
-				 "vid_cap - set up encode comp\n");
-
-			/* configure buffering */
-			camera_port->current_buffer.size =
-			    camera_port->recommended_buffer.size;
-			camera_port->current_buffer.num =
-			    camera_port->recommended_buffer.num;
-
-			ret =
-			    vchiq_mmal_port_connect_tunnel(
-					dev->instance,
-					camera_port,
-					&encode_component->input[0]);
-			if (ret) {
-				v4l2_dbg(1, bcm2835_v4l2_debug,
-					 &dev->v4l2_dev,
-					 "%s failed to create connection\n",
-					 __func__);
-				/* ensure capture is not going to be tried */
-				dev->capture.port = NULL;
-			} else {
-				port->es.video.width = f->fmt.pix.width;
-				port->es.video.height = f->fmt.pix.height;
-				port->es.video.crop.x = 0;
-				port->es.video.crop.y = 0;
-				port->es.video.crop.width = f->fmt.pix.width;
-				port->es.video.crop.height = f->fmt.pix.height;
-				port->es.video.frame_rate.num =
-					  dev->capture.timeperframe.denominator;
-				port->es.video.frame_rate.den =
-					  dev->capture.timeperframe.numerator;
-
-				port->format.encoding = mfmt->mmal;
-				port->format.encoding_variant = 0;
-				/* Set any encoding specific parameters */
-				switch (mfmt->mmal_component) {
-				case COMP_VIDEO_ENCODE:
-					port->format.bitrate =
-					    dev->capture.encode_bitrate;
-					break;
-				case COMP_IMAGE_ENCODE:
-					/* Could set EXIF parameters here */
-					break;
-				default:
-					break;
-				}
-				ret = vchiq_mmal_port_set_format(dev->instance,
-								 port);
-				if (ret)
-					v4l2_dbg(1, bcm2835_v4l2_debug,
-						 &dev->v4l2_dev,
-						 "%s failed to set format %dx%d fmt %08X\n",
-						 __func__,
-						 f->fmt.pix.width,
-						 f->fmt.pix.height,
-						 f->fmt.pix.pixelformat
-						 );
-			}
-
-			if (!ret) {
-				ret = vchiq_mmal_component_enable(
-						dev->instance,
-						encode_component);
-				if (ret) {
-					v4l2_dbg(1, bcm2835_v4l2_debug,
-						 &dev->v4l2_dev,
-						 "%s Failed to enable encode components\n",
-						 __func__);
-				}
-			}
-			if (!ret) {
-				/* configure buffering */
-				port->current_buffer.num = 1;
-				port->current_buffer.size =
-				    f->fmt.pix.sizeimage;
-				if (port->format.encoding ==
-				    MMAL_ENCODING_JPEG) {
-					v4l2_dbg(1, bcm2835_v4l2_debug,
-						 &dev->v4l2_dev,
-						 "JPG - buf size now %d was %d\n",
-						 f->fmt.pix.sizeimage,
-						 port->current_buffer.size);
-					port->current_buffer.size =
-					    (f->fmt.pix.sizeimage <
-					     (100 << 10)) ?
-					    (100 << 10) : f->fmt.pix.sizeimage;
-				}
-				v4l2_dbg(1, bcm2835_v4l2_debug,
-					 &dev->v4l2_dev,
-					 "vid_cap - cur_buf.size set to %d\n",
-					 f->fmt.pix.sizeimage);
-				port->current_buffer.alignment = 0;
-			}
+			ret = mmal_setup_encode_component(dev, f, port,
+							  camera_port,
+							  encode_component);
 		} else {
 			/* configure buffering */
 			camera_port->current_buffer.num = 1;
-- 
2.7.4


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
