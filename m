Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54C231D1207
	for <lists+linux-rpi-kernel@lfdr.de>; Wed, 13 May 2020 13:58:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eTyluXkV+ppvBsNx68u/ghxhA0hOh72ndUiaVfn6iEA=; b=Y52lt4qNJ22vZ9
	dq9QO5fSjTkNOzpYEJ+mmf39IX/tiRT5g832toSWl1ZNs9Xxch9rXOpY38wNHAmg02O6oZP7r59lY
	RCQldIlCLCTzBQJKIQqDoXjgu5NPm2iikb/cCfiNwQbyXmBcBi3QAXyPH0ndNy15zYH78qnsTtTv4
	AOXqsHWnMkrnRvJvypODdbkilzF/u8dEVzwPz9cPJAxH2FdZDCsxMP7KXP0qiM8aJ8QmcSam56y3L
	T7fyKJAnIIi+EOsRNTXFdxJ+Nt2nLPNtGHKLkqmr9iKk/lv8F5YX259wmFZePHmJtRg6lWPicfnjA
	TvEwZyeVtDlMwn+rJpYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYq20-0003QB-VH; Wed, 13 May 2020 11:58:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYq1r-0003Hc-93; Wed, 13 May 2020 11:58:28 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8996620740;
 Wed, 13 May 2020 11:58:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589371106;
 bh=AzQ1GBsA7vb+t+sUqdhpDj5pFQccxwb/vacxaCIKKwM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=veu54zijFTH9tV9hdep4oqmKRxlo+9/yg1yax/JmUfYmhty8mC9xQt4bNL0BuSlFC
 orkh9kp754J4DzatlKprBvYa+aUOjx7weYxvCNttblmgA0qv7E6YOp5j+PDrfKDu+p
 jhNi0N0h1hXgNDBNneUKt7u1RMSETOfVkcToZ7HI=
Date: Wed, 13 May 2020 13:58:23 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: John Oldman <john.oldman@polehill.co.uk>
Subject: Re: [PATCH V3] staging: vc04_services: vchiq_connected.c: Block
 comment alignment
Message-ID: <20200513115823.GC953616@kroah.com>
References: <20200510101308.10451-1-john.oldman@polehill.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200510101308.10451-1-john.oldman@polehill.co.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_045827_338731_8C52375A 
X-CRM114-Status: GOOD (  14.76  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

On Sun, May 10, 2020 at 11:13:08AM +0100, John Oldman wrote:
> Coding style issue
> This patch clears the checkpatch.pl "Block comments should align the * on each line" warning.
> 
> Signed-off-by: John Oldman <john.oldman@polehill.co.uk>
> ---
> v1: Initial attempt.
> v2: Resubmitted with shorter comment line, as suggested by Greg KH.
> v3: Resubmitted with descriptiuon text moved into the comment area.
> 
>  .../interface/vchiq_arm/vchiq_connected.c     | 32 +++++++++----------
>  1 file changed, 16 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_connected.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_connected.c
> index 1640906e3929..993535bbc479 100644
> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_connected.c
> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_connected.c
> @@ -15,10 +15,10 @@ static   int                        g_once_init;
>  static   struct mutex               g_connected_mutex;
>  
>  /****************************************************************************
> -*
> -* Function to initialize our lock.
> -*
> -***************************************************************************/
> + *
> + * Function to initialize our lock.
> + *
> + ***************************************************************************/
>  
>  static void connected_init(void)

Shouldn't that really be written as:

/* Function to initialize our lock */
static void connect_init(void);


No need for the /****** mess, and no need for the blank line.

Simple and clean is best.

thanks,

greg k-h

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
