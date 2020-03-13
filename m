Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02A0B184841
	for <lists+linux-rpi-kernel@lfdr.de>; Fri, 13 Mar 2020 14:35:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YElWD5rLaS1+P2rXwSx9HWZnv121b94amdNOpJ+Yp4o=; b=lckmRPJgsbnyZ5ggq2FVBrfID
	+pKpoEYcRxbxLiTfvkqaQOgfTkc8yireQmJA6R73BetfH0aI7zsLxGoaI8yV3g7hBETPLBCb7AhSe
	QTlM8LNS2haQKhGTwlj77fdUz1NqPVCWs8t71MJ/gmUhBVP6Gr0NbiKTfVLyYnqqAYysixJ0cCQgA
	jg4oZbz9UOrYhm5xQpp3LU6wyjhm9IiejXEwwbvRyeD16mTVmvDb1nZN9ciqNHvS2T9ofKRIz52EI
	V6IAuJSy1Isd6lllvVd2oVdMHy/D4uUZKdeqjxsxm/Cydq0TfaFbXDXNcw18VR/0vQzybQ8J9UOPl
	pyi0P5piw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCkTY-0004rP-Ps; Fri, 13 Mar 2020 13:35:44 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCkTG-0004cL-Qf
 for linux-rpi-kernel@lists.infradead.org; Fri, 13 Mar 2020 13:35:28 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id C9B79AB98;
 Fri, 13 Mar 2020 13:35:22 +0000 (UTC)
Message-ID: <c36e9ed78f123c8f5808ae167467d2a8799e6081.camel@suse.de>
Subject: Re: [PATCH 1/2] staging: bcm2835-camera: Drop unused ignore_errors
 flag
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Stefan Wahren <stefan.wahren@i2se.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Dave Stevenson
 <dave.stevenson@raspberrypi.org>
Date: Fri, 13 Mar 2020 14:35:21 +0100
In-Reply-To: <1584049059-6772-2-git-send-email-stefan.wahren@i2se.com>
References: <1584049059-6772-1-git-send-email-stefan.wahren@i2se.com>
 <1584049059-6772-2-git-send-email-stefan.wahren@i2se.com>
User-Agent: Evolution 3.34.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_063527_017066_876C77E9 
X-CRM114-Status: UNSURE (   7.65  )
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
Cc: devel@driverdev.osuosl.org, linux-rpi-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0679396179591803765=="
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org


--===============0679396179591803765==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-/Onds4ncF8v/4ttMZtwE"


--=-/Onds4ncF8v/4ttMZtwE
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2020-03-12 at 22:37 +0100, Stefan Wahren wrote:
> The struct bm2835_mmal_v4l2_ctrl contains an ignore_errors flag which
> was always set to false. So drop the unused flag.
>=20
> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
> ---

Reviewed-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>


--=-/Onds4ncF8v/4ttMZtwE
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl5rjBkACgkQlfZmHno8
x/732Qf9GdHYBx5NARiYlVGyOAb43cvwUM3tilkkyZL6qJqkzDILI5vWPtT2NGeY
05aqFAqsTyUhqEG/FeM4qLQgLAefgbGl4/B8i6G2aFMUUMvi4dRdOZAKXPsPdbWh
ynpmx6GqTe3qWHH9jekuf3kawpJJbSOI5pkHvGnmTSjdOwVnsENaz4m1Qyfi5ng/
/VIZcLW1XF3MAA32F3e7dicINLQcSpMy9bqlS5QqhJN5EWTX4apByfBRa0sNEiis
qS/2Vf6G0II6y5drX7jIbsjtcQOP2uC/Ck6NgNCC0jo7rQLykiSU9PvKnGnv/IHN
LkoGEB1lbwvAhZcxeWBNhdcWxeO9Qw==
=UVCs
-----END PGP SIGNATURE-----

--=-/Onds4ncF8v/4ttMZtwE--



--===============0679396179591803765==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel

--===============0679396179591803765==--


