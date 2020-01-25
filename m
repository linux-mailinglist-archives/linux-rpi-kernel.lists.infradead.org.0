Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E0191495D3
	for <lists+linux-rpi-kernel@lfdr.de>; Sat, 25 Jan 2020 14:07:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wj97H1UpZ4cR49TXoczJnwwDyPmrWAxmC8D6QHGD1eA=; b=cIt+KI+Psyu+h9
	S7z0SZvBeP4qpQDXcTzoo0GamJEqDb5BnQfEOL73FMegMUZoPJGFbOI4Akr6LwCeKcl8/kk+bdFtw
	HYE1eueOsCFaTMfWfaENwfN2+d3YpdtLTFanX8IKlZzV5sBabaziVS/pImWpQq5DkRE2D/udAq5LW
	gb5Al8INZtqsCIj5ix17fsI7JPUCrZP/ibUZqF7AJbOIkZcqxLAl7ny5JucB7iUBvsOuld7Q07ba6
	ZL1toSmaH2o24t8QOb161cmGKJg92N6OsmeUEXCKFAvJn2g9ZuBpqGgIC1VjTMpQuoPIVPWopfe1F
	mYE2f/quiTUtY8U9ObfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ivLAA-0005oF-Kh; Sat, 25 Jan 2020 13:07:46 +0000
Received: from valentin-vidic.from.hr ([94.229.67.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivLA5-0005m0-6I
 for linux-rpi-kernel@lists.infradead.org; Sat, 25 Jan 2020 13:07:44 +0000
X-Virus-Scanned: Debian amavisd-new at valentin-vidic.from.hr
Received: by valentin-vidic.from.hr (Postfix, from userid 1000)
 id E0B843EA; Sat, 25 Jan 2020 14:07:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=valentin-vidic.from.hr; s=2017; t=1579957657;
 bh=VazSSh3Jk6VcnD4SSre1fAb3L/KWNwegoBISFMAp+do=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Rix2ByAN98i7KeAwlj2L5x27tGPlMhoNrhaKUe1fSgBvdYTk/Wg1R/p+jbO0QCpJO
 2rkRAoVisyYXP6SpvxaZAPnOUfGI9VuMqqjFBU29dZvTVv0JeHQYlTuTiE9Z2J3eN1
 sKo77Ifxt61HnghZnV5CA3C/EU57wWfJ4qz8ihz5zVObRAjOIM6zDDQDR07vJlbPRp
 m+36RZ1CRpsoNDvfy9rCmOzZC8YtNBS4jGT/opAEicCx+8cg2CFBnarGvLCEknI5pY
 XiLkSY13YgiErKDmAEAQa9M1rAYdAZCc540jAlAcqZQ7GhVRThIQ2mLbr+A7CC4aTH
 Dlx2+l8muvhIQ==
Date: Sat, 25 Jan 2020 14:07:37 +0100
From: Valentin =?utf-8?B?VmlkacSH?= <vvidic@valentin-vidic.from.hr>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: RPi B+ USB support
Message-ID: <20200125130737.GG3671@valentin-vidic.from.hr>
References: <20200125120933.GF3671@valentin-vidic.from.hr>
 <d374f6cd6692d088ffad15cb29085cd723903418.camel@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d374f6cd6692d088ffad15cb29085cd723903418.camel@suse.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200125_050741_684169_FBDE6F6F 
X-CRM114-Status: GOOD (  13.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Sat, Jan 25, 2020 at 01:27:04PM +0100, Nicolas Saenz Julienne wrote:
> This is not a known problem. Do you see any erros on your logs (dmesg -lerr)?

There is one backtrace during boot, not sure if it is relevant:

[    0.000000] Booting Linux on physical CPU 0x0
[    0.000000] Linux version 5.4.0-3-rpi (debian-kernel@lists.debian.org) (gcc version 9.2.1 20200110 (Debian 9.2.1-23)) #1 Debian 5.4.13-1 (2020-01-19)
[    0.000000] CPU: ARMv6-compatible processor [410fb767] revision 7 (ARMv7), cr=00c5387d
[    0.000000] CPU: PIPT / VIPT nonaliasing data cache, VIPT nonaliasing instruction cache
[    0.000000] OF: fdt: Machine model: Raspberry Pi Model B Rev 2
[    0.000000] Memory policy: Data cache writeback
[    0.000000] cma: Reserved 64 MiB at 0x17c00000
[    0.000000] On node 0 totalpages: 114688
[    0.000000]   Normal zone: 1008 pages used for memmap
[    0.000000]   Normal zone: 0 pages reserved
[    0.000000]   Normal zone: 114688 pages, LIFO batch:31
[    0.000000] pcpu-alloc: s0 r0 d32768 u32768 alloc=1*32768
[    0.000000] pcpu-alloc: [0] 0 
[    0.000000] Built 1 zonelists, mobility grouping on.  Total pages: 113680
[    0.000000] Kernel command line: console=tty0 console=ttyS1,115200 root=LABEL=RASPIROOT rw elevator=deadline fsck.repair=yes net.ifnames=0 cma=64M rootwait
[    0.000000] Dentry cache hash table entries: 65536 (order: 6, 262144 bytes, linear)
[    0.000000] Inode-cache hash table entries: 32768 (order: 5, 131072 bytes, linear)
[    0.000000] mem auto-init: stack:off, heap alloc:off, heap free:off
[    0.000000] Memory: 366820K/458752K available (7168K kernel code, 512K rwdata, 1912K rodata, 1024K init, 237K bss, 26396K reserved, 65536K cma-reserved)
[    0.000000] random: get_random_u32 called from __kmem_cache_create+0x44/0x448 with crng_init=0
[    0.000000] SLUB: HWalign=32, Order=0-3, MinObjects=0, CPUs=1, Nodes=1
[    0.000000] ftrace: allocating 25115 entries in 50 pages
[    0.000000] NR_IRQS: 16, nr_irqs: 16, preallocated irqs: 16
[    0.000034] sched_clock: 32 bits at 1000kHz, resolution 1000ns, wraps every 2147483647500ns
[    0.000076] clocksource: timer: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 1911260446275 ns
[    0.000193] bcm2835: system timer (irq = 27)
[    0.000680] Console: colour dummy device 80x30
[    0.001095] printk: console [tty0] enabled
[    0.001194] Calibrating delay loop... 697.34 BogoMIPS (lpj=1394688)
[    0.028336] pid_max: default: 32768 minimum: 301
[    0.028928] LSM: Security Framework initializing
[    0.029228] Yama: disabled by default; enable with sysctl kernel.yama.*
[    0.029546] AppArmor: AppArmor initialized
[    0.029771] Mount-cache hash table entries: 1024 (order: 0, 4096 bytes, linear)
[    0.029831] Mountpoint-cache hash table entries: 1024 (order: 0, 4096 bytes, linear)
[    0.032025] CPU: Testing write buffer coherency: ok
[    0.033849] Setting up static identity map for 0x100000 - 0x10005c
[    0.037461] devtmpfs: initialized
[    0.048532] VFP support v0.3: implementor 41 architecture 1 part 20 variant b rev 5
[    0.049326] clocksource: jiffies: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 7645041785100000 ns
[    0.049405] futex hash table entries: 256 (order: -1, 3072 bytes, linear)
[    0.059554] pinctrl core: initialized pinctrl subsystem
[    0.061015] NET: Registered protocol family 16
[    0.063575] DMA: preallocated 256 KiB pool for atomic coherent allocations
[    0.067484] audit: initializing netlink subsys (disabled)
[    0.068182] audit: type=2000 audit(0.064:1): state=initialized audit_enabled=0 res=1
[    0.069755] No ATAGs?
[    0.069786] hw-breakpoint: found 6 breakpoint and 1 watchpoint registers.
[    0.069861] hw-breakpoint: maximum watchpoint size is 4 bytes.
[    0.070068] Serial: AMBA PL011 UART driver
[    1.028333] random: fast init done
[    3.153671] usbcore: registered new interface driver usbfs
[    3.153873] usbcore: registered new interface driver hub
[    3.154138] usbcore: registered new device driver usb
[    3.157799] clocksource: Switched to clocksource timer
[    3.277161] VFS: Disk quotas dquot_6.6.0
[    3.277384] VFS: Dquot-cache hash table entries: 1024 (order 0, 4096 bytes)
[    3.278644] AppArmor: AppArmor Filesystem Enabled
[    3.279220] simple-framebuffer 1e513000.framebuffer: framebuffer at 0x1e513000, 0x6d8c00 bytes, mapped to 0x(ptrval)
[    3.279297] simple-framebuffer 1e513000.framebuffer: format=a8r8g8b8, mode=1824x984x32, linelength=7296
[    3.336092] Console: switching to colour frame buffer device 228x61
[    3.391526] simple-framebuffer 1e513000.framebuffer: fb0: simplefb registered!
[    3.417469] thermal_sys: Registered thermal governor 'fair_share'
[    3.417484] thermal_sys: Registered thermal governor 'step_wise'
[    3.418801] NET: Registered protocol family 2
[    3.420945] tcp_listen_portaddr_hash hash table entries: 512 (order: 0, 4096 bytes, linear)
[    3.421487] TCP established hash table entries: 4096 (order: 2, 16384 bytes, linear)
[    3.422076] TCP bind hash table entries: 4096 (order: 2, 16384 bytes, linear)
[    3.422541] TCP: Hash tables configured (established 4096 bind 4096)
[    3.423184] UDP hash table entries: 256 (order: 0, 4096 bytes, linear)
[    3.423582] UDP-Lite hash table entries: 256 (order: 0, 4096 bytes, linear)
[    3.424412] NET: Registered protocol family 1
[    3.424726] NET: Registered protocol family 44
[    3.425545] Trying to unpack rootfs image as initramfs...
[    5.060902] Freeing initrd memory: 10692K
[    5.062027] hw perfevents: no irqs for PMU, sampling events not supported
[    5.062489] hw perfevents: enabled with armv6_1176 PMU driver, 3 counters available
[    5.066249] Initialise system trusted keyrings
[    5.066640] Key type blacklist registered
[    5.067410] workingset: timestamp_bits=14 max_order=17 bucket_order=3
[    5.082884] zbud: loaded
[    5.084839] Platform Keyring initialized
[    5.085093] Key type asymmetric registered
[    5.085320] Asymmetric key parser 'x509' registered
[    5.085684] Block layer SCSI generic (bsg) driver version 0.4 loaded (major 251)
[    5.086620] io scheduler mq-deadline registered
[    5.088523] ------------[ cut here ]------------
[    5.088850] WARNING: CPU: 0 PID: 1 at kernel/irq/chip.c:1013 __irq_do_set_handler+0x108/0x160
[    5.089302] Modules linked in:
[    5.089495] CPU: 0 PID: 1 Comm: swapper Not tainted 5.4.0-3-rpi #1 Debian 5.4.13-1
[    5.089884] Hardware name: BCM2835
[    5.090073] Backtrace: 
[    5.105231] [<c010e444>] (dump_backtrace) from [<c010e7cc>] (show_stack+0x20/0x24)
[    5.120735]  r7:000003f5 r6:c01791a0 r5:00000009 r4:c09031ac
[    5.136016] [<c010e7ac>] (show_stack) from [<c078d250>] (dump_stack+0x20/0x28)
[    5.151352] [<c078d230>] (dump_stack) from [<c0124104>] (__warn+0xd0/0x104)
[    5.166524] [<c0124034>] (__warn) from [<c01244d0>] (warn_slowpath_fmt+0x6c/0xc4)
[    5.181847]  r7:c01791a0 r6:000003f5 r5:c09031ac r4:00000000
[    5.196944] [<c0124468>] (warn_slowpath_fmt) from [<c01791a0>] (__irq_do_set_handler+0x108/0x160)
[    5.212307]  r8:d7647e20 r7:00000000 r6:00000001 r5:c04422e0 r4:d7496400
[    5.227711] [<c0179098>] (__irq_do_set_handler) from [<c0179320>] (irq_set_chained_handler_and_data+0x5c/0x90)
[    5.243586]  r9:00000000 r8:d7647e20 r7:c0b4ccd0 r6:d7647f0c r5:c04422e0 r4:d7496400
[    5.259334] [<c01792c4>] (irq_set_chained_handler_and_data) from [<c0449fac>] (gpiochip_add_data_with_key+0x644/0xa24)
[    5.275436]  r6:d7647f0c r5:00000002 r4:d7647f0c
[    5.291324] [<c0449968>] (gpiochip_add_data_with_key) from [<c044276c>] (bcm2835_pinctrl_probe+0x2fc/0x428)
[    5.307746]  r10:00000020 r9:dbfc5408 r8:d755ca10 r7:c0bb63c8 r6:d660a620 r5:00000003
[    5.324309]  r4:d7647e20
[    5.340748] [<c0442470>] (bcm2835_pinctrl_probe) from [<c050d208>] (platform_drv_probe+0x58/0xa8)
[    5.357557]  r10:00000000 r9:c0b4cbc4 r8:00000000 r7:c0bb63c8 r6:c0b4cbc4 r5:d755ca10
[    5.374489]  r4:00000000
[    5.391265] [<c050d1b0>] (platform_drv_probe) from [<c050a8f8>] (really_probe+0x210/0x460)
[    5.408572]  r7:c0bb63c8 r6:00000000 r5:c0bb63c4 r4:d755ca10
[    5.426014] [<c050a6e8>] (really_probe) from [<c050ae78>] (driver_probe_device+0x17c/0x1c0)
[    5.443812]  r10:00000085 r9:00000007 r8:c0b80140 r7:c0b53dd0 r6:c0b4cbc4 r5:c0b4cbc4
[    5.461605]  r4:d755ca10
[    5.479230] [<c050acfc>] (driver_probe_device) from [<c050b14c>] (device_driver_attach+0x68/0x70)
[    5.497260]  r9:00000007 r8:c0b80140 r7:c0b53dd0 r6:c0b4cbc4 r5:00000000 r4:d755ca10
[    5.515299] [<c050b0e4>] (device_driver_attach) from [<c050b1f0>] (__driver_attach+0x9c/0x150)
[    5.533387]  r7:c0b53dd0 r6:d755ca10 r5:c0b4cbc4 r4:00000000
[    5.551367] [<c050b154>] (__driver_attach) from [<c050847c>] (bus_for_each_dev+0x84/0xcc)
[    5.569450]  r7:c0b53dd0 r6:c050b154 r5:c0b4cbc4 r4:00000000
[    5.587484] [<c05083f8>] (bus_for_each_dev) from [<c050a058>] (driver_attach+0x28/0x30)
[    5.605646]  r6:00000000 r5:d50d1600 r4:c0b4cbc4
[    5.623808] [<c050a030>] (driver_attach) from [<c0509930>] (bus_add_driver+0x138/0x218)
[    5.642302] [<c05097f8>] (bus_add_driver) from [<c050bcc8>] (driver_register+0x84/0x118)
[    5.660825]  r7:00000000 r6:c0b80140 r5:c0a3f850 r4:c0b4cbc4
[    5.679233] [<c050bc44>] (driver_register) from [<c050d150>] (__platform_driver_register+0x3c/0x50)
[    5.697820]  r5:c0a3f850 r4:c0a26684
[    5.716251] [<c050d114>] (__platform_driver_register) from [<c0a266a4>] (bcm2835_pinctrl_driver_init+0x20/0x28)
[    5.735142] [<c0a26684>] (bcm2835_pinctrl_driver_init) from [<c0102ef4>] (do_one_initcall+0x50/0x1d0)
[    5.754135] [<c0102ea4>] (do_one_initcall) from [<c0a012a8>] (kernel_init_freeable+0x138/0x204)
[    5.773161]  r7:c09dd32c r6:c0b80140 r5:c0a3f850 r4:c0a63824
[    5.792132] [<c0a01170>] (kernel_init_freeable) from [<c07a4a6c>] (kernel_init+0x18/0x11c)
[    5.811534]  r10:00000000 r9:00000000 r8:00000000 r7:00000000 r6:00000000 r5:c07a4a54
[    5.831014]  r4:00000000
[    5.850313] [<c07a4a54>] (kernel_init) from [<c01010e8>] (ret_from_fork+0x14/0x2c)
[    5.869886] Exception stack(0xd74e5fb0 to 0xd74e5ff8)
[    5.889381] 5fa0:                                     00000000 00000000 00000000 00000000
[    5.909054] 5fc0: 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    5.928742] 5fe0: 00000000 00000000 00000000 00000000 00000013 00000000
[    5.948241]  r5:c07a4a54 r4:00000000
[    5.967608] ---[ end trace b6a2311c00777871 ]---
[    5.995992] Serial: 8250/16550 driver, 4 ports, IRQ sharing enabled
[    6.021126] bcm2835-power bcm2835-power: Broadcom BCM2835 power domains driver
[    6.043952] mousedev: PS/2 mouse device common for all mice
[    6.066200] bcm2835-wdt bcm2835-wdt: Broadcom BCM2835 watchdog timer
[    6.167926] sdhost-bcm2835 20202000.mmc: loaded - DMA enabled (>1)
[    6.188368] ledtrig-cpu: registered to indicate activity on CPUs
[    6.209190] hidraw: raw HID events driver (C) Jiri Kosina
[    6.230418] usbcore: registered new interface driver usbhid
[    6.250187] usbhid: USB HID core driver
[    6.271439] bcm2835-mbox 2000b880.mailbox: mailbox enabled
[    6.298254] NET: Registered protocol family 10
[    6.367532] mmc0: host does not support reading read-only switch, assuming write-enable
[    6.409686] mmc0: new high speed SDHC card at address aaaa
[    6.450848] mmcblk0: mmc0:aaaa SL32G 29.7 GiB 
[    6.491424]  mmcblk0: p1 p2
[    6.600708] Segment Routing with IPv6
[    6.620418] mip6: Mobile IPv6
[    6.639575] NET: Registered protocol family 17
[    6.658846] mpls_gso: MPLS GSO support
[    6.678645] registered taskstats version 1
[    6.697095] Loading compiled-in X.509 certificates
[    7.442215] Loaded X.509 cert 'Debian Secure Boot CA: 6ccece7e4c6c0d1f6149f3dd27dfcc5cbb419ea1'
[    7.461022] Loaded X.509 cert 'Debian Secure Boot Signer: 00a7468def'
[    7.479290] zswap: loaded using pool lzo/zbud
[    7.498535] Key type ._fscrypt registered
[    7.516235] Key type .fscrypt registered
[    7.533654] AppArmor: AppArmor sha1 policy hashing enabled
[    7.561090] 20201000.serial: ttyAMA0 at MMIO 0x20201000 (irq = 81, base_baud = 0) is a PL011 rev2
[    7.580658] raspberrypi-firmware soc:firmware: Attached to firmware from 2019-09-24 17:37
[    7.602684] hctosys: unable to open rtc device (rtc0)
[    7.626913] Freeing unused kernel memory: 1024K
[    7.648389] Checked W+X mappings: passed, no W+X pages found
[    7.665564] Run /init as init process
[   10.839642] crc32c_generic: module verification failed: signature and/or required key missing - tainting kernel
[   11.073629] EXT4-fs (mmcblk0p2): mounted filesystem with ordered data mode. Opts: (null)
[   15.331325] random: systemd: uninitialized urandom read (16 bytes read)
[   15.368414] random: systemd: uninitialized urandom read (16 bytes read)
[   15.421741] random: systemd: uninitialized urandom read (16 bytes read)
[   17.277919] EXT4-fs (mmcblk0p2): re-mounted. Opts: (null)
[   20.755749] vchiq: module is from the staging directory, the quality is unknown, you have been warned.
[   20.957095] vchiq: vchiq_init_state: slot_zero = (ptrval)
[   21.055871] bcm2835-rng 20104000.rng: hwrng registered
[   22.425987] mc: Linux media interface: v0.10
[   22.556294] snd_bcm2835: module is from the staging directory, the quality is unknown, you have been warned.
[   22.631194] bcm2835_audio bcm2835_audio: card created with 8 channels
[   22.658061] videodev: Linux video capture interface: v2.00
[   22.809350] bcm2835_v4l2: module is from the staging directory, the quality is unknown, you have been warned.
[   25.526173] audit: type=1400 audit(1550139131.232:2): apparmor="STATUS" operation="profile_load" profile="unconfined" name="nvidia_modprobe" pid=206 comm="apparmor_parser"
[   25.598274] audit: type=1400 audit(1550139131.232:3): apparmor="STATUS" operation="profile_load" profile="unconfined" name="nvidia_modprobe//kmod" pid=206 comm="apparmor_parser"
[   73.569923] random: crng init done
[   73.570176] random: 7 urandom warning(s) missed due to ratelimiting

-- 
Valentin

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
