Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AADF611365D
	for <lists+linux-rpi-kernel@lfdr.de>; Wed,  4 Dec 2019 21:24:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jgxTmely+5I+pMqUW7h1Os4JzCntgaNloiEHsCqM644=; b=XrM+/7WOz3/fdB4ywQmkytmnU
	NUftVaJqtjjh+P+DCV3EXmcYWtyPtkwxzKQMuzHg6YX7PmVyTVoV9tUhX+u0Pu39uq+b7xv2hVdso
	HsCb/lqKrC0gXrD6a4vjvA3y3QAEkdBvDJOuAZxxBP1MdWbTykvKRPQSkRnzBRHyOyCRHabWWC2qZ
	F8OrpGBX6xD8TRuqlcR3o22JW1dhC0XXOFJzJ/kJ/dHNg3/IPhYkA1yvV8qUfoj7FagtGZjXjjqks
	jbwho0UMdMhrgK96vZCCv0AmyCAwBlnSAmTT3rZ0P7iMwkevPQxgH+9eaZTIvTd25B9ndGRZ/9aup
	NG4VSQ+Cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icbCO-0002UV-HO; Wed, 04 Dec 2019 20:24:36 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icbCK-0002UA-En
 for linux-rpi-kernel@lists.infradead.org; Wed, 04 Dec 2019 20:24:33 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id AFAF3AAD0;
 Wed,  4 Dec 2019 20:24:30 +0000 (UTC)
Message-ID: <7c66de0671589246e04ed2a7f2f41653ce5cf5de.camel@suse.de>
Subject: Re: Raspberry Pi Kernel Contributing
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Stephen Brennan <stephen@brennan.io>, Stefan Wahren <wahrenst@gmx.net>
Date: Wed, 04 Dec 2019 21:24:29 +0100
In-Reply-To: <BYWGM3UIMECN.2LBM56ZYRCANU@pride>
References: <BYWGM3UIMECN.2LBM56ZYRCANU@pride>
User-Agent: Evolution 3.34.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_122432_644293_7E29FBB7 
X-CRM114-Status: UNSURE (   9.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Type: multipart/mixed; boundary="===============6260178428717381744=="
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org


--===============6260178428717381744==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-50qyhlPJS/DDdWhXjYh8"


--=-50qyhlPJS/DDdWhXjYh8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 2019-12-03 at 23:35 -0800, Stephen Brennan wrote:
> On Wed Nov 13, 2019 at 8:09 AM, Stefan Wahren wrote:
> I'm happy to try to take on anything which you may not have time for, but=
=20
> I'm sorry in advance that I may need a few pointers to get me started.

Stefan told me some time ago that the downstream HWRNG's performance was be=
tter
than the results we have upstream. As you already did some work on that top=
ic
you might want to have a go at it.

You can compare the downstream commit[1] with what we have upstream, see if=
 you
can make some sense out of it, and integrate it into the current driver in =
a
way that's acceptable for upstream.

That said, without documentation, it might not be that easy.

Regards,
Nicolas

[1] -
https://github.com/raspberrypi/linux/commit/5e74aadfd1e0e6c00994521863ba044=
ce25b40de



--=-50qyhlPJS/DDdWhXjYh8
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl3oFf0ACgkQlfZmHno8
x/66egf/QZ7Ik8XHVVaS1FTY5M4SCUeWPksxhI+jeJjAYk4sFwnzhi7aeaqTMy3c
TwcM3x9XCKMaR+vC0+cHoPN3EnIIG0yJP49LnynPbYnAPSTENhgi8s0sCgWn0LXg
xf+1v0eGMTeiIyMQVb1+fg1H6WNal7pqX8bxHiRwbZyCusr4uACTV+1DMF4cNPyB
cAu9CX43rU30mBfwbUgZTcZW7hDRCS2BkFzq95qfFJxm6s6VGLL3Eek1U36B7wig
80U39DG4dFMl3HyqePbxz1A682ARKmMqkT3F8fwO9Jyd1IsM+6J9zaNCcrOERYM1
efymHD6IGaykvbZiUGYvwXeXsolUiw==
=wyH8
-----END PGP SIGNATURE-----

--=-50qyhlPJS/DDdWhXjYh8--



--===============6260178428717381744==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel

--===============6260178428717381744==--


