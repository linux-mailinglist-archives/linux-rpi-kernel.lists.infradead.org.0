Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8912B148A69
	for <lists+linux-rpi-kernel@lfdr.de>; Fri, 24 Jan 2020 15:47:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BIes4T1Humx7J25Teca+OKjUEFO/61GjIUVkNcL34mA=; b=Fv4Ye+s5SYaIu4
	yRfa8wRLyfAmVVOIVw7i2ROauafQ/88VholMt3Up0xcGJNV14ZB8YGNEbMzy63jWARUNkO5milpjY
	ePuUP9EcIXN7wVFN3mCCzdYapin8eiw//rXIsEvgpzn6dryfyb7b8FGTc+K9lJ60ZAFTFlw3gvNY+
	rwszKO75zoOP6PQG1/Q0vdvBS0meOzYiJ7m7uzM3ycKBUa+/WP0A12cdSyPMts4gQpwB7u1nWrLOQ
	95R+D7fFvK4/mXiaixa5uMZe36eT+sEWZMWFH9BR/FgVUCSL4vaMHhEUDUdxymWDxCcxmi5i1NxYJ
	u1uE+OBFVk1wDa98zhvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iv0F6-0008HB-I3; Fri, 24 Jan 2020 14:47:28 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iv0EC-0007ba-A4; Fri, 24 Jan 2020 14:46:33 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 26D10AFBB;
 Fri, 24 Jan 2020 14:46:30 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: gregkh@linuxfoundation.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 01/22] staging: vc04_services: Remove unused variables in
 struct vchiq_arm_state
Date: Fri, 24 Jan 2020 15:45:55 +0100
Message-Id: <20200124144617.2213-2-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200124144617.2213-1-nsaenzjulienne@suse.de>
References: <20200124144617.2213-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_064632_489845_B07E16D3 
X-CRM114-Status: GOOD (  10.23  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
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

There are not being used, so we're better off without them.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 .../vc04_services/interface/vchiq_arm/vchiq_arm.h      | 10 ----------
 1 file changed, 10 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
index 19d2a2eefb6a..f0044289b6bc 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
@@ -53,8 +53,6 @@ struct vchiq_arm_state {
 	enum vc_suspend_status vc_suspend_state;
 	enum vc_resume_status vc_resume_state;
 
-	unsigned int wake_address;
-
 	struct vchiq_state *state;
 	struct timer_list suspend_timer;
 	int suspend_timer_timeout;
@@ -80,19 +78,11 @@ struct vchiq_arm_state {
 	struct completion blocked_blocker;
 	int blocked_count;
 
-	int autosuspend_override;
-
 	/* Flag to indicate that the first vchiq connect has made it through.
 	** This means that both sides should be fully ready, and we should
 	** be able to suspend after this point.
 	*/
 	int first_connect;
-
-	unsigned long long suspend_start_time;
-	unsigned long long sleep_start_time;
-	unsigned long long resume_start_time;
-	unsigned long long last_wake_time;
-
 };
 
 struct vchiq_drvdata {
-- 
2.25.0


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
