Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B0A014A28F
	for <lists+linux-rpi-kernel@lfdr.de>; Mon, 27 Jan 2020 12:07:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FFUqV1xWQa3c/wV6Q+W7IktB6UtA+xM9Dm4NKrjMS9I=; b=nPqg3xkaDryDhhfKpePq0Tkwy
	KGzdPMxXJby8lBQbyWewyYWEY19kAuwePXc8UYxMNKVy3CxmT8WpVNYmkIUyt3tK71PY70dhrcQYg
	hbo6TrZxx3n1bekZ1MB0lC4Nt1nAWxZXG0Vb/SzCEI4oND4k/Y+7V/TFcgurKAHdLHtDYzM3k/Q+f
	Xko0RMlYLJ2kq6218ST36J65yaeoWTRe6/uEyaYtA4BdVY4lNYb8GCUB4sAPUPvD5rU+z48vxzTVS
	DJMRZm/4tE0Rk8PtkpHzWOOgvLPE9RgQLpBgLQGYTvxjwRpyRmUuIeIGeJ9gsPoLPzVtgD2qvoeN0
	XGZe50lag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw2ET-0004sH-TI; Mon, 27 Jan 2020 11:07:05 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw2EK-0004jl-9Z; Mon, 27 Jan 2020 11:06:57 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id AE5BBB119;
 Mon, 27 Jan 2020 11:06:54 +0000 (UTC)
Message-ID: <f66483db33f8c190030ba0b66e0d85e549691cf0.camel@suse.de>
Subject: Re: [PATCH 06/22] staging: vc04_services: get rid of
 vchiq_platform_use_suspend_timer()
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org
Date: Mon, 27 Jan 2020 12:06:53 +0100
In-Reply-To: <20200124144617.2213-7-nsaenzjulienne@suse.de>
References: <20200124144617.2213-1-nsaenzjulienne@suse.de>
 <20200124144617.2213-7-nsaenzjulienne@suse.de>
User-Agent: Evolution 3.34.3 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_030656_485209_551C13E3 
X-CRM114-Status: UNSURE (   8.06  )
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
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devel@driverdev.osuosl.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2704678299681439119=="
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org


--===============2704678299681439119==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-jfVbXwfzGkRKU6Ms0WbO"


--=-jfVbXwfzGkRKU6Ms0WbO
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 2020-01-24 at 15:46 +0100, Nicolas Saenz Julienne wrote:
> @@ -3059,7 +2986,6 @@ vchiq_check_service(struct vchiq_service *service)
>  			arm_state->videocore_use_count,
>  			suspend_state_names[arm_state->vc_suspend_state +
>  						VC_SUSPEND_NUM_OFFSET]);
> -		vchiq_dump_service_use_state(service->state);
>  	}
>  out:
>  	return ret;

As highlighted by the kbuild test robot, this shouldn't be removed. Sorry i=
t
slipped through the cracks. Happened because of it similarities with
vchiq_dump_platform_use_state(), which is being rightfully removed.

I'll give some time for further feedback, and send a v2.

Regards,
Nicolas


--=-jfVbXwfzGkRKU6Ms0WbO
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl4uxE0ACgkQlfZmHno8
x/7IcwgAlexqcFZf/vJCGPkHlxL6iHIKlCfhykAprlaYxplMz0io9YbfEMoxiaKj
tuttGtiS8cVZgpJpMQA76Rc0iz6m05eSOxnLnxj1s7l9NTFobSU9BA06HsA1Hgg6
h7GcQ/N71IY7vADTVX2zYWTt91KNKtBR5MBgJjudSe3E//DSHyC2SGOe3ZEWnjos
2JKz/rW9X8bqTiaxS7e6YBzgd5ZRuuHVFWQ0iujbo+ymCiItZ1XeI3CxfkpJIdjn
5y3vcKQkoMbWKaoKfQ9UlPdFHhacB28ukVCCcZPAQ3nCHCOYgteDrEtHmhu0Xive
zkSOKBZTUF2Ku9R9JWUmDa3lqph9vg==
=WPcc
-----END PGP SIGNATURE-----

--=-jfVbXwfzGkRKU6Ms0WbO--



--===============2704678299681439119==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel

--===============2704678299681439119==--


