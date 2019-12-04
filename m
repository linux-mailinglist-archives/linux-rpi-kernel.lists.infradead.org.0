Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CEC0113632
	for <lists+linux-rpi-kernel@lfdr.de>; Wed,  4 Dec 2019 21:13:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4ClxsiVPU6XxiNEur4pwKJm8nDUu9+PtlL6uiB/xyak=; b=VVWOhSmtWT13DQy3c0AZEEMIn
	3vjQnBuRdY0drBDe2vAH58IVs6HpfUl84MxQzqwjmKZysLcCMayUdeTy0Hzq5IXPxWIDYJETK7+lS
	isfc+7Wywe49sCy6M67idbqFAhpnrSUM9TXLnSM2FgdSgcDSs7FKf0oKzrBEx6sGhzQuGfqzghiZg
	juw76jc8wcHLOaSiMejeb4Wk1o1H/JGpLJbYnlwg+/pT3SFey1+e7ybK4JJkpmcoD/BUcoxMrM+/B
	yog3GN65awCkSoFQMarsHj0nK33DSoAt85fMbFzSf63Sqy9+328pYyHnmSOoF5sELU3XcbYYa/j0f
	dKqfCEt4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icb1j-0007Zg-1u; Wed, 04 Dec 2019 20:13:35 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icb1Z-0007QC-0l
 for linux-rpi-kernel@lists.infradead.org; Wed, 04 Dec 2019 20:13:26 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 48F3BB1EC;
 Wed,  4 Dec 2019 20:13:23 +0000 (UTC)
Message-ID: <f0f68c001a94f72b05d188f1089f24e78552f276.camel@suse.de>
Subject: Re: [PATCH] staging: vchiq: call unregister_chrdev_region() when
 driver registration fails
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Marcelo Diop-Gonzalez <marcgonzalez@google.com>, 
 gregkh@linuxfoundation.org, wahrenst@gmx.net
Date: Wed, 04 Dec 2019 21:13:21 +0100
In-Reply-To: <20191203153921.70540-1-marcgonzalez@google.com>
References: <20191203153921.70540-1-marcgonzalez@google.com>
User-Agent: Evolution 3.34.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_121325_230661_7383EE3F 
X-CRM114-Status: GOOD (  11.81  )
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
Content-Type: multipart/mixed; boundary="===============6634860872265588401=="
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org


--===============6634860872265588401==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-5919c0yuJGALPpC6G7SP"


--=-5919c0yuJGALPpC6G7SP
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 2019-12-03 at 10:39 -0500, Marcelo Diop-Gonzalez wrote:
> This undoes the previous call to alloc_chrdev_region() on failure,
> and is probably what was meant originally given the label name.
>=20
> Signed-off-by: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
> ---
>  drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.=
c
> b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> index 02148a24818a..4458c1e60fa3 100644
> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> @@ -3309,7 +3309,7 @@ static int __init vchiq_driver_init(void)
>  	return 0;
> =20
>  region_unregister:
> -	platform_driver_unregister(&vchiq_driver);
> +	unregister_chrdev_region(vchiq_devid, 1);
> =20
>  class_destroy:
>  	class_destroy(vchiq_class);

Thanks!

Reviewed-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>


--=-5919c0yuJGALPpC6G7SP
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl3oE2EACgkQlfZmHno8
x/6+sgf9HmeLpXdYIHDUZKujikIFbM9ru2J+O3FWdI+1K+j0y98IptQKpGiIj+H2
sEywi2FeYJ1a9IeApE1yIpiLJv+tASrVe6jd+Z3E3InVg5iaadKe17Ce0ngZYeww
xKDomH5Iz3KKT/wyvPhvJSFTltdXNlWFpJ6G9TzUSewg5Hu3PGVYFbaV891HC7yq
125Qs2DdDSJXK/8T/KIjEb0uVSFILXnQgc0tuJIWtWUSl/WJpxPHXSefg3Ujm2Dn
CRR+MJUNM+a9zu2rasusqtUrUMrukYCs3brQSdaAXs0m4Gc0TJSjrJ0ex7uwN30T
GS0hj1/CJspm74dduNb0xFN6IkPAZQ==
=fFRZ
-----END PGP SIGNATURE-----

--=-5919c0yuJGALPpC6G7SP--



--===============6634860872265588401==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel

--===============6634860872265588401==--


