Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CFC0132E0A
	for <lists+linux-rpi-kernel@lfdr.de>; Tue,  7 Jan 2020 19:11:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aFFlu1kGyfKD7v2omY7TEhoL43aGMRWvsZfm6sZJohg=; b=cEIp71KDV9wDRd3JCOoojT90W
	7aJ7wTJ3SGNxALvxfyezWd8M0SwntexblUUtCj839KIx9BZi5mCQycBc+cZKgRZyLi55XRJFUq0B/
	7zt5zH9aMPcbKBQxW+vW+MwY13rikcBdpLToXr6YOBMwsbEiIQSY+vrq7OiOKjIRQOFC5tCJGBFGY
	gKKdDchIF0M48Ofy6P1dlT/C6duESMKPSY9mTvFyeH0B/LhU0num8Xd6d04m1XNn01qEC4CZmItUA
	J8t1O0hn6Es1LhP20qGbEbhl5Dvq1o3HH7UmhZ8IWdD3EYpOQgNLr1c4/uowKEXDXT+kLpqbp7i2T
	pXPsKO+Dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iotKI-0007oE-5h; Tue, 07 Jan 2020 18:11:34 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iotK8-0007h6-Uq; Tue, 07 Jan 2020 18:11:26 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 644F8AD7F;
 Tue,  7 Jan 2020 18:11:23 +0000 (UTC)
Message-ID: <65e976494676a7081b154961ba51048892c2a779.camel@suse.de>
Subject: Re: [RFC] ARM: add bcm2711_defconfig
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Stefan Wahren <wahrenst@gmx.net>, f.fainelli@gmail.com
Date: Tue, 07 Jan 2020 19:11:21 +0100
In-Reply-To: <3688a55b-e929-6cef-66c6-affed97d938b@gmx.net>
References: <20200107172459.28444-1-nsaenzjulienne@suse.de>
 <3688a55b-e929-6cef-66c6-affed97d938b@gmx.net>
User-Agent: Evolution 3.34.2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_101125_139021_3B831B94 
X-CRM114-Status: GOOD (  13.66  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 hch@lst.de, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0280487228264102413=="
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org


--===============0280487228264102413==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-vwyhc/iY3H5c6/B9T0Uh"


--=-vwyhc/iY3H5c6/B9T0Uh
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 2020-01-07 at 19:06 +0100, Stefan Wahren wrote:
> Hi Nicolas,
>=20
> Am 07.01.20 um 18:24 schrieb Nicolas Saenz Julienne:
> > The Raspberry Pi 4 depends on LPAE in order to use its PCIe port, which
> > is essential, as it ultimately provides USB2/3 connectivity. As this
> > setup doesn't fit any generic purpose configuration this adds
> > bcm2711_defconfig which is based on the current Raspberry Pi foundation
> > config file[1] with as little changes as possible
>=20
> i really dislike the Foundation config file, because it contains so many
> unnecessary features. Bisecting with such a kernel config is horrible.
>=20
> How about finding a compromise between bcm2835_defconfig and
> multi_v7_defconfig + LPAE?

If there is a consensus this is the right approach (creating a new config
file), I'll be happy to try that out.

Now that I think of it, maybe we shouldn't add bcm2711_thermal into
multi_v7_defconfig.

Regards,
Nicolas


--=-vwyhc/iY3H5c6/B9T0Uh
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl4UyckACgkQlfZmHno8
x/4TWwf+N1kMZUeYu3KkZhj6rIrwQPenFhPmhuIKOmAW4imMGNHYaxKFRgG4FTf3
9023yNOuqmscpCycWPH1/lxA0SIWIZ4MI/MotvlKnQhFICjtJLRP0MmZHK0Pn0dm
4o+VZJZRwGjSYOGhCZTi3lrnDmSv5MmlmJPkSOvBwlHvDxDFdZnld0bSMAuOHi5J
+I1kCILWreHI63WalnD8UlaPWjIYVjlSJ4obi9k7k5hTa+PNJVes8CZvkIOnn1c6
+VH8H7YmbhwyMity9f2+4MSDZVPkGf83ibYaIquHaXNC9iSzC3fdKj9XBFmlXtTS
IpbYFYkRpI1bED5DeC7Rlw3h1pZkbw==
=KEm+
-----END PGP SIGNATURE-----

--=-vwyhc/iY3H5c6/B9T0Uh--



--===============0280487228264102413==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel

--===============0280487228264102413==--


