Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20512105A79
	for <lists+linux-rpi-kernel@lfdr.de>; Thu, 21 Nov 2019 20:39:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XdjxPtLbLqte4uhzy14YQ7FRy2fnOYASWxHSgp1nO7E=; b=SzKOBnQuBCZQBpRYoy1vu9bfr
	3bSDrOxSyGJLOsKE9fsmJSwb90h7ONUNgse7+J4t6UQcIYHAb2rUwGAA8L7Wsa8Upw/Cd/zob/es3
	zKWpAmIYGQj/Et2IoWuuZPIteXXM2d8R/Ya8yYfoI5S72deKti/WE4kTeBT986sSWALww4ua0T/iY
	szfhs00mO7EBN8loNwSe2ry/vP9Zmj6q4kXMXd5WaDSZaKw4KWl68cFhcynoXZm5OHXLh3M8oJrq5
	tJPnw0HiMDdH5lVF9LWpm2YkKYmuhcKGLrmSf2zjmPgG3OyvdtE9QfWyCGCCsIf8uXxoao16DC3QV
	CU+6rcHWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXsIG-0002h4-SD; Thu, 21 Nov 2019 19:39:08 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXsI7-0002gU-Kg
 for linux-rpi-kernel@lists.infradead.org; Thu, 21 Nov 2019 19:39:06 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id BEF1FAB7D;
 Thu, 21 Nov 2019 19:38:57 +0000 (UTC)
Message-ID: <1a953395f7b231127fce6ca46fcf78ba6dc9bf4d.camel@suse.de>
Subject: Re: [PATCH v2 0/4] staging: vchiq: Fix vchiq_read return value in
 case of error
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Marcelo Diop-Gonzalez <marcgonzalez@google.com>, 
 gregkh@linuxfoundation.org, eric@anholt.net, wahrenst@gmx.net
Date: Thu, 21 Nov 2019 20:38:55 +0100
In-Reply-To: <20191120202102.249121-1-marcgonzalez@google.com>
References: <cover.1574253964.git.marcgonzalez@google.com>
 <20191120202102.249121-1-marcgonzalez@google.com>
User-Agent: Evolution 3.34.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_113905_545374_75025D7C 
X-CRM114-Status: GOOD (  13.94  )
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
Content-Type: multipart/mixed; boundary="===============8372162121343001510=="
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org


--===============8372162121343001510==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-MwIPn4t8mzotI4jgdBxl"


--=-MwIPn4t8mzotI4jgdBxl
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Marcelo,

On Wed, 2019-11-20 at 15:20 -0500, Marcelo Diop-Gonzalez wrote:
> This is a proposed fix of an issue regarding the handling of positive
> return values from copy_to_user() in vchiq_read(). It looks like the
> struct dump_context passed to the vchiq_dump() function keeps track
> of the number of bytes written in the context->actual field. When
> copy_to_user() returns a positive value, this is set to -EFAULT. The
> problem is that this is never returned to the user, and instead the
> function continues, adding the number of bytes that should have
> been copied to context->actual.
>=20
> Running the following program:
>=20
> #include <stdio.h>
> #include <stdlib.h>
> #include <fcntl.h>
> #include <unistd.h>
> #include <errno.h>
>=20
> int main(int argc, char **argv) {
>         int fd =3D open("/dev/vchiq", 0);
>         if (fd < 0)
>                 exit(-1);
>         sbrk(getpagesize());
>         char *bad_buf =3D sbrk(0)-100;
>         int x =3D read(fd, bad_buf, 2000);
>         printf("%d %d\n", x, errno);
>         puts(bad_buf);
> }
>=20
> gives this output:
>=20
> -1 1
> State 0: CONNECTED
>   tx_po
>=20
>=20
>   Remote: slots 2-32 tx_pos=3D578 recycle=3D1f
>     Slots claimed:
>=20
> Note the mangled output and incorrect errno value. Messing with the
> constants in that toy program changes the results. Sometimes read()
> returns with no error, sometimes it returns with a wrong error code,
> sometimes with the right one. But it seems that it only ever returns an
> error at all accidentally, due to the fact that the comparison between
> context->actual and context->space in vchiq_dump() is unsigned, so that
> that function won't do anything else if it ever sets context->actual
> to a negative value.
>=20
> After this patchset, the above program prints this:
>=20
> -1 14
> State 0: CONNECTED
>   tx_pos=3Db4a218(@165de6b4), rx_pos=3Dae0668(@f02b54f4)
>   Version: 8 (min 3)
>   Stats
>=20
> Help with testing would be appreciated. So far I've basically just
> diffed the output of 'cat /dev/vchiq', run the program above with
> a few different values, and run vchiq_test a few times.
>=20
> These were applied to the staging-next branch of the tree
> at git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git

For the whole series:

Reviewed-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

Thanks,
Nicolas


--=-MwIPn4t8mzotI4jgdBxl
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl3W588ACgkQlfZmHno8
x/6G/Af+LBq5JWfSJQufzmjeSyDpF2U3LWfHKXt/RYNHBAW3lupHgIQJZZvKzDHd
/+/Ze0ztgTaOJHNvbxEck/6m1JRSNFjpOI5e8z3cJgnnsR2G71/CP7nDy8v6V2WK
htVVti9ETaz0NMnT/iEBoxuQXUimNzaCQ9iXxIbsLOSWur3tsjlfgVka08kdZT54
biS/DLlJsadBBrmZCoHcvt+JQ6lZHRuW5TMZmUiZhdfbHfGekf3/tuam4WgcbFdg
FYsBjsxw++hFhGATMrSihkfxpDWm77ZxiQsleueuDaq7vD3nD9IauNxr843K5Iwv
HGia6UtF36BJNeF33vUlbA08/GqyAw==
=SSQ2
-----END PGP SIGNATURE-----

--=-MwIPn4t8mzotI4jgdBxl--



--===============8372162121343001510==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel

--===============8372162121343001510==--


