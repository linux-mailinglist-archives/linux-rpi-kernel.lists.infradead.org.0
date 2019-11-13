Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65CDAFB942
	for <lists+linux-rpi-kernel@lfdr.de>; Wed, 13 Nov 2019 20:58:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wbWJZE+cJjfpYD1fbr/oMi8ukv67c0z0arcS4AQ5vFs=; b=fL2JcS4G5amAsb
	K3gcStp5ZVJuV6/wKu3AN74ujVwxvzbI3sontCwkN/oY/6boE32ih6gOgO5AhU5u3NCiifF9t7HyA
	ss56a0xiGdVISIvIEBNrmnxztLmG+Yc/7z48vTAv3iyMOX+FOOBafB5t92ZOdyCDQu3UGKYw61wZV
	8g5rFTjWk+tEZp8gohvtB5qhLlMJl4G4QItW3XllKEdPag2G/9SaMX/rUX5YsoiooaxouFVHwqSFh
	GMeqwWnBARSE85CSPQq7B8kQTJdsOYV5/midrgec9Vhivs9EWk3KiDSj/rvclXRviWis2fKktw8V9
	jCSNBEpeYvfEt7f3cpiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUyn3-0001Fi-Jz; Wed, 13 Nov 2019 19:58:57 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUyn0-0001FM-Ih
 for linux-rpi-kernel@lists.infradead.org; Wed, 13 Nov 2019 19:58:56 +0000
Received: by mail-pg1-x543.google.com with SMTP id f19so2007787pgk.11
 for <linux-rpi-kernel@lists.infradead.org>;
 Wed, 13 Nov 2019 11:58:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yp3ARRkd5NkfCUczUVHgCJVk6/3Lv+lXQIjelXAeacM=;
 b=umCiXgUUYqyuuevl6Daiu5KEHQ4A71UiZ0CgXmD3OYHkYoUS+2t2Zdvk9SA4ZZkwLN
 N0ZIMgNBw5CkpYeSHFfWmCX4HuS/BqHcKCgGp6dOqfq4htH7bHiLowNzr8fwDJLQDAuo
 4CIvFXTxcQJRQK3eieTZGp49ldKmsc256IQYGti+ETw5IvLOwvLZX96k3jj27mV7AarV
 qS+MsmweeiweESYU9TizH/ci6uK4VYXf2sOWF3BE/oRZOtRbE+H55Bxjt5b4s43i0yxl
 nsSDDH67R1j7fru2ieB2GPefiP4JbzI6XkJQssUeh5smyV//qhwMhtXiyptWqgO0ejDm
 NN5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yp3ARRkd5NkfCUczUVHgCJVk6/3Lv+lXQIjelXAeacM=;
 b=pHwf3LZzyd4A5QrO7eZkd/HXnNZ4gN3QrJaxtxEUgM8uI1qjenVBvCeVMm9YQni+YV
 mGjOxQSbWxLcL+TqJVBTsL1B31ljDIVd6VktDq2cAH6P6/dG5EzwzwGo0eDQQbTMD3vF
 KfjsAqFBwdG+dRT+x/5ZwbtQ5AMrLfdW/Ixs5OEEUbLUYJkH+hUjQHmYaY+XSBTKBrN/
 /2VtRL4WtsL4pHnoxeq9O/xBeS47h13oopnhz+xLMvs2oCgQIxMNTQBlwVRq5TLSDKy9
 /TYu7r8Q9NLoQbFa8vvkt3NmNPVvU/ssH3DD8/JVOP51Q0MdopoE7KYIsTlrc9bmMfOI
 vUVQ==
X-Gm-Message-State: APjAAAXU9OgO1lGJB/0xu0in7f1/wvjM1r4MisIuxQZ4CepeojVOBy2J
 1Pqki1kbC00RX6rtUmSl8x9ZDjIqdMgwzySVNxymjw==
X-Google-Smtp-Source: APXvYqyiJ2mVpqjdzhbFpzJOUEDdcjtxqAQpYO1kj8TRk8vgTtvR+8Yme002/CjhtaG+ITpzVvAmmDwXJWkj6W2HWxw=
X-Received: by 2002:a63:4a01:: with SMTP id x1mr5703425pga.312.1573675133351; 
 Wed, 13 Nov 2019 11:58:53 -0800 (PST)
MIME-Version: 1.0
References: <cover.1573482698.git.marcgonzalez@google.com>
 <6054322775b30a90c1fed28a085e5fd578ed70fa.1573482698.git.marcgonzalez@google.com>
 <20191113181742.GB3284@kadam>
In-Reply-To: <20191113181742.GB3284@kadam>
From: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
Date: Wed, 13 Nov 2019 14:58:42 -0500
Message-ID: <CAKvFj6pXPpjDviVijj-ChhwLJv5WdiXz66R9yp1ohWkgd=M8xA@mail.gmail.com>
Subject: Re: [PATCH 1/2] staging: vchiq: Move retrieval of rpi_firmware to
 vchiq_platform_init()
To: Dan Carpenter <dan.carpenter@oracle.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_115854_642315_5FDC00FE 
X-CRM114-Status: UNSURE (   9.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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

On Wed, Nov 13, 2019 at 1:19 PM Dan Carpenter <dan.carpenter@oracle.com> wrote:
>
> On Mon, Nov 11, 2019 at 12:14:23PM -0500, Marcelo Diop-Gonzalez wrote:
> > This allows the removal of the struct rpi_firmware* member
> > from struct vchiq_drvdata.
> >
>
> Please don't start your commit message in the middle of a sentence.
>
> It looks like this:
> https://marc.info/?l=linux-driver-devel&m=157349280800959&w=2

Whoops. Thanks for the pointer.

>
>
> > Signed-off-by: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
>
> regards,
> dan carpenter

-Marcelo

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
