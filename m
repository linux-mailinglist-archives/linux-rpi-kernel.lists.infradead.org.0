Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F30F2113C55
	for <lists+linux-rpi-kernel@lfdr.de>; Thu,  5 Dec 2019 08:28:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IivKjRNFhPaCmGAPzhksZ9Us6PoQMY5M3K/2/WK1yEg=; b=iqoaU/EPxt1MOr
	KdVIXbS87TAG5qFOn/xKLy+VQqT32cuWB/tuRCzkltl7/L+nqtraIKK9wTq7WFFZCZktQuFN/0Ugl
	Oet3Nn8u+k1rlWebb7jnhBfi4txSGgttZwNuBUgKyRMgrcR90Sfg9iPCT7DmEQww7y2Td+h/kUWUH
	x0xCN+yjFWa13v2OnLQQXnhuN6wqgafJbJdVkSP/2vOEUfsRVi7qGpmhuoGFu34jizAop9JVH59Cu
	Mas9VHf8p1n3KQcDC6l58e2XJfJCdcrWl3ti98NftdF0BgWKJHLTyT9r5fDhGM2s8o1T2aZnoNzHw
	5Q68EtFlASHP3ce2MV0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iclY6-0007bW-Uf; Thu, 05 Dec 2019 07:27:42 +0000
Received: from mail-ot1-f45.google.com ([209.85.210.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iclY3-0007ai-U9
 for linux-rpi-kernel@lists.infradead.org; Thu, 05 Dec 2019 07:27:41 +0000
Received: by mail-ot1-f45.google.com with SMTP id g18so1708036otj.13
 for <linux-rpi-kernel@lists.infradead.org>;
 Wed, 04 Dec 2019 23:27:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pw4WZcfphzCIzhgoRD2Vp3ZAYrP3HBw25b8UxRdaKd8=;
 b=B9rlH5btT7KNX+5l/q4d3BL+ppyDHUwzBdPQw70o+ERGxVVJ+1rocp2spCOq7XCyyi
 Jm1A0CBkxRU4h8sPFHxoTDXqW/O2ByNSL5RkczhRAYoEEb57X22vwN6zQDJMqUUZ0ptS
 HO7HcLHngGjnn6scg3nuZ5mFIwggfzzQ5fmPkbEEz2Rmr1ty0GpBsjOVtp87meTQP1LN
 8s6DPJ3YD6QrrIhg0WLaSB8ZxxWr0d14peEHqD7befGG7HaeThSmnVjewjWrj6l0WvWJ
 U56edDrqlwudsxQKwvg7Tcoz4Gjb5DO4mOApOqC6jXLcSWukbSxyEeC7tJzxrIxdLhO9
 1/FQ==
X-Gm-Message-State: APjAAAXDW12haN5pQ6bQ6DxPONC8B5mstvZSb/tPbKFcUrtp87XMczkc
 TlAAvBFB0ZVCBirJ+wrlDgEdJ2rlNAHboxGS450=
X-Google-Smtp-Source: APXvYqzPrmk9ff91NtbYQS9Y/ocMlPBzmXUcgeDKzX2+flvXR9Ts+wSM51OIwXz87ej0u1MDmd6ODMTIm/xCzR+HtOY=
X-Received: by 2002:a9d:2073:: with SMTP id n106mr5566725ota.145.1575530854987; 
 Wed, 04 Dec 2019 23:27:34 -0800 (PST)
MIME-Version: 1.0
References: <db6a1e17-49a3-e3ed-7713-56b7763713d6@raspberrypi.org>
 <20191202134344.GE1998@sirena.org.uk>
 <1e0b7cd6-cf9e-2b68-f875-8015c8ffc326@raspberrypi.org>
 <20191203163521.GM1998@sirena.org.uk>
 <CACRpkdbqNw+h6MphF7kLAwym-F3G+ZebMDB2BMt0bzA6DfM0OA@mail.gmail.com>
 <CACRpkdaxXKMqL4Y8yFu+U7WhpXgq6Yr+hx4rYd3aDzc+-dLDFw@mail.gmail.com>
In-Reply-To: <CACRpkdaxXKMqL4Y8yFu+U7WhpXgq6Yr+hx4rYd3aDzc+-dLDFw@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 5 Dec 2019 08:27:23 +0100
Message-ID: <CAMuHMdW=eoOiuucv8-p7gs=u9QK_W_Onpu37fq57xU6f+0r0qg@mail.gmail.com>
Subject: Re: Side effect of SPI GPIO descriptor usage
To: Linus Walleij <linus.walleij@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_232739_969326_D6C50328 
X-CRM114-Status: UNSURE (   6.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.45 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.45 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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

Hi Linus,

On Thu, Dec 5, 2019 at 12:28 AM Linus Walleij <linus.walleij@linaro.org> wrote:
> drivers/rtc/rtc-rx6110.c
> Prints a warning if not flagged SPI_CS_HIGH, wil print
> that warning if used with a GPIO chip select from device
> tree. No regression, also no in-tree users.

So this warning will trigger if the board designer added an inverter, e.g.
to make it work with an SPI controller that doesn't support CS_HIGH...

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
