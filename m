Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3A711044E8
	for <lists+linux-rpi-kernel@lfdr.de>; Wed, 20 Nov 2019 21:21:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9pX0e239jvvzKe75zYrfVbcQ/3CKB29Z9Y5QjvRjieI=; b=ea8J4v9yLuqxyW
	aFWPDPms9BY4vE2XM0ffU/bthwSEvMKxdz3v7kf87mOGTuRIiNF1+OzWvpSJU31Yv2l6vwaLZd3cj
	ch/6/dgVXp4a43dPT3hIuavNUDZLTzKvsNRZ1nicfJh5KOTacUOWSKDjfuOrZMyChoOpTIWj9IM8N
	xb93jONu1WXdr4Gi7r15VqoYeFgh2Xx1OqJGMzSLOA5u4sDWIR+TntFWPuwT7fUaSgVJ0rlsLuUl5
	SJnHJiFRHsiFYfZJBhkE268m7ruP/QzsW2Vh/d5jYcyitrTEL46Jo7QixmNkbk5kAQFDpoFL7e+dk
	KKRVWxemt13mRmhNGncw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXWTP-0000uR-Bo; Wed, 20 Nov 2019 20:21:11 +0000
Received: from mail-qt1-x84a.google.com ([2607:f8b0:4864:20::84a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXWTL-0000rp-C6
 for linux-rpi-kernel@lists.infradead.org; Wed, 20 Nov 2019 20:21:08 +0000
Received: by mail-qt1-x84a.google.com with SMTP id s8so672391qtq.17
 for <linux-rpi-kernel@lists.infradead.org>;
 Wed, 20 Nov 2019 12:21:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=crGojvqPejLz+ZoEWLR9PYMiwd17r/jHteu/NDFXyro=;
 b=h1lhvquFeZ2uh46ZsVkih9HTffkNZdfHGsII8AxyBthTH8OdPOl8wzt1TigjrIzEtc
 pycnaQgl/UdUSCOgdkRklhk/EckYHRqNSm1RS+dNxv/J5U+LC34rG3xgCX7zEWDjOSCH
 59HqTnemL8O9WYYMYI4rGOFRYEP0un3D0bk4gzehgYJcmxvvqPao8j/6aIvGE1IhnXbH
 pDbFfnDXvHICAYXGZtO8yFRTObYIhuUUccGCUbxV9ylSNboHX2ONPxi9TTWzeEV/DTxu
 gdb9XTXE4aSlppYaNECwuF28j+e8cxFeklWJlrd3Gr/UMYjuSbfZ10QrtniiQr5vBZFi
 G+Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=crGojvqPejLz+ZoEWLR9PYMiwd17r/jHteu/NDFXyro=;
 b=MG2AdU5IAbJboPGCPBokFPCbSmoOtpqadCO0pASG5ZPXGY72M/toQAB5Q8uMvx9JLw
 Wv3lrsJzpUChgAITZTbgGp7cWR1htjic7TQ+cwyFkKFRh/cXg8MRKo5dJbBpN84WU1Ml
 qHcBvBbz8vDlDzrUIVD8y1LRv0luldl0A0J0Z0JXI7DlBZod/tl7dh6YYTUixo313iIh
 +BfaHzkCAaY27vQ0S8tjijjl6UenUqyut/2pVimXhJ/6P0v0oyjClpSNj43RoY8py0cA
 b7z12HxaxkfD39nIQUZHjv5pMyivU9ezqB8JrOO+2C51ZGJrkFuJdHfnlOz9wLS+5mIF
 Gv7Q==
X-Gm-Message-State: APjAAAWGK4ywb2OZ3Ntlg8v3bk3NIXbDpSjwzSYXps9HhrpRSeMUwyWy
 iooHUkPQbp9b9e10jKMgfQAeqW4LFcXAmkdki6Y=
X-Google-Smtp-Source: APXvYqwZVUIkz9+QwLMhcsNNrs7QOMw0ZncDA4D59khxuhLBv1p3c4yZBk497TD5rgY2RePSlg/6KmLSz1M17XnrEVI=
X-Received: by 2002:ac8:23d3:: with SMTP id r19mr4808259qtr.297.1574281266299; 
 Wed, 20 Nov 2019 12:21:06 -0800 (PST)
Date: Wed, 20 Nov 2019 15:21:00 -0500
In-Reply-To: <20191120202102.249121-1-marcgonzalez@google.com>
Message-Id: <20191120202102.249121-3-marcgonzalez@google.com>
Mime-Version: 1.0
References: <cover.1574253964.git.marcgonzalez@google.com>
 <20191120202102.249121-1-marcgonzalez@google.com>
X-Mailer: git-send-email 2.24.0.432.g9d3f5f5b63-goog
Subject: [PATCH v2 2/4] staging: vchiq_dump: Replace min with min_t
From: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
To: gregkh@linuxfoundation.org, eric@anholt.net, wahrenst@gmx.net
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_122107_414675_A1213624 
X-CRM114-Status: UNSURE (   8.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Replacing this fixes checkpatch warnings.

Signed-off-by: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
---
 drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index 6328abcaeeeb..942b4768c88e 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -2081,7 +2081,7 @@ vchiq_dump(void *dump_context, const char *str, int len)
 		int copy_bytes;
 
 		if (context->offset > 0) {
-			int skip_bytes = min(len, (int)context->offset);
+			int skip_bytes = min_t(int, len, context->offset);
 
 			str += skip_bytes;
 			len -= skip_bytes;
@@ -2089,7 +2089,7 @@ vchiq_dump(void *dump_context, const char *str, int len)
 			if (context->offset > 0)
 				return;
 		}
-		copy_bytes = min(len, (int)(context->space - context->actual));
+		copy_bytes = min_t(int, len, context->space - context->actual);
 		if (copy_bytes == 0)
 			return;
 		if (copy_to_user(context->buf + context->actual, str,
-- 
2.24.0.432.g9d3f5f5b63-goog


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
