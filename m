Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B80081E4101
	for <lists+linux-rpi-kernel@lfdr.de>; Wed, 27 May 2020 13:58:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zbz5WKbzzZUf9Kt3t/Dg0GLzThUQK57LmsSnW7KP7/M=; b=qQY+VohKBVRIGm
	6QFz2T9Ew/gLE6Xr2ZLe3kESn8vipds8A3vB7zph3USorIuPHDEVX4aNxW7ZPVKJJ1nGISurAU1sK
	We7IVA03M0Ex41ZjO+6COjSleXt6jn2QwabIqoVPVI2wzwsNf2YnGbG36LXW/tYw/vmSW9BMQ6J5B
	joG6kZJb8iWAlHL0N6Skv/IsCyTWbm5acG3jO41nhshzuf95DSh967a15RyqmbxN+DlY3553h56rZ
	RSTjlr4zMlK+YzKcKUxV5/NuZkQF5fIlmGCi1lNX6ZUNLzVfcbmTwz83zxfIQF+lVSNrxyZfE60ad
	WzBJAGHlEU5IGb5PIs+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jduhW-000485-Rx; Wed, 27 May 2020 11:58:26 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdudV-0006Xm-L5; Wed, 27 May 2020 11:54:19 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 785A2AC91;
 Wed, 27 May 2020 11:54:15 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [RFC 01/50] staging: vchi: Get rid of vchi_service_destroy()
Date: Wed, 27 May 2020 13:53:06 +0200
Message-Id: <20200527115400.31391-2-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200527115400.31391-1-nsaenzjulienne@suse.de>
References: <20200527115400.31391-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_045417_887813_E4C90A1A 
X-CRM114-Status: UNSURE (   9.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devel@driverdev.osuosl.org, kernel-list@raspberrypi.com,
 laurent.pinchart@ideasonboard.com, gregkh@linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

The function has no users.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 .../vc04_services/interface/vchi/vchi.h       |  3 ---
 .../interface/vchiq_arm/vchiq_shim.c          | 19 -------------------
 2 files changed, 22 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchi/vchi.h b/drivers/staging/vc04_services/interface/vchi/vchi.h
index ff2b960d8cac..686cfc536012 100644
--- a/drivers/staging/vc04_services/interface/vchi/vchi.h
+++ b/drivers/staging/vc04_services/interface/vchi/vchi.h
@@ -83,9 +83,6 @@ extern uint32_t vchi_current_time(struct vchi_instance_handle *instance_handle);
 /******************************************************************************
  * Global service API
  *****************************************************************************/
-// Routine to destroy a service
-extern int32_t vchi_service_destroy(const struct vchi_service_handle *handle);
-
 // Routine to open a named service
 extern int32_t vchi_service_open(struct vchi_instance_handle *instance_handle,
 				 struct service_creation *setup,
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
index efdd3b1c7d85..9a040651bb9b 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
@@ -642,25 +642,6 @@ int32_t vchi_service_close(const struct vchi_service_handle *handle)
 }
 EXPORT_SYMBOL(vchi_service_close);
 
-int32_t vchi_service_destroy(const struct vchi_service_handle *handle)
-{
-	int32_t ret = -1;
-	struct shim_service *service = (struct shim_service *)handle;
-
-	if (service) {
-		enum vchiq_status status = vchiq_remove_service(service->handle);
-
-		if (status == VCHIQ_SUCCESS) {
-			service_free(service);
-			service = NULL;
-		}
-
-		ret = vchiq_status_to_vchi(status);
-	}
-	return ret;
-}
-EXPORT_SYMBOL(vchi_service_destroy);
-
 int32_t vchi_service_set_option(const struct vchi_service_handle *handle,
 				enum vchi_service_option option,
 				int value)
-- 
2.26.2


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
