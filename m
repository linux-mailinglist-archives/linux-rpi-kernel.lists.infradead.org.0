Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2600818167E
	for <lists+linux-rpi-kernel@lfdr.de>; Wed, 11 Mar 2020 12:04:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xE4tmerUgO9Eg/jY6i1NCzxWcJitIWab3QZJ8WStCZo=; b=bpnctxWTQ5v9Lhl8jQXIxIT8W
	xRWX/aa5sC79W8JfgvVA0H+zQciOB7s3bmXyiIGyqHuYLjXtiqwvdMMv273NAXRzy3jjz41t2COmK
	6h/MmHjXMZZO4tJUmRsLOW9nPHyMMbO9dqzHkqbPdkvCY8/kduZr6Qp1A5ssIIeIXd71EHPp1bJ4f
	w6Mj4cz/jrLSkIcp4EhR6awFGrRnsHszLbMGWfE8ssA6b47Aw2RjaziYN+NqPCTEyFct+NS8Gn93w
	FB9yOnHkzzaWmA1nqcs166OZiQdmHNbcIInfKvGvNsOC73kiaD82paWwS995tGKD+rVRbjInrxRc6
	d5uUOEZOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBzAC-0006TI-Nk; Wed, 11 Mar 2020 11:04:36 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBzA9-0006Sz-G8
 for linux-rpi-kernel@lists.infradead.org; Wed, 11 Mar 2020 11:04:35 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 7D50FB202;
 Wed, 11 Mar 2020 11:04:30 +0000 (UTC)
Message-ID: <e3df2e1c87997799babafcd17676b7473d3f5154.camel@suse.de>
Subject: Re: 5.6.0-rc5 fails to boot (MMC/SDHCI related?)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Lucas Nussbaum <lucas@debian.org>, linux-rpi-kernel@lists.infradead.org
Date: Wed, 11 Mar 2020 12:04:29 +0100
In-Reply-To: <20200310223403.GA31851@xanadu.blop.info>
References: <20200310223403.GA31851@xanadu.blop.info>
User-Agent: Evolution 3.34.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_040433_828638_F5DE0114 
X-CRM114-Status: GOOD (  12.44  )
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
Content-Type: multipart/mixed; boundary="===============0567558702775787645=="
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org


--===============0567558702775787645==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-XoGOo07qBVEA9gaUvmv7"


--=-XoGOo07qBVEA9gaUvmv7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Lucas,

On Tue, 2020-03-10 at 23:34 +0100, Lucas Nussbaum wrote:
> Hi,
>=20
> I'm trying to build Debian images with the vanilla kernel, but I can't
> get a kernel to boot. I'm probably missing something obvious...
>=20
> I've attached the boot log and my kernel config (based on Debian's
> config for 5.5, and merging bits from arch/arm/configs/bcm2835_defconfig)=
.

Note that bcm2835_defconfig is an arm32 config, so you must be careful. Als=
o
arm64's defconfig should boot the RPi4 with all the supported HW, so it's a
good source of validation.

[    0.000000] Booting Linux on physical CPU 0x0000000000 [0x410fd083]
[    0.000000] Linux version 5.6.0-rc5+ (debian@rpi3-20200307) (gcc version
8.3.0 (Debian 8.3.0-6)) #7 SMP Tue Mar 10 21:40:52 UTC 2020
[    0.000000] Machine model: Raspberry Pi 4 Model B Rev 1.1
[    0.000000] efi: Getting EFI parameters from FDT:
[    0.000000] efi: UEFI not found.
[    0.000000] cma: Reserved 64 MiB at 0x000000007c000000

Here's your issue, CMA has to be positioned in the lower 1GB of memory. I b=
et
you're using a 2GB RPi4 because it's located next to the 2GB limit. This ca=
n be
caused by several things, first of all, which device-tree file are you usin=
g?

[    0.000000] NUMA: No NUMA configuration found
[    0.000000] NUMA: Faking a node at [mem 0x0000000000000000-
0x000000007fffffff]
[    0.000000] NUMA: NODE_DATA [mem 0x7bbf3100-0x7bbf4fff]
[    0.000000] Zone ranges:
[    0.000000]   DMA      [mem 0x0000000000000000-0x000000003fffffff]
[    0.000000]   DMA32    [mem 0x0000000040000000-0x000000007fffffff]
[    0.000000]   Normal   empty
[    0.000000] Movable zone start for each node
[    0.000000] Early memory node ranges
[    0.000000]   node   0: [mem 0x0000000000000000-0x000000003b3fffff]
[    0.000000]   node   0: [mem 0x0000000040000000-0x000000007fffffff]
[    0.000000] Initmem setup node 0 [mem 0x0000000000000000-0x000000007ffff=
fff]
[    0.000000] percpu: Embedded 32 pages/cpu s93976 r8192 d28904 u131072
[    0.000000] Detected PIPT I-cache on CPU0
[    0.000000] CPU features: detected: EL2 vector hardening
[    0.000000] CPU features: kernel page table isolation forced ON by KASLR
[    0.000000] CPU features: detected: Kernel page table isolation (KPTI)
[    0.000000] ARM_SMCCC_ARCH_WORKAROUND_1 missing from firmware
[    0.000000] CPU features: detected: ARM erratum 1319367
[    0.000000] Built 1 zonelists, mobility grouping on.  Total pages: 49694=
4
[    0.000000] Policy zone: DMA32
[    0.000000] Kernel command line: coherent_pool=3D1M 8250.nr_uarts=3D1 cm=
a=3D64M
bcm2708_fb.fbwidth=3D0 bcm2708_fb.fbheight=3D0 bcm2708_fb.fbswap=3D1
smsc95xx.macaddr=3DDC:A6:32:22:EC:1B vc_mem.mem_base=3D0x3ec00000
vc_mem.mem_size=3D0x40000000  net.ifnames=3D0 dwc_otg.lpm_enable=3D0
console=3DttyS0,115200 console=3Dtty1

Here you're setting cma=3D64M, which bypasses the device-tree provided CMA
location configuration. As a test you could set it to cma=3D64M@0x0-0x40000=
000,
which should make your system bootable. That said, you should find out why =
is
this being set in your command-line. I could be able to help if you show me
your config.txt.

Regards,
Nicolas


--=-XoGOo07qBVEA9gaUvmv7
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl5oxb0ACgkQlfZmHno8
x/4c3AgAjKH4OvyUW96oG9aJwlRhOVUUdJKRJdO/xB0gNtsNQYnv2WbVm5Yp0aMU
rpn6qXQseJIIjHPxlKinfdmrtGW6ReVQYrlwDYc8INBrQCnyOqHJHPbnXvvjk5lo
c2ON23WYzDixveB/L4OixV9yDnX7uP+/r0w+zFwVI3RnrRfykvwqXH7Zhkjp1ey1
++3xH0YR3o0rATWHjOrQtZ5dlevl3E/pNT/BdNGmHRGmyBSnuxmv7VqgrsPLdcPq
vBGiRA3f43xWRCVl2Z6GD6taBHI1I6N9FPnL5DVx0O+R5zKvlxOa9njWlfgOgqzo
vlXcpwK5csWTThAs7UB0M3uYSnopzw==
=DGut
-----END PGP SIGNATURE-----

--=-XoGOo07qBVEA9gaUvmv7--



--===============0567558702775787645==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel

--===============0567558702775787645==--


