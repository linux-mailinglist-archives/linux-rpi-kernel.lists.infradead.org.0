Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D5512BB61
	for <lists+linux-rpi-kernel@lfdr.de>; Mon, 27 May 2019 22:20:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BO9+5Jcq+LTVm89ZnmEJ2oLEyf0qICom3ZPh3mFiiI4=; b=YC/FWpGblq2CGstoEv+uMEwR3
	695GsX14qlmDi0JT2uUbOqmgS0/tFg9i8EZfnfOtW7r8RbpWd8r9sCB8YhwQxyA9wdHhQq1UCypn+
	uIB/CqSW6xSzCVXm6PywV+rfSk4D3Pn/S4Ot7HIsSPD/sPlo3QhkW19vIjVX7qUtogcFDnTfcgPip
	7/Al8LP3fWDMszoaGY45UfvXQiw+NyZKJLj7DmaWuV+QEzPMKGakZ7Riqa1AmDLKMPbY9NzOyodux
	cBnXb6tlGzwD+V2OjwTinjQCaxDpAOQDF582Eq7inPwWt0BeVTbL9J2o8VipIYlJBOt7NvPqgZdUg
	iWf5vQyjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVM6a-0002KE-Fu; Mon, 27 May 2019 20:20:24 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVM6R-0002E0-M6; Mon, 27 May 2019 20:20:17 +0000
Received: from localhost (p5486CF59.dip0.t-ipconnect.de [84.134.207.89])
 by pokefinder.org (Postfix) with ESMTPSA id AAA472C04C2;
 Mon, 27 May 2019 22:20:14 +0200 (CEST)
Date: Mon, 27 May 2019 22:20:14 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Annaliese McDermond <nh6z@nh6z.net>
Subject: Re: [PATCH v2] i2c: bcm2835: Model Divider in CCF
Message-ID: <20190527202014.GA20304@kunai>
References: <20190508071227.18609-1-nh6z@nh6z.net>
 <4174B26B-4E3A-4CCA-A5ED-BE62A3B5E66A@nh6z.net>
 <20190516075848.GA1033@kunai>
 <2E6EDCD1-E0B1-4859-BD75-EF411D3D4C6B@nh6z.net>
 <20190527191534.GD8808@kunai>
 <E711B8C3-85B8-435C-97FD-E62BCB88B679@nh6z.net>
MIME-Version: 1.0
In-Reply-To: <E711B8C3-85B8-435C-97FD-E62BCB88B679@nh6z.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_132015_875939_C73DC6C7 
X-CRM114-Status: GOOD (  12.96  )
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
Cc: NWDR Team <team@nwdigitalradio.com>, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-i2c@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============3512198923497021711=="
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org


--===============3512198923497021711==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Kj7319i9nmIyA2yE"
Content-Disposition: inline


--Kj7319i9nmIyA2yE
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, May 27, 2019 at 01:00:00PM -0700, Annaliese McDermond wrote:
>=20
> > On May 27, 2019, at 12:15 PM, Wolfram Sang <wsa@the-dreams.de> wrote:
> >=20
> > Regardless which solution is favoured, I am going to apply this patch in
> > a minute:
> >=20
> > http://patchwork.ozlabs.org/patch/1097688/
> >=20
> > It enables this driver for ARCH_BRCMSTB. So, the solution should work
> > for this as well. (I don't know any of these platforms well)
>=20
> I did some looking the other day, and I had forgotten that the RPi has 3
> of the i2c-bcm2835 devices each with their own divider that sits in their
> register space.  This makes me think the correct solution would be for
> the divider to be controlled in the driver as was in my original patch.
> Otherwise we=E2=80=99d have to make three different dividers in the bcm28=
35-clk
> driver, and the i2c driver would no longer work for other platforms.

I am getting more and more convinced of the original patch even without
CCF acks. Others?


--Kj7319i9nmIyA2yE
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAlzsRnoACgkQFA3kzBSg
KbZ3Ig//bhLKH92dCBPaAdPCOobKJXl0WATDzHS3BEtr6DP1TTNBsUD5wBwUt7Rc
gsfQF+nupWjX/ZzIMLFYhSA3UPz3G+F0WfeGXlHPKU3AWaCworIXr19ueovykBsI
gF4JxmeWLIhjnogATB0ATUTPMiBiVtQYsfNjyzkTCwBNQaZKy8EKeSpV0Lo1pY4R
3We7Ly8uFMyZpI6Xa9Q39rhuEpP3XMEQ3ex346eVdkSFVsn/GtlW79yJcYPuE2iH
gk0HJarmM5UVuCQJwq2XKxhk7TTMc1cYLpWhRMkMqbR/7++WKjEX1ugSt/bSzyEW
4rhv5tTpErXAUngtr/v21eXVvQ3to0mffd181t2qmMJjdCivLrj46usB5o64LgRW
D/jvT6eDeTPpor7eGGfd6KJgzgLHDcEN/PB/61U0f82k31zT93flvZueZa12JO4R
9zTU4YmG4qwO/coflGIwkgytmFVoKakQAtCkuylH9YqhKay51scrlbvZtVTLn87f
Wy1H7cgotBXKQtA4NtOj20UKp0g0FTdT0fZBQlaCJeSsChEvjBR7y4xXvxl4sEQO
GCBwu4sGvqfueTi0bl1W4kuTJLsHQiw7uB2a4wtj6kFZ6blsolODrUyO6hkIM4XR
38nY4771iZVDSQHApx7VwIcmTEIsdVgrVs62c521ybNcbFV7ZH0=
=eW6M
-----END PGP SIGNATURE-----

--Kj7319i9nmIyA2yE--


--===============3512198923497021711==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel

--===============3512198923497021711==--

