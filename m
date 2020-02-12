Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CBF015B00C
	for <lists+linux-rpi-kernel@lfdr.de>; Wed, 12 Feb 2020 19:43:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dxueyHQSW2GOYb/wuovKABXrN0PdRQHokIwkZ/vMKNQ=; b=WxW/DWqum5TwQZ
	V817Fv4HPMvDfctykLqx51s4Diaio0MrBvjZVSZff+Zqf6pCzz9StE5TMpto555alOrKPWK7yPC8G
	OhgG2gpQIHctffSS0Baj4f3SWTi+nYwS7F9pNaVur1niqD6e8QWoMYP/jUtGJZggpg48pXjmLJXNA
	Jtzkxc/BZase3dB3nkUnjxSn1a4zBFAqLLy8HriQoc+WJpv1ciGGAlG7bxLdmld+/trPsF7jZ6bx0
	kJ6knp0hanqpk03BPnRCVPuvu0X7nFZgyBlTob3aP6QsanJ4Tqs/FjSAzkgdq4Nu3xd422/eQ0mEY
	R7YSX6gFglg64a86b2QQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1wzA-0007kM-97; Wed, 12 Feb 2020 18:43:44 +0000
Received: from mail-qk1-x74a.google.com ([2607:f8b0:4864:20::74a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1wz4-0007g7-HD
 for linux-rpi-kernel@lists.infradead.org; Wed, 12 Feb 2020 18:43:39 +0000
Received: by mail-qk1-x74a.google.com with SMTP id w29so1985054qkw.1
 for <linux-rpi-kernel@lists.infradead.org>;
 Wed, 12 Feb 2020 10:43:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=WdGiGfpb5gg3RqJI90ZZhxX/hv8rwpQi11672qMYmdU=;
 b=N51Xh0cyfhtxEOHMRKVuVd8SM7Xx/LjYtozOsjfkCms+UMosTljhG2RweFL69GCPiK
 /JWGtHELom5RLcIT9qWjb/KJhN+P2074JP1OY2hejNDLrNsiuK+jzV13iCVi/19laCc9
 c3UvmayJUwbkWidT8yb0S1MnLTUrguSN+k6R6NXLHzebee5uY/e2jcvm9F9XJpCRgR2+
 SiduIhkSNwDOuxRaI9/RIllcmIGBqMMlj2nnWR0oWnJQq+mdA9fKF6JgrqrJTgTHLcEC
 X77IoVqp5ZMojgHgH9TLChqsSY9ueAHhKzQIKZqg+OHO+TNDGlqnnwMratHGp+8rVKeA
 2AiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=WdGiGfpb5gg3RqJI90ZZhxX/hv8rwpQi11672qMYmdU=;
 b=gR2cJDy+Eur1bM28nBBMcShY3byor9jTuBQ4hCPNcTWqerMnnrpzLHHh1Fg2zqRdEB
 7/X85FuyQtgrsFcYfS+T6cPo+9ZLARexxQpdnHJFIzq8TkyoZIeEUs5di3Z8uCdhvt8P
 uYAI1TW88OTRdxSyHEJoAgLGNt2d+EedPEJ0su/+S1ZNEGOlK2AkGhijhc4VWyEHWGfS
 XfirvN6eqFAa+3OLOW+Af0ZxgZmcTDW6cqqNsyGoxdg6T7VdUz95OMIbCQw9erEjm12e
 m6rFNRODeZZYABcNzYeT63WJC2kxHIc0YfA/eOpi7jZBdedGNpldM8h98BGKD52cG67i
 3JNQ==
X-Gm-Message-State: APjAAAU/kbYd7ZTR6nB/LdkQhi5tM1lijTu2t3XwkwiLnQDBrXN8ypdD
 5HOLQE1C92NJMc8R/bBiLntWx4QwcU6GLKstyyo=
X-Google-Smtp-Source: APXvYqyaJm1rLglUusFiqJgEBo62Yc/cLr5VeLjHo+oflwkU5oLZ9EvkWDDGl1KDLanXaUcBb3t3tPTCivIZFYOq/YM=
X-Received: by 2002:ae9:e844:: with SMTP id a65mr3491557qkg.127.1581533017028; 
 Wed, 12 Feb 2020 10:43:37 -0800 (PST)
Date: Wed, 12 Feb 2020 13:43:31 -0500
In-Reply-To: <cover.1581532523.git.marcgonzalez@google.com>
Message-Id: <feadcde28a987fad12011a5f17b29f2147c09e12.1581532523.git.marcgonzalez@google.com>
Mime-Version: 1.0
References: <cover.1581532523.git.marcgonzalez@google.com>
X-Mailer: git-send-email 2.25.0.225.g125e21ebc7-goog
Subject: [PATCH 3/5] staging: vc04_services: fix indentation alignment in a
 few places
From: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
To: nsaenzjulienne@suse.de, gregkh@linuxfoundation.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_104338_567346_E7759871 
X-CRM114-Status: UNSURE (   7.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:74a listed in]
 [list.dnswl.org]
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

This fixes some checkpatch warnings about incorrect indentation levels

Signed-off-by: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
---
 .../vc04_services/interface/vchiq_arm/vchiq_core.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
index 72bfa0f73958..b2d9013b7f79 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
@@ -2413,13 +2413,13 @@ vchiq_open_service_internal(struct vchiq_service *service, int client_id)
 			status = VCHIQ_RETRY;
 			vchiq_release_service_internal(service);
 		} else if ((service->srvstate != VCHIQ_SRVSTATE_OPEN) &&
-			(service->srvstate != VCHIQ_SRVSTATE_OPENSYNC)) {
+			   (service->srvstate != VCHIQ_SRVSTATE_OPENSYNC)) {
 			if (service->srvstate != VCHIQ_SRVSTATE_CLOSEWAIT)
 				vchiq_log_error(vchiq_core_log_level,
-					"%d: osi - srvstate = %s (ref %d)",
-					service->state->id,
-					srvstate_names[service->srvstate],
-					service->ref_count);
+						"%d: osi - srvstate = %s (ref %d)",
+						service->state->id,
+						srvstate_names[service->srvstate],
+						service->ref_count);
 			status = VCHIQ_ERROR;
 			VCHIQ_SERVICE_STATS_INC(service, error_count);
 			vchiq_release_service_internal(service);
@@ -3427,8 +3427,8 @@ int vchiq_dump_service_state(void *dump_context, struct vchiq_service *service)
 	int err;
 
 	len = scnprintf(buf, sizeof(buf), "Service %u: %s (ref %u)",
-		service->localport, srvstate_names[service->srvstate],
-		service->ref_count - 1); /*Don't include the lock just taken*/
+			service->localport, srvstate_names[service->srvstate],
+			service->ref_count - 1); /*Don't include the lock just taken*/
 
 	if (service->srvstate != VCHIQ_SRVSTATE_FREE) {
 		char remoteport[30];
-- 
2.25.0.225.g125e21ebc7-goog


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
