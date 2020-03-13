Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B1D6184847
	for <lists+linux-rpi-kernel@lfdr.de>; Fri, 13 Mar 2020 14:38:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JbzYEauDepbNJ2W9ug7jzvg9E5Dx1GpRuyZnh2k2MdY=; b=uMhvlYo+YAS60c/9WrKjECGk6
	37CI58GB9FoHFO38lR077I806cH5SVI6RK00e0ZJH1zBE6rhsuKbHXF6JMU3dE76ptqRlmS9A9XgG
	SfsinrqYlQTgqfs8o7GxPPzx9RIzlNhsshyOfkF6ORYQyzbyOYEuHbMPj/iZC+eI3yzmdePEM15Vv
	ly/O3IigcuJzOgUhRrtsCHTTJ4l6/UHewwLfYPsDawSGBN7iibKtsWY1ACEYLpRp8uTr5eawLN9VH
	CKoLjdttBIgE2fBUBGKV5cKXzkQl2f6dnweWtFUSRDx3JTLCyEAU/GuoL0hmnE87JSXDEbbW46Ond
	iwiCrtZ+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCkVe-0005Gr-N0; Fri, 13 Mar 2020 13:37:54 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCkVb-0005GT-Dg
 for linux-rpi-kernel@lists.infradead.org; Fri, 13 Mar 2020 13:37:52 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 0EBFEAB98;
 Fri, 13 Mar 2020 13:37:50 +0000 (UTC)
Message-ID: <5e712df62569b7f1e7fe23ca3c96095115342382.camel@suse.de>
Subject: Re: [PATCH 2/2] staging: bcm2835-camera: Use designators to init
 V4L2 controls
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Stefan Wahren <stefan.wahren@i2se.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Dave Stevenson
 <dave.stevenson@raspberrypi.org>
Date: Fri, 13 Mar 2020 14:37:49 +0100
In-Reply-To: <1584049059-6772-3-git-send-email-stefan.wahren@i2se.com>
References: <1584049059-6772-1-git-send-email-stefan.wahren@i2se.com>
 <1584049059-6772-3-git-send-email-stefan.wahren@i2se.com>
User-Agent: Evolution 3.34.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_063751_608395_9E1CBAD2 
X-CRM114-Status: UNSURE (   8.03  )
X-CRM114-Notice: Please train this message.
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
Cc: devel@driverdev.osuosl.org, linux-rpi-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1211926352296137279=="
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org


--===============1211926352296137279==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-T9K9GSOSBduXnP/Fp9VY"


--=-T9K9GSOSBduXnP/Fp9VY
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2020-03-12 at 22:37 +0100, Stefan Wahren wrote:
> The initializer lists for the V4L2 controls are hard to read.
> So improve this by using designators.
>=20
> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
> ---

Reviewed-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>


--=-T9K9GSOSBduXnP/Fp9VY
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl5rjK0ACgkQlfZmHno8
x/5Vhgf8DPu4Lw8wytH0r96hjKBxhr8+SICHTsnDRhoz+mhzgfDy3UNcKE5FBJEc
WVfofTsCttXEAgVXmmrt2ab1yJpT3UHSq8C+3ZxOo9uQtY4mjWdkf29t0GsbdCQE
8Dbe28B6Kdb4O4LQhL19uJ+9KROJPLTJicveNAKZ2sPb8IcrbDgtp0MhLT3a6vz/
hBRB6Rarlu+vufrNfJvUjDUIyerpHAm7XyWCuV2TEzX//XTTcGwMPcJUV/WFTRt8
tHd+no4B9bl7kXWdgqtMIggR/LUvnOZ+vXq13vjV8OHY+matmM5gPvh4B4zOSWXE
Gdv5gL9xOoS4nE8xRyH9qWFHelauyQ==
=nA3f
-----END PGP SIGNATURE-----

--=-T9K9GSOSBduXnP/Fp9VY--



--===============1211926352296137279==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel

--===============1211926352296137279==--


