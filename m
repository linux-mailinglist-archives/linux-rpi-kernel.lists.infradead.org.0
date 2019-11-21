Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A456B105BE3
	for <lists+linux-rpi-kernel@lfdr.de>; Thu, 21 Nov 2019 22:25:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qdl9FI6XwFx0CWKArXMIUvZoE5cbMXazNcZ6yYW/ppQ=; b=J0yXtu6+tWtB7i
	3stUcbl18lb4C7r0XIM7egw60Gtx+tJ+rG5R/1p07xdstbqCVwTHEWzkIk8FFHuwfFc8IvvgLCkw3
	T/YXnWMWlBIM6cBkBfwShB8CN3VbQA+zPdBx42IJpAXOrPFteoh3ObQAgiDfsoEnF5CA/RvVv+Dkj
	d9rHM0TeCwqkntCzl9gQd0YIfkUMsl7fY5KAxcG39e44/bFfZzmJG698xKa0VyA+az/MMruIYJM3F
	P5EeF74rLUCSf3bJOsXVdkcNzJrCIwCcCQe3NZmAKVibH6Z6PqK4IxbDo68TqsVPuxVu45FHAHHsF
	Yfd8xfuxMHzEqwfXECQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXtxH-00022U-4Z; Thu, 21 Nov 2019 21:25:35 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXtxE-000229-Ip
 for linux-rpi-kernel@lists.infradead.org; Thu, 21 Nov 2019 21:25:33 +0000
Received: by mail-pl1-x642.google.com with SMTP id ay6so2188772plb.0
 for <linux-rpi-kernel@lists.infradead.org>;
 Thu, 21 Nov 2019 13:25:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kBYoGW6pslzpDWF+e4NaY7GXTypsHdcIulpf1km4Z08=;
 b=D4NaKQFWFIx1FJkfG2zVoB6NEmd758nicUXM4RLquUXKlfCEh5OyD9dHvLpH0Huwh7
 0chf6G9m1hDwDeXAn9vS2s4jyUw7c648YOaaq+GVdRrIVZ0nZyQQflC13lKt58rILz7I
 /R4NNBLvouI6fSS0DVflVUiYgdBbmEk517cRYiq+acNX9e3nLq8Xq3+5XP4zLh8/Kada
 hj1CiaqneKtdlEbKwyXRdCjfiFlSEybat4kvhQKmQTf62KzqRLTsv7BtZzBPktfY8hWg
 BpinsX+F/7sUe97sIGHtwRadnDB65GJPmiSa+ZnYswTTsk1GuYXlVfgvvQMc1LR2pX8y
 FxjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kBYoGW6pslzpDWF+e4NaY7GXTypsHdcIulpf1km4Z08=;
 b=MzSXteaaJICJT4LtvdBQkYf6puC1AyrNdiordBqdkjln1mYWpYWjly986ZeLetV2Wj
 DMhkNcNufWLdwWt8zCd7WXnEcXf1Yz/1jFhS/MCtj2kDk2wZeYklfGB82c1P4eI9i0r0
 agQEhGhH4ExwaT+QWAnaQKQQQi1ssmHbLC0u4X0gDdRnCFysjsu4uEVc5M5thexThiua
 3GL+G2satjgvWtj+UtJAm2r2t+kdg/HOWjNqjbXbYwboQ3S5EfJ7x0fVpJB7Egw9RoRG
 4nze0IS7rq2QUCjUX6Nw7NUeafSdCfY9oWEsFMKhpb8fJsZ/NybZDJ1crLVQAI5J4k2x
 TDkA==
X-Gm-Message-State: APjAAAUvkyGSwu/+3yN8mwfKaxCkZuzqGiWxDW5v9ZEFZ3jz3zSPolFs
 iWU1GV2/n+oaEujB6r7KOjbLWJ8lfkskMrpARFXYtQ==
X-Google-Smtp-Source: APXvYqy7/OGRq/YShQ3QVFQiadGctIcoLXl6MaICG/3+wS54kuULTu2WiucVQ75Pfzbe/yte8Z+TfrHvR7m4lBc8odY=
X-Received: by 2002:a17:90a:80cc:: with SMTP id
 k12mr14633384pjw.58.1574371531606; 
 Thu, 21 Nov 2019 13:25:31 -0800 (PST)
MIME-Version: 1.0
References: <cover.1574253964.git.marcgonzalez@google.com>
 <b4b5b1c7ec61a25fb3ca3c90687dc80db8a21e90.1574253964.git.marcgonzalez@google.com>
 <20191120185047.GE5604@kadam>
In-Reply-To: <20191120185047.GE5604@kadam>
From: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
Date: Thu, 21 Nov 2019 16:25:20 -0500
Message-ID: <CAKvFj6q8wrnmWBqnw8btYwoFzF4dkL2+L2EzBytR+PiVu5sFxQ@mail.gmail.com>
Subject: Re: [PATCH 3/3] staging: vchiq: Have vchiq_dump_* functions return an
 error code
To: Dan Carpenter <dan.carpenter@oracle.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_132532_627345_12621AC3 
X-CRM114-Status: GOOD (  12.62  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
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

On Wed, Nov 20, 2019 at 1:51 PM Dan Carpenter <dan.carpenter@oracle.com> wrote:
>
> Thanks for the patch.  Looks good.
>
> Reviewed-by: Dan Carpenter <dan.carpenter@oracle.com>

Appreciate the review!

-Marcelo
>
> On Wed, Nov 20, 2019 at 10:36:48AM -0500, Marcelo Diop-Gonzalez wrote:
> >       copy_bytes = min_t(int, len, context->space - context->actual);
> >       if (copy_bytes == 0)
> > -             return;
> > +             return 0;
> >       if (copy_to_user(context->buf + context->actual, str,
> >                        copy_bytes))
> > -             context->actual = -EFAULT;
>                 ^^^^^^^^^^^^^^^^^^^^^^^^^
>
> > +             return -EFAULT;
> >       context->actual += copy_bytes;
>         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
>
> In the original code we saved the error code to context->actual, then
> we added some bytes
>
> >       len -= copy_bytes;
> >
> > @@ -2109,8 +2108,9 @@ vchiq_dump(void *dump_context, const char *str, int len)
> >
> >               if (copy_to_user(context->buf + context->actual - 1,
>                                  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
> and then we tried to use the result to corrupt the user space program.
> So this patch is a nice bug fix.
>
> >                                &cr, 1))
> > -                     context->actual = -EFAULT;
> > +                     return -EFAULT;
> >       }
> > +     return 0;
> >  }
>
> regards,
> dan carpenter

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
