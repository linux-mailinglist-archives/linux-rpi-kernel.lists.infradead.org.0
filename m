Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14205F072C
	for <lists+linux-rpi-kernel@lfdr.de>; Tue,  5 Nov 2019 21:44:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jH/no1/TU7ERYBjBxK54E1XBj1FULg35lKxsAZH7L3o=; b=OibUIObiQKiVtJ
	3y7cLXZM2L0oDUHe+3g1N2l6PFLyXDJZA7ERHjb3MvgY5VWPv0ndBpESy1JSq+SKpdytpajnK8m2p
	P2C6vhPHMjVQkEd4jWzuySMJbE18OaOHbCWUAvWuPcbLBmqcKaO1CHnwq2pb3PTMyRC+Lr7z8dZvP
	6HhziTvD9fFJ7AZ/PHoS6wSPT1WDtSH7++5RhCzPxZsdR9dK1mowmgjJHhgehIs/jLYZ9cmSVZn8u
	q2Z9+AhxWanTBthJHbXP0xqaoNFlHxFca/C0RelZhEdYn8GYNtgTnUXsQOBYqGAmr5Bw29Md/DE1P
	FpjFaLmh73tU75nsJ+lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS5gc-0006S8-VR; Tue, 05 Nov 2019 20:44:22 +0000
Received: from mail-qt1-x849.google.com ([2607:f8b0:4864:20::849])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS5ga-0006Rk-5x
 for linux-rpi-kernel@lists.infradead.org; Tue, 05 Nov 2019 20:44:21 +0000
Received: by mail-qt1-x849.google.com with SMTP id i9so13372360qtq.11
 for <linux-rpi-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 12:44:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=CCGiR1f3G25IecrMOhR3o2w4VVtVsavel19sWd21L/Q=;
 b=QxRPtKrSXbUuXBdQYrSmoN0MtqmNB7zXF8ufzj8zyEAe6NJHM1yidtqL2SRFruiNNI
 EdqmZ9Vrsbv0J3FwLkwjpYLeYnzeeoj3oIpVQSerEkU2CuN9MvMA71asNxzKxVotRaez
 dwHV77d/9ZYQXBWFudTQ9eNp1ghCa2ddZm/64SwCem2W0oHnvQ0S6pIljrENam6A7jQr
 OsMn/YJkWCVM6Zc0jLNufR5BYtxlIC0tYXA5/QmPZ7cSVASbYIHcjJCaoKUUjJ32avNZ
 e0YCZdN1hQUohCeYmDCYzTwJ7aT8ck4ka6X3gducbXbeSSmznGWcP+GKfG2+WSMbafME
 7VsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=CCGiR1f3G25IecrMOhR3o2w4VVtVsavel19sWd21L/Q=;
 b=VN01apPuIR7Tp8G+2Fl1T+59tYBq0cr+PhpwIhLbkzEiBRbegT7AggnR6eLBanwiFx
 A2orhaRG+4aY1ZXwbdbrq4orzrxH2azQi6i9+1BhxNjhL0Hac8AvUTC63Xtcli4Ja/qe
 SHfWJyM1q92aofjVJ/g33iqCskopghrNkS1hm1ZdUUKglgs7GJxdpl3YG/Xnsm1XQYFq
 DhLkphwdXI7GCRlgyEgDM/K9M4F6Hk3qd1bxKZjkBAdQZ7WfHBaKiwWQQhnCKCKE6JoG
 OtYUvjj93TLyAkDMyk/+28gXtekcn5syC8tE1+4gijVdlM3hhzf3dST0R2J67Hyi1Tuf
 ba9w==
X-Gm-Message-State: APjAAAUSk/+YI0XTjYjuROMXoKXV9w9svRAoNKuPZG1P6ObTMJOEOvty
 YecBSUMKcow9KhogMcvMET7IepEbxwarExAkiO0=
X-Google-Smtp-Source: APXvYqzxmN4ldc0ArvZzUOZ6mmQkNA+8TTdM8qP8EDZriYKphDB6jcAUsuFcrzRYhzhUd5IgoK+0LZSu0Sh7KNsSKKU=
X-Received: by 2002:aed:27da:: with SMTP id m26mr19510208qtg.138.1572986658195; 
 Tue, 05 Nov 2019 12:44:18 -0800 (PST)
Date: Tue,  5 Nov 2019 15:44:17 -0500
Message-Id: <20191105204417.13994-1-marcgonzalez@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.24.0.rc1.363.gb1bccd3e3d-goog
Subject: [PATCH] staging: vchiq: Have vchiu_queue_init() return 0 on success.
From: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
To: gregkh@linuxfoundation.org, eric@anholt.net
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_124420_246821_BA3C5B02 
X-CRM114-Status: GOOD (  10.46  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:849 listed in]
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
Cc: linux-rpi-kernel@lists.infradead.org
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
