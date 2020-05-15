Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85A3E1D5603
	for <lists+linux-rpi-kernel@lfdr.de>; Fri, 15 May 2020 18:27:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kh8+u9EOVQI7H1hcf4dAYn6n8bGJP8eE3c3xdFlQKco=; b=A4sNeuy1nEObgi+AerBDrQQRw
	k3p69Nae1j1HgCUkStb1yV+y+hGtwou0G/r262gJ9SWTO1HGJhFlfRk4VKK7nSSeg17ce7WmgkTzg
	zZwBSHLCXoCu1cBgl184Mebt941IbAG8kMqsHHYcgfDykMgUw/BlsGhYpO+4wW/QLGs/BSVrt3VAR
	mkfKi53GmmOQqAu5Lsri7ol9oXC2hZIPENTIEyX6Ke2KvqJHxOa/DNpEREXwv+aMndJj5ea9ecsEm
	WKZ9k6oezhcj2p22mPIofleq0IecEjmB8fuHJL7NwrTDucNnkY2atXgsuCKa9DHLAd8mM3wn9G7ns
	hbF3kxzzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZdBL-0007DY-U8; Fri, 15 May 2020 16:27:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZdBJ-0007DE-52
 for linux-rpi-kernel@lists.infradead.org; Fri, 15 May 2020 16:27:30 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EF1B6206D8;
 Fri, 15 May 2020 16:27:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589560048;
 bh=ZgGDaC+Ol1y/kYtjFW3nXfg2X9TkyRF+k6GRjy63Iyg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=zXszGCqCPcV4lW+6U8WZ9D4M6L/OGY7hyDhYOLYcP+fnWA6uGxnKjGYAOk+x8P6UV
 NC4CIu9wERzqNRq3U14L6XWmbcK43CkopCHraY4mE4z2lhcDgv5d0Q9PPJRYpQP8ww
 D0aRH7dhIW7+pW8SPAlireWEP4iHa8BvHokAgC2g=
Date: Fri, 15 May 2020 17:27:25 +0100
From: Mark Brown <broonie@kernel.org>
To: Lukas Wunner <lukas@wunner.de>
Subject: Re: [PATCH 1/5] spi: Fix controller unregister order
Message-ID: <20200515162725.GG5066@sirena.org.uk>
References: <cover.1589557526.git.lukas@wunner.de>
 <8aaf9d44c153fe233b17bc2dec4eb679898d7e7b.1589557526.git.lukas@wunner.de>
MIME-Version: 1.0
In-Reply-To: <8aaf9d44c153fe233b17bc2dec4eb679898d7e7b.1589557526.git.lukas@wunner.de>
X-Cookie: Avoid contact with eyes.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_092729_214118_2E9E904E 
X-CRM114-Status: UNSURE (   7.18  )
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 linux-rpi-kernel@lists.infradead.org, linux-spi@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============8717384810585240263=="
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org


--===============8717384810585240263==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="YH9Qf6Fh2G5kB/85"
Content-Disposition: inline


--YH9Qf6Fh2G5kB/85
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, May 15, 2020 at 05:58:01PM +0200, Lukas Wunner wrote:

> However since commit ffbbdd21329f ("spi: create a message queueing
> infrastructure"), spi_destroy_queue() is executed before unbinding the
> slaves.  It sets ctlr->running = false, thereby preventing SPI bus
> access and causing unbinding of slave devices to fail.

Devices should basically never fail an unbind operation - if something
went seriously wrong there's basically nothing that can be done in terms
of error handling and keeping the device around isn't going to help.

--YH9Qf6Fh2G5kB/85
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl6+wuwACgkQJNaLcl1U
h9Dr1gf+JPjuMMv9SnbM4EafRBvIbJbqzdo/MJJBSATGgOPeg2mzu4VcRmHA5p07
91DZyw5Ck2hAHWNhyOjjA5CHowwVdyPH+CmuBH3bB9irOhiyPuaFa5oqv3LIxyiw
vPKU8+6c9gH4S5LnRyiSsMFMvOYJqpEbKh4B4ApnDGSNl9fqAhuRwWtcios0cTlR
nspNCzN5JumLG/1SmqjaaLgXQwc4OJd7JIRvM3tnWtq/B/998Cy/s8Wm0MWpkviJ
dY42Rr3GgeOpvXL6N6DzEzPWAUO6Ku0U52mzcSWDk0mY9v/Y06emezO9DUaZNfJB
/ege/Gi1MCe+gfv7EnNVoBE7c/iHjg==
=O/Jr
-----END PGP SIGNATURE-----

--YH9Qf6Fh2G5kB/85--


--===============8717384810585240263==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel

--===============8717384810585240263==--

