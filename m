Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A68901D5593
	for <lists+linux-rpi-kernel@lfdr.de>; Fri, 15 May 2020 18:08:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Date:
	From:Message-Id:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=v2VOdDDhiY83R8OrbSnZpax9bS3ii0V6eiIPMfbC4XY=; b=tnf
	r5B94DHQ/p0rULSI2HvgeWCAhaRwCPjgImQMHRomjasUajvC7VplnkHBJV0uv4aiROrr5bGUnGDk0
	Gx8CFiI8/TQMGId1UHdUYFEmqu4f+7N5Wsj4YKb1tpcMPkI0PDkPie6GQJ4XgEDApYPGMwTb3Teqc
	wvbY2SgTrYeaWAHP67DoHwj55IpesSqfx1Gl0DDk2ynILYf+4Pv2HBBmb/W3Zzv+sy5wav2fYmY63
	JElyO6z7fxHtevJQnztoGAAGS9Ai6Tc1N1s6ab/8J6TBWhp9bMyMnGcxLLNHYLQNtIkc+Lt6Q9d/R
	SYp6r4/ABJZ8OHp5wwlYdBLpDS7pZOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZcsR-0005tG-D1; Fri, 15 May 2020 16:07:59 +0000
Received: from mailout1.hostsharing.net ([2a01:37:1000::53df:5fcc:0])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZcsO-0005s5-Fy
 for linux-rpi-kernel@lists.infradead.org; Fri, 15 May 2020 16:07:58 +0000
Received: from h08.hostsharing.net (h08.hostsharing.net
 [IPv6:2a01:37:1000::53df:5f1c:0])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client CN "*.hostsharing.net",
 Issuer "COMODO RSA Domain Validation Secure Server CA" (not verified))
 by mailout1.hostsharing.net (Postfix) with ESMTPS id D6AF910030DBE;
 Fri, 15 May 2020 17:58:11 +0200 (CEST)
Received: from localhost (unknown [89.246.108.87])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by h08.hostsharing.net (Postfix) with ESMTPSA id 96D0560AA8C2;
 Fri, 15 May 2020 17:58:11 +0200 (CEST)
X-Mailbox-Line: From d0dcbd098401b5d2a486eee7cf2f9dcabacf9605 Mon Sep 17
 00:00:00 2001
Message-Id: <cover.1589557526.git.lukas@wunner.de>
From: Lukas Wunner <lukas@wunner.de>
Date: Fri, 15 May 2020 17:58:00 +0200
Subject: [PATCH 0/5] Raspberry Pi SPI unbind fixes
To: Mark Brown <broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_090756_681366_F7D7328C 
X-CRM114-Status: UNSURE (   7.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Linus Walleij <linus.walleij@linaro.org>, Jingoo Han <jg1.han@samsung.com>,
 linux-spi@vger.kernel.org, linux-rpi-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

This series fixes ordering issues occurring on unbind of the
Raspberry Pi SPI drivers:

Turns out devm_spi_register_controller() is prone to
incorrect use and dozens of drivers have gotten it wrong.
I'm only documenting this gotcha here and fixing it in the
Raspberry Pi drivers.  Fixing the rest is for another day.

There's also an ordering issue in the core which has been
present for 8 years and affects all platforms (patch [1/5]).
Doesn't look like unbinding is tested all that often. :-)


Lukas Wunner (5):
  spi: Fix controller unregister order
  spi: bcm2835: Fix controller unregister order
  spi: bcm2835aux: Fix controller unregister order
  spi: bcm2835: Tear down DMA before turning off SPI controller
  spi: Document devm_spi_register_controller() gotcha

 drivers/spi/spi-bcm2835.c    |  8 +++++---
 drivers/spi/spi-bcm2835aux.c |  4 +++-
 drivers/spi/spi.c            | 10 +++++++++-
 3 files changed, 17 insertions(+), 5 deletions(-)

-- 
2.26.2


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
