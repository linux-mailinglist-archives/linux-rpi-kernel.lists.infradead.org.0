Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDE261D5BA6
	for <lists+linux-rpi-kernel@lfdr.de>; Fri, 15 May 2020 23:33:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UmVrWkN1Ghy+0iUUEEjesqREHmY5Zl/Vv6zcOwQnLHg=; b=nRnSFEdjukS7R7
	ReaKFqPfONhxvhdodrQn65NQNkM9NK1a/AEnphw3YC6c0s5ozWitc5sOhA0I7oj4t6Olh7DxECkO1
	30rqeSVcQDbzS+8rbdzLn38CwrOfeDA3s148uhtplNNapTb/bawJGZkOAWxVrRdEcAJzzQZeFaLNe
	bqPA97gSg2kjV++5r2ELFBe7/D6FBSg6baQskiFRe4ZRaGZt1sY0ZaRmeL0FAddgxJwzlWwBGVxlp
	lyvdHlNfKY0wctOTRHcS1JFUTHi6/QLgRV+KOAAN2PEK1onqR3BrXK1dF5lhKLNO6tDYU3Kk6wws4
	OZFy2E19omHpo6x4UqeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZhxD-0004ak-1Z; Fri, 15 May 2020 21:33:15 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZhx9-0004Xc-8n
 for linux-rpi-kernel@lists.infradead.org; Fri, 15 May 2020 21:33:12 +0000
Received: by mail-pj1-x1043.google.com with SMTP id ms17so1573642pjb.0
 for <linux-rpi-kernel@lists.infradead.org>;
 Fri, 15 May 2020 14:33:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zOy7Lg4L/jx9ljWYiP2hH6zPAudKPtQ8cz2fMkkgc8M=;
 b=tVgKWMBHjEmtqjVpyQLXOwSF3oyli942dJLU+cFuXTl/eEOh9nZWB26fUUZltyA+tv
 N0FZWIRnUAawTkNNdT2NnuqiXKY6Cee6T3Wq3h40wS+3YphNxTghqoIij+nb1eAvPitI
 YZ6SSovQvn75a0evK5r61KuKdk+1HEnZRY/Iy4Iq71NS5+/AAAionwFw47ckleVVYnA3
 0vnZVLJ7fr9N5EYOZqm2pJcLnlckFIqhYn41rz/ckZOrzp5b3c3Ycg+YuP3JMOqnPyQk
 co46L5xWCLmuGqzZeQtSdyDbF7B0hzNi8lIISd77hJB4VC2SSH/n0LJbEuQGIFPVxksk
 l/WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zOy7Lg4L/jx9ljWYiP2hH6zPAudKPtQ8cz2fMkkgc8M=;
 b=MdP02ncZPZXDkkBU4grGjMHVgrl7ctspqBguD9lsbev9Qde8LoeonhknU3L8pUl9Sp
 6HwGKRslWJl5z5xV68AnMhiPlmSVKk5zWSV9femz3BgV5d/+12/nZVHmpyFIkAr+Xj6Q
 qqP8GV230viCAjOGiwQGgN5QGmy503nxtZwxiqpUJTNh0YyZGLnBCnd4fUMA6cEzWWv6
 lLx0Rox43yX5u1DQP2I30Zm2Xf+CbYxkdc1/0r6Dg3GU1OGm7TTGMYlE7+Q6OqK+uDxA
 gADabh+2a2kP4mdkbavuhbL3m6XAKkyghJx8t/6Jkt2+pDbHk7RupygVxsa4FVvHjCzZ
 0E+A==
X-Gm-Message-State: AOAM530/0kXrBUcz6t3tGvqpSdpF9dZQ8r+JbRpit0k4jDy9fb13VJd3
 lnpoXwlemByCgvizVV57C9szFD3ltISMfYSb0ys=
X-Google-Smtp-Source: ABdhPJyOWCf3pOcAvs0fdU97WiTRVwzsvWjRWLWWSaLTMZSflTGaJ52Q++OOOOZyIDd0ocWOOlclNJisWm7v0HKc/gU=
X-Received: by 2002:a17:90b:3717:: with SMTP id
 mg23mr5810742pjb.129.1589578390300; 
 Fri, 15 May 2020 14:33:10 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1589557526.git.lukas@wunner.de>
 <2397dd70cdbe95e0bc4da2b9fca0f31cb94e5aed.1589557526.git.lukas@wunner.de>
 <20200515162903.GH5066@sirena.org.uk>
 <20200515164404.bev4zjzcmx4nwzhi@wunner.de>
In-Reply-To: <20200515164404.bev4zjzcmx4nwzhi@wunner.de>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Sat, 16 May 2020 00:33:00 +0300
Message-ID: <CAHp75Vfs=gc9c2h2amhu0eb3ux8jJAuC7CRY8fLrFiBsTwtSYQ@mail.gmail.com>
Subject: Re: [PATCH 2/5] spi: bcm2835: Fix controller unregister order
To: Lukas Wunner <lukas@wunner.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_143311_320386_D1D905AD 
X-CRM114-Status: GOOD (  11.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [andy.shevchenko[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Fri, May 15, 2020 at 7:45 PM Lukas Wunner <lukas@wunner.de> wrote:
> On Fri, May 15, 2020 at 05:29:03PM +0100, Mark Brown wrote:
> > On Fri, May 15, 2020 at 05:58:02PM +0200, Lukas Wunner wrote:
> > > Fix by using the non-devm variant spi_register_controller().  Note that
> > > the struct spi_controller as well as the driver-private data are not
> > > freed until after bcm2835_spi_remove() has finished, so accessing them
> > > is safe.
> >
> > Why not use managed allocations of clocks and DMA channels?  This is a
> > standard issue with the devm APIs, if you're using them you basically
> > need to use them for *everything* up to the point where you start using
> > them.
>
> There is no devm version of clk_prepare_enable(), dma_request_chan()
> and various other functions invoked on ->probe() by spi-bcm2835.c.
> So tearing down DMA channels, disabling clocks etc needs to happen
> in the ->remove() hook and consequently devm_spi_register_controller()
> cannot be used.

There is devm_add_action_or_reset (IIRC the name). It does a trick.


-- 
With Best Regards,
Andy Shevchenko

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
