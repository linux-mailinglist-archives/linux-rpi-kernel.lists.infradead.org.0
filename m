Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E82413D9D7
	for <lists+linux-rpi-kernel@lfdr.de>; Thu, 16 Jan 2020 13:24:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Date:
	From:References:In-Reply-To:Message-Id:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=zWiVv8eYcGs3C8LxvtEHTixvGNmunq7KMozUNZELNp8=; b=vDWaNkyL9bv6ByMeIiGnDX3rj5
	kuIHPduF9+gWd8lX+uMSLBc1mZP6aGt0irh+qZBfF9817JoX9AmrqjOO0ou9ttxNvhD/1Rk7GjBYN
	/yYNqkqQGM7yLrBaPjAbRhETkHNqpVrUeMuv/JUoZqFyQDXrB7LcH6/NdJ1xCdQ2zbf9pvuWvya9K
	HaWQsd8urGmQkOdatyMVUG+qXOut5tRWnXUFhNn9jFcqUs9Gcb7JiNKxQ0+zui0iupzq27D+Wib8d
	3mt/OPx6/5QTYwmrMemQGI/sQM/BLNBR+Xpfp+QejyJDXmfgRZARYYdNJ3aY46n29FSVtzGUSV64L
	uT6apJkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is4Bx-0004Bm-7r; Thu, 16 Jan 2020 12:24:05 +0000
Received: from mailout2.hostsharing.net ([83.223.78.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is4Br-0004Ay-52
 for linux-rpi-kernel@lists.infradead.org; Thu, 16 Jan 2020 12:24:03 +0000
Received: from h08.hostsharing.net (h08.hostsharing.net
 [IPv6:2a01:37:1000::53df:5f1c:0])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client CN "*.hostsharing.net",
 Issuer "COMODO RSA Domain Validation Secure Server CA" (not verified))
 by mailout2.hostsharing.net (Postfix) with ESMTPS id E75C41008C54C;
 Thu, 16 Jan 2020 13:23:57 +0100 (CET)
Received: from localhost (unknown [87.130.102.138])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by h08.hostsharing.net (Postfix) with ESMTPSA id A92C960AE1B8;
 Thu, 16 Jan 2020 13:23:57 +0100 (CET)
X-Mailbox-Line: From 421d3aed4c34cc8447ac9c26c320961f1b787f11 Mon Sep 17
 00:00:00 2001
Message-Id: <421d3aed4c34cc8447ac9c26c320961f1b787f11.1579175223.git.lukas@wunner.de>
In-Reply-To: <cover.1579175223.git.lukas@wunner.de>
References: <cover.1579175223.git.lukas@wunner.de>
From: Lukas Wunner <lukas@wunner.de>
Date: Thu, 16 Jan 2020 13:14:04 +0100
Subject: [PATCH 4/6] serial: 8250_bcm2835aux: Allocate uart_8250_port on stack
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_042359_498530_4EC4BE73 
X-CRM114-Status: GOOD (  13.77  )
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

The bcm2835aux UART driver stores a struct uart_8250_port in its private
data even though it's only passed once to serial8250_register_8250_port()
(which copies all relevant data) and becomes obsolete afterwards.
Allocate the struct on the stack instead for simplicity and to conserve
memory.

The driver also initializes a spinlock in the struct which is never used.
Drop that as well.

Signed-off-by: Lukas Wunner <lukas@wunner.de>
Cc: Martin Sperl <kernel@martin.sperl.org>
---
 drivers/tty/serial/8250/8250_bcm2835aux.c | 33 +++++++++++------------
 1 file changed, 15 insertions(+), 18 deletions(-)

diff --git a/drivers/tty/serial/8250/8250_bcm2835aux.c b/drivers/tty/serial/8250/8250_bcm2835aux.c
index fb850d0ad643..f03d38e7c3a7 100644
--- a/drivers/tty/serial/8250/8250_bcm2835aux.c
+++ b/drivers/tty/serial/8250/8250_bcm2835aux.c
@@ -17,13 +17,13 @@
 #include "8250.h"
 
 struct bcm2835aux_data {
-	struct uart_8250_port uart;
 	struct clk *clk;
 	int line;
 };
 
 static int bcm2835aux_serial_probe(struct platform_device *pdev)
 {
+	struct uart_8250_port up = { };
 	struct bcm2835aux_data *data;
 	struct resource *res;
 	int ret;
@@ -34,17 +34,14 @@ static int bcm2835aux_serial_probe(struct platform_device *pdev)
 		return -ENOMEM;
 
 	/* initialize data */
-	spin_lock_init(&data->uart.port.lock);
-	data->uart.capabilities = UART_CAP_FIFO | UART_CAP_MINI;
-	data->uart.port.dev = &pdev->dev;
-	data->uart.port.regshift = 2;
-	data->uart.port.type = PORT_16550;
-	data->uart.port.iotype = UPIO_MEM;
-	data->uart.port.fifosize = 8;
-	data->uart.port.flags = UPF_SHARE_IRQ |
-				UPF_FIXED_PORT |
-				UPF_FIXED_TYPE |
-				UPF_SKIP_TEST;
+	up.capabilities = UART_CAP_FIFO | UART_CAP_MINI;
+	up.port.dev = &pdev->dev;
+	up.port.regshift = 2;
+	up.port.type = PORT_16550;
+	up.port.iotype = UPIO_MEM;
+	up.port.fifosize = 8;
+	up.port.flags = UPF_SHARE_IRQ | UPF_FIXED_PORT | UPF_FIXED_TYPE |
+			UPF_SKIP_TEST;
 
 	/* get the clock - this also enables the HW */
 	data->clk = devm_clk_get(&pdev->dev, NULL);
@@ -59,7 +56,7 @@ static int bcm2835aux_serial_probe(struct platform_device *pdev)
 	ret = platform_get_irq(pdev, 0);
 	if (ret < 0)
 		return ret;
-	data->uart.port.irq = ret;
+	up.port.irq = ret;
 
 	/* map the main registers */
 	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
@@ -67,15 +64,15 @@ static int bcm2835aux_serial_probe(struct platform_device *pdev)
 		dev_err(&pdev->dev, "memory resource not found");
 		return -EINVAL;
 	}
-	data->uart.port.membase = devm_ioremap_resource(&pdev->dev, res);
-	ret = PTR_ERR_OR_ZERO(data->uart.port.membase);
+	up.port.membase = devm_ioremap_resource(&pdev->dev, res);
+	ret = PTR_ERR_OR_ZERO(up.port.membase);
 	if (ret)
 		return ret;
 
 	/* Check for a fixed line number */
 	ret = of_alias_get_id(pdev->dev.of_node, "serial");
 	if (ret >= 0)
-		data->uart.port.line = ret;
+		up.port.line = ret;
 
 	/* enable the clock as a last step */
 	ret = clk_prepare_enable(data->clk);
@@ -90,10 +87,10 @@ static int bcm2835aux_serial_probe(struct platform_device *pdev)
 	 * so we have to multiply the actual clock by 2
 	 * to get identical baudrates.
 	 */
-	data->uart.port.uartclk = clk_get_rate(data->clk) * 2;
+	up.port.uartclk = clk_get_rate(data->clk) * 2;
 
 	/* register the port */
-	ret = serial8250_register_8250_port(&data->uart);
+	ret = serial8250_register_8250_port(&up);
 	if (ret < 0) {
 		if (ret != -EPROBE_DEFER)
 			dev_err(&pdev->dev,
-- 
2.24.0


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
