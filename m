Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 733F0196D7E
	for <lists+linux-rpi-kernel@lfdr.de>; Sun, 29 Mar 2020 14:46:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=0wWplCmf4Y64XYBr43FmrrzzexRpRah8jXAYiTGCVFs=; b=A302nkZGjCCd3dk/ZYF5mpx98l
	nOoW7zt6ilp9ycxO/OlS/c+51ny0phiw9z7WVh3coO5BWIZevKpu+UqVBQc9yClteAODvyustiGZW
	LHVTHHc6NujJosgBN7O3ffOXEJNRAIBRJQG2LqK21S3004XXILVoULLxDG69qw/lVI62O9w2Yszxo
	uT5HwF7KXer2NEnNyIbKRfXC4G8UykTdko8YToKzDGnli7Nbb/CiXs+B5yKEFs/eQMDcxemG4QQh5
	yqHqbecVseN6gGcjRrOFiAHngZx5lFTNV0Nfi0CO1+/hnquT1JWhz+96LLKnpEDqPC6li1NMtNHmY
	/fcFxhPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIXJz-0001Le-DU; Sun, 29 Mar 2020 12:45:47 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIXJt-0001HA-Ui
 for linux-rpi-kernel@lists.infradead.org; Sun, 29 Mar 2020 12:45:45 +0000
Received: from localhost.localdomain ([37.4.249.171]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MjjSt-1iv3SK1ajz-00lARI; Sun, 29 Mar 2020 14:45:31 +0200
From: Stefan Wahren <stefan.wahren@i2se.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>
Subject: [PATCH 6/9] staging: bcm2835-camera: Move video component setup in
 its own function
Date: Sun, 29 Mar 2020 14:44:58 +0200
Message-Id: <1585485901-10172-7-git-send-email-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1585485901-10172-1-git-send-email-stefan.wahren@i2se.com>
References: <1585485901-10172-1-git-send-email-stefan.wahren@i2se.com>
X-Provags-ID: V03:K1:YzhSUifo50CR1hBK/+wUQhJWgExviyaIT5RNl1tetz71hDkYwq8
 +ylCG90HZ1NJj+LzT/zoaIbD1RrRBIT5GQRuCUJhTjy8Z7C7fptFYTIrRQOVfjx7/cQe2el
 a+WahJAITBIYjNNpiTILMwVz1JlUlh4mD4gX/cojX5cwn7N3MCI+/MunYvQLQwLnoLrJ7jT
 jBVAvhRd45Knlm10T8EVw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:7MgRRIrwdBM=:v5BCaDmqtDFPGVdR5zfjE4
 vZuDdHMzv5kTZP9+o5r0U/unyHPQ81hgjBVap5bn/zzN9TNyqs7pVppGz6mM0IvrGij9ueTjy
 YFz5ik7mmv+orU4bMDDzRX6hqrysLsR7O6bVLgHTYnsQcPjZC8vgXzsVRUbit4mfj46ok3mhX
 KGq/Tu3CaDYy0xnN1EL+T4KYRgx86ziab3aq+ovjTb9DV+FXHEaaICle3MNMTtPfAqDx4rqeF
 hQEY+fpLvnHZ25QtNB8y0J4frf3qOTSv6pKPA0qJIRYbtP2GTvBTqLbIrbjp43awC68XKSwUs
 quvxVqLb+uZV9vuAtQuJVfymncCJ6NSZgZ0L40N/Bam7YxzjoKOYEJ0GYjg146dLbdnto4khU
 vAxQdHEvx56CjlWypJwdHcaY0uSBNsuNCffYXLHb2yl6em9a+payml7GVy2KN+dEOMHrWyKP6
 do4mAyj3h/Mc6+ethT6dL/XUlz3yXX+3pyGkgAmtqMo1nmiLuGwFfUnmj79h4HYdHs8iwa+gf
 H79Ry/90N74cyAyUpxfSk49PDfcbVlgH6mjtgKX6RBWCyyymzzJh5PRSKvyUOPuVYQAgbOcc1
 MWUF2NKEP0gZCo9YF3DBHPDKMu9/l43snZtAaF6uRNn/HS4v0nuW5jsfGYRTJNBYIwpTjY+4G
 +GUepsbWJohgoR5SIMRSBJwR40MYYBp5LlThUdd1D+nlUY3O/a0ik/RU12vWKWLJIPi5WBNeE
 ycEzhMmZzIHeg8hjoQKjXoWuC/VrYJymokAXZN2tQXVGTK1TkfiNyjiRA3CemptAFavwSaJpu
 ner53QzEtbeuhhiOIR7rAnLgfFFXGLOexOELxyaMjE5GxhkjkAmQDdvX/SIgrINkgLA8rvX
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200329_054542_297598_D5B5EA24 
X-CRM114-Status: GOOD (  14.10  )
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

The function mmal_setup_components has to many indention levels. So move
the setup code for video component in its own function.

Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
---
 .../vc04_services/bcm2835-camera/bcm2835-camera.c  | 88 ++++++++++++----------
 1 file changed, 48 insertions(+), 40 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
index f101918..f11f186 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
@@ -1001,6 +1001,53 @@ static int vidioc_try_fmt_vid_cap(struct file *file, void *priv,
 	return 0;
 }
 
+
+static int mmal_setup_video_component(struct bm2835_mmal_dev *dev,
+				      struct v4l2_format *f)
+{
+	bool overlay_enabled = !!dev->component[COMP_PREVIEW]->enabled;
+	struct vchiq_mmal_port *preview_port;
+	int ret;
+
+	preview_port = &dev->component[COMP_CAMERA]->output[CAM_PORT_PREVIEW];
+
+	/* Preview and encode ports need to match on resolution */
+	if (overlay_enabled) {
+		/* Need to disable the overlay before we can update
+		 * the resolution
+		 */
+		ret = vchiq_mmal_port_disable(dev->instance, preview_port);
+		if (!ret) {
+			ret = vchiq_mmal_port_connect_tunnel(dev->instance,
+							     preview_port,
+							     NULL);
+		}
+	}
+	preview_port->es.video.width = f->fmt.pix.width;
+	preview_port->es.video.height = f->fmt.pix.height;
+	preview_port->es.video.crop.x = 0;
+	preview_port->es.video.crop.y = 0;
+	preview_port->es.video.crop.width = f->fmt.pix.width;
+	preview_port->es.video.crop.height = f->fmt.pix.height;
+	preview_port->es.video.frame_rate.num =
+				  dev->capture.timeperframe.denominator;
+	preview_port->es.video.frame_rate.den =
+				  dev->capture.timeperframe.numerator;
+	ret = vchiq_mmal_port_set_format(dev->instance, preview_port);
+
+	if (overlay_enabled) {
+		ret = vchiq_mmal_port_connect_tunnel(dev->instance,
+				preview_port,
+				&dev->component[COMP_PREVIEW]->input[0]);
+		if (ret)
+			return ret;
+
+		ret = vchiq_mmal_port_enable(dev->instance, preview_port, NULL);
+	}
+
+	return ret;
+}
+
 static int mmal_setup_encode_component(struct bm2835_mmal_dev *dev,
 				       struct v4l2_format *f,
 				       struct vchiq_mmal_port *port,
@@ -1184,46 +1231,7 @@ static int mmal_setup_components(struct bm2835_mmal_dev *dev,
 	if (!ret &&
 	    camera_port ==
 	    &dev->component[COMP_CAMERA]->output[CAM_PORT_VIDEO]) {
-		bool overlay_enabled =
-		    !!dev->component[COMP_PREVIEW]->enabled;
-		struct vchiq_mmal_port *preview_port =
-		    &dev->component[COMP_CAMERA]->output[CAM_PORT_PREVIEW];
-		/* Preview and encode ports need to match on resolution */
-		if (overlay_enabled) {
-			/* Need to disable the overlay before we can update
-			 * the resolution
-			 */
-			ret =
-			    vchiq_mmal_port_disable(dev->instance,
-						    preview_port);
-			if (!ret)
-				ret =
-				    vchiq_mmal_port_connect_tunnel(
-						dev->instance,
-						preview_port,
-						NULL);
-		}
-		preview_port->es.video.width = f->fmt.pix.width;
-		preview_port->es.video.height = f->fmt.pix.height;
-		preview_port->es.video.crop.x = 0;
-		preview_port->es.video.crop.y = 0;
-		preview_port->es.video.crop.width = f->fmt.pix.width;
-		preview_port->es.video.crop.height = f->fmt.pix.height;
-		preview_port->es.video.frame_rate.num =
-					  dev->capture.timeperframe.denominator;
-		preview_port->es.video.frame_rate.den =
-					  dev->capture.timeperframe.numerator;
-		ret = vchiq_mmal_port_set_format(dev->instance, preview_port);
-		if (overlay_enabled) {
-			ret = vchiq_mmal_port_connect_tunnel(
-				dev->instance,
-				preview_port,
-				&dev->component[COMP_PREVIEW]->input[0]);
-			if (!ret)
-				ret = vchiq_mmal_port_enable(dev->instance,
-							     preview_port,
-							     NULL);
-		}
+		ret = mmal_setup_video_component(dev, f);
 	}
 
 	if (ret) {
-- 
2.7.4


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
