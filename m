Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CED99195698
	for <lists+linux-rpi-kernel@lfdr.de>; Fri, 27 Mar 2020 12:51:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=445DWeijo2bKKNa7rUPjbGge1gpAlb6VlI9G/vip3mI=; b=m/lLGcfZweD7dizkC3vWZCoNf
	zFtNS+vG8ubccft9EnJpyml7I9D107MRFOFh8f8a2CgW43yvVq/Tn1uo14BP3BeLf87LX7doK9/+B
	PLuoyLRI13exwy6iUQ5pPL1yCLuqvStP7L2Z2svAKrPToRSt+EfmXdfHGwRY3AJLK7NkpvmRZC1uy
	X72LwhUDXQBwgpEOgtbYNTmXmR1sP7XALFc7rbuKIK7fuVsJFVq44VWwvYFqHwsESBw1nlb/ju9kz
	Ax+hWY2SqRi8cJcJpWOUfBstuIqB5PzZX00fd452Bqx+e06DrMsACcHkqMT7HRGTlkVS0Z6/gFiTJ
	HRKFpNA2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHnVj-0004Wb-Ih; Fri, 27 Mar 2020 11:50:51 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHnVY-0004Ow-4N; Fri, 27 Mar 2020 11:50:41 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id CC6C8AB7F;
 Fri, 27 Mar 2020 11:50:38 +0000 (UTC)
Message-ID: <d7991163f6d0f500081b2798ee434116ce57ffec.camel@suse.de>
Subject: Re: [PATCH] ARM: bcm2835_defconfig: Enable fixed-regulator
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>, 
 Scott Branden <sbranden@broadcom.com>, bcm-kernel-feedback-list@broadcom.com
Date: Fri, 27 Mar 2020 12:50:37 +0100
In-Reply-To: <20200326134458.13992-1-nsaenzjulienne@suse.de>
References: <20200326134458.13992-1-nsaenzjulienne@suse.de>
User-Agent: Evolution 3.34.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_045040_317470_7B57A792 
X-CRM114-Status: GOOD (  10.59  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: linux-kernel@vger.kernel.org, Russell King <linux@armlinux.org.uk>,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7978790776243126415=="
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org


--===============7978790776243126415==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-WF16Mj6dPfgblFzyBCUd"


--=-WF16Mj6dPfgblFzyBCUd
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2020-03-26 at 14:44 +0100, Nicolas Saenz Julienne wrote:
> This regulator is now used to control the SD card's power supply on the
> Raspberry Pi 4.
>=20
> Suggested-by: Stefan Wahren <stefan.wahren@i2se.com>
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

Applied for-next.

Regards,
Nicolas


--=-WF16Mj6dPfgblFzyBCUd
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl596I0ACgkQlfZmHno8
x/6QaAf/R/VrfJrSqxqTlH5+WwUUila4oMiR537O8rk9WNGE0tVPfb4zlruLtE4H
USWVBiKC3FjV3VNpyO4EwmpdL5qerciK8L3s8Jla+miyPX/9cUtQtpAih44CxFa/
F0KoL8y08eJ1uyHrpZQzUq6MsczQlt5LenQV+US3p2+CHUCZ1LOhn5qmILzjX7wA
eUnRUz+F/O69uWu/MroVn50lA9so26oR8cZDANy33wBTMSJzaXuNHVPNsTR7/XU2
7eNwdrKVFe3HbZTlONDA4aI81OuUeka55eOtcKry29UCr3ivzEShjbvVcGEw5iK7
K8KwPiU70f8bqrJj0ya0hg/QzRbq+A==
=/KKZ
-----END PGP SIGNATURE-----

--=-WF16Mj6dPfgblFzyBCUd--



--===============7978790776243126415==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel

--===============7978790776243126415==--


