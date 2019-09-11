Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 265F2AFF68
	for <lists+linux-rpi-kernel@lfdr.de>; Wed, 11 Sep 2019 17:00:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=hDyLZCJZj5JSEy7/4OjUAj+E7Na8fbOp78ZR7Z38/Hk=; b=PBs
	gQij4jn4cfbrwQDtgEIwOK//7PjPbbm6ClWq05QtL3DTmiedByqQJzGT/eRbDwM0v8WU9RsjLvBnC
	VFUwH44/M6qCg1y+snUPszSajAQKezVDD8PByXsrXMKHIJsKBDUOuOoRZCCHBXvSlYTDaifEE9bOr
	xEPqsHnLnSw4H5EYSTK/9rRQXF2vVoJZwhJvuVNrpPsErzVxIpWqz1wRlHi+oKKzC0n/Zw6ZbAXRM
	yzSIkANdiCqKo1RzbLOJsm2ZT2n6ceHKKw9B5Y5zdBSrLGZBBAnxJE6gk/Pe+3obhJdl+kDXrrxMr
	zRcPMZATMUz8rl8BGap4iveUn2mJSaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i846D-00021K-85; Wed, 11 Sep 2019 15:00:01 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8469-000200-UQ
 for linux-rpi-kernel@lists.infradead.org; Wed, 11 Sep 2019 14:59:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=3i3Y2Y5YZv7F0dgv4wMHYov62v3o0a7kJcez4K+rlYI=; b=nrPidHd55tOH
 v5SEmPK8nc6IGDibjCky0l4ls9tlYZE1Dj+FXDLeoUMFuprAXXFriGogbUOhd31SPYeV24TEnfJ0I
 yk5WxYrRwi/dbsXASOyExTmqecy3T2ZXj7FWrUOoeu2/x7A9IhxjQ+elfohFABWT7EJeRuMV2CM9w
 bE3Yw=;
Received: from [148.69.85.38] (helo=fitzroy.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1i8464-0001jq-Oh; Wed, 11 Sep 2019 14:59:52 +0000
Received: by fitzroy.sirena.org.uk (Postfix, from userid 1000)
 id 2D94CD00486; Wed, 11 Sep 2019 15:59:52 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Lukas Wunner <lukas@wunner.de>
Subject: Applied "spi: Guarantee cacheline alignment of driver-private data"
 to the spi tree
In-Reply-To: <01625b9b26b93417fb09d2c15ad02dfe9cdbbbe5.1568187525.git.lukas@wunner.de>
X-Patchwork-Hint: ignore
Message-Id: <20190911145952.2D94CD00486@fitzroy.sirena.org.uk>
Date: Wed, 11 Sep 2019 15:59:52 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_075957_982823_CC3D58A0 
X-CRM114-Status: GOOD (  14.19  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Brown <broonie@kernel.org>, linux-rpi-kernel@lists.infradead.org,
 linux-spi@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

The patch

   spi: Guarantee cacheline alignment of driver-private data

has been applied to the spi tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-5.4

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

From 229e6af102e407feada76d3c270395d7cda2cdfe Mon Sep 17 00:00:00 2001
From: Lukas Wunner <lukas@wunner.de>
Date: Wed, 11 Sep 2019 12:15:30 +0200
Subject: [PATCH] spi: Guarantee cacheline alignment of driver-private data

__spi_alloc_controller() uses a single allocation to accommodate struct
spi_controller and the driver-private data, but places the latter behind
the former.  This order does not guarantee cacheline alignment of the
driver-private data.  (It does guarantee cacheline alignment of struct
spi_controller but the structure doesn't make any use of that property.)

Round up struct spi_controller to cacheline size.  A forthcoming commit
leverages this to grant DMA access to driver-private data of the BCM2835
SPI master.

An alternative, less economical approach would be to use two allocations.

A third approach consists of reversing the order to conserve memory.
But Mark Brown is concerned that it may result in a performance penalty
on architectures that don't like unaligned accesses.

Signed-off-by: Lukas Wunner <lukas@wunner.de>
Link: https://lore.kernel.org/r/01625b9b26b93417fb09d2c15ad02dfe9cdbbbe5.1568187525.git.lukas@wunner.de
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 drivers/spi/spi.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
index b2890923d256..f8b4654a57d3 100644
--- a/drivers/spi/spi.c
+++ b/drivers/spi/spi.c
@@ -2188,8 +2188,10 @@ extern struct class spi_slave_class;	/* dummy */
  * __spi_alloc_controller - allocate an SPI master or slave controller
  * @dev: the controller, possibly using the platform_bus
  * @size: how much zeroed driver-private data to allocate; the pointer to this
- *	memory is in the driver_data field of the returned device,
- *	accessible with spi_controller_get_devdata().
+ *	memory is in the driver_data field of the returned device, accessible
+ *	with spi_controller_get_devdata(); the memory is cacheline aligned;
+ *	drivers granting DMA access to portions of their private data need to
+ *	round up @size using ALIGN(size, dma_get_cache_alignment()).
  * @slave: flag indicating whether to allocate an SPI master (false) or SPI
  *	slave (true) controller
  * Context: can sleep
@@ -2211,11 +2213,12 @@ struct spi_controller *__spi_alloc_controller(struct device *dev,
 					      unsigned int size, bool slave)
 {
 	struct spi_controller	*ctlr;
+	size_t ctlr_size = ALIGN(sizeof(*ctlr), dma_get_cache_alignment());
 
 	if (!dev)
 		return NULL;
 
-	ctlr = kzalloc(size + sizeof(*ctlr), GFP_KERNEL);
+	ctlr = kzalloc(size + ctlr_size, GFP_KERNEL);
 	if (!ctlr)
 		return NULL;
 
@@ -2229,7 +2232,7 @@ struct spi_controller *__spi_alloc_controller(struct device *dev,
 		ctlr->dev.class = &spi_master_class;
 	ctlr->dev.parent = dev;
 	pm_suspend_ignore_children(&ctlr->dev, true);
-	spi_controller_set_devdata(ctlr, &ctlr[1]);
+	spi_controller_set_devdata(ctlr, (void *)ctlr + ctlr_size);
 
 	return ctlr;
 }
-- 
2.20.1


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
