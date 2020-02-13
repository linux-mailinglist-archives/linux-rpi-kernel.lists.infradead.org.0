Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9872E15CB45
	for <lists+linux-rpi-kernel@lfdr.de>; Thu, 13 Feb 2020 20:40:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tRd5cJGCZhDOkIpBYMiOQTBY619N4likVxyN5Gx7fzk=; b=j/lfalO+/ImN6E
	WkUS9PeCdGKyMzxN0S2NaqQg3lZ2mXYDfgoCCp4vWs+E+GLLKtqacK9BsR633GVRn84fOPYAKfxJI
	/o7oC5pcIbQC1h0FffGDjZll6FD/J/OoaTvizXz/vAOQa6FA/elvsZ9FWKL2zIqReFTE12o8DPB4a
	I2LJLXUquf6FlWptQp8zJbC24XdgVt9ZCu4iGxTseqbUVx1INfgSG0W1nbjMBSJ/OaywiOtHX7Aml
	9pitkD8EgFCS+LksVhP/Vr9kZm4hv3KERGhs+KtctTeKGeU0cJ7SRdOHZdpp1BEUp4dV5oVjYrupl
	JhTqjvopuin7U3RPy9Jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2KLJ-000238-8w; Thu, 13 Feb 2020 19:40:09 +0000
Received: from mail-qt1-x84a.google.com ([2607:f8b0:4864:20::84a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2KLF-0001BV-NG
 for linux-rpi-kernel@lists.infradead.org; Thu, 13 Feb 2020 19:40:07 +0000
Received: by mail-qt1-x84a.google.com with SMTP id c10so4376993qtk.18
 for <linux-rpi-kernel@lists.infradead.org>;
 Thu, 13 Feb 2020 11:40:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=H0CRRWznpHCtJBjvV1YZITyrv/qml/zlEqYkl1RhjGY=;
 b=dCQ8V8xEJjfhN1P3rrsqyVpHqKLsC+D4H7Oi7emDI7ySwXSM1iPb2d2kkbUifTfn4w
 p28kAxnCd9fCwzD7BNLxe0SRVBlPD7Oj0hI+/CAhqn3SKpJit024KYKwfs4+oTPpX62p
 OwhiHuG2mGPqVFjmzNETYoyCLjn3ZoZSB74V/4TFe9+GLZ1VGtMGv8IAO0AkFhh6v3A5
 642jRcKO+WLFehUqjz4RoBLtt3aLxyp+gwt4+RQJ/4iNs2iEDCDWasBPreOIjs7amdOq
 6eryMj17lS2WUQ2hjNKRpDrp3y6T3SSHUcVsrL9O2z683z491JUUDEmt24IM4dDB5b8S
 u96Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=H0CRRWznpHCtJBjvV1YZITyrv/qml/zlEqYkl1RhjGY=;
 b=V/GLw7MCtC5Sb/ejehRVNeQd4XuVGAdHkkfGSzNyN8evmdSsHgDc/c6mUX3F1m4YgX
 V+FI+xYQPgndzOwtKGCg1ozRguz+GNSVUfAwh1PFE+Vo4SHXnFO0bwSSHtlSmqleLd81
 Lqw4wQlHt6JRaOyUqn9zZW5gg2y4gUHPvmUS5vm2ehJeNDFXVVKHUl4F55vyyM9tz6CC
 DrgcEMGfeWDc8knllY3EH9itord/mepSUSBhKBHM7vJ+BcL1RYTvgOBeBisJ5G1ct6+A
 at3spzDZHz4V43bVtqGQuL4zTY+lDcFbDVKLHHSuKrwSXDaoEYycrxJtK/p00pPc/1SS
 fEoQ==
X-Gm-Message-State: APjAAAUoXmZbwDPDKQxO6G9Lbnml8WnL0nL2Bvc0XozSHtlB88nducrQ
 DmgVA9VppHiKd5JqUxDKiLALYC5Pv/sh3Sv7/9o=
X-Google-Smtp-Source: APXvYqwKwfKvQbqxfvLBoVLf2hSFqmtM3vtBL3Q1aQ5rXPaT88hpM15E3P82LP5BLu3x+pz5ZhorDweEVgluY0UVq+U=
X-Received: by 2002:a0c:fa4b:: with SMTP id k11mr24763908qvo.55.1581622802876; 
 Thu, 13 Feb 2020 11:40:02 -0800 (PST)
Date: Thu, 13 Feb 2020 14:40:01 -0500
Message-Id: <20200213194001.130110-1-marcgonzalez@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.25.0.225.g125e21ebc7-goog
Subject: [PATCH] staging: vc04_services: Fix wrong early return in
 next_service_by_instance()
From: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
To: nsaenzjulienne@suse.de, gregkh@linuxfoundation.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_114005_806052_60A87072 
X-CRM114-Status: UNSURE (   8.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:84a listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devel@driverdev.osuosl.org, linux-rpi-kernel@lists.infradead.org,
 dan.carpenter@oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

If kref_get_unless_zero() fails, we should keep looking for the
next service, since the callers of this function expect that a NULL
return value means there are no more.

Signed-off-by: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
---
 .../vc04_services/interface/vchiq_arm/vchiq_core.c | 14 +++++++++-----
 1 file changed, 9 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
index d7d7f4d9d57f..edcd97373809 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
@@ -252,11 +252,15 @@ next_service_by_instance(struct vchiq_state *state,
 	struct vchiq_service *service;
 
 	rcu_read_lock();
-	service = __next_service_by_instance(state, instance, pidx);
-	if (service && kref_get_unless_zero(&service->ref_count))
-		service = rcu_pointer_handoff(service);
-	else
-		service = NULL;
+	while (1) {
+		service = __next_service_by_instance(state, instance, pidx);
+		if (!service)
+			break;
+		if (kref_get_unless_zero(&service->ref_count)) {
+			service = rcu_pointer_handoff(service);
+			break;
+		}
+	}
 	rcu_read_unlock();
 	return service;
 }
-- 
2.25.0.225.g125e21ebc7-goog


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
