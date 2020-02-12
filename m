Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 678D015B04D
	for <lists+linux-rpi-kernel@lfdr.de>; Wed, 12 Feb 2020 19:57:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LSSkEr0DncJq+MPnMgyDcNH3+z/6odK3nHeH5fasiLk=; b=evLYnC1+4Nxzq/Z8u5P7/9+sN
	vT9D4qlWOPI05zdVX1CcMntwLbpTuVLqemcmAsDIVXQ7tA7lBv3oW0y6pZx+MPNoHld0eNGuza5Mt
	nf+vrXoWkBk2RXms/evk6JFJQSNSONx3AQ2SjC1c8PF1Re+jcmLJuVQpDUen5fyppia+6k6rrj/VA
	xHZRvnjRN6ChSb7NiV3AUY9+DE4mqjj9+J1GPvwvuPvJf4qWxQZxct09gBz4MQhL3JuZHpOrqUC3Q
	O73pyWCAXtH612Lwne2z1LdXNEIR5DVQjcot4d2VJGZZmN9R7nhG74VJ4s+j1gJnuznj0e/agAW8N
	9MToeSalg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1xCq-0004UW-QQ; Wed, 12 Feb 2020 18:57:52 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1xCm-0004Tu-RX
 for linux-rpi-kernel@lists.infradead.org; Wed, 12 Feb 2020 18:57:50 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 518A5AC4B;
 Wed, 12 Feb 2020 18:57:46 +0000 (UTC)
Message-ID: <04e1c82b5cb08773ac9e8f0e1c33adc8cbc7c85d.camel@suse.de>
Subject: Re: [PATCH] ARM: dts: bcm283x: increase dwc2's RX FIFO size
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Pavel Hofman <pavel.hofman@ivitera.com>, Minas Harutyunyan
 <hminas@synopsys.com>, Rob Herring <robh+dt@kernel.org>, 
 linux-usb@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-rpi-kernel@lists.infradead.org
Date: Wed, 12 Feb 2020 19:57:43 +0100
In-Reply-To: <22beb919-a3c6-33c0-8d3f-070061a6c853@ivitera.com>
References: <22beb919-a3c6-33c0-8d3f-070061a6c853@ivitera.com>
User-Agent: Evolution 3.34.3 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_105749_186055_68DDEE08 
X-CRM114-Status: GOOD (  22.61  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Content-Type: multipart/mixed; boundary="===============3139204749822320369=="
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org


--===============3139204749822320369==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-BbFqBP9cWw8UjvP0rUr/"


--=-BbFqBP9cWw8UjvP0rUr/
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Pavel,

On Fri, 2020-02-07 at 22:12 +0100, Pavel Hofman wrote:
> The previous version of the dwc2 overlay set the RX FIFO size to
> 256 4-byte words. This is not enough for 1024 bytes of the largest
> isochronous high speed packet allowed, because it doesn't take into
> account extra space needed by dwc2.
>=20
> Below is a detailed calculation which arises from dwc2 documentation:
>=20
> * RAM for SETUP Packets: 4 * n + 6 locations in Scatter/Gather DMA mode
> and 5 * n+8 locations in Slave and Buffer DMA mode must be reserved in
> the RxFIFO to receive up to n SETUP packets on control endpoints, where n
> is the number of control endpoints the device controller supports.
>=20
> bcm283x: 5*n+8. The Broadcom core has 1 control EP (n=3D1), so 13 locatio=
ns
>=20
> * One location for Global OUT NAK
>=20
> bcm283x: 1 location
>=20
> * Status information is written to the FIFO along with each received
> packet. Therefore, a minimum space of (Largest Packet Size / 4) + 1 must
> be allotted to receive packets. If a high-bandwidth endpoint is enabled,
> or multiple isochronous endpoints are enabled, then at least two (Largest
> Packet Size / 4) + 1 spaces must be allotted to receive back-to-back
> packets. Typically, two (Largest Packet Size / 4) + 1 spaces are
> recommended so that when the previous packet is being transferred to AHB,
> the USB can receive the subsequent packet. If AHB latency is high, you
> must allocate enough space to receive multiple packets. This is critical
> to prevent dropping of any isochronous packets.
>=20
> bcm283x: (1024/4) +1 =3D 257 locations. For MC >1: 2 * 257 =3D 514 locati=
ons
>=20
> * Along with last packet of each endpoint, transfer complete status
> information is also pushed in to the FIFO.
>=20
> bcm283x: The core should have 5 IN and 5 OUT EP's.
> 1 location for each EP - 10 locations.
>=20
> It's for the case when all EPs are simultaneously completing transfers.
>=20
> * An additional location for EPDisable status for each endpoint is
> also required.
>=20
> bcm283x: 1 location for each EP - 10 EP's - 10 locations
> It's for case if EP simultaneously disabled.
>=20
> * Typically, two locations for each OUT endpoint is recommended.
>=20
> bcm283x: 5*2 =3D 10 locations
>=20
> Total: 13 + 1 + 257 + 10 +10 + 10 =3D 301 locations
>=20
> Safer is 301 + 257 (for MC>1) =3D 558 locations.
>=20
> Signed-off-by: Phil Elwell <phil@raspberrypi.com>
> Signed-off-by: Pavel Hofman <pavel.hofman@ivitera.com>

It'd be nice if you summarized a little. Halfway between this and the first
revision of this patch. For example:

[...]

RX FIFO's size is calculated based on the following (in 4byte words):
 - 13 location for SETUP packets
 - 1 location for Global OUT NAK
 - 2 * 257 locations for status information and the received packet. Note t=
hat
   typically two spaces are recommended so that when the previous packet is
   being transferred to AHB, the USB can receive the subsequent packet.
 - etc...

Also, what is MC in your description? If in doubt just drop it a stick with=
 the
explanation above.

Regards,
Nicolas

> ---
>  arch/arm/boot/dts/bcm283x-rpi-usb-otg.dtsi        | 2 +-
>  arch/arm/boot/dts/bcm283x-rpi-usb-peripheral.dtsi | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/arch/arm/boot/dts/bcm283x-rpi-usb-otg.dtsi
> b/arch/arm/boot/dts/bcm283x-rpi-usb-otg.dtsi
> index e2fd961..20322de 100644
> --- a/arch/arm/boot/dts/bcm283x-rpi-usb-otg.dtsi
> +++ b/arch/arm/boot/dts/bcm283x-rpi-usb-otg.dtsi
> @@ -1,7 +1,7 @@
>  // SPDX-License-Identifier: GPL-2.0
>  &usb {
>  	dr_mode =3D "otg";
> -	g-rx-fifo-size =3D <256>;
> +	g-rx-fifo-size =3D <558>;
>  	g-np-tx-fifo-size =3D <32>;
>  	/*
>  	 * According to dwc2 the sum of all device EP
> diff --git a/arch/arm/boot/dts/bcm283x-rpi-usb-peripheral.dtsi
> b/arch/arm/boot/dts/bcm283x-rpi-usb-peripheral.dtsi
> index 0ff0e9e..1409d1b 100644
> --- a/arch/arm/boot/dts/bcm283x-rpi-usb-peripheral.dtsi
> +++ b/arch/arm/boot/dts/bcm283x-rpi-usb-peripheral.dtsi
> @@ -1,7 +1,7 @@
>  // SPDX-License-Identifier: GPL-2.0
>  &usb {
>  	dr_mode =3D "peripheral";
> -	g-rx-fifo-size =3D <256>;
> +	g-rx-fifo-size =3D <558>;
>  	g-np-tx-fifo-size =3D <32>;
>  	g-tx-fifo-size =3D <256 256 512 512 512 768 768>;
>  };


--=-BbFqBP9cWw8UjvP0rUr/
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl5ESqcACgkQlfZmHno8
x/69BAf+IvcAygOJxISYiTuhVG7YF6DERXjwAEqqlaRj/g4Na1z/r48bPpgVXSRV
aoGaoXQ3iPoFfPIeirUN6n5DjAqkfSyIAy+Ldyw/ZnLLFMfHQ0olbXLOON/WH/0f
3Z0oVVDSYNI0DTa8qph2i08lJg1lbar+sCslVPyzwnVu87rjJjh0NOe5UqXrljwN
8mP68SaOzLzZKhHSEAU68bQGTvgbbCrI9MjxqKFB9Ac5XondPmuHkm8VwVdNlY1a
eCVEKAyZspAHEj6P4y3qLF2PGTK/Ltarfpp8xHeev3vqnC4fVNwB5HMgXuLfGw8H
Z1XySh+4RQG1sA2qcxxbRwNuJlvzmw==
=ts39
-----END PGP SIGNATURE-----

--=-BbFqBP9cWw8UjvP0rUr/--



--===============3139204749822320369==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel

--===============3139204749822320369==--


