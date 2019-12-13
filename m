Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A804211DEF1
	for <lists+linux-rpi-kernel@lfdr.de>; Fri, 13 Dec 2019 08:56:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=D5ToYUyvjdn5wovEA53xvH+FNMAddsY9fsg+gn7aOqs=; b=u5k4NwQJ7YjZN57h5t+6kyBpR
	TqeD5Rx4bXqlalWZjuRQX4jGcUPpsl0qhyxhEWwKY32nuo3XwBvAmr42f7cWDOuvctV8w3WgBUXfK
	LNvcR63pOwkiuDEeb6KKXsOD9UrS8TZNn4LUO51UXqNTL8z7/Xw6GjS8zaHxD2weUQttJgzGwnBlD
	52WXlpRzBoqaQTfwF7QMx2K6jrfLYPC/Sf5QMFyb9dmMvfAzew6F9n3jgyJ7ZsnijlprenrvNEPlc
	Z/295pNg1gypfmQ7AbHnuxIMMzasoPIfi1eLiC9CBNO9Pk8ANDB2ZpCtCPnAq/xOtnP7du4E4IvuS
	Io8OYmesA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iffoL-00024v-3B; Fri, 13 Dec 2019 07:56:29 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iffoA-0001uh-KX
 for linux-rpi-kernel@lists.infradead.org; Fri, 13 Dec 2019 07:56:20 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 278DFAC4D;
 Fri, 13 Dec 2019 07:56:17 +0000 (UTC)
Message-ID: <8b5f4ed5fd341d279a25e4ad94b751c61cd3a4de.camel@suse.de>
Subject: Re: [PATCH v3] bluetooth: hci_bcm: enable IRQ capability from node
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: guillaume La Roque <glaroque@baylibre.com>, Marcel Holtmann
 <marcel@holtmann.org>
Date: Fri, 13 Dec 2019 08:56:16 +0100
In-Reply-To: <3f4aaa42-59fb-b7d2-0e5d-d799d90cab0a@baylibre.com>
References: <20191211094923.20220-1-glaroque@baylibre.com>
 <cf77eec5df92b1845f0bf7cc8eb53edd4af9e1bf.camel@suse.de>
 <0CF02341-CF69-4680-B61F-DC5C0702F1A2@holtmann.org>
 <3f4aaa42-59fb-b7d2-0e5d-d799d90cab0a@baylibre.com>
User-Agent: Evolution 3.34.2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_235618_828453_2E248EB4 
X-CRM114-Status: GOOD (  10.71  )
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
Cc: BlueZ <linux-bluetooth@vger.kernel.org>,
 Johan Hedberg <johan.hedberg@gmail.com>,
 linux-rpi-kernel <linux-rpi-kernel@lists.infradead.org>,
 lkml <linux-kernel@vger.kernel.org>
Content-Type: multipart/mixed; boundary="===============2606973675802488496=="
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org


--===============2606973675802488496==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-2Fr8xhQBje9kaHYBFIhM"


--=-2Fr8xhQBje9kaHYBFIhM
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

> > > > diff --git a/drivers/bluetooth/hci_bcm.c b/drivers/bluetooth/hci_bc=
m.c
> > > > index f8f5c593a05c..9f52d57c56de 100644
> > > > --- a/drivers/bluetooth/hci_bcm.c
> > > > +++ b/drivers/bluetooth/hci_bcm.c
> > > > @@ -1409,6 +1409,7 @@ static int bcm_serdev_probe(struct serdev_dev=
ice
> > > > *serdev)
> > > > {
> > > > 	struct bcm_device *bcmdev;
> > > > 	const struct bcm_device_data *data;
> > > > +	struct platform_device *pdev;
> > > > 	int err;
> > > >=20
> > > > 	bcmdev =3D devm_kzalloc(&serdev->dev, sizeof(*bcmdev),
> > > > GFP_KERNEL);
> > > > @@ -1421,6 +1422,8 @@ static int bcm_serdev_probe(struct serdev_dev=
ice
> > > > *serdev)
> > > > #endif
> > > > 	bcmdev->serdev_hu.serdev =3D serdev;
> > > > 	serdev_device_set_drvdata(serdev, bcmdev);
> > > > +	pdev =3D to_platform_device(bcmdev->dev);
> > > Ultimately bcmdev->dev here comes from a serdev device not a platform
> > > device,
> > > right?
> > I was afraid of this, but then nobody spoke up. Can we fix this or shou=
ld I
> > just revert the patch?
>=20
> sorry about that, i will provide a fix as soon as possible but i have no =
pi4
> to validate on it so i will add no in cc nicolas and if you can give me a
> feedback i will appreciate .

Thanks, I will :)

Regards,
Nicolas


--=-2Fr8xhQBje9kaHYBFIhM
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl3zRCAACgkQlfZmHno8
x/4O5wf/S3T5ZtghqcIHN9ZUNBqo4r2BMbKhz5gQKmqgnQYQzvnkZ6j4o267rTD2
JVT5KeL91NHcqlw/SOFG4x7JbChz8uX6JjDQ1djXG4K4vOi1KssJKMKb8x3RmCWJ
QUOzLwPSSlT9ZkTRp/b0rOyeLDVrT3ZwCcU4U0QVl9F/M5D53i0oDc9/beEZuNWG
4yqMsSN5uGkI0rjw/iv/Tg8ZI+kmCNID7cbi0WzkYtjDvQmrNDBnaZqp/e7vKGRn
lM4PMkzGCEAd8EO9PJ4Ur2NA7unX08m0bFUFhV7/srAQAmf8kzwA5TonU5J+mKMS
patEbFtwpznGBM8QFnXji1deXIqqtQ==
=efmf
-----END PGP SIGNATURE-----

--=-2Fr8xhQBje9kaHYBFIhM--



--===============2606973675802488496==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel

--===============2606973675802488496==--


