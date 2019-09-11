Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC434AFB56
	for <lists+linux-rpi-kernel@lfdr.de>; Wed, 11 Sep 2019 13:25:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=iADyxBjVLKW7uKB27iPUITtmdlJEMXtrtYHJZqxkyAA=; b=jjr/Hn/yBt5iX02ee+vmpx8qB
	y8G+c4AoSzXCCc8xKFmGaIRdCj8YI7vkluvBTYXiHG2QUHbP5Wz5/RXHE3i1Cqwt8+23JlvKNtp2w
	bIe2CBGpU9/n0DBUnQ/TfLIm+GCxxmvAuNH6jpKYVNx5M7t6dspZI6+mO9MxX3eLTPvIwjiBK7X2W
	/UA6rRJkDnFCJTVxailEkrEmALiL/S03NCJa1vT6gE1/0Kct1tnz8SgYXvjFXfVadDmrjwFFJYl4I
	fTJUTc3apeY9rTkKipnyyktQl6D0OYwilu8lumahpLo+Tv4xllujVQcTuaYtyISAYq4MYWyGchhqf
	WVaDeLaTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i80kf-0002Ip-2r; Wed, 11 Sep 2019 11:25:33 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i80kY-0002IU-FL
 for linux-rpi-kernel@lists.infradead.org; Wed, 11 Sep 2019 11:25:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3Df3eterHPko1fJYtCg62V5UY5JvoWScy0tz5L4pK9g=; b=iNWdZLA05cpWDoUSgBNY1yvqz
 CQnX1lVpU0q2wCqO/Bddag4y0imQt9JPHtRpwK6rhS5UUQJeXZ52VNBrNDMmVEJzmGi90y72WtsxR
 0Anf8svj27r4zW5IwJ9VPgtbCNaFXCDF6DYdxZuJrVgASfNP0cPsZJrwZxrsjuxw3l6Zg=;
Received: from [148.69.85.38] (helo=fitzroy.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1i80kV-000082-53; Wed, 11 Sep 2019 11:25:23 +0000
Received: by fitzroy.sirena.org.uk (Postfix, from userid 1000)
 id 7D56BD00486; Wed, 11 Sep 2019 12:25:22 +0100 (BST)
Date: Wed, 11 Sep 2019 12:25:22 +0100
From: Mark Brown <broonie@kernel.org>
To: Lukas Wunner <lukas@wunner.de>
Subject: Re: [PATCH v2 04/10] spi: bcm2835: Work around DONE bit erratum
Message-ID: <20190911112522.GD2036@sirena.org.uk>
References: <cover.1568187525.git.lukas@wunner.de>
 <7ceb98f154cdcf72c577615fa312df41adea5f47.1568187525.git.lukas@wunner.de>
MIME-Version: 1.0
In-Reply-To: <7ceb98f154cdcf72c577615fa312df41adea5f47.1568187525.git.lukas@wunner.de>
X-Cookie: Be careful!  UGLY strikes 9 out of 10!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_042526_823627_99200D19 
X-CRM114-Status: GOOD (  11.29  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-rpi-kernel@lists.infradead.org, linux-spi@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============8258217309464866912=="
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org


--===============8258217309464866912==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qXCixuLMVvZDruUh"
Content-Disposition: inline


--qXCixuLMVvZDruUh
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 11, 2019 at 12:15:30PM +0200, Lukas Wunner wrote:
> Commit 3bd7f6589f67 ("spi: bcm2835: Overcome sglist entry length
> limitation") amended the BCM2835 SPI driver with support for DMA
> transfers whose buffers are not aligned to 4 bytes and require more than
> one sglist entry.

You said in the cover letter that this was at the start of the
series but it's actually patch 4 (or patch 3 in terms of the
order they were sent), and in any case it was already applied so
I'm not clear why you're resending it.  If there's any difference
=66rom the previous version please send an incremental fix for it
instead.

The entire series has arrived but it looks like this in my inbox:

    749 r T 09/11 Lukas Wunner    (1.6K) [PATCH v2 00/10] Speed up SPI simp=
lex t
    750 N T 09/11 Lukas Wunner    (4.0K) =E2=94=9C=E2=94=80>[PATCH v2 05/10=
] spi: bcm2835: Drop
    751 N T 09/11 Lukas Wunner    (3.5K) =E2=94=9C=E2=94=80>[PATCH v2 09/10=
] dmaengine: bcm2835:
    752 N T 09/11 Lukas Wunner    (3.6K) =E2=94=9C=E2=94=80>[PATCH v2 04/10=
] spi: bcm2835: Work
    753 N T 09/11 Lukas Wunner    ( 17K) =E2=94=9C=E2=94=80>[PATCH v2 07/10=
] spi: bcm2835: Speed
    754 N T 09/11 Lukas Wunner    (5.2K) =E2=94=9C=E2=94=80>[PATCH v2 06/10=
] spi: bcm2835: Cache
    755 N T 09/11 Lukas Wunner    (2.1K) =E2=94=9C=E2=94=80>[PATCH v2 02/10=
] dmaengine: bcm2835:
    756 N T 09/11 Lukas Wunner    (1.3K) =E2=94=9C=E2=94=80>[PATCH v2 01/10=
] dmaengine: bcm2835:
    757 N T 09/11 Lukas Wunner    (2.6K) =E2=94=9C=E2=94=80>[PATCH v2 03/10=
] spi: Guarantee cach
    758 N T 09/11 Lukas Wunner    (1.1K) =E2=94=9C=E2=94=80>[PATCH v2 08/10=
] dmaengine: bcm2835:
    759 N T 09/11 Lukas Wunner    (8.6K) =E2=94=94=E2=94=80>[PATCH v2 10/10=
] spi: bcm2835: Speed

which is really not good, the random ordering you're using when
you send things means that it's a hassle to even figure out that
I've got the entire series.  Please look into what you're doing
here, other people's patch serieses don't have this problem so
there must be something unusual with your tooling.

--qXCixuLMVvZDruUh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl142aEACgkQJNaLcl1U
h9DfPAf+OYtqXMV5gYBzU4XTKR08XD1PV2nI4GT7e675+/MifpQk2bPDDqVQYYQw
lysfjslqQAmGX8aHnoyaPPIyiGkT1aCUG7j8DdqgWPdXPRoGWNnknhVc7Lwko5+v
9nOxr3Zft3KmhKr50btHGengwyNJNlZlhvEi4nSmwKYyJLR8+nK3HmvIHew+yABM
DppyiPrwx7Q4JNKYPj3zS8rz8vUUp0mUpdYv2e377jLilQYuhlvvP8DfADc52zhN
S0dXlGpjChPSBfzK/nM8mP+l8txFax/ERE/g7w9APK1gAJ/HUhniJp13Q1PFTNF3
AWYr1YSUDj94ktqrczb+BgyDd4YrrA==
=h6tk
-----END PGP SIGNATURE-----

--qXCixuLMVvZDruUh--


--===============8258217309464866912==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel

--===============8258217309464866912==--

