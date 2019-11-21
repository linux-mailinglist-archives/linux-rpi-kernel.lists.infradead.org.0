Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35D26105BE1
	for <lists+linux-rpi-kernel@lfdr.de>; Thu, 21 Nov 2019 22:25:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W47nVpCp5yb0rk61jF2HTnJQpsdvKpE4ej3gPilp5MA=; b=TbA/bzYRv89m/y
	d1CyME/kPOwfh8MqJ4P2S5xaXRFXY0LiQoCrKNvf5yOe8JlO1yzX6jwbrBmMjiAFGaYXI1lwkovdl
	YIbWT03rShLHQdBivjcKmGJWhqgo4YR2JOOvwgek4p7A+aM4BLKwN+xsJlwo8CTi9XrtCf3baXP5/
	n6RDmOt2DzGso6cIuvOnnz+xg/g8nYO1VE1B4FGXJOtZ2gMLmqMVT9L/+uQTV+KLM8kLlkIp1T9BY
	f5f1mvBMqZL0UXmDP5N8gQDwP4oqJtah0QfJUU80c6CG6dacnyAuh63XsPF+j5Aj/vFYrxucd6UmE
	e6wEb80jU6GOOxK8Udhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXtwm-0000mT-Dq; Thu, 21 Nov 2019 21:25:04 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXtwj-0000kt-9N
 for linux-rpi-kernel@lists.infradead.org; Thu, 21 Nov 2019 21:25:02 +0000
Received: by mail-pj1-x1042.google.com with SMTP id cq11so2087656pjb.3
 for <linux-rpi-kernel@lists.infradead.org>;
 Thu, 21 Nov 2019 13:24:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0Q1XvMSicHqun/DjhHWSSizG6JWrFQYINK7GNPT/QL0=;
 b=NFNWzxqqE1dpNv8IW940dFk+Epi5Z9zg9xmSessf4XR7B9FzloqL6yv+3fMhkH06WV
 kJkBNR8akuIP6Wz7lHuF1wZsg2QkNbIsez5p6TGM2/32e6C28ayohtiaAsaiBi40EHI+
 2KTy/pYAe2C9C6hJF96DbJPf8wbI6MmewAQSY0iEkAcgQJTwkxNW4p4tD6B0jTKj+fFo
 qbSWlkHkTAm5N1XqGXFwG7UMtBJy+KWYySqV+AU1G9zhePhE9Qwlbqi+o/ivo4S6Sa3p
 8Be4Bsmy8di8x2K/GqJ17fb5D6KRY29IVfxjGrwaDaL8TIxp27i7+axpr+Ql5UOosFaP
 FiWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0Q1XvMSicHqun/DjhHWSSizG6JWrFQYINK7GNPT/QL0=;
 b=hKb+7X0y/gkw/jP215VLSwFYyIW0JAwz8wXcQgWVsyl+NzsFVKa3CGx4lLOFcd7CR/
 +pWhT2yC5HObnK29WaIzqm03DFqgIYttqUxoKRvC05U7KBJhFmX93IPqleDv8i0LKHcc
 dV5SIsIjlbUHE1rQehdBosBfLD4LcAU9A2IApwRQwhn9VIcHtonvTluTWRMB7FLutW4v
 MK2LyMzaqrA+TTfftHeq594KLgJgYSS5yxxH6WZSAwhRatxEIu75T1Pf9CGGyncULv7P
 TDBKlIW/ZvUGdiy2dB+JiYjOOmGpIL8Aq2PlaOi+OJSjqAfnS0C6LB2PHUKYCgyQxXTL
 IcHw==
X-Gm-Message-State: APjAAAXrxQ1tY2RndlaBHAHRHbz3Vw8OP7wqRtmRmQDiLlCTRDgc+s3J
 DAMCa6BqEWxkDda3RpEV9mnPJzlo2oXSuUE+jwGxEA==
X-Google-Smtp-Source: APXvYqwNgmmbg9MXeFk5n10MudpjFBaodL+110fQdIqTT0X3wVmLo6cOVDMkYzZbM2OsfnQM5vEA68C0zoTYPBs2HWQ=
X-Received: by 2002:a17:902:8206:: with SMTP id
 x6mr10753647pln.56.1574371497775; 
 Thu, 21 Nov 2019 13:24:57 -0800 (PST)
MIME-Version: 1.0
References: <cover.1574253964.git.marcgonzalez@google.com>
 <20191120202102.249121-1-marcgonzalez@google.com>
 <1a953395f7b231127fce6ca46fcf78ba6dc9bf4d.camel@suse.de>
In-Reply-To: <1a953395f7b231127fce6ca46fcf78ba6dc9bf4d.camel@suse.de>
From: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
Date: Thu, 21 Nov 2019 16:24:46 -0500
Message-ID: <CAKvFj6r6VHZb-aaCqu_M5PbT9i5D=QtFT3yoOQ2bqi1J9EtrhQ@mail.gmail.com>
Subject: Re: [PATCH v2 0/4] staging: vchiq: Fix vchiq_read return value in
 case of error
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_132501_355306_36207C35 
X-CRM114-Status: GOOD (  18.56  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Thu, Nov 21, 2019 at 2:39 PM Nicolas Saenz Julienne
<nsaenzjulienne@suse.de> wrote:
>
> Hi Marcelo,
>
> On Wed, 2019-11-20 at 15:20 -0500, Marcelo Diop-Gonzalez wrote:
> > This is a proposed fix of an issue regarding the handling of positive
> > return values from copy_to_user() in vchiq_read(). It looks like the
> > struct dump_context passed to the vchiq_dump() function keeps track
> > of the number of bytes written in the context->actual field. When
> > copy_to_user() returns a positive value, this is set to -EFAULT. The
> > problem is that this is never returned to the user, and instead the
> > function continues, adding the number of bytes that should have
> > been copied to context->actual.
> >
> > Running the following program:
> >
> > #include <stdio.h>
> > #include <stdlib.h>
> > #include <fcntl.h>
> > #include <unistd.h>
> > #include <errno.h>
> >
> > int main(int argc, char **argv) {
> >         int fd = open("/dev/vchiq", 0);
> >         if (fd < 0)
> >                 exit(-1);
> >         sbrk(getpagesize());
> >         char *bad_buf = sbrk(0)-100;
> >         int x = read(fd, bad_buf, 2000);
> >         printf("%d %d\n", x, errno);
> >         puts(bad_buf);
> > }
> >
> > gives this output:
> >
> > -1 1
> > State 0: CONNECTED
> >   tx_po
> >
> >
> >   Remote: slots 2-32 tx_pos=578 recycle=1f
> >     Slots claimed:
> >
> > Note the mangled output and incorrect errno value. Messing with the
> > constants in that toy program changes the results. Sometimes read()
> > returns with no error, sometimes it returns with a wrong error code,
> > sometimes with the right one. But it seems that it only ever returns an
> > error at all accidentally, due to the fact that the comparison between
> > context->actual and context->space in vchiq_dump() is unsigned, so that
> > that function won't do anything else if it ever sets context->actual
> > to a negative value.
> >
> > After this patchset, the above program prints this:
> >
> > -1 14
> > State 0: CONNECTED
> >   tx_pos=b4a218(@165de6b4), rx_pos=ae0668(@f02b54f4)
> >   Version: 8 (min 3)
> >   Stats
> >
> > Help with testing would be appreciated. So far I've basically just
> > diffed the output of 'cat /dev/vchiq', run the program above with
> > a few different values, and run vchiq_test a few times.
> >
> > These were applied to the staging-next branch of the tree
> > at git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git
>
> For the whole series:
>
> Reviewed-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

Thanks for reviewing!

-Marcelo
>
> Thanks,
> Nicolas
>

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
