Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EB4914EB0F
	for <lists+linux-rpi-kernel@lfdr.de>; Fri, 31 Jan 2020 11:42:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sT1CZ11vZVMxd8rGD2aCGXbQwXDeBZ33aSjp047e5v8=; b=AaBxVd/xyQ2iUH
	an1s4BZZ/dQ+6Tfdjy/H5gj1kNjlKLcwnboKaoMmj3+I+dU+6snyjCOnRL1PcuvQQy75wwYjFeRBU
	hXiHZL+pjUS9Ayx7koAIqPpN9tO0g41X1E0DCYBBSMjkTsVLzbzFhhEklZgRNKv9eLyGkbu7wXDFb
	k1rwAQYDFrZfNu70woqdfOL/Bacb+qWL8Cf1Dat3XHpD7z50odusjb7YCpIuWJd+othWr2c+XHeO8
	a68NZ0zUzdhW/Qd709KzjjVtheFEcWk5AjX/oJWAc5HFQgu/8Lqkcl2/QOQtL770VtL3HC8xpYVfk
	1ppV4rI8p3SJM7mQT+dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixTkM-0006ql-Mo; Fri, 31 Jan 2020 10:41:58 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixThe-0003VN-Fx; Fri, 31 Jan 2020 10:39:12 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 0E5ABAFFC;
 Fri, 31 Jan 2020 10:39:08 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: gregkh@linuxfoundation.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 05/21] staging: vc04_services: Delete blocked_count in
 struct vchiq_arm_state
Date: Fri, 31 Jan 2020 11:38:21 +0100
Message-Id: <20200131103836.14312-6-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200131103836.14312-1-nsaenzjulienne@suse.de>
References: <20200131103836.14312-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_023910_679085_DE1EC698 
X-CRM114-Status: GOOD (  11.45  )
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

The variable is always 0. So delete it an all the code conditional to
it.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c | 2 --
 drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h | 2 --
 2 files changed, 4 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index 9264bb5d0bbe..4545df573c90 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -2266,8 +2266,6 @@ vchiq_videocore_wanted(struct vchiq_state *state)
 	if (!arm_state)
 		/* autosuspend not supported - always return wanted */
 		return 1;
-	else if (arm_state->blocked_count)
-		return 1;
 	else if (!arm_state->videocore_use_count)
 		/* usage count zero - check for override unless we're forcing */
 		return vchiq_platform_videocore_wanted(state);
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
index 6bab241313b8..35889a65b17f 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
@@ -70,8 +70,6 @@ struct vchiq_arm_state {
 	*/
 	int peer_use_count;
 
-	int blocked_count;
-
 	/* Flag to indicate that the first vchiq connect has made it through.
 	** This means that both sides should be fully ready, and we should
 	** be able to suspend after this point.
-- 
2.25.0


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
