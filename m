Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8DCD155CC7
	for <lists+linux-rpi-kernel@lfdr.de>; Fri,  7 Feb 2020 18:25:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MVkz0jVncklBdKn5Xky5aH1Q+Df8QKHfdXOAYrDoNLs=; b=RkXncK6iua9mmDJVXywf7ewFQ
	AW00Ya9zv90fXi1YbE+5RUJ1z9YUPRVGVmpQuh3y8g3wnDOtyuZOzpgomdkPKkfQ0L59bHiG7SrTw
	mjbgBb6gBaXcaTjEsyxEfVrLCb9IWK0JxhqTeapHD0auFf5zxKow1FF2SBnthEhweir0wao6gmI9Z
	Am+1axA2UzHgYEio7wEskqDj81QuczjCZ7yc0feh2Be/AEjwWOMAhDbEAJJVQBQawCOWFA20ldLFT
	lh+1HJLnE61ZAzlJJmkeABKiebNG8dVozp9fHfg/UiZAmhJmOziJDgJHdO7dO4L/tThHu0BIeRttP
	mnF8JUaxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j07NY-0001mx-6m; Fri, 07 Feb 2020 17:25:20 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j07NV-0001mK-7Y
 for linux-rpi-kernel@lists.infradead.org; Fri, 07 Feb 2020 17:25:18 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 5B9AAAF57;
 Fri,  7 Feb 2020 17:25:11 +0000 (UTC)
Message-ID: <9b0f8daeb12ad4e5be74ff93e64c38087af199cf.camel@suse.de>
Subject: Re: [PATCH] overlays: dwc2: Increase RX FIFO size
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Pavel Hofman <pavel.hofman@ivitera.com>, Minas Harutyunyan
 <hminas@synopsys.com>, Rob Herring <robh+dt@kernel.org>, 
 linux-usb@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-rpi-kernel@lists.infradead.org
Date: Fri, 07 Feb 2020 18:25:09 +0100
In-Reply-To: <43db1d9c-6fa2-88bd-11df-6ae2f48a4ac9@ivitera.com>
References: <43db1d9c-6fa2-88bd-11df-6ae2f48a4ac9@ivitera.com>
User-Agent: Evolution 3.34.3 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_092517_418944_67270BBF 
X-CRM114-Status: GOOD (  10.91  )
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
Content-Type: multipart/mixed; boundary="===============9029614717362911384=="
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org


--===============9029614717362911384==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-yTpRgBYomwJsP1mAJVk/"


--=-yTpRgBYomwJsP1mAJVk/
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Pavel,
Could you change the patch title to something like this (see other patches
changing the device-trees, you'll see it's the common pattern):

	ARM: dts: bcm283x: increase dwc2's RX FIFO size

On Fri, 2020-02-07 at 17:30 +0100, Pavel Hofman wrote:
> The previous version of the dwc2 overlay set the RX FIFO size to
> 256 4-byte words. This sounds large enough for a 1024 byte packet (the
> largest isochronous high speed packet allowed), but it doesn't take
> into account some extra space needed by the hardware.
>=20
> Minas Harutyunyan at Synopsys (the source of the DWC OTG design)
> came up with a more correct value, 301, but since there is spare packet
> RAM this can be increased to 558 to allow two packets per frame.

I suggest making a short summary of your github explanation[1] instead of j=
ust
citing Minas. On one hand Minas' memory might get fuzzy after some time (or=
 not
be able to access the documentation) and...

> See: https://github.com/raspberrypi/linux/issues/3447

...you're assuming this link will be always available. Which is unlikely. A=
fter
properly explaining the issue, you won't need the link anyway. Ultimately a
patch description should be as self-contained/self-explanatory as possible.

Other than that the patch looks good.
Thanks!
Nicolas

[1] https://github.com/raspberrypi/linux/issues/3447#issuecomment-581815066


--=-yTpRgBYomwJsP1mAJVk/
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl49nXUACgkQlfZmHno8
x/64+Af9GVsNsm3NPhMpW0qCLhpsj/VtaeNiM9S+OrLw/5WVKaOalPDpGp+w7qrk
bZ5VPmFCpIxjJX0fY6lnJWuOPlrMAi7w9PL+h3WFtSqmhRDELUktdg3cnvLYxaxm
SykV6fdYnhB5u4YXRIky9Ox+Whz95P3LDg67IZE7PX/QQTbYm8+slwdkkTRWZSuZ
8eb1J4rSDxPcE7rY7uPLNJVvMsFL6kPZiEqX4VvdIbwZ+5kJiyELEs/FbBKQlxFK
dS8Xkc0VoS9UinK2i+M27haWJ39Z26Bgl7DWNEV4OSf4URECcLPwt/f9Lp5s4izo
RCM/CL9ocnu6cS1723xHouvaYbKnKw==
=nK9S
-----END PGP SIGNATURE-----

--=-yTpRgBYomwJsP1mAJVk/--



--===============9029614717362911384==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel

--===============9029614717362911384==--


