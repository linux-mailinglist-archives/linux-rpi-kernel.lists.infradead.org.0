Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 275B31D5596
	for <lists+linux-rpi-kernel@lfdr.de>; Fri, 15 May 2020 18:08:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Date:
	From:References:In-Reply-To:Message-Id:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9XQF/ik/o0vj6VJbkkPBoP2gOWRPX80QK3EfO+YpXLI=; b=eFq43aWy2xRAOHiAzyrFiHj6sC
	yDWe3iLe2hQGWsqhJeysZTvErwP4Pc+TV6Dl8aTPjX71kpCNWY/XHCIVzp6najQzpdTZGQyuJzQst
	0JAr5jr5us9yZPRk89sR7t3G+88sqOcWZ8MChaUUk5H2UkklMyHgzC0/ggg4IUPxFe39+lxpmYipL
	qDi7n1UK8DSMEkRoUfqHwwPgdy6mBatZpVzz1UnmNxIAHQ5pL5XvSGSbl5enYgdnBZHfybs9D14WN
	NxLqeV3mB+spjGmY9dV86/IKGw0lMeNsQYmm/Cg2sJ6/H4Tj1Tl19KqRBiQF/3j4TyFJNkfb3otN5
	vJHhM/eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZct0-00067B-6s; Fri, 15 May 2020 16:08:34 +0000
Received: from mailout2.hostsharing.net ([83.223.78.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZcsw-000669-Qy
 for linux-rpi-kernel@lists.infradead.org; Fri, 15 May 2020 16:08:32 +0000
Received: from h08.hostsharing.net (h08.hostsharing.net [83.223.95.28])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client CN "*.hostsharing.net",
 Issuer "COMODO RSA Domain Validation Secure Server CA" (not verified))
 by mailout2.hostsharing.net (Postfix) with ESMTPS id 16052101712C1;
 Fri, 15 May 2020 18:02:54 +0200 (CEST)
Received: from localhost (unknown [89.246.108.87])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by h08.hostsharing.net (Postfix) with ESMTPSA id CE8AD6029E64;
 Fri, 15 May 2020 18:02:53 +0200 (CEST)
X-Mailbox-Line: From d0dcbd098401b5d2a486eee7cf2f9dcabacf9605 Mon Sep 17
 00:00:00 2001
Message-Id: <d0dcbd098401b5d2a486eee7cf2f9dcabacf9605.1589557526.git.lukas@wunner.de>
In-Reply-To: <cover.1589557526.git.lukas@wunner.de>
References: <cover.1589557526.git.lukas@wunner.de>
From: Lukas Wunner <lukas@wunner.de>
Date: Fri, 15 May 2020 17:58:05 +0200
Subject: [PATCH 5/5] spi: Document devm_spi_register_controller() gotcha
To: Mark Brown <broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_090831_025816_7C4AA8A4 
X-CRM114-Status: UNSURE (   9.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: linux-rpi-kernel@lists.infradead.org, linux-spi@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

As a rule, devm_spi_register_controller() must not be used if the
driver's ->remove() hook performs teardown steps which shall be
performed after unbinding of slaves.

Dozens of drivers are doing it wrong.  Document this gotcha to
hopefully prevent further misuse.

Signed-off-by: Lukas Wunner <lukas@wunner.de>
---
 drivers/spi/spi.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
index d32bdc6cbf66..e1a35aa7eeb8 100644
--- a/drivers/spi/spi.c
+++ b/drivers/spi/spi.c
@@ -2714,6 +2714,13 @@ static void devm_spi_unregister(struct device *dev, void *res)
  * Register a SPI device as with spi_register_controller() which will
  * automatically be unregistered and freed.
  *
+ * Be aware that a managed SPI controller and the attached slaves are
+ * unregistered after the driver's ->remove() callback has been executed.
+ * So the SPI slaves may still access the bus during and after ->remove().
+ * Thus, devm_spi_register_controller() may only be used if there is no
+ * ->remove() callback at all or if it does not perform teardown steps
+ * which render the bus inaccessible.
+ *
  * Return: zero on success, else a negative error code.
  */
 int devm_spi_register_controller(struct device *dev,
-- 
2.26.2


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
