Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49B39148A95
	for <lists+linux-rpi-kernel@lfdr.de>; Fri, 24 Jan 2020 15:52:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dTeNSesn49N7Ua0Tdlt7qPerCwHFn3EpI5EMcaT9bTY=; b=N68v/Bfrzpdq4U
	TJEmPhVLgWWyPuLY0zFLxD2minXQRE+D1mWePGPU9kG8ayunBAQijVdGiXKePs0uUKmAyyE7nx6Op
	BcU7iQhuZ4+hRgmZmyyiurFr1Xf8npaQPMHB+T1NT/x6G4HRzMaUJegPqFbAZ0Ee++qI0nRRZVaE6
	S3MH4yAwiHH3bzqXA/5DXnMmmFPmk4qoC0tc2T+3jIeiwVTs4xh3aIT3ims9BgdRLcqa7+6tsNiU+
	YBeDRgR8SdDB1ap+D4JudR95Rj3sd0awf3CwVC57qkQLg7iHhR9VDh09/NDcsJ9qxb2m3s+sSF7Tt
	ZVuNnxqcaGaecl9c0UiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iv0Jh-0005E1-63; Fri, 24 Jan 2020 14:52:13 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iv0EG-0007eZ-RP; Fri, 24 Jan 2020 14:46:39 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 87099AFBF;
 Fri, 24 Jan 2020 14:46:35 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: gregkh@linuxfoundation.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 08/22] staging: vc04_services: Get rid of
 vchiq_platform_suspend/resume()
Date: Fri, 24 Jan 2020 15:46:02 +0100
Message-Id: <20200124144617.2213-9-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200124144617.2213-1-nsaenzjulienne@suse.de>
References: <20200124144617.2213-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_064637_228900_B357EBB9 
X-CRM114-Status: GOOD (  10.93  )
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

vchiq_platform_suspend() and vchiq_platform_resume() do nothing, get rid
of them.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 .../interface/vchiq_arm/vchiq_2835_arm.c             | 12 ------------
 .../vc04_services/interface/vchiq_arm/vchiq_arm.c    |  8 +-------
 .../vc04_services/interface/vchiq_arm/vchiq_arm.h    |  3 ---
 .../vc04_services/interface/vchiq_arm/vchiq_core.c   |  4 ----
 .../vc04_services/interface/vchiq_arm/vchiq_core.h   |  3 ---
 5 files changed, 1 insertion(+), 29 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
index 5f59145f251b..65e26a90c1db 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
@@ -257,18 +257,6 @@ int vchiq_dump_platform_state(void *dump_context)
 	return vchiq_dump(dump_context, buf, len + 1);
 }
 
-enum vchiq_status
-vchiq_platform_suspend(struct vchiq_state *state)
-{
-	return VCHIQ_ERROR;
-}
-
-enum vchiq_status
-vchiq_platform_resume(struct vchiq_state *state)
-{
-	return VCHIQ_SUCCESS;
-}
-
 int
 vchiq_platform_videocore_wanted(struct vchiq_state *state)
 {
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index a75d5092cc73..3c374686ce89 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -2572,7 +2572,6 @@ void
 vchiq_platform_check_suspend(struct vchiq_state *state)
 {
 	struct vchiq_arm_state *arm_state = vchiq_platform_get_arm_state(state);
-	int susp = 0;
 
 	if (!arm_state)
 		goto out;
@@ -2581,15 +2580,10 @@ vchiq_platform_check_suspend(struct vchiq_state *state)
 
 	write_lock_bh(&arm_state->susp_res_lock);
 	if (arm_state->vc_suspend_state == VC_SUSPEND_REQUESTED &&
-			arm_state->vc_resume_state == VC_RESUME_RESUMED) {
+			arm_state->vc_resume_state == VC_RESUME_RESUMED)
 		set_suspend_state(arm_state, VC_SUSPEND_IN_PROGRESS);
-		susp = 1;
-	}
 	write_unlock_bh(&arm_state->susp_res_lock);
 
-	if (susp)
-		vchiq_platform_suspend(state);
-
 out:
 	vchiq_log_trace(vchiq_susp_log_level, "%s exit", __func__);
 	return;
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
index 6daeb3e4f4b1..1f1ec679584b 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
@@ -112,9 +112,6 @@ vchiq_release_service(unsigned int handle);
 extern enum vchiq_status
 vchiq_check_service(struct vchiq_service *service);
 
-extern enum vchiq_status
-vchiq_platform_suspend(struct vchiq_state *state);
-
 extern int
 vchiq_platform_videocore_wanted(struct vchiq_state *state);
 
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
index 71342826ed33..ef8340ab8a52 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
@@ -1895,10 +1895,6 @@ slot_handler_func(void *v)
 				}
 				break;
 
-			case VCHIQ_CONNSTATE_PAUSED:
-				vchiq_platform_resume(state);
-				break;
-
 			case VCHIQ_CONNSTATE_RESUMING:
 				if (queue_message(state, NULL,
 					VCHIQ_MAKE_MSG(VCHIQ_MSG_RESUME, 0, 0),
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
index 72c88fe5feb1..535a67cc68ed 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
@@ -593,9 +593,6 @@ remote_event_signal(struct remote_event *event);
 void
 vchiq_platform_check_suspend(struct vchiq_state *state);
 
-extern enum vchiq_status
-vchiq_platform_resume(struct vchiq_state *state);
-
 extern int
 vchiq_dump(void *dump_context, const char *str, int len);
 
-- 
2.25.0


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
