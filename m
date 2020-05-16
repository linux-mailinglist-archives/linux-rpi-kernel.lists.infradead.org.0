Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCAB91D6016
	for <lists+linux-rpi-kernel@lfdr.de>; Sat, 16 May 2020 11:45:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wWlLeDPNVvpnpQNz2uGMb56C5DToL+W9YwbFUYQ5978=; b=J1U6ujTU2dgMbR
	yuLiDGdP37bgtok1CCwNCzTOx7V9xpKyaJtPbM59uEAAaVu2dLKNK1TU9GjYxuEPILgf0ReOwPchi
	gjmK+KynzJd/JOcmQb3RUf/hGl28x9RGmtYxqcZftUaGbPutsnwjndn2uDfrRRlZpAFuf4SxeY24b
	wrbA9z7szWoQgsv9d4TgY8/4WaQnN2FwfOt+Zlxb58GiTd20T2JLFsgw+v3S7tjYBeeJV9BcjbEGN
	TVRLVAr+3SQ1z5JEMnF2cBuw28JhRxtTq55JF19+tt6Jok9Uoa2YIVOJ6tEONuhaz5lV+M1YOmP4T
	a5I4bWeldBl2N3aw4vmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZtO8-0004MD-S7; Sat, 16 May 2020 09:45:48 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZtO5-0004La-Dj
 for linux-rpi-kernel@lists.infradead.org; Sat, 16 May 2020 09:45:47 +0000
Received: by mail-pg1-x541.google.com with SMTP id r10so2228513pgv.8
 for <linux-rpi-kernel@lists.infradead.org>;
 Sat, 16 May 2020 02:45:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=lZJ62fHWlt6Z60NeL5Ek6BbRHHHGV8Gk7H2eHbY2YNE=;
 b=TMqE+yJtwiYvbQn7TkBcBxGHDnkJHWTfiz6IlOIXiHPEaS3uvCrwWZVYlcn/ZHl8FX
 OWAAB6sB53uFbLlosDgpzvI69PrcDgClPcjogwYUzfbU16gnHlUUxhuE2X1GdvMeBLaI
 LFG/HuXqLi3vEzxNuqmCbI1kRwY8jhGZMS8uR3aUBcojKOdr+nTYorR6BHgpoNJi45TH
 F+hpZNEFD9xXhHpfaa7Lb/bYAOAiJ2MmqppYyQ6CGfL1UhOhb3tJ+LLfE5l8GnjB7MwC
 j3l5m8/jRMKlDjR81vnUjeJxVxyB/SFUp3/t1RNDRP3BvLalxNo5JQTmXwWHBlaIJva5
 ZeZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lZJ62fHWlt6Z60NeL5Ek6BbRHHHGV8Gk7H2eHbY2YNE=;
 b=ILDi0PhHz77ndOxXRITk2AkMqOc94E99/8+G9hkiE7ljsMSO5xKzW2G7Qyy6ubqNa5
 Ge6TFQrSTCnqqJUrs6HLJ4C1ZGTBOr3CQkuGOQdkaXV7aDFy8mv/cp2NjygQphzEkGEs
 VB25gs5OJ7hl09Z4JCEA6US20qO5tQB6Ox7zpmKVKXE/ucuUIqcdrRaXXxpya/Nm4Gde
 8wBxFNcKkKG9Kujaq8GzUA8QocS28unrYbMgEKPrWb2XgDXi6lU6UX1Rn7NDnxt7xz1X
 d5C6hw7tGw8qSSepMrtzCHQ5cLZv3x7YdJXQfO15+XE364/iGQIbXKORrpyFrISam575
 lciw==
X-Gm-Message-State: AOAM530Cm5FCscdRWcW+H6sy2k/gyR0hrFlvERODJCbRQUydYXxtZDDz
 sCjozIz7JaUcJUYJ5D9YO09dGNgJHfsCRI7KBm0=
X-Google-Smtp-Source: ABdhPJx2+5Dzwoxe5rj4etjhLXQgBNczFXn7uNpdmqOhM5mJ+sIaAMFL9s2R52n6meZipOln97hN6qy8uQ3/ixm7/Co=
X-Received: by 2002:a62:f908:: with SMTP id o8mr7806717pfh.170.1589622341531; 
 Sat, 16 May 2020 02:45:41 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1589557526.git.lukas@wunner.de>
 <8aaf9d44c153fe233b17bc2dec4eb679898d7e7b.1589557526.git.lukas@wunner.de>
 <20200515162725.GG5066@sirena.org.uk>
 <20200515163147.3u4xjqdxci2neup7@wunner.de>
 <CAHp75VduTYuVO_KhLuRNUA-zQxo8QNFMWDoLRCrGxYkZCOUovA@mail.gmail.com>
 <20200516064512.cwslwlkozff3mycf@wunner.de>
In-Reply-To: <20200516064512.cwslwlkozff3mycf@wunner.de>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Sat, 16 May 2020 12:45:30 +0300
Message-ID: <CAHp75VdVyOA55hiv5WFz6Zi94w3MRbivkLec029ZCszET0WDRw@mail.gmail.com>
Subject: Re: [PATCH 1/5] spi: Fix controller unregister order
To: Lukas Wunner <lukas@wunner.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200516_024545_483155_4B726F3C 
X-CRM114-Status: GOOD (  21.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 linux-spi <linux-spi@vger.kernel.org>, Mark Brown <broonie@kernel.org>,
 linux-rpi-kernel <linux-rpi-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

On Sat, May 16, 2020 at 9:45 AM Lukas Wunner <lukas@wunner.de> wrote:
>
> On Sat, May 16, 2020 at 12:37:17AM +0300, Andy Shevchenko wrote:
> > On Fri, May 15, 2020 at 7:41 PM Lukas Wunner <lukas@wunner.de> wrote:
> > > On Fri, May 15, 2020 at 05:27:25PM +0100, Mark Brown wrote:
> > > > On Fri, May 15, 2020 at 05:58:01PM +0200, Lukas Wunner wrote:
> > > > > However since commit ffbbdd21329f ("spi: create a message queueing
> > > > > infrastructure"), spi_destroy_queue() is executed before unbinding the
> > > > > slaves.  It sets ctlr->running = false, thereby preventing SPI bus
> > > > > access and causing unbinding of slave devices to fail.
> > > >
> > > > Devices should basically never fail an unbind operation - if something
> > > > went seriously wrong there's basically nothing that can be done in terms
> > > > of error handling and keeping the device around isn't going to help.
> > >
> > > I guess the word "fail" in the commit message invites misinterpretations.
> > > The driver does unbind from the slave device, but the physical device is
> > > not left in a proper state.  E.g. interrupts may still be generated by
> > > the device because writing a register to disable them failed.
> >
> > I didn't check a patch, but I see a bug on kernel bugzilla against
> > spi-pxa2xx because of this. It requires quite untrivial ->remove() in
> > order to quiescent the DMA and other activities.
>
> Yes from a quick look at spi-pxa2xx.c it's immediately obvious that
> the use of devm_spi_register_controller() is likewise completely wrong.
>
> The crucial thing to understand is that the SPI driver's ->remove()
> hook is executed *before* any device-managed resources are released.
> pxa2xx_spi_remove() disables the clock, frees the IRQ, releases DMA,
> so the SPI controller is no longer usable even though it's still
> registered!  Somehow this incorrect order got cargo-culted to dozens
> of drivers over the years.
>
> We use SPI-attached Ethernet chips and when the SPI driver's module
> is unloaded, the Ethernet driver's ->ndo_stop() hook is executed to
> bring down the interface.  For this it needs to communicate with the
> Ethernet chip, but it can't because the ->remove() hook has already been
> executed and unbinding of the SPI slave happens afterwards, when the
> SPI controller is unregistered via devres_release_all().
>
> There's another issue in spi-pxa2xx.c:  It acquires a runtime PM ref
> even though the driver core already does that.
>
> Do you have a link to the spi-pxa2xx.c bugzilla?  Are you able to
> test patches?  I can submit a patch but I can only compile-test it,

Here you are: https://bugzilla.kernel.org/show_bug.cgi?id=206403.
There also a link to my GH tree where I tried to clean up a bit. And
yes, I know about atomic handling bug there, but it's another story.

I was able to reproduce the bug once or twice, but submitter has a
test case with reproducibility close to 100%.

-- 
With Best Regards,
Andy Shevchenko

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
