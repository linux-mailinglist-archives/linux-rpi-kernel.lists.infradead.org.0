Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2A931814BE
	for <lists+linux-rpi-kernel@lfdr.de>; Wed, 11 Mar 2020 10:26:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=86tDOIEQE0OsO5c7SgDCXH2FMJEcm1QR0MwJcFk8YwU=; b=FD5
	HLDdoAiYN0UXjK6TirQsrID8ZRvQWCBnfBweTr7nsRxDMxLlaZs5JDLS/NiGyFLfYYBsl7F+GfwVn
	62PD5PgNyFo4NTyWmlGuwdiCbqbDq2kIAUQwjc2jh6Qf/aoAyVjjjFYjV5nOwFmKnfM2NPWfc6f7W
	QV6OKXB8jb+ST4T8lhPCLvHYhvD0dnySx2Ymg0lHpLqy+eb/1CZBrU0U5kt4qmRmUh1czeO+oePJQ
	P+jaU6/F2bEP+julOCP7J+hP6WH7yodgnzqGdLwLEIuCPX1qa9+bksa2U/z6lAkBReteRI8D7iHuT
	HyatUUPm8PQGtLcxEiiy2j1rEkXzorg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBxdP-0008AO-D1; Wed, 11 Mar 2020 09:26:39 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBxdM-00089i-2U
 for linux-rpi-kernel@lists.infradead.org; Wed, 11 Mar 2020 09:26:37 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 9FFFAAB3D;
 Wed, 11 Mar 2020 09:26:34 +0000 (UTC)
From: Takashi Iwai <tiwai@suse.de>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: [PATCH] staging: vc04_services: Use scnprintf() for avoiding
 potential buffer overflow
Date: Wed, 11 Mar 2020 10:26:30 +0100
Message-Id: <20200311092630.24000-1-tiwai@suse.de>
X-Mailer: git-send-email 2.16.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_022636_260994_DE36D6D6 
X-CRM114-Status: GOOD (  10.18  )
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
Cc: bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

Since snprintf() returns the would-be-output size instead of the
actual output size, the succeeding calls may go beyond the given
buffer limit.  Fix it by replacing with scnprintf().

Signed-off-by: Takashi Iwai <tiwai@suse.de>
---
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
