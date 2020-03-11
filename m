Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A27E718177A
	for <lists+linux-rpi-kernel@lfdr.de>; Wed, 11 Mar 2020 13:07:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lc0bozNwX4MDbDIGxM5NUKO4uFWB5/tUmjyz2TA2SuY=; b=ipOwCnW6Ufh5x1
	BrnEyvAQJiVZLssFiW1qrEp8wLxYz6vGNsa3VyDGEhZi49rYSs3oZ67zg1OENRSkpVV68X0SBmHMr
	egyjQ1xx+Lg07TATsxmgr2ZIh7Eb2Lrcbr4A+wtwlku6pL1PxVBEE7y3eJ0Cu4ueDDnF0ybsp+1rH
	JYE2cCrVGKmgbaivtxTXPstkBj0Ntr6nHqm5B9yfVXnofSZa3B1Pm4cC5CvX8I7hGsWdxIPs43yMt
	EZw0w0IpcaxXMI21pTY+obgtqADq0ln5WwAPJ+uUvSfXbUVn0ztykJsnBLjxqA7QFnLzJ3sA8nzEJ
	li7VerOoFTNluMa+x7dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC09A-0008Vm-UD; Wed, 11 Mar 2020 12:07:36 +0000
Received: from xanadu.blop.info ([178.79.145.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC097-0008VI-Nc
 for linux-rpi-kernel@lists.infradead.org; Wed, 11 Mar 2020 12:07:35 +0000
Received: from [127.0.0.1] (helo=xanadu.blop.info)
 by xanadu.blop.info with smtp (Exim 4.89)
 (envelope-from <lucas@debian.org>)
 id 1jC094-00047Q-Kp; Wed, 11 Mar 2020 13:07:30 +0100
Received: (nullmailer pid 369 invoked by uid 1000);
 Wed, 11 Mar 2020 12:07:24 -0000
Date: Wed, 11 Mar 2020 13:07:24 +0100
From: Lucas Nussbaum <lucas@debian.org>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: 5.6.0-rc5 fails to boot (MMC/SDHCI related?)
Message-ID: <20200311120724.GA30432@xanadu.blop.info>
References: <20200310223403.GA31851@xanadu.blop.info>
 <e3df2e1c87997799babafcd17676b7473d3f5154.camel@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e3df2e1c87997799babafcd17676b7473d3f5154.camel@suse.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_050733_902022_B3215831 
X-CRM114-Status: GOOD (  21.63  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.79.145.134 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

On 11/03/20 at 12:04 +0100, Nicolas Saenz Julienne wrote:
> Hi Lucas,
> 
> On Tue, 2020-03-10 at 23:34 +0100, Lucas Nussbaum wrote:
> > Hi,
> > 
> > I'm trying to build Debian images with the vanilla kernel, but I can't
> > get a kernel to boot. I'm probably missing something obvious...
> > 
> > I've attached the boot log and my kernel config (based on Debian's
> > config for 5.5, and merging bits from arch/arm/configs/bcm2835_defconfig).
> 
> Note that bcm2835_defconfig is an arm32 config, so you must be careful. Also
> arm64's defconfig should boot the RPi4 with all the supported HW, so it's a
> good source of validation.
> 
> [    0.000000] Booting Linux on physical CPU 0x0000000000 [0x410fd083]
> [    0.000000] Linux version 5.6.0-rc5+ (debian@rpi3-20200307) (gcc version
> 8.3.0 (Debian 8.3.0-6)) #7 SMP Tue Mar 10 21:40:52 UTC 2020
> [    0.000000] Machine model: Raspberry Pi 4 Model B Rev 1.1
> [    0.000000] efi: Getting EFI parameters from FDT:
> [    0.000000] efi: UEFI not found.
> [    0.000000] cma: Reserved 64 MiB at 0x000000007c000000
> 
> Here's your issue, CMA has to be positioned in the lower 1GB of memory. I bet
> you're using a 2GB RPi4 because it's located next to the 2GB limit. This can be
> caused by several things, first of all, which device-tree file are you using?
> 
> [    0.000000] NUMA: No NUMA configuration found
> [    0.000000] NUMA: Faking a node at [mem 0x0000000000000000-
> 0x000000007fffffff]
> [    0.000000] NUMA: NODE_DATA [mem 0x7bbf3100-0x7bbf4fff]
> [    0.000000] Zone ranges:
> [    0.000000]   DMA      [mem 0x0000000000000000-0x000000003fffffff]
> [    0.000000]   DMA32    [mem 0x0000000040000000-0x000000007fffffff]
> [    0.000000]   Normal   empty
> [    0.000000] Movable zone start for each node
> [    0.000000] Early memory node ranges
> [    0.000000]   node   0: [mem 0x0000000000000000-0x000000003b3fffff]
> [    0.000000]   node   0: [mem 0x0000000040000000-0x000000007fffffff]
> [    0.000000] Initmem setup node 0 [mem 0x0000000000000000-0x000000007fffffff]
> [    0.000000] percpu: Embedded 32 pages/cpu s93976 r8192 d28904 u131072
> [    0.000000] Detected PIPT I-cache on CPU0
> [    0.000000] CPU features: detected: EL2 vector hardening
> [    0.000000] CPU features: kernel page table isolation forced ON by KASLR
> [    0.000000] CPU features: detected: Kernel page table isolation (KPTI)
> [    0.000000] ARM_SMCCC_ARCH_WORKAROUND_1 missing from firmware
> [    0.000000] CPU features: detected: ARM erratum 1319367
> [    0.000000] Built 1 zonelists, mobility grouping on.  Total pages: 496944
> [    0.000000] Policy zone: DMA32
> [    0.000000] Kernel command line: coherent_pool=1M 8250.nr_uarts=1 cma=64M
> bcm2708_fb.fbwidth=0 bcm2708_fb.fbheight=0 bcm2708_fb.fbswap=1
> smsc95xx.macaddr=DC:A6:32:22:EC:1B vc_mem.mem_base=0x3ec00000
> vc_mem.mem_size=0x40000000  net.ifnames=0 dwc_otg.lpm_enable=0
> console=ttyS0,115200 console=tty1
> 
> Here you're setting cma=64M, which bypasses the device-tree provided CMA
> location configuration. As a test you could set it to cma=64M@0x0-0x40000000,
> which should make your system bootable. That said, you should find out why is
> this being set in your command-line. I could be able to help if you show me
> your config.txt.

My goal is to create Debian images for the RPI4, using only mainline
components. I started by combining an arm64 Ubuntu image (that works)
with a Debian image for the RPI3. I could get it to boot using Ubuntu's
u-boot, kernel and device tree file, and the Debian userland.

But when I replace Ubuntu's kernel with the one I built, the boot hangs
as above.

I guess that you are right, and that the problem is that I did not
replace the device tree file by the one from the kernel. However, when I
do so, the boot hangs earlier, after:

----------------------------
PM_RSTS: 0x00001000
RPi: BOOTLOADER release VERSION:f626c772 Sep 10 2019 10:41:52 BOOTMODE: 0x00000006 part: 0 BUILD_TIMESTAMP=1568112110
uSD voltage 3.3V
SD HOST: 200000000 CTL0: 0x00000000 BUS: 100000 Hz div: 2000 status: 0x1fff0000 delay-ticks: 1080
SD HOST: 200000000 CTL0: 0x00000f00 BUS: 100000 Hz div: 2000 status: 0x1fff0000 delay-ticks: 1080
CID: 00035344534331364780da9e301d013c
CSD: 400e00325b59000076b27f800a404000
CSD: VER: 1 logical blocks: 30386 mult: 1024 rd(len: 512 partial: 0 misalign: 0) sectors: 31116288
SD: bus-width: 4 spec: 2 SCR: 0x02358043 0x00000000
SWITCH_FUNC: 0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000038001c00180018001800180c800
SD HOST: 200000000 CTL0: 0x00000f04 BUS: 40000000 Hz div: 6 status: 0x1fff0000 delay-ticks: 2
MBR: 0x00000800, 1021952 type: 0x0c
MBR: 0x000fa000,30092288 type: 0x83
MBR: 0x00000000,       0 type: 0x00
MBR: 0x00000000,       0 type: 0x00
part-offset: 2048 oem:  mkfs.fat volume:   V       ^ 
rsc: 16 sectors-per-fat: 256 clusters: 63837 cluster-size: 16 root-dir: 1 root-sectors: 32
WEL: 0x00000a10 0x000f9fff
PM_RSTS: 0x00001000
Partition: 0
part-offset: 2048 oem:  mkfs.fat volume:   V       ^ 
rsc: 16 sectors-per-fat: 256 clusters: 63837 cluster-size: 16 root-dir: 1 root-sectors: 32
Loading config.txt hnd: 0x00001479
Initialising SDRAM 'Micron' 16Gb x1 total-size: 16 Gbit 3200
Loading recovery.elf hnd: 0x00000000
Failed to read recovery.elf error: 6
Loading start4.elf hnd: 0x000054aa
Loading fixup4.dat hnd: 0x00005206
MEM GPU: 76 ARM: 948 TOTAL: 1024
FIXUP src: 128 256 dst: 948 1024
Starting start4.elf @ 0xfec00200
----------------------------------------

(So it seems that u-boot doesn't start)

I confirm that setting cma=64M@0x0-0x40000000 fixes this issue (but the
boots still hangs, later).

I will work on building a "clean" u-boot instead of Ubuntu's to see if
it fixes the above issue (= uboot not starting). I quickly tried
replacing the uboot binary with OpenSUSE's and it prints garbage on the
serial port, so at least it seems to go further.

Is there a system image somewhere using vanilla versions for u-boot and
the kernel I could compare with? (it sounds like it would be a better
idea than to compare with Ubuntu's).

Thanks!

Lucas

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
