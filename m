Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B992D135980
	for <lists+linux-rpi-kernel@lfdr.de>; Thu,  9 Jan 2020 13:53:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=l7A7tkxHoUZHNSMaq9e9iKoAhq2ge5P/WLbmnrm1L2I=; b=O+7N1XpaDXMqyv4eFYz9rYlFK
	UQhxZm5gDpAGqlkMD9Y3g8OqHKxkzVjL/1unQWQfgkKYGaIb86Zk7Vnj6Kz8lKY0CFrSGZ3KCXg+O
	EELkG1IsSiOFolp2VX3FogRFMoPFi8elaoI2zBuLnJre8SuhLLlOnlOHyvTWdCnNZvm6uODVLq3Lz
	deIBwxteBRlYJ+FlRWxVSf5dKCkhvb5BK8oANAqUxx2/h+DoIJTyMjRMBqctI3uFvhe7TBrPmaMGr
	EpsfnK5cdkUA7pVs5Rc1yMpkUxtPoSGGndPPNAx5N/zYPtonVhNxXusG3liq1G3VuYa7owpVB4Rm3
	Zz4x1ZLJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipXJJ-0002Kn-F5; Thu, 09 Jan 2020 12:53:13 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipXJE-0002KE-Kx
 for linux-rpi-kernel@lists.infradead.org; Thu, 09 Jan 2020 12:53:12 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id A79A5B236B;
 Thu,  9 Jan 2020 12:52:56 +0000 (UTC)
Message-ID: <b0f26f7f4c265dc9b14fba1cb4b0d4546da1f45a.camel@suse.de>
Subject: Re: [PATCH] spi: bcm2835: Raise maximum number of slaves to 4
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Lukas Wunner <lukas@wunner.de>, Mark Brown <broonie@kernel.org>
Date: Thu, 09 Jan 2020 13:52:54 +0100
In-Reply-To: <01453fd062de2d49bd74a847e13a0781cbf8143d.1578572268.git.lukas@wunner.de>
References: <01453fd062de2d49bd74a847e13a0781cbf8143d.1578572268.git.lukas@wunner.de>
User-Agent: Evolution 3.34.2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_045308_829679_C993B0EC 
X-CRM114-Status: GOOD (  13.51  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: linux-rpi-kernel@lists.infradead.org, linux-spi@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============3753323019679316588=="
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org


--===============3753323019679316588==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-dIc7VbFbXRwHFM7LWXk+"


--=-dIc7VbFbXRwHFM7LWXk+
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2020-01-09 at 13:23 +0100, Lukas Wunner wrote:
> The "RevPi Connect Flat" PLC offered by KUNBUS has 4 slaves attached
> to the BCM2835 SPI master.  Raise the maximum number of slaves in the
> driver accordingly.
>=20
> Signed-off-by: Lukas Wunner <lukas@wunner.de>
> ---

Reviewed-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

Thanks!

>  drivers/spi/spi-bcm2835.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/spi/spi-bcm2835.c b/drivers/spi/spi-bcm2835.c
> index b784c9fdf9ec..11c235879bb7 100644
> --- a/drivers/spi/spi-bcm2835.c
> +++ b/drivers/spi/spi-bcm2835.c
> @@ -68,7 +68,7 @@
>  #define BCM2835_SPI_FIFO_SIZE		64
>  #define BCM2835_SPI_FIFO_SIZE_3_4	48
>  #define BCM2835_SPI_DMA_MIN_LENGTH	96
> -#define BCM2835_SPI_NUM_CS		3   /* raise as necessary */
> +#define BCM2835_SPI_NUM_CS		4   /* raise as necessary */
>  #define BCM2835_SPI_MODE_BITS	(SPI_CPOL | SPI_CPHA | SPI_CS_HIGH \
>  				| SPI_NO_CS | SPI_3WIRE)
> =20


--=-dIc7VbFbXRwHFM7LWXk+
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl4XIiYACgkQlfZmHno8
x/53xAgAhpR+IrNKIWkC+R2shaCd4Yj99SBmS3YeSC0RCOwUUDvuXeVsqsIhZ1eT
GFY11ghFtnI1JoRLEoXl+M5G+8d1CQpERaIDWwBkkbZ3IENfieGiqY0a5qRetXIs
w5fWpUkPfZYa44uAwcsXLQ2E8b9dQTopGJlWUk1waFq3H1b0A4AFUD9TqVpg5t+e
QsLTEeYrRNd7HoKy2m9tSF++hpscCGWwYxZYQIBFO0OazrTx73H7x9+Cn+kqjpNd
DFKqhEM+N+TWryl5KcEomerNRlXMT+4UB3xTY9FGWW6PFyIP3/Dq9udiUHHFD7En
GwLzxT78n05uEF0l/QsYdAQ2hlX3OQ==
=gJlq
-----END PGP SIGNATURE-----

--=-dIc7VbFbXRwHFM7LWXk+--



--===============3753323019679316588==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel

--===============3753323019679316588==--


