Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C886B1E4120
	for <lists+linux-rpi-kernel@lfdr.de>; Wed, 27 May 2020 14:02:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=57lHe4dc6yIIU4ZO6xQn5spEjxxBjrCoiLLiO9l4QoE=; b=NshlHEUCdvmFlV
	Qq4IvNyIEdJk8lE3VtmLVrqdWz2xa/jm1F22eK5baYS4GufgWqfOCV74lh2HVCyx0Yv68L/2GB87U
	tJd3jo9bkWKJf5Xh3LUJZ0iUEbgs818punCFiFOztbTp+d1vR/RT1qwBmu2Uinr7UN4skcfZrG//+
	XdxJPWnRezEAWVGfzkUYxDv0T0J3hunD2nPPjRz8lSej3q8TGNYG6C1BI9NCFSdjuNG9aWMsBX9B6
	P/rCLL65DVHRBlQLJA5mQbmZQyOx+ImPJu+baqqJ1bVzJ5zHQ8vPKBzlyyIKozIKcgrRaZdOKqo82
	Ov11GtPNa4CEDORoQfdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdul0-0000XR-QQ; Wed, 27 May 2020 12:02:02 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jduda-0006ex-VI; Wed, 27 May 2020 11:54:24 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 77FDCAF16;
 Wed, 27 May 2020 11:54:22 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [RFC 10/50] staging: vchiq: Get rid of VCHIQ_SERVICE_OPENEND callback
 reason
Date: Wed, 27 May 2020 13:53:15 +0200
Message-Id: <20200527115400.31391-11-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200527115400.31391-1-nsaenzjulienne@suse.de>
References: <20200527115400.31391-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_045423_183061_EF91B364 
X-CRM114-Status: GOOD (  10.09  )
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

Nobody uses it and it's routinely discarded in vchi.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 .../vc04_services/interface/vchiq_arm/vchiq_core.c       | 9 ---------
 .../vc04_services/interface/vchiq_arm/vchiq_shim.c       | 4 ----
 2 files changed, 13 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
index ef31e541c902..ae9183db44ee 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
@@ -1484,15 +1484,6 @@ parse_open(struct vchiq_state *state, struct vchiq_header *header)
 					: VCHIQ_SRVSTATE_OPEN);
 			}
 
-			service->remoteport = remoteport;
-			service->client_id = ((int *)header->data)[1];
-			if (make_service_callback(service, VCHIQ_SERVICE_OPENED,
-				NULL, NULL) == VCHIQ_RETRY) {
-				/* Bail out if not ready */
-				service->remoteport = VCHIQ_PORT_FREE;
-				goto bail_not_ready;
-			}
-
 			/* Success - the message has been dealt with */
 			unlock_service(service);
 			return 1;
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
index 55f9e34ea50e..75d87b6992c4 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
@@ -461,10 +461,6 @@ static enum vchiq_status shim_callback(enum vchiq_reason reason,
 				  VCHI_CALLBACK_SERVICE_CLOSED, NULL);
 		break;
 
-	case VCHIQ_SERVICE_OPENED:
-		/* No equivalent VCHI reason */
-		break;
-
 	case VCHIQ_BULK_TRANSMIT_ABORTED:
 		service->callback(service->callback_param,
 				  VCHI_CALLBACK_BULK_TRANSMIT_ABORTED,
-- 
2.26.2


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
