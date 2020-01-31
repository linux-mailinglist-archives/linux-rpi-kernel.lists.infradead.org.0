Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF84814EB40
	for <lists+linux-rpi-kernel@lfdr.de>; Fri, 31 Jan 2020 11:46:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xaaih5HmeB1CMiPnnNt1JqDLqw5U/DufthMqlmT1M+U=; b=EY3AVffLMoUP0K
	uYEqPfyxCt36FsbAJK9PcGs41VJbPhL4NhL3C9bJRAfiHJpYj2c9iNS9+B9uR2eg3jLHb2sTlmbFt
	RjZbdFXAtuPbkvnUzQqu/rY0DiH1HDXyBkNBHYo+3u9VXFPkMzfXx8H+l5IRHjEXTg1SeUZD1NXUp
	AwwbbxhJcNx7nPqvUYM0HG4gZ1MfT60Z/3+JCtn+rgXs84uY/q1YE79AEdHi4VSBYLjBcLmJ/pF7F
	/D0O0OLhfxDn6pXG7XRxJeqY3kXJ9uDJo4k8GEJrqAGVSrG5xCC0KwDpYRSo0ABbKTxjIfA6xtLmg
	9vziyeBsu4ArKgsw8dww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixTp7-000453-Iu; Fri, 31 Jan 2020 10:46:53 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixThm-0003d3-Ft; Fri, 31 Jan 2020 10:39:20 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 1A3D2AFF4;
 Fri, 31 Jan 2020 10:39:17 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: gregkh@linuxfoundation.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 16/21] staging: vc04_services: Get of even more
 suspend/resume states
Date: Fri, 31 Jan 2020 11:38:32 +0100
Message-Id: <20200131103836.14312-17-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200131103836.14312-1-nsaenzjulienne@suse.de>
References: <20200131103836.14312-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_023918_870288_401ECCB1 
X-CRM114-Status: GOOD (  16.88  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-arm-kernel@lists.infradead.org, devel@driverdev.osuosl.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

After the first states cleanup pass some set_suspend/resume_state()
calls disappeared which opened up even more opportunities for deletions.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 .../interface/vchiq_arm/vchiq_arm.c           | 100 +-----------------
 .../interface/vchiq_arm/vchiq_arm.h           |  12 ---
 2 files changed, 5 insertions(+), 107 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index db7ae204f50f..cee643a33642 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -48,15 +48,8 @@
 int vchiq_arm_log_level = VCHIQ_LOG_DEFAULT;
 int vchiq_susp_log_level = VCHIQ_LOG_ERROR;
 
-#define VC_SUSPEND_NUM_OFFSET 3 /* number of values before idle which are -ve */
-static const char *const suspend_state_names[] = {
-	"VC_SUSPEND_IDLE",
-	"VC_SUSPEND_IN_PROGRESS",
-};
 #define VC_RESUME_NUM_OFFSET 1 /* number of values before idle which are -ve */
 static const char *const resume_state_names[] = {
-	"VC_RESUME_IDLE",
-	"VC_RESUME_REQUESTED",
 	"VC_RESUME_RESUMED"
 };
 /* The number of times we allow force suspend to timeout before actually
@@ -2361,63 +2354,6 @@ vchiq_arm_init_state(struct vchiq_state *state,
 	return VCHIQ_SUCCESS;
 }
 
-/*
-** Functions to modify the state variables;
-**	set_suspend_state
-**	set_resume_state
-**
-** There are more state variables than we might like, so ensure they remain in
-** step.  Suspend and resume state are maintained separately, since most of
-** these state machines can operate independently.  However, there are a few
-** states where state transitions in one state machine cause a reset to the
-** other state machine.  In addition, there are some completion events which
-** need to occur on state machine reset and end-state(s), so these are also
-** dealt with in these functions.
-**
-** In all states we set the state variable according to the input, but in some
-** cases we perform additional steps outlined below;
-**
-** VC_SUSPEND_IDLE - Initialise the suspend completion at the same time.
-**			The suspend completion is completed after any suspend
-**			attempt.  When we reset the state machine we also reset
-**			the completion.  This reset occurs when videocore is
-**			resumed, and also if we initiate suspend after a suspend
-**			failure.
-**
-** VC_SUSPEND_IN_PROGRESS - This state is considered the point of no return for
-**			suspend - ie from this point on we must try to suspend
-**			before resuming can occur.  We therefore also reset the
-**			resume state machine to VC_RESUME_IDLE in this state.
-**
-** VC_RESUME_IDLE - Initialise the resume completion at the same time.  The
-**			resume completion is in it's 'done' state whenever
-**			videcore is running.  Therefore, the VC_RESUME_IDLE
-**			state implies that videocore is suspended.
-**			Hence, any thread which needs to wait until videocore is
-**			running can wait on this completion - it will only block
-**			if videocore is suspended.
-*/
-
-void
-set_suspend_state(struct vchiq_arm_state *arm_state,
-		  enum vc_suspend_status new_state)
-{
-	/* set the state in all cases */
-	arm_state->vc_suspend_state = new_state;
-
-	/* state specific additional actions */
-	switch (new_state) {
-	case VC_SUSPEND_IDLE:
-		break;
-	case VC_SUSPEND_IN_PROGRESS:
-		set_resume_state(arm_state, VC_RESUME_IDLE);
-		break;
-	default:
-		BUG();
-		break;
-	}
-}
-
 void
 set_resume_state(struct vchiq_arm_state *arm_state,
 		 enum vc_resume_status new_state)
@@ -2427,14 +2363,8 @@ set_resume_state(struct vchiq_arm_state *arm_state,
 
 	/* state specific additional actions */
 	switch (new_state) {
-	case VC_RESUME_IDLE:
-		reinit_completion(&arm_state->vc_resume_complete);
-		break;
-	case VC_RESUME_REQUESTED:
-		break;
 	case VC_RESUME_RESUMED:
 		complete_all(&arm_state->vc_resume_complete);
-		set_suspend_state(arm_state, VC_SUSPEND_IDLE);
 		break;
 	default:
 		BUG();
@@ -2442,15 +2372,6 @@ set_resume_state(struct vchiq_arm_state *arm_state,
 	}
 }
 
-static inline int
-need_resume(struct vchiq_state *state)
-{
-	struct vchiq_arm_state *arm_state = vchiq_platform_get_arm_state(state);
-
-	return (arm_state->vc_suspend_state > VC_SUSPEND_IDLE) &&
-			(arm_state->vc_resume_state < VC_RESUME_REQUESTED);
-}
-
 void
 vchiq_platform_check_suspend(struct vchiq_state *state)
 {
@@ -2500,16 +2421,9 @@ vchiq_use_internal(struct vchiq_state *state, struct vchiq_service *service,
 	local_uc = ++arm_state->videocore_use_count;
 	local_entity_uc = ++(*entity_uc);
 
-	if ((use_type != USE_TYPE_SERVICE_NO_RESUME) && need_resume(state)) {
-		set_resume_state(arm_state, VC_RESUME_REQUESTED);
-		vchiq_log_info(vchiq_susp_log_level,
-			"%s %s count %d, state count %d",
-			__func__, entity, local_entity_uc, local_uc);
-		request_poll(state, NULL, 0);
-	} else
-		vchiq_log_trace(vchiq_susp_log_level,
-			"%s %s count %d, state count %d",
-			__func__, entity, *entity_uc, local_uc);
+	vchiq_log_trace(vchiq_susp_log_level,
+		"%s %s count %d, state count %d",
+		__func__, entity, *entity_uc, local_uc);
 
 	write_unlock_bh(&arm_state->susp_res_lock);
 
@@ -2720,7 +2634,6 @@ vchiq_dump_service_use_state(struct vchiq_state *state)
 	int only_nonzero = 0;
 	static const char *nz = "<-- preventing suspend";
 
-	enum vc_suspend_status vc_suspend_state;
 	enum vc_resume_status  vc_resume_state;
 	int peer_count;
 	int vc_use_count;
@@ -2735,7 +2648,6 @@ vchiq_dump_service_use_state(struct vchiq_state *state)
 		return;
 
 	read_lock_bh(&arm_state->susp_res_lock);
-	vc_suspend_state = arm_state->vc_suspend_state;
 	vc_resume_state  = arm_state->vc_resume_state;
 	peer_count = arm_state->peer_use_count;
 	vc_use_count = arm_state->videocore_use_count;
@@ -2814,12 +2726,10 @@ vchiq_check_service(struct vchiq_service *service)
 	if (ret == VCHIQ_ERROR) {
 		vchiq_log_error(vchiq_susp_log_level,
 			"%s ERROR - %c%c%c%c:%d service count %d, "
-			"state count %d, videocore suspend state %s", __func__,
+			"state count %d", __func__,
 			VCHIQ_FOURCC_AS_4CHARS(service->base.fourcc),
 			service->client_id, service->service_use_count,
-			arm_state->videocore_use_count,
-			suspend_state_names[arm_state->vc_suspend_state +
-						VC_SUSPEND_NUM_OFFSET]);
+			arm_state->videocore_use_count);
 		vchiq_dump_service_use_state(service->state);
 	}
 out:
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
index afd822546e2e..b1fad282db04 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
@@ -14,14 +14,7 @@
 #include "vchiq_core.h"
 #include "vchiq_debugfs.h"
 
-enum vc_suspend_status {
-	VC_SUSPEND_IDLE = 0,       /* VC active, no suspend actions */
-	VC_SUSPEND_IN_PROGRESS,    /* Slot handler has recvd suspend request */
-};
-
 enum vc_resume_status {
-	VC_RESUME_IDLE = 0,    /* VC suspended, no resume actions */
-	VC_RESUME_REQUESTED,   /* User has requested resume */
 	VC_RESUME_RESUMED      /* Videocore resumed successfully (active) */
 };
 
@@ -42,7 +35,6 @@ struct vchiq_arm_state {
 	struct completion vc_resume_complete;
 
 	rwlock_t susp_res_lock;
-	enum vc_suspend_status vc_suspend_state;
 	enum vc_resume_status vc_resume_state;
 
 	struct vchiq_state *state;
@@ -130,10 +122,6 @@ vchiq_instance_get_trace(struct vchiq_instance *instance);
 extern void
 vchiq_instance_set_trace(struct vchiq_instance *instance, int trace);
 
-extern void
-set_suspend_state(struct vchiq_arm_state *arm_state,
-		  enum vc_suspend_status new_state);
-
 extern void
 set_resume_state(struct vchiq_arm_state *arm_state,
 		 enum vc_resume_status new_state);
-- 
2.25.0


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
