Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCF68113C94
	for <lists+linux-rpi-kernel@lfdr.de>; Thu,  5 Dec 2019 08:46:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xcLfoT+inFm6RPo+Sylas2A06pkLR2j5WuSPesbuBt4=; b=mHLYxS30pzzt2dvLNWsxtr8UA
	G63zqWzCI1RR2r8oJb6DJhZiNTo+TWiWfsSlhs+1eGSnRBIaNWJOZHe0MjhcEZvCQXfLhq0p8Au6M
	bu0C5WfCcYT7l90IT2zTtPq9tQHBRtcM+eo0yHu52EJzj0vegWfeT9gOmpGVYKT2rejR9F6wBjwt8
	heIiWJGAIzpEmVgYlnC8XE4csEl1HDeU9fP8Xf31TjorsgvniPIltunP4kCxejt4WYJ1pZQI6fI8d
	fghyIg28fkHHtiif0XuSUS6yAj3T2/OR/THDAOUIeo2wjhvE3ym0aTrpaGDmNS8dLq1H94ErOvYJD
	AM9cqlghg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iclpq-0005ZZ-GI; Thu, 05 Dec 2019 07:46:02 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iclpm-0005Yz-Rr
 for linux-rpi-kernel@lists.infradead.org; Thu, 05 Dec 2019 07:46:00 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 7D2F1AE17;
 Thu,  5 Dec 2019 07:45:55 +0000 (UTC)
Date: Thu, 5 Dec 2019 08:45:51 +0100
From: Petr Tesarik <ptesarik@suse.cz>
To: Stefan Wahren <wahrenst@gmx.net>
Subject: Re: Raspberry Pi Kernel Contributing
Message-ID: <20191205084551.59d828fd@ezekiel.suse.cz>
In-Reply-To: <56b727cd-d5f9-2ae5-ce21-0bc7834b2400@gmx.net>
References: <BYWGM3UIMECN.2LBM56ZYRCANU@pride>
 <56b727cd-d5f9-2ae5-ce21-0bc7834b2400@gmx.net>
Organization: SUSE Linux, s.r.o.
X-Mailer: Claws Mail 3.16.0 (GTK+ 2.24.32; x86_64-suse-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_234559_047569_E6E4EA53 
X-CRM114-Status: GOOD (  10.24  )
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
Cc: linux-rpi-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6811424398210311130=="
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

--===============6811424398210311130==
Content-Type: multipart/signed; micalg=pgp-sha256;
 boundary="Sig_/rK+1Si2CX8FiFvuN+FY+G_I"; protocol="application/pgp-signature"

--Sig_/rK+1Si2CX8FiFvuN+FY+G_I
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

On Wed, 4 Dec 2019 20:52:49 +0100
Stefan Wahren <wahrenst@gmx.net> wrote:

> Hi Stephen,
>=20
> Am 04.12.19 um 08:35 schrieb Stephen Brennan:
>[...]
> >  I wonder if there is any pointer to
> > what needs to be done for these, or some documentation on the underlying
> > hardware? =20
> Yes, we all are still waiting for the BCM2711 datasheet or at least a
> memory map. This would be a nice christmas present ;-)

Out of curiosity, what are we missing apart from the new IP blocks that
are already worked on (network, PCIe, v3d) and never documented blocks
(OTP, hwmon, RNG)?

Petr T

--Sig_/rK+1Si2CX8FiFvuN+FY+G_I
Content-Type: application/pgp-signature
Content-Description: Digitální podpis OpenPGP

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEHl2YIZkIo5VO2MxYqlA7ya4PR6cFAl3ota8ACgkQqlA7ya4P
R6fTUwf8CfsCKO+GqLR+kjI5MFBapda+PgHnLMiEjaTd+F4Pi02jQCuq9vI5gXNe
AaHssm50GeD7K3bpN8Mj0zidM7yRXOMLJx7h64kBEVtTAFkfWQeFMu1Z1WS3WlfQ
EwVVzLcFQDpacrTF2kMRw2pdLK1Bl7AAt8MGwyqFST4jDDbXA0fx6NWR0bfzVjBY
xf1AbcUkOa4SH08CcrpQ/bHjUisiom0+RDIS1r6VDUWW1/NtWI9vm5gVxYKG1D8h
aqCnHXNsOEjc7bo9d8y6LUfKqkMbv24IDYlJP/Os0C5zLA0k60x9qtQHhIQBdqdy
TbE+2MJJJzCp07tTqpCH9pR4yirNFg==
=t9pk
-----END PGP SIGNATURE-----

--Sig_/rK+1Si2CX8FiFvuN+FY+G_I--


--===============6811424398210311130==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel

--===============6811424398210311130==--

