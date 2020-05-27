Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CAEF1E411B
	for <lists+linux-rpi-kernel@lfdr.de>; Wed, 27 May 2020 14:01:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jmQ4yHQrU2BM1MFzyRaB3b5lkotunXR2AMkwDSNffBA=; b=GkJVhrwGa8LxP/
	ka2VFkm0EvfPc++8KtawXCppeO23MkltNqK0SPJ/hSfXr/JqdvofEYpDZM/gGZFncuQVS3KRrU4hQ
	W74by3MIFVAunjQU3oh/C1YyUIdX2uEtswVU/89jPMU2fm8+o79DGZcBrHoH4WGqWw+nkReTbhP7p
	nIgbkjoLHaD5eoOaSWYEalw9Cv06MNExEV+SgKpAY5ejmNlKS/ExKOdpQ5a5vPAf4sB2rwHYBvotR
	Bt1w0S5UOjbVLVjFrJv+ThwEGgPQa6iYFrJD/VZBSCn/MFUGxVOmnqv7Gp6k06J5fGYr1xxlS8381
	FXu/ZZQ9PLGEP55A+2iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdukn-0000NY-Py; Wed, 27 May 2020 12:01:49 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdudW-0006Xs-69; Wed, 27 May 2020 11:54:21 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id D9E3AAD66;
 Wed, 27 May 2020 11:54:17 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [RFC 04/50] staging: vchi: Merge vchi_msg_queue() into
 vchi_queue_kernel_message()
Date: Wed, 27 May 2020 13:53:09 +0200
Message-Id: <20200527115400.31391-5-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200527115400.31391-1-nsaenzjulienne@suse.de>
References: <20200527115400.31391-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_045418_385564_DBBC3556 
X-CRM114-Status: UNSURE (   9.55  )
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

There are no gains from that extra indirection level. Also, get rid of
the function description, the whole file will disappear soon.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 .../interface/vchiq_arm/vchiq_shim.c          | 29 +++----------------
 1 file changed, 4 insertions(+), 25 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
index 1c5ddea8b076..081ab67ad6fd 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
@@ -84,30 +84,15 @@ int32_t vchi_msg_remove(struct vchi_service_handle *handle)
 }
 EXPORT_SYMBOL(vchi_msg_remove);
 
-/***********************************************************
- * Name: vchi_msg_queue
- *
- * Arguments:  struct vchi_service_handle *handle,
- *             ssize_t (*copy_callback)(void *context, void *dest,
- *				        size_t offset, size_t maxsize),
- *	       void *context,
- *             uint32_t data_size
- *
- * Description: Thin wrapper to queue a message onto a connection
- *
- * Returns: int32_t - success == 0
- *
- ***********************************************************/
-static
-int32_t vchi_msg_queue(struct vchi_service_handle *handle, void *context,
-		       uint32_t data_size)
+int vchi_queue_kernel_message(struct vchi_service_handle *handle, void *data,
+			       unsigned int size)
 {
 	struct shim_service *service = (struct shim_service *)handle;
 	enum vchiq_status status;
 
 	while (1) {
-		status = vchiq_queue_kernel_message(service->handle, context,
-						    data_size);
+		status = vchiq_queue_kernel_message(service->handle, data,
+						    size);
 
 		/*
 		 * vchiq_queue_message() may return VCHIQ_RETRY, so we need to
@@ -122,12 +107,6 @@ int32_t vchi_msg_queue(struct vchi_service_handle *handle, void *context,
 
 	return vchiq_status_to_vchi(status);
 }
-
-int vchi_queue_kernel_message(struct vchi_service_handle *handle, void *data,
-			      unsigned int size)
-{
-	return vchi_msg_queue(handle, data, size);
-}
 EXPORT_SYMBOL(vchi_queue_kernel_message);
 
 /***********************************************************
-- 
2.26.2


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
