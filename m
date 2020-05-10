Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 279931CC976
	for <lists+linux-rpi-kernel@lfdr.de>; Sun, 10 May 2020 10:35:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7ZStEU0Dvta1K1lEI2V/nD1cldjFLx1hbcVxAg16pbk=; b=JYeOpjHvAKmx5T
	0tOmAVFoRbHs2kh0P++Po6837uYOyrPOee9wWZzkZFsAsylplsl+OmeBQik/VUbE2Hna6sfCCNLiB
	5me7gca+dK/d4XR6Yd4F/6ivrASEIFN6ztGaN2ysD4nlUwVocWRkoF992ut7Tp7KDBSBr4aLhW8Ue
	1wUzr85i1logd0H3YHm/+9NHiJI9aLieAl4wnmQhGDZqfX1TjNmDfOVkSStd3SxTztDvs3MXbYtO3
	5OzN9S2Yz6Kmwm3JxNLSuWuZHfvIdfXL7ciQuy3vkPIiLVkt9COf2o6maaXI5FvXXXlcbsly47FpZ
	gEuiKZsTmZU5KCYrZugQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXhR6-0000YY-8w; Sun, 10 May 2020 08:35:48 +0000
Received: from mail-wr1-f68.google.com ([209.85.221.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXhQw-0000NS-34
 for linux-rpi-kernel@lists.infradead.org; Sun, 10 May 2020 08:35:39 +0000
Received: by mail-wr1-f68.google.com with SMTP id s8so6922427wrt.9
 for <linux-rpi-kernel@lists.infradead.org>;
 Sun, 10 May 2020 01:35:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hFhG+vZs/X4tuUT4PqnSohgKP+CFxzcIDKpFvhiq2Dg=;
 b=DxsaQ9m9qLDBOLCCjA/atILo+jNL7vuvGlhMg7wJhZX00iaLXFzDbfzkT++mXmQfFc
 xHfQ3gHpFds0tYq8tNGvOcMB06jrJTqsc3Du7mpCnZhUhJSopk9gu9BTB0j/lxn2zuen
 ZEL2fgLjcU0Gyv3FvKEaH2ZBdv4Rbyl0RxRdp3XrIfezY7AsoUY5cyNy3F/LRJVIN6R6
 nypVNDW+8DT/dX4K1HpQv82Kh49ESIA+aHFT/bgFnTfXGey4OKHWVb7ClIhKK5S2JG5n
 JUc1HsgxSGbSNR/WkTedvloNt2aYcYwJBH7x3e6q77i0KAscskTOxUoWIWw3ZgPDVZXe
 Uesw==
X-Gm-Message-State: AGi0PuZSBBwCK1wvlWwYb3xijHaWrTZ+XAVqGTofc3UPCDonqLqbwFYy
 rVTi3GFmDU+uthHHbj80H4KShIFQRnB9qQUVx99j
X-Google-Smtp-Source: APiQypL1p9BdfOAzzmp+n/a/4JAtl4MGpsbsogjDDiDXwhFnWp8k7Ijt9lWhxol8IIu94KfrvisAcXf3IBpj799R/N8=
X-Received: by 2002:adf:ec85:: with SMTP id z5mr1666465wrn.153.1589099727564; 
 Sun, 10 May 2020 01:35:27 -0700 (PDT)
MIME-Version: 1.0
References: <20200510060645.10159-1-john.oldman@polehill.co.uk>
 <20200510065519.GB3434442@kroah.com>
In-Reply-To: <20200510065519.GB3434442@kroah.com>
From: John Oldman <john.oldman@polehill.co.uk>
Date: Sun, 10 May 2020 09:35:14 +0100
Message-ID: <CA+JojbpnUxiONfG7tXdd8nt=uKLtnv65EtFeEAa0UKMkcQi6XA@mail.gmail.com>
Subject: Re: [PATCH V2] staging: vc04_services: vchiq_connected.c: Block
 comment alignment
To: Greg KH <gregkh@linuxfoundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200510_013538_131365_99520F52 
X-CRM114-Status: GOOD (  10.32  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.68 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.68 listed in list.dnswl.org]
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

Thanks for the feedback Greg.
Will resubmit the patch as you suggest.
Thanks
john

On Sun, 10 May 2020 at 07:55, Greg KH <gregkh@linuxfoundation.org> wrote:
>
> On Sun, May 10, 2020 at 07:06:45AM +0100, John Oldman wrote:
> > Coding style issue
> >
> > Signed-off-by: John Oldman <john.oldman@polehill.co.uk>
> > ---
> > v1: Initial attempt.
> > V2: Resubmitted with shorter comment line, as suggested by Greg KH.
> >
> > This patch clears the checkpatch.pl "Block comments should align the * on each line" warning.
>
> Why is this text not in the changelog area?  Don't you think that it is
> better than the 3 words you currently put there?
>
> Please fix up and resend.
>
> thanks,
>
> greg k-h

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
