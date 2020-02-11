Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 097AD158C51
	for <lists+linux-rpi-kernel@lfdr.de>; Tue, 11 Feb 2020 11:03:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HAYhR01L4k2KMKKrrg1eRqDBH9zHkHi9eFk0EWMQmEM=; b=gfQaunejg10T449TEwLbm35xh
	yQrviXEp1oV4kL5yoXHWP6X+kwnS64suDRJEJxGBkjHLLB2EvbxPGp7VfO9LuRuz/xip8FjWtqZv0
	w2nR+Ty/A2KWli79Maq9AQBEHr4t8sm++4azEjsv+Q3FSGRiQSr68TXoVNp2T6jU/PQSlc3uTnYu5
	XvWdYtebRwlDyJPCUGiAilUrBz7o1Y432WTPkqRsMiRBu3lYZGlYIK/p3c5tvct+na618CMEAWDPU
	jEdtehLUa1wZcM/NyZKPJgJr6RG0ULuS1k/cyxlQGguqP56/k4jgcM9smtgbaFSvWgxGzmNTD5Hg1
	Yqnzeti8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1SNj-000625-JR; Tue, 11 Feb 2020 10:03:03 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1SNg-00061F-5A
 for linux-rpi-kernel@lists.infradead.org; Tue, 11 Feb 2020 10:03:01 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id D3190B150;
 Tue, 11 Feb 2020 10:02:57 +0000 (UTC)
Message-ID: <28f7ea832ead04dd93cd582480fb946604bb407d.camel@suse.de>
Subject: Re: [PATCH] usb: xhci: Enable LPM for VIA LABS VL805
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Stefan Wahren <stefan.wahren@i2se.com>, Mathias Nyman
 <mathias.nyman@linux.intel.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>,  Mathias Nyman <mathias.nyman@intel.com>
Date: Tue, 11 Feb 2020 11:02:55 +0100
In-Reply-To: <19e1d141-2033-782f-e5a3-dcba6bdc0a8a@i2se.com>
References: <20200120142422.3907-1-nsaenzjulienne@suse.de>
 <20200210185921.GA1058087@kroah.com>
 <1478f170-f0ec-96df-79cf-f7c44bebc290@linux.intel.com>
 <19e1d141-2033-782f-e5a3-dcba6bdc0a8a@i2se.com>
User-Agent: Evolution 3.34.3 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_020300_488419_AF58F098 
X-CRM114-Status: GOOD (  22.01  )
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
Cc: linux-usb@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============7135376572718721114=="
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org


--===============7135376572718721114==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-4mJyqWT1X0J6LlfdjyE7"


--=-4mJyqWT1X0J6LlfdjyE7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Stefan, Mathias.

On Tue, 2020-02-11 at 10:49 +0100, Stefan Wahren wrote:
> Hi Mathias,
>=20
> On 11.02.20 10:34, Mathias Nyman wrote:
> > On 10.2.2020 20.59, Greg Kroah-Hartman wrote:
> > > On Mon, Jan 20, 2020 at 03:24:22PM +0100, Nicolas Saenz Julienne wrot=
e:
> > > > This PCIe controller chip is used on the Raspberry Pi 4 and multipl=
e
> > > > adapter cards. There is no publicly available documentation for the
> > > > chip, yet both the downstream RPi4 kernel and the controller cards
> > > > support/advertise LPM support.
> > > >=20
> > > > Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> > > > ---
> > > >  drivers/usb/host/xhci-pci.c | 3 +++
> > > >  1 file changed, 3 insertions(+)
> > > >=20
> > > > diff --git a/drivers/usb/host/xhci-pci.c b/drivers/usb/host/xhci-pc=
i.c
> > > > index 4917c5b033fa..c1976e98992b 100644
> > > > --- a/drivers/usb/host/xhci-pci.c
> > > > +++ b/drivers/usb/host/xhci-pci.c
> > > > @@ -241,6 +241,9 @@ static void xhci_pci_quirks(struct device *dev,
> > > > struct xhci_hcd *xhci)
> > > >  			pdev->device =3D=3D 0x3432)
> > > >  		xhci->quirks |=3D XHCI_BROKEN_STREAMS;
> > > > =20
> > > > +	if (pdev->vendor =3D=3D PCI_VENDOR_ID_VIA && pdev->device =3D=3D =
0x3483)
> > > > +		xhci->quirks |=3D XHCI_LPM_SUPPORT;
> > > > +
> > > >  	if (pdev->vendor =3D=3D PCI_VENDOR_ID_ASMEDIA &&
> > > >  			pdev->device =3D=3D 0x1042)
> > > >  		xhci->quirks |=3D XHCI_BROKEN_STREAMS;
> > > Mathias, is this in your review queue?
> > >=20
> > Ah yes, before adding link power management support for this controller=
 we
> > should check that it has sane (or any) exit latency values set in its
> > HCSPARAMS3 capability register.

I did some checks myself before sending the patch, and tested with some dev=
ices
I own. The latencies seemd reasonable. For example I just hooked up an USB3=
 HD,
the root HUB exposes:

	bU1DevExitLat           4 micro seconds
	bU2DevExitLat         231 micro seconds

And xhci configured the device with:

	bU1DevExitLat          10 micro seconds
	bU2DevExitLat        2047 micro seconds

> > Nicolas, if you have this controller could you show the capability
> > registers:
> >=20
> > cat /sys/kernel/debug/usb/xhci/*/reg-cap

CAPLENGTH =3D 0x01000020
HCSPARAMS1 =3D 0x05000420
HCSPARAMS2 =3D 0xfc000031
HCSPARAMS3 =3D 0x00e70004
HCCPARAMS1 =3D 0x002841eb
DOORBELLOFF =3D 0x00000100
RUNTIMEOFF =3D 0x00000200
HCCPARAMS2 =3D 0x00000000

> sorry for the naive question, but do you need the dump with or without
> this patch applied?

IIRC these are dumps from xhci's extended registers. Shouldn't matter at al=
l.=20

Regards,
Nicolas


--=-4mJyqWT1X0J6LlfdjyE7
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl5Ce88ACgkQlfZmHno8
x/7F9Qf+KWPtMeGt4zPdB2ls5zaDGQPrv3QRvhIdmu/ovQXjdcwOghNJtYpYtfod
p75/dlkegGgfNF+6nlZSMydSAPlvy1/stxk12OhPASHLTA2knxSOUhlfmX82PC4P
AGcGqCC7mXzeqYh4Bw1+MUkHHjNivZEOGswGkzZ8j6g/DabCEyMgByoYl1/G+hdM
REqOtzfuxCQF+2BJLyRC7LHBO42cOLg2vGz+whF6PjmkSBJEr8MUGlOuCrtpJP2g
ajtbxF8u7DcL+cI4m48gpIiWP/TPVb4qJOJ3B2/qKjO8NcXPveo08DGa/sy8wcDg
8wicmtAbbG37PAVtD0R2XUmBnWudbw==
=9y0c
-----END PGP SIGNATURE-----

--=-4mJyqWT1X0J6LlfdjyE7--



--===============7135376572718721114==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel

--===============7135376572718721114==--


