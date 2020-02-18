Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B9AB1628C5
	for <lists+linux-rpi-kernel@lfdr.de>; Tue, 18 Feb 2020 15:45:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BqULnwlZKjbddlTgutvqzSDNBkqq/cSa1YlWWDKZ95Y=; b=ijOzG6QJbzQleA
	oHsFWR60Uu7OyQOeudLwvNg4ncadEFaVEKingGSeJpoIL/KoW+MZw1+40i3PglISTNdgNrfR5P6lr
	SiRDgMb/V7uqYUX6WFkKO7fNgyt55mqHvvjmc1RKzuY5tz/Yc+ug3jjzOyFkRWRQeBdEQedDa+CQY
	YicHAbpoXhhKRMBDUY8+7EIcstn0dXEDwr/yRhwBkPffjjCxAa8184d6j/lfGmshIfXk7aqfGyNim
	T9qj/8p1ZeZiveVzApoJG3NhDJgvGGrmEbQg5H4dlyViNL0F4OpD0ChgFyOUy04XBXCF0mu/rkfxG
	SW4PbA6Fo0d3kjk6DzqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j447Y-0002lK-S2; Tue, 18 Feb 2020 14:45:08 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j447V-0001ma-9U
 for linux-rpi-kernel@lists.infradead.org; Tue, 18 Feb 2020 14:45:06 +0000
Received: by mail-pl1-x641.google.com with SMTP id p11so8147958plq.10
 for <linux-rpi-kernel@lists.infradead.org>;
 Tue, 18 Feb 2020 06:45:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=y5uEoI57XOY6ZRdfdmdltCBU7PJAcGzi/Ern4gPqGrc=;
 b=UZvmgDrJe0khw8I7qihSDZldaXst0pVyvFGyQDvj2ibNt+djsNFBj96T1WAdA1/tEH
 FV9lbtw/bJdR63FQESVDt4goDdXQpr9egBgC7qrWlpIKofTGk/Z2xl4NmjWOAmaBzftH
 hZZoweM2nHZL3Qgtlef5MXDp4kcyuVtPy5OGn1PrkiJcbVTSmAHWNPnSB3bPGEX/RNZh
 +Q6c11HfNlKj1Ji6uF8c4eYg1kJGR9Wsk+AtaBHMOtEKM3mpbYVU0S263Zyjj4CixKJR
 9nWRINJ4zMZY+ORoj40pBb0Xngjm4ipo9htr7/IAlHREln43YOzGSiShHWSehjZsW37N
 ogdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=y5uEoI57XOY6ZRdfdmdltCBU7PJAcGzi/Ern4gPqGrc=;
 b=jIsX48RAkTfCEIHoB6u8wCOQir6eb1KyDYyFUaZi4FHGuTY1DqQVbr8pa8nBH0BJ8Q
 7WPcUrpzjhsOu5NLJ6jf1UnDljYDx+3wu8F/9Epd4c3hCubgYYIjCmQ02MgPNZ507P0z
 YHEyks296ACGcHLvDywBZvRGKd3+Do1qNBYyLS1tAyPWybvTVy0Try5Ad+CI5GYX6WGj
 E362oxMg7VlOy8uHFVOAO4hUMjKyaeutPAA5BPhsxFv6cMZm/+/6qU69kesPLXUTnv0q
 8lQ8aOVLRlcwtm1YlBKVFib64v43AU2jv9xNHhhJGtsP76PXtyWkKnwO02YtLMFNhuqw
 jqwg==
X-Gm-Message-State: APjAAAWii7ncxUbykIQCgrq1ZQUgBCAxLRirzgpjR8/uM0bXoZcXcqxq
 +aT2pSfWsbATFYhgMmu5OUSUunQ68glti9J9YegMYQ==
X-Google-Smtp-Source: APXvYqygnlPizIzAAMEZBSBc/0hMvzI2r85xzViLHN/96GfQQJgqId/A4IgG4FhIEwxEM6shdIVGPzJP4hZlWwOLf0Q=
X-Received: by 2002:a17:90a:8806:: with SMTP id
 s6mr2869351pjn.141.1582037100972; 
 Tue, 18 Feb 2020 06:45:00 -0800 (PST)
MIME-Version: 1.0
References: <20200213194001.130110-1-marcgonzalez@google.com>
 <20200217104026.GB19641@kadam>
In-Reply-To: <20200217104026.GB19641@kadam>
From: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
Date: Tue, 18 Feb 2020 09:44:50 -0500
Message-ID: <CAKvFj6qRtmU8tBbUY2i71dXJwTTQqA0NLT4nsje0E=dBP5p4cQ@mail.gmail.com>
Subject: Re: [PATCH] staging: vc04_services: Fix wrong early return in
 next_service_by_instance()
To: Dan Carpenter <dan.carpenter@oracle.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_064505_372872_F01EF161 
X-CRM114-Status: GOOD (  10.29  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Mon, Feb 17, 2020 at 5:40 AM Dan Carpenter <dan.carpenter@oracle.com> wrote:
>
> On Thu, Feb 13, 2020 at 02:40:01PM -0500, Marcelo Diop-Gonzalez wrote:
> > If kref_get_unless_zero() fails, we should keep looking for the
> > next service, since the callers of this function expect that a NULL
> > return value means there are no more.
> >
> > Signed-off-by: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
> > ---
>
> Please use a Fixes tag.
>
> Fixes: a2203cfe0d84 ("staging: vc04_services: don't increment service refcount when it's not needed")

Ah yeah, forgot about that!

>
> That way we know it doesn't need to be backported.
>
> regards,
> dan carpenter
>

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
