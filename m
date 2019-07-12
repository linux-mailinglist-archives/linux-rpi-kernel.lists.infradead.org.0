Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A7E466C30
	for <lists+linux-rpi-kernel@lfdr.de>; Fri, 12 Jul 2019 14:10:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=seDIWfNYIPr6BkHvaDijLBhQBAM6yKSoAYyulm+f/QQ=; b=qRNxJ2jN2KBD4E
	QeZnm/sZi7NGVgd4YF3kHNQ7x3P2P2bF1SvkLIVBAQ9p1fxC7LAn+IVbSqrf3VHrIWq+1Asz/8gex
	MWmmt5lGqsrtazQCuFrRkdIz9dF587PFyYiV0Bnb2yZnxG3C56km2sDfqy+FlNY3LUyhleKSSwgmC
	ZAUhela7g17aMDnwmrEIwoET5HI+UbSwXsB3AlUvEXXb6vgV0/OHlwGQTLabHb9k9Y7CK5VwzSQNB
	rnHsv93jYXFSPS3eyjL91XRxp8X51GaeQSqyo0cxy6vygCLBzZgROo2crGNJ638L7emtTiYZJVftT
	VPv7M7It9VNrRDfibgrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hluNQ-0007PA-D9; Fri, 12 Jul 2019 12:10:12 +0000
Received: from gaia.bitwizard.nl ([149.210.166.240])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hluNM-0006AM-EB
 for linux-rpi-kernel@lists.infradead.org; Fri, 12 Jul 2019 12:10:10 +0000
Received: from abra2.bitwizard.nl (unknown [10.8.0.6])
 by gaia.bitwizard.nl (Postfix) with ESMTP id 87FAA5A0065;
 Fri, 12 Jul 2019 14:10:00 +0200 (CEST)
Received: by abra2.bitwizard.nl (Postfix, from userid 1000)
 id 6CD7E13F753; Fri, 12 Jul 2019 14:10:00 +0200 (CEST)
Date: Fri, 12 Jul 2019 14:10:00 +0200
From: Rogier Wolff <R.E.Wolff@BitWizard.nl>
To: Dave Martin <Dave.Martin@arm.com>
Subject: Re: [PATCH] tty: amba-pl011: Make TX optimisation conditional
Message-ID: <20190712121000.GK11350@BitWizard.nl>
References: <1562852732-123411-1-git-send-email-phil@raspberrypi.org>
 <20190712112105.GH2790@e103592.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190712112105.GH2790@e103592.cambridge.arm.com>
Organization: BitWizard B.V.
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_051008_639134_DEF9EC4C 
X-CRM114-Status: GOOD (  11.20  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [149.210.166.240 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [149.210.166.240 listed in wl.mailspike.net]
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

On Fri, Jul 12, 2019 at 12:21:05PM +0100, Dave Martin wrote:
> diff --git a/drivers/tty/serial/amba-pl011.c b/drivers/tty/serial/amba-pl011.c
> index 89ade21..1902071 100644
> --- a/drivers/tty/serial/amba-pl011.c
> +++ b/drivers/tty/serial/amba-pl011.c
> @@ -1307,6 +1307,13 @@ static bool pl011_tx_chars(struct uart_amba_port *uap, bool from_irq);
>  /* Start TX with programmed I/O only (no DMA) */
>  static void pl011_start_tx_pio(struct uart_amba_port *uap)
>  {
> +	/*
> +	 * Avoid FIFO overfills if the TX IRQ is active:
> +	 * pl011_int() will comsume chars waiting in the xmit queue anyway.
> +	 */
> +	if (uap->im & UART011_TXIM)
> +		return;
> +

I'm no expert on PL011, have no knowledge of the current bug, but have
programmed serial drivers in the past.

This looks "dangerous" to me.

The normal situation is that you push the first few characters into
the FIFO with PIO and then the interrupt will trigger once the FIFO
empties and then you can refil the FIFO until the buffer empties.

The danger in THIS fix is that you might have a race that causes those
first few PIO-ed characters not to be put in the hardware resulting in
the interrupt never triggering.... If you can software-trigger the
interrupt just before the "return" here that'd be a way to fix things.

I'm ok with a reaction like "I've thought about this, it's not a
problem, now shut up".

	Roger. 

-- 
** R.E.Wolff@BitWizard.nl ** https://www.BitWizard.nl/ ** +31-15-2049110 **
**    Delftechpark 11 2628 XJ  Delft, The Netherlands.  KVK: 27239233    **
The plan was simple, like my brother-in-law Phil. But unlike
Phil, this plan just might work.

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
