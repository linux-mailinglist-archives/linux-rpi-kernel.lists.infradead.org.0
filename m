Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E303B1D6011
	for <lists+linux-rpi-kernel@lfdr.de>; Sat, 16 May 2020 11:40:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U206OUubaWqm7k2zmxjD9mUsG4QzjxLKSslgypya4QA=; b=LtD7k7MyhXxyZa
	//wxEnRqiCZX18xkakblySU67Sw2mV4+UIQcYcPacrUjr5Xikt7SLO7078iAsE/iKt+XkL0jCt9YR
	VMVp77qNkqrvp/UmDwFVYs8ahOcNQ+uKFJvOid4VbfI1kQk6Um//1a5XQQ27KOH0SfPHyPlPqaSu8
	wGY8RClE3HUUx411AhFH16FZ3i27U2SL4DzW2+hS489Yn9YOzJZL/ksp1MRlkkN0VvyxATcaBIhcR
	43HwMrmZr7N42PBZYdiQTDoSR+btIolVfZHR74Y3Hzxpd+3WjLRILFhr0O23dD+Q5oew99INzg5fZ
	e3mhJEYNwin/k7qMG9Qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZtJ7-0001cO-RK; Sat, 16 May 2020 09:40:37 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZtJ4-0001bv-PE
 for linux-rpi-kernel@lists.infradead.org; Sat, 16 May 2020 09:40:36 +0000
Received: by mail-pg1-x544.google.com with SMTP id j21so2222705pgb.7
 for <linux-rpi-kernel@lists.infradead.org>;
 Sat, 16 May 2020 02:40:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=oLsgv6F4roMs2HoOiDJ0bdjUqpuGdCIr2pH0qBBD6v8=;
 b=CLXsXI12hgbqtmM4I06XstIutMsY1BfcLmyE1iDdWRSLiGwkbgON+7qsPIdFylEuH2
 DMpJEU/zMXw56YhID9WsJka0LhKOPuxLq14IEbeSFGdy/Pl1+bzEDtu4Chtfus+uIpqI
 Ch3GA9S8AiLE00x00BbCaprFKaEhjxzGUamT773KH+LGLo/5AXhWpDYQPDk150cDz6Lq
 RxOJgNZHP6T3IsKysVfjd3uqUHk8d1Rw6LynK8z/T7tnQn7dUz85Ccp3IRFGkG5R5mmP
 MkesVoBAXb74Dz4TvPsyKlG1uGw7AvBt+5CZcFgkbu4OrHO/lFPEhR1r9yOBsD7lOS2U
 2bNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=oLsgv6F4roMs2HoOiDJ0bdjUqpuGdCIr2pH0qBBD6v8=;
 b=BjSFrfYMhNEoeAlF9f2Z5+Tt7wa+JhbLSamFWluHyB3086CiSzRD06iii6dYFKbglJ
 JAxxJQivcGc91DTT1iqZ2R73i84lAoHBR8hJtJa9mXPGEOCKjNIDkHenngEgU+5HUn/j
 TeZ4snZQkSwY6Lu/GDgH10rEUq4w3i1EsQ0mLF+3c93e0KFjKkF5d/lSdSjXog+eYwk1
 cwQut5mHzZpgSP/BR7h9+omCqtHtgsahfkcjBQcdV8bCa2iR98iFB4YoDRiR81Gkmvkt
 Y4TWYSnhhFpSR51ANN8pkGBgvZvYC7+NHzQMynCcXkQuara2X4YUYhPt1VOmfLVdDr0l
 yj2g==
X-Gm-Message-State: AOAM533ievFuX7an3wFH7f+oYhKZlKWuvqaHb8RMEf0vnWlFf9Yd5838
 BA3pFGnk31GbmIDcDj5ggIKEGTKErpzhCIP2yr4=
X-Google-Smtp-Source: ABdhPJwtKMjj3Aduptyvb8s/5CoMnd6ucIVYfKeePgFKByB85cZ0UHpX40pGJaSL180Nkq1s/9VB8u6IDoFDYe5CvNY=
X-Received: by 2002:a65:6251:: with SMTP id q17mr6801546pgv.4.1589622033811;
 Sat, 16 May 2020 02:40:33 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1589557526.git.lukas@wunner.de>
 <2397dd70cdbe95e0bc4da2b9fca0f31cb94e5aed.1589557526.git.lukas@wunner.de>
 <20200515162903.GH5066@sirena.org.uk>
 <20200515164404.bev4zjzcmx4nwzhi@wunner.de>
 <CAHp75Vfs=gc9c2h2amhu0eb3ux8jJAuC7CRY8fLrFiBsTwtSYQ@mail.gmail.com>
 <20200516065607.zrqwlh5ayoth37y4@wunner.de>
In-Reply-To: <20200516065607.zrqwlh5ayoth37y4@wunner.de>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Sat, 16 May 2020 12:40:22 +0300
Message-ID: <CAHp75VeOSgiprNoqs2Jn=ibNRspSWyGwpqFmJphHd3K7999mrw@mail.gmail.com>
Subject: Re: [PATCH 2/5] spi: bcm2835: Fix controller unregister order
To: Lukas Wunner <lukas@wunner.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200516_024034_825138_68A6167A 
X-CRM114-Status: GOOD (  17.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [andy.shevchenko[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Brown <broonie@kernel.org>,
 linux-rpi-kernel <linux-rpi-kernel@lists.infradead.org>,
 linux-spi <linux-spi@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

On Sat, May 16, 2020 at 9:56 AM Lukas Wunner <lukas@wunner.de> wrote:
>
> On Sat, May 16, 2020 at 12:33:00AM +0300, Andy Shevchenko wrote:
> > On Fri, May 15, 2020 at 7:45 PM Lukas Wunner <lukas@wunner.de> wrote:
> > > On Fri, May 15, 2020 at 05:29:03PM +0100, Mark Brown wrote:
> > > > On Fri, May 15, 2020 at 05:58:02PM +0200, Lukas Wunner wrote:
> > > > > Fix by using the non-devm variant spi_register_controller().  Note that
> > > > > the struct spi_controller as well as the driver-private data are not
> > > > > freed until after bcm2835_spi_remove() has finished, so accessing them
> > > > > is safe.
> > > >
> > > > Why not use managed allocations of clocks and DMA channels?  This is a
> > > > standard issue with the devm APIs, if you're using them you basically
> > > > need to use them for *everything* up to the point where you start using
> > > > them.
> > >
> > > There is no devm version of clk_prepare_enable(), dma_request_chan()
> > > and various other functions invoked on ->probe() by spi-bcm2835.c.
> > > So tearing down DMA channels, disabling clocks etc needs to happen
> > > in the ->remove() hook and consequently devm_spi_register_controller()
> > > cannot be used.
> >
> > There is devm_add_action_or_reset (IIRC the name). It does a trick.
>
> Interesting, thanks.
>
> However there are currently four actions performed by bcm2835_spi_remove():
>

>         bcm2835_debugfs_remove(bs);

This one shouldn't be counted. You can init it as the last op in
->probe() and that mustn't fail the probe.

>         /* Clear FIFOs, and disable the HW block */
>         bcm2835_wr(bs, BCM2835_SPI_CS,
>                    BCM2835_SPI_CS_CLEAR_RX | BCM2835_SPI_CS_CLEAR_TX)

This one I don't know.

>         clk_disable_unprepare(bs->clk);

This one traditionally done via devm_add_action_or_reset.

>         bcm2835_dma_release(ctlr, bs);

This one probably the one which needs to be addressed ideally in DMA
engine for all.

>
> So I think I'd have to add four functions to perform these devm actions,
> which would add a lot more code than just the single line added by my
> patch.  It also seems doubtful that the teardown code will still be easy
> to follow.  And small patches like the ones I've submitted lend themselves
> better to backporting to stable.
>
> Mark, please provide guidance as to which variant you'd prefer:
> Switching to the non-devm variant of spi_register_controller() as I've
> done here or adding devm calls for all the existing teardown steps.

All generic devm_* APIs have a release counterparts, you can
explicitly call them in order you want during ->remove(). So, I still
see a benefit of devm_*() even in such cases (makes ->probe() much
easier).

-- 
With Best Regards,
Andy Shevchenko

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
