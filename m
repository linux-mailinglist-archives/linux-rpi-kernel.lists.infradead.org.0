Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5B8717F768
	for <lists+linux-rpi-kernel@lfdr.de>; Tue, 10 Mar 2020 13:28:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=m0vaGGypmhJEMidrgbqwzmbkflpor40mRrr2hcXHyhE=; b=EPD
	cbgXJILQaYqwpNSwwtGrzkeyykmHpTzSSVDRsB3Pi6YsH2YS660HOkh+FvfQqiABCMX3vIxQT2y1v
	/r63gViITNfXIdBAbq3cEwEu9ab6L+bwMEjtRRSvWDYqF7mHVmovQT66f3Og6+DpuSrs4p7GaJTu/
	//VoaeS9YV1eua0i96bMU/LU3oY+10KtM+7aB/QMvGX41ZvDn18+EYyks5suZz5bI+T/MwdCF65pg
	w0cfg+kfe9swkJKC1OzfYyrhQdLL7Zwfz/I8brTO0KEB/P1uPuDYesiTCRvxsXGkZ6mz1R8uDHqda
	3RgVXrSIKAOZfVvfqZGJypEhX6XCPJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBdzG-00019h-Po; Tue, 10 Mar 2020 12:27:54 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBdz3-00011Z-1Q; Tue, 10 Mar 2020 12:27:42 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 5DD49AC4A;
 Tue, 10 Mar 2020 12:27:37 +0000 (UTC)
Message-ID: <91044910d494a12d06e7098561fe1be86a61f033.camel@suse.de>
Subject: [GIT PULL RESEND 1/2]  bcm2835-dt-next-2020-03-09
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Florian Fainelli <f.fainelli@gmail.com>
Date: Tue, 10 Mar 2020 13:27:35 +0100
User-Agent: Evolution 3.34.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_052741_227371_64D72EFF 
X-CRM114-Status: UNSURE (   9.37  )
X-CRM114-Notice: Please train this message.
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
Cc: bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 linux-rpi-kernel <linux-rpi-kernel@lists.infradead.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7221108338534536858=="
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org


--===============7221108338534536858==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-uUrpCZAmsEtDFdsgFQJN"


--=-uUrpCZAmsEtDFdsgFQJN
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


--=-uUrpCZAmsEtDFdsgFQJN
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl5nh7cACgkQlfZmHno8
x/5pkgf/bwl7xaytsli5RX03TEd5WtJ8OWiseWbNwjc8rJLK4AbmSkpraW5m2sFu
ouKF4h3bzW7q7FKfR/XCDXR28OC/l5pTY/0Y1/MG4wIa52Gi22danx5nS3pWL5Q9
X1RwIuW2lKMNux5DVtsmzKgST3mZu0xCuNQwV3FbOpvY6F75qFNkcnC9i5JmrlvU
9x+Dzq/khDwrsG5f3db3lE956dZdKRW0iaralgyQp2H36U1HYuVfCaTjjLf6ZBXr
FuB0Dcby4Et+Dj7OTrNAXvhJZq3mMEJGIhg6El8p7ChXyjzOeckfuIV2+v4x8c+Y
aBJrVwJvHFmmfJkqiejURbOHnx/lTg==
=H9tH
-----END PGP SIGNATURE-----

--=-uUrpCZAmsEtDFdsgFQJN--



--===============7221108338534536858==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel

--===============7221108338534536858==--


