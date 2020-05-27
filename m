Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 575F91E412B
	for <lists+linux-rpi-kernel@lfdr.de>; Wed, 27 May 2020 14:03:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cN8ZtBNA02RUcrevAYhFZKsPfjvnm/rL+ge/RSaasFw=; b=dOARaMvMTHwbEv
	Fao2m2jQSuTZYObbcidTE8nipIGoMsexvco7K2dgJsR36A/84BxuhJHiJSi0f0OjE6fM4yFNmEH55
	+Q0CvOZq2QE2tKLel4Ug3RcBJf6p/F5dElhdR5Z1ieU9pHQ6Fk2EJn+A4Xv3rAXQj6DFl8KI9DLVy
	gSbAb+upIuBSNEaG23UlIckXC2+cOLllklL8UBlJAO160HcVZsLBla/zXdWwDfpVhBz87MmB4RaMU
	eyDj0y8NpnuwvnISlqbul8Ar2vn5/4TMyPrnGACUOd0Hy5J5jPp8T0aF2+Vvu+stfZI986k6MH1Ru
	y3b5Ju0MlK+L9sdfNTyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdumV-0001mh-48; Wed, 27 May 2020 12:03:35 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdudg-0006ka-WA; Wed, 27 May 2020 11:54:31 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 74905ACB8;
 Wed, 27 May 2020 11:54:29 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [RFC 16/50] staging: vchi: Get rid of vchi_msg_dequeue()
Date: Wed, 27 May 2020 13:53:21 +0200
Message-Id: <20200527115400.31391-17-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200527115400.31391-1-nsaenzjulienne@suse.de>
References: <20200527115400.31391-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_045429_283323_7EFD0017 
X-CRM114-Status: UNSURE (   9.12  )
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

Nobody uses it. Get rid of it.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 .../vc04_services/interface/vchi/vchi.h       |  7 ----
 .../interface/vchiq_arm/vchiq_shim.c          | 39 -------------------
 2 files changed, 46 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchi/vchi.h b/drivers/staging/vc04_services/interface/vchi/vchi.h
index ff302e6b8b1b..a369feb3a448 100644
--- a/drivers/staging/vc04_services/interface/vchi/vchi.h
+++ b/drivers/staging/vc04_services/interface/vchi/vchi.h
@@ -93,13 +93,6 @@ extern int32_t vchi_service_release(struct vchi_service *service);
 extern int vchi_queue_kernel_message(struct vchi_service *service, void *data,
 				     unsigned int size);
 
-// Routine to receive a msg from a service
-// Dequeue is equivalent to hold, copy into client buffer, release
-extern int32_t vchi_msg_dequeue(struct vchi_service *service, void *data,
-				uint32_t max_data_size_to_read,
-				uint32_t *actual_msg_size,
-				enum vchi_flags flags);
-
 // Routine to look at a message in place.
 // The message is dequeued, so the caller is left holding it; the descriptor is
 // filled in and must be released when the user has finished with the message.
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
index 99eb7a5ccce6..0c3473861a8d 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
@@ -160,45 +160,6 @@ int32_t vchi_bulk_queue_transmit(struct vchi_service *service,
 }
 EXPORT_SYMBOL(vchi_bulk_queue_transmit);
 
-/***********************************************************
- * Name: vchi_msg_dequeue
- *
- * Arguments:  struct vchi_service *service,
- *             void *data,
- *             uint32_t max_data_size_to_read,
- *             uint32_t *actual_msg_size
- *             enum vchi_flags flags
- *
- * Description: Routine to dequeue a message into the supplied buffer
- *
- * Returns: int32_t - success == 0
- *
- ***********************************************************/
-int32_t vchi_msg_dequeue(struct vchi_service *service, void *data,
-			 uint32_t max_data_size_to_read,
-			 uint32_t *actual_msg_size, enum vchi_flags flags)
-{
-	struct vchiq_header *header;
-
-	WARN_ON((flags != VCHI_FLAGS_NONE) &&
-		(flags != VCHI_FLAGS_BLOCK_UNTIL_OP_COMPLETE));
-
-	if (flags == VCHI_FLAGS_NONE)
-		if (vchiu_queue_is_empty(&service->queue))
-			return -1;
-
-	header = vchiu_queue_pop(&service->queue);
-
-	memcpy(data, header->data, header->size < max_data_size_to_read ?
-		header->size : max_data_size_to_read);
-
-	*actual_msg_size = header->size;
-
-	vchiq_release_message(service->handle, header);
-
-	return 0;
-}
-EXPORT_SYMBOL(vchi_msg_dequeue);
 
 /***********************************************************
  * Name: vchi_held_msg_release
-- 
2.26.2


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
