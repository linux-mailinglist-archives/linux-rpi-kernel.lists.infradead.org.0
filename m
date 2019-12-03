Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B7DA110161
	for <lists+linux-rpi-kernel@lfdr.de>; Tue,  3 Dec 2019 16:39:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QW2I3dhYkERF1nAkPgCEHujKMvTH04/7C1pNAZd+G/k=; b=LZZFAViYYgMF8d
	2OjKEg0bCzLs7oM08n5vRYmJatia/RZFmMYO8JmGOorvr2qXZ1RM/dN7T5Zz3qjD0wx1lwALB1z5a
	lUbmtF61nqF93J/Ym9tSqEXI7Zell1ICQs66qmsuNG+bh+gXv7He84S1orS8CFEjCayeaE6dqaQIs
	/l/EW0erkV+gOqQgFaZFiXZ46s06pBMBIvhaprpzB+GCvvHhtCJZlGk3QpEoheW/JsLtP586b3Akp
	O5ymeJkNGbui+3uXxdCp1ETl36J2csFTX11IAgPrp8CW+YytBQVHwAgYkeAhbW7yvictMdOJ+fhvV
	cOXZnvo83k+6T7xzOWqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icAGt-0003yx-1M; Tue, 03 Dec 2019 15:39:27 +0000
Received: from mail-qk1-x749.google.com ([2607:f8b0:4864:20::749])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icAGq-0003o9-8H
 for linux-rpi-kernel@lists.infradead.org; Tue, 03 Dec 2019 15:39:25 +0000
Received: by mail-qk1-x749.google.com with SMTP id q13so2446049qke.11
 for <linux-rpi-kernel@lists.infradead.org>;
 Tue, 03 Dec 2019 07:39:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=4jy6twGZA9frX8ztxdk66Iv5FirWeTzZhcy0moRAfHk=;
 b=ob8ZnNMh6QY6qs0JA+hfj+HDt6+gNkgQPtjtwa1ZZjY3CZLcSUTADLRKRhEXzSeCv+
 H6pdo2I6hntlUtUgPdQZafnRzicZVzofx4uleyfeqyF9fl2k/qYLh9IThZ7V4aJwbomB
 G+Hl5HVRzmgWXm/Q1PMnumi1jWf3oFAn0lf2zneKAbhnWOeM7DB/Zf+4Lkv9WjA3vKUS
 IKBGKyqL3IRH+f+RE5DpJMssZiC4jXKyF8cGmXEb9et8HTxa51+VRZvbQsh4MssiyrSO
 7AAodFKvjMgkqSNMcaZ8A081kH21CjlHnXFDGLS47/K0Z83mxB3GQEw6bRGAUuycwYXa
 Jguw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=4jy6twGZA9frX8ztxdk66Iv5FirWeTzZhcy0moRAfHk=;
 b=nPLyjJSqnf0IPJH/EY8iqHLwUa7KxtCeB10HSFbGhFtjXs9eHghDoOf43JMVSDSWLK
 TCUvtqQXj5zrk73oASVKCIs6qDb9kcYhRJfouMLMtPSqCs/81A1WnIbgHeS4JQkHXZFn
 rb2XGvkhGZRMtNll8CRmCk3eS5c+inVsMirBg4L09HG/tElzTaThMVqatA/eiHfSL8Ij
 hEG2S2w93Dw7t0ZBmCOr1cDgYvieUkG7HsG1BRkgBYESWVc82FCXt8eBWtygqdiokCDk
 xqfKiRz+Hy1jfYlfZZ0Y8uBjLJKb0baD56bV7rNbwsuftwEk0x21U//q3rwiQULti6T6
 SYYQ==
X-Gm-Message-State: APjAAAXAISKje9n0v0rn4TP7Vne9MDYW29cgAPDmTrllMBABiH/f8LWg
 TxozcsALzEGs9d+3JMMQHT5/VVQCEH6VuBCSqa4=
X-Google-Smtp-Source: APXvYqyEiEmEFpR82UJm3zuIuu2cB907/+QSRyOEyJt4OFsHsnVCYZ/3ByRXSkNxN2vYbYrROJYv5pNfjNDeXNvYY+s=
X-Received: by 2002:a0c:8a31:: with SMTP id 46mr5846405qvt.8.1575387562479;
 Tue, 03 Dec 2019 07:39:22 -0800 (PST)
Date: Tue,  3 Dec 2019 10:39:21 -0500
Message-Id: <20191203153921.70540-1-marcgonzalez@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.24.0.393.g34dc348eaf-goog
Subject: [PATCH] staging: vchiq: call unregister_chrdev_region() when driver
 registration fails
From: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
To: gregkh@linuxfoundation.org, wahrenst@gmx.net, nsaenzjulienne@suse.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_073924_322947_1F7A69FF 
X-CRM114-Status: GOOD (  10.23  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:749 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

This undoes the previous call to alloc_chrdev_region() on failure,
and is probably what was meant originally given the label name.

Signed-off-by: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
---
 drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index 02148a24818a..4458c1e60fa3 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -3309,7 +3309,7 @@ static int __init vchiq_driver_init(void)
 	return 0;
 
 region_unregister:
-	platform_driver_unregister(&vchiq_driver);
+	unregister_chrdev_region(vchiq_devid, 1);
 
 class_destroy:
 	class_destroy(vchiq_class);
-- 
2.20.1


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
