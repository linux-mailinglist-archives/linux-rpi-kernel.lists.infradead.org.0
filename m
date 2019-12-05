Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C58F2114566
	for <lists+linux-rpi-kernel@lfdr.de>; Thu,  5 Dec 2019 18:09:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ToFk2kE1zxdSp8XayV2rQvAaQA9rbsyBpadulCOuBS4=; b=XL2O6qt0KxlDfT
	3WjhXf6QbVs/94NkT5HwnR3W/2WXU1sc8pHFB5WzxqYRa4/Bv5x1dZVCCztFtxTT89Vq7bIagdHkB
	JPj+nBa8JokD6RQ1jnrV3GRvxyHupmGPdl4sl21vNOGI/lRFFc02swsbIZA25ENnqB2BVi13//hxv
	5osYPhIUjrniFaI+Gn/qKiA8IjWSnnVH7S5FIKKPZN8Pb95oOugFCdOIl6PnMGRggO19TK9R7W3Uc
	K44tVS8lONNwMcOA93wLXiFgrAhORT/iCUmMcAGsSPnMA4G7D4zLJyt8PoGza1wAinFm8jfZlE0sm
	sTNS0Vrv6eFjQkhYdaCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icucU-0006lm-Gj; Thu, 05 Dec 2019 17:08:50 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icucR-0006lF-Na
 for linux-rpi-kernel@lists.infradead.org; Thu, 05 Dec 2019 17:08:49 +0000
Received: by mail-pg1-x541.google.com with SMTP id 6so1897256pgk.0
 for <linux-rpi-kernel@lists.infradead.org>;
 Thu, 05 Dec 2019 09:08:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=k/rXekQHS5OmcamXJRlcX1nMr/U/pWRS/JvOxVvicWg=;
 b=JiLHjMZatH1xXbOOdV5XH73w1wGgZ28z99UhA815C1L9UpGMWfl48+YMLpa7wA8bMb
 kuOnBIAW6fBhLJ7bIehmzZHBNogXe5FLojJHEsrn4umabCyI8ikMm4R71m0mSzRQcsSW
 3dK7iX9BvXCDPgEqwSRxeyLVV37F0GUyEVFzHzSHz0o6O5ZWse+0xjIlXDyQqHl5ak3a
 97VRVyg/HfwClFf/U3B9T6gRePGmOOB+dsa2xVkU278fDvbNTGKUFdQDlwsmDBccYE9p
 REYwgObNV9Vsgh+ZHvrShzf4AiHdHNaE4ST28DYIROdbrVKO/l1tDQDphzxugJ91bBtX
 +wkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=k/rXekQHS5OmcamXJRlcX1nMr/U/pWRS/JvOxVvicWg=;
 b=J4MWab8kCh6tk0ldCogU1nRlO+UiINOiDehTfk9Jb8j22OP04rSuWoY/RWG/WnognN
 O8UyBWT8rYEwqw3ID4BVHBHtzxhxuOu5bKsM+ipyPE4uNEQc0yhcnBK6P+7M0nBq9FVI
 RftDWI7bleVnihjHZopwuu7KTJT8//2OKMD11Ojhzr/UsUm8EUknyk1clLKtsGl9/0HD
 jHkSe7ycGGJQHF4c1rBX3uk2iCsJCKRCIeo+EDNENn3kSAvMnleeuZDH6lxjZuG33ECx
 TuMVJk0Ucp4HS1SAZOSP59H5+n1ky4hZbL6304mTSafJXYrLbdC0xnP79TmiHkQfeSG7
 vZzA==
X-Gm-Message-State: APjAAAXoNDoVr43JVrfQDxugSr1TqLfYr4lHB55QJUX6SCLMdqC4NI5h
 EKjiLdjRd4SBAM48qFli3GmwHCn5Zu5XRfJUAnY=
X-Google-Smtp-Source: APXvYqxvv/BN8PyOMboKgozg2AK7hqyxcNc6P3+27dfhnApzzlgXjYniZ2dwAF5v7eLLCcZ4CLTiwtrLmB3/B4ZNGnU=
X-Received: by 2002:a65:490e:: with SMTP id p14mr1542181pgs.4.1575565725246;
 Thu, 05 Dec 2019 09:08:45 -0800 (PST)
MIME-Version: 1.0
References: <db6a1e17-49a3-e3ed-7713-56b7763713d6@raspberrypi.org>
 <20191202134344.GE1998@sirena.org.uk>
 <1e0b7cd6-cf9e-2b68-f875-8015c8ffc326@raspberrypi.org>
 <20191203163521.GM1998@sirena.org.uk>
 <CACRpkdbqNw+h6MphF7kLAwym-F3G+ZebMDB2BMt0bzA6DfM0OA@mail.gmail.com>
In-Reply-To: <CACRpkdbqNw+h6MphF7kLAwym-F3G+ZebMDB2BMt0bzA6DfM0OA@mail.gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Thu, 5 Dec 2019 19:08:35 +0200
Message-ID: <CAHp75VdiTvXm0P5k75oupFck4sQoh--ZY=YvNMFop9k-gZTNZw@mail.gmail.com>
Subject: Re: Side effect of SPI GPIO descriptor usage
To: Linus Walleij <linus.walleij@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_090847_815321_48A0508D 
X-CRM114-Status: UNSURE (   9.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andy.shevchenko[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Brown <broonie@kernel.org>,
 linux-rpi-kernel <linux-rpi-kernel@lists.infradead.org>,
 linux-spi <linux-spi@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 4, 2019 at 4:47 PM Linus Walleij <linus.walleij@linaro.org> wrote:
> On Tue, Dec 3, 2019 at 5:35 PM Mark Brown <broonie@kernel.org> wrote:
> > On Mon, Dec 02, 2019 at 02:11:51PM +0000, Phil Elwell wrote:


> and I can find one more outlier:
>
> drivers/mmc/host/mmc_spi.c, function mmc_spi_initsequence()
>
> This very clearly want the inverse polarity of whatever was the default,
> but the code assumes that SPI_CS_HIGH implies that this is the
> actual physical level and forces it high, then low. I will send
> a patch for this: what they want to achieve is the inverse of
> whatever was configured.

Linus, hold on.
MMC SPI is abusing protocol, you can't fix it in logical way.
I recommend to read the protocol specification.

P.S. I would be glad to be wrong, though.

-- 
With Best Regards,
Andy Shevchenko

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
