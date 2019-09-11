Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05A82AFAC0
	for <lists+linux-rpi-kernel@lfdr.de>; Wed, 11 Sep 2019 12:47:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1VYG917W4AHaiJlnT4hN4Ryb4zS0bvvtrMGUE2zZARg=; b=mnIwfE1y9vFkYAKd93JZ022BC
	0sn54oYc4D0fusAdLV7nuP5rKVYuLfw4DDQUZUn407jozPVQtfPIQOqQ7i4yo0RX1jIabFQLlEZ94
	7Xy2q0Z/fzqkaDwx6zXvzfvmqWQTnDsG8tqL9t8A2NkgwjW9Jap4EbMKW35ZVU6zJ6LxDE9bLeC43
	qx6n3Iic2wfz6ecS7MGEBpo0VkEGEYCbpjdR+djjYGXSIudY0pBxx1B2jlMkXOy4LYWDSciMtqx1e
	/aS+t2n/3AyNJ89HMrJ0Z4ubKzxsP2jJiWiaGpB6YfW7Ekn/9qU5hlvelEwE1QqGLDizww9gquvHn
	IPFdYo7yA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i809m-00047r-5i; Wed, 11 Sep 2019 10:47:26 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i809j-00047Y-RJ
 for linux-rpi-kernel@lists.infradead.org; Wed, 11 Sep 2019 10:47:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=obMQBjQk21sSrNDQ9pzr5Lrl4+GQWjmyi37MqvNhcFo=; b=BkFtIyszpUZQvUpa0xiEd9+lT
 Kz9hqZEbQG09bwIxmytYOdk69zUPPadkXKecfaQ4MuexvS0BH6jL1q0o/FH26jN5ljfLwwpDaYIUw
 SuelNo3itJ87mtHGb/Gn3M9zxwL8c9e29uxUvuOaMVwysuy91N+UyaeSvGpbdM/y6HY74=;
Received: from [148.69.85.38] (helo=fitzroy.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1i809h-0008Hf-Sl; Wed, 11 Sep 2019 10:47:21 +0000
Received: by fitzroy.sirena.org.uk (Postfix, from userid 1000)
 id 3A04CD00330; Wed, 11 Sep 2019 11:47:21 +0100 (BST)
Date: Wed, 11 Sep 2019 11:47:21 +0100
From: Mark Brown <broonie@kernel.org>
To: Lukas Wunner <lukas@wunner.de>
Subject: Re: [PATCH v2 00/10] Speed up SPI simplex transfers on Raspberry Pi
Message-ID: <20190911104721.GX2036@sirena.org.uk>
References: <cover.1568187525.git.lukas@wunner.de>
MIME-Version: 1.0
In-Reply-To: <cover.1568187525.git.lukas@wunner.de>
X-Cookie: Be careful!  UGLY strikes 9 out of 10!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_034723_895391_CBE66186 
X-CRM114-Status: UNSURE (   7.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-rpi-kernel@lists.infradead.org, linux-spi@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============1795843313686695934=="
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org


--===============1795843313686695934==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="sBvc846/5FzkyDmz"
Content-Disposition: inline


--sBvc846/5FzkyDmz
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 11, 2019 at 12:15:30PM +0200, Lukas Wunner wrote:
> Extend the BCM2835 SPI driver to handle simplex transfers internally,
> thereby reducing their latency and CPU usage and obviating the need to
> have the SPI core convert to full-duplex via SPI_CONTROLLER_MUST_TX/RX.

Whatever you're doing to send these is still not sending the
patches in order:

    779 N T 09/11 Lukas Wunner    (1.6K) [PATCH v2 00/10] Speed up SPI simp=
lex t
    780 N T 09/11 Lukas Wunner    (2.1K) =E2=94=9C=E2=94=80>[PATCH v2 02/10=
] dmaengine: bcm2835:
    781 N T 09/11 Lukas Wunner    (1.3K) =E2=94=9C=E2=94=80>[PATCH v2 01/10=
] dmaengine: bcm2835:
    782 N T 09/11 Lukas Wunner    (2.6K) =E2=94=9C=E2=94=80>[PATCH v2 03/10=
] spi: Guarantee cac

--sBvc846/5FzkyDmz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEyBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl140LYACgkQJNaLcl1U
h9CJuAf40t7iOsCtCUCgOGIXB+YibWRckLCGnZaxx9lO8FpS02JKK8a1kZ7BzmBu
KUB9QEeaKj5mR76HSW9ptzpbLt2Dhgy92E9In/53UHZK8w7xCRzpngrLvLy/ngg9
BKxBDoUN5rANRRMIhK18StZ4TKHqviLnTyfFlFkchbmu9KH3bQpwV1v+t0Mv4TqS
rbeE860BfkVkR6iCMCt/vTlIi+XwRxoTVgjLUWPIphox2CzAYX0ChmRuuX+lXfz3
t1LJLptjNXavM3z03a/6EeLrgjIvTlc0EmXJNb2YpjSl4w2Lfhtiy8saxwuwXa1s
UIApc9MXI4DnImX3tQ8K1ZWo2qJq
=9QgI
-----END PGP SIGNATURE-----

--sBvc846/5FzkyDmz--


--===============1795843313686695934==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel

--===============1795843313686695934==--

