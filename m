Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E9B256A2F
	for <lists+linux-rpi-kernel@lfdr.de>; Wed, 26 Jun 2019 15:17:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Eyw/t4KpiRZtRjQQ0STgof9k7xXlTQGM1I9h/aFdnSY=; b=BVUohAhJDimfKl94k4M0SSUia
	MYzqvVPZ6bkvE6Jxqs5bTKeFzofHDP2Aiy3IqGpsK+qDVVVp3YUAUpCi4PDXR2rcU7OlOvytDJAKO
	WOIjUZHuVPiBoawX7ZIfmn1CdLgYRRxwg2Y8sXDp2etm8Mt7uCpOekRYbPT8TR9t2YrudHODKDxwZ
	FvIIjMl2PrEjY36dI7pc4u/1hLvWSC/p5YEx7lAaeYbTig/Z8jcQswY2lPSPvkDcUmcnVP9KnMoB1
	H4wVy2lwDwktbgiTuU3E8nS0xaWggtCqLiR+rZqXb8Zgj5i58tscVQDKnB/QWVCDykHnplWJW+fzT
	/bTRnSUQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg7nN-00033G-7X; Wed, 26 Jun 2019 13:17:05 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hg7mb-0002Tc-Mn; Wed, 26 Jun 2019 13:16:19 +0000
Received: from localhost (p54B330AF.dip0.t-ipconnect.de [84.179.48.175])
 by pokefinder.org (Postfix) with ESMTPSA id D42872C0114;
 Wed, 26 Jun 2019 15:16:11 +0200 (CEST)
Date: Wed, 26 Jun 2019 15:16:11 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Annaliese McDermond <nh6z@nh6z.net>
Subject: Re: [PATCH v2 1/2] i2c: bcm2835: Move IRQ request after clock code
 in probe
Message-ID: <20190626131611.GD801@ninjato>
References: <20190621105250.19858-1-nh6z@nh6z.net>
 <20190621105250.19858-2-nh6z@nh6z.net>
MIME-Version: 1.0
In-Reply-To: <20190621105250.19858-2-nh6z@nh6z.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_061617_895973_9A0C95EA 
X-CRM114-Status: UNSURE (   9.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [88.99.104.3 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: swarren@wwwdotorg.org, team@nwdigitalradio.com, linux-i2c@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7628569883938535359=="
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org


--===============7628569883938535359==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="fOHHtNG4YXGJ0yqR"
Content-Disposition: inline


--fOHHtNG4YXGJ0yqR
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 21, 2019 at 03:52:49AM -0700, Annaliese McDermond wrote:
> If any of the clock code in the probe fails and returns, the IRQ
> will not be freed.  Moving the IRQ request to last allows it to
> be freed on any errors further up in the probe function.  devm_
> calls can apparently not be used because there are some potential
> race conditions that will arise.
>=20
> Fixes: bebff81fb8b9 ("i2c: bcm2835: Model Divider in CCF")
>=20
> Signed-off-by: Annaliese McDermond <nh6z@nh6z.net>

Applied to for-next, thanks!


--fOHHtNG4YXGJ0yqR
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl0TcBsACgkQFA3kzBSg
KbaeQhAAlH5Fv73WNS3Hs724iNcA4HCx+cCQ3SQCuU5Z/VnDG3exwNTaiwW6RsmV
AqMSZyO5B6Pm0Umt5MwzdI9H4dJ2Nf+3HEvUEvqc3fAMbxPguMhf7DhXH29DX89S
5ophbbmY6rD/7WCpjvJPFGvgTXgPpKkt9soqI/DJPfnH/Mpf+7uXMwsJk4jjzTIF
po7L4uxY5fH7+swxzUN+YzpSZ8Ao+Cb99ewXfM53gsuzWQEgZnlGREsTpSyt891f
DKy9SDZ5XVyDl3c+P8UOmpC/PrHc7fTp3szyuW9/GnrcpNh+3edmSSg6d0GoBJ5+
0KK9efwCE/2HRcGNJIUIuI2xgjWnnkd0QZavB1D9MDe16XS5K4m62zUZEbP78BXU
DQPUHgZKa31ZamIRDT6qaJR+e6voPhEsV5hJMwCuKi48LzxM+Sf67C5uYzaf/ive
9PSgOUMZwEliQ7CDW+7+7SlB5KWcTHjRZgz9mbtZ7hP9auFGdtR54Hxi4P4Y6gie
HIiwoRsMHi8AyynqZh4jfCXeJHEevkYdvxEDJND2byqm/BtD2iEOmQNdtbKeTiFq
6ajSpPdf0PBNMY8BarAKuPg4I/HIKtxm4Co8jI+OJ+FwziBE2mTmTZtC6MU8GhrK
BBJogbQMrTmA61902d1JpACGuplHEZ35eD3nAKRG5A0i3CrUGMU=
=8z//
-----END PGP SIGNATURE-----

--fOHHtNG4YXGJ0yqR--


--===============7628569883938535359==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel

--===============7628569883938535359==--

