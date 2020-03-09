Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA64217DE94
	for <lists+linux-rpi-kernel@lfdr.de>; Mon,  9 Mar 2020 12:19:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ueohBUz4ASpN3aj/enX/xOWU861NO2E0a0XbYNtJn1A=; b=gx/Q1ss/1opFLD/iTx1eT1C34
	fEs6JUC+5bLMXQJaWNwqSa9Dbj0rNIULnZxCLVVEgqSNJko7wBAegYeX1IQmf6LlyArualeD8szuU
	5k4GelgoSua7QaScbX0ylo4qPD7sZV+XQe1AY37vU5j1Hno1vTowuXU+TaKdPM6ArJfKrqTBnPiTO
	eqhf6GbELykfNSv/l3CDIWt+MCDTlr1LwWH04AotOqeyugw+ZZnukRTCQ56vsWrKHveiF+7ch5YWE
	9gjpX9UOCm1QBxF5DfZbUOD9P6As2G0GAzeywcxKRWgEpAPAADdeJ/1fqg5GxugTVwd5Qvw/gyOAN
	d7I45SMfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBGQd-0000kc-5x; Mon, 09 Mar 2020 11:18:35 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBGQZ-0000k9-PO
 for linux-rpi-kernel@lists.infradead.org; Mon, 09 Mar 2020 11:18:33 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 0B707B3E2;
 Mon,  9 Mar 2020 11:18:30 +0000 (UTC)
Message-ID: <99e5654910e803a2e006205541a18d3627efcdf0.camel@suse.de>
Subject: Re: [PATCH] define rpi0w sdhci pinctrl state
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Nick Hudson <nick.hudson@gmx.co.uk>, Stefan Wahren
 <stefan.wahren@i2se.com>,  linux-rpi-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
Date: Mon, 09 Mar 2020 12:18:28 +0100
In-Reply-To: <c97f3704-a671-be70-4323-181f84d657f8@gmx.co.uk>
References: <c34db439-3539-88c0-99f1-308d75afd1aa@gmx.co.uk>
 <23a936db-fc89-6259-3991-5791fa88beb7@i2se.com>
 <bd4bd5dc-307f-d058-8f94-00b61a8b8c87@gmx.co.uk>
 <c97f3704-a671-be70-4323-181f84d657f8@gmx.co.uk>
User-Agent: Evolution 3.34.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_041831_968656_B9FCD858 
X-CRM114-Status: GOOD (  12.79  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Content-Type: multipart/mixed; boundary="===============3094274644025707331=="
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org


--===============3094274644025707331==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-UsQZskaAVjNGWNkpDbQd"


--=-UsQZskaAVjNGWNkpDbQd
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Nick,

On Wed, 2020-03-04 at 07:33 +0000, Nick Hudson wrote:
>=20
> On 28/02/2020 11:52, Nick Hudson wrote:
> >=20
> > On 27/02/2020 17:53, Stefan Wahren wrote:
> > > Hi Nick,
> > >=20
> > > Am 27.02.20 um 00:33 schrieb Nick Hudson:
> > > > I'm still not sure where I should be sending this, but here goes.
> > >=20
> > > the addresses are right. Please rebase your change against recent Lin=
ux
> > > git tree and generate a git patch, otherwise we cannot apply your it.
> > Oops, I see I sent the comletely the wrong diff... will fix.
> >=20
> > > I suggest the following subject:
> > >=20
> > > ARM: bcm2835-rpi-zero-w: Add missing pinctrl name
>=20
> So, I did this, but it's stuck pending ML moderator approval :(
> I sent it on Saturday.
>=20
> Do I need to try again?

I didn't receive anything myself, so I guess something went wrong.

I'd say try again :)

Regards,
Nicolas


--=-UsQZskaAVjNGWNkpDbQd
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl5mJgQACgkQlfZmHno8
x/4rxggAiznLXhBmqo8Bctu6MolT9RR0LtFBF7tpZlCwS8y9+jrOkrwkchGJfvf+
Z2Y9RHitWgCo6HEtK7GgrEbJw1WC5McWhUKBMuCPJVbyaLmpJDpGkOGd++QSMGzE
jl7Kr/WVMuIDDRDqGfT6wn8HuY2aqoFvTMGKceIjFKLt3Vi5v2brLGC+boD0FHEV
H8OUfi/JvEDgqcJMS2Ga9LecY3RjoEawyLiM7PoBPmU8FxOiUT4mKH9PkMPvL4OI
qNb9tLn6chYxkh/DxjzRvgQUoKm8gpnaoVEBxiIDfe3ULnEeYbMykKFux+raEOg0
Zuqz+O+4+6AJbgA0JduvmzWtuikFjw==
=REhm
-----END PGP SIGNATURE-----

--=-UsQZskaAVjNGWNkpDbQd--



--===============3094274644025707331==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel

--===============3094274644025707331==--


