Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A814F14EB1D
	for <lists+linux-rpi-kernel@lfdr.de>; Fri, 31 Jan 2020 11:43:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rmJVpjh4jmgn5Da30/mx4JWzWd7FS5DekF3nNVaY6+Q=; b=XvcX4rlw0dQNLG
	LsVspoUTeZIz/MDP2sXeiLso2Et98HlrVZBJin+E5L1vqMLxncCytSLaTXmPkYIiHALbpfvKR0SSP
	3kTRSbW2oICzRRO66njKQfeX3QHoqC66KgdXAa5O6vuAeKYdhsG6dwYmkTcv3AL5KMIeGs+BYiu1z
	zD2HZBmtuQKv3iJEunBKXzzkVgRLNsvfG+pqgmjpEgHtsgvBCFJLBMsjbnqRrWv/1E5SkHIY+Fup8
	VBlPtvvrK8+J3KKiYduwvQR7qcXRLQoUbltEISenJ60zW37Yvr4ZPvopv8B0yIcDpqaQTasEEGb0N
	JyQhmJQGpbNWHKNAfndw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixTm6-0008Vg-QG; Fri, 31 Jan 2020 10:43:46 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixThh-0003Y9-RQ; Fri, 31 Jan 2020 10:39:15 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 6DE1CAFFC;
 Fri, 31 Jan 2020 10:39:12 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: gregkh@linuxfoundation.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 10/21] staging: vc04_services: Get rid of
 vchiq_platform_handle_timeout()
Date: Fri, 31 Jan 2020 11:38:26 +0100
Message-Id: <20200131103836.14312-11-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200131103836.14312-1-nsaenzjulienne@suse.de>
References: <20200131103836.14312-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_023914_059411_7B7EE98E 
X-CRM114-Status: UNSURE (   8.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-arm-kernel@lists.infradead.org, devel@driverdev.osuosl.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

The function does nothing.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 .../vc04_services/interface/vchiq_arm/vchiq_2835_arm.c       | 5 -----
 .../staging/vc04_services/interface/vchiq_arm/vchiq_core.c   | 5 -----
 .../staging/vc04_services/interface/vchiq_arm/vchiq_core.h   | 3 ---
 3 files changed, 13 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
index a7f72dba2e20..c18c6ca0b6c0 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
@@ -257,11 +257,6 @@ int vchiq_dump_platform_state(void *dump_context)
 	return vchiq_dump(dump_context, buf, len + 1);
 }
 
-void
-vchiq_platform_handle_timeout(struct vchiq_state *state)
-{
-	(void)state;
-}
 /*
  * Local functions
  */
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
index ef8340ab8a52..f135d55b29e5 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
@@ -1911,11 +1911,6 @@ slot_handler_func(void *v)
 						"message");
 				}
 				break;
-
-			case VCHIQ_CONNSTATE_PAUSE_TIMEOUT:
-			case VCHIQ_CONNSTATE_RESUME_TIMEOUT:
-				vchiq_platform_handle_timeout(state);
-				break;
 			default:
 				break;
 			}
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
index 535a67cc68ed..11037a499408 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
@@ -638,9 +638,6 @@ vchiq_platform_conn_state_changed(struct vchiq_state *state,
 				  enum vchiq_connstate oldstate,
 				  enum vchiq_connstate newstate);
 
-extern void
-vchiq_platform_handle_timeout(struct vchiq_state *state);
-
 extern void
 vchiq_set_conn_state(struct vchiq_state *state, enum vchiq_connstate newstate);
 
-- 
2.25.0


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
