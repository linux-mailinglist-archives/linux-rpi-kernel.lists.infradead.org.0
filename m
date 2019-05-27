Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23A7E2BA94
	for <lists+linux-rpi-kernel@lfdr.de>; Mon, 27 May 2019 21:15:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3KgekFXp6l8oM1aZMArDrKBnciw8Gdoyb7Jz0UnmBek=; b=egrhRHBurj9zaMLtSX3R2aQJ0
	JmJlUwMwoWu8TEdMyb4HqV72bQx67HuYHfjxPHxCYv4EtqhRWHJ6im/iKuDWw19ZVsZ8aX+zQq1AN
	sz7jadjg16qD8jiSKF7kbjVKrWH9NJyfeXXVnCkHSg9T1smocn0Kb4Zt/qkrMZ/HLoidcHGHNCG3Z
	E01bxcxLWUHSDXCXuTBOaxKi/z7WPop6FVM7jgD+m7aRO0OMe6KL/tmPLMDChrmHPsZgS9lBiiKw3
	HYKT19RC8jnQgqoH71WG7ZjM8yJ/JDcUBmNJSiaJIex8GFRi3s1ZzriRiVsIax4UEHMrly16ELqHN
	jAS/zVkJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVL60-0000J8-Aw; Mon, 27 May 2019 19:15:44 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVL5r-00008Y-Qo; Mon, 27 May 2019 19:15:37 +0000
Received: from localhost (p5486CF59.dip0.t-ipconnect.de [84.134.207.89])
 by pokefinder.org (Postfix) with ESMTPSA id EE0C02C04C2;
 Mon, 27 May 2019 21:15:34 +0200 (CEST)
Date: Mon, 27 May 2019 21:15:34 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Annaliese McDermond <nh6z@nh6z.net>
Subject: Re: [PATCH v2] i2c: bcm2835: Model Divider in CCF
Message-ID: <20190527191534.GD8808@kunai>
References: <20190508071227.18609-1-nh6z@nh6z.net>
 <4174B26B-4E3A-4CCA-A5ED-BE62A3B5E66A@nh6z.net>
 <20190516075848.GA1033@kunai>
 <2E6EDCD1-E0B1-4859-BD75-EF411D3D4C6B@nh6z.net>
MIME-Version: 1.0
In-Reply-To: <2E6EDCD1-E0B1-4859-BD75-EF411D3D4C6B@nh6z.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_121536_021284_C8198E52 
X-CRM114-Status: UNSURE (   7.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [88.99.104.3 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: team@nwdigitalradio.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-i2c@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============2982776342417954864=="
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org


--===============2982776342417954864==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rz+pwK2yUstbofK6"
Content-Disposition: inline


--rz+pwK2yUstbofK6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Annaliese,

> Thank you very much for your response.

You are welcome.
> I was also similarly nervous about a clock provider being outside of=20
> drivers/clk, especially since one of the instances of that I wrote.
>=20
> When writing this, there was a certain logic to putting this inside of
> clk-bcm2835.c instead.  Eric may like this approach better because there
> will probably be more code reuse of some of the dividers he uses in that
> driver. =20

Regardless which solution is favoured, I am going to apply this patch in
a minute:

http://patchwork.ozlabs.org/patch/1097688/

It enables this driver for ARCH_BRCMSTB. So, the solution should work
for this as well. (I don't know any of these platforms well)

Regards,

   Wolfram

--rz+pwK2yUstbofK6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAlzsN1YACgkQFA3kzBSg
Kbb1dw//QS+QQ+6Ka2TybGbcATjH7NybVWBniOTptTCbQCN311faU5s1tZX8Sgpo
Ljx4Y59PQRKdaB6LoIjl9d8lHA3LaMfRg/vMij5g552liEl6eWp8KOBlVUEsBAVU
DYkU9sNnEcFT48PyM5fzQLtPTcYUFlfbs5VSXzGDqQzliUNzMkdGIfWNTYtgYtRO
ckLUDRc7ALC/QZ3y7WEJqr/goaAZV2+2ao5D7jAe3Eu30ZvqrVlLCHPf+vtFDUJ5
6P3FzeGRTvLHzxhW5Segip1iEyMNOjLuZvc0+fXgOyLND1DDVrO9cws7j7u9pyhl
zl2Ot2xAOF3nEVnkxcpTAsEx9m07cW95wOhSTUDcW/IEIEqrlp1krlqqIoy8mWN3
wT2Gnno+g8Wr/It5BC26Ei3WaW+ZLqFQxyePxrdFqG28/60qLBKaKGsHyCNFh9D/
SSwHqEfwRs9QkUQTA1pKaMZIFsrJg2AVL44CuPpcS+xTcUowyFI7tBJ+t2OogGrh
2qPFfgUpRkD4EoxKiZCcGwaEtY5qcDXZOWUWo4tTBUopXIbeLhaEva1U0Yc28Kx2
/+PRal68slAZt31SP5f+FcxXfq6fb/RIOR6VRS2R69ooyxj1/2tCZcxTgvJ07h1+
3XkG3WfsyjKjYuKHq4YKabkaQ2t5pXhAw3IOJdhoKLGrOylyryk=
=u+lI
-----END PGP SIGNATURE-----

--rz+pwK2yUstbofK6--


--===============2982776342417954864==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel

--===============2982776342417954864==--

