Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE987110271
	for <lists+linux-rpi-kernel@lfdr.de>; Tue,  3 Dec 2019 17:35:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8j0NSsGbFkQffuqj8vLhIZRewj04EoiLWxairvF8dj8=; b=hX01cUC4fv2KnT2ogaGGAWwq/
	FI3K4VBiGg7uIKtqLU8rOMKbUzWYWVFEG3e1ho4vO4ewSPHk0q09Vg00hbDsjCgW3CfYGH2arjy8V
	kdT/vP1ccdlEzVJ1ES/nss467+l1AL2QJnG5KeAJ1s3jghlHBua7U2oMvRg9+xZv6axAxBDQzvPm1
	dC5Y9lGEK3bwhKW7WSwxsKBflw4So9NkjFmBVnKh8f/5PZmAtt36ydZJ4pK4Kydnfu+P/uMPGYs7r
	3b6bVcQTZhNsc6AgjNonI3RmURpyRfE4nlFStnq2JSKKU8NYP2jPPidIxokxdFNWZ1viVpKzDPFto
	I8sv+zb2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icB97-0003ZS-6B; Tue, 03 Dec 2019 16:35:29 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icB93-0003Ys-Ox
 for linux-rpi-kernel@lists.infradead.org; Tue, 03 Dec 2019 16:35:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=r6m1p6iz/ZLXeiykJGdEzzkQHCD0mD0wLBa122C3/ok=; b=MVCFMzV5dOqogocPNLWzLR40v
 g/hl5c5gwXux8bd2wUwY8eJ1x+FfKGrI14FNF1B1gEBmpGc1NzIZsk/4yz7N6r94Il9iRsTdkcwzk
 FhpmDumi0pA+RqCu/In/SO7ycLNHlyQv6Godmsps8x0gqaDYFm+TAM3dp09tNGDoagrMM=;
Received: from fw-tnat-cam1.arm.com ([217.140.106.49]
 helo=fitzroy.sirena.org.uk) by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1icB90-0003H3-Ng; Tue, 03 Dec 2019 16:35:22 +0000
Received: by fitzroy.sirena.org.uk (Postfix, from userid 1000)
 id 00D63D003B4; Tue,  3 Dec 2019 16:35:21 +0000 (GMT)
Date: Tue, 3 Dec 2019 16:35:21 +0000
From: Mark Brown <broonie@kernel.org>
To: Phil Elwell <phil@raspberrypi.org>
Subject: Re: Side effect of SPI GPIO descriptor usage
Message-ID: <20191203163521.GM1998@sirena.org.uk>
References: <db6a1e17-49a3-e3ed-7713-56b7763713d6@raspberrypi.org>
 <20191202134344.GE1998@sirena.org.uk>
 <1e0b7cd6-cf9e-2b68-f875-8015c8ffc326@raspberrypi.org>
MIME-Version: 1.0
In-Reply-To: <1e0b7cd6-cf9e-2b68-f875-8015c8ffc326@raspberrypi.org>
X-Cookie: Cleanliness is next to impossible.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_083525_823502_6DD3E80E 
X-CRM114-Status: GOOD (  17.87  )
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
Content-Type: multipart/mixed; boundary="===============7081898801320142191=="
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org


--===============7081898801320142191==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="zHDeOHGDnzKksZSU"
Content-Disposition: inline


--zHDeOHGDnzKksZSU
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Dec 02, 2019 at 02:11:51PM +0000, Phil Elwell wrote:
> On 02/12/2019 13:43, Mark Brown wrote:
> > On Mon, Dec 02, 2019 at 12:10:11PM +0000, Phil Elwell wrote:

> > I
> > can't see anything in that change which sets the flag, can you be
> > more specific?

> bcm2835_spi_probe in spi-bcm2835.c sets ctrl->use_gpio_descriptors to true,
> and of_spi_parse_dt in spi.c includes the following:

> /*
>  * For descriptors associated with the device, polarity inversion is
>  * handled in the gpiolib, so all gpio chip selects are "active high"
>  * in the logical sense, the gpiolib will invert the line if need be.
>  */
> if ((ctlr->use_gpio_descriptors) && ctlr->cs_gpiods &&
>     ctlr->cs_gpiods[spi->chip_select])
> 	spi->mode |= SPI_CS_HIGH;

Right, I see what you're saying now.

> > In general it's a bad idea to modify mode at runtime, and it's a
> > bad idea to mix multiple means of configuring the polarity of the
> > chip select (eg, mixing DT configuration with other means).

> Applications using spidev to implement user-space drivers need to be able to
> set SPI mode, CS polarity etc. at run time. I agree that there

I'm nervous of spidev user doing stuff like that with the chip
selects, with DT even spidev devices should be registered
normally, you will get a complaint if you register a raw spidev.
There's no free pass for "oh, spidev can do anything we don't
care" here - the DT should describe the hardware, if some of the
hardware happens to be implemented by spidev then fine.

That said we do have other in kernel users that do change modes
at runtime, though I'm not convinced many of them have GPIO chip
selects.  Linus?

> are many ways to set the polarity of a chip select, and it may be that
> too many are being used with GPIO CSs declared by DT, but I don't think that
> completely explains the connection between use_gpio_descriptors
> and the automatic setting of SPI_CS_HIGH.

That's the result of there being too many places where the
polarity of the chip select is set so the code is pushing to at
least only implement this in one place so things are clearer and
more consistent.

--zHDeOHGDnzKksZSU
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl3mjscACgkQJNaLcl1U
h9A5nAf+KL/EMG9AeIeRv8/4LbT1CbXUDlGeuE6JyVP6WkAZaVRqab2gbl4rUOAI
vuIKIOJ76vkvjOG9deGsO2N+rIRmXfKt+U0Nz1z92Qg4OjkAybQbiv0ObJU2C5QJ
HUoMtPJ4HlGgOoct0EXfz/MlwLC3CtXaAM9j6rwE+kZCfLAgJ2I4N6yK4H6/030Q
dw/Q+opbvHM2AFKfLPOCInDryDmQrwcstyPHmWKfsrkoJdyZ8QS1G9EydnQQIBYR
31IsXVzDWE8ziAuc5gF5+FN4/cBbdQxtcIHCx3mDVYcB3F6xEKDRPd0aDglAMP1J
51pDSdVPkHYzoUB7PiuvqGH9KtFr1w==
=h29l
-----END PGP SIGNATURE-----

--zHDeOHGDnzKksZSU--


--===============7081898801320142191==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel

--===============7081898801320142191==--

