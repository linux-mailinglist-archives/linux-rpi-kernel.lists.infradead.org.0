Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B923718BC10
	for <lists+linux-rpi-kernel@lfdr.de>; Thu, 19 Mar 2020 17:13:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=wBrDPIDbs4FwJhnlrqOqg5AKClGEozo+ehWyCt1ewS4=; b=s4v
	b7uUFclewDwF6sX5yFAMqUtgraIy8jfaIwAtNsQR9BxiP6PLRz81iRG+D/YaInHx9Hbxo0KXCsM55
	0noP2tlFED+CPprlPYiwiR4EO34fOx7G4QgOYvpfxkXUjSnl7tuZM8oKyNFHmZ4G/G4anrDo6rA66
	kLt9ehJ/UG7RvOdn5xr0N4W+LM2ylvX4KPm8EWQjKmMeYoGS3jWHhfdEJ6CNvqzUi5gDoNOIYdVGR
	AjZd+imNRO7FU+oFlKTuijbo5uxFftbKIKD4om/yv6yfGCoS8Zo8fQvLhJHFNAIScE605d/VbYVyu
	afs7IDTG5u4JawBmD8DxRhmj1OnnfNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jExnC-0000U0-Ce; Thu, 19 Mar 2020 16:13:10 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jExn9-0000RM-50
 for linux-rpi-kernel@lists.infradead.org; Thu, 19 Mar 2020 16:13:08 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id BB7ABAC67;
 Thu, 19 Mar 2020 16:13:05 +0000 (UTC)
From: Takashi Iwai <tiwai@suse.de>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH RESEND] staging: vc04_services: Use scnprintf() for avoiding
 potential buffer overflow
Date: Thu, 19 Mar 2020 17:13:00 +0100
Message-Id: <20200319161300.25967-1-tiwai@suse.de>
X-Mailer: git-send-email 2.16.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_091307_337176_2D9906AA 
X-CRM114-Status: GOOD (  10.69  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devel@driverdev.osuosl.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

Since snprintf() returns the would-be-output size instead of the
actual output size, the succeeding calls may go beyond the given
buffer limit.  Fix it by replacing with scnprintf().

Reviewed-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: bcm-kernel-feedback-list@broadcom.com
Cc: linux-rpi-kernel@lists.infradead.org
Cc: devel@driverdev.osuosl.org
Signed-off-by: Takashi Iwai <tiwai@suse.de>
---

Greg, could you apply it if it's OK?
I forgot Cc to you and staging ML in the previous thread.

 drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index b377f18aed45..a1ea9777a444 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -2161,17 +2161,17 @@ int vchiq_dump_platform_service_state(void *dump_context,
 	char buf[80];
 	int len;
 
-	len = snprintf(buf, sizeof(buf), "  instance %pK", service->instance);
+	len = scnprintf(buf, sizeof(buf), "  instance %pK", service->instance);
 
 	if ((service->base.callback == service_callback) &&
 		user_service->is_vchi) {
-		len += snprintf(buf + len, sizeof(buf) - len,
+		len += scnprintf(buf + len, sizeof(buf) - len,
 			", %d/%d messages",
 			user_service->msg_insert - user_service->msg_remove,
 			MSG_QUEUE_SIZE);
 
 		if (user_service->dequeue_pending)
-			len += snprintf(buf + len, sizeof(buf) - len,
+			len += scnprintf(buf + len, sizeof(buf) - len,
 				" (dequeue pending)");
 	}
 
-- 
2.16.4


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
