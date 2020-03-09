Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA4B917E9C3
	for <lists+linux-rpi-kernel@lfdr.de>; Mon,  9 Mar 2020 21:15:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XZGdEBbnlTPxZrYGWyIB4yzdXvAC8o8S2CMUzzdtC30=; b=Z0itY6lKh/EQC+g7OYt8GPRZF
	ESxUN3bD7NeJ1nWjI95FEeG8i37jQTfOyve/CYXc4D3IXkvU9v1AtPz0c6qXw4C2Ui25K7LNi+w/d
	fHgGCCxxXBLaR5LHl6/eOAyNOcJFAnsJ+R1ghU3xDuWX3UeiIfCfC4z8VFtzCBWNsAQS792QIAwJh
	eutBR381N6XXC+hqE+i6ECThIRXKXb9RpBrlWJRyDgaXMxFPsp8kDj6qeMt7OwOhW/kUOoOZpfD9d
	byaqTg0/9WwzCF3sbzF+gfMmq7+mNZ0iYR5DedfN9+GHMJa7Re/c4ktrTVJ2kJtZkAmRm/orDh/C0
	yKkw13r/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBOoL-0001aj-M7; Mon, 09 Mar 2020 20:15:37 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBOoJ-0001aH-3m
 for linux-rpi-kernel@lists.infradead.org; Mon, 09 Mar 2020 20:15:36 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 909BEAC37;
 Mon,  9 Mar 2020 20:15:33 +0000 (UTC)
Message-ID: <8609efe72001a183452c4bd4f1f1a827eb789406.camel@suse.de>
Subject: Re: ARM: bcm2835-rpi-zero-w: Add missing pinctrl name
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: nick.hudson@gmx.co.uk, linux-rpi-kernel@lists.infradead.org, 
 devicetree@vger.kernel.org
Date: Mon, 09 Mar 2020 21:15:32 +0100
In-Reply-To: <20200309164842.8184-1-nick.hudson@gmx.co.uk>
References: <20200309164842.8184-1-nick.hudson@gmx.co.uk>
User-Agent: Evolution 3.34.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_131535_301273_59D06C26 
X-CRM114-Status: UNSURE (   8.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Nick Hudson <skrll@netbsd.org>
Content-Type: multipart/mixed; boundary="===============5110250714194556453=="
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org


--===============5110250714194556453==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-ft9tqa9x20+veMJWC9gx"


--=-ft9tqa9x20+veMJWC9gx
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Nick,

On Mon, 2020-03-09 at 16:48 +0000, nick.hudson@gmx.co.uk wrote:
> From: Nick Hudson <nick.hudson@gmx.co.uk>
>=20
> Define the sdhci pinctrl state as "default" so it gets applied
> correctly and to match all other RPis.
>=20
> Signed-off-by: Nick Hudson <skrll@netbsd.org>
> ---

you should add the [PATCH] prefix in your subject when submitting patches. =
Also
make sure you CC everyone listed by ./sripts/get_maintainer.pl, so they can
properly review the patch.

Thanks!
Nicolas


--=-ft9tqa9x20+veMJWC9gx
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl5mo+QACgkQlfZmHno8
x/5X0AgApDlJn2d4OsuBK7Pi9nkv3wl+RM56/ZMeEECpSeVCg7joYzLQkxZZU0nn
OYsmMeD3MSoqcUH8UClWCix7dxpZbr72zX5x9pZ5/bj3ZCEdndlnCQRILRWK2gd+
KyV1sQVAKy0BZIdfRw5j+ILKYCt5zGkyylleM/W7gFO5ozZhs2koLxuAgevjXwgJ
wzwLMfinFDjSMsyJGverO/We488zzG4nEf/3R0Aj2V1829JB+tHo2qormHllZaB6
oAu8+AdBMaNZjkWNJpiP40lUUfWXMO5Zwm8da7HtdBC9+PMwdOokgv71EJfRPAS3
OwYRT9IMnNpBXWSPvv+kOZfP2ofe4A==
=3CIk
-----END PGP SIGNATURE-----

--=-ft9tqa9x20+veMJWC9gx--



--===============5110250714194556453==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel

--===============5110250714194556453==--


