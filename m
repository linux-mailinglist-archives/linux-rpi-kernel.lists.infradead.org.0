Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 170F3196D71
	for <lists+linux-rpi-kernel@lfdr.de>; Sun, 29 Mar 2020 14:45:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=RKXLp4/okaJDq3PHL1Eq75Ok0WnOhcde18k9ke9BK3I=; b=nzF1AXXanQzzp4Hd5oHUP8+Myw
	YbhSF4LjzhEMVrYcQaB6scwt9X/qzw87GXLki+DvsRY6kuYB0anDmozk44R26RxFINDto0peelrAv
	JuvlYPnYFg4lH1XKvID70K6cwN78zh002Izi6xCFZTwe3BUiHAsvTq7JoYYqoKid4WxWwF+4jBylQ
	ux7GlWdW15ztAf8vt581gCRSeHS2ekbEBELdbUV4awbwWtKAfel+v5u9aBX4dfEMdfvsgUt2kceBC
	8V+AiqvsJyFyNB7XluMu9So/F5fz5AyZGSOe5VAzGDvMX2hhsRU3sj5vEbiT+F26sJGPDFeiOp5i4
	bXFzmNWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIXJx-0001K7-KA; Sun, 29 Mar 2020 12:45:45 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIXJt-0001Gq-Lk
 for linux-rpi-kernel@lists.infradead.org; Sun, 29 Mar 2020 12:45:43 +0000
Received: from localhost.localdomain ([37.4.249.171]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MV5nC-1jkh4f2zdG-00S7cH; Sun, 29 Mar 2020 14:45:31 +0200
From: Stefan Wahren <stefan.wahren@i2se.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>
Subject: [PATCH 7/9] staging: bcm2835-camera: return early in
 mmal_setup_components
Date: Sun, 29 Mar 2020 14:44:59 +0200
Message-Id: <1585485901-10172-8-git-send-email-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1585485901-10172-1-git-send-email-stefan.wahren@i2se.com>
References: <1585485901-10172-1-git-send-email-stefan.wahren@i2se.com>
X-Provags-ID: V03:K1:1BfFYsTqmRUA5ksF99+FNCFtXj+7UT4rF/nmZHlpsqwKiIYXnsE
 lky6TODXtPNZG5AcEmNFB9aDeSfiQtmVWvThe26mPGPW1oGNbKiZz1xHhmMKPbjPzjjFk19
 erw+1OBqNC7ViFkoqfHxvSK6+K68U2K8QfnLzVTqTsc5E/BL50PPLP2dZdZV5J4T8ONHDq7
 zQBcdNk4gK/uDHPeCf0Sg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:C7tkbPwc6Do=:jep64MUNAqMPpyK6uuiHDx
 MV8XfEBmOA3mq8N6csfICybaGnAkVzxJGWZV+VsoNNyK0mdCq2/GxZ+H55utB/0bTSQqoUDz5
 8SB7m04L8rGtJcJ7wi+53NPqcd10GLa9KHc7vSZl6ffhOYSrInPIV5pi/lRIEiMCZ36rXMR0d
 woLEL25sIiKk8DUX/39Cc714Sqw9tEVm+FoeGhWTHQurtSH54UU2x9pJFJluovtVYwfzvwLU1
 f7WJQjdGfN3VXom+pNEiDI3QkOtuQBm23kWkfwgFSnAdg5+Eu/+mlf+x5MCbvoCkmeiGNrAXp
 gh9bSmiXyShlXRXQ1kxF4m4LgeDphrI2qp50mc4iEJgFxGwsgdXWFncGCOm2sJoA+54lZWkWD
 e60+S0tW7RmQGSNgBFmf/t+pYJVfMFlLGGskLbbgtaEhx2H4EfyuBl9PTei48hvU8t7vle3u5
 ao7ylqm748Ow988QJmg+x9aHOAXRKw8bpzML/KMZ6S6l9iwQNe+53Si0gP8NNof+yEGT+v8h9
 4Sh6clY5TSlx902MuHvcJxPr6lWBHyIPr3C2reST8zEQOvy3PaNagRrkYB0jifn/bzKzNfF3L
 SHhxkqPSwwvXVkYa1HIkNwmpc8vVPQwbqjW36IFhBKxJvJVEwXGCrLvDpvHt2w0YLGqLXc03j
 cd8QrAEDsT889Aa0st+H5RiRh8Fthrm++H1SmLcOTox1DjAPNEuR5hLyUvB766cmdIEH72ciV
 YrlmSdxLJ5443umECVgKOVVil7nqcWLjvufcgXOngFUqtG+akrC93Rh0EcYyOv+v4/PD2efEX
 wzrf6OyRZ37D+mmPRGODl6QpBuFs0wHGKRjUl5tI0TUxh2lDaDJWLHmG14rkRdH89ViedQv
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200329_054542_006768_566FF71B 
X-CRM114-Status: GOOD (  13.44  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
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

We can reduce the indentation in mmal_setup_components further by
returning early in error case.

Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
---
 .../vc04_services/bcm2835-camera/bcm2835-camera.c  | 60 +++++++++++-----------
 1 file changed, 31 insertions(+), 29 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
index f11f186..91f767f 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
@@ -1241,38 +1241,40 @@ static int mmal_setup_components(struct bm2835_mmal_dev *dev,
 			 f->fmt.pix.pixelformat);
 		/* ensure capture is not going to be tried */
 		dev->capture.port = NULL;
-	} else {
-		if (encode_component) {
-			ret = mmal_setup_encode_component(dev, f, port,
-							  camera_port,
-							  encode_component);
-		} else {
-			/* configure buffering */
-			camera_port->current_buffer.num = 1;
-			camera_port->current_buffer.size = f->fmt.pix.sizeimage;
-			camera_port->current_buffer.alignment = 0;
-		}
+		return ret;
+	}
 
-		if (!ret) {
-			dev->capture.fmt = mfmt;
-			dev->capture.stride = f->fmt.pix.bytesperline;
-			dev->capture.width = camera_port->es.video.crop.width;
-			dev->capture.height = camera_port->es.video.crop.height;
-			dev->capture.buffersize = port->current_buffer.size;
-
-			/* select port for capture */
-			dev->capture.port = port;
-			dev->capture.camera_port = camera_port;
-			dev->capture.encode_component = encode_component;
-			v4l2_dbg(1, bcm2835_v4l2_debug,
-				 &dev->v4l2_dev,
-				"Set dev->capture.fmt %08X, %dx%d, stride %d, size %d",
-				port->format.encoding,
-				dev->capture.width, dev->capture.height,
-				dev->capture.stride, dev->capture.buffersize);
-		}
+	if (encode_component) {
+		ret = mmal_setup_encode_component(dev, f, port,
+						  camera_port,
+						  encode_component);
+
+		if (ret)
+			return ret;
+	} else {
+		/* configure buffering */
+		camera_port->current_buffer.num = 1;
+		camera_port->current_buffer.size = f->fmt.pix.sizeimage;
+		camera_port->current_buffer.alignment = 0;
 	}
 
+	dev->capture.fmt = mfmt;
+	dev->capture.stride = f->fmt.pix.bytesperline;
+	dev->capture.width = camera_port->es.video.crop.width;
+	dev->capture.height = camera_port->es.video.crop.height;
+	dev->capture.buffersize = port->current_buffer.size;
+
+	/* select port for capture */
+	dev->capture.port = port;
+	dev->capture.camera_port = camera_port;
+	dev->capture.encode_component = encode_component;
+	v4l2_dbg(1, bcm2835_v4l2_debug,
+		 &dev->v4l2_dev,
+		"Set dev->capture.fmt %08X, %dx%d, stride %d, size %d",
+		port->format.encoding,
+		dev->capture.width, dev->capture.height,
+		dev->capture.stride, dev->capture.buffersize);
+
 	/* todo: Need to convert the vchiq/mmal error into a v4l2 error. */
 	return ret;
 }
-- 
2.7.4


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
