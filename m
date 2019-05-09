Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 494B218AEA
	for <lists+linux-rpi-kernel@lfdr.de>; Thu,  9 May 2019 15:44:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QiiUw8JkfUjFAsdZu/fBCNSzai07oHRqayW22/ubveg=; b=AgVd42pHqxZ3EfnY/gJBAfIwx
	6ascdBPgYAWrWKRvWF348ANHg1X26sc8KF0nUJyAQBrmSdYy70JNjZ+sta1APykuOLM9UmXG4GC5J
	lWYQE+zZXlNb9bA7mFgacEt1l9YLdMxQh7qEasSpqN7af8VFALI/1nJ/f0D1Xn+P1UlFmDeZ105VX
	jy2CAfUdpIVgTuU5sJ9A/qsB3I8Fu8SV4sCQ88U83OLGh/W1psKBpp1KbVitSzUMGmxicKG+J9mAY
	MZPiPde9+pqAmhk/rpzc4T/zpBY88JldimYKICBV3kJv5m4iGM0kBMBJ4sdp7smdyzRxbMEhf7dUz
	WnucmNZZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOjLl-0006JF-KG; Thu, 09 May 2019 13:44:41 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOjLi-0006Io-He
 for linux-rpi-kernel@lists.infradead.org; Thu, 09 May 2019 13:44:39 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 13317AC43;
 Thu,  9 May 2019 13:44:37 +0000 (UTC)
Message-ID: <2623e5a81c4bd1b7fc478db81d9839f7ae6129fb.camel@suse.de>
Subject: Re: Enable DMA support for SPI controller (was dwc_otg disconnect
 IRQ storm/starvation crash)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Stefan Wahren <stefan.wahren@i2se.com>
Date: Thu, 09 May 2019 15:44:35 +0200
In-Reply-To: <b311c5cf-c8ce-0e8f-8597-ac3bed205548@i2se.com>
References: <20190430014140.GI5152@florz.florz.de>
 <51166349-220c-6b85-dc22-44c9314810a8@i2se.com>
 <20190501171133.GJ5152@florz.florz.de>
 <e3533679-edd8-b8f8-c5b5-8681bb57ae2e@i2se.com>
 <c2c6366d59d6f1418a46634970c98f4d6b0b9377.camel@suse.de>
 <b311c5cf-c8ce-0e8f-8597-ac3bed205548@i2se.com>
User-Agent: Evolution 3.32.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_064438_731577_5B9908C2 
X-CRM114-Status: GOOD (  22.17  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-rpi-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-rpi-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rpi-kernel>, 
 <mailto:linux-rpi-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rpi-kernel/>
List-Post: <mailto:linux-rpi-kernel@lists.infradead.org>
List-Help: <mailto:linux-rpi-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel>, 
 <mailto:linux-rpi-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-rpi-kernel@lists.infradead.org,
 Noralf =?ISO-8859-1?Q?Tr=F8nnes?= <noralf@tronnes.org>
Content-Type: multipart/mixed; boundary="===============7711413232402143603=="
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org


--===============7711413232402143603==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-3PuGOeovhBN5AfZOHyoO"


--=-3PuGOeovhBN5AfZOHyoO
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2019-05-09 at 15:43 +0200, Stefan Wahren wrote:
> Hi Nicolas,
>=20
> On 09.05.19 15:28, Nicolas Saenz Julienne wrote:
> > Hi Stefan,
> >=20
> > On Wed, 2019-05-08 at 21:05 +0200, Stefan Wahren wrote:
> > > Hi Nicolas,
> > >=20
> > > since you have a semi-working SPI setup, could you also please test t=
he
> > > following DT patch?
> > >=20
> > > I like to see this integrated into 5.3 and the original message hasn'=
t
> > > published to the mailing list yet.
> > >=20
> > > Thanks Stefan
> > >=20
> > >=20
> > > -- >8 --
> > > Subject: [PATCH] ARM: bcm283x: Enable DMA support for SPI controller
> > >=20
> > > Without this, the driver for the BCM2835 SPI controller uses interrup=
t
> > > mode instead of DMA mode, incurring a significant performance penalty=
.
> > > The Foundation's device tree has had these attributes for years in
> > > bcm270x.dtsi, but for some reason they were never upstreamed.
> > >=20
> > > Signed-off-by: Lukas Wunner <lukas@wunner.de>
> > > ---
> > > arch/arm/boot/dts/bcm283x.dtsi | 2 ++
> > > 1 file changed, 2 insertions(+)
> > >=20
> > > diff --git a/arch/arm/boot/dts/bcm283x.dtsi
> > > b/arch/arm/boot/dts/bcm283x.dtsi
> > > index 1b53339..893a76a 100644
> > > --- a/arch/arm/boot/dts/bcm283x.dtsi
> > > +++ b/arch/arm/boot/dts/bcm283x.dtsi
> > > @@ -421,6 +421,8 @@
> > > reg =3D <0x7e204000 0x1000>;
> > > interrupts =3D <2 22>;
> > > clocks =3D <&clocks BCM2835_CLOCK_VPU>;
> > > + dmas =3D <&dma 6>, <&dma 7>;
> > > + dma-names =3D "tx", "rx";
> > > #address-cells =3D <1>;
> > > #size-cells =3D <0>;
> > > status =3D "disabled";
> > >=20
> > It seems to be running OK on my setup (w5500 SPI Ethernet controller). =
It's
> > been running at max speed for an hour without issues. Also, the through=
put
> > is
> > higher and more stable.
>=20
> thanks. So it would be okay if Lukas / me add your Tested-by ?

Yes :)

> Stefan
>=20
> > Regards,
> > Nicolas
> >=20


--=-3PuGOeovhBN5AfZOHyoO
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAlzULsMACgkQlfZmHno8
x/6v2gf+OI+50hVFq2wNKcds5BoyoRKr2ZSV2Wj9JtAtaDhw7NdN1gSkIYC0zxTZ
vjCQpwjA0k03G3TRclkwislg1c2dG+yP5nkOFJrBDqAOPwwelj+bxbKH/WaDThvP
xrxJEo11wodhMIF/H9cSAJ5NJZpBFwdgiO4O1zHeria/1DFX4lWC+JVbT8FyH9Yb
z+DBnN5GwwE7rqS/vhqx/4m0K5JDLAQfclyU3Cr3FomdryBqrkSCyGByP/aFSm9W
vGK53e6VzSp9iulS3lHWflIV4IeA2qaZO/mptm7NZAWFmOukJQnHH0SVHrTGWRC3
240dN/+Nm9zTdJSQtM9F23EMewwBng==
=t5SZ
-----END PGP SIGNATURE-----

--=-3PuGOeovhBN5AfZOHyoO--



--===============7711413232402143603==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel

--===============7711413232402143603==--


