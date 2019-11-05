Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6ABEF0960
	for <lists+linux-rpi-kernel@lfdr.de>; Tue,  5 Nov 2019 23:28:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jH/no1/TU7ERYBjBxK54E1XBj1FULg35lKxsAZH7L3o=; b=WXonIWu84oGxRf
	2T4Al2ZyAPnBn02u0acDyKK/blX6AVt0K/5jQh9lmF7SHJFgMCBWL61KjXG9nUueIEdmekbBtHbHB
	QeTAH3r+s5VMPhvypw66PCBftnkz+ePunaPD4sjsi1tcD/WhqRocoGrnoz7A5Gqk7P2jX3pzawKoW
	34cCoSaaRZb2pZd0JE6lNtCtE+21AErThR6vQPpkGx6dA+GH2i9WUi8VJyMgKpOGVRVSgncmazO9+
	Rc5m7O52m1OhJW1X+OqSmijN6Kar+bBTxWSQ6qxceUQUYOkjrzJOtJJ/unWSSBp/EakUrk8pFTsCr
	KNsom8+ApnKZXNOI5BEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS7Iw-0004Y9-N2; Tue, 05 Nov 2019 22:28:02 +0000
Received: from mail-vk1-xa4a.google.com ([2607:f8b0:4864:20::a4a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS7It-0004X8-OG
 for linux-rpi-kernel@lists.infradead.org; Tue, 05 Nov 2019 22:28:01 +0000
Received: by mail-vk1-xa4a.google.com with SMTP id z23so9895457vkb.3
 for <linux-rpi-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 14:27:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=CCGiR1f3G25IecrMOhR3o2w4VVtVsavel19sWd21L/Q=;
 b=HxboiFGL7EacmtgiJIJKPgwMQ5HvfyO44M1uCpq9L2OB6Wqt8hodAIHgfqQajG2sdq
 GAOzA9GLQRy0Wv3L7jiJvzF7x2ueMeaI11npMhOEr2Dx0fS3MMHH2C2LwbBBHoFrrToQ
 8+qfMihz8r/eZFVaFpX2inEgaKB2hz0JovS3xDlh9QvddzxIw1ds0F0UAXTHlzjuQZlS
 /xdV4r7fnVnZj5B6MTR26y8IpHXLLYsp1sB06LpYVkvMJyBvGtoFgdyo4hA8lT9kKuod
 f81znkpqTlTej26R/S61esEKyO0qJcf4ZeyWPmKNmcJuj0yQ3uzN6/bUD8qNBBon9U0X
 SVkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=CCGiR1f3G25IecrMOhR3o2w4VVtVsavel19sWd21L/Q=;
 b=VZuBBpd9TTzPYkHq/BPjvrb6wkLk9VNZlPOTUinif2xYXrYsRAoCCHfGecNFvIiVrw
 +zXSMA2izhlRx2VkJbVPMCNvLqry6mKdBVYtpXu8d1W2AN6EABlzj5bBSoiaLmLstDau
 eqcYKkZh957Ijc+ajqC23R0EfvXZv1WKBoiJsMcQ6wZkA7Rtbh6OYGpTZ7axuJyNR4PJ
 SwUaqqngy5cdqzdVdLOH6COM8EM8XfOzcJj10O7m9IYQGooX+Umj70TQvsTdJo1Nec6S
 o2cC6Pg0lLgo7hy4tL+mdPy6lHu74A+OX4A+0tk5PqdlxQiFHD86VGeNWcr+wppXg1GA
 GKmQ==
X-Gm-Message-State: APjAAAXNvThJ9aCrE7DnUK4AsepohTDBKUPH8nSna8GMYYRrWGaPFveg
 uLzw09BzU+y07X+I9hMxVHsFZeJaw56Khk6O95g=
X-Google-Smtp-Source: APXvYqysIxf3gMu5pDoZdzpYQDAfsN5pEGEnRrYsepXfhGfT99H3oJu5d7E72/WCgJPnDXnBJHrqpenVm3+jcgqbMeI=
X-Received: by 2002:a1f:7c01:: with SMTP id x1mr4999439vkc.15.1572992877621;
 Tue, 05 Nov 2019 14:27:57 -0800 (PST)
Date: Tue,  5 Nov 2019 17:27:56 -0500
Message-Id: <20191105222756.25369-1-marcgonzalez@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.24.0.rc1.363.gb1bccd3e3d-goog
Subject: [PATCH] staging: vchiq: Have vchiu_queue_init() return 0 on success.
From: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
To: gregkh@linuxfoundation.org, eric@anholt.net, wahrenst@gmx.net
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_142759_789245_8119A009 
X-CRM114-Status: GOOD (  10.42  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a4a listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

It could be confusing to return 1 on success and 0 on error
given the style elswhere.

Signed-off-by: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
---
 .../staging/vc04_services/interface/vchiq_arm/vchiq_shim.c    | 2 +-
 .../staging/vc04_services/interface/vchiq_arm/vchiq_util.c    | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
index 17a4f2c8d8b1..c76d5b2e0701 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
@@ -579,7 +579,7 @@ static struct shim_service *service_alloc(VCHIQ_INSTANCE_T instance,
 	(void)instance;
 
 	if (service) {
-		if (vchiu_queue_init(&service->queue, 64)) {
+		if (!vchiu_queue_init(&service->queue, 64)) {
 			service->callback = setup->callback;
 			service->callback_param = setup->callback_param;
 		} else {
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_util.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_util.c
index 5e6d3035dc05..644844d88fed 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_util.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_util.c
@@ -24,9 +24,9 @@ int vchiu_queue_init(struct vchiu_queue *queue, int size)
 				 GFP_KERNEL);
 	if (!queue->storage) {
 		vchiu_queue_delete(queue);
-		return 0;
+		return -ENOMEM;
 	}
-	return 1;
+	return 0;
 }
 
 void vchiu_queue_delete(struct vchiu_queue *queue)
-- 
2.20.1


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
