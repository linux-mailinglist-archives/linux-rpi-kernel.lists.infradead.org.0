Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B41AECFD54
	for <lists+linux-rpi-kernel@lfdr.de>; Tue,  8 Oct 2019 17:15:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i1dpo8xGoHFBfhIbb+k6WVFpHsEG97l32lJ6O6ougjM=; b=lfEqn4ndWCHz/P
	jzjTPTmjutDogJdrXdSXtiYHs9i2NfOkHwA+zmpV4NbYdMFWhsqWOL7BTFHR5Lvv51ARk7p4461o1
	YtoMcHbzX8UzbSgnxmr94Gcl8wca2g5wiZHjX5ZByZbQoKueqsdAAvPDIZDeDXwrr8EXpIpVLj1Bx
	Qn7ngqXeOmX/wTsS+5K9Ej1Yo5zovUIxKebPH9JSMkB+6RzetNJ0R/DUiz4/KRFHx8F7CtJHNgcqp
	cN9rzsT3kXhmIpj5yzgfo65mitnxWdBBgJQDWh2fj7YIBktaGNzDpA1btj/VKUnPQkVRiTIuJ3dHT
	Cy6asVssDNDfaPhaIQBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHrDQ-0006Io-Cs; Tue, 08 Oct 2019 15:15:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHrDN-0006Hr-MY
 for linux-rpi-kernel@lists.infradead.org; Tue, 08 Oct 2019 15:15:54 +0000
Received: from localhost (unknown [89.205.136.99])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E17ED20679;
 Tue,  8 Oct 2019 15:15:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570547751;
 bh=14pGX9PvbF+akybdQEtzMfsaYMZBPxv3t73fc4rSR1c=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=dD0f4/Z5w+0yDxR21yp+DBWrDToCk0WdffreftjEXgmXWBmbOGKpMREZAX8+0CUC5
 v2DPKAbAyvHTJyNq4Kw8+v/wgKwA8I5FELERJD97xvmb4FEYc2TvWQHc2zquFVl923
 G5CZH3Bgwdd2iA2v4L7suNTZzttz8DbGtJ90luLc=
Date: Tue, 8 Oct 2019 17:15:47 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH] staging: vchiq: don't leak kernel address
Message-ID: <20191008151547.GA2864822@kroah.com>
References: <20191008123346.3931-1-mcroce@redhat.com>
 <20191008131518.GH25098@kadam>
 <CAGnkfhxefH+3YKDWQMCOYoj1skcq6rUmHuiHZQ-76YixFqbQjg@mail.gmail.com>
 <20191008142517.GO21515@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191008142517.GO21515@kadam>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_081553_755932_7723DCC5 
X-CRM114-Status: GOOD (  10.96  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devel@driverdev.osuosl.org, LKML <linux-kernel@vger.kernel.org>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Matteo Croce <mcroce@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 08, 2019 at 05:25:17PM +0300, Dan Carpenter wrote:
> On Tue, Oct 08, 2019 at 04:21:54PM +0200, Matteo Croce wrote:
> > On Tue, Oct 8, 2019 at 3:16 PM Dan Carpenter <dan.carpenter@oracle.com> wrote:
> > >
> > > The subject doesn't match the patch.  It should just be "remove useless
> > > printk".
> > >
> > > regards,
> > > dan carpenter
> > >
> > 
> > Well, it avoids leaking an address by removing an useless printk.
> > It seems that GKH already picked the patch in his staging tree, but
> > I'm fine with both subjects, really,
> 
> The address wasn't leaked because it was already %pK.  The subject
> says there is an info leak security problem, when the opposite is true.

I've edited the subject line now.

thanks,

greg k-h

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
