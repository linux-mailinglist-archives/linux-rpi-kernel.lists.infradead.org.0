Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED2CB17EA19
	for <lists+linux-rpi-kernel@lfdr.de>; Mon,  9 Mar 2020 21:35:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=U6Mw4BtIv2H6Eq+uaU4MCwouR5bWy4fC31rR18BSDjI=; b=EuckfhCz+P2cZ7NjIH46O8ha/
	dvOopTyOtsVyf3vw9CA5zaoT/TGR4Mrc0F4ilPHeObYDkNRf/ln6XP+UmNCLgDxm24yMH+a2SYhN0
	XGpzhTs5JPcoL0KU3DjfJ+wRXAEbclL3kjHJ1WYiMADI9PzVPSQdJ/eKnTtuhcuvq0nUQwOT4odzN
	0qSyS/Gdp4MmwOgGtSt+sOV+UYvS5GAuYTeESPljAPNNXH2WgfTmGf//OcPiLqolpyNISAD06Vshj
	e+K7AuyYwcZ+ClD0sSTaQ7JWMYhsSC3LhotT1W9Vu5izOMPcAhStyla537y9oOntCfeqs7w6ULfux
	8c2/XUcTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBP7Q-0000jj-VJ; Mon, 09 Mar 2020 20:35:20 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBP7O-0000jQ-3f
 for linux-rpi-kernel@lists.infradead.org; Mon, 09 Mar 2020 20:35:19 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id D7EF6AC77;
 Mon,  9 Mar 2020 20:35:16 +0000 (UTC)
Message-ID: <84ba45d7bbc9d2f6645d482e92fb8253281751a7.camel@suse.de>
Subject: [GIT PULL 2/2] bcm2835-defconfig-next-2020-03-09
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Florian Fainelli <f.fainelli@gmail.com>
Date: Mon, 09 Mar 2020 21:35:16 +0100
In-Reply-To: <f10d43777bf17eed98c1fb36660f9189ea8b83d6.camel@suse.de>
References: <f10d43777bf17eed98c1fb36660f9189ea8b83d6.camel@suse.de>
User-Agent: Evolution 3.34.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_133518_298506_2BC1DC18 
X-CRM114-Status: UNSURE (   8.94  )
X-CRM114-Notice: Please train this message.
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
Cc: linux-rpi-kernel <linux-rpi-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============7014264102902214416=="
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org


--===============7014264102902214416==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-6RKeG7RphN2eP7HTDUxA"


--=-6RKeG7RphN2eP7HTDUxA
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Florian,

The following changes since commit bb6d3fb354c5ee8d6bde2d576eb7220ea09862b9=
:

Linux 5.6-rc1 (2020-02-09 16:08:48 -0800)

are available in the Git repository at:

git://git.kernel.org/pub/scm/linux/kernel/git/nsaenz/linux-rpi.git tags/bcm=
2835-defconfig-next-2020-03-09

for you to fetch changes up to 93d3ae352bb5cda928570cfa2247d9c529605bef:

ARM: bcm2835_defconfig: add support for Raspberry Pi4 (2020-03-09 20:36:30 =
+0100)

----------------------------------------------------------------
This tag introduces configuration options in bcm2835_defconfig for basic RP=
i4 support.

----------------------------------------------------------------
Marek Szyprowski (1):
ARM: bcm2835_defconfig: add support for Raspberry Pi4

arch/arm/configs/bcm2835_defconfig | 5 +++++
1 file changed, 5 insertions(+)


--=-6RKeG7RphN2eP7HTDUxA
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl5mqIQACgkQlfZmHno8
x/7zIAgAhnPxZnI80HA+pstxXAKJGFyP9SgjNZGr+9joV2M9LJ+cRNNecRDZJYyr
4xb6pgCVIhNBWJdDqfTaWIgUORSQAYxQX5udzP+TUn45rmcnJypFchXiZ/gIJtvb
a0AleHyiw2mA/gbZdH3suO9eehV/zXKjdCZwdedzvkXk3MgNdR5S0+35VmeAAh6Z
D+f3RIKwU6hDWWyB0+BZgdS5j55waa8n8EMcz9aKtsEknznguQfBiz7Y3SYp/rue
pzsa9wSL32sTxOm5c5xDJl2rdMEM/HMi0utdvdtpid3fEsymE1MYGeY/P+tLl4xu
J8Ji8XQ0NDaxMB58239TNMfwOdB1mQ==
=Fnn3
-----END PGP SIGNATURE-----

--=-6RKeG7RphN2eP7HTDUxA--



--===============7014264102902214416==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel

--===============7014264102902214416==--


