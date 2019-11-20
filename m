Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BA071044E2
	for <lists+linux-rpi-kernel@lfdr.de>; Wed, 20 Nov 2019 21:20:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sM7eEgMf12j/LPl0fbWyHfRW7PKSHl+nIC1rEi+E5Mw=; b=ggnMVK94Qb2TyLIvHgl9mmy32
	g01HHkbLfxVFTmLlwbTt+Y4FE3DgwoEuGBLZaGA3/QukXfkxeX0g98DIdpNjz2g8Ys80FM9/whGK4
	H1CpACywDqRBALjUFqka1QgJSGgNm6J/uSwlTMJKqFmifqTEa9YwCgqz2e+6DMbKuTxj5OPIqQH0a
	ZmHwT431/88cpG1/Zm505hKmZlUVoHSGgx5mLngt5Yw7qWUfoC9PTHqVX4F1N2DftsHtiZ1006jYo
	0lLS9iUaNClyBaEXhTjCekIZc9f7s8JHknpK0WJxAkF757W6W0SaBksa+ym4Z8cY3icVD+ZW4EEy9
	d5sUZ9HMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXWSY-0000Xc-AZ; Wed, 20 Nov 2019 20:20:18 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXWSW-0000X8-1E
 for linux-rpi-kernel@lists.infradead.org; Wed, 20 Nov 2019 20:20:17 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 79FDAB2F1;
 Wed, 20 Nov 2019 20:20:14 +0000 (UTC)
Message-ID: <89d1dbbfaac6d7345d750c5bbc1d359c8304fea6.camel@suse.de>
Subject: Re: BCM2835 maintainership
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Stefan Wahren <wahrenst@gmx.net>, linux-kernel@vger.kernel.org, 
 linux-rpi-kernel@lists.infradead.org
Date: Wed, 20 Nov 2019 21:20:12 +0100
In-Reply-To: <68580738-4ecf-3bb7-5720-6e5b6dafcfeb@gmx.net>
References: <68580738-4ecf-3bb7-5720-6e5b6dafcfeb@gmx.net>
User-Agent: Evolution 3.34.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_122016_219101_18D59687 
X-CRM114-Status: UNSURE (   8.00  )
X-CRM114-Notice: Please train this message.
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
Content-Type: multipart/mixed; boundary="===============3839089766886175058=="
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org


--===============3839089766886175058==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-1oYjBXE6ZO4fpfbv2eb2"


--=-1oYjBXE6ZO4fpfbv2eb2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 2019-11-20 at 12:38 +0100, Stefan Wahren wrote:
> Hello,
>=20
> i need to announce that i step back as BCM2835 maintainer with the end
> of this year. Maintainership was a fun ride, but at the end i noticed
> that it needed more time for doing it properly than my available spare ti=
me.

Thanks for all the effort you put in! You leave the Raspberry Pi upstream i=
n
very good shape.

Regards,
Nicolas

> Nicolas Saenz Julienne is pleased be my successor and i wish him all the
> best on his way.
>=20
> Finally i want to thank all the countless contributors and maintainers
> for helping to integrate the Raspberry Pi into the mainline Kernel.
>=20
> Regards
> Stefan


--=-1oYjBXE6ZO4fpfbv2eb2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl3Vn/0ACgkQlfZmHno8
x/6LBQf/dnyvAedr52gS81jOtJAXR+uFvfd3kC5o10Wy+ULCn/E5g2e1+mQzHB9Q
zgkRhfgSU4YkGjgrWdIzOnxJJnH9IVD6esa3qWZ69fVIYgapFQjt0eMwsXJIVS9P
BPjAH4/z9tv5/phQ6O2Lu9WiE8qYqXJnjXMtC0mJdtI5PejybsgFaVC6HcQFR+OM
Sp5azY3wXG8lVGECVm0oRIVD6PQhZdQ36RhPsHGRFVU7f6BrUoN/LGX7o7EuKcVK
bFCXwQWLj/rPcSCBguXwmPmeZRAZm712OrjDepwr4D0l5XZed1ngYBFf/EHx4uXI
ZaAwgng4fSHmrj1HxYnh7SQtMgoLTg==
=5rA0
-----END PGP SIGNATURE-----

--=-1oYjBXE6ZO4fpfbv2eb2--



--===============3839089766886175058==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel

--===============3839089766886175058==--


