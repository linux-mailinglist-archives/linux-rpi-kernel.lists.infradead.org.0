Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB42B1FB652
	for <lists+linux-rpi-kernel@lfdr.de>; Tue, 16 Jun 2020 17:37:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pAxoC3UtEZ1f1rqvLTCSUrBpLMh7zLGRgak1nXTc/yw=; b=oP6ngdTTtCkE1sKRIBZZwP6pV
	vQAWovhRe0Eh0fE3x5QrHojrQ4QdVVLGkO+/ThSnvaZI5zQ+p8UIv9o7zQ/KOpzStFr6dvMgUeW7v
	YLdLmLc/+IKhEa0g6XHRmC1UhyY04i2LBJoIzcTIN5gAo7Q+YJ0P4fkb5y9y48R8drIknTcZVeDjq
	TVlKzuYxqFDTciAOGsvGTnv1Jom0/oWrql6csXe0hMgtwSW39yYabrD0b/zdGxbS7ADVdlWabllsi
	5cvVpu+1exxRJ3zh6tNtOVIJx44LxSi6XGHbtrxxXUljiox1tbiPeMOJ2J88m46iM8/ZugTziWc+M
	mACGvxT5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlDeR-0003yn-DB; Tue, 16 Jun 2020 15:37:27 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlDeP-0003xt-87
 for linux-rpi-kernel@lists.infradead.org; Tue, 16 Jun 2020 15:37:26 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id D1112ADCC;
 Tue, 16 Jun 2020 15:37:27 +0000 (UTC)
Message-ID: <6b3e26ac6dba4d51602e0e184d15e5d0c2c3f476.camel@suse.de>
Subject: Re: Possible regressions with Linux 5.8-rc1
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Stefan Wahren <stefan.wahren@i2se.com>
Date: Tue, 16 Jun 2020 17:37:22 +0200
In-Reply-To: <104f3fb4-97a8-26df-8e03-c1e6a9fa6923@i2se.com>
References: <104f3fb4-97a8-26df-8e03-c1e6a9fa6923@i2se.com>
User-Agent: Evolution 3.36.3 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_083725_433447_C02D917F 
X-CRM114-Status: GOOD (  10.27  )
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
Cc: linux-rpi-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5365443804848830675=="
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org


--===============5365443804848830675==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-H7hK2Eeq1Fb+s0xeUyYs"


--=-H7hK2Eeq1Fb+s0xeUyYs
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

Can't seem to reproduce this one. I'm running a fairly new raspbian with
today's kernel (5.8.0-rc1-00019-ga5dc8300df75, multi_v7_defconfig) and
'dtoverlay=3Dvc4-fkms-v3d' on a rpi3b+.

> 2. There is an issue with the timestamp of the firmware:
>=20
> [    4.016305] raspberrypi-firmware soc:firmware: Attached to firmware
> from 18446744073705507048-08-11T21:33:36

This one I see, it's probably 4a60f58ee00266ebee652e991954e48d060ea950. I'm
writing to the relevant people (will CC you).

Regards,
Nicolas


--=-H7hK2Eeq1Fb+s0xeUyYs
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl7o5zIACgkQlfZmHno8
x/4/8QgAuCsVsjo0+RpyGDBXl/FV7VgwXwrU3yp8gRt6epeVqb7ViZR1eW+yzsPd
spWrPo8pd2Z7DAcBHuhm6MFGKK+7oqg38gmFKymA4jChc/Pw+tREUj+H9XWKXGYb
uxBlvCITdI81On3AlrvMoT6mHFMdVhUmFfgKQum+/2F3F+O0QqzqSsrqxwo3OTg0
HFSo097iy+0CLbM88xsCMM/v7bx+zRJjBc07W+jVoq1m4K0jtDuwUY7h0gNWbjpn
atUpNJBkfiRziaoQmKFmAnO2bhpkee+FjrQMCvU1yeQubUWGuBZLkT+ss8EmTg3A
9lwnNdcKq3ZIp4cRTsY26f4k7H+Usw==
=0SOp
-----END PGP SIGNATURE-----

--=-H7hK2Eeq1Fb+s0xeUyYs--



--===============5365443804848830675==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel

--===============5365443804848830675==--


