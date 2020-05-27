Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C62361E411E
	for <lists+linux-rpi-kernel@lfdr.de>; Wed, 27 May 2020 14:02:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EXkkDCREl7XWTg5pyffo1LHXCM4fE8W5CaTX15dQRmU=; b=b7XzB82O4QXKWN
	uQYlzHttTc0PhF1dfcpKgR2D8Gz9A0xIlXJPG5wT2lUD8ksHtVFVFx7A1923kx/SWGrPspZilfezn
	4PyDnD9wwSsHPGyt6D5h/CmKuxNOVTaDZ0/p6xE6hGhqsNmhPIpk87Sa3w5JYYPR5gDTqEhbUbb4G
	aO2LyzZaJmh4R8a4tOy7qca+I0MYxpoMya3sSKjL9FFWhhGzGEbF9TyvH+dKVhkGI8M/hVWYtPzG0
	qwo33xUqn1JC119MLtdx3RhC4fqccuZnqW+AsU4wv0ylmkLD8OejPjO7ACbDooDhNDsq+eN7PtwZs
	P5vHEy7bM71sl6tr1gkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdukt-0000Q6-EF; Wed, 27 May 2020 12:01:55 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdudY-0006cf-T6; Wed, 27 May 2020 11:54:23 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 6073FAD17;
 Wed, 27 May 2020 11:54:19 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [RFC 06/50] staging: vchi: Get rid of vchiq_status_to_vchi()
Date: Wed, 27 May 2020 13:53:11 +0200
Message-Id: <20200527115400.31391-7-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200527115400.31391-1-nsaenzjulienne@suse.de>
References: <20200527115400.31391-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_045421_267054_E4D4C854 
X-CRM114-Status: GOOD (  10.95  )
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

vchiq functions return an enum and vchi's ints. Those are compatible, no
need to explicitly cast them.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 .../interface/vchiq_arm/vchiq_shim.c          | 25 ++++++++-----------
 1 file changed, 11 insertions(+), 14 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
index 429b0c71e455..0fc5fa05c6c2 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
@@ -9,8 +9,6 @@
 
 #include "vchiq_util.h"
 
-#define vchiq_status_to_vchi(status) ((int32_t)status)
-
 struct shim_service {
 	unsigned int handle;
 
@@ -105,7 +103,7 @@ int vchi_queue_kernel_message(struct vchi_service_handle *handle, void *data,
 		msleep(1);
 	}
 
-	return vchiq_status_to_vchi(status);
+	return status;
 }
 EXPORT_SYMBOL(vchi_queue_kernel_message);
 
@@ -146,7 +144,7 @@ int32_t vchi_bulk_queue_receive(struct vchi_service_handle *handle, void *data_d
 		break;
 	default:
 		WARN(1, "unsupported message\n");
-		return vchiq_status_to_vchi(VCHIQ_ERROR);
+		return VCHIQ_ERROR;
 	}
 
 	while (1) {
@@ -163,7 +161,7 @@ int32_t vchi_bulk_queue_receive(struct vchi_service_handle *handle, void *data_d
 		msleep(1);
 	}
 
-	return vchiq_status_to_vchi(status);
+	return status;
 }
 EXPORT_SYMBOL(vchi_bulk_queue_receive);
 
@@ -207,7 +205,7 @@ int32_t vchi_bulk_queue_transmit(struct vchi_service_handle *handle,
 		break;
 	default:
 		WARN(1, "unsupported message\n");
-		return vchiq_status_to_vchi(VCHIQ_ERROR);
+		return VCHIQ_ERROR;
 	}
 
 	while (1) {
@@ -225,7 +223,7 @@ int32_t vchi_bulk_queue_transmit(struct vchi_service_handle *handle,
 		msleep(1);
 	}
 
-	return vchiq_status_to_vchi(status);
+	return status;
 }
 EXPORT_SYMBOL(vchi_bulk_queue_transmit);
 
@@ -372,7 +370,7 @@ int32_t vchi_initialise(struct vchi_instance_handle **instance_handle)
 
 	*instance_handle = (struct vchi_instance_handle *)instance;
 
-	return vchiq_status_to_vchi(status);
+	return status;
 }
 EXPORT_SYMBOL(vchi_initialise);
 
@@ -410,7 +408,7 @@ int32_t vchi_disconnect(struct vchi_instance_handle *instance_handle)
 {
 	struct vchiq_instance *instance = (struct vchiq_instance *)instance_handle;
 
-	return vchiq_status_to_vchi(vchiq_shutdown(instance));
+	return vchiq_shutdown(instance);
 }
 EXPORT_SYMBOL(vchi_disconnect);
 
@@ -561,7 +559,7 @@ int32_t vchi_service_close(const struct vchi_service_handle *handle)
 		if (status == VCHIQ_SUCCESS)
 			service_free(service);
 
-		ret = vchiq_status_to_vchi(status);
+		ret = status;
 	}
 	return ret;
 }
@@ -576,7 +574,7 @@ int32_t vchi_get_peer_version(const struct vchi_service_handle *handle, short *p
 		enum vchiq_status status;
 
 		status = vchiq_get_peer_version(service->handle, peer_version);
-		ret = vchiq_status_to_vchi(status);
+		ret = status;
 	}
 	return ret;
 }
@@ -598,7 +596,7 @@ int32_t vchi_service_use(const struct vchi_service_handle *handle)
 
 	struct shim_service *service = (struct shim_service *)handle;
 	if (service)
-		ret = vchiq_status_to_vchi(vchiq_use_service(service->handle));
+		ret = vchiq_use_service(service->handle);
 	return ret;
 }
 EXPORT_SYMBOL(vchi_service_use);
@@ -619,8 +617,7 @@ int32_t vchi_service_release(const struct vchi_service_handle *handle)
 
 	struct shim_service *service = (struct shim_service *)handle;
 	if (service)
-		ret = vchiq_status_to_vchi(
-			vchiq_release_service(service->handle));
+		ret = vchiq_release_service(service->handle);
 	return ret;
 }
 EXPORT_SYMBOL(vchi_service_release);
-- 
2.26.2


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
