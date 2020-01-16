Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 889B213D9C9
	for <lists+linux-rpi-kernel@lfdr.de>; Thu, 16 Jan 2020 13:20:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Date:
	From:References:In-Reply-To:Message-Id:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=fOyDKcScnPrmTzTJfV1DyGXZVASx3P87CcugUa0Fe9s=; b=bW1s5IdTcspa0VDVQEwAxHddrR
	ATnFOXE5THbqDM6zx8GG5GLxf6dIF7hUl8LE+m6rWqNtrPmLWYMGqLys9zMM3JByZNw8JevmXZKZO
	7EPAx16hIk/TDRhAFdZJrakx+qvU1fHVuIRDeIgUi/7Nzn9JjUC06EcJorFXO58+cbt1I3h/Dyj1J
	+vr6UFDXmHsEOT/1b/D63LTMAy+5kJB9fG+wG/3qlwRzzSTOYlRk26Z9x4Cr83umr0UdrB0jTW80i
	NfoM6593WsKBqDLPzv+nTlenaj81M5PPvRiso1++OXVWf8VzniEgylj8YDK4KyFBBmMhYZtauZAjo
	afRvk4/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is48q-0003n4-02; Thu, 16 Jan 2020 12:20:52 +0000
Received: from mailout3.hostsharing.net ([176.9.242.54])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is48j-0003mR-Ld
 for linux-rpi-kernel@lists.infradead.org; Thu, 16 Jan 2020 12:20:50 +0000
Received: from h08.hostsharing.net (h08.hostsharing.net
 [IPv6:2a01:37:1000::53df:5f1c:0])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client CN "*.hostsharing.net",
 Issuer "COMODO RSA Domain Validation Secure Server CA" (not verified))
 by mailout3.hostsharing.net (Postfix) with ESMTPS id 64BD5102F35D2;
 Thu, 16 Jan 2020 13:20:41 +0100 (CET)
Received: from localhost (unknown [87.130.102.138])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by h08.hostsharing.net (Postfix) with ESMTPSA id EF39E60AE1B8;
 Thu, 16 Jan 2020 13:20:40 +0100 (CET)
X-Mailbox-Line: From 912ccf553c5258135c6d7e8f404a101ef320f0f4 Mon Sep 17
 00:00:00 2001
Message-Id: <912ccf553c5258135c6d7e8f404a101ef320f0f4.1579175223.git.lukas@wunner.de>
In-Reply-To: <cover.1579175223.git.lukas@wunner.de>
References: <cover.1579175223.git.lukas@wunner.de>
From: Lukas Wunner <lukas@wunner.de>
Date: Thu, 16 Jan 2020 13:14:01 +0100
Subject: [PATCH 1/6] serial: 8250_bcm2835aux: Fix line mismatch on driver
 unbind
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_042045_857312_7DC5EFA8 
X-CRM114-Status: GOOD (  12.37  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [176.9.242.54 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [176.9.242.54 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

Unbinding the bcm2835aux UART driver raises the following error if the
maximum number of 8250 UARTs is set to 1 (via the 8250.nr_uarts module
parameter or CONFIG_SERIAL_8250_RUNTIME_UARTS):

(NULL device *): Removing wrong port: a6f80333 != fa20408b

That's because bcm2835aux_serial_probe() retrieves UART line number 1
from the devicetree and stores it in data->uart.port.line, while
serial8250_register_8250_port() instead uses UART line number 0,
which is stored in data->line.

On driver unbind, bcm2835aux_serial_remove() uses data->uart.port.line,
which contains the wrong number.  Fix it.

The issue does not occur if the maximum number of 8250 UARTs is >= 2.

Fixes: bdc5f3009580 ("serial: bcm2835: add driver for bcm2835-aux-uart")
Signed-off-by: Lukas Wunner <lukas@wunner.de>
Cc: stable@vger.kernel.org # v4.6+
Cc: Martin Sperl <kernel@martin.sperl.org>
---
 drivers/tty/serial/8250/8250_bcm2835aux.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/tty/serial/8250/8250_bcm2835aux.c b/drivers/tty/serial/8250/8250_bcm2835aux.c
index 8ce700c1a7fc..4997c519ebb3 100644
--- a/drivers/tty/serial/8250/8250_bcm2835aux.c
+++ b/drivers/tty/serial/8250/8250_bcm2835aux.c
@@ -113,7 +113,7 @@ static int bcm2835aux_serial_remove(struct platform_device *pdev)
 {
 	struct bcm2835aux_data *data = platform_get_drvdata(pdev);
 
-	serial8250_unregister_port(data->uart.port.line);
+	serial8250_unregister_port(data->line);
 	clk_disable_unprepare(data->clk);
 
 	return 0;
-- 
2.24.0


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
