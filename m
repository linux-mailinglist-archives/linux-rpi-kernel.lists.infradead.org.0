Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE492103EDD
	for <lists+linux-rpi-kernel@lfdr.de>; Wed, 20 Nov 2019 16:37:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fWqyhzviqROVbMiLYXOnLZ7Di/Zu3DiAUeTsS+bJxx0=; b=fI3HYkPGe62r8y
	0VDp2NpnsO5zKEp/GSArEhM1Si1OpeshYSKWDWHRdEypfWYKUWH6Vawrd0UhFkkaOIthSVf9qw/+e
	CRY3t5TOiT9NAgsko4pPWWtMr5rZ8PMSX3EvoepiaYO6Lzxo68JFCXHM5Z0fw9oev4UVsO6+E+DXr
	K97u2MV0biTFIKCxezbGGarH6LwvRSiuPsKOHeZ9uKnbdDQfUZrPmZj+7Ikl/24+SoatzE5WNW3+s
	wBbv/ODvehCYCz8YAx9otqTpYT8Ap6bR9OIIRljoH3W9zOIOGOvO5/PMB/DH7i3Sl0jTO7vmW3Eet
	HV1PXNtjWlcM7042IYFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXS2L-00074s-Ca; Wed, 20 Nov 2019 15:36:57 +0000
Received: from mail-yw1-xc49.google.com ([2607:f8b0:4864:20::c49])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXS2H-00072o-5E
 for linux-rpi-kernel@lists.infradead.org; Wed, 20 Nov 2019 15:36:54 +0000
Received: by mail-yw1-xc49.google.com with SMTP id n125so17898906ywb.6
 for <linux-rpi-kernel@lists.infradead.org>;
 Wed, 20 Nov 2019 07:36:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=9UqL212491HSYvTBtYxc6Q7H4ChdA0a5BFKHQkhH9HA=;
 b=hZawc0KSPggyBxM1Y5h4P/OhNP06+Uc5erF8j1BvYCc1O0PS3DbJXQkgo5cyy7BW/j
 125LhNBJtgYvIx0hwBmHIpRne+1t1BnyW/cqxSbFH3Yo5HJKfOmHRk+tuIMc2dVvKejH
 li0+65Yjg5Ed/rmPh4j7mhGStagSiXxGjhvFfIDOCT5j41a2wJD7tZR04F8xibttLUbt
 NedD41OqZA6AdWgS0PB7+SricUqd8f2NS6Us65CAx9yO5ry8tcFVTDB+/w5LFicYnsUi
 IELKj123Aa4LaH1cE/dyMjQafQx8mSRId70Vbie3L7xHN9gb/IiYSv+5x3QUGQDAZgPs
 EL5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=9UqL212491HSYvTBtYxc6Q7H4ChdA0a5BFKHQkhH9HA=;
 b=Pko7/LVxE8HYynokTXisogScXXKbpRcdd3ah4aCsSyenHfWMswSC+gZ06laFQtkyfI
 CdYCIzBU14cbhSSRbpx/qvPdgifLo3/h+e/4EIh46BsH2cZ+b5EXoH0N0d6sTVHwoc75
 yWbiK0vSGd8dV/kOwn2oyDEBrBKXWDlYVudm7ebNZQJnnSVAojmRL5p4wtKixJBPbMae
 IJc986mwjoZ+JdJl/dlSiOo1gjfCLTXVOrZTHKWpI6r43p9CBeoJj9dciboqoDaGMZim
 I+/VUYNKHap4qiHlSNU1mMPlD8W1mZwNgm4HQTphEqf0U/06YfEOkZjiyhyFlzT7PE+D
 MFAA==
X-Gm-Message-State: APjAAAXzIle728yjKb0nPpSswoCVYUZNPUKkpqsbIO4bxf9yAYC8kWEC
 Yod7xvAVd3o8eyXnkU5M3iN6zqep0eUGK8YDK44=
X-Google-Smtp-Source: APXvYqx2mKPn0/kxf9R+AdrmiQP4TnON1gauhsCTmqwR4GZg9Xs9DCqi7yQWBp8gBNpIPGIIAaRE6uNUCcSZnMraAto=
X-Received: by 2002:a25:9cc6:: with SMTP id z6mr2190034ybo.46.1574264210745;
 Wed, 20 Nov 2019 07:36:50 -0800 (PST)
Date: Wed, 20 Nov 2019 10:36:46 -0500
In-Reply-To: <cover.1574253964.git.marcgonzalez@google.com>
Message-Id: <d38c33e15a5cdffd2d49243574fee46be8caee92.1574253964.git.marcgonzalez@google.com>
Mime-Version: 1.0
References: <cover.1574253964.git.marcgonzalez@google.com>
X-Mailer: git-send-email 2.24.0.432.g9d3f5f5b63-goog
Subject: [PATCH 1/3] staging: vchiq_dump: Replace min with min_t
From: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
To: gregkh@linuxfoundation.org, eric@anholt.net, wahrenst@gmx.net
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_073653_197338_02E4EBFA 
X-CRM114-Status: GOOD (  10.33  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c49 listed in]
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

Replacing this and fixing the block comment format in this
function fixes checkpatch warnings.

Signed-off-by: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
---
 .../vc04_services/interface/vchiq_arm/vchiq_arm.c    | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index 319e7aa0e0e0..942b4768c88e 100644
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
@@ -2098,9 +2098,11 @@ vchiq_dump(void *dump_context, const char *str, int len)
 		context->actual += copy_bytes;
 		len -= copy_bytes;
 
-		/* If tne terminating NUL is included in the length, then it
-		** marks the end of a line and should be replaced with a
-		** carriage return. */
+		/*
+		 * If the terminating NUL is included in the length, then it
+		 * marks the end of a line and should be replaced with a
+		 * carriage return.
+		 */
 		if ((len == 0) && (str[copy_bytes - 1] == '\0')) {
 			char cr = '\n';
 
-- 
2.20.1


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
