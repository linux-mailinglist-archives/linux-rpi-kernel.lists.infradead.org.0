Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35016149690
	for <lists+linux-rpi-kernel@lfdr.de>; Sat, 25 Jan 2020 17:16:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SG/8dybe+khkZ5K3E4mM0bcKHl7RbCtXNA0WsUtytN4=; b=j/4xOZDyCcf4NQNwsUuHWIgaZ
	JXNVdbJBpw+tD1rviv5uCYdorXsSnlKAH1aisZUaMq4Iri6ARIzWkVR+RhgKeceGpuYsqQTXmwRf1
	1SM7Rh/s/GLU98KCvHB6d7Y54eRvl2TyVQ9r0XWODz1B/AFbJAggTkwPfRUlOTTdlAIGCno6SDs/y
	ghDDE6aghWWCNNAUugd+J4nPEDJT0Pck3Kn1AH5/7xAPAHxXyISF43K+iTsGRmxqjDKvo/O7DiD/b
	KGlvDeFZlnLBjPmH6kZXEgX73HLJYzrOxlFyG6ZERT0jM34+O+9tgha0MmYux9uXNqkem7C9ygd4z
	cxc/GwdTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ivO6n-0001yw-1A; Sat, 25 Jan 2020 16:16:29 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivO6k-0001ya-EG
 for linux-rpi-kernel@lists.infradead.org; Sat, 25 Jan 2020 16:16:27 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 8259BAC53;
 Sat, 25 Jan 2020 16:16:24 +0000 (UTC)
Message-ID: <0f28a4fe2806aa5e4444aa6758ea60a73d1e8209.camel@suse.de>
Subject: Re: RPi B+ USB support
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Valentin =?UTF-8?Q?Vidi=C4=87?= <vvidic@valentin-vidic.from.hr>
Date: Sat, 25 Jan 2020 17:16:23 +0100
In-Reply-To: <20200125140421.GI3671@valentin-vidic.from.hr>
References: <20200125130737.GG3671@valentin-vidic.from.hr>
 <C04WEWWXBXRL.28WZVXZ9OKU4B@linux-9qgx>
 <20200125135404.GH3671@valentin-vidic.from.hr>
 <41e082fa921653f57de2809630bedbb339fe5111.camel@suse.de>
 <20200125140421.GI3671@valentin-vidic.from.hr>
User-Agent: Evolution 3.34.3 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200125_081626_624562_60BD89F6 
X-CRM114-Status: UNSURE (   8.92  )
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
Content-Type: multipart/mixed; boundary="===============4897378317352134490=="
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org


--===============4897378317352134490==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-nMxIoD1ulio4oLUm8AZ6"


--=-nMxIoD1ulio4oLUm8AZ6
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, 2020-01-25 at 15:04 +0100, Valentin Vidi=C4=87 wrote:
> On Sat, Jan 25, 2020 at 02:56:36PM +0100, Nicolas Saenz Julienne wrote:
> > Yes, it's possible, did you also update the relevant device-tree file o=
n
> > your
> > boot partition?
>=20
> Yes, I used dtbs/bcm2835-rpi-b.dtb from the same kernelci page.

Could you list me the contents of your boot partition and the contents of
config.txt file (which should be in the boot partition).

Regards,
Nicolas


--=-nMxIoD1ulio4oLUm8AZ6
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl4sadcACgkQlfZmHno8
x/5niAf+MeGtcyROmAuV89gVfgVnHN1e6ITU9E/0zPjWOcunh28CtefRSKV1bTMV
XwzLlAZtu9NlfjK6CW45UrHrjTlh1kkiAxaCNWENyobcI5Uo80w/iXft6xaQh6Om
4/EH19joigGfUPdw2xKMRnfi9fFe1plDPd6MuXTM3+5MiYs/hf7kAsmZsMkIu4Kd
Pn41sRBDb1ypVGHb582gVQiXK0Aq1Ooio24+cBKWBF8I8q1RWJFfpDoxxY2wOCKi
k2+WvQw9ioITTYUqVzYLJ79KawhH+/84llK+5Ke2OchK/qF/zQy+nmeqhl3MX+eQ
keWddwBB244ccwfcF8FR3nshUMgxCw==
=0lzH
-----END PGP SIGNATURE-----

--=-nMxIoD1ulio4oLUm8AZ6--



--===============4897378317352134490==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel

--===============4897378317352134490==--


