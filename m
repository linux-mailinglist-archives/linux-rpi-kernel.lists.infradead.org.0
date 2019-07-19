Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD5166E690
	for <lists+linux-rpi-kernel@lfdr.de>; Fri, 19 Jul 2019 15:36:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1NlPTUT4kxAUsiZo4bSAJ/5s6rdBznRxcNxPnYSJ0xQ=; b=syBxcIoDdYw6CM9suo0o04M5YY
	BW1qyt7+f78oQExLG+Doph5GNxTmLq4ZT3M2LdgRaAa6yt7J3MkiW5OuW3eSvMPnFDAuFfYWOcF/+
	0HhveVfBhY+bt99HIobnnUipthIJw0oNTB3ci73c0HjbwDc8FuVoKZ+GkTef86zwmszoltiqzo5gp
	XNNeCa+hRZvQ5WbLE/NdpQNW4c93yINWrREH+S5fKOub69vZ3LCKc37QqzQNiOXSGrwHFjcZARiGy
	DhD1Xkd2GrPW4ZL3BsAZ1jyIW32l4BVzVnD8ERlN57FmsG7/GyQbJBh6R9JULxJxSaveQ8WIdIR39
	D1QALOQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoT46-0006Nf-12; Fri, 19 Jul 2019 13:36:50 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hoT3f-00069E-5y; Fri, 19 Jul 2019 13:36:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2EF2D337;
 Fri, 19 Jul 2019 06:36:22 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 110273F71A;
 Fri, 19 Jul 2019 06:36:20 -0700 (PDT)
From: Dave Martin <Dave.Martin@arm.com>
To: linux-serial@vger.kernel.org
Subject: [RFC PATCH 1/2] serial: pl011: Fix dropping of TX chars due to irq
 race
Date: Fri, 19 Jul 2019 14:35:24 +0100
Message-Id: <1563543325-12463-2-git-send-email-Dave.Martin@arm.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1563543325-12463-1-git-send-email-Dave.Martin@arm.com>
References: <1563543325-12463-1-git-send-email-Dave.Martin@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_063623_268260_361AA186 
X-CRM114-Status: UNSURE (   9.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Russell King <linux@arm.linux.org.uk>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-rpi-kernel@lists.infradead.org, Jiri Slaby <jslaby@suse.com>,
 Rogier Wolff <R.E.Wolff@BitWizard.nl>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

When serial_core pushes some new TX chars via a call to
pl011_start_tx(), it can race with irqs triggered by ongoing
transmission.

Normally the port lock protects against this kind of thing, but
temporary releasing of the lock during calls from pl011_int() to
pl011_{,dma_}rx_chars() allows pl011_start_tx() to race.

For performance reasons, pl011_tx_chars(, true) always assumes that
the TX FIFO interrupt trigger condition holds, i.e., the FIFO is
empty to the trigger threshold.  This means that we can write chars
to fill the FIFO back up without the expense of polling the FIFO
fill status.  However, this assumes that no data is written to the
FIFO in the meantime by other code: this is where the race with
pl011_start_tx_pio() breaks things.

Reorder pl011_int() so that no code releases the port lock in
between reading the interrupt status bits and calling
pl011_tx_chars().  This ensures that TXIS in the fetched status
accurately reflects the state of the TX FIFO, and ensures that
there is no race to fill the FIFO.

Fixes: 1e84d22322ce ("serial/amba-pl011: Refactor and simplify TX FIFO handling")
Reported-by: Phil Elwell <phil@raspberrypi.org>
Signed-off-by: Dave Martin <Dave.Martin@arm.com>
---
 drivers/tty/serial/amba-pl011.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/tty/serial/amba-pl011.c b/drivers/tty/serial/amba-pl011.c
index 89ade21..e24bbc0 100644
--- a/drivers/tty/serial/amba-pl011.c
+++ b/drivers/tty/serial/amba-pl011.c
@@ -1492,6 +1492,13 @@ static irqreturn_t pl011_int(int irq, void *dev_id)
 					       UART011_RXIS),
 				    uap, REG_ICR);
 
+			/*
+			 * Don't unlock uap->port.lock before here:
+			 * Stale TXIS status can lead to a FIFO overfill.
+			 */
+			if (status & UART011_TXIS)
+				pl011_tx_chars(uap, true);
+
 			if (status & (UART011_RTIS|UART011_RXIS)) {
 				if (pl011_dma_rx_running(uap))
 					pl011_dma_rx_irq(uap);
-- 
2.1.4


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
