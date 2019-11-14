Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0398FD192
	for <lists+linux-rpi-kernel@lfdr.de>; Fri, 15 Nov 2019 00:28:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=i6H7/dgzkivVu2N64pJT4tcq7bspxn2lOZMluPJ7p48=; b=sNUSJqcWyE9Guj
	CSq35EN6NPOXeIX0sDapMMcv/ICF4n30s8qu4vj+HzrnuHgDHUfYcE58v/RLBU0QHw53gmH1QzZv5
	5uASEDOFzWmXZjateosK0OQzAlyr4h404cXmgogu+uwuVP3r6JWyIWdLwMa6tQxivDYF51MYgBGLJ
	3sf9lh5wJ3hLuKTd1A6jEKAMBikpDcmhYjblsqY2AEm9j/26Wbo3aLXWUU2SHlFYm0EKTUa6w+Jaj
	xYxyh/rhd16oH5Dcr2V+wc1iZKpquBi3KxssBA81B9GYTvDvqJmAfh96YQysUoyyvkI+CMJxN2i4X
	Nd5MNxITP+LwrVWOiFiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVOXD-00070E-JU; Thu, 14 Nov 2019 23:28:19 +0000
Received: from mail-qt1-x849.google.com ([2607:f8b0:4864:20::849])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVOWy-0006qn-Kb
 for linux-rpi-kernel@lists.infradead.org; Thu, 14 Nov 2019 23:28:06 +0000
Received: by mail-qt1-x849.google.com with SMTP id r12so5142176qtp.21
 for <linux-rpi-kernel@lists.infradead.org>;
 Thu, 14 Nov 2019 15:28:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=m3sUjMo5TITsLhBkb0IY/Rd+cWpNa+tQjru4b9meZGI=;
 b=JPaM1lPYUKaG4m8vo62ydMIXhjAg9ji69IDmqOGAayfXXA/4vtJ+Hjh02y1+6OwHDU
 /ODBvI0MrYz8J6DPy+cgdzUJUwq7xouxVAYnQkjdSnj5tUladQD0ZzaKk8RwBD2oeLo9
 AXqaUH0NTndulQKTwygB9M6yo48MNt0RQWyuiXy9KAJnTOjrtliOhSB/ZBPbSwG2j+sh
 bNCzukoun+BvF0pTpDevxezdo40bav9y3BLKCpyxKkV0ybhDACQ1vbWp178dDOjQOVHd
 q2+3ZUwfjCXt6Ghx6xSqtuyjGc4jJa7n/YYXoBQ+9tAFtpylbvoEezWVvgdJ1L4qrb2s
 vWdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=m3sUjMo5TITsLhBkb0IY/Rd+cWpNa+tQjru4b9meZGI=;
 b=eJXbTjhaKAo7Hu77UV+DWT57+imJcx6blWsysP1EpwTi4GnQifobXqwYqHiMPh6ImV
 ulZRR4hdzUnfldmmDtbEbUxD7UFnKhvHNGC4czgJtbwuHrcZ8hWDDeg7HnthsE3PCsOu
 LvbXK+zh49n/dnti/iiwj60o71ZFCZrpk91WYH34jU3Ct4M1ifYIRDlnAdImwZJWZ8eO
 nNsR8Xv8eXBHbw6cA/1oyJUCQBrlyVpoLFHZhIZ9UVnh9JAEPSeatF8eiAAEEaKVeBtV
 7mvoZ+1wsU8gAf493DWhnp/6JB+tvJ+mKOYqnOG8ix4eMmMBnZq9h2AZrgP16WMi35lr
 t99A==
X-Gm-Message-State: APjAAAVcRPIwH6wVQezk3aXigbVuXJf/XOV0BJKh8DmdbFcja2Virkxp
 ymHM62gWGv8MmYbloRxiaUAZgBibnNJsF1zwSV4=
X-Google-Smtp-Source: APXvYqz94VHme2VfNtjjyGFXcoEXHxiKkfxxWX3ZYEDIThQrfHSoS2lI5on1Fsgp+E737EFTVG6Jag2E1aDJiAnkWiM=
X-Received: by 2002:a37:424e:: with SMTP id p75mr6406627qka.239.1573774082562; 
 Thu, 14 Nov 2019 15:28:02 -0800 (PST)
Date: Thu, 14 Nov 2019 18:28:01 -0500
Message-Id: <20191114232801.71458-1-marcgonzalez@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.24.0.432.g9d3f5f5b63-goog
Subject: [PATCH] staging: vchiq: Refactor indentation in
 vchiq_platform_conn_state_changed()
From: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
To: gregkh@linuxfoundation.org, eric@anholt.net, wahrenst@gmx.net
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_152804_696939_923A85E5 
X-CRM114-Status: UNSURE (   9.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:849 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

Reducing the indentation level helps a bit with
the readability of this function. There's also a checkpatch
fix here, moving the first argument to kthread_create() onto
the same line, as well as a relocation of the statement
"char threadname[16];" to the top of the function to avoid
a declaration in the middle of code.

Signed-off-by: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
---
 .../interface/vchiq_arm/vchiq_arm.c           | 41 ++++++++++---------
 1 file changed, 21 insertions(+), 20 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index b1595b13dea8..e09cc42fe984 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -3132,31 +3132,32 @@ void vchiq_platform_conn_state_changed(struct vchiq_state *state,
 				       VCHIQ_CONNSTATE_T newstate)
 {
 	struct vchiq_arm_state *arm_state = vchiq_platform_get_arm_state(state);
+	char threadname[16];
 
 	vchiq_log_info(vchiq_susp_log_level, "%d: %s->%s", state->id,
 		get_conn_state_name(oldstate), get_conn_state_name(newstate));
-	if (state->conn_state == VCHIQ_CONNSTATE_CONNECTED) {
-		write_lock_bh(&arm_state->susp_res_lock);
-		if (!arm_state->first_connect) {
-			char threadname[16];
+	if (state->conn_state != VCHIQ_CONNSTATE_CONNECTED)
+		return;
 
-			arm_state->first_connect = 1;
-			write_unlock_bh(&arm_state->susp_res_lock);
-			snprintf(threadname, sizeof(threadname), "vchiq-keep/%d",
-				state->id);
-			arm_state->ka_thread = kthread_create(
-				&vchiq_keepalive_thread_func,
-				(void *)state,
+	write_lock_bh(&arm_state->susp_res_lock);
+	if (arm_state->first_connect) {
+		write_unlock_bh(&arm_state->susp_res_lock);
+		return;
+	}
+
+	arm_state->first_connect = 1;
+	write_unlock_bh(&arm_state->susp_res_lock);
+	snprintf(threadname, sizeof(threadname), "vchiq-keep/%d",
+		 state->id);
+	arm_state->ka_thread = kthread_create(&vchiq_keepalive_thread_func,
+					      (void *)state,
+					      threadname);
+	if (IS_ERR(arm_state->ka_thread)) {
+		vchiq_log_error(vchiq_susp_log_level,
+				"vchiq: FATAL: couldn't create thread %s",
 				threadname);
-			if (IS_ERR(arm_state->ka_thread)) {
-				vchiq_log_error(vchiq_susp_log_level,
-					"vchiq: FATAL: couldn't create thread %s",
-					threadname);
-			} else {
-				wake_up_process(arm_state->ka_thread);
-			}
-		} else
-			write_unlock_bh(&arm_state->susp_res_lock);
+	} else {
+		wake_up_process(arm_state->ka_thread);
 	}
 }
 
-- 
2.20.1


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
