Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14357F7990
	for <lists+linux-rpi-kernel@lfdr.de>; Mon, 11 Nov 2019 18:14:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GANJAhmMNeBPH3PfKHR4R/+GGwQsyfOcAuMmdlxVsog=; b=qxbMro3bxH6YrB
	8+NSpThdu2EIfsh/RdGTmkQ/jzO5KGI81Qamgp/DXt04+i/rmBM40z4m54EAiHf6ryg9yFTLPW+l3
	RQfUtMyG1LBafLql4+Y4aKI52Q8QUpkHnhC36EyNxnCR47e2IgRUZgGB0Uix9ZAuenFiGe+7vAdPp
	1H9IRru0yQSR9qxTurYv74u5nJ/wxIC8R2U+tdR4XXh5upYnAVbZdfp8RlcaSWWCs0DGWV5rk2+ht
	aFU+lB7yDMP2uMBL54Mwq1XiBqUpwfHBQcW68TrJE42jsCP+TBqGR4XkZoOnOrFI9JApUdMWH3rcf
	TXkm1e/lY6Phc4sQNq2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUDGp-0002LF-WA; Mon, 11 Nov 2019 17:14:32 +0000
Received: from mail-yb1-xb4a.google.com ([2607:f8b0:4864:20::b4a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUDGm-0002Jb-7D
 for linux-rpi-kernel@lists.infradead.org; Mon, 11 Nov 2019 17:14:29 +0000
Received: by mail-yb1-xb4a.google.com with SMTP id o7so12272473ybq.17
 for <linux-rpi-kernel@lists.infradead.org>;
 Mon, 11 Nov 2019 09:14:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=kEpyg8ljuNGSwCdKkj2Uy1b1DZcwrqujpDoQjvbwc1s=;
 b=ZQB147/bYm8FPJrTOgxinDS8UjGgxHSYZWAk3EBDy7bVpzFoXTM08oQjj8qxkhh3ia
 JmliGOdq3LqR1rQDmgZbNHwSF2uzCCmxxA8cTDbpKCn4rv4YQ3XBhcCKN7JQV2AahO6I
 dRbO+hIgApI3O87eH8wJykfb+cgQXi8MqOlQtePfK/+heb8uesx4VQ43Dv1jZhaGzk7R
 GZiBixlrm7m3PaFbxkcG1Mm5TRL+YbuqTMbiOJ29pj+3OnqXnl5EBV4FWkcuJ77zK2zK
 9dQHVJv0MnlMcklz/yZh5ddpid9iXIiZX/OMZzUw5jKxJUx0Y3CjvDWCGX1EPrQocNn2
 sy1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=kEpyg8ljuNGSwCdKkj2Uy1b1DZcwrqujpDoQjvbwc1s=;
 b=mOWhl3ALTkE8rK4l/BxAkbdeg6Ns0rDArWjFiyR047IYMmEU4NDJbSUCfievPI5ftb
 seFJv+9k4ksQPSoBssgeROPTptAx0BdG1VkwrziGQEpaLqyLzzwk++eoUubhpLKnQ4du
 GD1jvxJrZWCyoQ9oXH9RMXbg4KmCy0+I8FYl2dlUsWauaOBwFFu0tfY3dMe16O3WNzLt
 uhRmWVNn/G+0gh6BETic2z2IQp1tuA07OJNKw50Asy7z8e2VS2a+Bsd5Z9n7BZAHSXNM
 kyFWjmuwL+1Ql/YSFZMpVyT05aMv0KwhjgyBptNo7QbO5BFb9zIfLVvwQ471tjsk110d
 J7hw==
X-Gm-Message-State: APjAAAUI/gsJWknOMa3/OTpx0sUZ5cLs7yGdj2oNppbnbdfYIIkzRqTC
 xs1LRU2OGJ8tH0SaFHpOzBWH/lt6BJv25fBs6io=
X-Google-Smtp-Source: APXvYqyt2bu6AWhTTtWOUm8UmNszm2ywmWZquw+uEmcXnU5cy0HLp7WfF3IgwryIFLSzHj+u6NKX21/E5j9RcdFpmeE=
X-Received: by 2002:a25:e401:: with SMTP id b1mr20171577ybh.444.1573492466055; 
 Mon, 11 Nov 2019 09:14:26 -0800 (PST)
Date: Mon, 11 Nov 2019 12:14:23 -0500
In-Reply-To: <cover.1573482698.git.marcgonzalez@google.com>
Message-Id: <6054322775b30a90c1fed28a085e5fd578ed70fa.1573482698.git.marcgonzalez@google.com>
Mime-Version: 1.0
References: <cover.1573482698.git.marcgonzalez@google.com>
X-Mailer: git-send-email 2.24.0.432.g9d3f5f5b63-goog
Subject: [PATCH 1/2] staging: vchiq: Move retrieval of rpi_firmware to
 vchiq_platform_init()
From: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
To: gregkh@linuxfoundation.org, eric@anholt.net, wahrenst@gmx.net
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_091428_259408_E0410221 
X-CRM114-Status: GOOD (  11.33  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b4a listed in]
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

This allows the removal of the struct rpi_firmware* member
from struct vchiq_drvdata.

Signed-off-by: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
---
 .../interface/vchiq_arm/vchiq_2835_arm.c           | 14 +++++++++++++-
 .../vc04_services/interface/vchiq_arm/vchiq_arm.c  | 14 --------------
 .../vc04_services/interface/vchiq_arm/vchiq_arm.h  |  1 -
 3 files changed, 13 insertions(+), 16 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
index 8dc730cfe7a6..5ac88be9496b 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
@@ -79,7 +79,8 @@ int vchiq_platform_init(struct platform_device *pdev, struct vchiq_state *state)
 {
 	struct device *dev = &pdev->dev;
 	struct vchiq_drvdata *drvdata = platform_get_drvdata(pdev);
-	struct rpi_firmware *fw = drvdata->fw;
+	struct device_node *fw_node;
+	struct rpi_firmware *fw;
 	struct vchiq_slot_zero *vchiq_slot_zero;
 	struct resource *res;
 	void *slot_mem;
@@ -88,6 +89,17 @@ int vchiq_platform_init(struct platform_device *pdev, struct vchiq_state *state)
 	int slot_mem_size, frag_mem_size;
 	int err, irq, i;
 
+	fw_node = of_find_compatible_node(NULL, NULL,
+					  "raspberrypi,bcm2835-firmware");
+	if (!fw_node) {
+		dev_err(&pdev->dev, "Missing firmware node\n");
+		return -ENOENT;
+	}
+	fw = rpi_firmware_get(fw_node);
+	of_node_put(fw_node);
+	if (!fw)
+		return -EPROBE_DEFER;
+
 	/*
 	 * VCHI messages between the CPU and firmware use
 	 * 32-bit bus addresses.
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index b1595b13dea8..c666c8b5eda2 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -3191,7 +3191,6 @@ vchiq_register_child(struct platform_device *pdev, const char *name)
 
 static int vchiq_probe(struct platform_device *pdev)
 {
-	struct device_node *fw_node;
 	const struct of_device_id *of_id;
 	struct vchiq_drvdata *drvdata;
 	struct device *vchiq_dev;
@@ -3201,19 +3200,6 @@ static int vchiq_probe(struct platform_device *pdev)
 	drvdata = (struct vchiq_drvdata *)of_id->data;
 	if (!drvdata)
 		return -EINVAL;
-
-	fw_node = of_find_compatible_node(NULL, NULL,
-					  "raspberrypi,bcm2835-firmware");
-	if (!fw_node) {
-		dev_err(&pdev->dev, "Missing firmware node\n");
-		return -ENOENT;
-	}
-
-	drvdata->fw = rpi_firmware_get(fw_node);
-	of_node_put(fw_node);
-	if (!drvdata->fw)
-		return -EPROBE_DEFER;
-
 	platform_set_drvdata(pdev, drvdata);
 
 	err = vchiq_platform_init(pdev, &g_state);
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
index b424323e9613..e2cdfddaf02a 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
@@ -97,7 +97,6 @@ struct vchiq_arm_state {
 
 struct vchiq_drvdata {
 	const unsigned int cache_line_size;
-	struct rpi_firmware *fw;
 };
 
 extern int vchiq_arm_log_level;
-- 
2.20.1


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
