Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48EAD1044E6
	for <lists+linux-rpi-kernel@lfdr.de>; Wed, 20 Nov 2019 21:21:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R3kPMJVmNNJhaSy6PVMgiWd69x2+95P8xy9kExtYb9Y=; b=AMq9f5Y4muhVNb
	CF63pgMSfHqi1133OQPy0B8qhqElWFu/ZZR427j/95LqW6q9bzLLmKdJzN7IOreD7YeuzXZFuV7nb
	REHVmTqzFwf7SIhm2lpBP4yRG/gyDjVhgGAZy5ieEZ5qj7SRI/lMTPei1aXS9QpTFfXTViLFAIsZT
	TkMIE9rH66KoldtAUiAwlJ0NPhycjAGCF/juEDjo+dUSs0LbCB7bbJMy/ftPHLkJr1fhixqJ33I+C
	+5sxAz04Si3wh3oIqSqc1zF4ERFoRW4/f48EVV7bXISSpmyYaSktJ2jrFq2BwyxBj3f5Sps+BUGlE
	YHYsyGZ0IbqMnCiaQ3bQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXWTQ-0000va-Nu; Wed, 20 Nov 2019 20:21:12 +0000
Received: from mail-qt1-x84a.google.com ([2607:f8b0:4864:20::84a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXWTL-0000rR-IL
 for linux-rpi-kernel@lists.infradead.org; Wed, 20 Nov 2019 20:21:09 +0000
Received: by mail-qt1-x84a.google.com with SMTP id j18so677217qtp.15
 for <linux-rpi-kernel@lists.infradead.org>;
 Wed, 20 Nov 2019 12:21:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=fWfTgwXgNFFl2fLN6zQYf3X/dIUmqtkeZhCtb1F+DgQ=;
 b=gtuofu0zXTJtMRhTzmiWR7ra7BXyRjjQkfgvEfsM26gkH7ijheeDuFBkTjwxaS6Ko6
 5wGSLZhoiAqkkJWPeg72mysHkgeilUBI/KU9vRHmaYYuPA23IDKORqkuDv29oFVKRjmP
 zqnei+jzuFsl63DBLJ0pzo7GCEVxvXzNiOIcO0gAPZvQZ3ckxmWKlkE7ckPui1ajRobY
 drrMYFKsz/tpbv/H1rPtLX1C2bfmx+N14gjsFV67gBr2FAEnrN2aocvOfnmFGAN3PwBG
 XXwYIIHiGr58GA/lH3JjzBzFjfMV44NW8syeRCkymmnGgZkYYSMWGMnRUVDptDrdc+YY
 Ds8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=fWfTgwXgNFFl2fLN6zQYf3X/dIUmqtkeZhCtb1F+DgQ=;
 b=DEd71g6nBe3ZT8r+mGMW+gZ5CQPsfhCFR7wNmYlWK7e0mmGchLDSouVDKf/gDaixnl
 7UnrQZDVgRx/x8V8HRCvbNYw4w/XyKHPnPXTdEt7UOhUAOz4ST4YV0Da+lPmfGfvfBe+
 fP3/C4p0NQWKTUHkVMxi17AKRqcnLPDF0DVzURLaoSYdj/PEeIREo3XAZ0vhn6mv3PyZ
 NYo4f2PkD4IxuaFuydhGjMzHVKFv7Qc3JdzO/W3xH8vobTdU+FiDvhaBq/TdhdBFrPGS
 OBfixji560+V6qa86s6emrtaLhrLvXHDOGCEMlAm7ez5WmQOAEG2zrxS5IkCa/huartD
 sEuQ==
X-Gm-Message-State: APjAAAU1vPB8sPxOOwTaE3K7u7Bz1MPmtg2tbzdPjvrqLUycQhvwWMI4
 mnYuGjEZkGQf5OgCY200Jc4griuN/z6B9haY8WU=
X-Google-Smtp-Source: APXvYqyA3GCfXTOVhCVwlVpc2ljyFhIZxTm7UWi4+moq4Nie2yQYgoXdaPZ+E21o18wZOsmO3H8xPQYn0n9Y3AdZjxg=
X-Received: by 2002:ad4:4e6b:: with SMTP id ec11mr4603362qvb.121.1574281265380; 
 Wed, 20 Nov 2019 12:21:05 -0800 (PST)
Date: Wed, 20 Nov 2019 15:20:59 -0500
In-Reply-To: <20191120202102.249121-1-marcgonzalez@google.com>
Message-Id: <20191120202102.249121-2-marcgonzalez@google.com>
Mime-Version: 1.0
References: <cover.1574253964.git.marcgonzalez@google.com>
 <20191120202102.249121-1-marcgonzalez@google.com>
X-Mailer: git-send-email 2.24.0.432.g9d3f5f5b63-goog
Subject: [PATCH v2 1/4] staging: vchiq: Fix block comment format in
 vchiq_dump()
From: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
To: gregkh@linuxfoundation.org, eric@anholt.net, wahrenst@gmx.net
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_122107_601890_B77084F4 
X-CRM114-Status: UNSURE (   9.77  )
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

This fixes a checkpatch warning.

Signed-off-by: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
---
 .../staging/vc04_services/interface/vchiq_arm/vchiq_arm.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index 319e7aa0e0e0..6328abcaeeeb 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
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
2.24.0.432.g9d3f5f5b63-goog


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
