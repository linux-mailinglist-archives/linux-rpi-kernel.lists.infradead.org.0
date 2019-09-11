Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ADDFAFC05
	for <lists+linux-rpi-kernel@lfdr.de>; Wed, 11 Sep 2019 13:59:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=j59M3VxQK5z8y01/idRiPyRQMPk54zQdIsdND4sjZfg=; b=MJ42k4JdMGf+1VzZZzPB8a2QF
	cF710zLKxBScLThxcz9jyjNyIPj0EWt1NgrkDtfdYb50j36GTg2I68s49FF7bl40ua7azHY5mjhkJ
	dodsxDVKBdY8VFjGKbIfSQ2KS25k79emIdkUV9bWqh5wIOV1lMyO3uOyosQrPSf2WcuKPn8lzssSg
	wMu8EKk/m8DA4RS9o4JHfqNGzQvCX1ecR5pjJ9yK7Grc9h1CuqzjKzgJC1T63lffwU9sipvebaBDi
	RlelGTjd+PfDY+Vs+axXhTdHEAB1gHxsSuctgmCP+wooWOm43UCmFPGRVdjxhvsYaS7mDOWVINg8x
	9E03M1DSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i81Hi-000102-38; Wed, 11 Sep 2019 11:59:42 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i81HZ-0000tm-5L
 for linux-rpi-kernel@lists.infradead.org; Wed, 11 Sep 2019 11:59:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tK0JR9oNjstb9FQfTR2pCydHBSMT54MQKglFzHOPGBo=; b=afFRogvBvedLbX+TNVz+KvzgQ
 mz0+OBWqrRfumTS5Ds0ZHMoGK8UXa0nGhET+Ogu4W620uJ5AJLXpJhv2RGPzId1T3qv6/swLu38pq
 2yOLEtNYfSrbtYAwlhYA/ozrEK/LkeCaeK3NloVuXWE3Il4GjQ0UaNIk2ydU8bFAsI284=;
Received: from [148.69.85.38] (helo=fitzroy.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1i81HU-0000P6-So; Wed, 11 Sep 2019 11:59:28 +0000
Received: by fitzroy.sirena.org.uk (Postfix, from userid 1000)
 id 3D00AD00486; Wed, 11 Sep 2019 12:59:28 +0100 (BST)
Date: Wed, 11 Sep 2019 12:59:28 +0100
From: Mark Brown <broonie@kernel.org>
To: Lukas Wunner <lukas@wunner.de>
Subject: Re: [PATCH v2 00/10] Speed up SPI simplex transfers on Raspberry Pi
Message-ID: <20190911115928.GE2036@sirena.org.uk>
References: <cover.1568187525.git.lukas@wunner.de>
 <20190911104721.GX2036@sirena.org.uk>
 <20190911114352.w2htkzfi5v6zl7nq@wunner.de>
MIME-Version: 1.0
In-Reply-To: <20190911114352.w2htkzfi5v6zl7nq@wunner.de>
X-Cookie: Be careful!  UGLY strikes 9 out of 10!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_045933_217715_D8A5584C 
X-CRM114-Status: UNSURE (   7.56  )
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
Content-Type: multipart/mixed; boundary="===============6031579073418001077=="
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org


--===============6031579073418001077==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Lg8eXa+brxrbjAbR"
Content-Disposition: inline


--Lg8eXa+brxrbjAbR
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Sep 11, 2019 at 01:43:52PM +0200, Lukas Wunner wrote:

> I use "git format-patch --thread=shallow", then use a Perl script
> to change the Date: header and send out the raw messages with msmtp.

Sounds like your perl script could just be git send-email?

> I suspect the incorrect order may be because all messages use the
> same Date: header and you're using "sort_aux=date-sent" in Mutt.

or that the messages are getting reordered in transit by the
intervening MTAs and it's falling back on delivery order lacking
any other information.

--Lg8eXa+brxrbjAbR
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl144Z0ACgkQJNaLcl1U
h9CiGgf+IZkFNPyHBjwAVwbah4Xor1XYDP/HVn9fnXlcm4hxeMSuYkCdimjnkwFy
NBEgTw0samr7jvJtNwoU8GIOuntj2nbkPyQRTRktAfUX7hwXoPnWXyo6CKmBlGKY
kL1CZhQa62BVgS8p8a/0e9q4oE4hUo/7zTqNrNw11kMcIA1SSs+h6dtWtT65RidS
YZsY4IJclh+qZpnERxE9ceRCOuviz7bIEcGz8H0ZA7/nftR+9va8vjmYgwjnW0ir
5pel+Me4nixf0+fYorS97DvGGq2puMhUfwwajDAaFYa6shsNjea2EbBho5BpqIH5
JBsy+0Z93PeNmUEGgvfprEGmbnpxxw==
=CdYe
-----END PGP SIGNATURE-----

--Lg8eXa+brxrbjAbR--


--===============6031579073418001077==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel

--===============6031579073418001077==--

