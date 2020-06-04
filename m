Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2C4F1EE9CB
	for <lists+linux-rpi-kernel@lfdr.de>; Thu,  4 Jun 2020 19:51:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LopLb3HJjHWX77uVlNJV8CzejSrySJTBMV8M5amqqIo=; b=qeJsA9196OnQZ2bp5jjA8X4Bu
	9GOtxa68styT3BPDyZzmhWM6L0VDoqx8VvvCC+mAyVTk3mxzrWlHpzbw1xseuBTQLOGAJih9LiBIP
	Yfzfm7WZd66oy29HqA2QHdcRfgOwoEuWQ6bgUZlp0Cq37N+woSs5isqAQraGL+jUXLAS2olW+Edeo
	5XB4G8C7yNMyvsNYCcZ7CkaEaXHMwW6CcXWdl5EcuBPbocx68vVvd3OZMp76nE1j0yE/9kAY7pbVC
	gX5+kIbyVe20FYg+ngoYHC6fMGd743MpGhXmh8WzTUjnKpAMszPDDG29ZgtEW1RhY2ZKRCbWTUDjY
	MLtXzIrbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgu0z-0000vQ-TW; Thu, 04 Jun 2020 17:50:53 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgu0s-0000oh-6h; Thu, 04 Jun 2020 17:50:47 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id EC828B145;
 Thu,  4 Jun 2020 17:50:46 +0000 (UTC)
Message-ID: <47efdefe8873d8907ea20aa7f3ba025227ee3699.camel@suse.de>
Subject: Re: [PATCH v3 03/25] firmware: rpi: Only create clocks device if we
 don't have a node for it
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Maxime Ripard <maxime@cerno.tech>
Date: Thu, 04 Jun 2020 19:50:42 +0200
In-Reply-To: <f0b979221dedec7db9cab201388bf44c0d987a3d.1590594293.git-series.maxime@cerno.tech>
References: <cover.662a8d401787ef33780d91252a352de91dc4be10.1590594293.git-series.maxime@cerno.tech>
 <f0b979221dedec7db9cab201388bf44c0d987a3d.1590594293.git-series.maxime@cerno.tech>
User-Agent: Evolution 3.36.2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_105046_391819_91582B08 
X-CRM114-Status: GOOD (  18.42  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Tim Gover <tim.gover@raspberrypi.com>, linux-kernel@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8403984548130450084=="
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org


--===============8403984548130450084==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-dbG+zekS2b9Psb4A2LAz"


--=-dbG+zekS2b9Psb4A2LAz
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 2020-05-27 at 17:44 +0200, Maxime Ripard wrote:
> The firmware clocks driver was previously probed through a platform_devic=
e
> created by the firmware driver.
>=20
> Since we will now have a node for that clocks driver, we need to create t=
he
> device only in the case where there's no node for it already.
>=20
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---

Reviewed-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

Regards,
Nicolas

>  drivers/firmware/raspberrypi.c | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
>=20
> diff --git a/drivers/firmware/raspberrypi.c b/drivers/firmware/raspberryp=
i.c
> index ef8098856a47..b25901a77c09 100644
> --- a/drivers/firmware/raspberrypi.c
> +++ b/drivers/firmware/raspberrypi.c
> @@ -208,6 +208,20 @@ rpi_register_hwmon_driver(struct device *dev, struct
> rpi_firmware *fw)
> =20
>  static void rpi_register_clk_driver(struct device *dev)
>  {
> +	struct device_node *firmware;
> +
> +	/*
> +	 * Earlier DTs don't have a node for the firmware clocks but
> +	 * rely on us creating a platform device by hand. If we do
> +	 * have a node for the firmware clocks, just bail out here.
> +	 */
> +	firmware =3D of_get_compatible_child(dev->of_node,
> +					   "raspberrypi,firmware-clocks");
> +	if (firmware) {
> +		of_node_put(firmware);
> +		return;
> +	}
> +
>  	rpi_clk =3D platform_device_register_data(dev, "raspberrypi-clk",
>  						-1, NULL, 0);
>  }


--=-dbG+zekS2b9Psb4A2LAz
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl7ZNHIACgkQlfZmHno8
x/4/+Qf+KoDl73XDh5SQOyDp+euseA0GBAbtp3C2cPcPRD4caDDDoNq+9Qx6HvjI
5dFfT4xdFV8Yyt9WXBFKJ3cWrJ8ubxes1FksaHAaAel7F8yiH4KS7iCm2A0DIW2P
fQMlPSyuSYCd5JpvBBoKxRzaMqkzY8QclpbDwLWhTOu06h1vBQR+YiulI4RdPVxe
r4payGStM+QYVGW+RmNv+XbtljaO5ELGf001cS5rCjuDsbfkQz+pdKvA2HbW6rIy
gPxDIgznfjTur/h/T7grnHXePiXvrMhleHdHA2ISs6b6/Hb0uhimPjKqO4EIRGaz
utM1xP1bhKzZgVW9YJyIjTIj/7E8xw==
=5Iyd
-----END PGP SIGNATURE-----

--=-dbG+zekS2b9Psb4A2LAz--



--===============8403984548130450084==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel

--===============8403984548130450084==--


