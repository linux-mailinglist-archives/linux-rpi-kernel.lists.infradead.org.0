Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C06713D9BC
	for <lists+linux-rpi-kernel@lfdr.de>; Thu, 16 Jan 2020 13:15:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Date:
	From:Message-Id:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=hK2mbCneVnyfocHJZvYQr6CAE+01L5U/Q9xU7YYay5M=; b=EzN
	UFaPiyJmsAB/V6UJpPKT3NbG/AUhfYg45NWHiB63bSgtWAWRuC4Qynw4hkZBluW3rH4EqASH4Eo8K
	Ixh5Pxty7erkX5OaAmj5flHJy3YuMmZeGDcPtKf7QOrCdl6fj6dYc6PxOAtczL13g6qR0nOkvZk3p
	HSWOBWgDC5bk6zm8RtHAyzSIN4Iha6L/JrW9iHop7is/p/6SzcHSZZZNu1UgMRrePeuE1UCrrsjw+
	87RtMZphuSoyzKBxP5aM5nyCa05MtzlmyzVvMtGXKAPgPY3G8AR/SEQdoihI1AmjQr+yPA9rCuwOL
	YBcfj0ghBc+JwZUqqWDPT3Zr0XEBL7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is43x-0001uF-VO; Thu, 16 Jan 2020 12:15:49 +0000
Received: from mailout2.hostsharing.net ([83.223.78.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is43s-0001rr-0o
 for linux-rpi-kernel@lists.infradead.org; Thu, 16 Jan 2020 12:15:48 +0000
Received: from h08.hostsharing.net (h08.hostsharing.net
 [IPv6:2a01:37:1000::53df:5f1c:0])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client CN "*.hostsharing.net",
 Issuer "COMODO RSA Domain Validation Secure Server CA" (not verified))
 by mailout2.hostsharing.net (Postfix) with ESMTPS id BCB30101F2565;
 Thu, 16 Jan 2020 13:15:26 +0100 (CET)
Received: from localhost (unknown [87.130.102.138])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by h08.hostsharing.net (Postfix) with ESMTPSA id 78D5E60AE1B8;
 Thu, 16 Jan 2020 13:15:26 +0100 (CET)
X-Mailbox-Line: From aea363c27fd541dba96d2ebfeee4f596c6d34932 Mon Sep 17
 00:00:00 2001
Message-Id: <cover.1579175223.git.lukas@wunner.de>
From: Lukas Wunner <lukas@wunner.de>
Date: Thu, 16 Jan 2020 13:14:00 +0100
Subject: [PATCH 0/6] Raspberry Pi auxiliary UART fixes & cleanups
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_041544_213480_A7ACD0C0 
X-CRM114-Status: UNSURE (   6.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [83.223.78.233 listed in list.dnswl.org]
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

Here's a collection of fixes & cleanups for the Raspberry Pi auxiliary UART
to prepare for upcoming feature work on the driver.

With compliments from Revolution Pi labs (https://revolution.kunbus.com/).

Lukas Wunner (5):
  serial: 8250_bcm2835aux: Fix line mismatch on driver unbind
  serial: 8250_bcm2835aux: Suppress register_port error on -EPROBE_DEFER
  serial: 8250_bcm2835aux: Allocate uart_8250_port on stack
  serial: 8250_bcm2835aux: Use generic remapping code
  serial: 8250_bcm2835aux: Document struct bcm2835aux_data

Phil Elwell (1):
  serial: 8250_bcm2835aux: Suppress clk_get error on -EPROBE_DEFER

 drivers/tty/serial/8250/8250_bcm2835aux.c | 50 ++++++++++++-----------
 1 file changed, 26 insertions(+), 24 deletions(-)

-- 
2.24.0


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
