Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19BA21FB444
	for <lists+linux-rpi-kernel@lfdr.de>; Tue, 16 Jun 2020 16:27:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RCYBW67NZ/Zq9XD+dlgKBcCsnjpbsiukYazZh3sMkB4=; b=ZkyMSiAQ/KKXECnYE49L9fyqo
	IykusmP4eUfJ2vWqJJgeyboZyV/O4S4v2IaMkYMPXYPy0Sb7nwi653Np+dLswbtgCNYP6ujvhnZPM
	KBJoo1V7F8AqYL7exZKfx4kYD92cDC50q0V92fqAuv0fymmwo8hvWBOKkReLkwb9+8BKIjZiHQWy7
	2B+Xw5YH2rC3d/G6jHm9Sr0ebbadTnp3PgBJPf1bR+0/Gym9u2GGNyLvd6xNSGkdY5odH8VfRfvRF
	719TPeTIUdWGNvdEJ5k4ndzajzi0X/qt4fm3B9432o71apL20WztoWsxqWK+8IXYSymzDdsTmw3xi
	CG6k2V/Dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlCYF-000195-36; Tue, 16 Jun 2020 14:26:59 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlCSj-0002q0-K9
 for linux-rpi-kernel@bombadil.infradead.org; Tue, 16 Jun 2020 14:21:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=MIME-Version:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=+YRjh8Y5W0tJt/k3Bt63Vkgyxpkq91SpmskmGfwazsE=; b=NcujeNx2XH2rgXxHoB9omiRT6a
 h8u+H6b4QzReSqRMYlKBZtVHbAUpnAgUkJLMcN0hph1PTbcWiKwFKH0BExxWLN233CDqUao04W5Sx
 6c9VFTnPTGZ30BSL5QzN7FN/tw5gDDleil7z68yxNbCDk4sX/TOnVAme3ptL/N7+3xcwsHxvjLgdq
 b/EU4Ud9A0k34Di/n7v2h8Xeck+i+wubrGjW2+9jsLt8fa6gmKax9Bh4t9wrTcrQsM6Y8AaHFqL0H
 SHV8jAuY6XWCXv5EVC+imh2FxFU9z9zF+rxj6e23BWe0X3tXs9I3Pu7INm28YB/LnqFYEdmrRu/IP
 DnNUe4tA==;
Received: from mx2.suse.de ([195.135.220.15])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlCSf-0002Sg-7x
 for linux-rpi-kernel@lists.infradead.org; Tue, 16 Jun 2020 14:21:16 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id B028CB0E6;
 Tue, 16 Jun 2020 14:21:14 +0000 (UTC)
Message-ID: <e6d64464cc39cf8a01956aee747b5e672bef8c4f.camel@suse.de>
Subject: Re: Possible regressions with Linux 5.8-rc1
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Stefan Wahren <stefan.wahren@i2se.com>
Date: Tue, 16 Jun 2020 16:21:09 +0200
In-Reply-To: <104f3fb4-97a8-26df-8e03-c1e6a9fa6923@i2se.com>
References: <104f3fb4-97a8-26df-8e03-c1e6a9fa6923@i2se.com>
User-Agent: Evolution 3.36.3 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_152113_624055_4B51FB28 
X-CRM114-Status: GOOD (  11.31  )
X-Spam-Score: -4.2 (----)
X-Spam-Report: SpamAssassin version 3.4.4 on casper.infradead.org summary:
 Content analysis details:   (-4.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-rpi-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2142406038999245268=="
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org


--===============2142406038999245268==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-Kiz2JGUB+FQLVIZOZih/"


--=-Kiz2JGUB+FQLVIZOZih/
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 2020-06-15 at 21:53 +0200, Stefan Wahren wrote:
> Hi,
>=20
> today i tested Linux 5.8-rc1 (multi_v7_defconfig) on my Raspberry Pi 3
> and spotted 2 issues.
>=20
> 1. HDMI display goes black after switching from console to X. Looking at
> the kernel messages doesn't show any suspicious:
>=20
> [    9.270639] vc4_hdmi 3f902000.hdmi: vc4-hdmi-hifi <-> 3f902000.hdmi
> mapping ok
> [    9.270663] vc4_hdmi 3f902000.hdmi: ASoC: no DMI vendor name!
> [    9.271287] vc4-drm soc:gpu: bound 3f902000.hdmi (ops vc4_hdmi_ops [vc=
4])
> [    9.271442] vc4-drm soc:gpu: bound 3f806000.vec (ops vc4_vec_ops [vc4]=
)
> [    9.271544] vc4-drm soc:gpu: bound 3f004000.txp (ops vc4_txp_ops [vc4]=
)
> [    9.271624] vc4-drm soc:gpu: bound 3f400000.hvs (ops vc4_hvs_ops [vc4]=
)
> [    9.271863] vc4-drm soc:gpu: bound 3f206000.pixelvalve (ops
> vc4_crtc_ops [vc4])
> [    9.272079] vc4-drm soc:gpu: bound 3f207000.pixelvalve (ops
> vc4_crtc_ops [vc4])
> [    9.272292] vc4-drm soc:gpu: bound 3f807000.pixelvalve (ops
> vc4_crtc_ops [vc4])
> [    9.272391] vc4-drm soc:gpu: bound 3fc00000.v3d (ops vc4_v3d_ops [vc4]=
)
> [    9.272397] checking generic (3e330000 8ca000) vs hw (0 ffffffff)
> [    9.272402] fb0: switching to vc4drmfb from simple
> [    9.272891] Console: switching to colour dummy device 80x30
> [    9.272930] [drm] Supports vblank timestamp caching Rev 2 (21.10.2013)=
.
> [    9.273751] [drm] Initialized vc4 0.0.0 20140616 for soc:gpu on minor =
0
> [    9.346180] Console: switching to colour frame buffer device 90x30
> [    9.363996] vc4-drm soc:gpu: fb0: vc4drmfb frame buffer device
>=20
> 2. There is an issue with the timestamp of the firmware:
>=20
> [    4.016305] raspberrypi-firmware soc:firmware: Attached to firmware
> from 18446744073705507048-08-11T21:33:36
>=20
> I didn't had the time for any further investigations.

Thanks for reporting, I'll have a look at them!

Regards,
Nicolas


--=-Kiz2JGUB+FQLVIZOZih/
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl7o1VUACgkQlfZmHno8
x/7zWgf/YuOF5l9m7LVensh5cQfs+jJn7uxq7cuKXuKlxBhzvPY34bwBmUioqEq3
lcE4yTQE8b7uFzhywA/+edtFM+EfveQ+xrxBXNydRxqsQoDeaEhLos0KKZQFgnou
sA6a1/0bR+WsgcSD7xArUmc2BkWlGfRsA9uXOA+CtCwZWdUHj6rbWNKZntv57zQl
+6LwsI6slnsBm3+koa/awieW6Mqi0EOeNJAiyAXAXoj1KQ9C20x8PfJ1HVMwOn0l
EQz4gSUzTH0VagS7dYH515cOIn0/5VPu/f1W963WAttkIxrI8zlyE0iEMuEQ6ZEa
O0V4VB7Le5oUI+FIwPQ4q7BwZZgmnQ==
=q9+J
-----END PGP SIGNATURE-----

--=-Kiz2JGUB+FQLVIZOZih/--



--===============2142406038999245268==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel

--===============2142406038999245268==--


