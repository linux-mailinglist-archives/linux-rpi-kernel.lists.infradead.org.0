Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74C9317F834
	for <lists+linux-rpi-kernel@lfdr.de>; Tue, 10 Mar 2020 13:46:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RyRCWhMMgyNYBqq50mYPpGoDR/6kpadlR7zvsXDJL5s=; b=sZAxFiE2wmCKagIoF9MgWYzF/
	vJH5TeLtXq6bhJ3SJtxRTPza9IP2NEMMiAvbrhDP8YOOqqiMErFCuriqc3Jegaq0VBBdaDXVVr8cC
	VYos58whFDN94mSWEbRUh4Qz5lN8bidAXXpsukWv3hhiSsx87KR6y/UJz8PSUfGRgpTzv6pF3Oput
	VPy1FaeFwfzWUoRRjZYBvTkWPFzKOcKyi3iLnf5sz7hi+3p4AL68P0J8aakHz3Jig34Z3igPj3qrC
	CdBM+kPf/mPSXzK7hSHkEUajM1dT6MHEztq3SIdJqQIwyPdDX31ACPjmHC6JwGM1yAvD5HyA4YqD8
	ituKuFtng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBeGl-0001lk-PZ; Tue, 10 Mar 2020 12:45:59 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBeGi-0001lD-Mr
 for linux-rpi-kernel@lists.infradead.org; Tue, 10 Mar 2020 12:45:58 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 5809FAE50;
 Tue, 10 Mar 2020 12:45:55 +0000 (UTC)
Message-ID: <92c61f204619d1d1e00e0c13873560bcb573e400.camel@suse.de>
Subject: Re: [GIT PULL 1/2] bcm2835-dt-next-2020-03-09
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Florian Fainelli <f.fainelli@gmail.com>
Date: Tue, 10 Mar 2020 13:45:53 +0100
In-Reply-To: <50deb8d8-54b5-ba89-10ee-0d69c087b62c@gmail.com>
References: <f10d43777bf17eed98c1fb36660f9189ea8b83d6.camel@suse.de>
 <50deb8d8-54b5-ba89-10ee-0d69c087b62c@gmail.com>
User-Agent: Evolution 3.34.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_054556_890587_16FB0D9C 
X-CRM114-Status: GOOD (  13.38  )
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
Cc: linux-rpi-kernel <linux-rpi-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============8729456131426815183=="
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org


--===============8729456131426815183==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-Xhj9CzQ0NxuK3uokkkZy"


--=-Xhj9CzQ0NxuK3uokkkZy
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 2020-03-09 at 13:58 -0700, Florian Fainelli wrote:
> On 3/9/20 1:33 PM, Nicolas Saenz Julienne wrote:
> > Hi Florian,
> >=20
> > The following changes since commit bb6d3fb354c5ee8d6bde2d576eb7220ea098=
62b9:
> >=20
> > Linux 5.6-rc1 (2020-02-09 16:08:48 -0800)
> >=20
> > are available in the Git repository at:
> >=20
> > git://git.kernel.org/pub/scm/linux/kernel/git/nsaenz/linux-rpi.git
> > tags/bcm2835-dt-next-2020-03-09
> >=20
> > for you to fetch changes up to 3d2cbb64483691c8f8cf88e17d7d581d9402ac4b=
:
> >=20
> > ARM: dts: bcm2711: Move emmc2 into its own bus (2020-03-09 21:18:03 +01=
00)
> >=20
> > ----------------------------------------------------------------
> > This tag adds GPIO labels to RPi4 and moves emmc2 to its own bus in
> > order for RPi4's firmware to correct its DMA constraints.
> >=20
> > ----------------------------------------------------------------
>=20
> Can you resend and copy the appropriate mailing-list entries listed in
> the MAINTAINERS file for BCM283x? That way all the tools behind those
> mailing lists can be used. Thank you!

Sorry, forgot about that.

Regards,
Nicolas


--=-Xhj9CzQ0NxuK3uokkkZy
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl5njAEACgkQlfZmHno8
x/4uTgf+PyBApwE/qljZ3G3UU0Z9VPl6d7Jync8QqPpOc/eu8NXYzg94pfFlm8kN
SFbUHryxfxjQZlf3Q+ZVmiixGN1o0Qek34K/IlowIke9U6KRzE3E7t9Aa0ozfbZO
ln0u70aFBrpnbglJqNGCmPky3n4b5x3+GSZ1uiFWpVlU5Ec6FKyRhn/R6ieupJxm
6B+G5ywS8iKAx9FXGqKf7sLgeqltJsatchM6wGqKJi8NkRFpLeODSrTexzH5HuOw
EMa235QAmNrV5yvKuvClTI9XAs6ueI3KamsjTsVCsicWJZ5nexvfWcXljJ8fZYuD
YTmt5gHLSLDh72NMHnHYA2+XZX1rVw==
=wzNV
-----END PGP SIGNATURE-----

--=-Xhj9CzQ0NxuK3uokkkZy--



--===============8729456131426815183==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel

--===============8729456131426815183==--


