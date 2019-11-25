Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD8AA10939A
	for <lists+linux-rpi-kernel@lfdr.de>; Mon, 25 Nov 2019 19:39:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CQPDCER5HpZmxoRqfNekNou3Afdph3KymktiNCLVIMU=; b=rQ1b+3hXwQnV8v
	iHJpK+FG2gnQW/DsPo+IZo75NOgEAwGVg8wiyncKvavGL5xkj/w8ajLR9Y56xmwy6/QgsQhwE96b/
	DKZy2xE0G5tippO64HmMQIjaiMzE7jVaJC0HZuKti7nSasNLva+3URACkPwcSgikTrgOkpPB2UM3R
	5QlWAfVCAxhfj8BtuiJ/9LRw0jxNSzzjoeiDWcnyMU4fgCgSX4K51aE404PglSTO3QI0Zrd3KNTTo
	9ReRShBmo21B1bsg0ilUe0X4IpQi174PAI6FKn2O13q8i5EERSlVvK1Qdv/3G5geICgqXrTPGWFrI
	tO9TTFiwiFXYtN3SkIsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZJFl-0002dA-OS; Mon, 25 Nov 2019 18:38:29 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZJFi-0002cm-7n
 for linux-rpi-kernel@lists.infradead.org; Mon, 25 Nov 2019 18:38:27 +0000
Received: by mail-ot1-x341.google.com with SMTP id f10so13546578oto.3
 for <linux-rpi-kernel@lists.infradead.org>;
 Mon, 25 Nov 2019 10:38:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=anholt-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=JxgGGumSV6ntEjsFXJnHRo8WdLLecc5bvGCAk5fSEjg=;
 b=M19DJm/dSMz1pRxTz6zAucGexsWwQ8NbSZ5oGr+FncqGNKcqOJvBgxap87yrei3ii+
 4tQrS7wIeo4lfzB1288Zb8ngf7iGoAtBXqjrPSS94+y/WGTRvqCvhD35QJJRIyXsGKW5
 2QZ5NpbLbXTlVui4zZAgG7iU2R1qwvZe6HwOTsGt72UdHJNodirBcQOvApgIldPf4ec7
 xMpe4VkL4akEx0YKqU055YaHQ2fMOlYt5KLFns4y0czgvovk1TkgHTUBpmIwNfhcUbGD
 KoQwJV2z8Vn/Ode4lPAyrc7httk/U+kKoI7LN0bJYOKT8q0kT9jkrFTW3ZU9x7Dew1zE
 DpzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JxgGGumSV6ntEjsFXJnHRo8WdLLecc5bvGCAk5fSEjg=;
 b=SyNQhWu9XRexUp6+Abhas2NwwX4Hc0DDp2km4ty9P/QDIhpEsSs3iUcqzYG/VZWqpP
 +84lhzTRapLdWhY33ptB47n1KeMtYBaEtzEIOKEyLyIKGj/I3j2S0Ts0tCPp+LfxExbs
 Ze0ROgOv6g3gaqa0do6gabxxZL3EYrG4gLplO8VD1AndyipNbGMsZpf48AnS+oHlUqSN
 JzdxC9FLYffUYBEvJB9oA7CcoxG78V6c2c/nlrEpTvAdvqxk4YiaePuI8wGEl2XZxA3r
 rqUDFRJLgH+BxG/EsMtNGtLpHDFOs1UJY5dSJhttOCWuo+6ryBtPR8a8BbdAexbr2ypr
 /g8A==
X-Gm-Message-State: APjAAAWyyM0BcWpT6D+zWJWtF0crawWbm07Vig+VTpXFWXozVVlkqqeE
 pXBYhhx9h246ITh/CclRHV9Q2zt1sMs6UUdgrnh/Uw==
X-Google-Smtp-Source: APXvYqzJQjIj5BrFseNPQ56ZcGhTiGK4/maa3eWH0UOgyuya9zqWzUCNqDybRJJk37wXiRHGUxJp/oGydVNec9GD2Kw=
X-Received: by 2002:a05:6830:1f29:: with SMTP id
 e9mr20394786oth.272.1574707103099; 
 Mon, 25 Nov 2019 10:38:23 -0800 (PST)
MIME-Version: 1.0
References: <1574617733-18151-1-git-send-email-wahrenst@gmx.net>
 <9df5fcd121b4456f1e2bd3c512c44cfb71b6b17b.camel@suse.de>
In-Reply-To: <9df5fcd121b4456f1e2bd3c512c44cfb71b6b17b.camel@suse.de>
From: Eric Anholt <eric@anholt.net>
Date: Mon, 25 Nov 2019 10:38:36 -0800
Message-ID: <CADaigPXUyBy=JG_2vp1wsZh6vLx8bk_7YHg6Wb5mN+TPOJ0-Fw@mail.gmail.com>
Subject: Re: [PATCH] MAINTAINERS: Make Nicolas Saenz Julienne the new bcm2835
 maintainer
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_103826_305661_78D4AFD5 
X-CRM114-Status: GOOD (  14.07  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-kernel@vger.kernel.org, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

On Mon, Nov 25, 2019 at 2:28 AM Nicolas Saenz Julienne
<nsaenzjulienne@suse.de> wrote:
>
> On Sun, 2019-11-24 at 18:48 +0100, Stefan Wahren wrote:
> > Eric isn't active any more and i don't have the necessary free time.
> > Nicolas already made contributions to bcm2835 and is pleased to take
> > over the maintainership. My thanks go to both of them.
> >
> > Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
> > ---
> >  MAINTAINERS | 3 +--
> >  1 file changed, 1 insertion(+), 2 deletions(-)
> >
> > diff --git a/MAINTAINERS b/MAINTAINERS
> > index 512e527..4285190 100644
> > --- a/MAINTAINERS
> > +++ b/MAINTAINERS
> > @@ -3224,8 +3224,7 @@ N:      kona
> >  F:   arch/arm/mach-bcm/
> >
> >  BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE
> > -M:   Eric Anholt <eric@anholt.net>
> > -M:   Stefan Wahren <wahrenst@gmx.net>
> > +M:   Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> >  L:   bcm-kernel-feedback-list@broadcom.com
> >  L:   linux-rpi-kernel@lists.infradead.org (moderated for non-subscribers)
> >  L:   linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
>
> I'm glad to take over.
>
> Acked-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

Reviewed-by: Eric Anholt <eric@anholt.net>

Thanks to Stefan for all the hard work, and to Nicolas for stepping up!

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
