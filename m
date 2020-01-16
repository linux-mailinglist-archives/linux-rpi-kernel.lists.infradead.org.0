Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A5DB13D9DF
	for <lists+linux-rpi-kernel@lfdr.de>; Thu, 16 Jan 2020 13:25:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Date:
	From:References:In-Reply-To:Message-Id:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=BQVBXjpuaFzNacdxoAdBf86ILADTV4VnCu2DG0UpbrM=; b=qYmQpiSPuNomJQHbgEpFGJh2Au
	kH5nRhKYGsn7VRPnD0pRFE6P6V4UrrR0sZjxoYFoXNitGWHb1HETt2rcZf6RRZ1BgKHGBCed/tJYT
	vtkRMb/4ghkH0yF74MR/PO+xI6Q0sjPEzQ+Y/5brj1kUuv0Iyq7XgNVl/JB8PVcbzXqej3DY/lhyA
	4hEVNspmKC8ctSAxIsZ7YUS8MvwnIRKmUtw8bRMiA983eKchd+yP4WSo/zGInvzhMsYSMbBiZ5fxK
	ml3DKcSyzaOMiNoRGqki1AOVag9yN1EJi0Z2be2y9IdDUOu29DvRy7jW27pQLsKlhtELcKEj6Yldk
	GxYRcNcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is4DH-0005hc-Uj; Thu, 16 Jan 2020 12:25:27 +0000
Received: from mailout2.hostsharing.net ([2a01:37:3000::53df:4ee9:0])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is4DC-0005gl-CP
 for linux-rpi-kernel@lists.infradead.org; Thu, 16 Jan 2020 12:25:26 +0000
Received: from h08.hostsharing.net (h08.hostsharing.net
 [IPv6:2a01:37:1000::53df:5f1c:0])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client CN "*.hostsharing.net",
 Issuer "COMODO RSA Domain Validation Secure Server CA" (not verified))
 by mailout2.hostsharing.net (Postfix) with ESMTPS id C19131008C8CE;
 Thu, 16 Jan 2020 13:25:20 +0100 (CET)
Received: from localhost (unknown [87.130.102.138])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by h08.hostsharing.net (Postfix) with ESMTPSA id 81DBE60AE1B8;
 Thu, 16 Jan 2020 13:25:20 +0100 (CET)
X-Mailbox-Line: From 7d1a9bdb05090d8e465fd15cd26d6e81538d07f9 Mon Sep 17
 00:00:00 2001
Message-Id: <7d1a9bdb05090d8e465fd15cd26d6e81538d07f9.1579175223.git.lukas@wunner.de>
In-Reply-To: <cover.1579175223.git.lukas@wunner.de>
References: <cover.1579175223.git.lukas@wunner.de>
From: Lukas Wunner <lukas@wunner.de>
Date: Thu, 16 Jan 2020 13:14:05 +0100
Subject: [PATCH 5/6] serial: 8250_bcm2835aux: Use generic remapping code
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_042522_568687_932E0F46 
X-CRM114-Status: GOOD (  12.74  )
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

On probe the bcm2835aux UART driver misreports the register base address
as 0x0:

ttyS0 at MMIO 0x0 (irq = 53, base_baud = 50000000) is a 16550

That's because the driver remaps the registers itself.  Take advantage
of the generic remapping code in serial8250_request_std_resource() to
get a message with the correct address and to simplify the driver.

Signed-off-by: Lukas Wunner <lukas@wunner.de>
Cc: Martin Sperl <kernel@martin.sperl.org>
---
 drivers/tty/serial/8250/8250_bcm2835aux.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/tty/serial/8250/8250_bcm2835aux.c b/drivers/tty/serial/8250/8250_bcm2835aux.c
index f03d38e7c3a7..d21460c9ef4b 100644
--- a/drivers/tty/serial/8250/8250_bcm2835aux.c
+++ b/drivers/tty/serial/8250/8250_bcm2835aux.c
@@ -41,7 +41,7 @@ static int bcm2835aux_serial_probe(struct platform_device *pdev)
 	up.port.iotype = UPIO_MEM;
 	up.port.fifosize = 8;
 	up.port.flags = UPF_SHARE_IRQ | UPF_FIXED_PORT | UPF_FIXED_TYPE |
-			UPF_SKIP_TEST;
+			UPF_SKIP_TEST | UPF_IOREMAP;
 
 	/* get the clock - this also enables the HW */
 	data->clk = devm_clk_get(&pdev->dev, NULL);
@@ -64,10 +64,8 @@ static int bcm2835aux_serial_probe(struct platform_device *pdev)
 		dev_err(&pdev->dev, "memory resource not found");
 		return -EINVAL;
 	}
-	up.port.membase = devm_ioremap_resource(&pdev->dev, res);
-	ret = PTR_ERR_OR_ZERO(up.port.membase);
-	if (ret)
-		return ret;
+	up.port.mapbase = res->start;
+	up.port.mapsize = resource_size(res);
 
 	/* Check for a fixed line number */
 	ret = of_alias_get_id(pdev->dev.of_node, "serial");
-- 
2.24.0


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
