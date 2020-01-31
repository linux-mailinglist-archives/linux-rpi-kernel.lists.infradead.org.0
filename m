Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0140714EB0A
	for <lists+linux-rpi-kernel@lfdr.de>; Fri, 31 Jan 2020 11:40:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IKM1vjDAdmfbCkCNaKSQ2995o3eSYa1AGNcYh3HhwYM=; b=CV6QhTQabvxUHD
	+Tv51dvHconSU/52YONmr/8HSN9ZGssGsyyoX6ybuXJrN9QZhmuQhstY9+vuKPgG/1s2cEwGYqCV7
	32c8eJ6LAFZ5nUK9/b0g7gsJE62/T5flhG2I4GHCViS5CXcjnyHniA/RQR9/rfTyf/x4H9wAwq0Kz
	cZ9tZChfE3ojjs8Dr/6aB0Od4BzC9N8yiWqAfgAuAtX8oxsbIGi8QJ6pfdy1jxIODGqs9UIGONvvo
	LTI97YzAambZXRENE4asYwsNEMe9Bk3brb7+CBC9Cwsck2a3Ws8WtoDSr9IIaycxkTIHjkHJbcQXL
	F/jIVn8DOV4d3+nUuRwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixTjG-0005zS-Fw; Fri, 31 Jan 2020 10:40:50 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixThc-0003Tk-Is; Fri, 31 Jan 2020 10:39:10 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 567E9AFF4;
 Fri, 31 Jan 2020 10:39:07 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: gregkh@linuxfoundation.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 04/21] staging: vc04_services: get rid of blocked_blocker
 completion in struct vchiq_arm_state
Date: Fri, 31 Jan 2020 11:38:20 +0100
Message-Id: <20200131103836.14312-5-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200131103836.14312-1-nsaenzjulienne@suse.de>
References: <20200131103836.14312-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_023908_765917_6D78F687 
X-CRM114-Status: GOOD (  11.10  )
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

Nobody is waiting on it, so delete it.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 .../staging/vc04_services/interface/vchiq_arm/vchiq_arm.c    | 5 -----
 .../staging/vc04_services/interface/vchiq_arm/vchiq_arm.h    | 1 -
 2 files changed, 6 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index 311df3d85494..9264bb5d0bbe 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -2386,11 +2386,6 @@ vchiq_arm_init_state(struct vchiq_state *state,
 		 * completion while videocore is suspended. */
 		set_resume_state(arm_state, VC_RESUME_RESUMED);
 
-		init_completion(&arm_state->blocked_blocker);
-		/* Initialise to 'done' state.  We only want to block on this
-		 * completion while things are waiting on the resume blocker */
-		complete_all(&arm_state->blocked_blocker);
-
 		arm_state->suspend_timer_timeout = SUSPEND_TIMER_TIMEOUT_MS;
 		arm_state->suspend_timer_running = 0;
 		arm_state->state = state;
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
index 7d1316875343..6bab241313b8 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
@@ -70,7 +70,6 @@ struct vchiq_arm_state {
 	*/
 	int peer_use_count;
 
-	struct completion blocked_blocker;
 	int blocked_count;
 
 	/* Flag to indicate that the first vchiq connect has made it through.
-- 
2.25.0


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
