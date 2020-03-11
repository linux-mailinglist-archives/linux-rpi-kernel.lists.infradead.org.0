Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C17AD181614
	for <lists+linux-rpi-kernel@lfdr.de>; Wed, 11 Mar 2020 11:47:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1CGq8dxTyCwu2Xlpib6bQGez6Y/voF+CdYKZkamjU8E=; b=hm/CZsOb8I9g4jI07VpIOJxgO
	m/gnHxiL94D03REbW0hrZjO3x8DcFuqASU9YEVOTImC/483ltIqcey2uvCcmYv9eK+zkYfAKb3NVN
	Y1wDo0lERHXPB3s87UJuoqGYdrOTnVxysUs9eECDfK0ocG2OuditxqYnrQYMeaBcX8jPXqhDvKBYy
	AiJNI5xRxHolx0BA33ygPKxVigD2DCCmOLLxaoeL9I4WAiYvCC/cL2AiJXX/rTUG2Rng+WAMcuiCm
	iyCa0+EUiOzxxFalx7j13XF5JIGjyUri3xaxYQqBr7opcjejJWtrc3rBeGXhPvm+1MUUhC0wCVW7F
	6domV/g0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jByth-00064J-Ok; Wed, 11 Mar 2020 10:47:33 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBytf-00063q-1h
 for linux-rpi-kernel@lists.infradead.org; Wed, 11 Mar 2020 10:47:32 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id D25D1B2AB;
 Wed, 11 Mar 2020 10:47:27 +0000 (UTC)
Message-ID: <bdc49b5832d65b2b7ad70caa3a14d4c4bafcf1ec.camel@suse.de>
Subject: Re: [PATCH] staging: vc04_services: Use scnprintf() for avoiding
 potential buffer overflow
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Takashi Iwai <tiwai@suse.de>
Date: Wed, 11 Mar 2020 11:47:25 +0100
In-Reply-To: <20200311092630.24000-1-tiwai@suse.de>
References: <20200311092630.24000-1-tiwai@suse.de>
User-Agent: Evolution 3.34.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_034731_239093_E441364A 
X-CRM114-Status: GOOD (  12.97  )
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
Cc: bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============4592604306839478102=="
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org


--===============4592604306839478102==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-LNOmLlXsnqjedDfS31EN"


--=-LNOmLlXsnqjedDfS31EN
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 2020-03-11 at 10:26 +0100, Takashi Iwai wrote:
> Since snprintf() returns the would-be-output size instead of the
> actual output size, the succeeding calls may go beyond the given
> buffer limit.  Fix it by replacing with scnprintf().
>=20
> Signed-off-by: Takashi Iwai <tiwai@suse.de>

Reviewed-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

>  drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.=
c
> b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> index b377f18aed45..a1ea9777a444 100644
> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> @@ -2161,17 +2161,17 @@ int vchiq_dump_platform_service_state(void
> *dump_context,
>  	char buf[80];
>  	int len;
> =20
> -	len =3D snprintf(buf, sizeof(buf), "  instance %pK", service->instance)=
;
> +	len =3D scnprintf(buf, sizeof(buf), "  instance %pK", service->instance=
);
> =20
>  	if ((service->base.callback =3D=3D service_callback) &&
>  		user_service->is_vchi) {
> -		len +=3D snprintf(buf + len, sizeof(buf) - len,
> +		len +=3D scnprintf(buf + len, sizeof(buf) - len,
>  			", %d/%d messages",
>  			user_service->msg_insert - user_service->msg_remove,
>  			MSG_QUEUE_SIZE);
> =20
>  		if (user_service->dequeue_pending)
> -			len +=3D snprintf(buf + len, sizeof(buf) - len,
> +			len +=3D scnprintf(buf + len, sizeof(buf) - len,
>  				" (dequeue pending)");
>  	}
> =20


--=-LNOmLlXsnqjedDfS31EN
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl5owb0ACgkQlfZmHno8
x/573Af9FNvu957MjtFRfB4GA8ZVAQXAigsWeLK7DcQ9GRDF6/Et/UiKbWVzIt6k
/17cN24ZoSfGDfPGN6S1XLeijWU2qEg2DZA2feXoM1MPO/wafk0NZ6nfuSRPHK3w
4aHTfs5q60Y98GwyjcaeFcPp59o18+JDzSxGJ5lVIgDCuR22mvqFA7zJl3JSvoua
83EaK0hcAgMUn0cdyC9qqpfnuy1JL7CjTmqi3mNdRRAi3MnErQJtpt1oIiDzX/Ll
fTnDQhUFQfph4XgwA5jHd00vT14gKyDESoedZf7YuZQJci9D29pp+bm9uNxqJeIV
WRkc61n9QgfzoVs6OzB3xfDCUTe6IQ==
=rqb8
-----END PGP SIGNATURE-----

--=-LNOmLlXsnqjedDfS31EN--



--===============4592604306839478102==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel

--===============4592604306839478102==--


