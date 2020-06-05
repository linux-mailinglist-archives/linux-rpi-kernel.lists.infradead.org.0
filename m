Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4531D1EF6FF
	for <lists+linux-rpi-kernel@lfdr.de>; Fri,  5 Jun 2020 14:05:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=J223MpYZ7V0vK2q8fXTlmAcHSJiomLDXq2an7u9jQt0=; b=h06ShOmL6FciP8EjATZON9+sV
	ucEwZoa4D7ajbwQWYx0fw77m3AP9YtWNX7gvWnHMoQyebL4G0MtWL0VOe/Ys4/luu5hMoJ3PFNv5m
	cdlOzMgT3OC2cMN8WmhAPPWieSrcJxZ7MFLtVGHZpjKfxfUGgXPZY7xbkJXSCPMaClkrYly2yEwVb
	KbAmveGBdGrwonDuQPF0dlc0n3k1wjOJIvKC3lj0e8wfDELTQuUqDXo5fV1Y6r+PBIMLuZh3KlJpH
	35Uwhd/4LZvOoANNH53jfsk9QTf308rZBt+0ZNB7E9n+EQjlTUT6vTuVJ8cGC0+VDFzAPM4oy947g
	cVdPmDumQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhB67-0001vh-NL; Fri, 05 Jun 2020 12:05:19 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhB5l-0007jk-HH; Fri, 05 Jun 2020 12:04:59 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 7D510AEBE;
 Fri,  5 Jun 2020 12:04:58 +0000 (UTC)
Message-ID: <d8be3a45491224e0c91355131a9bcf605f38fb76.camel@suse.de>
Subject: Re: [PATCH v3 20/25] clk: bcm: rpi: Add an enum for the firmware
 clocks
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Maxime Ripard <maxime@cerno.tech>
Date: Fri, 05 Jun 2020 14:04:51 +0200
In-Reply-To: <c56fb0a912fe254416ed5a247e6fb6d79fb604bc.1590594293.git-series.maxime@cerno.tech>
References: <cover.662a8d401787ef33780d91252a352de91dc4be10.1590594293.git-series.maxime@cerno.tech>
 <c56fb0a912fe254416ed5a247e6fb6d79fb604bc.1590594293.git-series.maxime@cerno.tech>
User-Agent: Evolution 3.36.2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_050457_866020_DD99ECC0 
X-CRM114-Status: GOOD (  14.04  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Tim Gover <tim.gover@raspberrypi.com>, linux-kernel@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7291019546562279456=="
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org


--===============7291019546562279456==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-GP9+0KNilneDNEwCxB11"


--=-GP9+0KNilneDNEwCxB11
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 2020-05-27 at 17:45 +0200, Maxime Ripard wrote:
> While the firmware allows us to discover the available clocks, we need to
> discriminate those clocks to only register the ones meaningful to Linux.
> The firmware also doesn't provide a clock name, so having a list of the I=
D
> will help us to give clocks a proper name later on.
>=20
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  drivers/clk/bcm/clk-raspberrypi.c | 23 +++++++++++++++++++----
>  1 file changed, 19 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/clk/bcm/clk-raspberrypi.c b/drivers/clk/bcm/clk-
> raspberrypi.c
> index 5f4e2d49432f..eebd16040f8a 100644
> --- a/drivers/clk/bcm/clk-raspberrypi.c
> +++ b/drivers/clk/bcm/clk-raspberrypi.c
> @@ -18,7 +18,23 @@
> =20
>  #include <soc/bcm2835/raspberrypi-firmware.h>
> =20
> -#define RPI_FIRMWARE_ARM_CLK_ID		0x00000003
> +enum rpi_firmware_clk_id {
> +	RPI_FIRMWARE_EMMC_CLK_ID =3D 1,
> +	RPI_FIRMWARE_UART_CLK_ID,
> +	RPI_FIRMWARE_ARM_CLK_ID,
> +	RPI_FIRMWARE_CORE_CLK_ID,
> +	RPI_FIRMWARE_V3D_CLK_ID,
> +	RPI_FIRMWARE_H264_CLK_ID,
> +	RPI_FIRMWARE_ISP_CLK_ID,
> +	RPI_FIRMWARE_SDRAM_CLK_ID,
> +	RPI_FIRMWARE_PIXEL_CLK_ID,
> +	RPI_FIRMWARE_PWM_CLK_ID,
> +	RPI_FIRMWARE_HEVC_CLK_ID,
> +	RPI_FIRMWARE_EMMC2_CLK_ID,
> +	RPI_FIRMWARE_M2MC_CLK_ID,
> +	RPI_FIRMWARE_PIXEL_BVB_CLK_ID,
> +	RPI_FIRMWARE_NUM_CLK_ID,
> +};
> =20
>  #define RPI_FIRMWARE_STATE_ENABLE_BIT	BIT(0)
>  #define RPI_FIRMWARE_STATE_WAIT_BIT	BIT(1)
> @@ -31,8 +47,6 @@
> =20
>  #define A2W_PLL_FRAC_BITS		20
> =20
> -#define NUM_FW_CLKS			16
> -
>  struct raspberrypi_clk {
>  	struct device *dev;
>  	struct rpi_firmware *firmware;
> @@ -320,7 +334,8 @@ static int raspberrypi_clk_probe(struct platform_devi=
ce
> *pdev)
>  	rpi->firmware =3D firmware;
>  	platform_set_drvdata(pdev, rpi);
> =20
> -	clk_data =3D devm_kzalloc(dev, struct_size(clk_data, hws, NUM_FW_CLKS),
> +	clk_data =3D devm_kzalloc(dev, struct_size(clk_data, hws,
> +						 RPI_FIRMWARE_NUM_CLK_ID),

nit: you're allocating one structure too many right?

Acked-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

Regards,
Nicolas


--=-GP9+0KNilneDNEwCxB11
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl7aNOMACgkQlfZmHno8
x/663Af/Ue9v4O4m3tuVBEUtlVFqdD+i3sT2CM6Kgid7VjNWLvsgN8tbreLEg/kj
MSPVWTG+XKpO/gk+qom/1tuUTCXYtc69+v/ZeTUfKPr/qhrijdrgwv7MHZx53zUi
t6ZAFskKADhFQbMXPQQjXzUUwAtSf+RpWGIz2QcLpX6k3KlYkSYcVs2V5l1uxcv6
xa7cBA3m+CPK2URXdFdyrb1+xCKKL+hWPTI8Sxhb/jST92xsfV3m/nV6x9NaJweI
tqb7oybKtgK5D8nmpU7Uk5cFMrN/c+TUpgB8fC+j4Wk/laqtNI5MsIC/5oZsnXlq
JJwitiIAqvtbem36Y5KbsOjGUhW3JQ==
=ytwt
-----END PGP SIGNATURE-----

--=-GP9+0KNilneDNEwCxB11--



--===============7291019546562279456==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel

--===============7291019546562279456==--


