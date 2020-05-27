Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF75C1E41C9
	for <lists+linux-rpi-kernel@lfdr.de>; Wed, 27 May 2020 14:14:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BPpCA7qNEjgsUHTEVFpLXJc+4kr8n7lEsWpOQLAYrlU=; b=ZNqLwTO3DnkTA1
	S/VTnTjaP2XIX/mZhl71aoJD3sI4qfOpcYFDRHhzj6GyKSWNOhW3IHSjEENY7ZmCRaQ2v5Jg6JAkl
	06DF5neEGUeHe3nqtDh4dqKSJpcnO9P1h2KWzKtzyfRHjXGhg3xmJ6C5pD1DwUDn5xvpbDkh9hRpS
	axd/dNL804z3gfN6J0OuvizLXJP5g6hOp8+mf+X72TAReXqPsnjKtGz4H1dtU5KgGVyPR67x0xAt0
	hn4F8ezTKO0pwhqv0c4RJSlvV+K5yiK66s4PQPpfQMhP66b700d4e4kQLit/yNslAIr7yUgibsVqF
	a+O0Ck9ZC0CANKF4xMdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdux3-0007rr-DC; Wed, 27 May 2020 12:14:29 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdueE-0007Iv-Hh; Wed, 27 May 2020 11:55:05 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id EDA56AFB1;
 Wed, 27 May 2020 11:55:02 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [RFC 47/50] staging: vchiq: Move conditional barrier definition into
 vchiq_core.h
Date: Wed, 27 May 2020 13:53:52 +0200
Message-Id: <20200527115400.31391-48-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200527115400.31391-1-nsaenzjulienne@suse.de>
References: <20200527115400.31391-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_045502_851643_FD8E7BA1 
X-CRM114-Status: GOOD (  10.59  )
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

The barrier is only used by core code. So keep the barrier definition in
the core header.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 .../vc04_services/interface/vchiq_arm/vchiq.h        | 11 -----------
 .../vc04_services/interface/vchiq_arm/vchiq_core.h   | 12 ++++++++++++
 2 files changed, 12 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq.h
index 211b20705e36..57fe7d5e9a85 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq.h
@@ -6,15 +6,4 @@
 
 #include "vchiq_if.h"
 
-/* Do this so that we can test-build the code on non-rpi systems */
-#if IS_ENABLED(CONFIG_RASPBERRYPI_FIRMWARE)
-
-#else
-
-#ifndef dsb
-#define dsb(a)
-#endif
-
-#endif	/* IS_ENABLED(CONFIG_RASPBERRYPI_FIRMWARE) */
-
 #endif
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
index ff91c04ba6b9..15e9867f78f4 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
@@ -15,6 +15,18 @@
 
 #include "vchiq.h"
 
+/* Do this so that we can test-build the code on non-rpi systems */
+#if IS_ENABLED(CONFIG_RASPBERRYPI_FIRMWARE)
+
+#else
+
+#ifndef dsb
+#define dsb(a)
+#endif
+
+#endif	/* IS_ENABLED(CONFIG_RASPBERRYPI_FIRMWARE) */
+
+
 /* Run time control of log level, based on KERN_XXX level. */
 #define VCHIQ_LOG_DEFAULT  4
 #define VCHIQ_LOG_ERROR    3
-- 
2.26.2


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
