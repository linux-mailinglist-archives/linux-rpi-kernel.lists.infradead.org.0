Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8454F1817DB
	for <lists+linux-rpi-kernel@lfdr.de>; Wed, 11 Mar 2020 13:21:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KPu7MyoSQa5xYvEzWembE/20HHyQGUmVexXI+H8INbo=; b=pFcxJtdB+OjSDAsAizT8ePUB3
	i05bETE0V2eFY521y7BXqV/W3Bw9tnR77md0KqZevHD7dqjsrjj+z7bdGJbjaULdwVY5BVrBOGNdC
	hVAT62pV5KJkym5mU8USuoue7jUOok0fLyN10LV8rnlf5vX5aKg4novLNj56tRuUw5lBzQcD1oeX2
	CzCqNPGG0/wDmuhQuihqGU84ZSTKV7ziI8ExrzSN3MfhaGuLKwssaqEECtXic6Og82x1FBXvU240D
	QMqeCP6andZJH/RESlvyUq4kBmRYMJO4T46JXQMJiCWq/9westD+Znt3D867bER5sKKl+Af4qw8I2
	dk7zBZhZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC0MT-0005Wr-Jj; Wed, 11 Mar 2020 12:21:21 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC0MP-0005U4-69
 for linux-rpi-kernel@lists.infradead.org; Wed, 11 Mar 2020 12:21:19 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 3DCBCAE38;
 Wed, 11 Mar 2020 12:21:11 +0000 (UTC)
Message-ID: <9fd81af85cb60df8d74da4f0c8b9d2eb435b8c49.camel@suse.de>
Subject: Re: 5.6.0-rc5 fails to boot (MMC/SDHCI related?)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Lucas Nussbaum <lucas@debian.org>
Date: Wed, 11 Mar 2020 13:21:09 +0100
In-Reply-To: <20200311120724.GA30432@xanadu.blop.info>
References: <20200310223403.GA31851@xanadu.blop.info>
 <e3df2e1c87997799babafcd17676b7473d3f5154.camel@suse.de>
 <20200311120724.GA30432@xanadu.blop.info>
User-Agent: Evolution 3.34.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_052117_513856_3B3AF434 
X-CRM114-Status: GOOD (  22.67  )
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
Content-Type: multipart/mixed; boundary="===============1325314222478008522=="
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org


--===============1325314222478008522==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-Woi6K0x2qwGEmt5R0czZ"


--=-Woi6K0x2qwGEmt5R0czZ
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 2020-03-11 at 13:07 +0100, Lucas Nussbaum wrote:
> > Here you're setting cma=3D64M, which bypasses the device-tree provided =
CMA
> > location configuration. As a test you could set it to cma=3D64M@0x0-0x4=
0000000
> > ,
> > which should make your system bootable. That said, you should find out =
why
> > is
> > this being set in your command-line. I could be able to help if you sho=
w me
> > your config.txt.
>=20
> My goal is to create Debian images for the RPI4, using only mainline
> components. I started by combining an arm64 Ubuntu image (that works)
> with a Debian image for the RPI3. I could get it to boot using Ubuntu's
> u-boot, kernel and device tree file, and the Debian userland.
>=20
> But when I replace Ubuntu's kernel with the one I built, the boot hangs
> as above.
>=20
> I guess that you are right, and that the problem is that I did not
> replace the device tree file by the one from the kernel. However, when I
> do so, the boot hangs earlier, after:
>=20
> ----------------------------
> PM_RSTS: 0x00001000
> RPi: BOOTLOADER release VERSION:f626c772 Sep 10 2019 10:41:52 BOOTMODE:
> 0x00000006 part: 0 BUILD_TIMESTAMP=3D1568112110
> uSD voltage 3.3V
> SD HOST: 200000000 CTL0: 0x00000000 BUS: 100000 Hz div: 2000 status:
> 0x1fff0000 delay-ticks: 1080
> SD HOST: 200000000 CTL0: 0x00000f00 BUS: 100000 Hz div: 2000 status:
> 0x1fff0000 delay-ticks: 1080
> CID: 00035344534331364780da9e301d013c
> CSD: 400e00325b59000076b27f800a404000
> CSD: VER: 1 logical blocks: 30386 mult: 1024 rd(len: 512 partial: 0 misal=
ign:
> 0) sectors: 31116288
> SD: bus-width: 4 spec: 2 SCR: 0x02358043 0x00000000
> SWITCH_FUNC:
> 0000000000000000000000000000000000000000000000000000000000000000000000000=
00000
> 0000000000000000010000038001c00180018001800180c800
> SD HOST: 200000000 CTL0: 0x00000f04 BUS: 40000000 Hz div: 6 status: 0x1ff=
f0000
> delay-ticks: 2
> MBR: 0x00000800, 1021952 type: 0x0c
> MBR: 0x000fa000,30092288 type: 0x83
> MBR: 0x00000000,       0 type: 0x00
> MBR: 0x00000000,       0 type: 0x00
> part-offset: 2048 oem:  mkfs.fat volume:   V       ^=20
> rsc: 16 sectors-per-fat: 256 clusters: 63837 cluster-size: 16 root-dir: 1
> root-sectors: 32
> WEL: 0x00000a10 0x000f9fff
> PM_RSTS: 0x00001000
> Partition: 0
> part-offset: 2048 oem:  mkfs.fat volume:   V       ^=20
> rsc: 16 sectors-per-fat: 256 clusters: 63837 cluster-size: 16 root-dir: 1
> root-sectors: 32
> Loading config.txt hnd: 0x00001479
> Initialising SDRAM 'Micron' 16Gb x1 total-size: 16 Gbit 3200
> Loading recovery.elf hnd: 0x00000000
> Failed to read recovery.elf error: 6
> Loading start4.elf hnd: 0x000054aa
> Loading fixup4.dat hnd: 0x00005206
> MEM GPU: 76 ARM: 948 TOTAL: 1024
> FIXUP src: 128 256 dst: 948 1024
> Starting start4.elf @ 0xfec00200
> ----------------------------------------
>=20
> (So it seems that u-boot doesn't start)
>=20
> I confirm that setting cma=3D64M@0x0-0x40000000 fixes this issue (but the
> boots still hangs, later).
>=20
> I will work on building a "clean" u-boot instead of Ubuntu's to see if
> it fixes the above issue (=3D uboot not starting). I quickly tried
> replacing the uboot binary with OpenSUSE's and it prints garbage on the
> serial port, so at least it seems to go further.

Yes, that's an issue with how clocking works on the RPi, the serial console
clock is linked to the VPU clock, which the firmware tends to change behind=
 the
serial driver's back, hence the garbage.

A temporary workaround I found is setting gpu_freq=3D400 in config.txt. Or
directly, use the config.txt provided by openSUSE.

> Is there a system image somewhere using vanilla versions for u-boot and
> the kernel I could compare with? (it sounds like it would be a better
> idea than to compare with Ubuntu's).

I suggest using openSUSE's tumbleweed as a starting point for kernel/u-boot
AFAIK it's the one around that really tracks upstream development and tests=
 it
(TBH I haven't checked what arch or Gentoo are doing). That said, we use UE=
FI
for booting, which might not be what you're looking for. In that regard I
suggest checking out ARM's EBBR, https://arm-software.github.io/ebbr/.

Regards,
Nicolas


--=-Woi6K0x2qwGEmt5R0czZ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl5o17UACgkQlfZmHno8
x/47qAgAtaW5lyQddIRA09O8zfjhihMowZ1AZFkgERNy7xKDng8uilX7nimEaCjz
ELsj21xvwsy/Iw0Wi4mh9cJeiWCNmu4yfNi/frnRfiYxIR76lTSsmvgsEPkyFfDf
YdOFUoYDmkCJn+VnO5viT1NXXBw1DYsZUF2bNPHY0CA7OGyEMAINsWd+Z6P3uwyw
bMdb1iq2yAIpzXqXY7RUOhsNOUgY1A3MCIZCUxXk6pPlg6+YZbiTIsoLG/NSuA9c
oe1mF2+ykeQ/nVYWAGcnDjOAiiyrWcdhrbCRubTvk8fWCtmCRCKbozUyyw0FIqCt
jI6s5cQsHL0NGfhVjRIrp0PmQOC0QA==
=d3Iu
-----END PGP SIGNATURE-----

--=-Woi6K0x2qwGEmt5R0czZ--



--===============1325314222478008522==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel

--===============1325314222478008522==--


