Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F6451ABCF5
	for <lists+linux-rpi-kernel@lfdr.de>; Thu, 16 Apr 2020 11:36:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=h7Lq2KWkjfFt4pNkiuiPN9ZU3snyF44opd1ZqPPYXzg=; b=msqFFqJhXtOVHoOzgksl64HiL
	BJtXwwCtLMvF3cii43mtYEGZirpupE7yoJSvdFjBHeMhW0J7LyUF8IsMYRzPgmUNbpGcRgHd7VRg9
	qrXEv+ml5FVzPvO8tglQsGc/lvl1qoGe+b/1+V+UliZMGmvXO5qihALL8kukvnEMORHU/QxdGA2nZ
	bOHxsvyMeLeLLoTQ3oPKyiwvN7e3Muv2j6ozbRbEm3d21rYev4KiEtL91n1sKCD6oteohqQzKG4eg
	QhUklYhBUqXPLqJSJ6T1hDutQQkLgPjUlGzxygO+zricvIh6pPIOATMvAHLJbQPWTKj5xrHwnJ+xC
	vmHLRugMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP0wo-0004D4-Rx; Thu, 16 Apr 2020 09:36:38 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP0wS-000425-6E
 for linux-rpi-kernel@lists.infradead.org; Thu, 16 Apr 2020 09:36:18 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 773B5AD0E;
 Thu, 16 Apr 2020 09:36:13 +0000 (UTC)
Message-ID: <aa03258a2db37293b4be56dcd2b3f5f32665c6dc.camel@suse.de>
Subject: Re: [PATCH] ARM: dts: bcm283x: Disable dsi0 node
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Eric Anholt <eric@anholt.net>
Date: Thu, 16 Apr 2020 11:36:11 +0200
In-Reply-To: <CADaigPXwfjd-HoOtBm_fuPQ9eh7AKTaJx+ocLsppPFdL3Cr4jg@mail.gmail.com>
References: <20200415144233.23274-1-nsaenzjulienne@suse.de>
 <CADaigPXwfjd-HoOtBm_fuPQ9eh7AKTaJx+ocLsppPFdL3Cr4jg@mail.gmail.com>
User-Agent: Evolution 3.34.2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_023616_392596_D6155FB9 
X-CRM114-Status: GOOD (  18.44  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, Scott Branden <sbranden@broadcom.com>,
 Ray Jui <rjui@broadcom.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1798118858025837577=="
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org


--===============1798118858025837577==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-CzeniVIMWfPwxKpMT9vR"


--=-CzeniVIMWfPwxKpMT9vR
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 2020-04-15 at 12:17 -0700, Eric Anholt wrote:
> On Wed, Apr 15, 2020 at 7:42 AM Nicolas Saenz Julienne
> <nsaenzjulienne@suse.de> wrote:
> > Since its inception the module was meant to be disabled by default, but
> > the original commit failed to add the relevant property.
> >=20
> > Fixes: 4aba4cf82054 ("ARM: dts: bcm2835: Add the DSI module nodes and
> > clocks")
> > Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> > ---
> >  arch/arm/boot/dts/bcm283x.dtsi | 1 +
> >  1 file changed, 1 insertion(+)
> >=20
> > diff --git a/arch/arm/boot/dts/bcm283x.dtsi b/arch/arm/boot/dts/bcm283x=
.dtsi
> > index e1abe8c730cef..b83a864e2e8ba 100644
> > --- a/arch/arm/boot/dts/bcm283x.dtsi
> > +++ b/arch/arm/boot/dts/bcm283x.dtsi
> > @@ -372,6 +372,7 @@ dsi0: dsi@7e209000 {
> >                                              "dsi0_ddr2",
> >                                              "dsi0_ddr";
> >=20
> > +                       status =3D "disabled";
> >                 };
>=20
> If you've confirmed that vc4 still probes,

Confirmed.

> Reviewed-by: Eric Anholt <eric@anholt.net>

Thanks,
Nicolas


--=-CzeniVIMWfPwxKpMT9vR
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl6YJwsACgkQlfZmHno8
x/4N9wgAqYlPDHTVq7kMKPOn6adydtLBBvfMnRHRMQMXIFhdmuET8wrmugAmzy9y
DD67algfoFxdsMWGSIApFa1P0Yh2fkI9Wqe9jUIVdFn8od6P7s4ntl1ifzi//UDJ
BA/iSHNI5AZfeeIarCjijfArnXocnV1qtGC6JypqTtPSXjZW2e3TepNg3WIPTx/W
iw/7W7KOJC7nxFJ3M89ZGJ+GbZmt4Q3dbjX1CS3CeWNzibqTGqBkG+OsUvfOIs12
W31QzmL50Qut49DVLk47tL2KxaMOdUoywRHcq2LYIJiN1cyShGGvt4uh80ITC7aw
EjUyVcq3XKr6b81WqlQz982PVe+0IQ==
=f98w
-----END PGP SIGNATURE-----

--=-CzeniVIMWfPwxKpMT9vR--



--===============1798118858025837577==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel

--===============1798118858025837577==--


