Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC8E7105A86
	for <lists+linux-rpi-kernel@lfdr.de>; Thu, 21 Nov 2019 20:41:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=F939Pxu+2VcpivOxxBSOSbgeNFDqd6tzr7ASEoA2dag=; b=g9HH/q6Di5HRmLzfT9GJlUwix
	6MpXgra9L5514GYuUdpRYeIgzFE3Bh00kGoUqKLBd3FX26tYaXbEuKgM3q30ylEb4ukBbENul1Usa
	c/Apz1o03ztEXThZIG5JEA82xhmtqE8+GHqq6ZzH5keZDBpJwALFGPUu0i0K6CrHO89BzrZXdUDbc
	ulcqqmuyk7CPD6AJ1KeMnunZwXBcdiySsAXxOGTPbvLYzcccp1+M9XuUXny60vIW6DS8VDEwnGaNP
	PftwP6fKyeoOYutFZFxoDSXAZAohstVzxblxAky250FfW0/pU9YQMte7QkHeKbxfrUyk7bjX1mjzo
	X6uPcuKuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXsKk-0004J0-Ek; Thu, 21 Nov 2019 19:41:42 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXsKi-0004Ih-2T
 for linux-rpi-kernel@lists.infradead.org; Thu, 21 Nov 2019 19:41:41 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id C0377AE4D;
 Thu, 21 Nov 2019 19:41:38 +0000 (UTC)
Message-ID: <8d445b9a1165f41b205fa9c5224aa1d76897657f.camel@suse.de>
Subject: Re: [PATCH 0/3] staging: vchiq: Fix vchiq_read return value in case
 of error
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Stefan Wahren <wahrenst@gmx.net>, Marcelo Diop-Gonzalez
 <marcgonzalez@google.com>, gregkh@linuxfoundation.org, eric@anholt.net
Date: Thu, 21 Nov 2019 20:41:37 +0100
In-Reply-To: <f2f8b72e-3d56-e9e5-f381-5b80a09490dc@gmx.net>
References: <cover.1574253964.git.marcgonzalez@google.com>
 <f2f8b72e-3d56-e9e5-f381-5b80a09490dc@gmx.net>
User-Agent: Evolution 3.34.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_114140_262769_91F05FAB 
X-CRM114-Status: UNSURE (   8.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devel@driverdev.osuosl.org, linux-rpi-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============4538367594144126204=="
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org


--===============4538367594144126204==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-WGoL+syLyjTGtiSuxCib"


--=-WGoL+syLyjTGtiSuxCib
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2019-11-21 at 11:42 +0100, Stefan Wahren wrote:
[...]
> > Help with testing would be appreciated. So far I've basically just
> > diffed the output of 'cat /dev/vchiq', run the program above with
> > a few different values, and run vchiq_test a few times.
>=20
> i consider this as sufficient, but i'm not the VCHIQ expert.

Agree, the patch only affects the vchiq state dump code, I think it's OK wi=
th
this test.

Regards,
Nicolas


--=-WGoL+syLyjTGtiSuxCib
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl3W6HEACgkQlfZmHno8
x/4WfAgAjval470+UD7tsOFDhfN/YfaDpBvZ0BC5MTbcJwHM8Q4zeyq1P9bgg84a
/iAjm6uKURKl/1QcV8KNZ9IswMW+ottBOTHNH5Orlj7W4tH0hNXjQKubIEMh9aJl
x8PFresS9aZvvZCSSG9sZvcF7VBW+cZSNa0QXZcLJ2tszzEzVdz0g9hJb61b6hm2
HhhgwOuInFblV/T9wX1w3nOtsPlG1+mePAiQXTAe1f8EdouBu0b5Id/JAAyDrA1/
+NfcumG3HG14hOrB4d1jZyEw8rgr3oU9APSy/mCp2CC4vQLUuAnEKeJ1rrX44bAg
wCB6ftUYDOnu1ayEAMwDc6Ms4ItVKA==
=bfV9
-----END PGP SIGNATURE-----

--=-WGoL+syLyjTGtiSuxCib--



--===============4538367594144126204==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel

--===============4538367594144126204==--


