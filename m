Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB7DA15B00D
	for <lists+linux-rpi-kernel@lfdr.de>; Wed, 12 Feb 2020 19:43:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B3mQqFeX9TtzkbdLEWT9u8XJeVS3qj0SYkM9wdcSZQw=; b=ctYQ64ACWB/xUS
	/qOAovZ3VjGHKoSVl1CNORqImirZArclb0GZuOeo5yjUeh7HRRn/CiRT32ZJtzW50jw40lM760T3z
	NtQ5vMt0e9AoWFJ9YhGkm/lA3nH+RhAPtK4K8f0jvIZ6Au5B43ddEmFZPhhLzQKX2X45ikEC1/DZl
	400reYcnxGfezUyA6srtV/LBZ5L12bJqUTIr/+6uCX9CosPSsfG0t+GX5JE850pg9bIgWpxJdSCCm
	94ax/ZUx3M8HB58RA96//mccA6h88OWmsfyiF+PuI2gymMW+I+hR5/NP+P+eRgKyhTC76O+LbBRL5
	ak0o7ODcEFeZdOY4hDnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1wzC-0007mS-7I; Wed, 12 Feb 2020 18:43:46 +0000
Received: from mail-qv1-xf49.google.com ([2607:f8b0:4864:20::f49])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1wz4-0007gD-Ox
 for linux-rpi-kernel@lists.infradead.org; Wed, 12 Feb 2020 18:43:41 +0000
Received: by mail-qv1-xf49.google.com with SMTP id z39so1947119qve.5
 for <linux-rpi-kernel@lists.infradead.org>;
 Wed, 12 Feb 2020 10:43:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=tkY3zTSVuYQ0mGOyPa3r7Zn0YmdASQtgO3Gb2zhNQOI=;
 b=DFMgcvU0DfcxJE9/Ro3CdZehLKLlGtUf4LI3jCV5OcqyQ4SpFpuiYytZQw/qLWH8JK
 ouPawaAUH9kq/KaOWZSdRiJUDZUeJrz0IZuBOvrEJ5p/oD/AGiYF6uVpPi9qrjmg7o4w
 0VY2tLPsWyLRyXKtRm/3b3Ya4C/cf40Pn8fbqGo1MXueSOWZPFX8X7r6GkGLk1kVoh/V
 x9jpm+4HHYGbA70zRppUpJkETmJBp4mIH15hDS+NEkO8teBh094VFNRfuV1EHT+OUE/N
 qL5lj+UsL6LkBDRxmNbUINtqNGwBsdF3KIHd6KqJgGZxuWeUbiRTc3sCWv8Vx3YOrJOs
 yAGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=tkY3zTSVuYQ0mGOyPa3r7Zn0YmdASQtgO3Gb2zhNQOI=;
 b=XyTj5lxEC3XowLla3f0xH3Z2KMFNOcovx9XfelE4tZHeUGNix1uzFK/3JXIb2drFhV
 y+l6tcQIzDuTVGb4LRWIm55HaeIvFXS+Li0CbhZEykNAXQRy7xueKumnJZAr5rqvmEg/
 x1IJo+1GJfCai+K060kYvBJJvMboc16d6pQyIk0tE8gc5LMvagVvnrVfrDshxa4L9oU0
 2jtkVm2JFBw4gGj3fSHm1XssmBUSVFIeqzdF6DZY0nklzXWZSIl/GteyBpKaqX8Q9b2X
 3IgMG0rXa6jWZmoT+9wjkSpijBL7hR5JOcl1Lw4NqZVQNxEKc1zlG16YaQ96ij/1DDtC
 +2uQ==
X-Gm-Message-State: APjAAAXRBURNDPdAEbfjs93qBh8xJ3vYS02PVg8/IXOy+CnDMp6I3KHA
 i0levhxTvF4fsMocl73TY7D90J/62+37lYFgJBE=
X-Google-Smtp-Source: APXvYqw2tiAGG69JScprAoHNV3COnhWrfKp4bFrQAWHo9OSwdJtYUggfSGdlm5jBATL6prpS5yXGGXwdVG54YUKSBOI=
X-Received: by 2002:a05:6214:88c:: with SMTP id
 cz12mr8183245qvb.95.1581533017968; 
 Wed, 12 Feb 2020 10:43:37 -0800 (PST)
Date: Wed, 12 Feb 2020 13:43:32 -0500
In-Reply-To: <cover.1581532523.git.marcgonzalez@google.com>
Message-Id: <3bf6f1ec6ace64d7072025505e165b8dd18b25ca.1581532523.git.marcgonzalez@google.com>
Mime-Version: 1.0
References: <cover.1581532523.git.marcgonzalez@google.com>
X-Mailer: git-send-email 2.25.0.225.g125e21ebc7-goog
Subject: [PATCH 4/5] staging: vc04_services: use kref + RCU to reference count
 services
From: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
To: nsaenzjulienne@suse.de, gregkh@linuxfoundation.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_104338_919552_7D2CFAD1 
X-CRM114-Status: GOOD (  18.36  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

Currently reference counts are implemented by locking service_spinlock
and then incrementing the service's ->ref_count field, calling
kfree() when the last reference has been dropped. But at the same
time, there's code in multiple places that dereferences pointers
to services without having a reference, so there could be a race there.

It should be possible to avoid taking any lock in unlock_service()
or service_release() because we are setting a single array element
to NULL, and on service creation, a mutex is locked before looking
for a NULL spot to put the new service in.

Using a struct kref and RCU-delaying the freeing of services fixes
this race condition while still making it possible to skip
grabbing a reference in many places. Also it avoids the need to
acquire a single spinlock when e.g. taking a reference on
state->services[i] when somebody else is in the middle of taking
a reference on state->services[j].

Signed-off-by: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
---
 .../interface/vchiq_arm/vchiq_arm.c           |  25 +-
 .../interface/vchiq_arm/vchiq_core.c          | 222 +++++++++---------
 .../interface/vchiq_arm/vchiq_core.h          |  12 +-
 3 files changed, 140 insertions(+), 119 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index c456ced431af..3ed0e4ea7f5c 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -22,6 +22,7 @@
 #include <linux/platform_device.h>
 #include <linux/compat.h>
 #include <linux/dma-mapping.h>
+#include <linux/rcupdate.h>
 #include <soc/bcm2835/raspberrypi-firmware.h>
 
 #include "vchiq_core.h"
@@ -2096,10 +2097,12 @@ int vchiq_dump_platform_instances(void *dump_context)
 	/* There is no list of instances, so instead scan all services,
 		marking those that have been dumped. */
 
+	rcu_read_lock();
 	for (i = 0; i < state->unused_service; i++) {
-		struct vchiq_service *service = state->services[i];
+		struct vchiq_service *service;
 		struct vchiq_instance *instance;
 
+		service = rcu_dereference(state->services[i]);
 		if (!service || service->base.callback != service_callback)
 			continue;
 
@@ -2107,18 +2110,26 @@ int vchiq_dump_platform_instances(void *dump_context)
 		if (instance)
 			instance->mark = 0;
 	}
+	rcu_read_unlock();
 
 	for (i = 0; i < state->unused_service; i++) {
-		struct vchiq_service *service = state->services[i];
+		struct vchiq_service *service;
 		struct vchiq_instance *instance;
 		int err;
 
-		if (!service || service->base.callback != service_callback)
+		rcu_read_lock();
+		service = rcu_dereference(state->services[i]);
+		if (!service || service->base.callback != service_callback) {
+			rcu_read_unlock();
 			continue;
+		}
 
 		instance = service->instance;
-		if (!instance || instance->mark)
+		if (!instance || instance->mark) {
+			rcu_read_unlock();
 			continue;
+		}
+		rcu_read_unlock();
 
 		len = snprintf(buf, sizeof(buf),
 			       "Instance %pK: pid %d,%s completions %d/%d",
@@ -2128,7 +2139,6 @@ int vchiq_dump_platform_instances(void *dump_context)
 			       instance->completion_insert -
 			       instance->completion_remove,
 			       MAX_COMPLETIONS);
-
 		err = vchiq_dump(dump_context, buf, len + 1);
 		if (err)
 			return err;
@@ -2585,8 +2595,10 @@ vchiq_dump_service_use_state(struct vchiq_state *state)
 	if (active_services > MAX_SERVICES)
 		only_nonzero = 1;
 
+	rcu_read_lock();
 	for (i = 0; i < active_services; i++) {
-		struct vchiq_service *service_ptr = state->services[i];
+		struct vchiq_service *service_ptr =
+			rcu_dereference(state->services[i]);
 
 		if (!service_ptr)
 			continue;
@@ -2604,6 +2616,7 @@ vchiq_dump_service_use_state(struct vchiq_state *state)
 		if (found >= MAX_SERVICES)
 			break;
 	}
+	rcu_read_unlock();
 
 	read_unlock_bh(&arm_state->susp_res_lock);
 
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
index b2d9013b7f79..65270a5b29db 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
@@ -1,6 +1,9 @@
 // SPDX-License-Identifier: GPL-2.0 OR BSD-3-Clause
 /* Copyright (c) 2010-2012 Broadcom. All rights reserved. */
 
+#include <linux/kref.h>
+#include <linux/rcupdate.h>
+
 #include "vchiq_core.h"
 
 #define VCHIQ_SLOT_HANDLER_STACK 8192
@@ -54,7 +57,6 @@ int vchiq_core_log_level = VCHIQ_LOG_DEFAULT;
 int vchiq_core_msg_log_level = VCHIQ_LOG_DEFAULT;
 int vchiq_sync_log_level = VCHIQ_LOG_DEFAULT;
 
-static DEFINE_SPINLOCK(service_spinlock);
 DEFINE_SPINLOCK(bulk_waiter_spinlock);
 static DEFINE_SPINLOCK(quota_spinlock);
 
@@ -136,44 +138,41 @@ find_service_by_handle(unsigned int handle)
 {
 	struct vchiq_service *service;
 
-	spin_lock(&service_spinlock);
+	rcu_read_lock();
 	service = handle_to_service(handle);
 	if (service && service->srvstate != VCHIQ_SRVSTATE_FREE &&
-	    service->handle == handle) {
-		WARN_ON(service->ref_count == 0);
-		service->ref_count++;
-	} else
-		service = NULL;
-	spin_unlock(&service_spinlock);
-
-	if (!service)
-		vchiq_log_info(vchiq_core_log_level,
-			"Invalid service handle 0x%x", handle);
-
-	return service;
+	    service->handle == handle &&
+	    kref_get_unless_zero(&service->ref_count)) {
+		service = rcu_pointer_handoff(service);
+		rcu_read_unlock();
+		return service;
+	}
+	rcu_read_unlock();
+	vchiq_log_info(vchiq_core_log_level,
+		       "Invalid service handle 0x%x", handle);
+	return NULL;
 }
 
 struct vchiq_service *
 find_service_by_port(struct vchiq_state *state, int localport)
 {
-	struct vchiq_service *service = NULL;
 
 	if ((unsigned int)localport <= VCHIQ_PORT_MAX) {
-		spin_lock(&service_spinlock);
-		service = state->services[localport];
-		if (service && service->srvstate != VCHIQ_SRVSTATE_FREE) {
-			WARN_ON(service->ref_count == 0);
-			service->ref_count++;
-		} else
-			service = NULL;
-		spin_unlock(&service_spinlock);
-	}
-
-	if (!service)
-		vchiq_log_info(vchiq_core_log_level,
-			"Invalid port %d", localport);
+		struct vchiq_service *service;
 
-	return service;
+		rcu_read_lock();
+		service = rcu_dereference(state->services[localport]);
+		if (service && service->srvstate != VCHIQ_SRVSTATE_FREE &&
+		    kref_get_unless_zero(&service->ref_count)) {
+			service = rcu_pointer_handoff(service);
+			rcu_read_unlock();
+			return service;
+		}
+		rcu_read_unlock();
+	}
+	vchiq_log_info(vchiq_core_log_level,
+		       "Invalid port %d", localport);
+	return NULL;
 }
 
 struct vchiq_service *
@@ -182,22 +181,20 @@ find_service_for_instance(struct vchiq_instance *instance,
 {
 	struct vchiq_service *service;
 
-	spin_lock(&service_spinlock);
+	rcu_read_lock();
 	service = handle_to_service(handle);
 	if (service && service->srvstate != VCHIQ_SRVSTATE_FREE &&
 	    service->handle == handle &&
-	    service->instance == instance) {
-		WARN_ON(service->ref_count == 0);
-		service->ref_count++;
-	} else
-		service = NULL;
-	spin_unlock(&service_spinlock);
-
-	if (!service)
-		vchiq_log_info(vchiq_core_log_level,
-			"Invalid service handle 0x%x", handle);
-
-	return service;
+	    service->instance == instance &&
+	    kref_get_unless_zero(&service->ref_count)) {
+		service = rcu_pointer_handoff(service);
+		rcu_read_unlock();
+		return service;
+	}
+	rcu_read_unlock();
+	vchiq_log_info(vchiq_core_log_level,
+		       "Invalid service handle 0x%x", handle);
+	return NULL;
 }
 
 struct vchiq_service *
@@ -206,23 +203,21 @@ find_closed_service_for_instance(struct vchiq_instance *instance,
 {
 	struct vchiq_service *service;
 
-	spin_lock(&service_spinlock);
+	rcu_read_lock();
 	service = handle_to_service(handle);
 	if (service &&
 	    (service->srvstate == VCHIQ_SRVSTATE_FREE ||
 	     service->srvstate == VCHIQ_SRVSTATE_CLOSED) &&
 	    service->handle == handle &&
-	    service->instance == instance) {
-		WARN_ON(service->ref_count == 0);
-		service->ref_count++;
-	} else
-		service = NULL;
-	spin_unlock(&service_spinlock);
-
-	if (!service)
-		vchiq_log_info(vchiq_core_log_level,
-			"Invalid service handle 0x%x", handle);
-
+	    service->instance == instance &&
+	    kref_get_unless_zero(&service->ref_count)) {
+		service = rcu_pointer_handoff(service);
+		rcu_read_unlock();
+		return service;
+	}
+	rcu_read_unlock();
+	vchiq_log_info(vchiq_core_log_level,
+		       "Invalid service handle 0x%x", handle);
 	return service;
 }
 
@@ -233,19 +228,19 @@ next_service_by_instance(struct vchiq_state *state, struct vchiq_instance *insta
 	struct vchiq_service *service = NULL;
 	int idx = *pidx;
 
-	spin_lock(&service_spinlock);
+	rcu_read_lock();
 	while (idx < state->unused_service) {
-		struct vchiq_service *srv = state->services[idx++];
+		struct vchiq_service *srv;
 
+		srv = rcu_dereference(state->services[idx++]);
 		if (srv && srv->srvstate != VCHIQ_SRVSTATE_FREE &&
-		    srv->instance == instance) {
-			service = srv;
-			WARN_ON(service->ref_count == 0);
-			service->ref_count++;
+		    srv->instance == instance &&
+		    kref_get_unless_zero(&srv->ref_count)) {
+			service = rcu_pointer_handoff(srv);
 			break;
 		}
 	}
-	spin_unlock(&service_spinlock);
+	rcu_read_unlock();
 
 	*pidx = idx;
 
@@ -255,43 +250,34 @@ next_service_by_instance(struct vchiq_state *state, struct vchiq_instance *insta
 void
 lock_service(struct vchiq_service *service)
 {
-	spin_lock(&service_spinlock);
-	WARN_ON(!service);
-	if (service) {
-		WARN_ON(service->ref_count == 0);
-		service->ref_count++;
+	if (!service) {
+		WARN(1, "%s service is NULL\n", __func__);
+		return;
 	}
-	spin_unlock(&service_spinlock);
+	kref_get(&service->ref_count);
+}
+
+static void service_release(struct kref *kref)
+{
+	struct vchiq_service *service =
+		container_of(kref, struct vchiq_service, ref_count);
+	struct vchiq_state *state = service->state;
+
+	WARN_ON(service->srvstate != VCHIQ_SRVSTATE_FREE);
+	rcu_assign_pointer(state->services[service->localport], NULL);
+	if (service->userdata_term)
+		service->userdata_term(service->base.userdata);
+	kfree_rcu(service, rcu);
 }
 
 void
 unlock_service(struct vchiq_service *service)
 {
-	spin_lock(&service_spinlock);
 	if (!service) {
 		WARN(1, "%s: service is NULL\n", __func__);
-		goto unlock;
-	}
-	if (!service->ref_count) {
-		WARN(1, "%s: ref_count is zero\n", __func__);
-		goto unlock;
-	}
-	service->ref_count--;
-	if (!service->ref_count) {
-		struct vchiq_state *state = service->state;
-
-		WARN_ON(service->srvstate != VCHIQ_SRVSTATE_FREE);
-		state->services[service->localport] = NULL;
-	} else {
-		service = NULL;
+		return;
 	}
-unlock:
-	spin_unlock(&service_spinlock);
-
-	if (service && service->userdata_term)
-		service->userdata_term(service->base.userdata);
-
-	kfree(service);
+	kref_put(&service->ref_count, service_release);
 }
 
 int
@@ -310,9 +296,14 @@ vchiq_get_client_id(unsigned int handle)
 void *
 vchiq_get_service_userdata(unsigned int handle)
 {
-	struct vchiq_service *service = handle_to_service(handle);
+	void *userdata;
+	struct vchiq_service *service;
 
-	return service ? service->base.userdata : NULL;
+	rcu_read_lock();
+	service = handle_to_service(handle);
+	userdata = service ? service->base.userdata : NULL;
+	rcu_read_unlock();
+	return userdata;
 }
 
 static void
@@ -460,19 +451,23 @@ get_listening_service(struct vchiq_state *state, int fourcc)
 
 	WARN_ON(fourcc == VCHIQ_FOURCC_INVALID);
 
+	rcu_read_lock();
 	for (i = 0; i < state->unused_service; i++) {
-		struct vchiq_service *service = state->services[i];
+		struct vchiq_service *service;
 
+		service = rcu_dereference(state->services[i]);
 		if (service &&
 		    service->public_fourcc == fourcc &&
 		    (service->srvstate == VCHIQ_SRVSTATE_LISTENING ||
 		     (service->srvstate == VCHIQ_SRVSTATE_OPEN &&
-		      service->remoteport == VCHIQ_PORT_FREE))) {
-			lock_service(service);
+		      service->remoteport == VCHIQ_PORT_FREE)) &&
+		    kref_get_unless_zero(&service->ref_count)) {
+			service = rcu_pointer_handoff(service);
+			rcu_read_unlock();
 			return service;
 		}
 	}
-
+	rcu_read_unlock();
 	return NULL;
 }
 
@@ -482,15 +477,20 @@ get_connected_service(struct vchiq_state *state, unsigned int port)
 {
 	int i;
 
+	rcu_read_lock();
 	for (i = 0; i < state->unused_service; i++) {
-		struct vchiq_service *service = state->services[i];
+		struct vchiq_service *service =
+			rcu_dereference(state->services[i]);
 
 		if (service && service->srvstate == VCHIQ_SRVSTATE_OPEN &&
-		    service->remoteport == port) {
-			lock_service(service);
+		    service->remoteport == port &&
+		    kref_get_unless_zero(&service->ref_count)) {
+			service = rcu_pointer_handoff(service);
+			rcu_read_unlock();
 			return service;
 		}
 	}
+	rcu_read_unlock();
 	return NULL;
 }
 
@@ -2260,7 +2260,7 @@ vchiq_add_service_internal(struct vchiq_state *state,
 			   vchiq_userdata_term userdata_term)
 {
 	struct vchiq_service *service;
-	struct vchiq_service **pservice = NULL;
+	struct vchiq_service __rcu **pservice = NULL;
 	struct vchiq_service_quota *service_quota;
 	int i;
 
@@ -2272,7 +2272,7 @@ vchiq_add_service_internal(struct vchiq_state *state,
 	service->base.callback = params->callback;
 	service->base.userdata = params->userdata;
 	service->handle        = VCHIQ_SERVICE_HANDLE_INVALID;
-	service->ref_count     = 1;
+	kref_init(&service->ref_count);
 	service->srvstate      = VCHIQ_SRVSTATE_FREE;
 	service->userdata_term = userdata_term;
 	service->localport     = VCHIQ_PORT_FREE;
@@ -2298,7 +2298,7 @@ vchiq_add_service_internal(struct vchiq_state *state,
 	mutex_init(&service->bulk_mutex);
 	memset(&service->stats, 0, sizeof(service->stats));
 
-	/* Although it is perfectly possible to use service_spinlock
+	/* Although it is perfectly possible to use a spinlock
 	** to protect the creation of services, it is overkill as it
 	** disables interrupts while the array is searched.
 	** The only danger is of another thread trying to create a
@@ -2316,17 +2316,17 @@ vchiq_add_service_internal(struct vchiq_state *state,
 
 	if (srvstate == VCHIQ_SRVSTATE_OPENING) {
 		for (i = 0; i < state->unused_service; i++) {
-			struct vchiq_service *srv = state->services[i];
-
-			if (!srv) {
+			if (!rcu_access_pointer(state->services[i])) {
 				pservice = &state->services[i];
 				break;
 			}
 		}
 	} else {
+		rcu_read_lock();
 		for (i = (state->unused_service - 1); i >= 0; i--) {
-			struct vchiq_service *srv = state->services[i];
+			struct vchiq_service *srv;
 
+			srv = rcu_dereference(state->services[i]);
 			if (!srv)
 				pservice = &state->services[i];
 			else if ((srv->public_fourcc == params->fourcc)
@@ -2339,6 +2339,7 @@ vchiq_add_service_internal(struct vchiq_state *state,
 				break;
 			}
 		}
+		rcu_read_unlock();
 	}
 
 	if (pservice) {
@@ -2350,7 +2351,7 @@ vchiq_add_service_internal(struct vchiq_state *state,
 			(state->id * VCHIQ_MAX_SERVICES) |
 			service->localport;
 		handle_seq += VCHIQ_MAX_STATES * VCHIQ_MAX_SERVICES;
-		*pservice = service;
+		rcu_assign_pointer(*pservice, service);
 		if (pservice == &state->services[state->unused_service])
 			state->unused_service++;
 	}
@@ -2416,10 +2417,10 @@ vchiq_open_service_internal(struct vchiq_service *service, int client_id)
 			   (service->srvstate != VCHIQ_SRVSTATE_OPENSYNC)) {
 			if (service->srvstate != VCHIQ_SRVSTATE_CLOSEWAIT)
 				vchiq_log_error(vchiq_core_log_level,
-						"%d: osi - srvstate = %s (ref %d)",
+						"%d: osi - srvstate = %s (ref %u)",
 						service->state->id,
 						srvstate_names[service->srvstate],
-						service->ref_count);
+						kref_read(&service->ref_count));
 			status = VCHIQ_ERROR;
 			VCHIQ_SERVICE_STATS_INC(service, error_count);
 			vchiq_release_service_internal(service);
@@ -3425,10 +3426,13 @@ int vchiq_dump_service_state(void *dump_context, struct vchiq_service *service)
 	char buf[80];
 	int len;
 	int err;
+	unsigned int ref_count;
 
+	/*Don't include the lock just taken*/
+	ref_count = kref_read(&service->ref_count) - 1;
 	len = scnprintf(buf, sizeof(buf), "Service %u: %s (ref %u)",
 			service->localport, srvstate_names[service->srvstate],
-			service->ref_count - 1); /*Don't include the lock just taken*/
+			ref_count);
 
 	if (service->srvstate != VCHIQ_SRVSTATE_FREE) {
 		char remoteport[30];
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
index 604d0c330819..30e4965c7666 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
@@ -7,6 +7,8 @@
 #include <linux/mutex.h>
 #include <linux/completion.h>
 #include <linux/kthread.h>
+#include <linux/kref.h>
+#include <linux/rcupdate.h>
 #include <linux/wait.h>
 
 #include "vchiq_cfg.h"
@@ -251,7 +253,8 @@ struct vchiq_slot_info {
 struct vchiq_service {
 	struct vchiq_service_base base;
 	unsigned int handle;
-	unsigned int ref_count;
+	struct kref ref_count;
+	struct rcu_head rcu;
 	int srvstate;
 	vchiq_userdata_term userdata_term;
 	unsigned int localport;
@@ -464,7 +467,7 @@ struct vchiq_state {
 		int error_count;
 	} stats;
 
-	struct vchiq_service *services[VCHIQ_MAX_SERVICES];
+	struct vchiq_service __rcu *services[VCHIQ_MAX_SERVICES];
 	struct vchiq_service_quota service_quotas[VCHIQ_MAX_SERVICES];
 	struct vchiq_slot_info slot_info[VCHIQ_MAX_SLOTS];
 
@@ -545,12 +548,13 @@ request_poll(struct vchiq_state *state, struct vchiq_service *service,
 static inline struct vchiq_service *
 handle_to_service(unsigned int handle)
 {
+	int idx = handle & (VCHIQ_MAX_SERVICES - 1);
 	struct vchiq_state *state = vchiq_states[(handle / VCHIQ_MAX_SERVICES) &
 		(VCHIQ_MAX_STATES - 1)];
+
 	if (!state)
 		return NULL;
-
-	return state->services[handle & (VCHIQ_MAX_SERVICES - 1)];
+	return rcu_dereference(state->services[idx]);
 }
 
 extern struct vchiq_service *
-- 
2.25.0.225.g125e21ebc7-goog


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
