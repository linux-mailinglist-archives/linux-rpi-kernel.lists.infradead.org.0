Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D36F11E4121
	for <lists+linux-rpi-kernel@lfdr.de>; Wed, 27 May 2020 14:02:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CBgkeONll3+5I8JTR+CgF4vh13XUE7G1xbNWC0AAaeY=; b=X41D8X03USUaP8
	V5Fi8lTU6qmkivQzgpxB6XR6rRdwfOZdmcYqJyc4UcJ/YSVLnqD3nSkm3nuHIhF4aEJEcQte//wvx
	FbWrERdRNjCEtoAFxBvZ7boxuLLjYcuOCp2uhAAkjmmnCgCRxn7PJjnv95UCRxCzc9LyY3jF+RD1K
	D/HVYO9NkdNj4SqF2MlP1e+nPtFM/kjdzeOLHvAA7YPRMHjzpSPqDwWd4VECV6n+P6AQhOBZ8jA2W
	5OWlPWL1fwz82cGP2SJSPnMJN0Et3uXd/TpzX0ByJpUzSJ/+s+9xSZqvj32fM/nNj/KElY7ZT1cvZ
	M8DhkEFaxJUJuMsGZ32A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdul4-0000bS-Ex; Wed, 27 May 2020 12:02:06 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdudY-0006ci-T6; Wed, 27 May 2020 11:54:23 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id A26A8ACF2;
 Wed, 27 May 2020 11:54:18 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [RFC 05/50] staging: vchi: Get rid of vchi_service_set_option()
Date: Wed, 27 May 2020 13:53:10 +0200
Message-Id: <20200527115400.31391-6-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200527115400.31391-1-nsaenzjulienne@suse.de>
References: <20200527115400.31391-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_045421_212529_FC094E3B 
X-CRM114-Status: GOOD (  10.45  )
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

There are no users for that function.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 .../vc04_services/interface/vchi/vchi.h       |  5 ---
 .../interface/vchiq_arm/vchiq_shim.c          | 31 -------------------
 2 files changed, 36 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchi/vchi.h b/drivers/staging/vc04_services/interface/vchi/vchi.h
index 62d9d3efa755..1e8d17531e9d 100644
--- a/drivers/staging/vc04_services/interface/vchi/vchi.h
+++ b/drivers/staging/vc04_services/interface/vchi/vchi.h
@@ -100,11 +100,6 @@ extern int32_t vchi_service_use(const struct vchi_service_handle *handle);
 // Routine to decrement ref count on a named service
 extern int32_t vchi_service_release(const struct vchi_service_handle *handle);
 
-// Routine to set a control option for a named service
-extern int32_t vchi_service_set_option(const struct vchi_service_handle *handle,
-				       enum vchi_service_option option,
-				       int value);
-
 /* Routine to send a message from kernel memory across a service */
 extern int
 vchi_queue_kernel_message(struct vchi_service_handle *handle,
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
index 081ab67ad6fd..429b0c71e455 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
@@ -567,37 +567,6 @@ int32_t vchi_service_close(const struct vchi_service_handle *handle)
 }
 EXPORT_SYMBOL(vchi_service_close);
 
-int32_t vchi_service_set_option(const struct vchi_service_handle *handle,
-				enum vchi_service_option option,
-				int value)
-{
-	int32_t ret = -1;
-	struct shim_service *service = (struct shim_service *)handle;
-	enum vchiq_service_option vchiq_option;
-
-	switch (option) {
-	case VCHI_SERVICE_OPTION_TRACE:
-		vchiq_option = VCHIQ_SERVICE_OPTION_TRACE;
-		break;
-	case VCHI_SERVICE_OPTION_SYNCHRONOUS:
-		vchiq_option = VCHIQ_SERVICE_OPTION_SYNCHRONOUS;
-		break;
-	default:
-		service = NULL;
-		break;
-	}
-	if (service) {
-		enum vchiq_status status =
-			vchiq_set_service_option(service->handle,
-						vchiq_option,
-						value);
-
-		ret = vchiq_status_to_vchi(status);
-	}
-	return ret;
-}
-EXPORT_SYMBOL(vchi_service_set_option);
-
 int32_t vchi_get_peer_version(const struct vchi_service_handle *handle, short *peer_version)
 {
 	int32_t ret = -1;
-- 
2.26.2


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
