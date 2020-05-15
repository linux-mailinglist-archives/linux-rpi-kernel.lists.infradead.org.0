Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBDFA1D5BB6
	for <lists+linux-rpi-kernel@lfdr.de>; Fri, 15 May 2020 23:37:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i4A7aaVbzl51M6HByrIeeYxEGogpG3s6/ENPAOPf+j4=; b=YR+5wF7jsX4DH0
	gKICsp1P4uEpwMRGl31ryCnAMrmQmHSr7I39nqMDpHPiMnpI8gBnubuD9m1pAL4HHwyrRreo3k/FU
	aLo46WV/fZ+0pXzHgFWLin16gqrNY1nJXcsWeUkYfoS5XDbqZcLBzLA+m2f4V0/5/0AEaE8qwR+x4
	X28r8eYlWQzUHnERvpHNUChKUZQGhztY9QFBjvSRU4FgEn8CwFlCS0PDUxXoF0PGeb8PpyxeOUUJf
	6CrsjPl7HOQsWd4bOGdBnvfgv49t+4uewrfBOJB9rvThsV0O9ZvX65Y6ZLvMf5AIHLa2X7VBZ0g4s
	4FotLhfa6+3/eU/nLT/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZi1K-0007ha-8i; Fri, 15 May 2020 21:37:30 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZi1H-0007gx-6l
 for linux-rpi-kernel@lists.infradead.org; Fri, 15 May 2020 21:37:28 +0000
Received: by mail-pj1-x1044.google.com with SMTP id hi11so1487872pjb.3
 for <linux-rpi-kernel@lists.infradead.org>;
 Fri, 15 May 2020 14:37:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=12PJ4LVKC32hDA7ji0l5dHls/k0wf58AYdIns1gYhdY=;
 b=lLMDRCN6cFeiFSGoky9NJRQT0lRkcF/+YQaFJKWg+V7rqtGOUR0ArOS3wbNm22u7pe
 TWZFTJIpYSqlDEmn9mNy9LRQZTqxOUFCTI+kP0T6U69YvxsDkb/iYgSuiob3oX+vf19f
 7Ba+iErAE1Vu4oU9rF+WmUOzpTB7slxGv0cX/bPp5yd4YGrtHv437VYchJWxYHJWA5VT
 jgNhflbGEkXpcCzP/t7Pjo9P+piGo/+fQyo+6VOv7f97YKVL9uoKZ+PFBOs4gKa2SPQa
 0b1cwn+c9FY6eYmdPWMFaLIWI3NEQNPA4CdVYz54Lx+7THvEKropeTQ+PJVLv4S0romu
 7EcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=12PJ4LVKC32hDA7ji0l5dHls/k0wf58AYdIns1gYhdY=;
 b=oJsorii7M5vaDs1U83/DRkd78srPBubERZIEBFiCyl0hXTJfv0lTK5Mbq/7ou0L5sy
 JgjhJqDYMstPZvXAZwgoMZHElGurSd2/gWWR9iprW8Qt3w9zZCUuU6NegSQhxEh8evt/
 ii6phia9/npq3B3LMIDZYkcSh2uivs/nlc6VeVg5EWhG9OsX4srB5BQquPcZqSrOf3IP
 OMTCkvMEdqah6+/rkVCinx/A89HZfqhgbO0qusq3DNczx+FwHv7XzJMd+UXriL5GXryU
 t0/5SRmjMc/m2omI1CWUkRgu2MTat17ShWL+ZCHo/dLcwP2IPh11GiDb3TZUxPd2SWbh
 adAw==
X-Gm-Message-State: AOAM531gC1r47obMlRGD7X1eaoWo788q4o4doDNlTth8Vi8eBAvEaxsd
 InujSUJDWJI60IPBHqqsIkVxN2uopu9N7zYkjgHb6LJG
X-Google-Smtp-Source: ABdhPJx5/8oNtWN1M6mE+TtSVDTz4HIgpG8Cry8bXsPjHyVZlZn6EAN35E04T6KCXm5nir5hzXFpJtCD4HLmpWcav1M=
X-Received: by 2002:a17:90b:94a:: with SMTP id
 dw10mr5768706pjb.228.1589578646010; 
 Fri, 15 May 2020 14:37:26 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1589557526.git.lukas@wunner.de>
 <8aaf9d44c153fe233b17bc2dec4eb679898d7e7b.1589557526.git.lukas@wunner.de>
 <20200515162725.GG5066@sirena.org.uk>
 <20200515163147.3u4xjqdxci2neup7@wunner.de>
In-Reply-To: <20200515163147.3u4xjqdxci2neup7@wunner.de>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Sat, 16 May 2020 00:37:17 +0300
Message-ID: <CAHp75VduTYuVO_KhLuRNUA-zQxo8QNFMWDoLRCrGxYkZCOUovA@mail.gmail.com>
Subject: Re: [PATCH 1/5] spi: Fix controller unregister order
To: Lukas Wunner <lukas@wunner.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_143727_297739_E1F8F8F6 
X-CRM114-Status: GOOD (  12.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 linux-spi <linux-spi@vger.kernel.org>, Mark Brown <broonie@kernel.org>,
 linux-rpi-kernel <linux-rpi-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

On Fri, May 15, 2020 at 7:41 PM Lukas Wunner <lukas@wunner.de> wrote:
>
> On Fri, May 15, 2020 at 05:27:25PM +0100, Mark Brown wrote:
> > On Fri, May 15, 2020 at 05:58:01PM +0200, Lukas Wunner wrote:
> > > However since commit ffbbdd21329f ("spi: create a message queueing
> > > infrastructure"), spi_destroy_queue() is executed before unbinding the
> > > slaves.  It sets ctlr->running = false, thereby preventing SPI bus
> > > access and causing unbinding of slave devices to fail.
> >
> > Devices should basically never fail an unbind operation - if something
> > went seriously wrong there's basically nothing that can be done in terms
> > of error handling and keeping the device around isn't going to help.
>
> I guess the word "fail" in the commit message invites misinterpretations.
> The driver does unbind from the slave device, but the physical device is
> not left in a proper state.  E.g. interrupts may still be generated by
> the device because writing a register to disable them failed.

I didn't check a patch, but I see a bug on kernel bugzilla against
spi-pxa2xx because of this. It requires quite untrivial ->remove() in
order to quiescent the DMA and other activities.

-- 
With Best Regards,
Andy Shevchenko

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
