Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B3C66736B
	for <lists+linux-rpi-kernel@lfdr.de>; Fri, 12 Jul 2019 18:35:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dx7/S+BBR5rFRm+INH1slFELh4IW/dm5r/edNs23QzE=; b=YQ66G8DjnOtgVW
	ceAFJ9uloVe1f2epkd7/wpgOAzPAAPnM4SIE+/caiKpYvuFvYwSqK2AcxMCH4/8wwAS4HKrVw5ud3
	wZnXAY7VJ1jOISgI1c58ZbzT0JyMT+VwZ8m0o/ciTprHNYkog1GOgQphQFoaax5C1Lem4YzFQEGvI
	/mIWOMTsl/OSmZ5BvD1wZGDIeBrMeC0g7nPEbS4ij8v1sCsa5q3uWyOdg4yFqqEObDvR4LgrzkjOl
	xntHhFBRXLTrwSPcdFOHVYGE7DMiN9T5jkbz0T7VGwzndk+7qG+0Pis4CXrtPIx9MYoNqUsNOeMqS
	xjQc9Ay733kxY8uI7ZZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlyVu-0005hO-QL; Fri, 12 Jul 2019 16:35:14 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hlyVr-0005h0-Ql
 for linux-rpi-kernel@lists.infradead.org; Fri, 12 Jul 2019 16:35:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D7FC72B;
 Fri, 12 Jul 2019 09:35:09 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B800B3F246;
 Fri, 12 Jul 2019 09:35:08 -0700 (PDT)
Date: Fri, 12 Jul 2019 17:35:06 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Phil Elwell <phil@raspberrypi.org>
Subject: Re: [PATCH] tty: amba-pl011: Make TX optimisation conditional
Message-ID: <20190712163506.GI2790@e103592.cambridge.arm.com>
References: <1562852732-123411-1-git-send-email-phil@raspberrypi.org>
 <20190712112105.GH2790@e103592.cambridge.arm.com>
 <20190712121000.GK11350@BitWizard.nl>
 <5bf03345-6a36-1b87-ca0c-e918b6030a74@raspberrypi.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5bf03345-6a36-1b87-ca0c-e918b6030a74@raspberrypi.org>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_093511_959703_6F871DF7 
X-CRM114-Status: GOOD (  26.32  )
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
 Jiri Slaby <jslaby@suse.com>, Rogier Wolff <R.E.Wolff@BitWizard.nl>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

On Fri, Jul 12, 2019 at 01:20:42PM +0100, Phil Elwell wrote:
> Hi Rogier,
> 
> On 12/07/2019 13:10, Rogier Wolff wrote:
> > On Fri, Jul 12, 2019 at 12:21:05PM +0100, Dave Martin wrote:
> >> diff --git a/drivers/tty/serial/amba-pl011.c b/drivers/tty/serial/amba-pl011.c
> >> index 89ade21..1902071 100644
> >> --- a/drivers/tty/serial/amba-pl011.c
> >> +++ b/drivers/tty/serial/amba-pl011.c
> >> @@ -1307,6 +1307,13 @@ static bool pl011_tx_chars(struct uart_amba_port *uap, bool from_irq);
> >>  /* Start TX with programmed I/O only (no DMA) */
> >>  static void pl011_start_tx_pio(struct uart_amba_port *uap)
> >>  {
> >> +	/*
> >> +	 * Avoid FIFO overfills if the TX IRQ is active:
> >> +	 * pl011_int() will comsume chars waiting in the xmit queue anyway.
> >> +	 */
> >> +	if (uap->im & UART011_TXIM)
> >> +		return;
> >> +
> > 
> > I'm no expert on PL011, have no knowledge of the current bug, but have
> > programmed serial drivers in the past.
> > 
> > This looks "dangerous" to me.
> > 
> > The normal situation is that you push the first few characters into
> > the FIFO with PIO and then the interrupt will trigger once the FIFO
> > empties and then you can refil the FIFO until the buffer empties.
> > 
> > The danger in THIS fix is that you might have a race that causes those
> > first few PIO-ed characters not to be put in the hardware resulting in
> > the interrupt never triggering.... If you can software-trigger the
> > interrupt just before the "return" here that'd be a way to fix things.

This is the thing that can't really be done with PL011.  The only way to
trigger a TX FIFO interrupt is to fill the TX FIFO and wait for it to
drain back to the threshold.

SBSA UART is particularly dumb in this regard: you can't disable the
FIFOs, change the irq trigger thresholds or do anything else that might
help here.

Historically, the PL011 was configured for maximum speed and put in
loopback mode to send some initial dummy chars and bootstrap the
interrupt state machine, but this has problems with some newer variants,
and doesn't work at all with SBSA uart.

> I'm also not a serial driver expert, but I think this simplified patch is safe.
> The reason is that the UART011_TXIM flag is only set after the pio thread has failed
> to write some data into the FIFO because it is full, which would guarantee that
> an interrupt is generated once the fill level drops below the half-way mark.

I think it's the spin_lock_irq(&uap->port.lock) done by serial_core
around pl011_start_tx() that we're relying on here.

This protects us against most potential races.

The trickiest path is when we are in pl011_int() having temporarily
released the lock, and pl011_start_tx() gets called on another cpu.

One thing that makes me uneasy is that there is one thing other than
pl011_int() than can clear uap->im &= ~UART011_TXIM: pl011_stop_tx() is
also called from uart_stop(), which the TTY layer may call at random
times for flow control reasons.

pl011_int() can miss this change and and write the FIFO a final time,
but pl011_start_tx_pio() can now race even with my patch (because TXIM
is now clear) and overfill the FIFO.

This problem arises from the cached interrupt status bits becoming
stale while the lock is released.

We might be able to solve this just be reordering pl011_int() so that
the un-locky rx handing code is done after the TX handling.

Does this make sense?


> > I'm ok with a reaction like "I've thought about this, it's not a
> > problem, now shut up".
> 
> I don't think that reaction would be justified - these things are difficult, and having
> many minds on the problem helps to avoid bugs like this.

Ack!  These things are properly fiddly to get right.  Please do try to
shoot holes in the code :)

I am still trying to resurrect my understanding of how this code
works...

Cheers
---Dave

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
