Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06B3618BBD4
	for <lists+linux-rpi-kernel@lfdr.de>; Thu, 19 Mar 2020 17:04:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+pFNnVV7j3QtjQTc0DKMSoDN3eiZZbnMlaX5j+0lGfM=; b=LXFy+Pj9WUG0YYzewSFNmofG/
	gpWZNHd8572ueXURNHPTnSNDr5JKOmaV93GguwxPs5CVk73N/qNsj6QZUpkWkxYtyW2geEpIbnIJ6
	UiOMcmWEC5hGnExPp89Vuo0dxxaqYHABcvObNaqu8180QwVZWec6rOWW3f3cY89QCuuqXsUFRFyh2
	1aDt4hcu809BclRIhZuQLOHAp8+iyO1nVY2/KLjF2nAXGN+7eYETQs0Bsa0w2FT5D0pmdihYZ38TL
	EPxLTjPAkUNtyU6Shsyog2ZeC1W2wtv5FwNvUGWA/FUO0QATD/YPGp+tM1DaeM8lOuSiygE5KzzaV
	aD1j09Raw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jExeO-0003z3-DL; Thu, 19 Mar 2020 16:04:04 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jExeM-0003ya-6V
 for linux-rpi-kernel@lists.infradead.org; Thu, 19 Mar 2020 16:04:03 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id EE293ABBE;
 Thu, 19 Mar 2020 16:03:58 +0000 (UTC)
Message-ID: <c5409e56f5d93a7849d933f9f97bc0a7623be014.camel@suse.de>
Subject: Re: [PATCH] staging: vc04_services: Use scnprintf() for avoiding
 potential buffer overflow
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Takashi Iwai <tiwai@suse.de>
Date: Thu, 19 Mar 2020 17:03:57 +0100
In-Reply-To: <s5heetouyvl.wl-tiwai@suse.de>
References: <20200311092630.24000-1-tiwai@suse.de>
 <bdc49b5832d65b2b7ad70caa3a14d4c4bafcf1ec.camel@suse.de>
 <s5heetouyvl.wl-tiwai@suse.de>
User-Agent: Evolution 3.34.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_090402_388879_108E2618 
X-CRM114-Status: GOOD (  11.70  )
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
Cc: bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5285257606645159292=="
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org


--===============5285257606645159292==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-pINUpGrYsSWU/4KmgPkI"


--=-pINUpGrYsSWU/4KmgPkI
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2020-03-19 at 16:51 +0100, Takashi Iwai wrote:
> On Wed, 11 Mar 2020 11:47:25 +0100,
> Nicolas Saenz Julienne wrote:
> > On Wed, 2020-03-11 at 10:26 +0100, Takashi Iwai wrote:
> > > Since snprintf() returns the would-be-output size instead of the
> > > actual output size, the succeeding calls may go beyond the given
> > > buffer limit.  Fix it by replacing with scnprintf().
> > >=20
> > > Signed-off-by: Takashi Iwai <tiwai@suse.de>
> >=20
> > Reviewed-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
>=20
> Could you apply it, or should I forward this to Greg, or may I take it
> through my tree?

I think staging stuff always goes trough Greg's tree :)

Regards,
Nicolas


--=-pINUpGrYsSWU/4KmgPkI
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl5zl+0ACgkQlfZmHno8
x/59Ogf/TwnlghWRnPGWr4W3ZNNUYja4plhUs+iIMgaIVCwP/JVI/B6Zab8nYMJK
gZ+mZMrjO/ZfLBlVa0KrTlmuk7xi54XBIycvW/+oocMN+VvBFZS2b6jGRNoHvAps
09lEq/yyLNduT0KMPJT2vjlRWz/mWvWHddYCtzE2Aw3CmjOBm1CCxU/KuwiY9DpR
YpiuH1fe8CKreD7rUWGpl5q86v3Muna4bDU6ASeGBn4EypLkD+3pXEzKIlPXdDIN
3jHrFHqZValTbG3e/VWyosy0hahNBNdlV2bJKR2WrKAooRqcdKDCjeTCxJGhmrrM
u3pR6mpdOI2kFZoqy4pEYB/DPo8rNw==
=9b7/
-----END PGP SIGNATURE-----

--=-pINUpGrYsSWU/4KmgPkI--



--===============5285257606645159292==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel

--===============5285257606645159292==--


