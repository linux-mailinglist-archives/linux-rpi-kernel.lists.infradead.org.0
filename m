Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 366BAF7991
	for <lists+linux-rpi-kernel@lfdr.de>; Mon, 11 Nov 2019 18:14:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rv32SKjvjJyVT8jyXRqGNKAC1M23R0T9Fj0WriMFaEY=; b=ouv86QZk3KQxDr
	tz+pBAazPt0FNogEgWY9BbnKmisRPI0zZ8z7JU5Poxgp5RuLVeAOy5cHRM1AFkoW3LD21ziVvu82D
	LhhKc3gDq//yLtJ2eqY9lnM7tYFiH0vmIcrMJwY+LHuzyj+lYPMFWbTessx1P/A3m4NuJyZ8SHofA
	YbpCcRsHb5U82EpmOKeoEnYTlnkS9+ecqtI3oW3mNkXn8vt0BIaUwsP4xQDM/lGKh5DVtklZ1YiJm
	Bl1rAXrf39d7nenebdBBrNF5k8bck4YEGg/rZ9ZYbUpUsAC5cSEkBxcJ6W6KyFowYy4lLoBwc6dkK
	RECLjkf6UxIgKU3cKWmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUDGr-0002M1-34; Mon, 11 Nov 2019 17:14:33 +0000
Received: from mail-qk1-x749.google.com ([2607:f8b0:4864:20::749])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUDGn-0002Je-LI
 for linux-rpi-kernel@lists.infradead.org; Mon, 11 Nov 2019 17:14:31 +0000
Received: by mail-qk1-x749.google.com with SMTP id d144so8192162qke.16
 for <linux-rpi-kernel@lists.infradead.org>;
 Mon, 11 Nov 2019 09:14:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=QrUvzT7mG0/1JPVoR54M3uU+r/Pn/Td2dykyP41Xe9Y=;
 b=agm/kmlXTzTVCuQQMmKFlCwoPaIIlB6uEy8ouCRjIFGajbH1i+1lgXIqs87EMP9sLv
 HO5J01MbVoHZ6jkQ0tqOaILwoyvn6KunhIUijR2bT8lPz4SpeJ7k+ZAV2cGqd1MLQFw0
 3CohLkyiWWFgN/e2lVJborsVkH6uXT1MISX8ZPiIuCgM/G0gYEiDzQriNMSUfRTKwjB4
 RnFsAHsPvZMJY1wj/9RwGfMW9rMsEKRqK2lxQAprrwQeKi5cSRTWI6c4eTsxUikIaJ8W
 ajJdmKXJbqkDm2JWd+E/TPWoFjTQDL9+SicDjDQSpR9rkohSwsSnOVRuAqBTPHNGvmWe
 xVew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=QrUvzT7mG0/1JPVoR54M3uU+r/Pn/Td2dykyP41Xe9Y=;
 b=E4cvo8J4UGsDz7VkzvdUECe7Dq+sb+jVBZihJY4tTpCURGYl2EWr678XmvCCOlG5cN
 IHdonuO0fmJoMgRZEArP13Zk6hxj4gjoGERRSjxGSwoCEcl5CV2pOaAT84bAYgjFm5H3
 OaEvDOHt10yURU94AggjAQK8vKsZ27BD51HZAr8dCWaKciG+tN20wml/xhGeGq0Y2y3f
 7CzICI7KL2tDe2CA9B3eEbaApI1LidZD8SbyToJ7p2pTC/8kEIHFpPk+QCXPj9lvkCp2
 virUMyAc13BGx7QjwGXcZ0PkQG2n/kmt5dQNacRr7NVzYCZOOH6P4n98GcgXlkQCAj/m
 ctsQ==
X-Gm-Message-State: APjAAAX0d4x45e5X0UcOsCjfDeExXhs0mVpivdj8z3Iz142U5muJyGBL
 eNq9OVr0UOQu0aLKqKdBiSNesrsrZdk1UrO5MJs=
X-Google-Smtp-Source: APXvYqylYFYfggPkFPUdl0OUptzEg0ZeqipO6TNxXF81CDRF0CNExar9bSJOFQJHrClHnGFnPi97oYDkDlAmFlz2830=
X-Received: by 2002:ae9:c203:: with SMTP id j3mr1548252qkg.12.1573492467060;
 Mon, 11 Nov 2019 09:14:27 -0800 (PST)
Date: Mon, 11 Nov 2019 12:14:24 -0500
In-Reply-To: <cover.1573482698.git.marcgonzalez@google.com>
Message-Id: <bfad5318dbecc1705416a554dc806a99069247b0.1573482698.git.marcgonzalez@google.com>
Mime-Version: 1.0
References: <cover.1573482698.git.marcgonzalez@google.com>
X-Mailer: git-send-email 2.24.0.432.g9d3f5f5b63-goog
Subject: [PATCH 2/2] staging: vchiq: Remove global bcm*_drvdata
From: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
To: gregkh@linuxfoundation.org, eric@anholt.net, wahrenst@gmx.net
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_091429_711247_DDED5765 
X-CRM114-Status: GOOD (  10.53  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:749 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
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
Cc: devel@driverdev.osuosl.org, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

Moving the DT node check to vchiq_platform_init()
removes the need for these.

Signed-off-by: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
---
 .../interface/vchiq_arm/vchiq_2835_arm.c      |  4 ++--
 .../interface/vchiq_arm/vchiq_arm.c           | 20 ++-----------------
 .../interface/vchiq_arm/vchiq_arm.h           |  4 ----
 3 files changed, 4 insertions(+), 24 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
index 5ac88be9496b..b133b25c44af 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
@@ -78,7 +78,6 @@ free_pagelist(struct vchiq_pagelist_info *pagelistinfo,
 int vchiq_platform_init(struct platform_device *pdev, struct vchiq_state *state)
 {
 	struct device *dev = &pdev->dev;
-	struct vchiq_drvdata *drvdata = platform_get_drvdata(pdev);
 	struct device_node *fw_node;
 	struct rpi_firmware *fw;
 	struct vchiq_slot_zero *vchiq_slot_zero;
@@ -109,7 +108,8 @@ int vchiq_platform_init(struct platform_device *pdev, struct vchiq_state *state)
 	if (err < 0)
 		return err;
 
-	g_cache_line_size = drvdata->cache_line_size;
+	if (of_device_is_compatible(dev->of_node, "brcm,bcm2836-vchiq"))
+		g_cache_line_size = 64;
 	g_fragments_size = 2 * g_cache_line_size;
 
 	/* Allocate space for the channels in coherent memory */
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index c666c8b5eda2..cc753ba9c68c 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -140,14 +140,6 @@ static DEFINE_SPINLOCK(msg_queue_spinlock);
 static struct platform_device *bcm2835_camera;
 static struct platform_device *bcm2835_audio;
 
-static struct vchiq_drvdata bcm2835_drvdata = {
-	.cache_line_size = 32,
-};
-
-static struct vchiq_drvdata bcm2836_drvdata = {
-	.cache_line_size = 64,
-};
-
 static const char *const ioctl_names[] = {
 	"CONNECT",
 	"SHUTDOWN",
@@ -3161,8 +3153,8 @@ void vchiq_platform_conn_state_changed(struct vchiq_state *state,
 }
 
 static const struct of_device_id vchiq_of_match[] = {
-	{ .compatible = "brcm,bcm2835-vchiq", .data = &bcm2835_drvdata },
-	{ .compatible = "brcm,bcm2836-vchiq", .data = &bcm2836_drvdata },
+	{ .compatible = "brcm,bcm2835-vchiq"},
+	{ .compatible = "brcm,bcm2836-vchiq"},
 	{},
 };
 MODULE_DEVICE_TABLE(of, vchiq_of_match);
@@ -3191,17 +3183,9 @@ vchiq_register_child(struct platform_device *pdev, const char *name)
 
 static int vchiq_probe(struct platform_device *pdev)
 {
-	const struct of_device_id *of_id;
-	struct vchiq_drvdata *drvdata;
 	struct device *vchiq_dev;
 	int err;
 
-	of_id = of_match_node(vchiq_of_match, pdev->dev.of_node);
-	drvdata = (struct vchiq_drvdata *)of_id->data;
-	if (!drvdata)
-		return -EINVAL;
-	platform_set_drvdata(pdev, drvdata);
-
 	err = vchiq_platform_init(pdev, &g_state);
 	if (err)
 		goto failed_platform_init;
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
index e2cdfddaf02a..71b97d8d90bd 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
@@ -95,10 +95,6 @@ struct vchiq_arm_state {
 
 };
 
-struct vchiq_drvdata {
-	const unsigned int cache_line_size;
-};
-
 extern int vchiq_arm_log_level;
 extern int vchiq_susp_log_level;
 
-- 
2.20.1


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
