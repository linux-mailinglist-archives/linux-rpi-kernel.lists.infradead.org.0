Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95FC31044EB
	for <lists+linux-rpi-kernel@lfdr.de>; Wed, 20 Nov 2019 21:21:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WZw4H6NSpTHWKKBGKoUoUhwijHpvG+zx1dy3G0Rsy38=; b=gHL5R10HCyx7Ik
	/K0MaKnYcNq9OTSy8mwG3IfQMA3D2VsCVZX3rv5d6cVtZ4AFJzBe0U1BVscQfH229/Muynu7SYN9R
	Kxqu4TGnZ/7K9+T39SnoFU4FynqqUbs/xkXf0X6zHPSMWPatKoKeuNjehTzKCXVfxdSiUkbU6O6Te
	kQAZIIfySieZ+3WaCAYGeGLew55kMKpLT4WpaQ/T6dagElDCGp+XTFbxARR/yR3EiEnMKVLMslxYS
	zeqKOSPjsfVFPwlCEoaw/2nxqz4QGCn2pakBvIzXM3zg76Wfz+cV6+OUqYEGWReYazsF+9zv4qzLx
	BV+ZmmflwgeVoaASy5ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXWTT-0000yU-MW; Wed, 20 Nov 2019 20:21:15 +0000
Received: from mail-qt1-x849.google.com ([2607:f8b0:4864:20::849])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXWTN-0000sH-4U
 for linux-rpi-kernel@lists.infradead.org; Wed, 20 Nov 2019 20:21:10 +0000
Received: by mail-qt1-x849.google.com with SMTP id v23so667018qth.20
 for <linux-rpi-kernel@lists.infradead.org>;
 Wed, 20 Nov 2019 12:21:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=uPmLZZCejalz8A54ySd1wPnJCHxor2YXnOmkuoyaQOU=;
 b=jvp+499mVebR2dUuEDOMyy856eSyTT90BV1Ic4Az23KAO8eaObr16mHJRJ/uE5qWBo
 j6E20sKyACUTqyzt50hB+2XgaMcg61++rEy6XshG9kgkExnUuHYdw0j2RnZv/h/U0MgU
 rR7FSt5lpDjy1EJwKeXQNTFcIXVoeOIMQE8vTEztMG6/kCfbiyAVmqwl+1DqIZlIyG2a
 9dpCGk+np0yJdyHHC063RNfh7p5iSwB7TdanWBt3EQ0koKIJoYB0E6Fl71vcjAJfXi9W
 2ue3lBA34kEMPUj9kfSx1uWsUElj9Duz0Fro7mI/1rCUrIsF1xXfBzejoK+eIu0Lox1K
 iV1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=uPmLZZCejalz8A54ySd1wPnJCHxor2YXnOmkuoyaQOU=;
 b=BYjK7uDhol/BuIrQGc70d38fH+uwTqHmJq7jYv0baFILmjr5LDOS8YPK96Bu+27hb0
 MzoCCIBzk3GkDjjgOZJRbM935xdVUT6W8dt8H2MEa0/Hr0CVNcTG/rcrN5u6VQDnRGnT
 bTsUT0pMpwenQ2vdYsP1Iz7wM1Ugq05q941ZSaMad9Du8f31V2bRl8+q2eRJDim3ySZK
 +gBxsq79gMHhLB5X1AWb/Mmg8kTV46viQlUKVu83yEIP/raqKXNuA6WQCXi+cX0PWGMf
 5sIEEfTTXOzoYlQY2k46M02RRzyt59KWDf6HtiH0YoolTiTU41EWKVQVngmBjwO72uZI
 9AOQ==
X-Gm-Message-State: APjAAAWo631gicKACiR3iUA1XXKDh6QOXYolxyt/57PHVMDOo4laRxoQ
 bTxcZvjed/Bi5UwRsDEMQieM29EuK3hTXrZM1j8=
X-Google-Smtp-Source: APXvYqxDFFCxPc0Q3Yw//PHQplyRnZWFoYyUKRG/tZkj0B6DcDvf/WMg3xV38ZEAwXqBNvme6ij1Y/7m5PZZ5Dl/4uk=
X-Received: by 2002:a37:9d0:: with SMTP id 199mr4363375qkj.356.1574281267199; 
 Wed, 20 Nov 2019 12:21:07 -0800 (PST)
Date: Wed, 20 Nov 2019 15:21:01 -0500
In-Reply-To: <20191120202102.249121-1-marcgonzalez@google.com>
Message-Id: <20191120202102.249121-4-marcgonzalez@google.com>
Mime-Version: 1.0
References: <cover.1574253964.git.marcgonzalez@google.com>
 <20191120202102.249121-1-marcgonzalez@google.com>
X-Mailer: git-send-email 2.24.0.432.g9d3f5f5b63-goog
Subject: [PATCH v2 3/4] staging: vchiq: Refactor indentation in vchiq_dump_*
 functions
From: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
To: gregkh@linuxfoundation.org, eric@anholt.net, wahrenst@gmx.net
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_122109_185791_664D6808 
X-CRM114-Status: GOOD (  13.28  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:849 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

Doing this helps with readability, and makes
the logic easier to follow.

Signed-off-by: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
---
 .../interface/vchiq_arm/vchiq_arm.c           | 104 +++++++++---------
 1 file changed, 53 insertions(+), 51 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index 942b4768c88e..8f9cfa083264 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -2076,40 +2076,40 @@ void
 vchiq_dump(void *dump_context, const char *str, int len)
 {
 	struct dump_context *context = (struct dump_context *)dump_context;
+	int copy_bytes;
 
-	if (context->actual < context->space) {
-		int copy_bytes;
+	if (context->actual >= context->space)
+		return;
 
-		if (context->offset > 0) {
-			int skip_bytes = min_t(int, len, context->offset);
+	if (context->offset > 0) {
+		int skip_bytes = min_t(int, len, context->offset);
 
-			str += skip_bytes;
-			len -= skip_bytes;
-			context->offset -= skip_bytes;
-			if (context->offset > 0)
-				return;
-		}
-		copy_bytes = min_t(int, len, context->space - context->actual);
-		if (copy_bytes == 0)
+		str += skip_bytes;
+		len -= skip_bytes;
+		context->offset -= skip_bytes;
+		if (context->offset > 0)
 			return;
-		if (copy_to_user(context->buf + context->actual, str,
-			copy_bytes))
+	}
+	copy_bytes = min_t(int, len, context->space - context->actual);
+	if (copy_bytes == 0)
+		return;
+	if (copy_to_user(context->buf + context->actual, str,
+			 copy_bytes))
+		context->actual = -EFAULT;
+	context->actual += copy_bytes;
+	len -= copy_bytes;
+
+	/*
+	 * If the terminating NUL is included in the length, then it
+	 * marks the end of a line and should be replaced with a
+	 * carriage return.
+	 */
+	if ((len == 0) && (str[copy_bytes - 1] == '\0')) {
+		char cr = '\n';
+
+		if (copy_to_user(context->buf + context->actual - 1,
+				 &cr, 1))
 			context->actual = -EFAULT;
-		context->actual += copy_bytes;
-		len -= copy_bytes;
-
-		/*
-		 * If the terminating NUL is included in the length, then it
-		 * marks the end of a line and should be replaced with a
-		 * carriage return.
-		 */
-		if ((len == 0) && (str[copy_bytes - 1] == '\0')) {
-			char cr = '\n';
-
-			if (copy_to_user(context->buf + context->actual - 1,
-				&cr, 1))
-				context->actual = -EFAULT;
-		}
 	}
 }
 
@@ -2134,34 +2134,36 @@ vchiq_dump_platform_instances(void *dump_context)
 		struct vchiq_service *service = state->services[i];
 		struct vchiq_instance *instance;
 
-		if (service && (service->base.callback == service_callback)) {
-			instance = service->instance;
-			if (instance)
-				instance->mark = 0;
-		}
+		if (!service || service->base.callback != service_callback)
+			continue;
+
+		instance = service->instance;
+		if (instance)
+			instance->mark = 0;
 	}
 
 	for (i = 0; i < state->unused_service; i++) {
 		struct vchiq_service *service = state->services[i];
 		struct vchiq_instance *instance;
 
-		if (service && (service->base.callback == service_callback)) {
-			instance = service->instance;
-			if (instance && !instance->mark) {
-				len = snprintf(buf, sizeof(buf),
-					"Instance %pK: pid %d,%s completions %d/%d",
-					instance, instance->pid,
-					instance->connected ? " connected, " :
-						"",
-					instance->completion_insert -
-						instance->completion_remove,
-					MAX_COMPLETIONS);
-
-				vchiq_dump(dump_context, buf, len + 1);
-
-				instance->mark = 1;
-			}
-		}
+		if (!service || service->base.callback != service_callback)
+			continue;
+
+		instance = service->instance;
+		if (!instance || instance->mark)
+			continue;
+
+		len = snprintf(buf, sizeof(buf),
+			       "Instance %pK: pid %d,%s completions %d/%d",
+			       instance, instance->pid,
+			       instance->connected ? " connected, " :
+			       "",
+			       instance->completion_insert -
+			       instance->completion_remove,
+			       MAX_COMPLETIONS);
+
+		vchiq_dump(dump_context, buf, len + 1);
+		instance->mark = 1;
 	}
 }
 
-- 
2.24.0.432.g9d3f5f5b63-goog


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
