Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB0FD1D560B
	for <lists+linux-rpi-kernel@lfdr.de>; Fri, 15 May 2020 18:30:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RhIAzbdR0FYBYvp+DDlTWhE2t7UKz49JXIXunvz9ovU=; b=pPQcWj0AkxREZPJ8w7JTVbj4s
	WGwf4q5sOZzOiwiBpL3oj8yiZTiTreE4e73kfdpv+j9o0DPbGrUD+aWOyCKkecJBedktoUrevXBqz
	jp/co+mdRvZ3b7ix1xmy0cOIAoflDYITgDsMxYa2t916O5en2s+yHdADNJXojXN+Z9mvmId3oIIqc
	f4wCbFH6+jRzzF77ldDx+1FMWgOhrUg05uIUFIe8XRz6SpkA5apeLM8IxP36l5ePsgdiN1mI+4vE/
	i/NcTK9xIo3MyeqtiiQtXS8NeIUoXr2qSqLf3qOklugKhn/QlaWRoOM+MmFhTw967eYQ6X7gb7y0D
	xABsUdQOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZdDr-0000HE-Ot; Fri, 15 May 2020 16:30:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZdDn-0007r4-Oz
 for linux-rpi-kernel@lists.infradead.org; Fri, 15 May 2020 16:30:05 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DC34C206D8;
 Fri, 15 May 2020 16:30:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589560203;
 bh=kcABlY96zZuuvxknCuTu6y2BzoSb5JZQAgWATiaGH4E=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=EL6CeV32YvSHnEsKtk8Rffu6tdx7k2g/NyPIG4QkZYRI0A3/ee1IlcLWAAwVO+pJv
 e1dJznSYnTpgXY9LCzdUKesJyZcN792o1oDIfEy1pWzRrlbRDJ5FEg6rsbb/ooFxOQ
 CPE4Ha3+8L+26Sxh5lF/+efjTyMIUpID/C1AZABw=
Date: Fri, 15 May 2020 17:30:00 +0100
From: Mark Brown <broonie@kernel.org>
To: Lukas Wunner <lukas@wunner.de>
Subject: Re: [PATCH 5/5] spi: Document devm_spi_register_controller() gotcha
Message-ID: <20200515163000.GI5066@sirena.org.uk>
References: <cover.1589557526.git.lukas@wunner.de>
 <d0dcbd098401b5d2a486eee7cf2f9dcabacf9605.1589557526.git.lukas@wunner.de>
MIME-Version: 1.0
In-Reply-To: <d0dcbd098401b5d2a486eee7cf2f9dcabacf9605.1589557526.git.lukas@wunner.de>
X-Cookie: Avoid contact with eyes.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_093003_839999_9C6D819A 
X-CRM114-Status: UNSURE (   7.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Content-Type: multipart/mixed; boundary="===============2308062741912105620=="
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org


--===============2308062741912105620==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="EdRE1UL8d3mMOE6m"
Content-Disposition: inline


--EdRE1UL8d3mMOE6m
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, May 15, 2020 at 05:58:05PM +0200, Lukas Wunner wrote:
> As a rule, devm_spi_register_controller() must not be used if the
> driver's ->remove() hook performs teardown steps which shall be
> performed after unbinding of slaves.
>=20
> Dozens of drivers are doing it wrong.  Document this gotcha to
> hopefully prevent further misuse.

This is something that needs to be documented at the devm level, it
applies to pretty much every managed API.

--EdRE1UL8d3mMOE6m
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl6+w4cACgkQJNaLcl1U
h9DZ2Af+PBsyttZqul8Zsvsfo0lBAKRdPEmmL6COZKHi1rjKqORzv0CfupBvogg3
B9jgHgEQH730rdi+qFk6suEMguq/E/K4jBj9n6L3+8JnlZjgEvqRVm4Ey0j4pDIr
Kt7OHSGauAwsM1TfALIugEvvu5L5rM3QS1+zxKcCARBUNR+G0XyI+DeVEUMmSCUN
137NZfCgmA6hXfRUC5fNgmhcTPSjfJp8FFp4BYL3Ma97LQPXTQSNWl93XqbJzmMm
wCAN74QoTOz2hrbHu7XRcf8V68A0jtjEXmbZ0bFZ7VQztQhOEB2BduArwqatJcmp
eQcRj5PV+gugrI/WLqTYvrSiGy1DVA==
=nEt8
-----END PGP SIGNATURE-----

--EdRE1UL8d3mMOE6m--


--===============2308062741912105620==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel

--===============2308062741912105620==--

