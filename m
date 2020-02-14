Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42BB015D416
	for <lists+linux-rpi-kernel@lfdr.de>; Fri, 14 Feb 2020 09:51:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yf/3yMNeQU5qtGFYFQQk39jjb7hHc+EqeNtzjRj8MDc=; b=BQxc75i+74BxBSWHwi4lZOj1F
	lsUzooOzJ0jsXDtF0m98CSHoOmGWiRqeBMsf9wEeFpPnH47Tw30kBM2Lh+iRxN+UNzFoCgnvHdxYZ
	45sR3yCNYED0e3rWyhDs8WxOemdW2KaA7DuUFuNsKGdAfYUh8kJeEWhAl9YocS0fDPxDvGiHmkSPn
	7BNshQDDPmIt31RGSLvOUujhLVJdCKC4xMfjjheFjrgnJGCG+L/UcPyz/AGe0enBm7im4Ayg8NZCa
	AnkId1rlvw/lYc25AREOuY9z/s2YS6XPl4QJlfrlLexNHUrR2DnjoY0mW0wpgmwHmVJ5n/2Id7H6V
	LlTZXloVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2Wgl-0001tm-JX; Fri, 14 Feb 2020 08:51:07 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2Wgh-0001tP-3p
 for linux-rpi-kernel@lists.infradead.org; Fri, 14 Feb 2020 08:51:05 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id B7FB5ACE1;
 Fri, 14 Feb 2020 08:50:58 +0000 (UTC)
Message-ID: <a878deeefca46e0b9cba601d8ac2a76e2470addc.camel@suse.de>
Subject: Re: bcm2835 SPI issue
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Sergey Suloev <ssuloev@orpaltech.com>, Phil Elwell <phil@raspberrypi.com>
Date: Fri, 14 Feb 2020 09:50:54 +0100
In-Reply-To: <2b973c0c-08ec-8b6a-1a97-4d676fdb2dc6@orpaltech.com>
References: <4172f542-71a8-0186-fe4c-29a8148b7844@orpaltech.com>
 <09f2d0fd-19bc-0884-2f78-b0143f3279ef@raspberrypi.com>
 <e51f3e59-0915-27b7-05a1-e1a2fb8c10d0@orpaltech.com>
 <cf8c2169-7987-5b82-1533-d9a34cd09b41@raspberrypi.com>
 <2b973c0c-08ec-8b6a-1a97-4d676fdb2dc6@orpaltech.com>
User-Agent: Evolution 3.34.3 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_005103_989309_021D3819 
X-CRM114-Status: GOOD (  22.50  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-rpi-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5565450807124416463=="
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org


--===============5565450807124416463==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-qhPKMS5zuFuvhoSlmvsW"


--=-qhPKMS5zuFuvhoSlmvsW
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Sergey,

On Fri, 2020-02-14 at 01:58 +0300, Sergey Suloev wrote:
> hi, Phil,
>=20
> On 2/14/20 1:45 AM, Phil Elwell wrote:
> > Hi Sergey,
> >=20
> > On 13/02/2020 22:37, Sergey Suloev wrote:
> > > hi, Phil,
> > >=20
> > > On 2/14/20 1:22 AM, Phil Elwell wrote:
> > > > Hi Sergey,
> > > >=20
> > > > On 13/02/2020 22:09, Sergey Suloev wrote:
> > > > > hi, Nicolas,
> > > > >=20
> > > > > I noticed that bcm2835  SPI driver  isn't functioning anymore in=
=20
> > > > > kernels 5.5 - 5.6. I know this because it was used successfully=
=20
> > > > > with previous versions (very latest v4.x and earlier v5.x).
> > > > >=20
> > > > > I am testing rpi3b and rpi3a+  and multiple SPI peripherals=20
> > > > > (displays, wireless transceiver, etc) and none of them are workin=
g=20
> > > > > anymore. Hardware connections stay the same as before so I don't=
=20
> > > > > think this is a hardware issue.
> > > > >=20
> > > > > I am using the following patch in my build to enable SPI pins:
> > > > >=20
> > > > >=20
https://github.com/orpaltech/armlinux/blob/master/patch/kernel/armlinux/sta=
ble/v5.5/rpi/0017-spi-bcm2835-Add-SPI-controller-pins.patch
=20
> > > > >=20
> > > > >=20
> > > > > It was enough in previous kernels for SPI to work. Is there=20
> > > > > anything else I should do now ?
> > > >=20
> > > > I think you need to add:
> > > >=20
> > > >     status =3D "okay";
> > > >=20
> > > > Otherwise, the spi node will remain disabled.
> > > >=20
> > > > Phil
> > > >=20
> > > thanks for reply.
> > >=20
> > > It is already done by the dt-overlays.
> > >=20
> > > Again: it was working before! It just stopped working after moving to=
=20
> > > 5.5.
> >=20
> > I don't think that bcm2837-rpi-3-b.dtb has changed significantly=20
> > between 5.4 and 5.5.
> > Have you tried the 5.5 DTB with the 5.4 kernel?
> >=20
> > Phil
> >=20
> no, not yet.
>=20
>=20
> I forgot to attach logs in my previous email, here it is=20
> https://pastebin.com/v5mFpN2G
>=20
>  From this log you can see that SPI display "works" well:
>=20
> root@rpi3-b-arm-stretch:~# dmesg | grep spi
> [    3.011567] spi spi0.1: setting up native-CS1 to use GPIO
> [    3.019620] spi spi0.0: setting up native-CS0 to use GPIO
> [    3.367637] [drm] Initialized ili9486 1.0.0 20171208 for spi0.0 on=20
> minor 1
> [    3.390109] ads7846 spi0.1: touchscreen, irq 94
> [    3.396306] input: ADS7846 Touchscreen as=20
> /devices/platform/soc/3f204000.spi/spi_master/spi0/spi0.1/input/input0
> [    3.408486] ili9486 spi0.0: waveshare35_enable: enter
> [   37.821112] ili9486 spi0.0: fb1: ili9486drmfb frame buffer device
>=20
>=20
> But the display isn't working. The same scenario with any other SPI=20
> peripheral : no errors in the log but the peripheral is malfunctioning.
>=20
> I am not a big expert in SPI, but I connected my oscilloscope and I can=
=20
> see some activity on CLK and MOSI.
>=20
> All this makes me think that current SPI driver doesn't produce the=20
> "correct" SPI protocol messages anymore.

Lets see if we can fid out the fautly patch.

I get from your message that you tested successfully v5.4 but v5.5 fails ri=
ght?

I see no changes in the SPI driver between those release, so we'd need to d=
o a
git bisect. But first lets find our the last working version.

Regards,
Nicolas


--=-qhPKMS5zuFuvhoSlmvsW
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl5GX24ACgkQlfZmHno8
x/4cTAgAlrwn7zk17viP8f9PMa3NqgCg7VP8lYVrH16iaJmkMxsLvzeUEgXu9jo4
U7FqN3ujHfci7dWWBP57bokN7o3LdNWPV9i5aTbMSSpIMlyxRI39YTWHF8xQGtBO
URsBpi5t9V1CQLtJWf/e225Q2p+TVUrqIrqq85kWy6IL3Fa3UHE4ZsKtfq/ej7f+
snQPAk4/xo5lKpoaA7NLRnAV3U+NvCvDOdJQihFGR4Bkbq0FtycB+g9+WjJi5LcN
iRuVzgDIX0xpf2vnRZ2GmD71CpP4BMqZKNDIzQM612cAlOPHD9sC/b947rhdyIwl
aQugYOAAJl72STPWWfixo++y//gzRg==
=7hCh
-----END PGP SIGNATURE-----

--=-qhPKMS5zuFuvhoSlmvsW--



--===============5565450807124416463==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel

--===============5565450807124416463==--


