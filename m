Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B5B3108BA5
	for <lists+linux-rpi-kernel@lfdr.de>; Mon, 25 Nov 2019 11:28:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=P6+Jx1JMwNuS6XgqYv/kmXFgJgupNJH6AjB1E2mJU8s=; b=quB0FY2gJvSfNAS3NvpHXtUNi
	Cc6dIXGyw6+bZQodr54qOYLIG6EnqMPi+SPp60CZPWMECLKAwSg8q0a91Nr1MnDNO0beu4m0MLT0u
	3EBnPUyyJV7yuHAEi5M3WHVB+8YcnKCK0e8tpya7kca0QfKZl+i63UhN2sWQHdLIW1gog2pZs+tqa
	9Ch2DaoT4uBoSnOlORCNV/VS72fbm8B1B0HWm3OH/2rkR63i+vxo0hWX66v1Sxg5az/+cn3LZKQN3
	r8DL78OpAHwIySGx0RW36APhAGMQLyFu2diROpLp4OkVgij0fs91LOV/zhCjvirq0l5wHgE4J///y
	XUyNgewmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZBbQ-0007KF-UO; Mon, 25 Nov 2019 10:28:20 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZBbN-0007Iw-JH
 for linux-rpi-kernel@lists.infradead.org; Mon, 25 Nov 2019 10:28:19 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 2586BAEAF;
 Mon, 25 Nov 2019 10:28:14 +0000 (UTC)
Message-ID: <9df5fcd121b4456f1e2bd3c512c44cfb71b6b17b.camel@suse.de>
Subject: Re: [PATCH] MAINTAINERS: Make Nicolas Saenz Julienne the new
 bcm2835 maintainer
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Stefan Wahren <wahrenst@gmx.net>, Eric Anholt <eric@anholt.net>, Florian
 Fainelli <f.fainelli@gmail.com>
Date: Mon, 25 Nov 2019 11:28:11 +0100
In-Reply-To: <1574617733-18151-1-git-send-email-wahrenst@gmx.net>
References: <1574617733-18151-1-git-send-email-wahrenst@gmx.net>
User-Agent: Evolution 3.34.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_022817_783953_C2412A41 
X-CRM114-Status: GOOD (  12.54  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-rpi-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============7022886650249650453=="
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org


--===============7022886650249650453==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-IH2jLMLLi1bcBKZvzpHe"


--=-IH2jLMLLi1bcBKZvzpHe
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, 2019-11-24 at 18:48 +0100, Stefan Wahren wrote:
> Eric isn't active any more and i don't have the necessary free time.
> Nicolas already made contributions to bcm2835 and is pleased to take
> over the maintainership. My thanks go to both of them.
>=20
> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
> ---
>  MAINTAINERS | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>=20
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 512e527..4285190 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -3224,8 +3224,7 @@ N:	kona
>  F:	arch/arm/mach-bcm/
>=20
>  BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE
> -M:	Eric Anholt <eric@anholt.net>
> -M:	Stefan Wahren <wahrenst@gmx.net>
> +M:	Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
>  L:	bcm-kernel-feedback-list@broadcom.com
>  L:	linux-rpi-kernel@lists.infradead.org (moderated for non-subscribers)
>  L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)

I'm glad to take over.

Acked-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>


--=-IH2jLMLLi1bcBKZvzpHe
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl3brLsACgkQlfZmHno8
x/78VwgAj4t67sNDmGa4Xs0pVoFgM5JUfmLuhKi4G9oztgQbyuHvdE7OP/Wav8F0
gzjmcxZABrSchcYbnV4QdgFIPh5RDMltNfyjx4MO/H0lstc6h3xaMX8eJMMkzXhm
M1PcLxgHxLFyKWWXRPzNgW9Gf8Bfrq4AfhGTi8H98aUN6aUDbFRlIm7Iz6DK/Ch7
okBTcnrm2tkc4TKo2/WtCvyOar7/ugRdbpBQqj4lmiqEJXCzUVpP4XDmojRM89/9
KjqEyrwqXnRpFFHJ6yGqItOXCDSElpvr8clo+eqspz70jyh5ZlfJiktny7R6WAPS
kuHjJPJ/azbWnfOoCeNEY36tociRHQ==
=/FYc
-----END PGP SIGNATURE-----

--=-IH2jLMLLi1bcBKZvzpHe--



--===============7022886650249650453==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel

--===============7022886650249650453==--


