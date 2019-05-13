Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0846B1B600
	for <lists+linux-rpi-kernel@lfdr.de>; Mon, 13 May 2019 14:32:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=PbYvoSCLbBtgvAA/QcXFhvCDKCYw7XbPuUFpK1EVnOA=; b=Ngd
	BxkkDnzxNmEwrKUWcA5isH9z2os42WCPmtgKRHUJhOJNB9XZTJ1xirSBCjFitCXqSLmki2v4UWsms
	fco/vhOAAbljNIB+VFV5lM9CqS2k9+Gcv7Lo39l4US2u2AnkdOziONCe3bKq8B2LMALL7YHKYGrde
	OzdSCq/AbjZx3B7yXWxYfTuSO9ec4v/Qc/aYYKGBjuG4mMySAIJ7cwpba16MugVIt3kyv7HeODIeT
	G6xPFoRD7iXQP1sCr1bC7QQt22qPbOLQswURsc/QCflQn5gnZ8xPDL5Z+Nul6YbYVzVGL93YMgc3+
	x+kW1KoJOc5IOthA3Os8cY11iPonFGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQA7p-000813-O9; Mon, 13 May 2019 12:32:13 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQA7d-0007lM-7h
 for linux-rpi-kernel@lists.infradead.org; Mon, 13 May 2019 12:32:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=fnonVj0BqdaJTpRu1iZEPcT/t2ZoLWuSPAwkZSwWYcc=; b=sC4X63XnH6o7
 HYZ+1P+shqMcdtiit296KcWpgJ7VKImbLrcjP8xqcvSvbZL+q0z4BNWetg9QuMQR9p6dmqHtgZRl8
 zlOwAYbwfK3lu7SZ1fAlIbfHZFIx2Eeqi7djBM1OjIQ33boobPPnbLJ4OkyuqYCZFCCG0nwixAN4s
 uDJTc=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=debutante.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpa (Exim 4.89)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hQA7U-0006aU-E1; Mon, 13 May 2019 12:31:52 +0000
Received: by debutante.sirena.org.uk (Postfix, from userid 1000)
 id CFAD31129234; Mon, 13 May 2019 13:31:51 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Hoan Nguyen An <na-hoan@jinso.co.jp>
Subject: Applied "spi: bcm2835: Remove spi_alloc_master() error printing" to
 the spi tree
In-Reply-To: <1557477738-20634-1-git-send-email-na-hoan@jinso.co.jp>
X-Patchwork-Hint: ignore
Message-Id: <20190513123151.CFAD31129234@debutante.sirena.org.uk>
Date: Mon, 13 May 2019 13:31:51 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_053201_430647_18D5EA02 
X-CRM114-Status: GOOD (  12.70  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-rpi-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-rpi-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rpi-kernel>, 
 <mailto:linux-rpi-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rpi-kernel/>
List-Post: <mailto:linux-rpi-kernel@lists.infradead.org>
List-Help: <mailto:linux-rpi-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel>, 
 <mailto:linux-rpi-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-spi@vger.kernel.org, Mark Brown <broonie@kernel.org>,
 na-hoan@jinso.co.jp, linux-rpi-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

The patch

   spi: bcm2835: Remove spi_alloc_master() error printing

has been applied to the spi tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-5.3

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent to Linus during
the next merge window (or sooner if it is a bug fix), however if
problems are discovered then the patch may be dropped or reverted.  

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

Thanks,
Mark

From bfada2080b6439e997bfeae43ed73a3e41c351fd Mon Sep 17 00:00:00 2001
From: Hoan Nguyen An <na-hoan@jinso.co.jp>
Date: Fri, 10 May 2019 17:42:18 +0900
Subject: [PATCH] spi: bcm2835: Remove spi_alloc_master() error printing

Printing an error on memory allocation failure is unnecessary,
as the memory allocation core code already takes care of that.

Signed-off-by: Hoan Nguyen An <na-hoan@jinso.co.jp>
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Reviewed-by: Martin Sperl <kernel@martin.sperl.org>
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 drivers/spi/spi-bcm2835.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/spi/spi-bcm2835.c b/drivers/spi/spi-bcm2835.c
index eb67da697ef5..3a9b2187787a 100644
--- a/drivers/spi/spi-bcm2835.c
+++ b/drivers/spi/spi-bcm2835.c
@@ -992,10 +992,8 @@ static int bcm2835_spi_probe(struct platform_device *pdev)
 	int err;
 
 	master = spi_alloc_master(&pdev->dev, sizeof(*bs));
-	if (!master) {
-		dev_err(&pdev->dev, "spi_alloc_master() failed\n");
+	if (!master)
 		return -ENOMEM;
-	}
 
 	platform_set_drvdata(pdev, master);
 
-- 
2.20.1


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
