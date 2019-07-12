Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4546566B85
	for <lists+linux-rpi-kernel@lfdr.de>; Fri, 12 Jul 2019 13:21:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kpps3l/0lWZPlH6QlcQVG0TUnAUsqWoAEKyQauL85IE=; b=ArLBJVm3yz3Ups
	hMcQK7iJKfo0sgXW2Gi1GF9I/nR8lmsXYKOKMfsD1RPiBgCsAhh6nfQFjHsFgU6rA3yhjwYMGHsSV
	5KpsKxCx5+VdviWlsJCgwtbvKGcFPUdrR1eau+zP3BhtU3N51qHCwq7Dx88MzWXT+aYfcaEY4XwAP
	52c//1aExWuoIuFr+4zA7xE1JjiYkd5uJS6g9MdliyGWT2KSFHMy3b1eC256n78F1HsMktpF1W5w8
	BXy93RzDH5g8G7rP4Yti7PsX46a93fC5PclG7KeNH3v4YsQkPQzyEOSIARHINeSLX1WJp/gYHAm+D
	b65xKcid3A8Va1Du5Fag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hltc4-00071n-Gx; Fri, 12 Jul 2019 11:21:16 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hltc1-00070p-Le
 for linux-rpi-kernel@lists.infradead.org; Fri, 12 Jul 2019 11:21:15 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A855B28;
 Fri, 12 Jul 2019 04:21:08 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A3DB73F71F;
 Fri, 12 Jul 2019 04:21:07 -0700 (PDT)
Date: Fri, 12 Jul 2019 12:21:05 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Phil Elwell <phil@raspberrypi.org>
Subject: Re: [PATCH] tty: amba-pl011: Make TX optimisation conditional
Message-ID: <20190712112105.GH2790@e103592.cambridge.arm.com>
References: <1562852732-123411-1-git-send-email-phil@raspberrypi.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1562852732-123411-1-git-send-email-phil@raspberrypi.org>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_042113_802050_92F7F317 
X-CRM114-Status: GOOD (  30.14  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Russell King <linux@arm.linux.org.uk>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-rpi-kernel@lists.infradead.org" <linux-rpi-kernel@lists.infradead.org>,
 "linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>,
 Jiri Slaby <jslaby@suse.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 11, 2019 at 02:45:32PM +0100, Phil Elwell wrote:
> pl011_tx_chars takes a "from_irq" parameter to reduce the number of
> register accesses. When from_irq is true the function assumes that the
> FIFO is half empty and writes up to half a FIFO's worth of bytes
> without polling the FIFO status register, the reasoning being that
> the function is being called as a result of the TX interrupt being
> raised. This logic would work were it not for the fact that
> pl011_rx_chars, called from pl011_int before pl011_tx_chars, releases
> the spinlock before calling tty_flip_buffer_push.
> 
> A user thread writing to the UART claims the spinlock and ultimately
> calls pl011_tx_chars with from_irq set to false. This reverts to the
> older logic that polls the FIFO status register before sending every
> byte. If this happen on an SMP system during the section of the IRQ
> handler where the spinlock has been released, then by the time the TX
> interrupt handler is called, the FIFO may already be full, and any
> further writes are likely to be lost.
> 
> The fix involves adding a per-port flag that is true iff running from
> within the interrupt handler and the spinlock has not yet been released.
> This flag is then used as the value for the from_irq parameter of
> pl011_tx_chars, causing polling to be used in the unsafe case.

Releasing the lock in pl011_int() before calling pl011_tx_chars()
wouldn't the source of this issue, though it may make it easier to hit:
there would anyway be a window between the interrupt being asserted and
the initial spin_lock_irqsave() in pl011_int(), during which the TX
FIFO could be topped up by another cpu.

So, assuming you've diagnosed the problem correctly, I'm not sure this
patch really fixes it.

What's the failure scenario exactly?  Are you using DMA?

If chars are being lost and falling back to polled TXFF per char fixes
it, then that does suggest a TX FIFO overflow somewhere.

Looking at the code, I'm slightly amazed we don't hit this more often.
It looks like if we have stuttering output that is sufficient to fill
the TX FIFO to the interrupt trigger threshold sometimes, but
uap->port.state->xmit stays empty, then we can probably get pl011_int()
and pl011_start_tx_pio() fighting with each other, as you suggest.


One option would be to track who can write the TX FIFO, either the
irq handler, or regular task context, and make them mutually exclusive.

We already have a flag for that in the form of the TXIM interrupt mask
bit.  So, fixing this might be as simple as [1].  Can you give it a
try?

If is works, I can work it up into a proper patch.

Cheers
---Dave

> 
> Fixes: 1e84d22322ce ("serial/amba-pl011: Refactor and simplify TX FIFO handling")
> 
> Signed-off-by: Phil Elwell <phil@raspberrypi.org>
> ---
>  drivers/tty/serial/amba-pl011.c | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/tty/serial/amba-pl011.c b/drivers/tty/serial/amba-pl011.c
> index 5921a33..70c1dc9 100644
> --- a/drivers/tty/serial/amba-pl011.c
> +++ b/drivers/tty/serial/amba-pl011.c
> @@ -270,6 +270,7 @@ struct uart_amba_port {
>  	unsigned int		old_cr;		/* state during shutdown */
>  	unsigned int		fixed_baud;	/* vendor-set fixed baud rate */
>  	char			type[12];
> +	bool			irq_locked;	/* in irq, unreleased lock */
>  #ifdef CONFIG_DMA_ENGINE
>  	/* DMA stuff */
>  	bool			using_tx_dma;
> @@ -814,6 +815,7 @@ __acquires(&uap->port.lock)
>  		return;
>  
>  	/* Avoid deadlock with the DMA engine callback */
> +	uap->irq_locked = 0;
>  	spin_unlock(&uap->port.lock);
>  	dmaengine_terminate_all(uap->dmatx.chan);
>  	spin_lock(&uap->port.lock);
> @@ -941,6 +943,7 @@ static void pl011_dma_rx_chars(struct uart_amba_port *uap,
>  		fifotaken = pl011_fifo_to_tty(uap);
>  	}
>  
> +	uap->irq_locked = 0;
>  	spin_unlock(&uap->port.lock);
>  	dev_vdbg(uap->port.dev,
>  		 "Took %d chars from DMA buffer and %d chars from the FIFO\n",
> @@ -1349,6 +1352,7 @@ __acquires(&uap->port.lock)
>  {
>  	pl011_fifo_to_tty(uap);
>  
> +	uap->irq_locked = 0;
>  	spin_unlock(&uap->port.lock);
>  	tty_flip_buffer_push(&uap->port.state->port);
>  	/*
> @@ -1483,6 +1487,7 @@ static irqreturn_t pl011_int(int irq, void *dev_id)
>  	int handled = 0;
>  
>  	spin_lock_irqsave(&uap->port.lock, flags);
> +	uap->irq_locked = 1;
>  	status = pl011_read(uap, REG_RIS) & uap->im;
>  	if (status) {
>  		do {
> @@ -1502,7 +1507,7 @@ static irqreturn_t pl011_int(int irq, void *dev_id)
>  				      UART011_CTSMIS|UART011_RIMIS))
>  				pl011_modem_status(uap);
>  			if (status & UART011_TXIS)
> -				pl011_tx_chars(uap, true);
> +				pl011_tx_chars(uap, uap->irq_locked);
>  
>  			if (pass_counter-- == 0)
>  				break;
> -- 
> 2.7.4
> 

[1] Untested, alternative "fix"

diff --git a/drivers/tty/serial/amba-pl011.c b/drivers/tty/serial/amba-pl011.c
index 89ade21..1902071 100644
--- a/drivers/tty/serial/amba-pl011.c
+++ b/drivers/tty/serial/amba-pl011.c
@@ -1307,6 +1307,13 @@ static bool pl011_tx_chars(struct uart_amba_port *uap, bool from_irq);
 /* Start TX with programmed I/O only (no DMA) */
 static void pl011_start_tx_pio(struct uart_amba_port *uap)
 {
+	/*
+	 * Avoid FIFO overfills if the TX IRQ is active:
+	 * pl011_int() will comsume chars waiting in the xmit queue anyway.
+	 */
+	if (uap->im & UART011_TXIM)
+		return;
+
 	if (pl011_tx_chars(uap, false)) {
 		uap->im |= UART011_TXIM;
 		pl011_write(uap->im, uap, REG_IMSC);

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
