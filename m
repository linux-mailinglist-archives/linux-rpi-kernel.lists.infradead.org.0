Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02E2DF798F
	for <lists+linux-rpi-kernel@lfdr.de>; Mon, 11 Nov 2019 18:14:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GGLigk4hXrEMZqtanOSds4cPRXP94ZHdja/o6pEV+5s=; b=m6gbCmJBIbBN5F
	jq4WrZVovW2YNQyXp3iy+QkiWyI3epefxKDA8GXj2MYEgXQkvgFBiE8CA9HQexWY3I7AxGXJ9FlGM
	zKaB6jpBDMIavIDN11eujfwA9ChCOD5iRu1G00vHPvmrZzTTA3MnOfIDozlLCqdz26IY5o0Oh2jo8
	QidQrhjtViTt9LM9Nvk9emM6HYxXKpCfdAr1VHwAg0Q6mz8x0ypFg1RyUz1l8quWJfsmWLof5OKh0
	9WvUhKp2B9ZcV7S0by/P/xE24JaLWkSrYBHLC505crYclzunPSeRojOVk7aunt6lfQxOpfee28BtN
	1vdDfgSeUD3ia874MRCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUDGp-0002Kc-7Y; Mon, 11 Nov 2019 17:14:31 +0000
Received: from mail-qt1-x84a.google.com ([2607:f8b0:4864:20::84a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUDGl-0002JM-Kq
 for linux-rpi-kernel@lists.infradead.org; Mon, 11 Nov 2019 17:14:28 +0000
Received: by mail-qt1-x84a.google.com with SMTP id x21so18144503qtp.1
 for <linux-rpi-kernel@lists.infradead.org>;
 Mon, 11 Nov 2019 09:14:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=Q5ErOqEeQkE8zGWZ/Cg8117Aj3E39qkq6ZFr/731Nhk=;
 b=DNnIxJSZbYSCKMXR3oyKxojR0Ry/7lQvUxUCeVzTB46EFnKBd0Wlco4EImaXNfhPGV
 nv43bycGASAvRX5ZOnUvtFqFe5xzIJE3xGjmfI0X4P/AiiiGw99YV/AlIr+12VabjmeB
 80bRSbtOnKAidqBEXxVsE8TKny8FqkUzaD3SNlcKYFVJvEsQzrWMGf0tRuQIba425C9c
 msG0pJgFShRBo3LZf+cEg0ITx4iRtIa0RhA/b8gRrypPNKFax7d+h+BCykKLFHuBKIfl
 YmsnwvcbuM/5OqPCRPoOzuOKrzbguqfOK3cD7+Y5WYwJ0i8YU8+RVDMo3vWqZakaZFVY
 3buw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=Q5ErOqEeQkE8zGWZ/Cg8117Aj3E39qkq6ZFr/731Nhk=;
 b=ESDmVErHENXm/ilTLmxigxhk1a5h1wwYjUsuwlM/Q5bls1A815uxcukK/JYX4n67gB
 DnboGb/aqf8beWG4ODmnuTlX5bkUAumKUZf/VhF/ri2EQ7guAlyplCk/NVRWWXwNvrzG
 OTnOs7qwbpZitvHZ6OlY654Y6Akdd4X5i8uv24mwSNvGf3dvJTg+GZmS60RijGrtXSUE
 6ow3MAYsqk1NjqPEg02jgTNHcQzbw0uuqFcFwwbtaB07b3ZHFRaM2ExxLab6wlDYgwj8
 +f06HJ4J/MtiMfy+6j4K9yISnwaepuKgdA+wkYGhbKQGtDYDls9lWMvUGQ6B9fWcYKBO
 /r/g==
X-Gm-Message-State: APjAAAWfr7LYzV20wSZz5dSe1bbmfhsAm/ks4dicM7M1TgCuTXnpGuO/
 HSr4/JJaApqMm4VoqRJJSA/zvTJd1n6+pG8hr14=
X-Google-Smtp-Source: APXvYqzhos/xZbT5rm6ROmVzx3DjwEz3ae6GOJfhntU4fkDgkShMPx2sH+xkq+6a8A9zKzf7m3LJ6zvxjP+D+nbbJmM=
X-Received: by 2002:a0c:b062:: with SMTP id l31mr25296302qvc.43.1573492464996; 
 Mon, 11 Nov 2019 09:14:24 -0800 (PST)
Date: Mon, 11 Nov 2019 12:14:22 -0500
Message-Id: <cover.1573482698.git.marcgonzalez@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.24.0.432.g9d3f5f5b63-goog
Subject: [PATCH 0/2] Remove global struct vchiq_drvdata variables
From: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
To: gregkh@linuxfoundation.org, eric@anholt.net, wahrenst@gmx.net
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_091427_710199_45D2452D 
X-CRM114-Status: UNSURE (   5.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:84a listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
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
Cc: devel@driverdev.osuosl.org, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

These appear to be populated once in vchiq_probe() and then read
once in vchiq_platform_init(), so by moving the logic to that
function we can remove some (small amount of) global data.

Marcelo Diop-Gonzalez (2):
  staging: vchiq: Move retrieval of rpi_firmware to
    vchiq_platform_init()
  staging: vchiq: Remove global bcm*_drvdata

 .../interface/vchiq_arm/vchiq_2835_arm.c      | 18 ++++++++--
 .../interface/vchiq_arm/vchiq_arm.c           | 34 ++-----------------
 .../interface/vchiq_arm/vchiq_arm.h           |  5 ---
 3 files changed, 17 insertions(+), 40 deletions(-)

-- 
2.20.1


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
