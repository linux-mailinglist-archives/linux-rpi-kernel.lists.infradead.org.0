Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 325EB1D5597
	for <lists+linux-rpi-kernel@lfdr.de>; Fri, 15 May 2020 18:08:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Date:
	From:References:In-Reply-To:Message-Id:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=mGNhBElAZ4pkKnEm6WNB/GEYHJexz9OrEAmvCg/FQ80=; b=ELsI8NOIa57NyT/DXRRbUT34xH
	1ABZydNllU6xLC6e2woYdeYaNghEv9LCQy+favs4aqMqShiYpcSPwwjT8UNux4x9JhGLVGLDicCC7
	Dm7UzCwrOMMuFQn4qJEbpqgTHp7H6GgbGmtgotDiW/XcNop6cJw0r44iCeNbh7QfUUccxjMQxwcWZ
	jKYhCZs9OI5MoYWD+2gNHHWHVe/IMDwg/Zm5z6yJesy12RgY29SrDUrnbtZ+UsxcKioUUXyfNzizd
	aDSY2hpEL1l8BdD744b4fDNOxx76nDd71HRb/nJkOvCbnoqqZjytABqrmwcqgCVrvshpOYL9zU7pS
	GJ1iTKfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZct1-00069R-VK; Fri, 15 May 2020 16:08:35 +0000
Received: from mailout2.hostsharing.net ([2a01:37:3000::53df:4ee9:0])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZcsw-00066A-QS
 for linux-rpi-kernel@lists.infradead.org; Fri, 15 May 2020 16:08:33 +0000
Received: from h08.hostsharing.net (h08.hostsharing.net [83.223.95.28])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client CN "*.hostsharing.net",
 Issuer "COMODO RSA Domain Validation Secure Server CA" (not verified))
 by mailout2.hostsharing.net (Postfix) with ESMTPS id B3168102EDAE9;
 Fri, 15 May 2020 18:02:18 +0200 (CEST)
Received: from localhost (unknown [89.246.108.87])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by h08.hostsharing.net (Postfix) with ESMTPSA id 7AA466029E64;
 Fri, 15 May 2020 18:02:18 +0200 (CEST)
X-Mailbox-Line: From ac79f1e3d6fd9a1f5e0cb4008c43b98ea70be3c2 Mon Sep 17
 00:00:00 2001
Message-Id: <ac79f1e3d6fd9a1f5e0cb4008c43b98ea70be3c2.1589557526.git.lukas@wunner.de>
In-Reply-To: <cover.1589557526.git.lukas@wunner.de>
References: <cover.1589557526.git.lukas@wunner.de>
From: Lukas Wunner <lukas@wunner.de>
Date: Fri, 15 May 2020 17:58:04 +0200
Subject: [PATCH 4/5] spi: bcm2835: Tear down DMA before turning off SPI
 controller
To: Mark Brown <broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_090831_003169_1D46894D 
X-CRM114-Status: GOOD (  10.12  )
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
Cc: linux-rpi-kernel@lists.infradead.org, linux-spi@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

On unbind of the BCM2835 SPI driver, the SPI controller is disabled
first and the DMA channels are terminated and torn down afterwards.

This seems backwards:  In the theoretical case that DMA is active,
it might try to fill the SPI FIFOs even after the controller has
been disabled.

Reverse the order, thereby mirroring what's done on ->probe().

Signed-off-by: Lukas Wunner <lukas@wunner.de>
---
 drivers/spi/spi-bcm2835.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/spi/spi-bcm2835.c b/drivers/spi/spi-bcm2835.c
index 06d2782d38ec..20d8581fdf88 100644
--- a/drivers/spi/spi-bcm2835.c
+++ b/drivers/spi/spi-bcm2835.c
@@ -1380,14 +1380,14 @@ static int bcm2835_spi_remove(struct platform_device *pdev)
 
 	spi_unregister_controller(ctlr);
 
+	bcm2835_dma_release(ctlr, bs);
+
 	/* Clear FIFOs, and disable the HW block */
 	bcm2835_wr(bs, BCM2835_SPI_CS,
 		   BCM2835_SPI_CS_CLEAR_RX | BCM2835_SPI_CS_CLEAR_TX);
 
 	clk_disable_unprepare(bs->clk);
 
-	bcm2835_dma_release(ctlr, bs);
-
 	return 0;
 }
 
-- 
2.26.2


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
