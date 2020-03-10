Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDAC417F94A
	for <lists+linux-rpi-kernel@lfdr.de>; Tue, 10 Mar 2020 13:55:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wehbIZb/UKMkvdqke/uzWhcOK4DVQxdc99+q2+xtjiU=; b=AcoKwgGUaa7yG4n+J0JGVnYkv
	Usdjjuf98KFEToSDGpCX+SaPdZS5KF9uoreuM9aSZqLH86sbZyh5JgJjTXZpS6aRuN/5ZGJRZ4pY2
	1/Y1kk6E40MCik5pDQERdl4BZPWUrFAyQ1XBD333sAyOmhWBhWKySTSils4R3wCM4hy6D/+w61DxV
	PODKDwiK6tUlLBfN7mxJOFwnEqERUBpFYh2TUjMQuqUp2RQ0UjesArETRcFJjhPxazDPAGCgzFayB
	U5n7qpfWaustlC6lipQ2aHOof6/azQQZFzNd0EVYTAzJkJKWEHH+en0Stj4DUAaKMOjeoZJDwuvEW
	9sxdwoorQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBePs-0007C6-Fn; Tue, 10 Mar 2020 12:55:24 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBePn-0007BX-0J
 for linux-rpi-kernel@lists.infradead.org; Tue, 10 Mar 2020 12:55:22 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id A06CAAD6F;
 Tue, 10 Mar 2020 12:55:17 +0000 (UTC)
Message-ID: <1e235d08de7ef783332e67cdbd34eafabb79078c.camel@suse.de>
Subject: Re: bcm2835 SPI issue
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Sergey Suloev <ssuloev@orpaltech.com>, Lukas Wunner <lukas@wunner.de>
Date: Tue, 10 Mar 2020 13:55:16 +0100
In-Reply-To: <d522db93-08fd-5444-4e44-1d9f2aa8c2a4@orpaltech.com>
References: <4172f542-71a8-0186-fe4c-29a8148b7844@orpaltech.com>
 <09f2d0fd-19bc-0884-2f78-b0143f3279ef@raspberrypi.com>
 <e51f3e59-0915-27b7-05a1-e1a2fb8c10d0@orpaltech.com>
 <cf8c2169-7987-5b82-1533-d9a34cd09b41@raspberrypi.com>
 <2b973c0c-08ec-8b6a-1a97-4d676fdb2dc6@orpaltech.com>
 <a878deeefca46e0b9cba601d8ac2a76e2470addc.camel@suse.de>
 <27617227-181c-9be4-8f28-b80fb08ea714@orpaltech.com>
 <20200215075439.ire4t43hdjr2c2qm@wunner.de>
 <d522db93-08fd-5444-4e44-1d9f2aa8c2a4@orpaltech.com>
User-Agent: Evolution 3.34.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_055519_343365_133E824A 
X-CRM114-Status: GOOD (  23.98  )
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
Content-Type: multipart/mixed; boundary="===============8176226600643749214=="
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org


--===============8176226600643749214==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-7gkNbIJu//TClZfWRIWZ"


--=-7gkNbIJu//TClZfWRIWZ
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Sergey,

On Sat, 2020-02-15 at 14:42 +0300, Sergey Suloev wrote:
> On 2/15/20 10:54 AM, Lukas Wunner wrote:
> > On Sat, Feb 15, 2020 at 02:37:35AM +0300, Sergey Suloev wrote:
> > > On 2/14/20 11:50 AM, Nicolas Saenz Julienne wrote:
> > > > > > > > On 13/02/2020 22:09, Sergey Suloev wrote:
> > > > > > > > > I noticed that bcm2835  SPI driver  isn't functioning any=
more
> > > > > > > > > in
> > > > > > > > > kernels 5.5 - 5.6. I know this because it was used
> > > > > > > > > successfully
> > > > > > > > > with previous versions (very latest v4.x and earlier v5.x=
).
> > > > > > > > >=20
> > > > > > > > > I am testing rpi3b and rpi3a+  and multiple SPI periphera=
ls
> > > > > > > > > (displays, wireless transceiver, etc) and none of them ar=
e
> > > > > > > > > working
> > > > > > > > > anymore. Hardware connections stay the same as before so =
I
> > > > > > > > > don't
> > > > > > > > > think this is a hardware issue.
> > [...]
> > > > first lets find our the last working version.
> > > it works in 5.3
> > Does it not work with v5.4?
> no, it does not
> > If so, there have been two major changes
> > to drivers/spi/spi-bcm2835.c between v5.3 and v5.4:
> >=20
> > One is a change to how Chip Select is handled if no cs-gpios are specif=
ied
> > in the DT.  That change was commit 3bd158c56a56.  You seem to be missin=
g
> > cs-gpios in the DT, so that commit would be an obvious candidate.
> > Try reverting it and see if that fixes the issue.
> >=20
> > The other change that went into v5.4 was a speedup for simplex transfer=
s
> > autored by me and spans multiple commits.  I can't really imagine how
> > that would break your setup.  SPI messages to your display are split
> > and then transferred as smaller simplex messages.  Perhaps there's an
> > issue with how split simplex messages are handled?
> >=20
> > Anyway, try reverting 3bd158c56a56 first or adding a cs-gpios property
> > and let's go from there.
> >=20
> > Thanks,
> >=20
> > Lukas
>=20
> reverting the driver back to 5.3 by a patch works well for my project.
> I understand that the issue remains in the kernel source but I'm not an=
=20
> SPI expert and so I let you (or someone else) fix it.

could you confirm this patch fixes your issue:

https://github.com/torvalds/linux/commit/138c9c32f090894614899eca15e0bb7279=
f59865

Regards,
Nicolas


--=-7gkNbIJu//TClZfWRIWZ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl5njjQACgkQlfZmHno8
x/5OHAgAmnkg+hkprrbK2/pSSPisMhmIbC5GliVSiGa2tRhBcVICxJI7cISBnvEF
l/nATi0Fxi5vP+83eSW6r6SxngG1+3p+3qphgrbfUKh4bu6ZXVjStAjnKmNDRBCg
qP6nRL3fKKsZBmCAIJtXHz29di2zr10A1Qx/BUnc5AsV/8fSvilpsGANypovVqk6
nwrAtEd74vP4d1ypgU+w7o/wd7+y8ykchUNoK4+3e/t5OahJGfhnOLmDfp/u0/an
T2Fp93iWtXBMDZfdYNTF6+LcKQcI5NBGbadl8ddKbYBXdDq/o9r3hSKL3K2nTcjE
nBkYcKrdgPZwXpAUwvQo5cXArKfZBQ==
=iy0t
-----END PGP SIGNATURE-----

--=-7gkNbIJu//TClZfWRIWZ--



--===============8176226600643749214==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel

--===============8176226600643749214==--


