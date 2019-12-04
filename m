Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C370112DB6
	for <lists+linux-rpi-kernel@lfdr.de>; Wed,  4 Dec 2019 15:47:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1phTjQ3gDFM3vwnEZuw/QBPXaDErUx3qejJ6Fom/6lc=; b=Hz11VcCitDmwSd
	WB27fKU7T6pyPBZKBh5JNBOptSZCYhzoN43sn0gDEhg1/+DGVHOaYVtUvIS0UpwgIZu+Q624oTSAu
	QKwMYNukpec3EclDx+qPZUcsgfTSUl75TrtVO8qYpLNVJXcWPPKigQErzZeJEp9skzniP2qdF11YD
	Xd3ty82Lx0+mn5eEIa65KOC6kkVtbkMNwUylt6DDBByTtPd1NgynHjSPXngwn2QLk+nq7fXKIrWhQ
	ORTQtpfJG1Rq7nCw3fdH9nt9cesdj23YmIVk/ArCNKBl9dMKTl33Zr8vl6i0/lWlXP47QQKs6/0b8
	Rh0SXgRo6gFKnqVRknzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icVvu-0004ip-Ju; Wed, 04 Dec 2019 14:47:14 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icVvq-0004i5-H6
 for linux-rpi-kernel@lists.infradead.org; Wed, 04 Dec 2019 14:47:12 +0000
Received: by mail-lj1-x242.google.com with SMTP id d20so8362783ljc.12
 for <linux-rpi-kernel@lists.infradead.org>;
 Wed, 04 Dec 2019 06:47:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dd6qtsyIVCGRGuNUcTToh40zKwEE5g2OPPazq4Ye+jI=;
 b=QW5Uv+xmXK7EKs1Hmc4gLmSIEGeVGQaX6SsgtRCJRLpXZO6wVv3HDNDIlJR4rAa0TW
 82CrvLBQDugHsGI0v6m/2bDoIrp/2evwczV9YCS7B6Mtmrn1YeO+NepDqwK7V4OyjREo
 5V4yD40wWg/GJkxV5ib63Anz4gEkNx+mIJzNemJ6aOnVy8VUiriZr7eJZDULQ+90W5R+
 m5J+ZTwjze0VcJ/+bX00pLJjD008mYxBT2q/GoK22c0KRoRYe+3IYIG1LHFeeawoVzJX
 d9n35JXolwdfdYG1nSIUpvTYR0spU9XGzh7wtbiMpjjcya2y4LR164HGbDKz2vYpfC1g
 ccKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dd6qtsyIVCGRGuNUcTToh40zKwEE5g2OPPazq4Ye+jI=;
 b=eDcySsamwOPAJkpQEXTkMrBuASDp+2FArjN1vM2KIgHz6u/8bI/7Dje3G8KSfXX0LZ
 HzQBGRsGZwcE8EVbcTl/7Tp6pNPIBoXxSSgZ8mmuY/NwyhAsj62vtO1FhqmzrMQlMrFO
 yjySNfGP5qNdUN5Yhgkaj7r7J70NpaYjcGmPRqMG5ek+GbkpqzLYrC1UP4KATp1/ZKHA
 eRBWdot3DxLFlUeczqUl7ox/wpVV8STlrXj+TylK06EmxVSBvqnX/x4DxqPBaYkDi1Zq
 kcntOAYkqUGc6vSktQ6h/SsCaHX35zLLYppeCdBbv3GXqTPe/rnmDP64b1mxkHo763Nn
 zdgw==
X-Gm-Message-State: APjAAAUl9HSvoUh61j0YjGNvCe6A6JCzAmu7uXkZhTCWn0UBoK+vifEa
 UBqFhNiuateOhuwX2gHTLOPeKpAi7hu03qMVPDo9lfV2ZKHwHQ==
X-Google-Smtp-Source: APXvYqyFDHM4spp1vtK8S3nBLuw8l0xIF7nvdqtjdaw5r0wgAjBn9x3MGzNL95Y/Zp3eNll4jqNkKnJAqendK3TWS7E=
X-Received: by 2002:a2e:9587:: with SMTP id w7mr2186691ljh.42.1575470828107;
 Wed, 04 Dec 2019 06:47:08 -0800 (PST)
MIME-Version: 1.0
References: <db6a1e17-49a3-e3ed-7713-56b7763713d6@raspberrypi.org>
 <20191202134344.GE1998@sirena.org.uk>
 <1e0b7cd6-cf9e-2b68-f875-8015c8ffc326@raspberrypi.org>
 <20191203163521.GM1998@sirena.org.uk>
In-Reply-To: <20191203163521.GM1998@sirena.org.uk>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 4 Dec 2019 15:46:56 +0100
Message-ID: <CACRpkdbqNw+h6MphF7kLAwym-F3G+ZebMDB2BMt0bzA6DfM0OA@mail.gmail.com>
Subject: Re: Side effect of SPI GPIO descriptor usage
To: Mark Brown <broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_064710_624154_139CB8AA 
X-CRM114-Status: GOOD (  20.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-rpi-kernel <linux-rpi-kernel@lists.infradead.org>,
 linux-spi <linux-spi@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 3, 2019 at 5:35 PM Mark Brown <broonie@kernel.org> wrote:
> On Mon, Dec 02, 2019 at 02:11:51PM +0000, Phil Elwell wrote:

> > Applications using spidev to implement user-space drivers need to be able to
> > set SPI mode, CS polarity etc. at run time. I agree that there
>
> I'm nervous of spidev user doing stuff like that with the chip
> selects, with DT even spidev devices should be registered
> normally, you will get a complaint if you register a raw spidev.
> There's no free pass for "oh, spidev can do anything we don't
> care" here - the DT should describe the hardware, if some of the
> hardware happens to be implemented by spidev then fine.

I agree with this. In 99 cases out of 100 it turns out that the
userspace driver is a substandard version of a driver that should
actually be in a place such as drivers/iio and what we end up
supporting is offended userspace driver authors who are acting
against the interests of the kernel community.

I have come to accept the usecase of userspace GPIO for things
like industrial automation one-offs, random hackerspace projects,
and prototypes all highly custom, and with such high friction with
kernel internals and pain to carry forward should be expected.

With devices on SPI and I2C I get really sceptic. What are those
hardware devices, and what makes them so fantastic that they
cannot use a kernel driver like everyone else?

> That said we do have other in kernel users that do change modes
> at runtime, though I'm not convinced many of them have GPIO chip
> selects.  Linus?

I looked it over and most are devices like board files and RTC
clocks that enforce SPI_CS_HIGH. They seem to be native
chip selects so it will work as expected but I will look it over so
I haven't broken any of them.

and I can find one more outlier:

drivers/mmc/host/mmc_spi.c, function mmc_spi_initsequence()

This very clearly want the inverse polarity of whatever was the default,
but the code assumes that SPI_CS_HIGH implies that this is the
actual physical level and forces it high, then low. I will send
a patch for this: what they want to achieve is the inverse of
whatever was configured.

The driver drivers/net/wireless/ti/wlcore/spi.c does exactly
this already.

I am a bit sorry about the semantics of "HIGH" here when the right
word should rather be "asserted": it's named like this for historical
reasons.

An alternative would be to let SPI use gpiod_set_raw_value()
to steamroll all the inversion semantics in the GPIO library,
and SPI_CS_HIGH would literally mean to drive the physical
line high.

This may seem like an intuitively correct solution but
it has implications for everything using device tree to define
SPI clients: spi-cs-high in a device tree means that the
CS is active high, which gpiolib currently detects and
handles by way of disabling internal inversion (the default
for SPI devices is active low). Previously the SPI core would
set SPI_CS_HIGH and we would then just double-assign
that in the SPI core and then again in some drivers, it doesn't
seem much better to me.

So I will look these over, but if people (and especially the SPI
maintainer) prefer the semantic that SPI_CS_HIGH does not
mean "asserted" but takes direct control of the physical
level of the CS line, I can do that instead.

I could also additionally patch the whole kernel to rename
SPI_CS_HIGH into SPI_CS_ASSERTED if this makes things
better. (Would be a two-step patch rocket adding the additional
define and switching everyone over before deleting the
SPI_CS_HIGH.)

Yours,
Linus Walleij

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
