Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A62218BDA
	for <lists+linux-rpi-kernel@lfdr.de>; Thu,  9 May 2019 16:32:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9PeWH6HwRnUBQUQNPZQkE26OYC7ZWeIJnCiwuwgn6uI=; b=ZEmOKztQRPB0aS
	nnrzCH+3KxN34ACjfZCiDkgp8BI8OYS762BeWkHWOlH4QbW9xn7CBV4Tg71CHMcasebxO/MD4nPQ8
	gihgkK+Si6rV2jiAxl2E4gS4L/2X7LzLJPAuuwgIAVS4mb3UvdzgpDupWPZ2jT+8/8bYaI9fMNNsX
	nHCQnSuD5dHI9hGBwFlt1w9MMGERSZpzuOu+luckvBU+7lVGWky9hF2QwDfxruLZEfZptINi9/HU1
	eUv3EwBsRgPFJULFsmF1er00ofgkWAd8dg2vbNFkHAffQuwlT+cfuQH4EcLcjogQf+gXopZAY8g8+
	SyHyEvI77k6YJs/43Z8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOk5z-0006PU-72; Thu, 09 May 2019 14:32:27 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOk5R-0005gN-Bk; Thu, 09 May 2019 14:31:54 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 1944EACBA;
 Thu,  9 May 2019 14:31:52 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v3 3/4] staging: vchiq: make wait events interruptible
Date: Thu,  9 May 2019 16:31:35 +0200
Message-Id: <20190509143137.31254-4-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190509143137.31254-1-nsaenzjulienne@suse.de>
References: <20190509143137.31254-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_073153_546153_CF6CDC2C 
X-CRM114-Status: GOOD (  12.69  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-rpi-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-rpi-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rpi-kernel>, 
 <mailto:linux-rpi-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rpi-kernel/>
List-Post: <mailto:linux-rpi-kernel@lists.infradead.org>
List-Help: <mailto:linux-rpi-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel>, 
 <mailto:linux-rpi-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-rpi-kernel@lists.infradead.org, dan.carpenter@oracle.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

The killable version of wait_event() is meant to be used on situations
where it should not fail at all costs, but still have the convenience of
being able to kill it if really necessary. Wait events in VCHIQ doesn't
fit this criteria, as it's mainly used as an interface to V4L2 and ALSA
devices.

Fixes: 852b2876a8a8 ("staging: vchiq: rework remove_event handling")
Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 .../vc04_services/interface/vchiq_arm/vchiq_core.c     | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
index c65cf1e6f910..44bfa890e0e5 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
@@ -395,13 +395,21 @@ remote_event_create(wait_queue_head_t *wq, struct remote_event *event)
 	init_waitqueue_head(wq);
 }
 
+/*
+ * All the event waiting routines in VCHIQ used a custom semaphore
+ * implementation that filtered most signals. This achieved a behaviour similar
+ * to the "killable" family of functions. While cleaning up this code all the
+ * routines where switched to the "interruptible" family of functions, as the
+ * former was deemed unjustified and the use "killable" set all VCHIQ's
+ * threads in D state.
+ */
 static inline int
 remote_event_wait(wait_queue_head_t *wq, struct remote_event *event)
 {
 	if (!event->fired) {
 		event->armed = 1;
 		dsb(sy);
-		if (wait_event_killable(*wq, event->fired)) {
+		if (wait_event_interruptible(*wq, event->fired)) {
 			event->armed = 0;
 			return 0;
 		}
-- 
2.21.0


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
