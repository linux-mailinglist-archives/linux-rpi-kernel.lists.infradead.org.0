Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DE1113D9E5
	for <lists+linux-rpi-kernel@lfdr.de>; Thu, 16 Jan 2020 13:26:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Date:
	From:References:In-Reply-To:Message-Id:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=oW0+tUM+r4zSpf3C+HOnvUxDlH1CyTxrSaY1lGk3WmU=; b=Swoua1Qwdw3e7DmwfbNcBnL61n
	ip2B3Qam8j72CKAjeOtfvBbWedTcHd+tvjb1ME1XT7mgPIL4bERdvjGjEGT7cqSYWDSwPSwAzAy32
	eBhMV3BwamJIUDNT/BDB0Uw86lfsrut7ufOw0TP3MYpsumVTvY1qD/nMvQFbCUvZA7LrB/JBq6n+o
	qaJVSquSkZZtAXeCjWuGFmN/xgMyq84OE1FQopead5+D1MuSCuFASvaYTEVSDEAN2SCfX+T0Nz/Zx
	1R/L+HVbHFYZ7IfPeW6HCSZ4e6ziSY/jfjCgUYkx3THxMpN94MDp5JCFldgce+Gh10+iq/5afPgFm
	2GM1TSAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is4Ea-0005qb-NG; Thu, 16 Jan 2020 12:26:48 +0000
Received: from mailout2.hostsharing.net ([2a01:37:3000::53df:4ee9:0])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is4EU-0005pr-AS
 for linux-rpi-kernel@lists.infradead.org; Thu, 16 Jan 2020 12:26:46 +0000
Received: from h08.hostsharing.net (h08.hostsharing.net [83.223.95.28])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client CN "*.hostsharing.net",
 Issuer "COMODO RSA Domain Validation Secure Server CA" (not verified))
 by mailout2.hostsharing.net (Postfix) with ESMTPS id 206511008C310;
 Thu, 16 Jan 2020 13:26:41 +0100 (CET)
Received: from localhost (unknown [87.130.102.138])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by h08.hostsharing.net (Postfix) with ESMTPSA id D379460AE1B8;
 Thu, 16 Jan 2020 13:26:40 +0100 (CET)
X-Mailbox-Line: From aea363c27fd541dba96d2ebfeee4f596c6d34932 Mon Sep 17
 00:00:00 2001
Message-Id: <aea363c27fd541dba96d2ebfeee4f596c6d34932.1579175223.git.lukas@wunner.de>
In-Reply-To: <cover.1579175223.git.lukas@wunner.de>
References: <cover.1579175223.git.lukas@wunner.de>
From: Lukas Wunner <lukas@wunner.de>
Date: Thu, 16 Jan 2020 13:14:06 +0100
Subject: [PATCH 6/6] serial: 8250_bcm2835aux: Document struct bcm2835aux_data
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_042642_514026_ECB8184C 
X-CRM114-Status: UNSURE (   8.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: linux-rpi-kernel@lists.infradead.org, linux-serial@vger.kernel.org,
 Jiri Slaby <jslaby@suse.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

Document the driver private data of the BCM2835 auxiliary UART so that
upcoming commits may add further members with proper kerneldoc.

Signed-off-by: Lukas Wunner <lukas@wunner.de>
---
 drivers/tty/serial/8250/8250_bcm2835aux.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/tty/serial/8250/8250_bcm2835aux.c b/drivers/tty/serial/8250/8250_bcm2835aux.c
index d21460c9ef4b..e70e3cc30050 100644
--- a/drivers/tty/serial/8250/8250_bcm2835aux.c
+++ b/drivers/tty/serial/8250/8250_bcm2835aux.c
@@ -16,6 +16,11 @@
 
 #include "8250.h"
 
+/**
+ * struct bcm2835aux_data - driver private data of BCM2835 auxiliary UART
+ * @clk: clock producer of the port's uartclk
+ * @line: index of the port's serial8250_ports[] entry
+ */
 struct bcm2835aux_data {
 	struct clk *clk;
 	int line;
-- 
2.24.0


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
