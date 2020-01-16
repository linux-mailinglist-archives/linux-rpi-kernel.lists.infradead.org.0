Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C93B313D9D5
	for <lists+linux-rpi-kernel@lfdr.de>; Thu, 16 Jan 2020 13:23:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Date:
	From:References:In-Reply-To:Message-Id:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=GaWPznJzxMkj5W3R8jC/1zMOH1j6rwOXkpJ0TqlfkR0=; b=hLZ1ZRZX/oH+xAPMlpPcRmp9Yh
	PSIKgZTlNmt9n6KzZ0dJX7eorbDIaptQwa//KwqteUqSHSFg/DBNeyUCx+6f5gzS33v4uuhdp6kJs
	eb47R/3LepHyUh+seDM40re0tYMxtrnj0ByZHzYYwHt5u28FAbVL6/uuTJrd6njIrQIb0KYecFV5W
	apeP8UhUf7ZuRmgm+mpjl6a5wU3Kqilr944vM7m8S7XaghizMLWsQdFehPMzKrh9txYwWGlg5WGlK
	S8luMiUT9fHGjgt9tkl49TM5PzSPy501hf3WcPyPYMArAqVti+CS4Neqx9sV80IC8ulmdIJ8K0DGF
	abDwBUmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is4BE-00045f-GR; Thu, 16 Jan 2020 12:23:20 +0000
Received: from mailout2.hostsharing.net ([83.223.78.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is4B8-00044d-EK
 for linux-rpi-kernel@lists.infradead.org; Thu, 16 Jan 2020 12:23:19 +0000
Received: from h08.hostsharing.net (h08.hostsharing.net
 [IPv6:2a01:37:1000::53df:5f1c:0])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client CN "*.hostsharing.net",
 Issuer "COMODO RSA Domain Validation Secure Server CA" (not verified))
 by mailout2.hostsharing.net (Postfix) with ESMTPS id 395E21008C54C;
 Thu, 16 Jan 2020 13:23:13 +0100 (CET)
Received: from localhost (unknown [87.130.102.138])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by h08.hostsharing.net (Postfix) with ESMTPSA id F129B60AE1B8;
 Thu, 16 Jan 2020 13:23:12 +0100 (CET)
X-Mailbox-Line: From 6aea0eacf3bfa73fe2d81082cc723265413410c8 Mon Sep 17
 00:00:00 2001
Message-Id: <6aea0eacf3bfa73fe2d81082cc723265413410c8.1579175223.git.lukas@wunner.de>
In-Reply-To: <cover.1579175223.git.lukas@wunner.de>
References: <cover.1579175223.git.lukas@wunner.de>
From: Lukas Wunner <lukas@wunner.de>
Date: Thu, 16 Jan 2020 13:14:03 +0100
Subject: [PATCH 3/6] serial: 8250_bcm2835aux: Suppress register_port error on
 -EPROBE_DEFER
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_042314_638805_DEE4672F 
X-CRM114-Status: GOOD (  10.90  )
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

Suppress a gratuitous error message if serial8250_register_8250_port()
returns -EPROBE_DEFER.

Signed-off-by: Lukas Wunner <lukas@wunner.de>
---
 drivers/tty/serial/8250/8250_bcm2835aux.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/tty/serial/8250/8250_bcm2835aux.c b/drivers/tty/serial/8250/8250_bcm2835aux.c
index 33da68341c3a..fb850d0ad643 100644
--- a/drivers/tty/serial/8250/8250_bcm2835aux.c
+++ b/drivers/tty/serial/8250/8250_bcm2835aux.c
@@ -95,8 +95,9 @@ static int bcm2835aux_serial_probe(struct platform_device *pdev)
 	/* register the port */
 	ret = serial8250_register_8250_port(&data->uart);
 	if (ret < 0) {
-		dev_err(&pdev->dev, "unable to register 8250 port - %d\n",
-			ret);
+		if (ret != -EPROBE_DEFER)
+			dev_err(&pdev->dev,
+				"unable to register 8250 port - %d\n", ret);
 		goto dis_clk;
 	}
 	data->line = ret;
-- 
2.24.0


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
