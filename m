Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FF4718168E
	for <lists+linux-rpi-kernel@lfdr.de>; Wed, 11 Mar 2020 12:11:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yvKoUHfmWaimQ2usm4jBB8AElrFAFrZnXfaCQGE7GuI=; b=eDdJosx/JQjDOKH35cWjolC3F
	dBIuAztbdGrO5I1ecMvwC9s/YBqFMLPAe3OhpuOfCZN9+7MQjYoEBVk2g31XcgJE+MJ898JsQjBPS
	62Nj8zoFvitjWhXEjUzU/a5prKMWlqCV3cFlenKBcISzZSkpmzXlRj7xenCUCdEjONmqyyXD0NR4L
	HOUNNLif9WnivKaY0bjh5s/j5Db1t8G8lHutK/Vccmncf/4oXeUXLqzaQSN6J2FXHoHhgpmuX2QPL
	QTptmhFLIzGAmwkXaHow8umRPKOAYwIgJqdoKxyMw/Jvt4FAnCgw04w+o8PclPRgCG+YgqxJKZ15b
	stkgoD3ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBzGt-0001Ev-E0; Wed, 11 Mar 2020 11:11:31 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBzGp-0001EK-NR
 for linux-rpi-kernel@lists.infradead.org; Wed, 11 Mar 2020 11:11:29 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 716EFAED2;
 Wed, 11 Mar 2020 11:11:26 +0000 (UTC)
Message-ID: <220336cb78467ec7df46c91505268fb007bf714f.camel@suse.de>
Subject: Re: 5.6.0-rc5 fails to boot (MMC/SDHCI related?)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Peter Robinson <pbrobinson@gmail.com>, Lucas Nussbaum <lucas@debian.org>
Date: Wed, 11 Mar 2020 12:11:25 +0100
In-Reply-To: <CALeDE9N8_Kmz+6QDMm7CcP9S8rs1iSfcoSwP-pmXh5UWsp9+Fw@mail.gmail.com>
References: <20200310223403.GA31851@xanadu.blop.info>
 <20200311074132.GA7703@xanadu.blop.info>
 <CALeDE9N8_Kmz+6QDMm7CcP9S8rs1iSfcoSwP-pmXh5UWsp9+Fw@mail.gmail.com>
User-Agent: Evolution 3.34.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_041127_912725_8216ABF9 
X-CRM114-Status: GOOD (  14.06  )
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
Content-Type: multipart/mixed; boundary="===============5013181770944165449=="
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org


--===============5013181770944165449==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-PX70xBGfkmKJJDEUC+An"


--=-PX70xBGfkmKJJDEUC+An
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 2020-03-11 at 10:04 +0000, Peter Robinson wrote:
> > > I'm trying to build Debian images with the vanilla kernel, but I can'=
t
> > > get a kernel to boot. I'm probably missing something obvious...
> >=20
> > Hi,
> >=20
> > I forgot to mention that I had cherry-picked
> > d886ff4d2a6aaf4a1e837dc4ccc731bf8c9a606f (ARM: dts: bcm2711: Move emmc2
> > into its own bus). I'm now testing without it.
>=20
> I think there's also a new firmware to go with that piece above. I'm
> guessing you're having issue with a RPi4B but I don't see it
> mentioned. What HW rev of the HW have you got?

There is indeed a new firmware needed to get the most out of the new revisi=
on's
sdhci (less DMA constraints), but backwards compatibility is assured.

> I have one of the original RPi4B's booted with 5.6-rc5 on Fedora 32
> without issue. I got a new which should be a rev 1.2 which I intend to
> test shortly because we've received similar reports of issues with HW
> rev 1.2.

Feel free to ping me with such issues, as I'm working on adding support to =
all
these revision quirks.

Regards,
Nicolas


--=-PX70xBGfkmKJJDEUC+An
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl5ox10ACgkQlfZmHno8
x/6rRQf8CF3+YVNwr2ZBvqi6ricCT8bM73Ayy+udKe414Vws2LZxaZ9OrPebbl8q
D0qyYgRfadu4Arcw7jtaRDTH5APNG1RRSgEZUPCWEUCoIVMpnfw+4czD8w19Lg3x
UKvsdWVhfkEXJP/bWiNw3wIMutsk4E96dfKUE/zDJZw47iYBqXn6+8myK8hQyHGL
YzkYdvH21j+2LEcc14p//EHf2i0SeP9UrEplrtUBC7jeL9C7D7DR+wclisKB56gy
gXIcxwlWoONMrORc/jZGw4XlVDhfFYUEvvMWO1bPeQwKR/tC5bfx7EkDTu1k8jS3
Ng4Xs0WQymDLACHLXQKNDGPlDskDLg==
=Vv2H
-----END PGP SIGNATURE-----

--=-PX70xBGfkmKJJDEUC+An--



--===============5013181770944165449==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel

--===============5013181770944165449==--


