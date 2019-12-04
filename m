Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82298112E23
	for <lists+linux-rpi-kernel@lfdr.de>; Wed,  4 Dec 2019 16:16:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nK6A5FTusa8uLWvQtn3XOz9diwlWUJSO++JykqJdjBQ=; b=akNuamnBtIRnA37+DFf15iQwY
	VGaUsDRoccedBUyhyHvzEqhAJCGCCYo3DT6XpMPrXL70E7LXJ/OtRTAiedym7HjhKrN5TGtxdqvzI
	zZkh87oNOMyMB6VxdVaIj9sWieOeTVX4Msy8qAFoc3hAnV/B4ekchTJNv6dsOVwyIDnkYK9ISUxkk
	yCQoH6zM4H4BdkTXgOBA42SC88+U3wh2RRfEruS2M31XhVjwvttZBVjuOR+SXs31mcoJzs2zXdDzp
	6ZgxPlfnTPa3OgaKRi14edlx7QZ9frfy6joz4ntNIUFsLQj0o4fuurmHshSgCnLIsjhm9ACy4mA47
	StKT3Ab6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icWNh-0006c1-Fs; Wed, 04 Dec 2019 15:15:57 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icWNd-0006ai-UA
 for linux-rpi-kernel@lists.infradead.org; Wed, 04 Dec 2019 15:15:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hjwLb5IdIcsIVmn9KYxeoR5uP3Q1WPTcMtoZrlGRjKE=; b=SbR7ZkPYPqkRANLnnVVarDRyg
 EfHwsJSJrwqN9b6bh2N+yN9/t1aNwDD1ev1g9ID6tOn5WLCohmHk8FsODLoE0/3HKpap5bDtd0WnG
 YiyKStG08Q1P9ANFyDDJNxgKc9uJEyDe8+X5FnHo7dEbUygAeMsl6/eJG9eG5K6RdAPbs=;
Received: from 92.40.248.127.threembb.co.uk ([92.40.248.127]
 helo=fitzroy.sirena.org.uk) by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1icWNa-0000xU-6D; Wed, 04 Dec 2019 15:15:50 +0000
Received: by fitzroy.sirena.org.uk (Postfix, from userid 1000)
 id DE2B0D00426; Wed,  4 Dec 2019 15:15:43 +0000 (GMT)
Date: Wed, 4 Dec 2019 15:15:43 +0000
From: Mark Brown <broonie@kernel.org>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: Side effect of SPI GPIO descriptor usage
Message-ID: <20191204151543.GV1998@sirena.org.uk>
References: <db6a1e17-49a3-e3ed-7713-56b7763713d6@raspberrypi.org>
 <20191202134344.GE1998@sirena.org.uk>
 <1e0b7cd6-cf9e-2b68-f875-8015c8ffc326@raspberrypi.org>
 <20191203163521.GM1998@sirena.org.uk>
 <CACRpkdbqNw+h6MphF7kLAwym-F3G+ZebMDB2BMt0bzA6DfM0OA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CACRpkdbqNw+h6MphF7kLAwym-F3G+ZebMDB2BMt0bzA6DfM0OA@mail.gmail.com>
X-Cookie: Cleanliness is next to impossible.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_071553_983061_B2306618 
X-CRM114-Status: GOOD (  17.49  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Content-Type: multipart/mixed; boundary="===============5218009039338748058=="
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org


--===============5218009039338748058==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="oAjj1ZwgLg4oRN9q"
Content-Disposition: inline


--oAjj1ZwgLg4oRN9q
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Dec 04, 2019 at 03:46:56PM +0100, Linus Walleij wrote:

> and I can find one more outlier:

> drivers/mmc/host/mmc_spi.c, function mmc_spi_initsequence()

> This very clearly want the inverse polarity of whatever was the default,
> but the code assumes that SPI_CS_HIGH implies that this is the
> actual physical level and forces it high, then low. I will send
> a patch for this: what they want to achieve is the inverse of
> whatever was configured.

Yes, that's the first one I looked at when I was poking around
and I agree with that analysis.

> I am a bit sorry about the semantics of "HIGH" here when the right
> word should rather be "asserted": it's named like this for historical
> reasons.

There's quite a few things I'd do differently if I were designing
the API.

> An alternative would be to let SPI use gpiod_set_raw_value()
> to steamroll all the inversion semantics in the GPIO library,
> and SPI_CS_HIGH would literally mean to drive the physical
> line high.

> This may seem like an intuitively correct solution but
> it has implications for everything using device tree to define
> SPI clients: spi-cs-high in a device tree means that the
> CS is active high, which gpiolib currently detects and
> handles by way of disabling internal inversion (the default
> for SPI devices is active low). Previously the SPI core would
> set SPI_CS_HIGH and we would then just double-assign
> that in the SPI core and then again in some drivers, it doesn't
> seem much better to me.

Yeah, my general thought is that trying to do anything other than
making a new interface for this and actively deleting all the old
ones is probably just going to be pushing the problem around and
not actually any better.

> I could also additionally patch the whole kernel to rename
> SPI_CS_HIGH into SPI_CS_ASSERTED if this makes things
> better. (Would be a two-step patch rocket adding the additional
> define and switching everyone over before deleting the
> SPI_CS_HIGH.)

I think that's probably worth it mainly in the context of also
auditing all the users and possibly making a bigger change which
makes it harder for users to trigger problems.  That's a lot more
work though and needs more thought about what a better interface
would be.

--oAjj1ZwgLg4oRN9q
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl3nzZ8ACgkQJNaLcl1U
h9Dzfwf/bpA6+7EWaEVCm94apDxJdxpI/9Mq6ANh+9+2NtoxQnn2bm7uiOPM8LLL
U4GqU5zR7wht6CcoTd7iU7Z2UO06dwUZdAJBLvvVPAJQO+AYaHhTuzoADN5NgrLy
BLeTydYtRuCZSUhF6mkClLtthjB9ecMA21FHwNS8sRGCWPqIEgvwSNxGWJqDKlIr
Tg3ElLH4pb0iXm1z0ElHewWoZiVjmvjmawrEiDQAEd9JbFjQWO4LmQEIF4nVYERQ
XRtpc3paFLbIyUjnmKzOFXgYaWrv0Eh4Q8nLi0GJ7SsCTgCV6XrN3EYOYRjVSM21
LQa7hSBaAG4qEeF3aGBoYlxsSVvkDg==
=foD7
-----END PGP SIGNATURE-----

--oAjj1ZwgLg4oRN9q--


--===============5218009039338748058==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel

--===============5218009039338748058==--

