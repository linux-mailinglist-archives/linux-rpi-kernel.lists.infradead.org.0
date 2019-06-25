Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53D90556FE
	for <lists+linux-rpi-kernel@lfdr.de>; Tue, 25 Jun 2019 20:19:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xcy+pp7zbLozUZWpDvbk+wdT6CVQzKEscC3eEFq4lyY=; b=qLSRPOHoyOhKFd
	QQFq2UnT7DMK/+99xY37oS+RItNhPBevgmkSC/Yzgr2IWlucSgMSihk6I1zzmH8bC5qzhc/gC2dXQ
	dbfMBgyBs3D9OK8TlWZyM9go+inbzpRV8JRi4gXD6FHt6hnY0OCaRJF8TAcbCMjd/c3b6SPqNKJAG
	CpDOQoAGdLyVm/j6xZzqIJGfkI0idrC2T/i4jDfs3jHt+dQ2OROPjBqpV4CJk4j/dYnJU+zBkteqm
	RWEjs+IOs2SgVz7YQA2ADYOGKbNOyE2/ZFQjX77qiTf07Zp01xGKmhAvmKidA7NFrCyUhc8MncjoS
	V8mdKbOjpCs+oyMAMFvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfq2O-00059o-Mp; Tue, 25 Jun 2019 18:19:24 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfq0k-0003r6-Uo; Tue, 25 Jun 2019 18:17:44 +0000
Received: by mail-pg1-x541.google.com with SMTP id y72so9350379pgd.8;
 Tue, 25 Jun 2019 11:17:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=6OE9g8UxPWrlkp4I1s8MLnXbmsIfGkjszHg/VwiGeEI=;
 b=PkcnIeQzs1zfKtuo3z5TFZlEfPLQDxByeWDqKTvjmHFMvYz7goekr2Man0wK+dYbWA
 fN37jKHynn81HP6qHvzpkH5KxUlLABHF0NTKGaUGEFZ5/Muwt3mgxqJUmcS3gB4xusR7
 PAzlc0WsUR+wpCoLxQA7Y3q/pj8W5JExqojbqEREDdPr2iPYMY+GzCwenTueuLZGk8aH
 ot5kyZFDDfOcKjqTpt9n/vH3tncH+PZJbyLLlC5810OZjIME1ku2MF8ITuuoo3qtK48Q
 44Eu2FNwFqFulfggzkhbHftgU5GSg5GclOUnpOQDd9J5KKO2vlH8K3Ogdqv7gCfTq2qm
 roxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=6OE9g8UxPWrlkp4I1s8MLnXbmsIfGkjszHg/VwiGeEI=;
 b=ilx4MEDwBSL8aoby5Fnsa4QTLyDsSOVVgrQKKWMCDsTSUv79Tgg7gkILjCDMXnajmx
 XTKJnqOZ0mfaw4dMJIhTfcRYj7QOURj3/rlvzGJ9ZAPaiVApPVDoP6YVpWLXxVqU6Y22
 RYwo1m9eoYSIYjGn/gNu5YYlyBdHNVVi/W3boxoIel6qCbHxfKbvSJZ7YURTyfjzyDju
 p1AEOrZG40tkWMtU3IAtEsHWgBuCK09tgP0jUzlU0OgEERr9/6XVNEfG5WWWkY9wdRwb
 no3APHbFckQlcc6sYP+3h4/11kbamVfFo5xdADPRf1JFmTKC9HQ7xiv0s08OhWArsEVU
 iPZA==
X-Gm-Message-State: APjAAAWv+ZzyVMvBfM8s1pZvoe8mjaFd7V7zXf7NO1KlJ3tVcs7l5NW/
 NXnzp9ifjXH/nGdUGkbCIP4=
X-Google-Smtp-Source: APXvYqydZ9SS49WOaaOPUIdJjRrGZB4Pi4MNamUCtvrLZ1terMbJPUqVgdk8zJy2zhwcaEkFBfNwHw==
X-Received: by 2002:a63:88c7:: with SMTP id
 l190mr33994930pgd.240.1561486661850; 
 Tue, 25 Jun 2019 11:17:41 -0700 (PDT)
Received: from localhost.localdomain ([122.163.71.137])
 by smtp.gmail.com with ESMTPSA id w7sm14042959pfb.117.2019.06.25.11.17.38
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 25 Jun 2019 11:17:41 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: eric@anholt.net, wahrenst@gmx.net, gregkh@linuxfoundation.org,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 devel@driverdev.osuosl.org
Subject: [PATCH 6/9] staging: vc04_services: Remove
 vchiq_use_service_no_resume()
Date: Tue, 25 Jun 2019 23:47:06 +0530
Message-Id: <20190625181710.2267-6-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190625181710.2267-1-nishkadg.linux@gmail.com>
References: <20190625181710.2267-1-nishkadg.linux@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_111743_109459_ECD7324E 
X-CRM114-Status: UNSURE (   8.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (nishkadg.linux[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

Remove unused function vchiq_use_service_no_resume.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 .../vc04_services/interface/vchiq_arm/vchiq_arm.c  | 14 --------------
 .../vc04_services/interface/vchiq_arm/vchiq_if.h   |  2 --
 2 files changed, 16 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index 6e59470d44ab..a97076c18a0f 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -3072,20 +3072,6 @@ static void suspend_timer_callback(struct timer_list *t)
 	vchiq_check_suspend(state);
 }
 
-VCHIQ_STATUS_T
-vchiq_use_service_no_resume(VCHIQ_SERVICE_HANDLE_T handle)
-{
-	VCHIQ_STATUS_T ret = VCHIQ_ERROR;
-	struct vchiq_service *service = find_service_by_handle(handle);
-
-	if (service) {
-		ret = vchiq_use_internal(service->state, service,
-				USE_TYPE_SERVICE_NO_RESUME);
-		unlock_service(service);
-	}
-	return ret;
-}
-
 VCHIQ_STATUS_T
 vchiq_use_service(VCHIQ_SERVICE_HANDLE_T handle)
 {
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
index 5445f201e284..c23bd105c40f 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
@@ -107,8 +107,6 @@ extern VCHIQ_STATUS_T vchiq_open_service(VCHIQ_INSTANCE_T instance,
 extern VCHIQ_STATUS_T vchiq_close_service(VCHIQ_SERVICE_HANDLE_T service);
 extern VCHIQ_STATUS_T vchiq_remove_service(VCHIQ_SERVICE_HANDLE_T service);
 extern VCHIQ_STATUS_T vchiq_use_service(VCHIQ_SERVICE_HANDLE_T service);
-extern VCHIQ_STATUS_T vchiq_use_service_no_resume(
-	VCHIQ_SERVICE_HANDLE_T service);
 extern VCHIQ_STATUS_T vchiq_release_service(VCHIQ_SERVICE_HANDLE_T service);
 extern VCHIQ_STATUS_T
 vchiq_queue_message(VCHIQ_SERVICE_HANDLE_T handle,
-- 
2.19.1


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
