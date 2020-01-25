Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33AB31495FA
	for <lists+linux-rpi-kernel@lfdr.de>; Sat, 25 Jan 2020 14:54:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BPmslvd6eY+v9s8CG+p8O+KPAli7NfCTeB5VEAGvY5M=; b=Y81VajvHVuloXU
	FvvUM0echY788GcJUHmAwwUs0oDFClJ4+D11qtcKplSpCRT+F4i9Wohx44HYp6BSjt1Y9O/GoTi0W
	TD6p0fuhfAFGfbkOkyiSQMimaLBZ7h1YknTiuKT7oS/bcirAhC364gH8Nst7sdyaqRiQ7mzcNOLvU
	zfwcRiWEYOovu0vVBr5C8w82lvKE0V+VcZ0FlHsjrwyqQ3CguAPDuPqELzbe8x7iNk0+Mc58W7LRA
	Mu2nbMIHLOm49BCIu4b8y5JT6F2SdwI/2Cn3x0sVPms7tOXMdpzAog1XoQTfKKKbXvzMYNkYy9xq/
	OFeoKxu5O+b7gkEPVBxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ivLtK-0001kC-JH; Sat, 25 Jan 2020 13:54:26 +0000
Received: from valentin-vidic.from.hr ([2001:470:1f0b:3b7::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivLtA-0001jt-AI
 for linux-rpi-kernel@lists.infradead.org; Sat, 25 Jan 2020 13:54:24 +0000
X-Virus-Scanned: Debian amavisd-new at valentin-vidic.from.hr
Received: by valentin-vidic.from.hr (Postfix, from userid 1000)
 id 7378B3EA; Sat, 25 Jan 2020 14:54:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=valentin-vidic.from.hr; s=2017; t=1579960444;
 bh=c0lxyp+Uyw8xP3IfWkYOg2Ne2ColOpoVWtcPxKrYoKA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Pkt/aDW+eiKRxpV04Bn+pl9IVCE786IuDuNIWOkFdnd1WFK3nBWvc1NlafSB5Ions
 +Wfq90kixAWfAcWDXaAkcLmX5Q7HVnkjUjOrJO7VB3x30L7e0CkptoN6Gj8/zPzD69
 dKlmwHqkmWSyZ6gCospblUAZg3pGXzZ6cfjjQ0x5K6hXNGEYhWd5wTOtO/IJETt+n6
 vAqOzSbgmOjIFvmQp+/figjW0e816kGYN+Xnl+KLQ8nBMrYnjyBchvBdjlI3CGxMBF
 b335uSKg0nT3jhBXHzXmMNaGwRh1WrHwreRYXVN1jAeq0yj+23QeMZMWiCWHyaEzeS
 zDqeMX5+vofMg==
Date: Sat, 25 Jan 2020 14:54:04 +0100
From: Valentin =?utf-8?B?VmlkacSH?= <vvidic@valentin-vidic.from.hr>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: RPi B+ USB support
Message-ID: <20200125135404.GH3671@valentin-vidic.from.hr>
References: <20200125130737.GG3671@valentin-vidic.from.hr>
 <C04WEWWXBXRL.28WZVXZ9OKU4B@linux-9qgx>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <C04WEWWXBXRL.28WZVXZ9OKU4B@linux-9qgx>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200125_055416_976434_3EA180BB 
X-CRM114-Status: GOOD (  16.04  )
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

On Sat, Jan 25, 2020 at 02:15:30PM +0100, Nicolas Saenz Julienne wrote:
> This seems odd, current mainline version is v5.5-rc7.
> 
> See this successful test build from yesterday:
> https://kernelci.org/boot/id/5e2b0dfb15f828397b74e989/

I just tried to boot that kernel but it did not help - USB still not
working and there is even more backtraces now (see below). Could it be
some other firmware or u-boot is causing this problem?

> Did you built/installed ther kernel yourself?

I was testing with a Debian kernel build for rpi, did not try to build
one just yet.


[    0.000000] Booting Linux on physical CPU 0x0
[    0.000000] Linux version 5.5.0-rc7 (KernelCI@42d11dcb12f5) (gcc version 8.3.0 (Debian 8.3.0-2)) #1 Fri Jan 24 13:42:29 UTC 2020
[    0.000000] CPU: ARMv6-compatible processor [410fb767] revision 7 (ARMv7), cr=00c5387d
[    0.000000] CPU: PIPT / VIPT nonaliasing data cache, VIPT nonaliasing instruction cache
[    0.000000] OF: fdt: Machine model: Raspberry Pi Model B Plus Rev 1.2
[    0.000000] Memory policy: Data cache writeback
[    0.000000] cma: Reserved 64 MiB at 0x17c00000
[    0.000000] On node 0 totalpages: 114688
[    0.000000]   DMA zone: 896 pages used for memmap
[    0.000000]   DMA zone: 0 pages reserved
[    0.000000]   DMA zone: 114688 pages, LIFO batch:31
[    0.000000] CPU: All CPU(s) started in SVC mode.
[    0.000000] pcpu-alloc: s0 r0 d32768 u32768 alloc=1*32768
[    0.000000] pcpu-alloc: [0] 0 
[    0.000000] Built 1 zonelists, mobility grouping on.  Total pages: 113792
[    0.000000] Kernel command line: console=tty0 console=ttyS1,115200 root=LABEL=RASPIROOT rw elevator=deadline fsck.repair=yes net.ifnames=0 cma=64M rootwait
[    0.000000] Kernel parameter elevator= does not have any effect anymore.
[    0.000000] Please use sysfs to set IO scheduler for individual devices.
[    0.000000] Dentry cache hash table entries: 65536 (order: 6, 262144 bytes, linear)
[    0.000000] Inode-cache hash table entries: 32768 (order: 5, 131072 bytes, linear)
[    0.000000] mem auto-init: stack:off, heap alloc:off, heap free:off
[    0.000000] Memory: 365780K/458752K available (7168K kernel code, 538K rwdata, 2728K rodata, 1024K init, 678K bss, 27436K reserved, 65536K cma-reserved)
[    0.000000] SLUB: HWalign=64, Order=0-3, MinObjects=0, CPUs=1, Nodes=1
[    0.000000] ftrace: allocating 28526 entries in 56 pages
[    0.000000] ftrace: allocated 56 pages with 3 groups
[    0.000000] NR_IRQS: 16, nr_irqs: 16, preallocated irqs: 16
[    0.000000] random: get_random_bytes called from start_kernel+0x2a4/0x4b4 with crng_init=0
[    0.000030] sched_clock: 32 bits at 1000kHz, resolution 1000ns, wraps every 2147483647500ns
[    0.000072] clocksource: timer: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 1911260446275 ns
[    0.000198] bcm2835: system timer (irq = 27)
[    0.000752] Console: colour dummy device 80x30
[    0.001383] printk: console [tty0] enabled
[    0.001480] Calibrating delay loop... 697.95 BogoMIPS (lpj=3489792)
[    0.060393] pid_max: default: 32768 minimum: 301
[    0.060980] Mount-cache hash table entries: 1024 (order: 0, 4096 bytes, linear)
[    0.061050] Mountpoint-cache hash table entries: 1024 (order: 0, 4096 bytes, linear)
[    0.062509] CPU: Testing write buffer coherency: ok
[    0.064195] Setting up static identity map for 0x100000 - 0x100054
[    0.065344] devtmpfs: initialized
[    0.078483] VFP support v0.3: implementor 41 architecture 1 part 20 variant b rev 5
[    0.079087] clocksource: jiffies: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 19112604462750000 ns
[    0.079182] futex hash table entries: 256 (order: -1, 3072 bytes, linear)
[    0.089857] pinctrl core: initialized pinctrl subsystem
[    0.090169] thermal_sys: Registered thermal governor 'step_wise'
[    0.091482] NET: Registered protocol family 16
[    0.094140] DMA: preallocated 256 KiB pool for atomic coherent allocations
[    0.100005] No ATAGs?
[    0.100040] hw-breakpoint: found 6 breakpoint and 1 watchpoint registers.
[    0.100130] hw-breakpoint: maximum watchpoint size is 4 bytes.
[    0.100793] Serial: AMBA PL011 UART driver
[    0.144522] SCSI subsystem initialized
[    0.145084] usbcore: registered new interface driver usbfs
[    0.145259] usbcore: registered new interface driver hub
[    0.145511] usbcore: registered new device driver usb
[    0.146262] videodev: Linux video capture interface: v2.00
[    0.146717] Advanced Linux Sound Architecture Driver Initialized.
[    0.147856] Bluetooth: Core ver 2.22
[    0.147979] NET: Registered protocol family 31
[    0.148018] Bluetooth: HCI device and connection manager initialized
[    0.148077] Bluetooth: HCI socket layer initialized
[    0.148123] Bluetooth: L2CAP socket layer initialized
[    0.148169] Bluetooth: SCO socket layer initialized
[    0.149132] clocksource: Switched to clocksource timer
[    0.417099] simple-framebuffer 1e513000.framebuffer: framebuffer at 0x1e513000, 0x6d8c00 bytes, mapped to 0x(ptrval)
[    0.417209] simple-framebuffer 1e513000.framebuffer: format=a8r8g8b8, mode=1824x984x32, linelength=7296
[    0.477544] Console: switching to colour frame buffer device 228x61
[    0.536617] simple-framebuffer 1e513000.framebuffer: fb0: simplefb registered!
[    0.560562] NET: Registered protocol family 2
[    0.561918] tcp_listen_portaddr_hash hash table entries: 512 (order: 0, 4096 bytes, linear)
[    0.562447] TCP established hash table entries: 4096 (order: 2, 16384 bytes, linear)
[    0.562970] TCP bind hash table entries: 4096 (order: 2, 16384 bytes, linear)
[    0.563453] TCP: Hash tables configured (established 4096 bind 4096)
[    0.564022] UDP hash table entries: 256 (order: 0, 4096 bytes, linear)
[    0.564444] UDP-Lite hash table entries: 256 (order: 0, 4096 bytes, linear)
[    0.565180] NET: Registered protocol family 1
[    0.566803] RPC: Registered named UNIX socket transport module.
[    0.567180] RPC: Registered udp transport module.
[    0.567457] RPC: Registered tcp transport module.
[    0.567735] RPC: Registered tcp NFSv4.1 backchannel transport module.
[    0.569883] Unpacking initramfs...
[    2.204221] Freeing initrd memory: 10692K
[    2.205346] hw perfevents: no irqs for PMU, sampling events not supported
[    2.205837] hw perfevents: enabled with armv6_1176 PMU driver, 3 counters available
[    2.209014] Initialise system trusted keyrings
[    2.209860] workingset: timestamp_bits=30 max_order=17 bucket_order=0
[    2.231473] Installing knfsd (copyright (C) 1996 okir@monad.swb.de).
[    2.294565] jitterentropy: Initialization failed with host not compliant with requirements: 2
[    2.295163] Key type asymmetric registered
[    2.295424] Asymmetric key parser 'x509' registered
[    2.295840] Block layer SCSI generic (bsg) driver version 0.4 loaded (major 252)
[    2.296274] io scheduler mq-deadline registered
[    2.296546] io scheduler kyber registered
[    2.298304] ------------[ cut here ]------------
[    2.298653] WARNING: CPU: 0 PID: 1 at kernel/irq/chip.c:1007 __irq_do_set_handler+0xf0/0x134
[    2.299130] Modules linked in:
[    2.299336] CPU: 0 PID: 1 Comm: swapper Not tainted 5.5.0-rc7 #1
[    2.299686] Hardware name: BCM2835
[    2.315951] Backtrace: 
[    2.331873] [<c010c50c>] (dump_backtrace) from [<c010c884>] (show_stack+0x20/0x24)
[    2.348003]  r7:00000009 r6:00000000 r5:c09de7c2 r4:00000000
[    2.364075] [<c010c864>] (show_stack) from [<c07d0a10>] (dump_stack+0x20/0x28)
[    2.380453] [<c07d09f0>] (dump_stack) from [<c011ded8>] (__warn+0xec/0x104)
[    2.396589] [<c011ddec>] (__warn) from [<c011e294>] (warn_slowpath_fmt+0x84/0xa8)
[    2.412754]  r9:c015cfac r8:c09de7c2 r7:c0c04248 r6:00000009 r5:000003ef r4:00000000
[    2.429014] [<c011e214>] (warn_slowpath_fmt) from [<c015cfac>] (__irq_do_set_handler+0xf0/0x134)
[    2.445395]  r9:d54f8040 r8:00000000 r7:d7406414 r6:00000001 r5:c03dae78 r4:d7406400
[    2.461865] [<c015cebc>] (__irq_do_set_handler) from [<c015d10c>] (irq_set_chained_handler_and_data+0x58/0x88)
[    2.478808]  r9:d54f8040 r8:d54f812c r7:d54f812c r6:c03dae78 r5:d7406400 r4:c0c04248
[    2.495699] [<c015d0b4>] (irq_set_chained_handler_and_data) from [<c03e1e18>] (gpiochip_add_data_with_key+0x9f0/0xab0)
[    2.513024]  r7:00000002 r6:00000000 r5:d54f8400 r4:d54f812c
[    2.530367] [<c03e1428>] (gpiochip_add_data_with_key) from [<c03dbb3c>] (bcm2835_pinctrl_probe+0x2fc/0x3f0)
[    2.548312]  r10:dbc46054 r9:d54c5640 r8:d7549800 r7:d54f812c r6:d7549810 r5:00000003
[    2.566424]  r4:d54f8040
[    2.584400] [<c03db840>] (bcm2835_pinctrl_probe) from [<c0492024>] (platform_drv_probe+0x58/0xa4)
[    2.602879]  r10:fffffdfb r9:00000000 r8:c0c43f48 r7:00000000 r6:c0c43f48 r5:00000000
[    2.621421]  r4:d7549810
[    2.639913] [<c0491fcc>] (platform_drv_probe) from [<c04900f4>] (really_probe+0x200/0x31c)
[    2.658701]  r7:00000000 r6:00000000 r5:c0d27f18 r4:d7549810
[    2.677516] [<c048fef4>] (really_probe) from [<c04904e8>] (driver_probe_device+0x150/0x168)
[    2.696697]  r10:c0b89650 r9:c0c86840 r8:000000ad r7:c04906f4 r6:c0c43f48 r5:c0c43f48
[    2.716051]  r4:d7549810 r3:00000000
[    2.735307] [<c0490398>] (driver_probe_device) from [<c04906dc>] (device_driver_attach+0x54/0x6c)
[    2.754908]  r9:c0c86840 r8:000000ad r7:c04906f4 r6:c0c43f48 r5:d7549810 r4:00000000
[    2.774514] [<c0490688>] (device_driver_attach) from [<c04907b0>] (__driver_attach+0xbc/0xc4)
[    2.794146]  r7:c04906f4 r6:c0c43f48 r5:d7549810 r4:00000000
[    2.813681] [<c04906f4>] (__driver_attach) from [<c048e2c0>] (bus_for_each_dev+0x74/0xb0)
[    2.833375]  r7:c04906f4 r6:c0c43f48 r5:c0c04248 r4:d7549810
[    2.853017] [<c048e24c>] (bus_for_each_dev) from [<c048f880>] (driver_attach+0x28/0x30)
[    2.872787]  r7:c0c4b730 r6:00000000 r5:d54c5480 r4:c0c43f48
[    2.892436] [<c048f858>] (driver_attach) from [<c048f4d0>] (bus_add_driver+0x168/0x1c8)
[    2.912203] [<c048f368>] (bus_add_driver) from [<c0490e18>] (driver_register+0xbc/0x100)
[    2.931967]  r7:00000000 r6:c0b2c428 r5:c0c04248 r4:c0c43f48
[    2.951693] [<c0490d5c>] (driver_register) from [<c0491f6c>] (__platform_driver_register+0x40/0x54)
[    2.971717]  r5:c0c04248 r4:00000007
[    2.991585] [<c0491f2c>] (__platform_driver_register) from [<c0b2c448>] (bcm2835_pinctrl_driver_init+0x20/0x28)
[    3.011952] [<c0b2c428>] (bcm2835_pinctrl_driver_init) from [<c0102e14>] (do_one_initcall+0x68/0x1b0)
[    3.032449] [<c0102dac>] (do_one_initcall) from [<c0b011cc>] (kernel_init_freeable+0x168/0x1a4)
[    3.053139]  r8:000000ad r7:c0b5a830 r6:c0c86840 r5:c0b5a850 r4:00000007
[    3.074064] [<c0b01064>] (kernel_init_freeable) from [<c07e6a50>] (kernel_init+0x18/0x11c)
[    3.095228]  r10:00000000 r9:00000000 r8:00000000 r7:00000000 r6:00000000 r5:c07e6a38
[    3.116446]  r4:00000000
[    3.137547] [<c07e6a38>] (kernel_init) from [<c01010e8>] (ret_from_fork+0x14/0x2c)
[    3.158943] Exception stack(0xd74d9fb0 to 0xd74d9ff8)
[    3.180263] 9fa0:                                     00000000 00000000 00000000 00000000
[    3.201629] 9fc0: 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    3.223032] 9fe0: 00000000 00000000 00000000 00000000 00000013 00000000
[    3.244228]  r5:c07e6a38 r4:00000000
[    3.265175] ---[ end trace d472f137fa25805d ]---
[    3.295149] Serial: 8250/16550 driver, 4 ports, IRQ sharing enabled
[    3.322584] bcm2835-power bcm2835-power: Broadcom BCM2835 power domains driver
[    3.345437] libphy: Fixed MDIO Bus: probed
[    3.367293] usbcore: registered new interface driver zd1211rw
[    3.388846] usbcore: registered new interface driver lan78xx
[    3.410232] usbcore: registered new interface driver asix
[    3.431203] usbcore: registered new interface driver ax88179_178a
[    3.451942] usbcore: registered new interface driver cdc_ether
[    3.472592] usbcore: registered new interface driver smsc95xx
[    3.493014] usbcore: registered new interface driver net1080
[    3.513351] usbcore: registered new interface driver cdc_subset
[    3.533584] usbcore: registered new interface driver zaurus
[    3.553552] usbcore: registered new interface driver cdc_ncm
[    3.573691] usbcore: registered new interface driver usb-storage
[    3.593607] i2c /dev entries driver
[    3.614991] bcm2835-wdt bcm2835-wdt: Broadcom BCM2835 watchdog timer
[    3.635260] sdhci: Secure Digital Host Controller Interface driver
[    3.654465] sdhci: Copyright(c) Pierre Ossman
[    3.775001] random: fast init done
[    3.793811] sdhost-bcm2835 20202000.mmc: loaded - DMA enabled (>1)
[    3.812785] sdhci-pltfm: SDHCI platform and OF driver helper
[    3.832521] ledtrig-cpu: registered to indicate activity on CPUs
[    3.851668] usbcore: registered new interface driver usbhid
[    3.869686] usbhid: USB HID core driver
[    3.887640] bcm2835-mbox 2000b880.mailbox: mailbox enabled
[    3.909448] oprofile: using arm/armv6
[    3.933374] NET: Registered protocol family 10
[    3.953443] Segment Routing with IPv6
[    3.971761] sit: IPv6, IPv4 and MPLS over IPv4 tunneling driver
[    3.990990] NET: Registered protocol family 17
[    4.009522] Loading compiled-in X.509 certificates
[    4.028175] 20201000.serial: ttyAMA0 at MMIO 0x20201000 (irq = 81, base_baud = 0) is a PL011 rev2
[    4.051311] raspberrypi-firmware soc:firmware: Attached to firmware from 2019-09-24 17:37
[    4.068579] mmc0: host does not support reading read-only switch, assuming write-enable
[    4.087075] raspberrypi-clk raspberrypi-clk: CPU frequency range: min 700000000, max 700000000
[    4.104587] mmc0: new high speed SDHC card at address aaaa
[    4.122542] ------------[ cut here ]------------
[    4.139528] WARNING: CPU: 0 PID: 64 at drivers/cpufreq/cpufreq-dt.c:69 find_supply_name+0x38/0x94
[    4.156337] Modules linked in:
[    4.172917] CPU: 0 PID: 64 Comm: kworker/0:2 Tainted: G        W         5.5.0-rc7 #1
[    4.189626] Hardware name: BCM2835
[    4.206094] Workqueue: events deferred_probe_work_func
[    4.222478] Backtrace: 
[    4.238815] [<c010c50c>] (dump_backtrace) from [<c010c884>] (show_stack+0x20/0x24)
[    4.255186]  r7:00000009 r6:00000000 r5:c0a2f281 r4:00000000
[    4.271422] [<c010c864>] (show_stack) from [<c07d0a10>] (dump_stack+0x20/0x28)
[    4.287687] [<c07d09f0>] (dump_stack) from [<c011ded8>] (__warn+0xec/0x104)
[    4.303673] [<c011ddec>] (__warn) from [<c011e294>] (warn_slowpath_fmt+0x84/0xa8)
[    4.319726]  r9:c056e0d0 r8:c0a2f281 r7:c0c04248 r6:00000009 r5:00000045 r4:00000000
[    4.335578] [<c011e214>] (warn_slowpath_fmt) from [<c056e0d0>] (find_supply_name+0x38/0x94)
[    4.351434]  r9:00000002 r8:c0c59b74 r7:00000000 r6:c0c085e8 r5:d5538e00 r4:00000000
[    4.367265] [<c056e098>] (find_supply_name) from [<c056e1b4>] (dt_cpufreq_probe+0x88/0xf8)
[    4.383099]  r5:d5538e00 r4:00000000
[    4.398962] [<c056e12c>] (dt_cpufreq_probe) from [<c0492024>] (platform_drv_probe+0x58/0xa4)
[    4.414944]  r7:00000000 r6:c0c59b74 r5:00000000 r4:d5538e10
[    4.430802] [<c0491fcc>] (platform_drv_probe) from [<c04900f4>] (really_probe+0x200/0x31c)
[    4.446791]  r7:00000000 r6:00000000 r5:c0d27f18 r4:d5538e10
[    4.462823] [<c048fef4>] (really_probe) from [<c04904e8>] (driver_probe_device+0x150/0x168)
[    4.479391]  r10:c0c4b454 r9:c0c4b598 r8:00000001 r7:00000000 r6:d5538e10 r5:c0c59b74
[    4.495890]  r4:d5538e10 r3:00000000
[    4.512336] [<c0490398>] (driver_probe_device) from [<c0490658>] (__device_attach_driver+0x98/0xa8)
[    4.529187]  r9:c0c4b598 r8:00000001 r7:00000000 r6:d5538e10 r5:d552d7bc r4:c0c59b74
[    4.546035] [<c04905c0>] (__device_attach_driver) from [<c048e3d8>] (bus_for_each_drv+0xb0/0xc4)
[    4.563000]  r7:00000000 r6:c04905c0 r5:d552d7bc r4:c0c04248
[    4.580136] [<c048e328>] (bus_for_each_drv) from [<c04902d0>] (__device_attach+0xc0/0x138)
[    4.597520]  r7:d5538e54 r6:c0c04248 r5:c0c4b730 r4:d5538e10
[    4.615054] [<c0490210>] (__device_attach) from [<c0490684>] (device_initial_probe+0x1c/0x20)
[    4.633008]  r8:c0c04248 r7:c0c4b3f4 r6:d5538e10 r5:c0c4b730 r4:d5538e10
[    4.651143] [<c0490668>] (device_initial_probe) from [<c048f224>] (bus_probe_device+0x38/0x90)
[    4.669694] [<c048f1ec>] (bus_probe_device) from [<c048cc78>] (device_add+0x524/0x6a4)
[    4.688456]  r7:c0c4b3f4 r6:c0c4b388 r5:00000000 r4:d5538e10
[    4.707403] [<c048c754>] (device_add) from [<c0491df0>] (platform_device_add+0x80/0x1bc)
[    4.726733]  r10:55e63b89 r9:c0c0ac58 r8:c0c0ac38 r7:c0c085e8 r6:00000000 r5:00000000
[    4.746273]  r4:d5538e00
[    4.765812] [<c0491d70>] (platform_device_add) from [<c049272c>] (platform_device_register_full+0x100/0x148)
[    4.785891]  r9:05f5e100 r8:2faf0800 r7:c0c085e8 r6:00000000 r5:d552d8b8 r4:d5538e00
[    4.806085] [<c049262c>] (platform_device_register_full) from [<c056e654>] (raspberrypi_cpufreq_probe+0x104/0x188)
[    4.826570]  r7:c0c085e8 r6:c0c04248 r5:29b92700 r4:00000000
[    4.847048] [<c056e550>] (raspberrypi_cpufreq_probe) from [<c0492024>] (platform_drv_probe+0x58/0xa4)
[    4.867901]  r10:fffffdfb r9:00000002 r8:c0c59c64 r7:00000000 r6:c0c59c64 r5:00000000
[    4.888808]  r4:d5538c10
[    4.909582] [<c0491fcc>] (platform_drv_probe) from [<c04900f4>] (really_probe+0x200/0x31c)
[    4.930745]  r7:00000000 r6:00000000 r5:c0d27f18 r4:d5538c10
[    4.951852] [<c048fef4>] (really_probe) from [<c04904e8>] (driver_probe_device+0x150/0x168)
[    4.973236]  r10:c0c4b454 r9:d5538a10 r8:00000001 r7:00000000 r6:d5538c10 r5:c0c59c64
[    4.994717]  r4:d5538c10 r3:00000000
[    5.016156] [<c0490398>] (driver_probe_device) from [<c0490658>] (__device_attach_driver+0x98/0xa8)
[    5.038082]  r9:d5538a10 r8:00000001 r7:00000000 r6:d5538c10 r5:d552d9fc r4:c0c59c64
[    5.060129] [<c04905c0>] (__device_attach_driver) from [<c048e3d8>] (bus_for_each_drv+0xb0/0xc4)
[    5.082171]  r7:00000000 r6:c04905c0 r5:d552d9fc r4:c0c04248
[    5.104428] [<c048e328>] (bus_for_each_drv) from [<c04902d0>] (__device_attach+0xc0/0x138)
[    5.126980]  r7:d5538c54 r6:c0c04248 r5:c0c4b730 r4:d5538c10
[    5.149323] [<c0490210>] (__device_attach) from [<c0490684>] (device_initial_probe+0x1c/0x20)
[    5.171824]  r8:c0c04248 r7:c0c4b3f4 r6:d5538c10 r5:c0c4b730 r4:d5538c10
[    5.194232] [<c0490668>] (device_initial_probe) from [<c048f224>] (bus_probe_device+0x38/0x90)
[    5.216752] [<c048f1ec>] (bus_probe_device) from [<c048cc78>] (device_add+0x524/0x6a4)
[    5.239196]  r7:c0c4b3f4 r6:c0c4b388 r5:00000000 r4:d5538c10
[    5.261539] [<c048c754>] (device_add) from [<c0491df0>] (platform_device_add+0x80/0x1bc)
[    5.283995]  r10:00000001 r9:c0c0ac58 r8:c0c0ac38 r7:c0c04248 r6:00000000 r5:00000000
[    5.306472]  r4:d5538c00
[    5.328753] [<c0491d70>] (platform_device_add) from [<c049272c>] (platform_device_register_full+0x100/0x148)
[    5.351546]  r9:c0a06359 r8:d552db08 r7:c0c04248 r6:00000000 r5:d552db08 r4:d5538c00
[    5.374437] [<c049262c>] (platform_device_register_full) from [<c04045c4>] (raspberrypi_clk_probe+0x228/0x2b4)
[    5.397701]  r7:c0c04248 r6:d5538a10 r5:00000000 r4:d55392c0
[    5.420866] [<c040439c>] (raspberrypi_clk_probe) from [<c0492024>] (platform_drv_probe+0x58/0xa4)
[    5.444102]  r10:fffffdfb r9:00000002 r8:c0c45a74 r7:00000000 r6:c0c45a74 r5:00000000
[    5.467484]  r4:d5538a10
[    5.490771] [<c0491fcc>] (platform_drv_probe) from [<c04900f4>] (really_probe+0x200/0x31c)
[    5.514424]  r7:00000000 r6:00000000 r5:c0d27f18 r4:d5538a10
[    5.537958] [<c048fef4>] (really_probe) from [<c04904e8>] (driver_probe_device+0x150/0x168)
[    5.561497]  r10:c0c4b454 r9:d754e810 r8:00000001 r7:00000000 r6:d5538a10 r5:c0c45a74
[    5.585039]  r4:d5538a10 r3:00000000
[    5.608421] [<c0490398>] (driver_probe_device) from [<c0490658>] (__device_attach_driver+0x98/0xa8)
[    5.632134]  r9:d754e810 r8:00000001 r7:00000000 r6:d5538a10 r5:d552dc4c r4:c0c45a74
[    5.655817] [<c04905c0>] (__device_attach_driver) from [<c048e3d8>] (bus_for_each_drv+0xb0/0xc4)
[    5.679591]  r7:00000000 r6:c04905c0 r5:d552dc4c r4:c0c04248
[    5.703038] [<c048e328>] (bus_for_each_drv) from [<c04902d0>] (__device_attach+0xc0/0x138)
[    5.726797]  r7:d5538a54 r6:c0c04248 r5:c0c4b730 r4:d5538a10
[    5.750398] [<c0490210>] (__device_attach) from [<c0490684>] (device_initial_probe+0x1c/0x20)
[    5.774182]  r8:c0c04248 r7:c0c4b3f4 r6:d5538a10 r5:c0c4b730 r4:d5538a10
[    5.797890] [<c0490668>] (device_initial_probe) from [<c048f224>] (bus_probe_device+0x38/0x90)
[    5.821581] [<c048f1ec>] (bus_probe_device) from [<c048cc78>] (device_add+0x524/0x6a4)
[    5.845223]  r7:c0c4b3f4 r6:c0c4b388 r5:00000000 r4:d5538a10
[    5.868775] [<c048c754>] (device_add) from [<c0491df0>] (platform_device_add+0x80/0x1bc)
[    5.892402]  r10:fffffdfb r9:c0c0ac58 r8:c0c0ac38 r7:00000001 r6:00000000 r5:00000000
[    5.915994]  r4:d5538a00
[    5.939336] [<c0491d70>] (platform_device_add) from [<c049272c>] (platform_device_register_full+0x100/0x148)
[    5.962897]  r9:00000002 r8:d754e800 r7:00000001 r6:00000000 r5:d552dd60 r4:d5538a00
[    5.986578] [<c049262c>] (platform_device_register_full) from [<c058e440>] (rpi_firmware_probe+0x1a0/0x1dc)
[    6.010418]  r7:00000001 r6:c0c04248 r5:d754e810 r4:c0d28f80
[    6.034180] [<c058e2a0>] (rpi_firmware_probe) from [<c0492024>] (platform_drv_probe+0x58/0xa4)
[    6.058099]  r8:c0c5aed8 r7:00000000 r6:c0c5aed8 r5:00000000 r4:d754e810
[    6.081783] [<c0491fcc>] (platform_drv_probe) from [<c04900f4>] (really_probe+0x200/0x31c)
[    6.105666]  r7:00000000 r6:00000000 r5:c0d27f18 r4:d754e810
[    6.129569] [<c048fef4>] (really_probe) from [<c04904e8>] (driver_probe_device+0x150/0x168)
[    6.153509]  r10:c0c4b4fc r9:00000000 r8:00000001 r7:00000000 r6:d754e810 r5:c0c5aed8
[    6.177310]  r4:d754e810 r3:00000000
[    6.200724] [<c0490398>] (driver_probe_device) from [<c0490658>] (__device_attach_driver+0x98/0xa8)
[    6.224249]  r9:00000000 r8:00000001 r7:00000000 r6:d754e810 r5:d552de9c r4:c0c5aed8
[    6.247830] [<c04905c0>] (__device_attach_driver) from [<c048e3d8>] (bus_for_each_drv+0xb0/0xc4)
[    6.271431]  r7:00000000 r6:c04905c0 r5:d552de9c r4:c0c04248
[    6.294944] [<c048e328>] (bus_for_each_drv) from [<c04902d0>] (__device_attach+0xc0/0x138)
[    6.318610]  r7:d754e854 r6:c0c04248 r5:c0c4b730 r4:d754e810
[    6.341973] [<c0490210>] (__device_attach) from [<c0490684>] (device_initial_probe+0x1c/0x20)
[    6.365626]  r8:00000000 r7:dbc3b300 r6:d754e810 r5:c0c4b730 r4:d754e810
[    6.389206] [<c0490668>] (device_initial_probe) from [<c048f224>] (bus_probe_device+0x38/0x90)
[    6.412960] [<c048f1ec>] (bus_probe_device) from [<c048f958>] (deferred_probe_work_func+0x78/0x94)
[    6.436650]  r7:dbc3b300 r6:c0c4b52c r5:c0c4b4f4 r4:d754e810
[    6.460172] [<c048f8e0>] (deferred_probe_work_func) from [<c0134fa0>] (process_one_work+0x188/0x27c)
[    6.483714]  r7:dbc3b300 r6:c0c0c5e8 r5:c0c4b4f8 r4:d5510380
[    6.507262] [<c0134e18>] (process_one_work) from [<c01355c4>] (worker_thread+0x228/0x2e4)
[    6.530952]  r10:d550ec58 r9:c0c0c5fc r8:c0c0c314 r7:c0c13760 r6:c0c0c5e8 r5:d5510394
[    6.554593]  r4:d5510380
[    6.577941] [<c013539c>] (worker_thread) from [<c013ac9c>] (kthread+0x11c/0x128)
[    6.601362]  r9:d74e3e98 r8:c013539c r7:d5510380 r6:d552c000 r5:d550e980 r4:d550ec40
[    6.624774] [<c013ab80>] (kthread) from [<c01010e8>] (ret_from_fork+0x14/0x2c)
[    6.648222] Exception stack(0xd552dfb0 to 0xd552dff8)
[    6.671531] dfa0:                                     00000000 00000000 00000000 00000000
[    6.695001] dfc0: 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    6.718315] dfe0: 00000000 00000000 00000000 00000000 00000013 00000000
[    6.741277]  r10:00000000 r9:00000000 r8:00000000 r7:00000000 r6:00000000 r5:c013ab80
[    6.764050]  r4:d550e980 r3:00000001
[    6.786586] ---[ end trace d472f137fa25805f ]---
[    6.810356] mmcblk0: mmc0:aaaa SL32G 29.7 GiB 
[    6.832890] ------------[ cut here ]------------
[    6.854893] WARNING: CPU: 0 PID: 64 at drivers/cpufreq/cpufreq-dt.c:69 find_supply_name+0x38/0x94
[    6.877009] Modules linked in:
[    6.898894] CPU: 0 PID: 64 Comm: kworker/0:2 Tainted: G        W         5.5.0-rc7 #1
[    6.920874] Hardware name: BCM2835
[    6.942456] Workqueue: events deferred_probe_work_func
[    6.964140] Backtrace: 
[    6.985509] [<c010c50c>] (dump_backtrace) from [<c010c884>] (show_stack+0x20/0x24)
[    7.007131]  r7:00000009 r6:00000000 r5:c0a2f281 r4:00000000
[    7.028643] [<c010c864>] (show_stack) from [<c07d0a10>] (dump_stack+0x20/0x28)
[    7.050150] [<c07d09f0>] (dump_stack) from [<c011ded8>] (__warn+0xec/0x104)
[    7.071406] [<c011ddec>] (__warn) from [<c011e294>] (warn_slowpath_fmt+0x84/0xa8)
[    7.092584]  r9:c056e0d0 r8:c0a2f281 r7:c0c04248 r6:00000009 r5:00000045 r4:00000000
[    7.113790] [<c011e214>] (warn_slowpath_fmt) from [<c056e0d0>] (find_supply_name+0x38/0x94)
[    7.135005]  r9:d553c740 r8:c0c085e8 r7:00000001 r6:c0c085e8 r5:00000001 r4:00000000
[    7.156154] [<c056e098>] (find_supply_name) from [<c056e2f4>] (cpufreq_init+0xd0/0x2d0)
[    7.177287]  r5:00000001 r4:d553f800
[    7.198169] [<c056e224>] (cpufreq_init) from [<c056ae90>] (cpufreq_online+0x158/0x6b4)
[    7.219278]  r10:d553f950 r9:00000000 r8:c0c085e8 r7:00000001 r6:c0d28f34 r5:00000000
[    7.240366]  r4:d553f800
[    7.261061] [<c056ad38>] (cpufreq_online) from [<c056b454>] (cpufreq_add_dev+0x48/0x58)
[    7.281992]  r10:fffffdfb r9:00000002 r8:c0c59b74 r7:00000000 r6:c0c4b7c4 r5:c0c04248
[    7.303025]  r4:00000000
[    7.323806] [<c056b40c>] (cpufreq_add_dev) from [<c048e6f0>] (subsys_interface_register+0xe4/0xfc)
[    7.344812]  r5:c0c04248 r4:c0c596bc
[    7.365518] [<c048e60c>] (subsys_interface_register) from [<c0569640>] (cpufreq_register_driver+0x13c/0x1f0)
[    7.386524]  r6:c0c59638 r5:c0d28f34 r4:c0c59bc8
[    7.407329] [<c0569504>] (cpufreq_register_driver) from [<c056e1f8>] (dt_cpufreq_probe+0xcc/0xf8)
[    7.428356]  r6:c0c085e8 r5:d5538e00 r4:00000000
[    7.449223] [<c056e12c>] (dt_cpufreq_probe) from [<c0492024>] (platform_drv_probe+0x58/0xa4)
[    7.470275]  r7:00000000 r6:c0c59b74 r5:00000000 r4:d5538e10
[    7.491162] [<c0491fcc>] (platform_drv_probe) from [<c04900f4>] (really_probe+0x200/0x31c)
[    7.512176]  r7:00000000 r6:00000000 r5:c0d27f18 r4:d5538e10
[    7.533170] [<c048fef4>] (really_probe) from [<c04904e8>] (driver_probe_device+0x150/0x168)
[    7.554214]  r10:c0c4b454 r9:c0c4b598 r8:00000001 r7:00000000 r6:d5538e10 r5:c0c59b74
[    7.575188]  r4:d5538e10 r3:00000000
[    7.595931] [<c0490398>] (driver_probe_device) from [<c0490658>] (__device_attach_driver+0x98/0xa8)
[    7.616945]  r9:c0c4b598 r8:00000001 r7:00000000 r6:d5538e10 r5:d552d7bc r4:c0c59b74
[    7.637954] [<c04905c0>] (__device_attach_driver) from [<c048e3d8>] (bus_for_each_drv+0xb0/0xc4)
[    7.659007]  r7:00000000 r6:c04905c0 r5:d552d7bc r4:c0c04248
[    7.679904] [<c048e328>] (bus_for_each_drv) from [<c04902d0>] (__device_attach+0xc0/0x138)
[    7.700883]  r7:d5538e54 r6:c0c04248 r5:c0c4b730 r4:d5538e10
[    7.721683] [<c0490210>] (__device_attach) from [<c0490684>] (device_initial_probe+0x1c/0x20)
[    7.742656]  r8:c0c04248 r7:c0c4b3f4 r6:d5538e10 r5:c0c4b730 r4:d5538e10
[    7.763570] [<c0490668>] (device_initial_probe) from [<c048f224>] (bus_probe_device+0x38/0x90)
[    7.784583] [<c048f1ec>] (bus_probe_device) from [<c048cc78>] (device_add+0x524/0x6a4)
[    7.805484]  r7:c0c4b3f4 r6:c0c4b388 r5:00000000 r4:d5538e10
[    7.826308] [<c048c754>] (device_add) from [<c0491df0>] (platform_device_add+0x80/0x1bc)
[    7.847233]  r10:55e63b89 r9:c0c0ac58 r8:c0c0ac38 r7:c0c085e8 r6:00000000 r5:00000000
[    7.868104]  r4:d5538e00
[    7.888727] [<c0491d70>] (platform_device_add) from [<c049272c>] (platform_device_register_full+0x100/0x148)
[    7.909826]  r9:05f5e100 r8:2faf0800 r7:c0c085e8 r6:00000000 r5:d552d8b8 r4:d5538e00
[    7.930956] [<c049262c>] (platform_device_register_full) from [<c056e654>] (raspberrypi_cpufreq_probe+0x104/0x188)
[    7.952334]  r7:c0c085e8 r6:c0c04248 r5:29b92700 r4:00000000
[    7.973580] [<c056e550>] (raspberrypi_cpufreq_probe) from [<c0492024>] (platform_drv_probe+0x58/0xa4)
[    7.995238]  r10:fffffdfb r9:00000002 r8:c0c59c64 r7:00000000 r6:c0c59c64 r5:00000000
[    8.017103]  r4:d5538c10
[    8.038846] [<c0491fcc>] (platform_drv_probe) from [<c04900f4>] (really_probe+0x200/0x31c)
[    8.060847]  r7:00000000 r6:00000000 r5:c0d27f18 r4:d5538c10
[    8.082787] [<c048fef4>] (really_probe) from [<c04904e8>] (driver_probe_device+0x150/0x168)
[    8.105170]  r10:c0c4b454 r9:d5538a10 r8:00000001 r7:00000000 r6:d5538c10 r5:c0c59c64
[    8.127749]  r4:d5538c10 r3:00000000
[    8.150033] [<c0490398>] (driver_probe_device) from [<c0490658>] (__device_attach_driver+0x98/0xa8)
[    8.172592]  r9:d5538a10 r8:00000001 r7:00000000 r6:d5538c10 r5:d552d9fc r4:c0c59c64
[    8.195214] [<c04905c0>] (__device_attach_driver) from [<c048e3d8>] (bus_for_each_drv+0xb0/0xc4)
[    8.218011]  r7:00000000 r6:c04905c0 r5:d552d9fc r4:c0c04248
[    8.240824] [<c048e328>] (bus_for_each_drv) from [<c04902d0>] (__device_attach+0xc0/0x138)
[    8.263767]  r7:d5538c54 r6:c0c04248 r5:c0c4b730 r4:d5538c10
[    8.286769] [<c0490210>] (__device_attach) from [<c0490684>] (device_initial_probe+0x1c/0x20)
[    8.309920]  r8:c0c04248 r7:c0c4b3f4 r6:d5538c10 r5:c0c4b730 r4:d5538c10
[    8.333123] [<c0490668>] (device_initial_probe) from [<c048f224>] (bus_probe_device+0x38/0x90)
[    8.356533] [<c048f1ec>] (bus_probe_device) from [<c048cc78>] (device_add+0x524/0x6a4)
[    8.379935]  r7:c0c4b3f4 r6:c0c4b388 r5:00000000 r4:d5538c10
[    8.403055] [<c048c754>] (device_add) from [<c0491df0>] (platform_device_add+0x80/0x1bc)
[    8.426480]  r10:00000001 r9:c0c0ac58 r8:c0c0ac38 r7:c0c04248 r6:00000000 r5:00000000
[    8.449841]  r4:d5538c00
[    8.472956] [<c0491d70>] (platform_device_add) from [<c049272c>] (platform_device_register_full+0x100/0x148)
[    8.496512]  r9:c0a06359 r8:d552db08 r7:c0c04248 r6:00000000 r5:d552db08 r4:d5538c00
[    8.520056] [<c049262c>] (platform_device_register_full) from [<c04045c4>] (raspberrypi_clk_probe+0x228/0x2b4)
[    8.543644]  r7:c0c04248 r6:d5538a10 r5:00000000 r4:d55392c0
[    8.567332] [<c040439c>] (raspberrypi_clk_probe) from [<c0492024>] (platform_drv_probe+0x58/0xa4)
[    8.591185]  r10:fffffdfb r9:00000002 r8:c0c45a74 r7:00000000 r6:c0c45a74 r5:00000000
[    8.615024]  r4:d5538a10
[    8.638647] [<c0491fcc>] (platform_drv_probe) from [<c04900f4>] (really_probe+0x200/0x31c)
[    8.662306]  r7:00000000 r6:00000000 r5:c0d27f18 r4:d5538a10
[    8.685982] [<c048fef4>] (really_probe) from [<c04904e8>] (driver_probe_device+0x150/0x168)
[    8.709746]  r10:c0c4b454 r9:d754e810 r8:00000001 r7:00000000 r6:d5538a10 r5:c0c45a74
[    8.733412]  r4:d5538a10 r3:00000000
[    8.756799] [<c0490398>] (driver_probe_device) from [<c0490658>] (__device_attach_driver+0x98/0xa8)
[    8.780480]  r9:d754e810 r8:00000001 r7:00000000 r6:d5538a10 r5:d552dc4c r4:c0c45a74
[    8.803972] [<c04905c0>] (__device_attach_driver) from [<c048e3d8>] (bus_for_each_drv+0xb0/0xc4)
[    8.827703]  r7:00000000 r6:c04905c0 r5:d552dc4c r4:c0c04248
[    8.851300] [<c048e328>] (bus_for_each_drv) from [<c04902d0>] (__device_attach+0xc0/0x138)
[    8.875013]  r7:d5538a54 r6:c0c04248 r5:c0c4b730 r4:d5538a10
[    8.898594] [<c0490210>] (__device_attach) from [<c0490684>] (device_initial_probe+0x1c/0x20)
[    8.922157]  r8:c0c04248 r7:c0c4b3f4 r6:d5538a10 r5:c0c4b730 r4:d5538a10
[    8.945864] [<c0490668>] (device_initial_probe) from [<c048f224>] (bus_probe_device+0x38/0x90)
[    8.969611] [<c048f1ec>] (bus_probe_device) from [<c048cc78>] (device_add+0x524/0x6a4)
[    8.993244]  r7:c0c4b3f4 r6:c0c4b388 r5:00000000 r4:d5538a10
[    9.016755] [<c048c754>] (device_add) from [<c0491df0>] (platform_device_add+0x80/0x1bc)
[    9.040405]  r10:fffffdfb r9:c0c0ac58 r8:c0c0ac38 r7:00000001 r6:00000000 r5:00000000
[    9.063787]  r4:d5538a00
[    9.087095] [<c0491d70>] (platform_device_add) from [<c049272c>] (platform_device_register_full+0x100/0x148)
[    9.110831]  r9:00000002 r8:d754e800 r7:00000001 r6:00000000 r5:d552dd60 r4:d5538a00
[    9.134544] [<c049262c>] (platform_device_register_full) from [<c058e440>] (rpi_firmware_probe+0x1a0/0x1dc)
[    9.158387]  r7:00000001 r6:c0c04248 r5:d754e810 r4:c0d28f80
[    9.181924] [<c058e2a0>] (rpi_firmware_probe) from [<c0492024>] (platform_drv_probe+0x58/0xa4)
[    9.205780]  r8:c0c5aed8 r7:00000000 r6:c0c5aed8 r5:00000000 r4:d754e810
[    9.229641] [<c0491fcc>] (platform_drv_probe) from [<c04900f4>] (really_probe+0x200/0x31c)
[    9.253551]  r7:00000000 r6:00000000 r5:c0d27f18 r4:d754e810
[    9.277379] [<c048fef4>] (really_probe) from [<c04904e8>] (driver_probe_device+0x150/0x168)
[    9.301192]  r10:c0c4b4fc r9:00000000 r8:00000001 r7:00000000 r6:d754e810 r5:c0c5aed8
[    9.324879]  r4:d754e810 r3:00000000
[    9.348344] [<c0490398>] (driver_probe_device) from [<c0490658>] (__device_attach_driver+0x98/0xa8)
[    9.371988]  r9:00000000 r8:00000001 r7:00000000 r6:d754e810 r5:d552de9c r4:c0c5aed8
[    9.395536] [<c04905c0>] (__device_attach_driver) from [<c048e3d8>] (bus_for_each_drv+0xb0/0xc4)
[    9.419167]  r7:00000000 r6:c04905c0 r5:d552de9c r4:c0c04248
[    9.442494] [<c048e328>] (bus_for_each_drv) from [<c04902d0>] (__device_attach+0xc0/0x138)
[    9.466093]  r7:d754e854 r6:c0c04248 r5:c0c4b730 r4:d754e810
[    9.489597] [<c0490210>] (__device_attach) from [<c0490684>] (device_initial_probe+0x1c/0x20)
[    9.513211]  r8:00000000 r7:dbc3b300 r6:d754e810 r5:c0c4b730 r4:d754e810
[    9.536805] [<c0490668>] (device_initial_probe) from [<c048f224>] (bus_probe_device+0x38/0x90)
[    9.560537] [<c048f1ec>] (bus_probe_device) from [<c048f958>] (deferred_probe_work_func+0x78/0x94)
[    9.584046]  r7:dbc3b300 r6:c0c4b52c r5:c0c4b4f4 r4:d754e810
[    9.607553] [<c048f8e0>] (deferred_probe_work_func) from [<c0134fa0>] (process_one_work+0x188/0x27c)
[    9.631284]  r7:dbc3b300 r6:c0c0c5e8 r5:c0c4b4f8 r4:d5510380
[    9.654835] [<c0134e18>] (process_one_work) from [<c01355c4>] (worker_thread+0x228/0x2e4)
[    9.678495]  r10:d550ec58 r9:c0c0c5fc r8:c0c0c314 r7:c0c13760 r6:c0c0c5e8 r5:d5510394
[    9.701942]  r4:d5510380
[    9.725265] [<c013539c>] (worker_thread) from [<c013ac9c>] (kthread+0x11c/0x128)
[    9.748820]  r9:d74e3e98 r8:c013539c r7:d5510380 r6:d552c000 r5:d550e980 r4:d550ec40
[    9.772333] [<c013ab80>] (kthread) from [<c01010e8>] (ret_from_fork+0x14/0x2c)
[    9.795797] Exception stack(0xd552dfb0 to 0xd552dff8)
[    9.819163] dfa0:                                     00000000 00000000 00000000 00000000
[    9.842489] dfc0: 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    9.865802] dfe0: 00000000 00000000 00000000 00000000 00000013 00000000
[    9.888847]  r10:00000000 r9:00000000 r8:00000000 r7:00000000 r6:00000000 r5:c013ab80
[    9.911721]  r4:d550e980 r3:00000001
[    9.934296] ---[ end trace d472f137fa258060 ]---
[    9.960798] cfg80211: Loading compiled-in X.509 certificates for regulatory database
[    9.984706]  mmcblk0: p1 p2
[   10.095972] cfg80211: Loaded X.509 cert 'sforshee: 00b28ddf47aef9cea7'
[   10.118835] platform regulatory.0: Direct firmware load for regulatory.db failed with error -2
[   10.141401] ALSA device list:
[   10.163397] cfg80211: failed to load regulatory.db
[   10.185326]   No soundcards found.
[   10.214695] Freeing unused kernel memory: 1024K
[   10.236790] Run /init as init process
[   13.366551] EXT4-fs (mmcblk0p2): mounted filesystem with ordered data mode. Opts: (null)
[   17.577998] random: systemd: uninitialized urandom read (16 bytes read)
[   17.617913] random: systemd: uninitialized urandom read (16 bytes read)
[   17.683023] random: systemd: uninitialized urandom read (16 bytes read)
[   19.621764] EXT4-fs (mmcblk0p2): re-mounted. Opts: (null)

-- 
Valentin

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
