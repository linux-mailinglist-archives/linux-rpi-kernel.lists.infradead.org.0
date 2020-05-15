Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E71F1D5608
	for <lists+linux-rpi-kernel@lfdr.de>; Fri, 15 May 2020 18:29:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=eOpGSNrcQkd8Iphk8QOPFKKLLrrm/psqDPXjpa1WSJQ=; b=kHzmVDMu9vH7VqwNN1EdFp9iO
	UQNkZMi65zRd1IEwoR9/ZEbYsVaGjq8AzogRfXTrXcGo8ro9tbJW8EAFZHRap+7dKd3hPdRMR7pVP
	unt47tbWiJt8fNzBUwXTYkOqeCHnho6+gVGEw+2RuXKRCf75jODM4+LQoYU3/v2z67/NAk4Zu/4Ui
	vM0lhlRESYtO8ixTL6lmPgXNOtkFRnIjvXx3DGHylJDXjKeD+dsPpBajNmZLR5DxUW73If+gsoOQw
	ZE3faJNZuefgAF5+zm+LuzF/Iz2f5hMVjXnMJs1Fj6x9FdAm3J/VHJDxQ2X/63DWYzS9+W5fPLN0A
	ExhTkKeRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZdCu-0007Le-Ja; Fri, 15 May 2020 16:29:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZdCs-0007LM-K4
 for linux-rpi-kernel@lists.infradead.org; Fri, 15 May 2020 16:29:07 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BC980206D8;
 Fri, 15 May 2020 16:29:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589560146;
 bh=02a10HlRELSqC3xc/FlfsbLp83hhvpY7LD4P6Y7ikwg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=uJjW5VDNDgiIsXymkUEuY27/7Zqo/bYh8p6pyISEj4OhawiZviWZw93VvMjlM0M+7
 iHDcJDcw34UlUI29JsVkvCYKO91N4thZaDhaErONviR8inXqvkMpcJ0fbkJyd05JyJ
 0481pqwvDIyo0Z4vfDJvz9MWVv+RrrXYv7RN7ETA=
Date: Fri, 15 May 2020 17:29:03 +0100
From: Mark Brown <broonie@kernel.org>
To: Lukas Wunner <lukas@wunner.de>
Subject: Re: [PATCH 2/5] spi: bcm2835: Fix controller unregister order
Message-ID: <20200515162903.GH5066@sirena.org.uk>
References: <cover.1589557526.git.lukas@wunner.de>
 <2397dd70cdbe95e0bc4da2b9fca0f31cb94e5aed.1589557526.git.lukas@wunner.de>
MIME-Version: 1.0
In-Reply-To: <2397dd70cdbe95e0bc4da2b9fca0f31cb94e5aed.1589557526.git.lukas@wunner.de>
X-Cookie: Avoid contact with eyes.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_092906_677690_6B7CAAE0 
X-CRM114-Status: UNSURE (   7.84  )
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
Content-Type: multipart/mixed; boundary="===============0313851941974319989=="
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org


--===============0313851941974319989==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6lXr1rPCNTf1w0X8"
Content-Disposition: inline


--6lXr1rPCNTf1w0X8
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, May 15, 2020 at 05:58:02PM +0200, Lukas Wunner wrote:

> Fix by using the non-devm variant spi_register_controller().  Note that
> the struct spi_controller as well as the driver-private data are not
> freed until after bcm2835_spi_remove() has finished, so accessing them
> is safe.

Why not use managed allocations of clocks and DMA channels?  This is a
standard issue with the devm APIs, if you're using them you basically
need to use them for *everything* up to the point where you start using
them.

--6lXr1rPCNTf1w0X8
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl6+w04ACgkQJNaLcl1U
h9BF0wf6Ajz3aDrk3pYLSVXJ+s8F/JyfnNOvMRwtBPgjnmYAocvIvRQdrOfa75/d
QlzjIg6w8NV8cgW2FW6lRUwOoQxF58z2NrQcHL0nEhpsyRlwVMcDFVMcQyws1gnh
UpDzX/g+3ycua/YthTbkynmXk8F86YDbH9hmqbgDYfaXgM0AISlYiEz4XnGaIwmC
fKrFE/ubMdVxuodboexPdsZzTbAWRsB3lOKcBOUOBLikd+9tpE6n/0cr6PlI8o/y
r+ndLb7opAEdYnx1KtYilYjh0tT7mOb0bYqy2jxU3RkvB+8CbtJsEGxBGmLDRp+0
gvq9RGTtrfSmuhMgXXSk3bdnGM8Kpg==
=lVMZ
-----END PGP SIGNATURE-----

--6lXr1rPCNTf1w0X8--


--===============0313851941974319989==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel

--===============0313851941974319989==--

