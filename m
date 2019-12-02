Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDCFE10EAFF
	for <lists+linux-rpi-kernel@lfdr.de>; Mon,  2 Dec 2019 14:44:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5KvWjuCUGIyDSqxQ6nk5bi0f50/hv+uqmx7d9mbtBdo=; b=P9MCLTPGg3gFcbRqea2YfCCC0
	xP8aoSQ50h7T/lj6+dmllK7vaP6ZhiCGyaT2PW+ClSMc5XwbwhBPA+EZ9HiBSjkdgVaHVGE0rT0jS
	l+DjreDCHGPfr5W8B3DE6fpdYLDuuTHJaZIITilDV0J4vO4B6BRIiIJj7VqozLq1acbOcvjTYiDos
	nhQxSPLDXNRHghkaqGwjrymKN6Peu0oi6iHszertVl1WWvIXDbl6Lq1/+4R17ya/cFjLoSjR7uNtA
	zpfQKNgZbvm0sk7JkxQAnIyYm/4DX02SLUSjmCKsGQ+/E/7sZ3fN1JMa9AvohhKw1fAhgS+EgZL5m
	u7bKSO+lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iblza-0005mG-T6; Mon, 02 Dec 2019 13:43:58 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iblzW-0005lj-9N
 for linux-rpi-kernel@lists.infradead.org; Mon, 02 Dec 2019 13:43:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=v0h467ctDK6eHhvWn3L1ujq+Z/M+fJSuhiqzEb9Jz18=; b=LyISIdOMG1xGEELV3NqRJwzOS
 LFJoA6wcB4cQMNcTUHxlW+0X/AonlRdMx91Y85MFaVvJV8QNUWaGqmw7kb9Esi6YzcbXp93tgZdhL
 l0yYvRUzFJ3BmZIOlIZL/CPFTGSsxaMtpQCBv7iuSZvoER/HQSv/hk/x77Qfd4fvj9+iI=;
Received: from 188.31.173.115.threembb.co.uk ([188.31.173.115]
 helo=fitzroy.sirena.org.uk) by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1iblzO-0003wo-6L; Mon, 02 Dec 2019 13:43:46 +0000
Received: by fitzroy.sirena.org.uk (Postfix, from userid 1000)
 id E6785D05907; Mon,  2 Dec 2019 13:43:44 +0000 (GMT)
Date: Mon, 2 Dec 2019 13:43:44 +0000
From: Mark Brown <broonie@kernel.org>
To: Phil Elwell <phil@raspberrypi.org>
Subject: Re: Side effect of SPI GPIO descriptor usage
Message-ID: <20191202134344.GE1998@sirena.org.uk>
References: <db6a1e17-49a3-e3ed-7713-56b7763713d6@raspberrypi.org>
MIME-Version: 1.0
In-Reply-To: <db6a1e17-49a3-e3ed-7713-56b7763713d6@raspberrypi.org>
X-Cookie: Cleanliness is next to impossible.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_054354_401016_6FA8C064 
X-CRM114-Status: GOOD (  13.79  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 linux-rpi-kernel@lists.infradead.org, linux-spi@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============2670281508208146092=="
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org


--===============2670281508208146092==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ey/N+yb7u/X9mFhi"
Content-Disposition: inline


--ey/N+yb7u/X9mFhi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Dec 02, 2019 at 12:10:11PM +0000, Phil Elwell wrote:

> A relatively recent patch [1] to the spi-bcm2835 driver modified it to use
> GPIO descriptors for chip select handling. A side effect of this change is
> to set the SPI_MODE_CS_HIGH flag for devices connected to the controller,
> which seems strange since it happens for devices that require the usual
> active-low chip select.

I take it you mean SPI_CS_HIGH rather than SPI_MODE_CS_HIGH?  I
can't see anything in that change which sets the flag, can you be
more specific?  The change no longer acts on SPI_CS_HIGH when
requesting the GPIO but I can't see anything which *sets* the
flag.  It does not visbily modify mode at all, nor did the
original code.

> This change came to light when a user reported that the SPI-Py library
> (a client of the spidev driver) wasn't working on 5.4, which was traced to
> it overwriting the SPI mode flags when it was only trying to set the
> CPHA and CPOL flags. This had the affect of inverting the chip select
> line, with the obvious consequences. That corruption of the flags is clearly
> an error, but what if the application and library were genuinely trying to
> specify that the attached device required an active-high chip select? Would
> it now require that they _clear_ the CS_HIGH flag?

I can't follow what you're saying here at all, sorry.  Can you
please be more specific?  You appear to be saying that the issue
is that the application modified the mode in some way and this
was acted on apparently not in the expected way.

In general it's a bad idea to modify mode at runtime, and it's a
bad idea to mix multiple means of configuring the polarity of the
chip select (eg, mixing DT configuration with other means).

--ey/N+yb7u/X9mFhi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl3lFRAACgkQJNaLcl1U
h9CrIQf9HCV/qWHL5/pcqPbHvmYpq/QkLXAmASYand7ZtsEI0XEYuxucc50dZx8i
imfB3jXgeXcp7u4Thj5YhmeTbO5EcFvWodHnx2o8Iu/bd/1n2U6TJez8kaL2e+To
YNjaCe5KiMX/xzcfnupzihe2g46+eSRZpaY3NW2Xcg+8/AVlhCJQPbnj2+mLAVl5
xnL12QOJt566I0rBkKQCOjIWyTVDc90hPdC9HAoj197Abc29dKNTiYhQ9sQ4Vfj1
o5rf4YX4dJv6rGJZNAoCyxFya1QWIdZud0W1SRR8qi4m5uVgsdy4pRZHB2MuR9GG
gQs2hewoUsvDdSr4UYUee5NwattvYA==
=JZaa
-----END PGP SIGNATURE-----

--ey/N+yb7u/X9mFhi--


--===============2670281508208146092==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel

--===============2670281508208146092==--

