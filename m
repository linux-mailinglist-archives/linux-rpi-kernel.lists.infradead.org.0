Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93FFB422C9
	for <lists+linux-rpi-kernel@lfdr.de>; Wed, 12 Jun 2019 12:41:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SD9/KJjI8V0hm//OJDMFlfgzIhFqK/CZQ19OVuKKaPM=; b=M0zPAlO6jxuQLxTUy/ukFonPh
	X0J9m2ernV7O8DHs2sxlxo35WGRLzkWkuhQkf74b2Bwsbz9IsZOdBkJ4kdph9lWaw7GIRMoUwXUv+
	dCncS+3G9M/F97N9P7Z22nwUGL7cDjAa1GoP7h64ztl2uoeiPZu+x4WeJsul1V05x2i/rGIDeh+FN
	kgoxqdj/UnNDJY/bzZ/pfXxvnPqvwzy8XQKfcTwWwp3JUVnXid4yuubuA+/iz4icIGXYYVqP+eEiC
	khRZUnX3lqRZFogEwY3v2muNy1F7q4NA/Io2/rXngWzXMSlL7i6sKAZMP4cVSH5mdAn/s1GjU1Bjy
	rbxZqP0LA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb0h0-0005e3-Du; Wed, 12 Jun 2019 10:41:22 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hb0gm-0005U3-D9; Wed, 12 Jun 2019 10:41:12 +0000
Received: from localhost (p5486CACA.dip0.t-ipconnect.de [84.134.202.202])
 by pokefinder.org (Postfix) with ESMTPSA id A55412C54BC;
 Wed, 12 Jun 2019 12:41:07 +0200 (CEST)
Date: Wed, 12 Jun 2019 12:41:07 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Annaliese McDermond <nh6z@nh6z.net>
Subject: Re: [PATCH v4] i2c: bcm2835: Model Divider in CCF
Message-ID: <20190612104107.ndbo55ii2w3ahtzr@ninjato>
References: <20190529042912.12956-1-nh6z@nh6z.net>
 <20190608171443.14484-1-nh6z@nh6z.net>
MIME-Version: 1.0
In-Reply-To: <20190608171443.14484-1-nh6z@nh6z.net>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_034108_601978_6D497496 
X-CRM114-Status: GOOD (  14.45  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [88.99.104.3 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: team@nwdigitalradio.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-i2c@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============7417164640055872645=="
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org


--===============7417164640055872645==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="c6c35ryx46u6myid"
Content-Disposition: inline


--c6c35ryx46u6myid
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Jun 08, 2019 at 10:14:43AM -0700, Annaliese McDermond wrote:
> Model the I2C bus clock divider as a part of the Core Clock Framework.
> Primarily this removes the clk_get_rate() call from each transfer.
> This call causes problems for slave drivers that themselves have
> internal clock components that are controlled by an I2C interface.
> When the slave's internal clock component is prepared, the prepare
> lock is obtained, and it makes calls to the I2C subsystem to
> command the hardware to activate the clock.  In order to perform
> the I2C transfer, this driver sets the divider, which requires
> it to get the parent clock rate, which it does with clk_get_rate().
> Unfortunately, this function will try to take the clock prepare
> lock, which is already held by the slave's internal clock calls
> creating a deadlock.
>=20
> Modeling the divider in the CCF natively removes this dependency
> and the divider value is only set upon changing the bus clock
> frequency or changes in the parent clock that cascade down to this
> divisor.  This obviates the need to set the divider with every
> transfer and avoids the deadlock described above.  It also should
> provide better clock debugging and save a few cycles on each
> transfer due to not having to recalcuate the divider value.
>=20
> Signed-off-by: Annaliese McDermond <nh6z@nh6z.net>
> Acked-by: Stefan Wahren <stefan.wahren@i2se.com>
> Reviewed-by: Eric Anholt <eric@anholt.net>

Applied to for-next, thanks for keeping at this! And thanks to all
reviewers, too.

(One minor thing: next time, please start a new thread when sending a
new patch. This makes applying patches easier.)


--c6c35ryx46u6myid
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl0A1sMACgkQFA3kzBSg
KbasXBAAses+qCt/n9a2IXid6+QUuQ1nhIn/M5YcKTklfilWQ8izcToLQQeSAhDf
9k7JxvejL6Soq9oj3aR+RTvcH3G2l7yaYHZzUIkq76ux4LN0ZdFymlkhAPQoN6Ar
bBSiP4EH03os2jiUBSxSqnHlJE5y0WVSZdvLin2sOj8Y7FC6AztHkFWaYkcm0gBc
kbHZdFu+FDmO51hv+jv0RQYefigjJfCNsh5dMZbCPxVvTt2EPn5vks+49dsXlqWE
YaZCH0qKMB0KqIzpg7AXlH2htqNORVcJ3wYrdrKC30rvexgyp9h/CNwnxZEYAtUR
C/Sft+FJWzVagqC5K/rZcwB10FNj4yItJZ1+JOg9AkxHo7CTlo51zwSBAajblaLi
VQnf1PlZHkSy3CGGJZOFyOOHLmEX/Mzs/Nq+lhSEM2sQoYBxd8XZYHtITMumodoy
38fSFJlon7aDl28zM3t72h7MTUsQvsujaqMpQa67vn3FjySqXDk7qS71Als9RPxS
RcXwm097rMS+OQRjOPH0dOur5dm14iOLtChA3OrZpBe9zEjjIWa8Q565BurTsqW7
+uQ/MqzYVfkkW4EHSt308mALe5yYJBdS4Nb8Ws2ua8qp8pUrCjWewxDZg0yMff+p
zGFHmwOm+Jl9vu2SCpTVBtBLtU4+b6sN/AyZCVnh/tTKd90AwWQ=
=UHqb
-----END PGP SIGNATURE-----

--c6c35ryx46u6myid--


--===============7417164640055872645==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel

--===============7417164640055872645==--

