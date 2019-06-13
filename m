Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3807433E1
	for <lists+linux-rpi-kernel@lfdr.de>; Thu, 13 Jun 2019 09:53:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=APcj45RJjcoDDkjLReG/XBC3Jctub2JOIl1yT+2MjFc=; b=lBYUWiZrQaDgXTeBtXCdd8cUD
	s1bqBGPyMkb3SLmSAKdp/Mc2uQLX509cygFMljpfzpk1UZSgPPu9uCx+TBkXKwrtJsPZZZ6CVxi8z
	41mcUO7r1IpbPs33N0ERs3rT/qhFnP7NV7rSc8otBn6I6+WEBSzINsMyEgsUy72nrY0avCZAsedaT
	3J5WSidKjLxp7CBYXS2zEXcSEYpyirVzvCvA1gFQJhCYCLNyIWsk3QYMGkuxM+WMJcsSUDDXo2eXi
	Y1N2zmoMah6A9yxbZJsllzkq8QPko5YF3vr8N4mkhadSOylL/osaL+NYt6ErlSRYzEqUrw9JnJAIW
	9anKiZpNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbKXw-0004SU-C2; Thu, 13 Jun 2019 07:53:20 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hbKXZ-0004FK-Ib; Thu, 13 Jun 2019 07:52:59 +0000
Received: from localhost (unknown [84.134.207.153])
 by pokefinder.org (Postfix) with ESMTPSA id BE0882C3559;
 Thu, 13 Jun 2019 09:51:03 +0200 (CEST)
Date: Thu, 13 Jun 2019 09:50:35 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Annaliese McDermond <nh6z@nh6z.net>
Subject: Re: [PATCH v4] i2c: bcm2835: Model Divider in CCF
Message-ID: <20190613075035.GA952@kunai>
References: <20190529042912.12956-1-nh6z@nh6z.net>
 <20190608171443.14484-1-nh6z@nh6z.net>
 <20190612104107.ndbo55ii2w3ahtzr@ninjato>
 <2E838B63-DD8D-40AC-AA31-7C0FEF8B4424@nh6z.net>
MIME-Version: 1.0
In-Reply-To: <2E838B63-DD8D-40AC-AA31-7C0FEF8B4424@nh6z.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_005257_775527_9C5DBE87 
X-CRM114-Status: UNSURE (   8.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [88.99.104.3 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: swarren@wwwdotorg.org, NWDR Team <team@nwdigitalradio.com>,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-i2c@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============2265442787752323125=="
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org


--===============2265442787752323125==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wac7ysb48OaltWcw"
Content-Disposition: inline


--wac7ysb48OaltWcw
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable


> > Applied to for-next, thanks for keeping at this!
>=20
> Thanks for your patience with this.  I know it=E2=80=99s hard to deal with
> newer folks sometimes, but I really appreciate your forbearance.

For me, it was not hard but technically interesting. The solution to
have a CCF driver embedded in a master driver might come useful in the
future again. So, thanks again everyone!


--wac7ysb48OaltWcw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl0CAEcACgkQFA3kzBSg
KbaNzBAAhtuYUWBJQnLoUF/+8qEPgUSZwpVqbMV50CdW2Pxy58COjEmlVe/uiqvh
BfTyj5kSdSwqtp52oSILSpMXYzEoThEY30ssv6nARanw/LmMc4/VJ3lOtpuHL/6D
im9o4osWaUfcBJKmOChoZQ16gB5C0iYUhPBsi+IEq3Gy5hv/cE0CDGHmNC4yv3Zs
0o4uUNtQdlamHVO2pXGKeUavCqM/2qZvhI64JCFxuvL1H72FCFAo1bePRyzX3VNj
2ZL99io1J9VqUeIg7FkwfwZA/On6ngtC16tFNXsgguVeBlRrwZXKLMribxWwkPlO
6j9aJ9dk6zXLvcKT0CsFSw7NAW1ltr4g1rPTSA8n5Jy6289gtDhmpb5dghls6R2X
2ocSATm8q8kpPRIhl3UNQcjvLwkRD7J2KK57wH4GI6gqnpyRwT32V1O4vTJCJeoA
o+L8bJSxdfSTq40VQC7IdSE0XnsddhFuLVlPebiQK54XTWCxdAYKyE1PsM7n7Rem
akUDVH2FHBK3dMWZJGiVoJNTIVtvAW8HTBwTI72nsEzmaLUZUIqT0uyxDicNWXtc
xKP6HSgRwoEaMBhS2SiZT5HfFXZlzN2uKU4WlwGXSdqjKg4Jv5th19FtejmZpEfh
7hdig75Xj8Pe9INcHyjfqKFZcDvUwuwa2KudNjsdxd8mEqQqFzk=
=5B77
-----END PGP SIGNATURE-----

--wac7ysb48OaltWcw--


--===============2265442787752323125==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel

--===============2265442787752323125==--

