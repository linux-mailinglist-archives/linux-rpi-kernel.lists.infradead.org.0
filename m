Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F239CF9DC
	for <lists+linux-rpi-kernel@lfdr.de>; Tue,  8 Oct 2019 14:34:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KGQ9meVFZLOal5s2zDhpb2VUou0mmmy6zV1PBvE/1rc=; b=B2BNmFhE+SLwqT
	stXYC6oB1SLJKcCGOcgTusN+bPnXuf38nDK6YtdWTWkBSanHA1aUS6zXnxt9bmogZnnDKSyx+FglR
	J/jLMp9crvEpCeZGvLHgRAe/OuvYY01pMQFjUqdLGKI2PbHyChaSH068h3YOfzhOGjBzdN7oqAxCD
	pUrmi4y616EewOTjq87P06vOELhOkYVFX/GyShNLUxVht/XDD3pxhn2Tkc5oBsQ+zIPjZClDHhM+F
	C8Phl3JBzuSZ8S/CbE+aORhPI5ZdFQLX26lCPwW20GSCEyoJsyMhxkAlQ0s00xUOFWkOSSuZT1whg
	r6sytTz2LApJC8G2ZTyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHogi-0007fu-7l; Tue, 08 Oct 2019 12:34:00 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHoge-0007dP-DW
 for linux-rpi-kernel@lists.infradead.org; Tue, 08 Oct 2019 12:33:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1570538034;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=vxNxzGS1YL2pIRA3iElWkbMg1T80wDQcjG/i1PxznHk=;
 b=Q8m79AQw4sb+0RNHIjO20e/QuJ2lnXfe02QaErLRWXMYhKkA7H0aPVqiHZGMEUIaae+6g9
 f0fIvUQ4153wY788l/LNlTI98/MdsJ6m1k0KLyw3x5ye7ZZPeBPUsmunjwl5UwaiHC+YyN
 P9NjBbTkIXOsgv41tNhN8GUJmJ+ZWsQ=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-341-yYvNTT9iPA6zangyRJSo1w-1; Tue, 08 Oct 2019 08:33:52 -0400
Received: by mail-wm1-f69.google.com with SMTP id 190so1321707wme.4
 for <linux-rpi-kernel@lists.infradead.org>;
 Tue, 08 Oct 2019 05:33:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=J4guI5W+JBy2/Wk9QmpICIZphEUf2I9ZwikXlS8M7Tk=;
 b=UTiedkCfP/6wpVH/vEEbAaT0u+uTlTsnQR1MfC1wcqGV9ZLtXWyrh7FR980dOQsN/l
 LkZJbeTt3sJWsrnRIa0Z4N+78gA+DibMBU27DCvSf98nDjYI/+0qyTiEYrJ25ELPAmwB
 Q9qbPp9Agd4QsL3EIfJECxu+FAz3YcHG9W+YAI2Su2mCKSLw57+Qn5fH58dX2moqjmQr
 IdFgqYdW0m0+p3jUSOXzkYY3ZyKa0TD2dmoxo17ZJcltQhvB3IbeUQz3a1EOvfVGvDBR
 XGAZ6X9pi+yPAZ2jCCz6P303VthzaTOMyCG+5Wabf1iEeIjnAIknpZBEbBfryszNUxOg
 vNlw==
X-Gm-Message-State: APjAAAX7pCBgHQl1EdKGf+K/FN0GOMkD0nD3RSkf15hxYsWO6tePDCPK
 SNyanABd7hyHeJx3rifFZ3OOaSmQax7O9oIi+v4N/1gYAHMPLe7f62gEavvtnQpdfwepEyx51Ej
 QK9Wdlu4HPoeT4bo88cAgPLOLkMhRHHcbsps=
X-Received: by 2002:a05:600c:2207:: with SMTP id
 z7mr3714161wml.149.1570538031448; 
 Tue, 08 Oct 2019 05:33:51 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyAKI2iZTVbZl4t588qZfShH353mJjPntH73s4tdZMg33tqt9c0kisZMYYS3sNnU0yf2q5GQA==
X-Received: by 2002:a05:600c:2207:: with SMTP id
 z7mr3714148wml.149.1570538031223; 
 Tue, 08 Oct 2019 05:33:51 -0700 (PDT)
Received: from mcroce-redhat.mxp.redhat.com (nat-pool-mxp-t.redhat.com.
 [149.6.153.186])
 by smtp.gmail.com with ESMTPSA id u68sm4361842wmu.12.2019.10.08.05.33.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Oct 2019 05:33:50 -0700 (PDT)
From: Matteo Croce <mcroce@redhat.com>
To: Eric Anholt <eric@anholt.net>, Stefan Wahren <wahrenst@gmx.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 devel@driverdev.osuosl.org
Subject: [PATCH] staging: vchiq: don't leak kernel address
Date: Tue,  8 Oct 2019 14:33:46 +0200
Message-Id: <20191008123346.3931-1-mcroce@redhat.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-MC-Unique: yYvNTT9iPA6zangyRJSo1w-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_053356_535923_3CEB4C27 
X-CRM114-Status: UNSURE (   7.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

Since commit ad67b74d2469d9b8 ("printk: hash addresses printed with %p"),
an obfuscated kernel pointer is printed at boot:

    vchiq: vchiq_init_state: slot_zero = (____ptrval____)

Remove the the print completely, as it's useless without the address.

Signed-off-by: Matteo Croce <mcroce@redhat.com>
---
 drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
index 56a23a297fa4..084cd4b0f07c 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
@@ -2132,9 +2132,6 @@ vchiq_init_state(struct vchiq_state *state, struct vchiq_slot_zero *slot_zero)
 	char threadname[16];
 	int i;
 
-	vchiq_log_warning(vchiq_core_log_level,
-		"%s: slot_zero = %pK", __func__, slot_zero);
-
 	if (vchiq_states[0]) {
 		pr_err("%s: VCHIQ state already initialized\n", __func__);
 		return VCHIQ_ERROR;
-- 
2.21.0


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
