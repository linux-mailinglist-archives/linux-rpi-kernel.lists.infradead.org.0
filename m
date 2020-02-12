Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E8D715B00A
	for <lists+linux-rpi-kernel@lfdr.de>; Wed, 12 Feb 2020 19:43:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zJ+8M8OLSerRt4SFY3qULXSC9p+rIdpAzNW3UwdPtuQ=; b=RJ1sAH0n/v/PHj
	6J8CsbRirgv5cRPcDtphoQoSLmm3CcWpCJll9t1z+jcoH29UOl4BK+qfll3DDt7VVNK0bqNKPBOJ2
	FaDz42DyB1fEdhB45siY/Mk5/2/yqd7l3yHZjosxudTaIrCtB8PR4pkXwN5JJQGfZG1p3vp8fVyoG
	0uKZkRTUSi499Xuw9p3doeapyG6RLMxJX35W1uTsPTtzII+oNBzwG76KiEOnkyAxtNv5avNIXlSh6
	SPFz0aXWBJU6VQ/7c18FLV8waiFLjjXcfQgOjn58RwWxVrtomqwYp0TP2SiMe73kS5cnErJDh2qv0
	9n2l0T+rDRnk4eOH+ydg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1wz7-0007hO-1l; Wed, 12 Feb 2020 18:43:41 +0000
Received: from mail-qv1-xf49.google.com ([2607:f8b0:4864:20::f49])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1wz2-0007fK-ST
 for linux-rpi-kernel@lists.infradead.org; Wed, 12 Feb 2020 18:43:38 +0000
Received: by mail-qv1-xf49.google.com with SMTP id ce2so1906888qvb.23
 for <linux-rpi-kernel@lists.infradead.org>;
 Wed, 12 Feb 2020 10:43:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=xaHikqo8uj3LPQIwtJG1BZ6E5u8UOeGpD80vt3j29n8=;
 b=qf6MOYxXP3YPQ1eXMwjB7PnTcf/wcXnwPhFTJeuGp9ZmYwi7QRu9R+9VictvmSlVfo
 KfT5Sd5bvTLyWmYZTgH1DU8Lk9u4DEMN9zglMsc3aZoukdnFPn04lXLW8z3R1t/B2aUt
 6ObAV9qZchMtD0mzzSIRb22jqtjSMN84EgS3pR4BEYIFv46U01Vyg91DyYOX+Slm4iYW
 hpPmjF56wBmbuH2QoKBuWjb8WEv0hDYG0XAlKetYqTjSBp8QyD8ws8uLYD6CfVmUdQdG
 9YKo1Ym2zeTPBwDkAcRLgWVO6y9MiLTkKJQknyyfjGUATW+H0VEUJGtgMcRkbJEx/Sv4
 uQ0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=xaHikqo8uj3LPQIwtJG1BZ6E5u8UOeGpD80vt3j29n8=;
 b=MuViqSfNqCS6JW538ANAhy+yE5+fkXubnwBq9dD2zerHw5KDSRjiyx2ssnBtft3BHH
 /LsnT6jl7Gi1nlxMX5alrjl552Dmtb95deBUJH6uzkUOyX7azTRllEwJZaE3kVhlLF0l
 ausTS51jsYFfGd+I34QCtTLtlbqj39+Ql/3GWxCjHgm+/SSlKgICIwmZ2i04i4lcK5gC
 rBYhfJFyZOMIQSqipVm3rfZYNebC8Fec+FRJNomX9wDf+WfyF+cpvMgpIg+lhaFZH9Hb
 r1tiezQQuLPWvgmQwJY0J8SHSDPxc169SjwVzsIsMdYVvt9oM9Wg5LwCdvLhpC0OFsZR
 80cQ==
X-Gm-Message-State: APjAAAXRU71smtfU3VbcQjOhEJFpPfRYwZb5+0X0Q98/BR2DoDWpAiUq
 dTX8lKb7E+UD0rhjnxltktMgQUCqa6zVXBru7FU=
X-Google-Smtp-Source: APXvYqzm4DXE5pFIr/V5mpzREkOty2EYQp7Z8b0GMnmFtZ/9weAVH/BFM/5D4W2Gsz5KrwIxwT+xVBpvO2C/6qLk3uU=
X-Received: by 2002:ac8:4b50:: with SMTP id e16mr8054032qts.89.1581533014693; 
 Wed, 12 Feb 2020 10:43:34 -0800 (PST)
Date: Wed, 12 Feb 2020 13:43:29 -0500
In-Reply-To: <cover.1581532523.git.marcgonzalez@google.com>
Message-Id: <ed8b0034e316b2a81b621e9fca43f8368334b191.1581532523.git.marcgonzalez@google.com>
Mime-Version: 1.0
References: <cover.1581532523.git.marcgonzalez@google.com>
X-Mailer: git-send-email 2.25.0.225.g125e21ebc7-goog
Subject: [PATCH 1/5] staging: vc04_services: remove unused function
From: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
To: nsaenzjulienne@suse.de, gregkh@linuxfoundation.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_104336_920246_D6988F0C 
X-CRM114-Status: UNSURE (   7.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

vchiq_get_service_fourcc() doesn't seem to be used anywhere

Signed-off-by: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
---
 .../vc04_services/interface/vchiq_arm/vchiq_core.c        | 8 --------
 .../staging/vc04_services/interface/vchiq_arm/vchiq_if.h  | 2 --
 2 files changed, 10 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
index d5957411d906..4f8b59deaec9 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
@@ -315,14 +315,6 @@ vchiq_get_service_userdata(unsigned int handle)
 	return service ? service->base.userdata : NULL;
 }
 
-int
-vchiq_get_service_fourcc(unsigned int handle)
-{
-	struct vchiq_service *service = handle_to_service(handle);
-
-	return service ? service->base.fourcc : 0;
-}
-
 static void
 mark_service_closing_internal(struct vchiq_service *service, int sh_thread)
 {
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
index 07c6a3db5ab6..39b77ea19210 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
@@ -13,7 +13,6 @@
 #define VCHIQ_MAKE_FOURCC(x0, x1, x2, x3) \
 			(((x0) << 24) | ((x1) << 16) | ((x2) << 8) | (x3))
 #define VCHIQ_GET_SERVICE_USERDATA(service) vchiq_get_service_userdata(service)
-#define VCHIQ_GET_SERVICE_FOURCC(service)   vchiq_get_service_fourcc(service)
 
 enum vchiq_reason {
 	VCHIQ_SERVICE_OPENED,         /* service, -, -             */
@@ -128,7 +127,6 @@ extern enum vchiq_status vchiq_bulk_receive_handle(unsigned int service,
 	enum vchiq_bulk_mode mode);
 extern int   vchiq_get_client_id(unsigned int service);
 extern void *vchiq_get_service_userdata(unsigned int service);
-extern int   vchiq_get_service_fourcc(unsigned int service);
 extern void vchiq_get_config(struct vchiq_config *config);
 extern enum vchiq_status vchiq_set_service_option(unsigned int service,
 	enum vchiq_service_option option, int value);
-- 
2.25.0.225.g125e21ebc7-goog


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
