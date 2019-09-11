Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A90DAFF77
	for <lists+linux-rpi-kernel@lfdr.de>; Wed, 11 Sep 2019 17:03:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wZzcpZfQ8JcC1YIyRssdN+HIOFmA0nC4fo+XKaWIUP8=; b=T13hguQDi6r4pE
	kkG7nukoIWK7gOzKc8SXNjDO5A3Scn7jF+sLMxHQNq0BAsRr6n6RjFWvvPZL9Eiiwx+itCuw0Xr61
	hepjRowv4LLmK7PXYXRmYmxAh9myTZmsP6f7kIu2QdQIz6m3fzx3X4Fhn5b7RKJdgtLwc0KiPutTZ
	1azw5x57c7zpLA2UnYk9AcBDOb4Tdb545+FrznAqgREQ5jf5cTXLDi+oqSxeNeBwPhposNbPenSQX
	aIMx36E/IsTy6T+mq33hD/gYGcKVgfTyROp4gh5vKL8kE7h1YfSSTFdEJrux0ccYaMdN/KvEIPODW
	uqXKAEyVEEBYCWson8ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i849I-00042N-2O; Wed, 11 Sep 2019 15:03:12 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i849D-000408-5T
 for linux-rpi-kernel@lists.infradead.org; Wed, 11 Sep 2019 15:03:08 +0000
Received: by mail-pl1-x642.google.com with SMTP id k1so10260404pls.11
 for <linux-rpi-kernel@lists.infradead.org>;
 Wed, 11 Sep 2019 08:03:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=d5/f69PU6WyAFI1qX9x9zilSuMPIBTYp7Aohz5P1zyE=;
 b=gG9oG4X6t6Mz6yTDo04xFkWf20EXHrv09t20/LH+aSTzrh2RTw+QSzwYppTHh/+iGr
 Xy3YKvNKV7lEtA8kVH00D0UqYTRP3q7UXUqGKtAqbp5+V+Ol5vglGzAkD6SdPRg6TEz8
 fAvO6N4Pz98rdBLVIlE63Pp79dtfoIMtgibcRylcAIO4eYNTWqxjWNwjzdmqYIue3w5H
 xXSQmYDJ3eRrJLWtftS6E2cn2mkOoNkJgam+8KNmTWWFY2RK+wekb8zPTnID9S69M3u9
 m9o8lhy3T9RKfd2gbUZ6R9z2h7AM8nABVyGJ/4AlWeGVG7pcjaxJgQ3YrEwRTy8f0gbj
 2Gvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=d5/f69PU6WyAFI1qX9x9zilSuMPIBTYp7Aohz5P1zyE=;
 b=WbxDtIM8s0pbiWaVXQcWqlkCERC9RAmlVGQ1Xk+5BRN/EA22yRjFpvZ9AIu5wnMC+m
 7fKVzF610ibYVpEX5PEfUjXK5j6XQ0Cr8oJ7m8oEGdliypx2MYh8k3LD5mWhrLCB7QWK
 PAIv6atfWv5v/uYQdkk0fuQGcllu/z37Boe1BQ4YF3eE8d8JAse0EDhDA3hEQfOkF53y
 uBD+Mt91eu1Qr+xfJTnufeupKXIVJBDoh8zfHOq6uFqx5dY5M9EPe6Pi1eSk5EqjB66O
 lKd1TygwsL0Rxw6asE0no6od2Uf7Nb8HNZ9tAZKmEN6lu1lNI251V9RTBR296Eum2jEW
 /B1w==
X-Gm-Message-State: APjAAAWkivf7wjO3HzNyKiFw9nlIpGaxjUx+pTeTtnk1T4B3WgmZ597v
 kjWnyBxRDOfZCh6clyfHK2c=
X-Google-Smtp-Source: APXvYqwAK3KLPcDsX3lbhfke/SAhZz2AVDZWn4jmFCZs0QExQGndexzB+79XY51SCLMPaunSN7zKbA==
X-Received: by 2002:a17:902:9d90:: with SMTP id
 c16mr26190254plq.12.1568214185878; 
 Wed, 11 Sep 2019 08:03:05 -0700 (PDT)
Received: from SARKAR ([1.186.0.68])
 by smtp.gmail.com with ESMTPSA id v10sm2771364pjk.23.2019.09.11.08.03.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Sep 2019 08:03:05 -0700 (PDT)
Date: Wed, 11 Sep 2019 20:33:00 +0530
From: Rohit Sarkar <rohitsarkar5398@gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH] staging: vhciq_core: replace snprintf with scnprintf
Message-ID: <20190911150300.GA12027@SARKAR>
References: <20190911135112.GA5569@SARKAR>
 <7bf3c74d-e690-1ef1-dd74-ac98667e42ef@i2se.com>
 <20190911142543.GA9873@SARKAR> <20190911144312.GL15977@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190911144312.GL15977@kadam>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_080307_209097_037148DE 
X-CRM114-Status: GOOD (  17.76  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rohitsarkar5398[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (rohitsarkar5398[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kernel-janitors@vger.kernel.org,
 Tobias =?iso-8859-1?Q?B=FCttner?= <tobias.buettner@fau.de>,
 Dominic Braun <inf.braun@fau.de>, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 11, 2019 at 05:46:12PM +0300, Dan Carpenter wrote:
> On Wed, Sep 11, 2019 at 07:55:43PM +0530, Rohit Sarkar wrote:
> > On Wed, Sep 11, 2019 at 04:17:25PM +0200, Stefan Wahren wrote:
> > > Hi Rohit,
> > > 
> > > On 11.09.19 15:51, Rohit Sarkar wrote:
> > > > When the number of bytes to be printed exceeds the limit snprintf
> > > > returns the number of bytes that would have been printed (if there was
> > > > no truncation). This might cause issues, hence use scnprintf which
> > > > returns the actual number of bytes printed to buffer always
> > > >
> > > > Signed-off-by: Rohit Sarkar <rohitsarkar5398@gmail.com>
> > > thanks for your patch. Did you test your change on the Raspberry Pi?
> > 
> > Hey Stefan,
> > No I haven't done so as I thought this is a generic change?
> > Will that be necessary?
> 
> No.  It's not required.  The patch is easy to audit and clearly
> harmless.
> 
> The question would be does it actually fix a bug?  I looked at it and
> some of the strings are definitely a bit long.  The longest one I saw
> was:
> 	"  Slots: %d available (%d data), %d recyclable, %d stalls (%d data)",
> 	123456789 123456789 123456789 123456789 123456789 123456789 123456789
> 
> If you get a lot of stalls, then that looks like it could lead to a
> read overflow (an information leak).  Either way this does make the
> code a bit easier to audit so it seems like a nice cleanup.  Next time
> though, I really would prefer if you put this sort analysis in your
> commit message so I can just glance over it.  (I'm lazy).
> 
> Reviewed-by: Dan Carpenter <dan.carpenter@oracle.com>
> 
> regards,
> dan carpenter

Hey Dan,
Thanks for reviewing this :)
I will make sure to add some analysis the next time I do a clean up like
this.

There are a lot of usages of "snprintf" throughout the staging
directory (315 to be exact)
Would it be worthwhile to find ones that may cause an information leak
and replace them with "scnprintf"?
Thanks,
Rohit

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
