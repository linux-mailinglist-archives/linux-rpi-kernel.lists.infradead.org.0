Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A2FEFB939
	for <lists+linux-rpi-kernel@lfdr.de>; Wed, 13 Nov 2019 20:57:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Aet7Hgs3crljzzGYjpSMascHeX4HA49DlDpZQlz9z5k=; b=PjpvvuUbkO8Lkw
	YOehzUoJLHaAxQnZGT9nFx26KJINz1SVemKFUpy9pwOGM858Nm9GT0M3dwkOnKrGX5vzAq3MqbWtg
	IHbsfH+hsdTAq8FaHt0l0IMFLe9y1P9dj52jmToD0BG2Aj//lWep7D9LdRCDH99UHTT3gU9qjcqB7
	4CvcMdetuKRb0UUoLrjFKuubazjyvDwjhTOvi1muZw2FY1sfcY6jhApwhCjKvXSCcvzmre4A+qhkQ
	lW+CBJrxyjoMiLH0+DRixDwsVOqb/SmmAK+P9yuaIwh/2Tgw/xxjhDS2lgIO+bJ8zHALVwAvLgm5N
	XD6J1EJxpf85OCpIlqOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUylL-000177-UP; Wed, 13 Nov 2019 19:57:11 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUylI-00010h-JJ
 for linux-rpi-kernel@lists.infradead.org; Wed, 13 Nov 2019 19:57:09 +0000
Received: by mail-pg1-x541.google.com with SMTP id l24so2001682pgh.10
 for <linux-rpi-kernel@lists.infradead.org>;
 Wed, 13 Nov 2019 11:57:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Jg8cz0y37PGedisjI6oZVlv6zSbjyEWbAD1JRgl8Rwc=;
 b=l3P8EdSp5zUkFVa/mKha8mCCt25EXgbAEmZuTkjOqnHhzjXKBik3B9g2dBKZNj8WWR
 CfO2ixua5HkdM6T5iuGof39AX/Cw8b0zlQ3PZzvwnwq9cbeXQjbc/XIH8NCwwDBqd0HK
 qFtZD4GUGDKGS8VRZ+s1XmdlhHmwtR0karVrbEjG3Kgi0/vC+Vet2or9pOh99aPKinoj
 1qNn66PXO8oSzyhW2nkkQMxm5sWHJKEgQ9G3ojEnXVV5RyEZvGd1kb/1K/rz1+PO1Spn
 1HL8+xkHMjceDdr37QFmkKgpyNq3kxG+u4bKSjVN8XLe71eBNoXzJ6bEUAZLhwpSRJUo
 Tyjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Jg8cz0y37PGedisjI6oZVlv6zSbjyEWbAD1JRgl8Rwc=;
 b=AVCWXf/TAL5A4TQ4khD83MjVm9oz+m1aLNx3VDvdNPxICs4LOua875bX/29rY8tw8B
 hJ3e2zTB5FKlku91EdMpGnM5nHKJTkPCEK8Z1iF8tPleTngnh9Eno/4kb19qM4MTChew
 HpnVsnW8gJxdrwz/P6pOQpLK1hBUCNdWOrIZF2oenuIsNxafx0MjpafaJorBfVsI3R8X
 eZRf4bEJ6Hi2fJ525VSHukKdjVIet452Ph1Wzn+WFePhf/HD/0ChpcDhNnhw71LQAbsq
 Y0JKvFB37ke5JyJov6YTC1s7e7+wJBCAjdhvM7jY71jIVgzxHC+adMVIqj41g0mQNS5t
 l7rA==
X-Gm-Message-State: APjAAAWW4E5bKgWfBDDoX5SGgy+DyKi6sJbUuL7L2rzMzsz4rluhXm8Z
 /igT8G5K4k8tRc/Q0siJgOIkocbQVt7cBQMKdWcttg==
X-Google-Smtp-Source: APXvYqwqtBfsxD15Ze/GSYiWTQsz7cEOq0ryaTo5onNcdi3d3VP6nFbRioZVEy/K1OaZLRdIJksqunin46hmVNcwyv4=
X-Received: by 2002:a62:aa0a:: with SMTP id e10mr6450408pff.46.1573675027297; 
 Wed, 13 Nov 2019 11:57:07 -0800 (PST)
MIME-Version: 1.0
References: <cover.1573482698.git.marcgonzalez@google.com>
 <bfad5318dbecc1705416a554dc806a99069247b0.1573482698.git.marcgonzalez@google.com>
 <8634c030-7abe-4446-9803-d4964311990b@gmx.net>
In-Reply-To: <8634c030-7abe-4446-9803-d4964311990b@gmx.net>
From: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
Date: Wed, 13 Nov 2019 14:56:56 -0500
Message-ID: <CAKvFj6qUDJUoZUG_Lcm1NpOS-y-OZmf6e-4pSKaHwpVs5RA0QA@mail.gmail.com>
Subject: Re: [PATCH 2/2] staging: vchiq: Remove global bcm*_drvdata
To: Stefan Wahren <wahrenst@gmx.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_115708_665850_5DF1DB00 
X-CRM114-Status: GOOD (  18.15  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: devel@driverdev.osuosl.org, Greg KH <gregkh@linuxfoundation.org>,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 13, 2019 at 1:40 PM Stefan Wahren <wahrenst@gmx.net> wrote:
>
> Hello Marcelo,
>
> Am 11.11.19 um 18:14 schrieb Marcelo Diop-Gonzalez:
> > Moving the DT node check to vchiq_platform_init()
> > removes the need for these.
>
> this comment does match to your changes. Also i'm missing a why this is
> necessary.
>
> >
> > Signed-off-by: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
> > ---
> >  .../interface/vchiq_arm/vchiq_2835_arm.c      |  4 ++--
> >  .../interface/vchiq_arm/vchiq_arm.c           | 20 ++-----------------
> >  .../interface/vchiq_arm/vchiq_arm.h           |  4 ----
> >  3 files changed, 4 insertions(+), 24 deletions(-)
> >
> > diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
> > index 5ac88be9496b..b133b25c44af 100644
> > --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
> > +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
> > @@ -78,7 +78,6 @@ free_pagelist(struct vchiq_pagelist_info *pagelistinfo,
> >  int vchiq_platform_init(struct platform_device *pdev, struct vchiq_state *state)
> >  {
> >       struct device *dev = &pdev->dev;
> > -     struct vchiq_drvdata *drvdata = platform_get_drvdata(pdev);
> >       struct device_node *fw_node;
> >       struct rpi_firmware *fw;
> >       struct vchiq_slot_zero *vchiq_slot_zero;
> > @@ -109,7 +108,8 @@ int vchiq_platform_init(struct platform_device *pdev, struct vchiq_state *state)
> >       if (err < 0)
> >               return err;
> >
> > -     g_cache_line_size = drvdata->cache_line_size;
> > +     if (of_device_is_compatible(dev->of_node, "brcm,bcm2836-vchiq"))
> > +             g_cache_line_size = 64;
> >       g_fragments_size = 2 * g_cache_line_size;
> >
> >       /* Allocate space for the channels in coherent memory */
> > diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> > index c666c8b5eda2..cc753ba9c68c 100644
> > --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> > +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> > @@ -140,14 +140,6 @@ static DEFINE_SPINLOCK(msg_queue_spinlock);
> >  static struct platform_device *bcm2835_camera;
> >  static struct platform_device *bcm2835_audio;
> >
> > -static struct vchiq_drvdata bcm2835_drvdata = {
> > -     .cache_line_size = 32,
> > -};
> > -
> > -static struct vchiq_drvdata bcm2836_drvdata = {
> > -     .cache_line_size = 64,
> > -};
> You are touching new code which was introduced to keep the driver easier
> to maintain (e.g. add support for new SoCs like BCM2711 on Raspberry Pi 4).
>
> So please keep the OF match data handling. But i'm happy to see the
> platform data as a const.
>

Oh ok I see, didn't realize that was the reason for it. I think we
should just scrap this patchset in that case.

Thanks,

-Marcelo

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
