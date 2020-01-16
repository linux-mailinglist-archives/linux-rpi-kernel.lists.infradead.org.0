Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2672B13DFA6
	for <lists+linux-rpi-kernel@lfdr.de>; Thu, 16 Jan 2020 17:11:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=59r6vpJ8wWS6B69xo/IySJ4nhiJrgOBBhxuvvITQ2DU=; b=K/LHrrP7db+vJKqeE0y8CrQ89
	N268IIhasmRTHWb+xcYR7G6kfPk39p95Y/i11/UngxMVuw2MOYUeIyLQBulU0D/YCM64hGCAcuv7e
	hiOYObOmEtEBak0Q87Ib1t+jfKOb6iczb+V24pmwHzAxzTSWqreKXc6g+PNTH0GVP5E53b6HBCRhh
	az5+AzMYBf/LbHXJuUT7wLvhniEfxGwKtEDd6XI0esRl2TEwvKfXAqcEGh01jkLjqzdIEFNX9eryR
	CvxnMN1Q0wmoLKVU/BzZST3DqkS3Y0cqD4EHj0JWTyjsRGE/r92V72BNiTGxkrHM1WNZHCkN6k9sV
	wKACEJVjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is7kO-0000PC-HL; Thu, 16 Jan 2020 16:11:52 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is7kJ-0000OY-63
 for linux-rpi-kernel@lists.infradead.org; Thu, 16 Jan 2020 16:11:51 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 62A39B2827;
 Thu, 16 Jan 2020 16:11:43 +0000 (UTC)
Message-ID: <592d369511388cba21eb7b42e83a2cd061bb6748.camel@suse.de>
Subject: Re: [PATCH 0/6] Raspberry Pi auxiliary UART fixes & cleanups
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Lukas Wunner <lukas@wunner.de>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>
Date: Thu, 16 Jan 2020 17:11:40 +0100
In-Reply-To: <cover.1579175223.git.lukas@wunner.de>
References: <cover.1579175223.git.lukas@wunner.de>
User-Agent: Evolution 3.34.3 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_081147_369653_0BD6A78D 
X-CRM114-Status: UNSURE (   9.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: linux-rpi-kernel@lists.infradead.org, linux-serial@vger.kernel.org,
 Jiri Slaby <jslaby@suse.com>
Content-Type: multipart/mixed; boundary="===============8616280924847683223=="
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org


--===============8616280924847683223==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-Dc5Q7Sa/zn13S52AvJ8s"


--=-Dc5Q7Sa/zn13S52AvJ8s
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Lukas,

On Thu, 2020-01-16 at 13:14 +0100, Lukas Wunner wrote:
> Here's a collection of fixes & cleanups for the Raspberry Pi auxiliary UA=
RT
> to prepare for upcoming feature work on the driver.
>=20
> With compliments from Revolution Pi labs (https://revolution.kunbus.com/)=
.
>=20
> Lukas Wunner (5):
>   serial: 8250_bcm2835aux: Fix line mismatch on driver unbind
>   serial: 8250_bcm2835aux: Suppress register_port error on -EPROBE_DEFER
>   serial: 8250_bcm2835aux: Allocate uart_8250_port on stack
>   serial: 8250_bcm2835aux: Use generic remapping code
>   serial: 8250_bcm2835aux: Document struct bcm2835aux_data
>=20
> Phil Elwell (1):
>   serial: 8250_bcm2835aux: Suppress clk_get error on -EPROBE_DEFER
>=20
>  drivers/tty/serial/8250/8250_bcm2835aux.c | 50 ++++++++++++-----------
>  1 file changed, 26 insertions(+), 24 deletions(-)
>=20

Reviewed-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Tested-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

Thanks!
Nicolas


--=-Dc5Q7Sa/zn13S52AvJ8s
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl4gizwACgkQlfZmHno8
x/44TQf+JL0dYjkhVX8F3E4WC2qq+QSapjZBL7Aduww2Of5ey+40V3RtPULmBDLW
celwER+kH/drcggmYKTD1HY+fj5V8m7kBJDP4kTFgV+634J2hup6MhkXfAcl/XdG
PEmAzlfkG2P7qflgIFHaEE4wnRSNN+MYL/V5nKXnBWGkUU7fH9cSVtA1njuMCNfg
ywvHDsj4rqBMU+A4IfAS60ONagDkfQDFmlEICzlT42Irv78NDHJazYwGTl2X0YIZ
fWCMErJNCkb2NLFp6ShrdyZgPFhs7IWGrqwsuWG1yLTPcSU2bXWeBlG3ORCvwj5f
TpnVeP2l3iIL5jb60UfQO01z9fq+Rw==
=iamB
-----END PGP SIGNATURE-----

--=-Dc5Q7Sa/zn13S52AvJ8s--



--===============8616280924847683223==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel

--===============8616280924847683223==--


