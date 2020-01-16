Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00F7213D9D1
	for <lists+linux-rpi-kernel@lfdr.de>; Thu, 16 Jan 2020 13:22:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Date:
	From:References:In-Reply-To:Message-Id:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=bbZtGIup6aExc8oksj1B10srNqj7rm8uXi0xSLbtFEA=; b=iutgN649TukoOfSrBq5Z8gBhEj
	5u/8wsRAr7KGB9g/9q8oF3lJO37Epl6S8ZhwLE53KfERqiluDHhzvk/snYhAJMv1+fHoNAuljt699
	0xuL5fi9gHA4pP3KjSjLsQe9+7eaPlAWDa2fcVTMkE3f6ssCO4YI3nrm4eQ/oRGzLC9fwgqbQ6wUU
	1lA3PLZt1ujmGA94dge1kL2GVcG8NorZchHVl/C2txCEEwummnenohxt4WrAKK7meO8G+NwdGlFa0
	2E//fTTBBJVFqjYN8pdMpOUNsF6akihIJDcmtio8825cxnrHD7cnRhC5gtykhCgfXsV/vHlUn+dZL
	ScP/shYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is4AK-0003wy-Mt; Thu, 16 Jan 2020 12:22:24 +0000
Received: from mailout3.hostsharing.net ([176.9.242.54])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is4AF-0003wK-8l
 for linux-rpi-kernel@lists.infradead.org; Thu, 16 Jan 2020 12:22:23 +0000
Received: from h08.hostsharing.net (h08.hostsharing.net [83.223.95.28])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client CN "*.hostsharing.net",
 Issuer "COMODO RSA Domain Validation Secure Server CA" (not verified))
 by mailout3.hostsharing.net (Postfix) with ESMTPS id 064EC102F35C2;
 Thu, 16 Jan 2020 13:22:18 +0100 (CET)
Received: from localhost (unknown [87.130.102.138])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by h08.hostsharing.net (Postfix) with ESMTPSA id A7A3F60AE1B8;
 Thu, 16 Jan 2020 13:22:17 +0100 (CET)
X-Mailbox-Line: From deafc13cdfd7a31c6a81b0db95adcd3599accc26 Mon Sep 17
 00:00:00 2001
Message-Id: <deafc13cdfd7a31c6a81b0db95adcd3599accc26.1579175223.git.lukas@wunner.de>
In-Reply-To: <cover.1579175223.git.lukas@wunner.de>
References: <cover.1579175223.git.lukas@wunner.de>
From: Lukas Wunner <lukas@wunner.de>
Date: Thu, 16 Jan 2020 13:14:02 +0100
Subject: [PATCH 2/6] serial: 8250_bcm2835aux: Suppress clk_get error on
 -EPROBE_DEFER
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_042219_462060_31494E24 
X-CRM114-Status: GOOD (  10.90  )
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

From: Phil Elwell <phil@raspberrypi.org>

Suppress a gratuitous error message if devm_clk_get() returns
-EPROBE_DEFER.

Signed-off-by: Phil Elwell <phil@raspberrypi.org>
[lukas: extend commit message]
Signed-off-by: Lukas Wunner <lukas@wunner.de>
---
 drivers/tty/serial/8250/8250_bcm2835aux.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/tty/serial/8250/8250_bcm2835aux.c b/drivers/tty/serial/8250/8250_bcm2835aux.c
index 4997c519ebb3..33da68341c3a 100644
--- a/drivers/tty/serial/8250/8250_bcm2835aux.c
+++ b/drivers/tty/serial/8250/8250_bcm2835aux.c
@@ -50,7 +50,8 @@ static int bcm2835aux_serial_probe(struct platform_device *pdev)
 	data->clk = devm_clk_get(&pdev->dev, NULL);
 	ret = PTR_ERR_OR_ZERO(data->clk);
 	if (ret) {
-		dev_err(&pdev->dev, "could not get clk: %d\n", ret);
+		if (ret != -EPROBE_DEFER)
+			dev_err(&pdev->dev, "could not get clk: %d\n", ret);
 		return ret;
 	}
 
-- 
2.24.0


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
