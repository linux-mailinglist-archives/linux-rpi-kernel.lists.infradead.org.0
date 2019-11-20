Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DD3E103EDF
	for <lists+linux-rpi-kernel@lfdr.de>; Wed, 20 Nov 2019 16:37:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9YeUli4h5rakQ8aGDDQxBL5uqCXZCnJYO9oTdoU2Wt8=; b=BCbliUA4jLwhHd
	sL9jUxejzkD561iL63/PA601RRkl7BwAkrdK+yAmfDHbSMLtMgbAeYFkToFPOOvHy8x8sRe8K1JT+
	KVGebBGlH1HqIP8atZv5RUuiA8XN4FmStukcKd4edSzn2a6BfbzZIGXVz5AJ39y7aiX6vZZYWKhDD
	zhelWkFyxDgUni2GytKFfXNHawpBL0nt/6dECAuXb5yQcw5w/daAFlWRPLj++IOrGxCguiXKtOX3e
	jo3M9lQ22ygQrLo+9ItYp2xhwBExlU+NInLkb8Ra1EZ3R55qt+ffAtvr41zHe78TUYNzjyqWZPP7B
	+8qociN3KzGR7xtfTAMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXS2O-00076g-9Q; Wed, 20 Nov 2019 15:37:00 +0000
Received: from mail-qk1-x74a.google.com ([2607:f8b0:4864:20::74a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXS2I-000732-1K
 for linux-rpi-kernel@lists.infradead.org; Wed, 20 Nov 2019 15:36:56 +0000
Received: by mail-qk1-x74a.google.com with SMTP id r2so16110165qkb.2
 for <linux-rpi-kernel@lists.infradead.org>;
 Wed, 20 Nov 2019 07:36:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=PwlClLLzHlXjf5eFZEfYM9gM2VVZrKncA56wpIlNj5Q=;
 b=WdCkicJU+St3RlVN+d0kgDJaEMPqPoTboNp7vliwcbJpLxJ0vWoP6e/3LBC4/uQew9
 fV/vZol1B3NR32pyug9e20UaF5Vk04625LSSz3KZyUIYR43d6kdiHL737S0cFxrCNrN/
 OcFSb5tL6pTMKp9f42uk6LIrctTqA7HxiTs9R54bpaWzR949wv2mMw/lX6PzEUMT1Q9b
 d7mYt9ng+vHPnEFddtXS3AKGnm4uCNESAsi7+opnIBWz2Czt+LDQNuwa7xYKxICCuWeT
 IAjPbgESF8kx8n4tvluuYKEv9p8eqM+tulP9r3c4UwFGBM0f3hrGH4IBsi2HMul0Cdum
 h7Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=PwlClLLzHlXjf5eFZEfYM9gM2VVZrKncA56wpIlNj5Q=;
 b=ISjF5rAUhBf9zwHeV0PZT2GpZtGkP9gBE/p+ttywum7smA7Suy1D1N8BJjVK6UTilL
 kP4x0Gcx8a7iG7Em4LhGJZMqjX1qezI0SAb3EkiiZaGWD9wEojygjRag2/dtGWuJPfkj
 z4xd1mJMjODz9S/zHb/ql9Rax5kYfnHErFd8sBl+ogMBbZR6qRs5MSxtKCLIFZpqjnxP
 0InH7rd7KDqJqpolM+U5DxIXLPKnsTyK5ON7f3F3iV1wBV0caJIsoq8avrDQH9oO2lu5
 aogrOJMM0YaMR/oxfZFpHTxFPgUlTE3M/8X0sMUQSfIhX4X4DcH8vAf7ZC59mvIYWEJB
 W9eQ==
X-Gm-Message-State: APjAAAVf0SEQlZuMdintDpT7bOHrnp7/gDLjBaGNzFW+22WDt/iBxuCD
 W/BWUbSXmfnZuLQ2l9nJh8DDHAnD6Je+h4RTqZ8=
X-Google-Smtp-Source: APXvYqyyrl48IB0MISkZAYi9grHAw0sH6/UqguoAu0QRll1UqGBom35yQl4ueVnxR7n7uUp8bdeMQ8UDz9Ft/IUgmH0=
X-Received: by 2002:a0c:fecc:: with SMTP id z12mr3044504qvs.189.1574264211694; 
 Wed, 20 Nov 2019 07:36:51 -0800 (PST)
Date: Wed, 20 Nov 2019 10:36:47 -0500
In-Reply-To: <cover.1574253964.git.marcgonzalez@google.com>
Message-Id: <7c0baa2888cef348b96dab65f2726f1e1d8c0a27.1574253964.git.marcgonzalez@google.com>
Mime-Version: 1.0
References: <cover.1574253964.git.marcgonzalez@google.com>
X-Mailer: git-send-email 2.24.0.432.g9d3f5f5b63-goog
Subject: [PATCH 2/3] staging: vchiq: Refactor indentation in vchiq_dump_*
 functions
From: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
To: gregkh@linuxfoundation.org, eric@anholt.net, wahrenst@gmx.net
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_073654_091169_D9A52AE5 
X-CRM114-Status: GOOD (  12.99  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:74a listed in]
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
2.20.1


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
