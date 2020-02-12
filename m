Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A9C815B00E
	for <lists+linux-rpi-kernel@lfdr.de>; Wed, 12 Feb 2020 19:43:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mDLBNrswJdFOXgr2fCp4Eefz79WwOCmNhKjf6aT5gLQ=; b=H+1bkiVywdxqS5
	zMaw2mz9p2Gn9tZycakZRazH8W8GXvs67UxxChYQwWXSB+WCIqrT1xQtnpxYkEkYQl+OsAFkxwOHN
	swHkJ/TupkETeRAbpiJ4+ldP3AVqVApQfdUwRj1fX5zQEShAMyAvhFnI/icE13M3Naagxe3AOq3QG
	8GXOfntGJ8FgnYI3w3DkrsWmzikX/Ydrf6blwcQOVg5Aqyc+7Hw88OcocM2IkOTUhoZncPdbApsEx
	dYburULXtswAieRAyu4BVpyjuKbed0FlgYuAWQrHRe49pMhxm3A4FfwzsipvzOo5Jm2bw7VOHMypD
	wOExDFsWUJIpCPH3Skhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1wzF-0007oG-4b; Wed, 12 Feb 2020 18:43:49 +0000
Received: from mail-yb1-xb4a.google.com ([2607:f8b0:4864:20::b4a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1wz7-0007gq-6M
 for linux-rpi-kernel@lists.infradead.org; Wed, 12 Feb 2020 18:43:42 +0000
Received: by mail-yb1-xb4a.google.com with SMTP id u5so2808464ybm.7
 for <linux-rpi-kernel@lists.infradead.org>;
 Wed, 12 Feb 2020 10:43:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=xhIOqHQd0jXYQ2FxBCtmYoOa6FI5uX4A/xLG79gRSwo=;
 b=cHZVQyxcSxtYJehumtNXNDA9jwpIsvtais+yYU05jTGxREWyf0A71whHkY4E+HnATi
 aH0EoTYuP9SWBdkQvRJXhgPFeuL8XSlwDO3fAdzN8Cglj8+TDkKyntDbM44dxwvLAnax
 uTJPHzazcLYISDQEYQQB2JUQkbtY7sy3OQTUwlldMpx0wU7wdE00scMnDvbXp0Zug70u
 11h+VZtDjACvzMX/Et8dH8663bK0Oq44PghBRLkQHqUp+4+A2Cr75c1Ti9/OwN6SkOcO
 n2h/SUIwTWphNAdUVtmraydZ7I0RQf9eleQxly5Pa+2i8m9pf0pSxG1s+Uk4L+mMdptw
 Y23w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=xhIOqHQd0jXYQ2FxBCtmYoOa6FI5uX4A/xLG79gRSwo=;
 b=J1nWO/mLwsfTmQdoj5LKC884EjbGeolMhxPV/6ih03MBFabPr2HycUZ8DdBkTfQbHT
 mwNb1ouiS0ULzq28F8liwgeCwNj0/EabR85mT71cfwKPnH2bGSUmqckcjET+XXnfqgLO
 ShJoSkGjK/L7t5yS8hnK1ybVLHFqtqCogLCOPzU+nqxLZPshE/gnG9By3j6VIheTTG7E
 PNsRaaSbe+p5M0BreZVsJxx6ufipYGdN0IgcRBNgNE821pVovQ0sILOAT0fOEUCbSJcb
 8NYx9yJWWBhO+fYtSyh5DWWnAYraNxNz0hUHDcoC7OCusr3THAg5RZdqGgGEQaPHYfin
 19fQ==
X-Gm-Message-State: APjAAAWgcKaGnjU3y4Jml8N4AcGGsNUnaSoTxfWX0+xbgqHy2zmhgZ7M
 kkN4NxeUgA5C7cRDUAEfsl6PszufwA+s7J9QI+s=
X-Google-Smtp-Source: APXvYqyAEUPgzjH6Yri0hlb0y/aBP897CzJIvovSk8Z3BJvN2SuYX37lmSSKnPRtTw3c9/v3TAam2eJAa2vkqZVldHA=
X-Received: by 2002:a81:af10:: with SMTP id n16mr10836934ywh.144.1581533018914; 
 Wed, 12 Feb 2020 10:43:38 -0800 (PST)
Date: Wed, 12 Feb 2020 13:43:33 -0500
In-Reply-To: <cover.1581532523.git.marcgonzalez@google.com>
Message-Id: <ac6186ac888f1acf489b5b504efcba8b0d6a8b25.1581532523.git.marcgonzalez@google.com>
Mime-Version: 1.0
References: <cover.1581532523.git.marcgonzalez@google.com>
X-Mailer: git-send-email 2.25.0.225.g125e21ebc7-goog
Subject: [PATCH 5/5] staging: vc04_services: don't increment service refcount
 when it's not needed
From: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
To: nsaenzjulienne@suse.de, gregkh@linuxfoundation.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_104341_265378_B178E7DA 
X-CRM114-Status: GOOD (  11.24  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b4a listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devel@driverdev.osuosl.org, linux-rpi-kernel@lists.infradead.org,
 dan.carpenter@oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

There are a few places where a service's reference count is incremented,
something quick is done, and the refcount is dropped. This can be made
a little simpler/faster by not grabbing a reference in these cases.

Signed-off-by: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
---
 .../interface/vchiq_arm/vchiq_arm.c           | 16 ++++-----
 .../interface/vchiq_arm/vchiq_core.c          | 36 +++++++++++++------
 .../interface/vchiq_arm/vchiq_core.h          |  8 ++++-
 3 files changed, 40 insertions(+), 20 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index 3ed0e4ea7f5c..b377f18aed45 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -2497,11 +2497,11 @@ vchiq_instance_get_use_count(struct vchiq_instance *instance)
 	int use_count = 0, i;
 
 	i = 0;
-	while ((service = next_service_by_instance(instance->state,
-		instance, &i))) {
+	rcu_read_lock();
+	while ((service = __next_service_by_instance(instance->state,
+						     instance, &i)))
 		use_count += service->service_use_count;
-		unlock_service(service);
-	}
+	rcu_read_unlock();
 	return use_count;
 }
 
@@ -2524,11 +2524,11 @@ vchiq_instance_set_trace(struct vchiq_instance *instance, int trace)
 	int i;
 
 	i = 0;
-	while ((service = next_service_by_instance(instance->state,
-		instance, &i))) {
+	rcu_read_lock();
+	while ((service = __next_service_by_instance(instance->state,
+						     instance, &i)))
 		service->trace = trace;
-		unlock_service(service);
-	}
+	rcu_read_unlock();
 	instance->trace = (trace != 0);
 }
 
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
index 65270a5b29db..d7d7f4d9d57f 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
@@ -222,28 +222,42 @@ find_closed_service_for_instance(struct vchiq_instance *instance,
 }
 
 struct vchiq_service *
-next_service_by_instance(struct vchiq_state *state, struct vchiq_instance *instance,
-			 int *pidx)
+__next_service_by_instance(struct vchiq_state *state,
+			   struct vchiq_instance *instance,
+			   int *pidx)
 {
 	struct vchiq_service *service = NULL;
 	int idx = *pidx;
 
-	rcu_read_lock();
 	while (idx < state->unused_service) {
 		struct vchiq_service *srv;
 
 		srv = rcu_dereference(state->services[idx++]);
 		if (srv && srv->srvstate != VCHIQ_SRVSTATE_FREE &&
-		    srv->instance == instance &&
-		    kref_get_unless_zero(&srv->ref_count)) {
-			service = rcu_pointer_handoff(srv);
+		    srv->instance == instance) {
+			service = srv;
 			break;
 		}
 	}
-	rcu_read_unlock();
 
 	*pidx = idx;
+	return service;
+}
 
+struct vchiq_service *
+next_service_by_instance(struct vchiq_state *state,
+			 struct vchiq_instance *instance,
+			 int *pidx)
+{
+	struct vchiq_service *service;
+
+	rcu_read_lock();
+	service = __next_service_by_instance(state, instance, pidx);
+	if (service && kref_get_unless_zero(&service->ref_count))
+		service = rcu_pointer_handoff(service);
+	else
+		service = NULL;
+	rcu_read_unlock();
 	return service;
 }
 
@@ -283,13 +297,13 @@ unlock_service(struct vchiq_service *service)
 int
 vchiq_get_client_id(unsigned int handle)
 {
-	struct vchiq_service *service = find_service_by_handle(handle);
+	struct vchiq_service *service;
 	int id;
 
+	rcu_read_lock();
+	service = handle_to_service(handle);
 	id = service ? service->client_id : 0;
-	if (service)
-		unlock_service(service);
-
+	rcu_read_unlock();
 	return id;
 }
 
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
index 30e4965c7666..cedd8e721aae 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
@@ -572,7 +572,13 @@ find_closed_service_for_instance(struct vchiq_instance *instance,
 	unsigned int handle);
 
 extern struct vchiq_service *
-next_service_by_instance(struct vchiq_state *state, struct vchiq_instance *instance,
+__next_service_by_instance(struct vchiq_state *state,
+			   struct vchiq_instance *instance,
+			   int *pidx);
+
+extern struct vchiq_service *
+next_service_by_instance(struct vchiq_state *state,
+			 struct vchiq_instance *instance,
 			 int *pidx);
 
 extern void
-- 
2.25.0.225.g125e21ebc7-goog


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
