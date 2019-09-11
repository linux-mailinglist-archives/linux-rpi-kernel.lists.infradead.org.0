Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECD58AFA48
	for <lists+linux-rpi-kernel@lfdr.de>; Wed, 11 Sep 2019 12:25:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:MIME-Version:Subject:Date:From:
	Message-Id:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=r4b4uhN/8clFQzbju1w1mLlyx3iWt0uhDowlRhC54Ps=; b=DumyUOKjtv0J0D
	SCJuhoFpRxKPqBzmK44pow0xpKbCXqRmejvq8cn6L1ZuTz7Bv4u5OEtvJuYglgLvtGART1URyun8/
	OmpOQENVQsL3bBSbxpDuFdCsluM2+wUveb/r9BTT2Z8HmFOPYx+ijrC72kNEtfwmJEx1cfGQPon1G
	uFIpQx/fC6gX83rRamNAT6UeL9F56uhp9UQqpVo/XmGTcK38uuURzJwflv/vIwPQauUfWAJ6AsC3/
	UEYo81sN3yqULHg+OWmd+gQjiTyAB7UimDa0htwnKrnfcHZgBErvIdT9hs2ifS5utl4ztwCUj/KAF
	bfNZeB+6db5DzFtahlEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7zoY-0004Wu-Vx; Wed, 11 Sep 2019 10:25:31 +0000
Received: from mailout1.hostsharing.net ([2a01:37:1000::53df:5fcc:0])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7zoU-0004WA-Lw
 for linux-rpi-kernel@lists.infradead.org; Wed, 11 Sep 2019 10:25:28 +0000
Received: from h08.hostsharing.net (h08.hostsharing.net
 [IPv6:2a01:37:1000::53df:5f1c:0])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client CN "*.hostsharing.net",
 Issuer "COMODO RSA Domain Validation Secure Server CA" (not verified))
 by mailout1.hostsharing.net (Postfix) with ESMTPS id D39DB101903B3;
 Wed, 11 Sep 2019 12:16:00 +0200 (CEST)
Received: from localhost (p57BD772B.dip0.t-ipconnect.de [87.189.119.43])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by h08.hostsharing.net (Postfix) with ESMTPSA id 98ABC6124A0B;
 Wed, 11 Sep 2019 12:16:00 +0200 (CEST)
X-Mailbox-Line: From f45920af18dbf06e34129bbc406f53dc9c5d1075 Mon Sep 17
 00:00:00 2001
Message-Id: <cover.1568187525.git.lukas@wunner.de>
From: Lukas Wunner <lukas@wunner.de>
Date: Wed, 11 Sep 2019 12:15:30 +0200
Subject: [PATCH v2 00/10] Speed up SPI simplex transfers on Raspberry Pi
MIME-Version: 1.0
To: Mark Brown <broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_032526_876047_3C26980D 
X-CRM114-Status: UNSURE (   8.20  )
X-CRM114-Notice: Please train this message.
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
Cc: linux-rpi-kernel@lists.infradead.org, linux-spi@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

Extend the BCM2835 SPI driver to handle simplex transfers internally,
thereby reducing their latency and CPU usage and obviating the need to
have the SPI core convert to full-duplex via SPI_CONTROLLER_MUST_TX/RX.


Changes since v2:

* Patch [03/10]: Round up struct spi_controller to cacheline size
  instead of putting it behind the driver-private data. (Mark Brown)

* Move patch "spi: bcm2835: Work around DONE bit erratum" to the front
  of the series to ease backporting to stable. (Mark Brown)
  (I don't think it's necessary to backport it, hence it's not marked
  for stable, but it might be autoselected by Sasha Levin's AI.)

* Add all collected Acked-by and Tested-by tags, rebase on for-5.4.


Link to v1:

https://lore.kernel.org/dmaengine/20190910112141.GM2036@sirena.org.uk/T/#t


Lukas Wunner (10):
  dmaengine: bcm2835: Allow reusable descriptors
  dmaengine: bcm2835: Allow cyclic transactions without interrupt
  spi: Guarantee cacheline alignment of driver-private data
  spi: bcm2835: Work around DONE bit erratum
  spi: bcm2835: Drop dma_pending flag
  spi: bcm2835: Cache CS register value for ->prepare_message()
  spi: bcm2835: Speed up TX-only DMA transfers by clearing RX FIFO
  dmaengine: bcm2835: Document struct bcm2835_dmadev
  dmaengine: bcm2835: Avoid accessing memory when copying zeroes
  spi: bcm2835: Speed up RX-only DMA transfers by zero-filling TX FIFO

 drivers/dma/bcm2835-dma.c |  38 +++-
 drivers/spi/spi-bcm2835.c | 407 +++++++++++++++++++++++++++++++-------
 drivers/spi/spi.c         |  11 +-
 3 files changed, 384 insertions(+), 72 deletions(-)

-- 
2.23.0


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
