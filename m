Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5978614EB41
	for <lists+linux-rpi-kernel@lfdr.de>; Fri, 31 Jan 2020 11:46:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V7YhZ8/7IudfM6HACrKUSOyViYVVDpbUUHEf5KhoBn0=; b=lszTqb79YJjLmK
	93+wWPs24UWeawn4Nn45lHDg9DBUXY5woD29pbWTmk5dB5attgfaDqR0Bapy5oqtqpe4Y6AbgEzot
	AP3TU244milxkh2oqh3g56MEV2ECTAzIcUtclxbPXVR8OWkwYHmPgbzkZ9ABQRe0GnW6HL9edOTaJ
	IEkm/eDaijS+iLoNARLJXqXU6B1gVsbDpe63OfRKlNxxH03PJGgne6LeCcZd6cw07+9GCV7mrWmdG
	Ja9ZQjJMesYyAkKyW/HGyqkCet+oZ6mDph/BK/Q6qMqzKBtljr/S3kP3jp2quRXVAfiOcG3t99dif
	xX7a5nRkWmPxv4JMLefg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixTpA-00048U-H1; Fri, 31 Jan 2020 10:46:56 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixTho-0003fQ-UF; Fri, 31 Jan 2020 10:39:22 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 67526AF96;
 Fri, 31 Jan 2020 10:39:19 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: gregkh@linuxfoundation.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 19/21] staging: vc04_services: Delete
 vchiq_platform_check_suspend()
Date: Fri, 31 Jan 2020 11:38:35 +0100
Message-Id: <20200131103836.14312-20-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200131103836.14312-1-nsaenzjulienne@suse.de>
References: <20200131103836.14312-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_023921_235108_A80B5195 
X-CRM114-Status: GOOD (  10.07  )
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

The function does nothing.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 .../vc04_services/interface/vchiq_arm/vchiq_arm.c | 15 ---------------
 .../interface/vchiq_arm/vchiq_core.c              |  3 ---
 .../interface/vchiq_arm/vchiq_core.h              |  3 ---
 3 files changed, 21 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index e753ccffd588..81b1c98cae3c 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -2345,21 +2345,6 @@ vchiq_arm_init_state(struct vchiq_state *state,
 	return VCHIQ_SUCCESS;
 }
 
-void
-vchiq_platform_check_suspend(struct vchiq_state *state)
-{
-	struct vchiq_arm_state *arm_state = vchiq_platform_get_arm_state(state);
-
-	if (!arm_state)
-		goto out;
-
-	vchiq_log_trace(vchiq_susp_log_level, "%s", __func__);
-
-out:
-	vchiq_log_trace(vchiq_susp_log_level, "%s exit", __func__);
-	return;
-}
-
 enum vchiq_status
 vchiq_use_internal(struct vchiq_state *state, struct vchiq_service *service,
 		   enum USE_TYPE_E use_type)
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
index c5493dee6dd7..d5957411d906 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
@@ -1866,9 +1866,6 @@ slot_handler_func(void *v)
 
 		DEBUG_TRACE(SLOT_HANDLER_LINE);
 		if (state->poll_needed) {
-			/* Check if we need to suspend - may change our
-			 * conn_state */
-			vchiq_platform_check_suspend(state);
 
 			state->poll_needed = 0;
 
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
index 11037a499408..604d0c330819 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
@@ -590,9 +590,6 @@ vchiq_complete_bulk(struct vchiq_bulk *bulk);
 extern void
 remote_event_signal(struct remote_event *event);
 
-void
-vchiq_platform_check_suspend(struct vchiq_state *state);
-
 extern int
 vchiq_dump(void *dump_context, const char *str, int len);
 
-- 
2.25.0


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
