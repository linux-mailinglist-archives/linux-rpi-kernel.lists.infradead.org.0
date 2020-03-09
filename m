Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CB4317EA17
	for <lists+linux-rpi-kernel@lfdr.de>; Mon,  9 Mar 2020 21:34:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=BE3S97yltaR7PA7U/wNudHtlSHs53vG3XGbtB/vvNLM=; b=uSJ
	I7eB5q9V7qde0IX0wx+Bazhre1f+YClYWJ4pxFcphxF8DNvK2Ax/wrrdXu2lsQJHeGNON4DNIDamT
	mCCmnbQRSmqYQcGfDJWxelgNqcxQ/k2M+4zg1SnqW3hGM+rchEL2Yh4Dzpa42TfmtcE60g+/hA6VV
	aPLjROhTkTTImZva87jc9ghj6+E6mAd1da5wPAJ1gZfLD/bUkUo90xzzoGGsxZ44P7V5UKn75PF3y
	bM89Pn2zFc+b2aUJP48/CnOGrSLBBDX5h3WePwHYLAa0vidPpJXgsOPrQ/Zv449qQV9YA/I2NKO9m
	aK4I35jd8wDFC/95i/2CamWtuzcRv6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBP6B-0007rE-9t; Mon, 09 Mar 2020 20:34:03 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBP68-0007qq-Fo
 for linux-rpi-kernel@lists.infradead.org; Mon, 09 Mar 2020 20:34:01 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 81BA1AC77;
 Mon,  9 Mar 2020 20:33:58 +0000 (UTC)
Message-ID: <f10d43777bf17eed98c1fb36660f9189ea8b83d6.camel@suse.de>
Subject: [GIT PULL 1/2] bcm2835-dt-next-2020-03-09
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Florian Fainelli <f.fainelli@gmail.com>
Date: Mon, 09 Mar 2020 21:33:57 +0100
User-Agent: Evolution 3.34.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_133400_676005_820D166E 
X-CRM114-Status: UNSURE (   9.23  )
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
Content-Type: multipart/mixed; boundary="===============6757494937289408461=="
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org


--===============6757494937289408461==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-Je7JwRKkYE29UFMsr2UB"


--=-Je7JwRKkYE29UFMsr2UB
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Florian,

The following changes since commit bb6d3fb354c5ee8d6bde2d576eb7220ea09862b9=
:

Linux 5.6-rc1 (2020-02-09 16:08:48 -0800)

are available in the Git repository at:

git://git.kernel.org/pub/scm/linux/kernel/git/nsaenz/linux-rpi.git tags/bcm=
2835-dt-next-2020-03-09

for you to fetch changes up to 3d2cbb64483691c8f8cf88e17d7d581d9402ac4b:

ARM: dts: bcm2711: Move emmc2 into its own bus (2020-03-09 21:18:03 +0100)

----------------------------------------------------------------
This tag adds GPIO labels to RPi4 and moves emmc2 to its own bus in
order for RPi4's firmware to correct its DMA constraints.

----------------------------------------------------------------
Nicolas Saenz Julienne (1):
ARM: dts: bcm2711: Move emmc2 into its own bus

Stefan Wahren (1):
ARM: dts: bcm2711-rpi-4-b: Add SoC GPIO labels

arch/arm/boot/dts/bcm2711-rpi-4-b.dts | 74 ++++++++++++++++++++++++++++++++=
++++++++++++++++++++++++++++++++++++++++++
arch/arm/boot/dts/bcm2711.dtsi        | 25 ++++++++++++++++++++-----
2 files changed, 94 insertions(+), 5 deletions(-)


--=-Je7JwRKkYE29UFMsr2UB
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl5mqDUACgkQlfZmHno8
x/5CLgf9G9pdi3bB4QJ/6qRtrOkE3XZyxitMRAbDLkxjcsup0PhadzKc7HkCScmC
Xac62wJMlmSSZUGycG3Ue5US74dKeI1pDodxBhv+512tXV4EiU39UhwVF7e7BLQ7
yK11B5ZPafB/4rbKpy+ds/E+40+Ru5OE2vs0gTxpoejN1DoKZf9gqfmML9NuRy+K
xFxx5Z3sXjcdhuaR8D17Xzv/dU1/xO3KfNIsKGDLU+PVaB/Wv3VGnTwEPjMC8I+X
bQGdpWxcqVAOXiu51vZdL8BUrz16zgCXENGJPqeIwdz1grnQLj34tGU29OysG4If
TyHh2DD1qrUhPvrayoIkVquO5NEdbw==
=ENwt
-----END PGP SIGNATURE-----

--=-Je7JwRKkYE29UFMsr2UB--



--===============6757494937289408461==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel

--===============6757494937289408461==--


