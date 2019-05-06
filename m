Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72CEC150D1
	for <lists+linux-rpi-kernel@lfdr.de>; Mon,  6 May 2019 17:59:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=iE1hTH/F1WaYLZp+yTmpW2tJrySBaVZDYhcQIiKStc8=; b=Vo5xJUN0uD4YL1vDuzLncScgN
	iRp0iOeVrNBmda3Icu1VjCL/RdcN53ITJ54+HYr7UK8cqQrPkreFDQaBNmhWp18NtaPviR4S/4hwg
	mKgizvBVFDSx7p0MTSmXt77JpIjChuOdxjEOQOhXFbbF8Gftj+9siS8r5K/fS2bzgS8w83vMllYie
	H8iiuyeDM6hKN/WRpMjcFkUGeqTaHisrEGXXIFjICR0fLj9svULJx6Ceht8SoRkp/MUtWOlHiNJkB
	m86do0PrTqUOyQNuAB/GnWF5lhGxO7YiNSOy+a7mj5GBjO1DkNbatigG7WipfsO04VLuEVYnIhMEB
	21TYRxMnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNg1O-0001Y9-SZ; Mon, 06 May 2019 15:59:18 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNg1G-0001SC-4R; Mon, 06 May 2019 15:59:11 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 4DCC3ADDC;
 Mon,  6 May 2019 15:59:07 +0000 (UTC)
Message-ID: <686a4d50696a87b9cbe2a5908737ce91faec5313.camel@suse.de>
Subject: Re: [PATCH v2 2/3] staging: vchiq: revert "switch to
 wait_for_completion_killable"
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Dan Carpenter <dan.carpenter@oracle.com>
Date: Mon, 06 May 2019 17:59:04 +0200
In-Reply-To: <20190506152039.GT2239@kadam>
References: <20190506144030.29056-1-nsaenzjulienne@suse.de>
 <20190506144030.29056-3-nsaenzjulienne@suse.de>
 <20190506152039.GT2239@kadam>
User-Agent: Evolution 3.30.5 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_085910_326397_93A6A084 
X-CRM114-Status: GOOD (  11.11  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-rpi-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-rpi-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rpi-kernel>, 
 <mailto:linux-rpi-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rpi-kernel/>
List-Post: <mailto:linux-rpi-kernel@lists.infradead.org>
List-Help: <mailto:linux-rpi-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel>, 
 <mailto:linux-rpi-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1455750447317048524=="
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org


--===============1455750447317048524==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-HWk7wVSA1bmO90ELmSsB"


--=-HWk7wVSA1bmO90ELmSsB
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Dan, thanks for reviewing.

On Mon, 2019-05-06 at 18:20 +0300, Dan Carpenter wrote:
> On Mon, May 06, 2019 at 04:40:29PM +0200, Nicolas Saenz Julienne wrote:
> > @@ -1740,7 +1740,8 @@ parse_rx_slots(struct vchiq_state *state)
> >  					&service->bulk_rx : &service->bulk_tx;
> > =20
> >  				DEBUG_TRACE(PARSE_LINE);
> > -				if (mutex_lock_killable(&service->bulk_mutex)) {
> > +				if (mutex_lock_killable(
> > +					&service->bulk_mutex) !=3D 0) {
>=20
> This series does't add !=3D 0 consistently...  Personally, I would prefer
> we just leave it out.  I use !=3D 0 for two things.  1)  When I'm talking
> about the number zero.
>=20
> 	if (len =3D=3D 0) {
>=20
> Or with strcmp():
>=20
> 	if (strcmp(a, b) =3D=3D 0) { // a equals b
> 	if (strcmp(a, b) < 0) {  // a less than b.
>=20
> But here zero means no errors, so I would just leave it out...

I agree, I'll fix it.

Regards,
Nicolas


--=-HWk7wVSA1bmO90ELmSsB
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAlzQWcgACgkQlfZmHno8
x/5C3Qf+L5Sma8zaKvvi3d9DSw4lZXBIQpyTCI5G81wW2l+4ax2oZnUNZlLpu7lj
sRJy5o+hSJExXkx/3b3oBUEojchKWCZPC7ZI76aq7uhRK93Q7Yf4jem9wUJvsOwf
kvsdFhSIO7F/gxfNfZUDn2whfAN5FPBvSTBqq3e++k/1+RTqe/y65rAbJIeIkmrL
s9qVV+DWownkHzfGwsVJ1paJmvrLuwYOlfsPXIlQk3y8g+GSClXRsCWvPJxeS4vi
2Qzs/+AB6kDiVzDdxj7YDF1puf1d4xliFfvMJnUR7iEdzOG0IQZAp+qMktTvOKX8
n//mOh1eQcHx4P/2ajTxj8/5P5Wieg==
=QGu9
-----END PGP SIGNATURE-----

--=-HWk7wVSA1bmO90ELmSsB--



--===============1455750447317048524==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel

--===============1455750447317048524==--


