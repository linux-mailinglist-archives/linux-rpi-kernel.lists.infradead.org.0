Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B478D1B9A1
	for <lists+linux-rpi-kernel@lfdr.de>; Mon, 13 May 2019 17:12:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fB1+pKSfoIMQk/7kmEqph4riXyiETDJH70YxRdAtIPQ=; b=JbTKZPmdsYNeAJjf8NCCCwzkd
	bYD/p1iC4DwuSLTRWocfNR3vPJXCNNKNB4O0TO+LjYJBHSnfYt+56sBuRz+m3+K24e8x+U2qiRsA+
	Lz6eGNdbBwr4Jk+dt+RtNVFMoqx26Kl+pMtmeavP5qJG7qIAXffxEB/hKhCd+TrBxQfHuBadCYKeG
	Er8ymBoAGfWQxpKQ2PSROZIpD80Gm4SAJsxe61Fn6QI8yLt3Q7cOmt2qf7G8YN+ipOFTilOlX1Z5D
	mo/PDMLIFXl9oHvujum4BIpdXqu/VlKLzWBzLLLe0XNucFz706+TA0Mo8a1UrTfcWmurRf6u6KMx5
	IgzYj6ASg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQCcy-00056y-B4; Mon, 13 May 2019 15:12:32 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQCcq-0004zu-6N; Mon, 13 May 2019 15:12:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=25XK2QV3mzd/RZlso5+EL6Yh9tvNSkUrkIoGtKKgtpU=; b=VE1LDk+E1hpsLn/thjZDyhs5w
 k9kGhLabtxcGuHqY2+p2oTM8KbPNk0ycrPxCIaejkA1aRSqtdBrfN6dH3c91wkESk1BhUSznf2xRs
 XqWCx4CpWGfQZNDC5k/EfvVG39JzlbN1aU1rNAd8vqLqoirGpZFYq765aBb/6ynp9jl4k=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=debutante.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpa (Exim 4.89)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hQCci-0006rY-OP; Mon, 13 May 2019 15:12:16 +0000
Received: by debutante.sirena.org.uk (Postfix, from userid 1000)
 id DD3431129232; Mon, 13 May 2019 16:12:14 +0100 (BST)
Date: Mon, 13 May 2019 16:12:14 +0100
From: Mark Brown <broonie@kernel.org>
To: kernel@martin.sperl.org
Subject: Re: [resend] [PATCH 5/5] spi: bcm2835aux: support effective_speed_hz
Message-ID: <20190513151214.GB5168@sirena.org.uk>
References: <20190223150705.10729-1-kernel@martin.sperl.org>
MIME-Version: 1.0
In-Reply-To: <20190223150705.10729-1-kernel@martin.sperl.org>
X-Cookie: Must be over 18.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_081224_379380_B5CCD222 
X-CRM114-Status: UNSURE (   7.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: multipart/mixed; boundary="===============5908411047069397148=="
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org


--===============5908411047069397148==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="s2ZSL+KKDSLx8OML"
Content-Disposition: inline


--s2ZSL+KKDSLx8OML
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Feb 23, 2019 at 03:07:05PM +0000, kernel@martin.sperl.org wrote:
> From: Martin Sperl <kernel@martin.sperl.org>
>=20
> Setting spi_transfer->effective_speed_hz in transfer_one so that
> it can get used in cs_change_delay configured with delay as a muliple
> of SPI clock cycles.

This needs rebasing against current code.

--s2ZSL+KKDSLx8OML
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAlzZiU4ACgkQJNaLcl1U
h9DUMwf9HVUWCWikiFC7SUxOGSqhM2/tdziY9oZvOLbKO5fqkF9etxS2JQMCLyFK
SOceSXWZO+JOX5BR780dE6Mi4OwWjt7edeQmhGfrz6FbQ2kBOTeDyx5VVg2UCm4x
fphwn4/EwX1IQAz6ZBqmVE1WSuZBede/dT+7GeRKRRMlhqY8r8T1AElKOKbQsdlO
RbZ8SaizniMo68tqXDX595rt9Vy73yeAE2WFchucJjQPzj9mU6gDzoyBv6b9EL/R
jBegJsUNzmrdlDL4I0wAIdLrOZiF+LTN5EUZDTlV5R5do8eLl9ErRHQyF9iAExpO
vqGdIyW/QMtJXQvxOHrEsO6ce9CiBw==
=3EQn
-----END PGP SIGNATURE-----

--s2ZSL+KKDSLx8OML--


--===============5908411047069397148==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel

--===============5908411047069397148==--

