Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F022C17F421
	for <lists+linux-rpi-kernel@lfdr.de>; Tue, 10 Mar 2020 10:50:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kBH+dAVmyH6ZiRagquc5eFM143GyFk2b7V/AsDkDLnU=; b=Dh2mtbs7H/O2Lo0izX9qgu7Sd
	AvbRNAJuiGcVof1rNqWS4OfMKGspT4rz0n4xy9zKIj/DLtt+2j9Sx6nBq4Ur2P+qFjWRzLkOZ9mDM
	Uk8GePWVRytZ2V0tUMQi/3ErdOjEHB79f65/lk3ZnIWtea+YZanxE4zXsDJlhAvi4MStUFCO49X00
	rtKP9evmGZWlggKTCfDNPqumhB01px8G/o812nl/HEvhCGkcL5EeOcxOHmQSvUhjWMWqxT9BmXpw+
	3+Zx6AJpPD+TEZVysXRaQrn3vILT4Id6HVNk4SVcBnAYmQKfhAZKCjSTuJqLPLeQa439l6hXyUC30
	0yPn31wXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBbX9-0007yp-Ni; Tue, 10 Mar 2020 09:50:43 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBbX6-0007xQ-Fi
 for linux-rpi-kernel@lists.infradead.org; Tue, 10 Mar 2020 09:50:41 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 2A65FAC37;
 Tue, 10 Mar 2020 09:50:38 +0000 (UTC)
Message-ID: <2f4f739422ba70e9578d020aa5c578588b0a54d6.camel@suse.de>
Subject: Re: ARM: bcm2835-rpi-zero-w: Add missing pinctrl name
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Nick Hudson <nick.hudson@gmx.co.uk>, Florian Fainelli
 <f.fainelli@gmail.com>,  linux-rpi-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
Date: Tue, 10 Mar 2020 10:50:37 +0100
In-Reply-To: <b9b15470-deb0-6434-8e42-6482ea4bec9d@gmx.co.uk>
References: <20200309164842.8184-1-nick.hudson@gmx.co.uk>
 <8609efe72001a183452c4bd4f1f1a827eb789406.camel@suse.de>
 <47bc256f-d8f2-6f42-1421-12e19c09d0ce@gmail.com>
 <b9b15470-deb0-6434-8e42-6482ea4bec9d@gmx.co.uk>
User-Agent: Evolution 3.34.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_025040_673164_8B0727F1 
X-CRM114-Status: GOOD (  17.04  )
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
Cc: Nick Hudson <skrll@netbsd.org>
Content-Type: multipart/mixed; boundary="===============1250781236205692558=="
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org


--===============1250781236205692558==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-mHkaeGvwgsTfYPjnj29j"


--=-mHkaeGvwgsTfYPjnj29j
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Nick,

On Tue, 2020-03-10 at 06:46 +0000, Nick Hudson wrote:
>=20
> On 09/03/2020 20:51, Florian Fainelli wrote:
> > On 3/9/20 1:15 PM, Nicolas Saenz Julienne wrote:
> > > Hi Nick,
> > >=20
> > > On Mon, 2020-03-09 at 16:48 +0000, nick.hudson@gmx.co.uk wrote:
> > > > From: Nick Hudson <nick.hudson@gmx.co.uk>
> > > >=20
> > > > Define the sdhci pinctrl state as "default" so it gets applied
> > > > correctly and to match all other RPis.
> > > >=20
> > > > Signed-off-by: Nick Hudson <skrll@netbsd.org>
> > > > ---
> > >=20
> > > you should add the [PATCH] prefix in your subject when submitting pat=
ches.
> > > Also
> > > make sure you CC everyone listed by ./sripts/get_maintainer.pl, so th=
ey
> > > can
> > > properly review the patch.
> >=20
> > It would also be nice to get a Fixes: tag such that this could be
> > backported to stable kernels. Thank you.
>=20
> If you haven't already guessed... I have no idea what I'm doing here so s=
ome
> guidance would be nice.

No worries, we're happy to guide you :)

> I guess it's been wrong from day one and so I should have something like
>=20
> Fixes: 2c7c040c73e9 ("ARM: dts: bcm2835: Add Raspberry Pi Zero W")

Yes that's perfect.

Regards,
Nicolas


--=-mHkaeGvwgsTfYPjnj29j
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl5nYu0ACgkQlfZmHno8
x/64UQf/RNsxZ7PyQ4lGZTSVTRgV+qs1m5fhYeQnZV0WkEex3ig5tRbckO8N2RXb
s6uHOtVAlwo4VlNcjZMtMijMOwthBNxpCIBDVvLcpooBx3ur8XjpQ1WaMa/KNYm/
ZfaCRMipmOQHS2we7eUSyyUJr4PO5YMDxV9OhSkb8JKFRNLbI6z84NbXnxjMVzL7
458oZLg6jWSSRw/BoRELRA8MhjfgnOylG1SiDIWSpWtRis3vyJTsS/iX2z0IK9zH
vPoDpMw0VGbeEPMj1yWYe4X/4VI4VNqpVEb9GW2svdhW7cAkffkucf/3xoYsy6N1
de19UCwTGwl8LrGj7KBc6ztUY4wzxw==
=VQBn
-----END PGP SIGNATURE-----

--=-mHkaeGvwgsTfYPjnj29j--



--===============1250781236205692558==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel

--===============1250781236205692558==--


