Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8E28196D7D
	for <lists+linux-rpi-kernel@lfdr.de>; Sun, 29 Mar 2020 14:46:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=bLu4A4RSJ/kO2lIvn2knnfnh0swclzBtk4d8iymaYdI=; b=XJHR9cztqV2kRFKpwz3HXu3rsH
	ChiBy3w09Q03MN44VF3p7iHoDYTkmpzJIez3s1MX1OqJbRS8TKimzkVPqE2RhXBk4knuMwfIRwb/K
	xNjm83Kxt7BFZkDUiCnGm3ZC6VJJm2YMFBlX/RBJW6PpAM8nR5EAKKEg46+uvjjweGR8LFdGx8IkG
	cmK0ug0C6XXFPS/uXoRajCdoV8KNHyNI5gBXHCr3LykTBgo09RNeIGtJwrrDqZq/zBtssN4bmfHeX
	5ot7BS6mlHelv0VWXmIiZXEPkuiD2hsMz8q0ZHtvAa3RNYPXol5IXmN/fECs+5TQendYDQDeGJvo0
	jPnqwD3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIXKF-0001aV-Ts; Sun, 29 Mar 2020 12:46:03 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIXJv-0001H6-EM
 for linux-rpi-kernel@lists.infradead.org; Sun, 29 Mar 2020 12:45:46 +0000
Received: from localhost.localdomain ([37.4.249.171]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MK3BO-1je3F61T3e-00LZ7J; Sun, 29 Mar 2020 14:45:30 +0200
From: Stefan Wahren <stefan.wahren@i2se.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>
Subject: [PATCH 3/9] staging: bcm2835-camera: Make struct indentation
 consistent
Date: Sun, 29 Mar 2020 14:44:55 +0200
Message-Id: <1585485901-10172-4-git-send-email-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1585485901-10172-1-git-send-email-stefan.wahren@i2se.com>
References: <1585485901-10172-1-git-send-email-stefan.wahren@i2se.com>
X-Provags-ID: V03:K1:xBj9t7XCysrXiaCq3yGVPlfAJw206rpq/WIX2QOTfE+krC5euyN
 3pIj4L5g2yZVMZI9JmbusR9EQguG/pHbUaTPwMsVZnzlkZFQTQojL+tAsyo07ZBxcKKnbJt
 ed1yIp5K5KWwJnAHZ1zt3saDz1OwTwgmTR865i2nrkUDukhC9nYBZ36NAYGhqnkexo/r8W+
 fH32Wn5vGdQa+JMvlSceQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:5IryfbChGpo=:txfn89T3ZDYtXRLB6yUjAb
 IANpDoC9fHC7kri2YAZI3pA+S/Hb+OnNQg4Cr5zUGLSk7WSjfGF5ClklssdEtNM4usf1B26MK
 Abdqizu1zYQrJ9jm2iPOieHZx8a5mZowhKY89NatR7Oq8PaTE8kTjJ0tBLY6Gxx+b3/uXyQLv
 7EijrsXB6E4jYI9Y567o3d6H6K06TmVvfOargai6DWqkB5x0W+BQtuw9kbmvM0BmYIezd0SvS
 oGDs0v/XgM9y8xsiCk5SwQU/sVl07pBCeolyTYAsO7hdVJDK5G6ClZNX5i2Qg7moF/lA69z8O
 hHHW+nDhOsnh/AtgZftihiSqYVpIu6cDbtJLvvUraBeTHhx7urj9CM5H1Js6KNQf8q9PgVAAb
 AXKqZw7icIXvyFF+RaIuoDUzO4VBcnmuoMYFNZ8ue+Fn9F0sSzht6oXTSjAIxnaDB3gIWRpFK
 5ODzlNruS6HfP7anCGjiuREzD9m496n/0YYS9jI69CAOiWUwrcbSIUrTv2wMnS6mdBPnNtajR
 bnLhYLsfb7z7Hn60T+8Zun+dd36otlETf++URSmST9gB/U3BihEgq26AQXsBM46Yeft+RAvkZ
 xwG7YLCUyxJ3pOo9qzOWehGWFnCwFu9BQ7GoFGODo5ugth08XoW6PRFPKPdueKj07nIptFccm
 Z6NC9oLPFgdXjKG47v+RpAkaSSDe6QVZpLh48LTQUDSM97HcoUI1iM/8Y/eV5Qajtib7JBn31
 CJPpaXebSslbXxGcxcDuNV+1YmbhvhAWHRPAbOHmhUSvIhQvpw4C9odbxIeSKAaUkxjj1e7DL
 GdxzbSyiOmljXv+ivxn6WyETNzt9GFdG0/iTA8GhQ7aZTOJeGYee0HbyW8lH4DgyubZSpBd
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200329_054543_820258_74DAB348 
X-CRM114-Status: GOOD (  15.04  )
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

The indentation of struct members wasn't consistent over the whole driver.

Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
---
 .../vc04_services/bcm2835-camera/bcm2835-camera.h  | 60 +++++++++++-----------
 .../vc04_services/bcm2835-camera/controls.c        |  4 +-
 .../vc04_services/bcm2835-camera/mmal-common.h     | 18 +++----
 .../vc04_services/bcm2835-camera/mmal-parameters.h | 14 ++---
 4 files changed, 48 insertions(+), 48 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.h b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.h
index c426a5c..75524ad 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.h
+++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.h
@@ -34,73 +34,73 @@ extern int bcm2835_v4l2_debug;
 
 struct bm2835_mmal_dev {
 	/* v4l2 devices */
-	struct v4l2_device     v4l2_dev;
-	struct video_device    vdev;
-	struct mutex           mutex;
+	struct v4l2_device v4l2_dev;
+	struct video_device vdev;
+	struct mutex mutex;
 
 	/* controls */
-	struct v4l2_ctrl_handler  ctrl_handler;
-	struct v4l2_ctrl          *ctrls[V4L2_CTRL_COUNT];
-	enum v4l2_scene_mode	  scene_mode;
-	struct mmal_colourfx      colourfx;
-	int                       hflip;
-	int                       vflip;
-	int			  red_gain;
-	int			  blue_gain;
+	struct v4l2_ctrl_handler ctrl_handler;
+	struct v4l2_ctrl *ctrls[V4L2_CTRL_COUNT];
+	enum v4l2_scene_mode scene_mode;
+	struct mmal_colourfx colourfx;
+	int hflip;
+	int vflip;
+	int red_gain;
+	int blue_gain;
 	enum mmal_parameter_exposuremode exposure_mode_user;
 	enum v4l2_exposure_auto_type exposure_mode_v4l2_user;
 	/* active exposure mode may differ if selected via a scene mode */
 	enum mmal_parameter_exposuremode exposure_mode_active;
 	enum mmal_parameter_exposuremeteringmode metering_mode;
-	unsigned int		  manual_shutter_speed;
-	bool			  exp_auto_priority;
+	unsigned int manual_shutter_speed;
+	bool exp_auto_priority;
 	bool manual_iso_enabled;
 	u32 iso;
 
 	/* allocated mmal instance and components */
-	struct vchiq_mmal_instance   *instance;
-	struct vchiq_mmal_component  *component[COMP_COUNT];
+	struct vchiq_mmal_instance *instance;
+	struct vchiq_mmal_component *component[COMP_COUNT];
 	int camera_use_count;
 
 	struct v4l2_window overlay;
 
 	struct {
-		unsigned int     width;  /* width */
-		unsigned int     height;  /* height */
-		unsigned int     stride;  /* stride */
-		unsigned int     buffersize; /* buffer size with padding */
-		struct mmal_fmt  *fmt;
+		unsigned int width;  /* width */
+		unsigned int height;  /* height */
+		unsigned int stride;  /* stride */
+		unsigned int buffersize; /* buffer size with padding */
+		struct mmal_fmt *fmt;
 		struct v4l2_fract timeperframe;
 
 		/* H264 encode bitrate */
-		int         encode_bitrate;
+		int encode_bitrate;
 		/* H264 bitrate mode. CBR/VBR */
-		int         encode_bitrate_mode;
+		int encode_bitrate_mode;
 		/* H264 profile */
 		enum v4l2_mpeg_video_h264_profile enc_profile;
 		/* H264 level */
 		enum v4l2_mpeg_video_h264_level enc_level;
 		/* JPEG Q-factor */
-		int         q_factor;
+		int q_factor;
 
-		struct vb2_queue	vb_vidq;
+		struct vb2_queue vb_vidq;
 
 		/* VC start timestamp for streaming */
-		s64         vc_start_timestamp;
+		s64 vc_start_timestamp;
 		/* Kernel start timestamp for streaming */
 		ktime_t kernel_start_ts;
 		/* Sequence number of last buffer */
-		u32		sequence;
+		u32 sequence;
 
-		struct vchiq_mmal_port  *port; /* port being used for capture */
+		struct vchiq_mmal_port *port; /* port being used for capture */
 		/* camera port being used for capture */
-		struct vchiq_mmal_port  *camera_port;
+		struct vchiq_mmal_port *camera_port;
 		/* component being used for encode */
 		struct vchiq_mmal_component *encode_component;
 		/* number of frames remaining which driver should capture */
-		unsigned int  frame_count;
+		unsigned int frame_count;
 		/* last frame completion */
-		struct completion  frame_cmplt;
+		struct completion frame_cmplt;
 
 	} capture;
 
diff --git a/drivers/staging/vc04_services/bcm2835-camera/controls.c b/drivers/staging/vc04_services/bcm2835-camera/controls.c
index 1d0caf4..275ff21 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/controls.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/controls.c
@@ -135,8 +135,8 @@ static const struct v4l2_to_mmal_effects_setting
 };
 
 struct v4l2_mmal_scene_config {
-	enum v4l2_scene_mode			v4l2_scene;
-	enum mmal_parameter_exposuremode	exposure_mode;
+	enum v4l2_scene_mode v4l2_scene;
+	enum mmal_parameter_exposuremode exposure_mode;
 	enum mmal_parameter_exposuremeteringmode metering_mode;
 };
 
diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-common.h b/drivers/staging/vc04_services/bcm2835-camera/mmal-common.h
index ff53987..ce88fac 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/mmal-common.h
+++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-common.h
@@ -26,13 +26,13 @@ struct mmal_msg_context;
 
 /* mapping between v4l and mmal video modes */
 struct mmal_fmt {
-	u32   fourcc;          /* v4l2 format id */
-	int   flags;           /* v4l2 flags field */
-	u32   mmal;
-	int   depth;
-	u32   mmal_component;  /* MMAL component index to be used to encode */
-	u32   ybbp;            /* depth of first Y plane for planar formats */
-	bool  remove_padding;  /* Does the GPU have to remove padding,
+	u32 fourcc;          /* v4l2 format id */
+	int flags;           /* v4l2 flags field */
+	u32 mmal;
+	int depth;
+	u32 mmal_component;  /* MMAL component index to be used to encode */
+	u32 ybbp;            /* depth of first Y plane for planar formats */
+	bool remove_padding;   /* Does the GPU have to remove padding,
 				* or can we do hide padding via bytesperline.
 				*/
 };
@@ -40,10 +40,10 @@ struct mmal_fmt {
 /* buffer for one video frame */
 struct mmal_buffer {
 	/* v4l buffer data -- must be first */
-	struct vb2_v4l2_buffer	vb;
+	struct vb2_v4l2_buffer vb;
 
 	/* list of buffers available */
-	struct list_head	list;
+	struct list_head list;
 
 	void *buffer; /* buffer pointer */
 	unsigned long buffer_size; /* size of allocated buffer */
diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-parameters.h b/drivers/staging/vc04_services/bcm2835-camera/mmal-parameters.h
index 80a9912..f4ac5a6 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/mmal-parameters.h
+++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-parameters.h
@@ -724,11 +724,11 @@ struct mmal_parameter_imagefx_parameters {
 #define MMAL_PARAMETER_CAMERA_INFO_MAX_STR_LEN 16
 
 struct mmal_parameter_camera_info_camera_t {
-	u32    port_id;
-	u32    max_width;
-	u32    max_height;
-	u32    lens_present;
-	u8     camera_name[MMAL_PARAMETER_CAMERA_INFO_MAX_STR_LEN];
+	u32 port_id;
+	u32 max_width;
+	u32 max_height;
+	u32 lens_present;
+	u8 camera_name[MMAL_PARAMETER_CAMERA_INFO_MAX_STR_LEN];
 };
 
 enum mmal_parameter_camera_info_flash_type_t {
@@ -744,8 +744,8 @@ struct mmal_parameter_camera_info_flash_t {
 };
 
 struct mmal_parameter_camera_info_t {
-	u32                            num_cameras;
-	u32                            num_flashes;
+	u32 num_cameras;
+	u32 num_flashes;
 	struct mmal_parameter_camera_info_camera_t
 				cameras[MMAL_PARAMETER_CAMERA_INFO_MAX_CAMERAS];
 	struct mmal_parameter_camera_info_flash_t
-- 
2.7.4


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
