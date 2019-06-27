Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B85A58A86
	for <lists+linux-rpi-kernel@lfdr.de>; Thu, 27 Jun 2019 21:01:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=CCFfycQFfzZxSJABpvzTKv75Cj2KUoeC0XF71zDcYs0=; b=W1KivlMUMyrIvykci1Y2D5rucg
	NeSJbkh5SDqz3vq1bw6fuYx4ouTFiVQEmLqWU3uNPjTkbejVHzhRW70kB2EGflajWx0cvJXX8xRqg
	4ZSRprEzl/+/Y6ED/m4CJvyyfFAZ0GNkhHMi/53+CxQmwqSNBsbGU9PmfVmRtGjzonUE2aBuGVVDn
	5xD7mBwmlM0/zdX9MW0xiA8cFNHDpLZA6eD+E0bE5egl++Z7ceUZuDNLfbp/h1mDJs2Ky79YVOMO9
	QnSnf3IG7MMnjydUsArAnzRbL5qI/HWqwNJQBJMG/UYRz0LL5UFherl19ftULBSOvJrzemb/uOQQ8
	lzPC+h8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgZdl-0006NZ-Nd; Thu, 27 Jun 2019 19:01:01 +0000
Received: from mout.gmx.net ([212.227.15.18])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgZZu-0002Rt-1x; Thu, 27 Jun 2019 18:57:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1561661812;
 bh=+Xoux4+s4j5YfHj784XnN033ix9y/7uzXcLlI87QcTo=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=LH7hBHfikip12OU8QBcgEgaszTr76HWc/YfwfJTo8NpxtrAXcKFLBLVxtzAyrvLaP
 OAdtZzE3UOjwcNADnR/l/mXCDFhM9yBahX8IqFab1cG7lPsDMjPijDaHbjsGBdUQXV
 ERSq1NiGDWfsA9Yid2SRHOS22zyz8CEfGHOHIy7c=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.111]) by mail.gmx.com
 (mrgmx002 [212.227.17.190]) with ESMTPSA (Nemesis) id
 0M7pI0-1iT9ut2oPA-00vPw3; Thu, 27 Jun 2019 20:56:51 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH 08/31] staging: bcm2835-camera: Fix comment style violations.
Date: Thu, 27 Jun 2019 20:56:05 +0200
Message-Id: <1561661788-22744-9-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561661788-22744-1-git-send-email-wahrenst@gmx.net>
References: <1561661788-22744-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:HEIL2nbb9HRBO7L+QEOZBb9r1MTTwvhZ8lsCOlo/UHeE06nJqom
 /84bxrXMVRe7icOufelWDT1CGontoXgBUUkj/1v4jai6X3z0VMoosMkMd+Okz9p2W/dJkt3
 wz530L++YdwuiIZlUE50dGKSYjtG++VyjcHI+ZYHejc3MFyQtwBP88eRpMlwbhYla2lmUcz
 YZ+O6p3GaKjWKKkME9AVg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:pCyntWeZ/Rs=:bD1ZYN2h0bkABXGfLFMfL5
 bn5OwUMgv+Jb8BOYLmM+e1Op5C7q8oiqP5Pgb0JDDN2m8FJ8bexYqTtiAOqDAr7NREha8C05T
 I+2T68F7m0xYpqkQxGwo0rhstC7fofKnTP5V9iA68UIOWnqmMAKdIUlS7pF2d7yk+0UpQPWrm
 q3XpTK/ro7sbR7b3G1GSHIVZuBpu9HLEdZLwqa0KBGIlm95j8AHSmFzBI7dfA0OvHrd0OMPxF
 iGtkm7uWkjCGJHUjprT6TS5jdzzXGi9w1BvY1K5t/c2UF02GunccdAQSGzFDuLxBWZHIKdNL9
 n6Np7kcsPTz91OfHkXqblRIwbobFcslDHayisWo+SPkslxL4YoflGtsDtXr7f+3CjPFaLC0a3
 licLyi63RoMUIWYrIbhgM9XaVaKQ/DdKAzWqLLuZRO9Davii+GO3ucZCoMXGJ6PBY4/uSPV0b
 PRRKsmreOxx23EOylCP/HJwd2nd5M998EaRyS52trSqVfmq8TdDO5cO4K2355FVFAyhTOpMjy
 JwOiCv8eIsrt07sF4Ev3mElQ+bkPU6t0AX/l3fEWcaUqyvcaDT5Ghggtuquz4+C7XuVDIiQmQ
 1OWxU64525L33D1675ZupypOi07FvrT1bVHRCoUmVXPCtjI8fFoYuSJsw1isDD6vPNahnc8DK
 nUmT315NYdidWo2T5sxhc+4BcpVm0YkCuT2iBq+laBDXzSMOT3I3jdHN0CiWaog3U1X+Nh6YU
 741nEqABhg4xRc8d/KD8c+DFof8fvst7dKUHsdrLgdYiazGbeAraIjfIhQX3ohurNZ5XlTR45
 DMmO1m8Y3RH6AQdCIbUzanbNOjIIuPpgajG0nPyTNRV6h3ELQWIiJejMZJe6H6DzkbR5q6jJu
 wXvWCWbMZAEJTy8Y3pxPdK9seyOd0HoKmsagFQ/7YnqiImz8VFkszwfZGHXqCSTvYaJ9GKm8j
 TwgDjGjaWWoC9p2TPmzuoIhh9qtKMNwWLRjrTfc0tlYa73ww6J+LYPZ3Ps7ve/c/kPEwytUnA
 l+t3G/v7lvpMH6dZGTe2E6ursYnSer+7iIyo72cDceGKk6vjD4awTLwsK7mpd9R56hlumIeHC
 +kBohx6MgWMbrs=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_115702_569070_765CAE16 
X-CRM114-Status: GOOD (  17.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.18 listed in list.dnswl.org]
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

Fix comment style violations in the header files.

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.org>
---
 .../vc04_services/bcm2835-camera/mmal-msg-format.h |  95 ++++++++-------
 .../vc04_services/bcm2835-camera/mmal-msg-port.h   | 124 +++++++++----------
 .../vc04_services/bcm2835-camera/mmal-msg.h        | 135 +++++++++++----------
 3 files changed, 185 insertions(+), 169 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-msg-format.h b/drivers/staging/vc04_services/bcm2835-camera/mmal-msg-format.h
index 5ea1a1b..a118efd 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/mmal-msg-format.h
+++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-msg-format.h
@@ -19,22 +19,23 @@
 /* MMAL_ES_FORMAT_T */

 struct mmal_audio_format {
-	u32 channels;           /**< Number of audio channels */
-	u32 sample_rate;        /**< Sample rate */
+	u32 channels;		/* Number of audio channels */
+	u32 sample_rate;	/* Sample rate */

-	u32 bits_per_sample;    /**< Bits per sample */
-	u32 block_align;        /**< Size of a block of data */
+	u32 bits_per_sample;	/* Bits per sample */
+	u32 block_align;	/* Size of a block of data */
 };

 struct mmal_video_format {
-	u32 width;        /**< Width of frame in pixels */
-	u32 height;       /**< Height of frame in rows of pixels */
-	struct mmal_rect crop;         /**< Visible region of the frame */
-	struct mmal_rational frame_rate;   /**< Frame rate */
-	struct mmal_rational par;          /**< Pixel aspect ratio */
-
-	/* FourCC specifying the color space of the video stream. See the
-	 * \ref MmalColorSpace "pre-defined color spaces" for some examples.
+	u32 width;		/* Width of frame in pixels */
+	u32 height;		/* Height of frame in rows of pixels */
+	struct mmal_rect crop;	/* Visible region of the frame */
+	struct mmal_rational frame_rate;	/* Frame rate */
+	struct mmal_rational par;		/* Pixel aspect ratio */
+
+	/*
+	 * FourCC specifying the color space of the video stream. See the
+	 * MmalColorSpace "pre-defined color spaces" for some examples.
 	 */
 	u32 color_space;
 };
@@ -50,48 +51,56 @@ union mmal_es_specific_format {
 	struct mmal_subpicture_format subpicture;
 };

-/** Definition of an elementary stream format (MMAL_ES_FORMAT_T) */
+/* Definition of an elementary stream format (MMAL_ES_FORMAT_T) */
 struct mmal_es_format_local {
-	u32 type;      /* enum mmal_es_type */
-
-	u32 encoding;  /* FourCC specifying encoding of the elementary stream.*/
-	u32 encoding_variant; /* FourCC specifying the specific
-			       * encoding variant of the elementary
-			       * stream.
-			       */
-
-	union mmal_es_specific_format *es;  /* Type specific
-					     * information for the
-					     * elementary stream
-					     */
-
-	u32 bitrate;        /**< Bitrate in bits per second */
-	u32 flags; /**< Flags describing properties of the elementary stream. */
-
-	u32 extradata_size;       /**< Size of the codec specific data */
-	u8  *extradata;           /**< Codec specific data */
+	u32 type;	/* enum mmal_es_type */
+
+	u32 encoding;	/* FourCC specifying encoding of the elementary
+			 * stream.
+			 */
+	u32 encoding_variant;	/* FourCC specifying the specific
+				 * encoding variant of the elementary
+				 * stream.
+				 */
+
+	union mmal_es_specific_format *es;	/* Type specific
+						 * information for the
+						 * elementary stream
+						 */
+
+	u32 bitrate;	/* Bitrate in bits per second */
+	u32 flags;	/* Flags describing properties of the elementary
+			 * stream.
+			 */
+
+	u32 extradata_size;	/* Size of the codec specific data */
+	u8  *extradata;		/* Codec specific data */
 };

-/** Remote definition of an elementary stream format (MMAL_ES_FORMAT_T) */
+/* Remote definition of an elementary stream format (MMAL_ES_FORMAT_T) */
 struct mmal_es_format {
-	u32 type;      /* enum mmal_es_type */
+	u32 type;	/* enum mmal_es_type */

-	u32 encoding;  /* FourCC specifying encoding of the elementary stream.*/
-	u32 encoding_variant; /* FourCC specifying the specific
-			       * encoding variant of the elementary
-			       * stream.
-			       */
+	u32 encoding;	/* FourCC specifying encoding of the elementary
+			 * stream.
+			 */
+	u32 encoding_variant;	/* FourCC specifying the specific
+				 * encoding variant of the elementary
+				 * stream.
+				 */

-	u32 es; /* Type specific
+	u32 es;	/* Type specific
 		 * information for the
 		 * elementary stream
 		 */

-	u32 bitrate;        /**< Bitrate in bits per second */
-	u32 flags; /**< Flags describing properties of the elementary stream. */
+	u32 bitrate;	/* Bitrate in bits per second */
+	u32 flags;	/* Flags describing properties of the elementary
+			 * stream.
+			 */

-	u32 extradata_size;       /**< Size of the codec specific data */
-	u32 extradata;           /**< Codec specific data */
+	u32 extradata_size;	/* Size of the codec specific data */
+	u32 extradata;		/* Codec specific data */
 };

 #endif /* MMAL_MSG_FORMAT_H */
diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-msg-port.h b/drivers/staging/vc04_services/bcm2835-camera/mmal-msg-port.h
index fe5768d..3fa3f2a 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/mmal-msg-port.h
+++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-msg-port.h
@@ -13,28 +13,31 @@

 /* MMAL_PORT_TYPE_T */
 enum mmal_port_type {
-	MMAL_PORT_TYPE_UNKNOWN = 0,  /**< Unknown port type */
-	MMAL_PORT_TYPE_CONTROL,      /**< Control port */
-	MMAL_PORT_TYPE_INPUT,        /**< Input port */
-	MMAL_PORT_TYPE_OUTPUT,       /**< Output port */
-	MMAL_PORT_TYPE_CLOCK,        /**< Clock port */
+	MMAL_PORT_TYPE_UNKNOWN = 0,	/* Unknown port type */
+	MMAL_PORT_TYPE_CONTROL,		/* Control port */
+	MMAL_PORT_TYPE_INPUT,		/* Input port */
+	MMAL_PORT_TYPE_OUTPUT,		/* Output port */
+	MMAL_PORT_TYPE_CLOCK,		/* Clock port */
 };

-/** The port is pass-through and doesn't need buffer headers allocated */
+/* The port is pass-through and doesn't need buffer headers allocated */
 #define MMAL_PORT_CAPABILITY_PASSTHROUGH                       0x01
-/** The port wants to allocate the buffer payloads.
+/*
+ *The port wants to allocate the buffer payloads.
  * This signals a preference that payload allocation should be done
  * on this port for efficiency reasons.
  */
 #define MMAL_PORT_CAPABILITY_ALLOCATION                        0x02
-/** The port supports format change events.
+/*
+ * The port supports format change events.
  * This applies to input ports and is used to let the client know
  * whether the port supports being reconfigured via a format
  * change event (i.e. without having to disable the port).
  */
 #define MMAL_PORT_CAPABILITY_SUPPORTS_EVENT_FORMAT_CHANGE      0x04

-/* mmal port structure (MMAL_PORT_T)
+/*
+ * mmal port structure (MMAL_PORT_T)
  *
  * most elements are informational only, the pointer values for
  * interogation messages are generally provided as additional
@@ -42,50 +45,50 @@ enum mmal_port_type {
  * buffer_num, buffer_size and userdata parameters are writable.
  */
 struct mmal_port {
-	u32 priv; /* Private member used by the framework */
-	u32 name; /* Port name. Used for debugging purposes (RO) */
-
-	u32 type;      /* Type of the port (RO) enum mmal_port_type */
-	u16 index;     /* Index of the port in its type list (RO) */
-	u16 index_all; /* Index of the port in the list of all ports (RO) */
-
-	u32 is_enabled; /* Indicates whether the port is enabled or not (RO) */
-	u32 format; /* Format of the elementary stream */
-
-	u32 buffer_num_min; /* Minimum number of buffers the port
-			     *   requires (RO).  This is set by the
-			     *   component.
-			     */
-
-	u32 buffer_size_min; /* Minimum size of buffers the port
-			      * requires (RO).  This is set by the
-			      * component.
-			      */
-
-	u32 buffer_alignment_min; /* Minimum alignment requirement for
-				   * the buffers (RO).  A value of
-				   * zero means no special alignment
-				   * requirements.  This is set by the
-				   * component.
-				   */
-
-	u32 buffer_num_recommended;  /* Number of buffers the port
-				      * recommends for optimal
-				      * performance (RO).  A value of
-				      * zero means no special
-				      * recommendation.  This is set
-				      * by the component.
-				      */
-
-	u32 buffer_size_recommended; /* Size of buffers the port
-				      * recommends for optimal
-				      * performance (RO).  A value of
-				      * zero means no special
-				      * recommendation.  This is set
-				      * by the component.
-				      */
-
-	u32 buffer_num; /* Actual number of buffers the port will use.
+	u32 priv;	/* Private member used by the framework */
+	u32 name;	/* Port name. Used for debugging purposes (RO) */
+
+	u32 type;	/* Type of the port (RO) enum mmal_port_type */
+	u16 index;	/* Index of the port in its type list (RO) */
+	u16 index_all;	/* Index of the port in the list of all ports (RO) */
+
+	u32 is_enabled;	/* Indicates whether the port is enabled or not (RO) */
+	u32 format;	/* Format of the elementary stream */
+
+	u32 buffer_num_min;	/* Minimum number of buffers the port
+				 *   requires (RO).  This is set by the
+				 *   component.
+				 */
+
+	u32 buffer_size_min;	/* Minimum size of buffers the port
+				 * requires (RO).  This is set by the
+				 * component.
+				 */
+
+	u32 buffer_alignment_min;/* Minimum alignment requirement for
+				  * the buffers (RO).  A value of
+				  * zero means no special alignment
+				  * requirements.  This is set by the
+				  * component.
+				  */
+
+	u32 buffer_num_recommended;	/* Number of buffers the port
+					 * recommends for optimal
+					 * performance (RO).  A value of
+					 * zero means no special
+					 * recommendation.  This is set
+					 * by the component.
+					 */
+
+	u32 buffer_size_recommended;	/* Size of buffers the port
+					 * recommends for optimal
+					 * performance (RO).  A value of
+					 * zero means no special
+					 * recommendation.  This is set
+					 * by the component.
+					 */
+
+	u32 buffer_num;	/* Actual number of buffers the port will use.
 			 * This is set by the client.
 			 */

@@ -94,14 +97,13 @@ struct mmal_port {
 			  * the client.
 			  */

-	u32 component; /* Component this port belongs to (Read Only) */
-
-	u32 userdata; /* Field reserved for use by the client */
+	u32 component;	/* Component this port belongs to (Read Only) */

-	u32 capabilities; /* Flags describing the capabilities of a
-			   * port (RO).  Bitwise combination of \ref
-			   * portcapabilities "Port capabilities"
-			   * values.
-			   */
+	u32 userdata;	/* Field reserved for use by the client */

+	u32 capabilities;	/* Flags describing the capabilities of a
+				 * port (RO).  Bitwise combination of \ref
+				 * portcapabilities "Port capabilities"
+				 * values.
+				 */
 };
diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h b/drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h
index 332de57..f165ddf 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h
+++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h
@@ -11,7 +11,8 @@
  *          Luke Diamand @ Broadcom
  */

-/* all the data structures which serialise the MMAL protocol. note
+/*
+ * all the data structures which serialise the MMAL protocol. note
  * these are directly mapped onto the recived message data.
  *
  * BEWARE: They seem to *assume* pointers are u32 and that there is no
@@ -41,51 +42,51 @@ enum mmal_msg_type {
 	MMAL_MSG_TYPE_SERVICE_CLOSED,
 	MMAL_MSG_TYPE_GET_VERSION,
 	MMAL_MSG_TYPE_COMPONENT_CREATE,
-	MMAL_MSG_TYPE_COMPONENT_DESTROY, /* 5 */
+	MMAL_MSG_TYPE_COMPONENT_DESTROY,	/* 5 */
 	MMAL_MSG_TYPE_COMPONENT_ENABLE,
 	MMAL_MSG_TYPE_COMPONENT_DISABLE,
 	MMAL_MSG_TYPE_PORT_INFO_GET,
 	MMAL_MSG_TYPE_PORT_INFO_SET,
-	MMAL_MSG_TYPE_PORT_ACTION, /* 10 */
+	MMAL_MSG_TYPE_PORT_ACTION,		/* 10 */
 	MMAL_MSG_TYPE_BUFFER_FROM_HOST,
 	MMAL_MSG_TYPE_BUFFER_TO_HOST,
 	MMAL_MSG_TYPE_GET_STATS,
 	MMAL_MSG_TYPE_PORT_PARAMETER_SET,
-	MMAL_MSG_TYPE_PORT_PARAMETER_GET, /* 15 */
+	MMAL_MSG_TYPE_PORT_PARAMETER_GET,	/* 15 */
 	MMAL_MSG_TYPE_EVENT_TO_HOST,
 	MMAL_MSG_TYPE_GET_CORE_STATS_FOR_PORT,
 	MMAL_MSG_TYPE_OPAQUE_ALLOCATOR,
 	MMAL_MSG_TYPE_CONSUME_MEM,
-	MMAL_MSG_TYPE_LMK, /* 20 */
+	MMAL_MSG_TYPE_LMK,			/* 20 */
 	MMAL_MSG_TYPE_OPAQUE_ALLOCATOR_DESC,
 	MMAL_MSG_TYPE_DRM_GET_LHS32,
 	MMAL_MSG_TYPE_DRM_GET_TIME,
 	MMAL_MSG_TYPE_BUFFER_FROM_HOST_ZEROLEN,
-	MMAL_MSG_TYPE_PORT_FLUSH, /* 25 */
+	MMAL_MSG_TYPE_PORT_FLUSH,		/* 25 */
 	MMAL_MSG_TYPE_HOST_LOG,
 	MMAL_MSG_TYPE_MSG_LAST
 };

 /* port action request messages differ depending on the action type */
 enum mmal_msg_port_action_type {
-	MMAL_MSG_PORT_ACTION_TYPE_UNKNOWN = 0,      /* Unknown action */
-	MMAL_MSG_PORT_ACTION_TYPE_ENABLE,           /* Enable a port */
-	MMAL_MSG_PORT_ACTION_TYPE_DISABLE,          /* Disable a port */
-	MMAL_MSG_PORT_ACTION_TYPE_FLUSH,            /* Flush a port */
-	MMAL_MSG_PORT_ACTION_TYPE_CONNECT,          /* Connect ports */
-	MMAL_MSG_PORT_ACTION_TYPE_DISCONNECT,       /* Disconnect ports */
+	MMAL_MSG_PORT_ACTION_TYPE_UNKNOWN = 0,	/* Unknown action */
+	MMAL_MSG_PORT_ACTION_TYPE_ENABLE,	/* Enable a port */
+	MMAL_MSG_PORT_ACTION_TYPE_DISABLE,	/* Disable a port */
+	MMAL_MSG_PORT_ACTION_TYPE_FLUSH,	/* Flush a port */
+	MMAL_MSG_PORT_ACTION_TYPE_CONNECT,	/* Connect ports */
+	MMAL_MSG_PORT_ACTION_TYPE_DISCONNECT,	/* Disconnect ports */
 	MMAL_MSG_PORT_ACTION_TYPE_SET_REQUIREMENTS, /* Set buffer requirements*/
 };

 struct mmal_msg_header {
 	u32 magic;
-	u32 type; /** enum mmal_msg_type */
+	u32 type;	/* enum mmal_msg_type */

 	/* Opaque handle to the control service */
 	u32 control_service;

-	u32 context; /** a u32 per message context */
-	u32 status; /** The status of the vchiq operation */
+	u32 context;	/* a u32 per message context */
+	u32 status;	/* The status of the vchiq operation */
 	u32 padding;
 };

@@ -99,9 +100,9 @@ struct mmal_msg_version {

 /* request to VC to create component */
 struct mmal_msg_component_create {
-	u32 client_component; /* component context */
+	u32 client_component;	/* component context */
 	char name[128];
-	u32 pid;                /* For debug */
+	u32 pid;		/* For debug */
 };

 /* reply from VC to component creation request */
@@ -121,7 +122,7 @@ struct mmal_msg_component_destroy {
 };

 struct mmal_msg_component_destroy_reply {
-	u32 status; /** The component destruction status */
+	u32 status; /* The component destruction status */
 };

 /* request and reply to VC to enable a component */
@@ -130,7 +131,7 @@ struct mmal_msg_component_enable {
 };

 struct mmal_msg_component_enable_reply {
-	u32 status; /** The component enable status */
+	u32 status; /* The component enable status */
 };

 /* request and reply to VC to disable a component */
@@ -139,7 +140,7 @@ struct mmal_msg_component_disable {
 };

 struct mmal_msg_component_disable_reply {
-	u32 status; /** The component disable status */
+	u32 status; /* The component disable status */
 };

 /* request to VC to get port information */
@@ -151,12 +152,12 @@ struct mmal_msg_port_info_get {

 /* reply from VC to get port info request */
 struct mmal_msg_port_info_get_reply {
-	u32 status; /** enum mmal_msg_status */
-	u32 component_handle;  /* component handle port is associated with */
-	u32 port_type;         /* enum mmal_msg_port_type */
-	u32 port_index;        /* port indexed in query */
-	s32 found;             /* unused */
-	u32 port_handle;               /**< Handle to use for this port */
+	u32 status;		/* enum mmal_msg_status */
+	u32 component_handle;	/* component handle port is associated with */
+	u32 port_type;		/* enum mmal_msg_port_type */
+	u32 port_index;		/* port indexed in query */
+	s32 found;		/* unused */
+	u32 port_handle;	/* Handle to use for this port */
 	struct mmal_port port;
 	struct mmal_es_format format; /* elementary stream format */
 	union mmal_es_specific_format es; /* es type specific data */
@@ -166,8 +167,8 @@ struct mmal_msg_port_info_get_reply {
 /* request to VC to set port information */
 struct mmal_msg_port_info_set {
 	u32 component_handle;
-	u32 port_type;         /* enum mmal_msg_port_type */
-	u32 port_index;           /* port indexed in query */
+	u32 port_type;		/* enum mmal_msg_port_type */
+	u32 port_index;		/* port indexed in query */
 	struct mmal_port port;
 	struct mmal_es_format format;
 	union mmal_es_specific_format es;
@@ -177,11 +178,11 @@ struct mmal_msg_port_info_set {
 /* reply from VC to port info set request */
 struct mmal_msg_port_info_set_reply {
 	u32 status;
-	u32 component_handle;  /* component handle port is associated with */
-	u32 port_type;         /* enum mmal_msg_port_type */
-	u32 index;             /* port indexed in query */
-	s32 found;             /* unused */
-	u32 port_handle;               /**< Handle to use for this port */
+	u32 component_handle;	/* component handle port is associated with */
+	u32 port_type;		/* enum mmal_msg_port_type */
+	u32 index;		/* port indexed in query */
+	s32 found;		/* unused */
+	u32 port_handle;	/* Handle to use for this port */
 	struct mmal_port port;
 	struct mmal_es_format format;
 	union mmal_es_specific_format es;
@@ -192,7 +193,7 @@ struct mmal_msg_port_info_set_reply {
 struct mmal_msg_port_action_port {
 	u32 component_handle;
 	u32 port_handle;
-	u32 action; /* enum mmal_msg_port_action_type */
+	u32 action;		/* enum mmal_msg_port_action_type */
 	struct mmal_port port;
 };

@@ -200,50 +201,53 @@ struct mmal_msg_port_action_port {
 struct mmal_msg_port_action_handle {
 	u32 component_handle;
 	u32 port_handle;
-	u32 action; /* enum mmal_msg_port_action_type */
+	u32 action;		/* enum mmal_msg_port_action_type */
 	u32 connect_component_handle;
 	u32 connect_port_handle;
 };

 struct mmal_msg_port_action_reply {
-	u32 status; /** The port action operation status */
+	u32 status;	/* The port action operation status */
 };

 /* MMAL buffer transfer */

-/** Size of space reserved in a buffer message for short messages. */
+/* Size of space reserved in a buffer message for short messages. */
 #define MMAL_VC_SHORT_DATA 128

-/** Signals that the current payload is the end of the stream of data */
+/* Signals that the current payload is the end of the stream of data */
 #define MMAL_BUFFER_HEADER_FLAG_EOS                    BIT(0)
-/** Signals that the start of the current payload starts a frame */
+/* Signals that the start of the current payload starts a frame */
 #define MMAL_BUFFER_HEADER_FLAG_FRAME_START            BIT(1)
-/** Signals that the end of the current payload ends a frame */
+/* Signals that the end of the current payload ends a frame */
 #define MMAL_BUFFER_HEADER_FLAG_FRAME_END              BIT(2)
-/** Signals that the current payload contains only complete frames (>1) */
+/* Signals that the current payload contains only complete frames (>1) */
 #define MMAL_BUFFER_HEADER_FLAG_FRAME                  \
 	(MMAL_BUFFER_HEADER_FLAG_FRAME_START|MMAL_BUFFER_HEADER_FLAG_FRAME_END)
-/** Signals that the current payload is a keyframe (i.e. self decodable) */
+/* Signals that the current payload is a keyframe (i.e. self decodable) */
 #define MMAL_BUFFER_HEADER_FLAG_KEYFRAME               BIT(3)
-/** Signals a discontinuity in the stream of data (e.g. after a seek).
+/*
+ * Signals a discontinuity in the stream of data (e.g. after a seek).
  * Can be used for instance by a decoder to reset its state
  */
 #define MMAL_BUFFER_HEADER_FLAG_DISCONTINUITY          BIT(4)
-/** Signals a buffer containing some kind of config data for the component
+/*
+ * Signals a buffer containing some kind of config data for the component
  * (e.g. codec config data)
  */
 #define MMAL_BUFFER_HEADER_FLAG_CONFIG                 BIT(5)
-/** Signals an encrypted payload */
+/* Signals an encrypted payload */
 #define MMAL_BUFFER_HEADER_FLAG_ENCRYPTED              BIT(6)
-/** Signals a buffer containing side information */
+/* Signals a buffer containing side information */
 #define MMAL_BUFFER_HEADER_FLAG_CODECSIDEINFO          BIT(7)
-/** Signals a buffer which is the snapshot/postview image from a stills
+/*
+ * Signals a buffer which is the snapshot/postview image from a stills
  * capture
  */
 #define MMAL_BUFFER_HEADER_FLAGS_SNAPSHOT              BIT(8)
-/** Signals a buffer which contains data known to be corrupted */
+/* Signals a buffer which contains data known to be corrupted */
 #define MMAL_BUFFER_HEADER_FLAG_CORRUPTED              BIT(9)
-/** Signals that a buffer failed to be transmitted */
+/* Signals that a buffer failed to be transmitted */
 #define MMAL_BUFFER_HEADER_FLAG_TRANSMISSION_FAILED    BIT(10)

 struct mmal_driver_buffer {
@@ -255,8 +259,8 @@ struct mmal_driver_buffer {

 /* buffer header */
 struct mmal_buffer_header {
-	u32 next; /* next header */
-	u32 priv; /* framework private data */
+	u32 next;	/* next header */
+	u32 priv;	/* framework private data */
 	u32 cmd;
 	u32 data;
 	u32 alloc_size;
@@ -281,7 +285,8 @@ struct mmal_buffer_header_type_specific {
 };

 struct mmal_msg_buffer_from_host {
-	/* The front 32 bytes of the buffer header are copied
+	/*
+	 *The front 32 bytes of the buffer header are copied
 	 * back to us in the reply to allow for context. This
 	 * area is used to store two mmal_driver_buffer structures to
 	 * allow for multiple concurrent service users.
@@ -296,7 +301,7 @@ struct mmal_msg_buffer_from_host {
 	s32 is_zero_copy;
 	s32 has_reference;

-	/** allows short data to be xfered in control message */
+	/* allows short data to be xfered in control message */
 	u32 payload_in_message;
 	u8 short_data[MMAL_VC_SHORT_DATA];
 };
@@ -306,10 +311,10 @@ struct mmal_msg_buffer_from_host {
 #define MMAL_WORKER_PORT_PARAMETER_SPACE      96

 struct mmal_msg_port_parameter_set {
-	u32 component_handle; /* component */
-	u32 port_handle;      /* port */
-	u32 id;     /* Parameter ID  */
-	u32 size;      /* Parameter size */
+	u32 component_handle;	/* component */
+	u32 port_handle;	/* port */
+	u32 id;			/* Parameter ID  */
+	u32 size;		/* Parameter size */
 	u32 value[MMAL_WORKER_PORT_PARAMETER_SPACE];
 };

@@ -322,16 +327,16 @@ struct mmal_msg_port_parameter_set_reply {
 /* port parameter getting */

 struct mmal_msg_port_parameter_get {
-	u32 component_handle; /* component */
-	u32 port_handle;      /* port */
-	u32 id;     /* Parameter ID  */
-	u32 size;      /* Parameter size */
+	u32 component_handle;	/* component */
+	u32 port_handle;	/* port */
+	u32 id;			/* Parameter ID  */
+	u32 size;		/* Parameter size */
 };

 struct mmal_msg_port_parameter_get_reply {
-	u32 status;           /* Status of mmal_port_parameter_get call */
-	u32 id;     /* Parameter ID  */
-	u32 size;      /* Parameter size */
+	u32 status;		/* Status of mmal_port_parameter_get call */
+	u32 id;			/* Parameter ID  */
+	u32 size;		/* Parameter size */
 	u32 value[MMAL_WORKER_PORT_PARAMETER_SPACE];
 };

@@ -339,7 +344,7 @@ struct mmal_msg_port_parameter_get_reply {
 #define MMAL_WORKER_EVENT_SPACE 256

 struct mmal_msg_event_to_host {
-	u32 client_component; /* component context */
+	u32 client_component;	/* component context */

 	u32 port_type;
 	u32 port_num;
--
2.7.4


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
