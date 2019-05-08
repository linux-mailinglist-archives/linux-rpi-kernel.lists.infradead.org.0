Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CF03173B8
	for <lists+linux-rpi-kernel@lfdr.de>; Wed,  8 May 2019 10:27:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aOwG90F/aM/zY3ElbXKJ4WNwL8lf/GxC9UdSttT4A9k=; b=cUHUgt24NYAcP9D+NwfVD/bm4
	R9wub7sEPvyQ4X/ss3weZadZlzsc8r+7xCsbKxSO1KBo9K7foYzNquprkxDpuJGdpVk+gxloU01XR
	U+NfJTCOCTi00GYO4vKQ8dpivavlk/a8PguQd2T+Ao4OJbEb1oQptzqXLwtBC+0apOh0asAL/2Jd7
	YXD7YYeqcECPGdG/gdDB8l9zgn2bPzZNICr0Pi4TelTctLoiP28Dn3b/8HBt986c2Z0p0TYWraGDP
	OeDaq5Teou8goG5s13jjtOfyvBPjH6Kbz5J0aU5BoUvLwgERh7+nNBpjvLMY3rCBokvsw8XrWaM9n
	86FOy58HA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOHvG-0007yE-MO; Wed, 08 May 2019 08:27:30 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOHv7-0007rX-EH; Wed, 08 May 2019 08:27:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uH22Ss7RWa1Q/gLr9LVMt/zwsM4rNt9ZN5QuG9Xr+HQ=; b=VIoluLCzbRQb61te7trrIBk5N
 Iawe4mLoXIo4W63kFGGE1pt7ay2Yyu+aZ7h2/uCsvBOoh/mH8eu2+zWtErOKQMmK0KCzIcfZ6CM6T
 P72EC2d7rUDWTWCyMmUkqRPMgmySZppX9U6so6AYgJGLmdIYZVtV+FwKIPsoFaGHH42dc=;
Received: from [61.199.190.11] (helo=finisterre.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hOHuo-0007Te-NX; Wed, 08 May 2019 08:27:05 +0000
Received: by finisterre.sirena.org.uk (Postfix, from userid 1000)
 id 3415B44000C; Wed,  8 May 2019 09:26:54 +0100 (BST)
Date: Wed, 8 May 2019 17:26:54 +0900
From: Mark Brown <broonie@kernel.org>
To: kernel@martin.sperl.org
Subject: Re: [PATCH V2 1/6] spi: bcm2835: bcm2835_spi_transfer_one_poll
 remove unnecessary argument
Message-ID: <20190508082654.GB14916@sirena.org.uk>
References: <20190423201513.8073-1-kernel@martin.sperl.org>
 <20190423201513.8073-2-kernel@martin.sperl.org>
MIME-Version: 1.0
In-Reply-To: <20190423201513.8073-2-kernel@martin.sperl.org>
X-Cookie: -- I have seen the FUN --
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_012721_638828_13615B78 
X-CRM114-Status: UNSURE (   9.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-spi@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============6084398097094872933=="
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org


--===============6084398097094872933==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="o3dU+gdzLtSIP39w"
Content-Disposition: inline


--o3dU+gdzLtSIP39w
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 23, 2019 at 08:15:08PM +0000, kernel@martin.sperl.org wrote:
> From: Martin Sperl <kernel@martin.sperl.org>
>=20
> Remove the unnecessary argument of xfer_time_us when calling
> bcm2835_spi_transfer_one_poll.
>=20
> Signed-off-by: Martin Sperl <kernel@martin.sperl.org>
>=20
> Changelog:
>   V1 -> V2: applied feedback by Stefan Wahren
>             reorganized patchset
> 	    added extra rational, descriptions
>=20
> ---

As per SubmittingPatches the changelog should go after the ---.

--o3dU+gdzLtSIP39w
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAlzSks0ACgkQJNaLcl1U
h9BY0Qf+IN1cU8pA4fu4aeFzAF84gtxCwr7OTUKaDZsjCl3jHXWSPZW78sYMFWgJ
n0Dl4xw8E+iC+pk+JBMJ6yu8CzPN8bo4lHUHVsTTm0l0zRaYEXGDxd7PRMBnF/Hq
7fzwbDCqDMxXIqdZ8zWIG6X02G9JPyHHD7QICSXHK8vgJU0hL1EC9wiA+vGgZhRR
9FEhpt4+//JzSx8mghV76CKtdyeX2L19xuTfYfdzOqt9yI87DjVpeox3rJuNNNAh
pQ0v/JMW1t23Btzlxegpe870L9LBzOLCkiCAyPKcMNKZEfkYMmxc2gldgmDVeuDc
YStYnC0d+5bPIKklfVMc4FDZ0/XSvw==
=aPRu
-----END PGP SIGNATURE-----

--o3dU+gdzLtSIP39w--


--===============6084398097094872933==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel

--===============6084398097094872933==--

