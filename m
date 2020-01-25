Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50F591495FB
	for <lists+linux-rpi-kernel@lfdr.de>; Sat, 25 Jan 2020 14:56:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jvx/q3D/fMDz1ZcYa7pime5FU2omEH23pn1lHTAsHK0=; b=tCuipAdAAxEuWysvX3m8LZcc3
	4rGi4NsodFjb8BiJTlUw5vhzz07barjXttbY/8IK45sz7Wps7Zs4QfUiECtGxFGy/Sngom0cmztSy
	oA1G7dIONEpX1My2JvSasYWlDyB9taPuoYsckv6ShfuhU+Z79A2vxcqx8yYbfAFmxWt9GP7GLDk9D
	jvW+hoO7dFeFhr9CYxqJgo3OA+c2LBXCIcS4JIKQ5F55Zzr+U5bAq7w6QD2q0zL/9kMHW+Rw67i63
	asx72olQCyTREFXT2Ee/PEpxq63wgCxhkw1vtLwzSbpSKTNCg3dBwkaaZlv8lwF5aJnhRmKU1hW/b
	WzbW+o1jA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ivLvX-000332-IP; Sat, 25 Jan 2020 13:56:43 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivLvT-00032b-TJ
 for linux-rpi-kernel@lists.infradead.org; Sat, 25 Jan 2020 13:56:41 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id CF23DAC5C;
 Sat, 25 Jan 2020 13:56:37 +0000 (UTC)
Message-ID: <41e082fa921653f57de2809630bedbb339fe5111.camel@suse.de>
Subject: Re: RPi B+ USB support
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Valentin =?UTF-8?Q?Vidi=C4=87?= <vvidic@valentin-vidic.from.hr>
Date: Sat, 25 Jan 2020 14:56:36 +0100
In-Reply-To: <20200125135404.GH3671@valentin-vidic.from.hr>
References: <20200125130737.GG3671@valentin-vidic.from.hr>
 <C04WEWWXBXRL.28WZVXZ9OKU4B@linux-9qgx>
 <20200125135404.GH3671@valentin-vidic.from.hr>
User-Agent: Evolution 3.34.3 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200125_055640_094421_22E567CB 
X-CRM114-Status: GOOD (  11.56  )
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
Content-Type: multipart/mixed; boundary="===============3970634626942598936=="
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org


--===============3970634626942598936==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-qLOnpN0wFoXPnBYd6I0M"


--=-qLOnpN0wFoXPnBYd6I0M
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, 2020-01-25 at 14:54 +0100, Valentin Vidi=C4=87 wrote:
> On Sat, Jan 25, 2020 at 02:15:30PM +0100, Nicolas Saenz Julienne wrote:
> > This seems odd, current mainline version is v5.5-rc7.
> >=20
> > See this successful test build from yesterday:
> > https://kernelci.org/boot/id/5e2b0dfb15f828397b74e989/
>=20
> I just tried to boot that kernel but it did not help - USB still not
> working and there is even more backtraces now (see below). Could it be
> some other firmware or u-boot is causing this problem?

Yes, it's possible, did you also update the relevant device-tree file on yo=
ur
boot partition?

Regards,
Nicolas


--=-qLOnpN0wFoXPnBYd6I0M
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl4sSRQACgkQlfZmHno8
x/7beAf6A+XS1NWC4yqjhpqzcLMFjhnC/ecreWgyEYcC//1na6yY5cEqX8siacRB
D2Z8Gp8bEgMWM4r/gXeVq4ozRA48iZb/wfJbO6OypyA7RH+1rqoIoIr9BkxQDw6H
fkXNZwDt3TbqTBTGRQR40ldBBXzLljhQi9bCqTEtcAyoP8Qj99n4TrriU/aV1DZp
CvYPQtxmks3EZWCPfhWP+fxYlMK5nZrjmU6havI/sOKtHnCJQldbRslQXs7rnRgf
55S70d6rlYluJ0Pj2V9iKaTKWSXhYrZT52lFv9+Og7/I/dMF2xc9uKEfpRuWWfVz
drVIS/GDiKK/PYmd2V65yVeesgHZVw==
=Wq9F
-----END PGP SIGNATURE-----

--=-qLOnpN0wFoXPnBYd6I0M--



--===============3970634626942598936==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel

--===============3970634626942598936==--


