Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EE3D19A9C7
	for <lists+linux-rpi-kernel@lfdr.de>; Wed,  1 Apr 2020 12:48:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1WtDfwRLrXQlmDSV1s6shOtgwoRwziwwYlLaSTmHa1E=; b=LzW+LK7EQPMLnSEnHpnBNcrR/
	6D/+OnuGreicctvUP04ZIUdwznxWUiEV5kPqGKV6pHvtTz2NAJMm4yGVEEbvkw0MDVQFaz2mDKetc
	rkzW1mBTUgLmydMfjxMN7BzIi+n4Hfuv+65deIiMWZS+2OeKAD7zWD7vnuZjxLj1PtuQEuZLVBjFU
	eLsC+dTfZIXKLNv6FdmhPQDQrfkd4ZZct0/xCrVDsuRQ1KvZWuneWiWndFXz35j/IrJvaPOmRwJlQ
	kcvPkVN1+qadZmOVkzsHGHA4vjW4iWtOtwpN/vXICAVuub5IFVhZy8Lu9C9o8GwbZG08FYzvYYLne
	hpVJRKQXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJauX-0008UT-C4; Wed, 01 Apr 2020 10:47:53 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJauU-0008Tq-R2
 for linux-rpi-kernel@lists.infradead.org; Wed, 01 Apr 2020 10:47:52 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 47585AD48;
 Wed,  1 Apr 2020 10:47:47 +0000 (UTC)
Message-ID: <7ffa87bfeb77e68ec365a5b1f1345862cc0dc859.camel@suse.de>
Subject: Re: [PATCH 0/9] staging: bcm2835-camera: Clean up driver
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Stefan Wahren <stefan.wahren@i2se.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Hans Verkuil <hverkuil-cisco@xs4all.nl>, Dave
 Stevenson <dave.stevenson@raspberrypi.org>
Date: Wed, 01 Apr 2020 12:47:44 +0200
In-Reply-To: <1585485901-10172-1-git-send-email-stefan.wahren@i2se.com>
References: <1585485901-10172-1-git-send-email-stefan.wahren@i2se.com>
User-Agent: Evolution 3.34.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_034751_019752_60D75ED6 
X-CRM114-Status: UNSURE (   9.29  )
X-CRM114-Notice: Please train this message.
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
Cc: devel@driverdev.osuosl.org, linux-rpi-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7950225647547549136=="
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org


--===============7950225647547549136==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-bRPc7YYLXTwIfAespfz3"


--=-bRPc7YYLXTwIfAespfz3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, 2020-03-29 at 14:44 +0200, Stefan Wahren wrote:
> Except of patch 2 all these patches tries to clean up the bcm2835-camera
> driver.
>=20
> Stefan Wahren (9):
>   staging: bcm2835-camera: Drop PREVIEW_LAYER
>   staging: bcm2835-camera: Activate V4L2_EXPOSURE_METERING_MATRIX
>     handling
>   staging: bcm2835-camera: Make struct indentation consistent
>   staging: bcm2835-camera: Simplify set_framerate_params
>   staging: bcm2835-camera: Move encode component setup in its own
>     function
>   staging: bcm2835-camera: Move video component setup in its own
>     function
>   staging: bcm2835-camera: return early in mmal_setup_components
>   staging: bcm2835-camera: reduce multiline statements
>   staging: bcm2835-camera: reduce indentation in ctrl_set_image_effect
>=20
>  .../vc04_services/bcm2835-camera/bcm2835-camera.c  | 382 ++++++++++-----=
---

Reviewed-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

Thanks!
Nicolas


--=-bRPc7YYLXTwIfAespfz3
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl6EcVAACgkQlfZmHno8
x/58/gf+JH9oyEdWWMY0Cp5wBZIws4fg5qOCH7qX5b+0oZilkSPHkl52S26hhpW8
GY52Kq3Ad3kwnR9I9oKAHkDz9igHFQRDL+EVvLvmXIe13GAjZKDEliKZGolBR+Hw
j+ZpIjta/yqJMZm3uly28Whzo6uQYQGhu1wHRUyqZEuvq1DLpHkfvNEqFxsz3Lgr
a138Usks/BbxWkKir1UzlIAy0yPMJl53zMvOOtrvbZU5O6m4nLjdOw1Q32zWbT2w
2+xYvWTf3JDU3ayyM+j34kXkm+yxXOf0XmMpeuVE210lCBSBTfSrwfk34n/rEWz8
SOP9qGQ8NxM1GN9yzE1mDuhzX1wGVQ==
=hUPF
-----END PGP SIGNATURE-----

--=-bRPc7YYLXTwIfAespfz3--



--===============7950225647547549136==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel

--===============7950225647547549136==--


