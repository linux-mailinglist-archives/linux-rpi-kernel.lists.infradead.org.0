Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 845B21496A8
	for <lists+linux-rpi-kernel@lfdr.de>; Sat, 25 Jan 2020 17:37:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LlDbW3liB+NDPfVlhmleC4yVtKXlOW0s1DTsaCPAllo=; b=CdR5so56LwKEueIQXNxsfbvvO
	oKnAciCpC3tpiy9OhSHbVZYughniNCu6ENIklLiaqdOIMLBSNZABIijMUxSoLH6eK3cJ+OA87BiXH
	U8DVRGxZgANJQLXh7y94Ac2FJ+ArmB/FMWpp4piah1Ao4PYfKaks7jmieUq11xoeYnqejpO6CQQNu
	QLoXhUPrDdxuZs1bBaDCoQinubPoLHRWhzBF401OxC/xgmQBKl6nsyrIj/VyJb8QSM9vnF726Znva
	FZV3pMpeS22cCppinLIL18oOd04tcQrt+Q2XcDPo3uQ9F5A9m5o4OviOMHUwM49icXBubp20O0aM3
	JTMRcx+Mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ivOQo-0000MN-P6; Sat, 25 Jan 2020 16:37:10 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivOQl-0000Lx-4w
 for linux-rpi-kernel@lists.infradead.org; Sat, 25 Jan 2020 16:37:08 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id CB786AFE8;
 Sat, 25 Jan 2020 16:37:05 +0000 (UTC)
Message-ID: <fabf489143bbadc2a6aaa75a0a449871d4f22306.camel@suse.de>
Subject: Re: RPi B+ USB support
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Valentin =?UTF-8?Q?Vidi=C4=87?= <vvidic@valentin-vidic.from.hr>
Date: Sat, 25 Jan 2020 17:37:04 +0100
In-Reply-To: <20200125163450.GJ3671@valentin-vidic.from.hr>
References: <20200125130737.GG3671@valentin-vidic.from.hr>
 <C04WEWWXBXRL.28WZVXZ9OKU4B@linux-9qgx>
 <20200125135404.GH3671@valentin-vidic.from.hr>
 <41e082fa921653f57de2809630bedbb339fe5111.camel@suse.de>
 <20200125140421.GI3671@valentin-vidic.from.hr>
 <0f28a4fe2806aa5e4444aa6758ea60a73d1e8209.camel@suse.de>
 <20200125163450.GJ3671@valentin-vidic.from.hr>
User-Agent: Evolution 3.34.3 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200125_083707_337438_AEF37114 
X-CRM114-Status: UNSURE (   9.59  )
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
Cc: linux-rpi-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5454723276903929811=="
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org


--===============5454723276903929811==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-krXTM67MqSDlorzMqFnl"


--=-krXTM67MqSDlorzMqFnl
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, 2020-01-25 at 17:34 +0100, Valentin Vidi=C4=87 wrote:
> On Sat, Jan 25, 2020 at 05:16:23PM +0100, Nicolas Saenz Julienne wrote:
> > Could you list me the contents of your boot partition and the contents =
of
> > config.txt file (which should be in the boot partition).
>=20
> I recreated the boot partition from scratch and now the boot and USB
> works with both the Debian and kernelci kernel, so it seems the u-boot
> was causing the problems. Thanks for the help :)

That's great! my pleasure.

Regards,
Nicolas


--=-krXTM67MqSDlorzMqFnl
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl4sbrAACgkQlfZmHno8
x/7AdQf9Hmwmf2pNYokTCQdnlbYU/a1+lPL/HxcVIHA7J5C3uoqqgV4RPEsY6dnc
1G7+WgMvEzS62o209aHOOjPozv5JxGL/38WC31qRceB8lS8YZylLAzeWlDE7j8JG
d/PbSLgIsEzfpjGlmf3+BU34IopWx555UymepAYP5F6Fo5kayB9c73e9NrQgpreY
/PY2y5k1s6ssLBoN7K4OoV0MteuLcWAfF1Aj/ryrqQrpuntyac8qXIEOsnMYJW2q
Lap3K+GGXuQ78VxVC40AhdZaSRiermw56GBUMg5INZBQY/PiwmqFpFdzTKJo4wsg
II+3876gBmmIFPGZNfo/GVeYRH7HFA==
=cCXz
-----END PGP SIGNATURE-----

--=-krXTM67MqSDlorzMqFnl--



--===============5454723276903929811==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel

--===============5454723276903929811==--


