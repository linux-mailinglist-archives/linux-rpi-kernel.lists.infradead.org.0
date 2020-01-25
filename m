Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03173149581
	for <lists+linux-rpi-kernel@lfdr.de>; Sat, 25 Jan 2020 13:27:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EnU1ZTxFiaU8mB4GouKI305WDVN69OexOHb7lx7ER1s=; b=PqKsN+x8KV43pSi1ksEjlZjSp
	EzJ1yRsRMDLDZXTBe0PqMYGBbbM8aBLRP1PeVsputFER3mxHlk0aV5o3cFtpMW0FBtlWuWf9dGiaI
	9qR5fa9/aWFjzCyBlgsneoI/TuM8Jox1rQ+bsTfqxsZzM5iNv6XUtqC4qKzIcALVMRE7dtcNZXT7r
	Pshm6wlhAfhbrYsVdx10F+0GrpKv2uW9Ahcn/6IKqvrtMbsSXho5XXqB4DNO3VOmqECebsgizNuU+
	kingt3JPQkmZK5G2rvTa2WEV3bbZwGQW4Z5aIlc+tOSrbnvur+MljS0YfGoOkZe3UBMJzls+fwntn
	JiDRzmdSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ivKWx-0002pC-Oq; Sat, 25 Jan 2020 12:27:15 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivKWu-0002oI-Ew
 for linux-rpi-kernel@lists.infradead.org; Sat, 25 Jan 2020 12:27:13 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 197E2AC44;
 Sat, 25 Jan 2020 12:27:06 +0000 (UTC)
Message-ID: <d374f6cd6692d088ffad15cb29085cd723903418.camel@suse.de>
Subject: Re: RPi B+ USB support
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Valentin =?UTF-8?Q?Vidi=C4=87?= <vvidic@valentin-vidic.from.hr>, 
 linux-rpi-kernel@lists.infradead.org
Date: Sat, 25 Jan 2020 13:27:04 +0100
In-Reply-To: <20200125120933.GF3671@valentin-vidic.from.hr>
References: <20200125120933.GF3671@valentin-vidic.from.hr>
User-Agent: Evolution 3.34.3 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200125_042712_645657_A2935F3D 
X-CRM114-Status: UNSURE (   9.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Content-Type: multipart/mixed; boundary="===============3197119848820714187=="
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org


--===============3197119848820714187==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-30SBLuayJpzUjoevdeT+"


--=-30SBLuayJpzUjoevdeT+
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Valentin,

On Sat, 2020-01-25 at 13:09 +0100, Valentin Vidi=C4=87 wrote:
> Hi,
>=20
> I was trying to run a mainline kernel on the old RPi B+ v1.2
> and while it boots correctly the USB and Ethernet ports are not
> working. I suppose this is some known problem?

This is not a known problem. Do you see any erros on your logs (dmesg -lerr=
)?

Regards,
Nicolas


--=-30SBLuayJpzUjoevdeT+
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl4sNBgACgkQlfZmHno8
x/4qOgf/QGzDznznV49taERKCQoCMT+UFu7XO/Hxj+q8vEu3hhlBNCzbcIFccRf4
8RnxW1ot8A+cD2H0RhP/LsTER9pwMDF0OuEn16ESSjzU0sVBz5Ar2zTh5Prr667i
qxoFCCFUPAkIHbNPqKkkJfVOFSzXU+tLmXXLukkQqkTiQJw8ggY7q00Nnn1LezRr
U5ZJX4CRSTFd5JMCl3wnhahVXK3qIUMF7QdZufRL9Ym8x7OZosHy1oOVqFPWN3wF
+/PGAJCpv1g4kRK8RlYZ2ghlHYdNOPoWWSEesu+Mz8fuN0+i7SDlhzzPPqf0BAh1
t1EnlBg6wN7JzuiFDf2YoI1WY6fw7A==
=LitF
-----END PGP SIGNATURE-----

--=-30SBLuayJpzUjoevdeT+--



--===============3197119848820714187==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel

--===============3197119848820714187==--


