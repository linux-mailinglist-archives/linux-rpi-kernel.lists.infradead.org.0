Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE7AF1AB11C
	for <lists+linux-rpi-kernel@lfdr.de>; Wed, 15 Apr 2020 21:14:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zLzFp+1Uj/odK0zFqj+fdBuiyVbDERZa5RabnpvipVg=; b=SfTlsOf+5qpeJ5
	3Bjgv2AsGiMHVCbHGjxctkhsjdbqtk8DbH+s5WOytWjjCKdTDCPMSviwjJhHtVxwE52j3n/KanAze
	KDrst514efb0osN/DyzBvzrbZp7AdbeSM40TYAmKoHuRsERcsM0/xxX5484eb3Jj9gZhZ/nODdokN
	ogcbQk7qpCvpPdiBxL33MuKtaH8ghRTn0RJBtFjoaVX+bfalN6stHm7q+5r5zrcWW28wrGvvz9i9z
	wGZkOEb5g9QXjuD+oFgZ9n9KwRa5tG5GrtwVAInTAby/TRySKMmEhogAjyRWYQhTfQdrRX6lNXvim
	XZ3ZESex8avr5CmEjE0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOnTy-0005aF-3o; Wed, 15 Apr 2020 19:13:58 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOnTt-0005ZD-T6
 for linux-rpi-kernel@lists.infradead.org; Wed, 15 Apr 2020 19:13:56 +0000
Received: from [192.168.1.183] ([37.4.249.171]) by mrelayeu.kundenserver.de
 (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1N6LIF-1jDbHU1AWP-016gXx; Wed, 15 Apr 2020 21:13:37 +0200
Subject: Re: [staging] aad378845d: WARNING:held_lock_freed
To: kernel test robot <rong.a.chen@intel.com>
References: <20200406020449.GU8179@shao2-debian>
From: Stefan Wahren <stefan.wahren@i2se.com>
Openpgp: preference=signencrypt
Autocrypt: addr=stefan.wahren@i2se.com; keydata=
 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 AQ==
Message-ID: <59d1223f-e23c-e5f7-8477-b329a9469f60@i2se.com>
Date: Wed, 15 Apr 2020 21:13:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200406020449.GU8179@shao2-debian>
Content-Language: en-US
X-Provags-ID: V03:K1:FnrgywSUYJyG90SGFM2+vSeC1zSCxFogDXTvS4JIpqdwWs2nUEX
 8xSORjNbOakEZmQVghXSd4eQyASf7sx/dWpYvCbu4fiWMzuPDJNvu2ir2LYEncz2pMuWH6c
 UDTJId8ZNFBuoktgnlIvJ3zCcPK+W19i2IXzeyToFAs2ZNEiD5dXMNENwhoKpf6cYWnkT1M
 Fr9PxAjKUkPImyEjMyKew==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:uYJ4JmJN4AQ=:DcDw2t5Rqn+VYegB6xtJ6g
 6YZ8RzVez3goEULPMHblnpp3XohFWSt+WkKh5ZU5/RzEzWPsfQQpmK0JHM9/p6WMw32y7nghB
 QV8J2DlIGhiO5uqBodSoMlKFQs7M9MYmPDoIpu6AEk7vtOtBwoZMk9qs46zVMAkFI1Yc1hocZ
 rQwCPl5WmCOYT/uC/lt16Htag11oevXz5SFTwKv6Bf0AOScU8pTH8answKriQKhCQbheGIyHq
 jNu0wxM+nxkTie8cLSRNIIj8XAYLrahNFK0XepuFUCQsZRnC7mdDcwkk6lJ0tAnvu7C1nYK+P
 gvLqtaXPdWzrnGEzJLP4K7XZvCE7yXHwG/ANDq7xcEK1zZ5LI7NPtnQDa89MoXMX1xwtJH16s
 M9NDi/iU/WK4SoppFC4w3NsKHKJgKayJTbDs4rWH+NJN+9C2bXivRdZWXA+cWHtNaZIjIyhsE
 GbifyNiPoASMv91Ur6VEkihMV5q1SsfoonGVP9g7DpDrokwzg5GwHNDLSgaXuRsQutGt+7t0B
 48KPYKkXgB+5lrYy15mrNxfrHxs26CJc3rdyf4fQ/PQXpSiMsZyzNo+cSgAXJvUBe+HyvDZGR
 DjATSfoQ59Iv98w4V13KtD6P9oOi6p/npI+NVOiftqr69nNiZ1KtHiNt4+mY58T+04TbytaWH
 u1VPeEBcqOm/wCLvZNrXnvK93AFfWTosC5+JmhYXtsDaP3rOIk/tvge+gecAwZA/OxPruYw0W
 P+xiIQhUlBHVBBmtNht3/rnuYhGE+f1LLHuNcBwnQ1ZJTjJobpG/iuwO8r3bjKVmfbWObHroP
 5SFSFy+7jxTquNJsKwY0f7/LGs9xWOfRM3LUyut/HwisPMI6o3Lmv60GLDjWIFes0VP6AI+
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_121354_237931_11EB6591 
X-CRM114-Status: GOOD (  11.86  )
X-Spam-Score: -0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
 -0.8 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.10 listed in wl.mailspike.net]
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 lkp@lists.01.org, linux-rpi-kernel@lists.infradead.org,
 Dave Stevenson <dave.stevenson@raspberrypi.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

Hi,

Am 06.04.20 um 04:04 schrieb kernel test robot:
> FYI, we noticed the following commit (built with gcc-7):
>
> commit: aad378845d9334d223d0d56db8332ce071d90202 ("[PATCH 9/9] staging: bcm2835-camera: reduce indentation in ctrl_set_image_effect")
> url: https://github.com/0day-ci/linux/commits/Stefan-Wahren/staging-bcm2835-camera-Clean-up-driver/20200329-225704
>
>
> in testcase: boot
>
> on test machine: qemu-system-x86_64 -enable-kvm -cpu SandyBridge -smp 2 -m 8G
>
> caused below changes (please refer to attached dmesg/kmsg for entire log/backtrace):
>
>
> +--------------------------------------------------------------------------------------+------------+------------+
> |                                                                                      | 301f97157d | aad378845d |
> +--------------------------------------------------------------------------------------+------------+------------+
> | boot_successes                                                                       | 8          | 0          |
> | boot_failures                                                                        | 9          | 16         |
> | WARNING:at_kernel/rcu/rcutorture.c:#rcu_torture_fwd_prog                             | 4          | 3          |
> | EIP:rcu_torture_fwd_prog                                                             | 4          | 3          |
> | Kernel_panic-not_syncing:Attempted_to_kill_init!exitcode=                            | 6          |            |
> | Assertion_failed                                                                     | 2          |            |
> | WARNING:held_lock_freed                                                              | 0          | 15         |
> | is_freeing_memory#-#,with_a_lock_still_held_there                                    | 0          | 15         |
> | WARNING:at_drivers/base/devres.c:#devres_release_all                                 | 0          | 15         |
> | EIP:devres_release_all                                                               | 0          | 15         |
> | BUG:kernel_NULL_pointer_dereference,address                                          | 0          | 15         |
> | Oops:#[##]                                                                           | 0          | 15         |
> | EIP:add_dr                                                                           | 0          | 15         |
> | Kernel_panic-not_syncing:Fatal_exception                                             | 0          | 15         |
> | BUG:kernel_hang_in_early-boot_stage,last_printk:Probing_EDD(edd=off_to_disable)...ok | 0          | 1          |
> +--------------------------------------------------------------------------------------+------------+------------+
>
>
> If you fix the issue, kindly add following tag
> Reported-by: kernel test robot <rong.a.chen@intel.com>
>
>
> [  296.433348] ### dt-test ### EXPECT \ : OF: overlay: WARNING: memory leak will occur if overlay removed, property: /testcase-data/overlay-node/test-bus/test-unittest0/status
> [  296.434682] OF: overlay: WARNING: memory leak will occur if overlay removed, property: /testcase-data/overlay-node/test-bus/test-unittest0/status
> [  296.438645] ### dt-test ### EXPECT / : OF: overlay: WARNING: memory leak will occur if overlay removed, property: /testcase-data/overlay-node/test-bus/test-unittest0/status
> [  296.438647] ### dt-test ### EXPECT \ : OF: overlay: WARNING: memory leak will occur if overlay removed, property: /testcase-data/overlay-node/test-bus/test-unittest1/status
> [  296.439964] OF: overlay: WARNING: memory leak will occur if overlay removed, property: /testcase-data/overlay-node/test-bus/test-unittest1/status
> [  296.442125] ### dt-test ### EXPECT / : OF: overlay: WARNING: memory leak will occur if overlay removed, property: /testcase-data/overlay-node/test-bus/test-unittest1/status
> [  296.442125] ### dt-test ### EXPECT \ : OF: overlay: WARNING: memory leak will occur if overlay removed, property: /testcase-data/overlay-node/test-bus/test-unittest2/status
> [  296.443264] OF: overlay: WARNING: memory leak will occur if overlay removed, property: /testcase-data/overlay-node/test-bus/test-unittest2/status
> [  296.464571] ### dt-test ### EXPECT / : OF: overlay: WARNING: memory leak will occur if overlay removed, property: /testcase-data/overlay-node/test-bus/test-unittest2/status
> [  296.464572] ### dt-test ### EXPECT \ : OF: overlay: WARNING: memory leak will occur if overlay removed, property: /testcase-data/overlay-node/test-bus/test-unittest3/status
> [  296.466503] OF: overlay: WARNING: memory leak will occur if overlay removed, property: /testcase-data/overlay-node/test-bus/test-unittest3/status
> [  296.469963] ### dt-test ### EXPECT / : OF: overlay: WARNING: memory leak will occur if overlay removed, property: /testcase-data/overlay-node/test-bus/test-unittest3/status
> [  296.470955] ### dt-test ### EXPECT \ : OF: overlay: WARNING: memory leak will occur if overlay removed, property: /testcase-data/overlay-node/test-bus/test-unittest5/status
> [  296.472792] OF: overlay: WARNING: memory leak will occur if overlay removed, property: /testcase-data/overlay-node/test-bus/test-unittest5/status
> [  296.478533] ### dt-test ### EXPECT / : OF: overlay: WARNING: memory leak will occur if overlay removed, property: /testcase-data/overlay-node/test-bus/test-unittest5/status
> [  296.478562] ### dt-test ### EXPECT \ : OF: overlay: WARNING: memory leak will occur if overlay removed, property: /testcase-data/overlay-node/test-bus/test-unittest6/status
> [  296.480358] OF: overlay: WARNING: memory leak will occur if overlay removed, property: /testcase-data/overlay-node/test-bus/test-unittest6/status
> [  296.484480] ### dt-test ### EXPECT / : OF: overlay: WARNING: memory leak will occur if overlay removed, property: /testcase-data/overlay-node/test-bus/test-unittest6/status
> [  296.484482] ### dt-test ### EXPECT \ : OF: overlay: WARNING: memory leak will occur if overlay removed, property: /testcase-data/overlay-node/test-bus/test-unittest7/status
> [  296.487813] OF: overlay: WARNING: memory leak will occur if overlay removed, property: /testcase-data/overlay-node/test-bus/test-unittest7/status
> [  296.491912] ### dt-test ### EXPECT / : OF: overlay: WARNING: memory leak will occur if overlay removed, property: /testcase-data/overlay-node/test-bus/test-unittest7/status
> [  296.492304] ### dt-test ### EXPECT \ : OF: overlay: WARNING: memory leak will occur if overlay removed, property: /testcase-data/overlay-node/test-bus/test-unittest8/status
> [  296.494318] OF: overlay: WARNING: memory leak will occur if overlay removed, property: /testcase-data/overlay-node/test-bus/test-unittest8/status
> [  296.498335] ### dt-test ### EXPECT / : OF: overlay: WARNING: memory leak will occur if overlay removed, property: /testcase-data/overlay-node/test-bus/test-unittest8/status
> [  296.498337] ### dt-test ### EXPECT \ : OF: overlay: WARNING: memory leak will occur if overlay removed, property: /testcase-data/overlay-node/test-bus/test-unittest8/property-foo
> [  296.500123] OF: overlay: WARNING: memory leak will occur if overlay removed, property: /testcase-data/overlay-node/test-bus/test-unittest8/property-foo
> [  296.506899] ### dt-test ### EXPECT / : OF: overlay: WARNING: memory leak will occur if overlay removed, property: /testcase-data/overlay-node/test-bus/test-unittest8/property-foo
> [  296.506901] ### dt-test ### EXPECT \ : OF: overlay: node_overlaps_later_cs: #6 overlaps with #7 @/testcase-data/overlay-node/test-bus/test-unittest8
> [  296.508845] ### dt-test ### EXPECT \ : OF: overlay: overlay #6 is not topmost
> [  296.510454] OF: overlay: node_overlaps_later_cs: #6 overlaps with #7 @/testcase-data/overlay-node/test-bus/test-unittest8
> [  296.512496] OF: overlay: overlay #6 is not topmost
> [  296.513055] ### dt-test ### EXPECT / : OF: overlay: overlay #6 is not topmost
> [  296.513056] ### dt-test ### EXPECT / : OF: overlay: node_overlaps_later_cs: #6 overlaps with #7 @/testcase-data/overlay-node/test-bus/test-unittest8
> [  296.536328] ### dt-test ### EXPECT \ : i2c i2c-1: Added multiplexed i2c bus 2
> [  296.538415] i2c i2c-0: Added multiplexed i2c bus 1
> [  296.541270] i2c i2c-0: Added multiplexed i2c bus 1
> [  296.541696] ### dt-test ### EXPECT / : i2c i2c-1: Added multiplexed i2c bus 2
> [  296.541697] ### dt-test ### EXPECT \ : OF: overlay: WARNING: memory leak will occur if overlay removed, property: /testcase-data/overlay-node/test-bus/i2c-test-bus/test-unittest12/status
> [  296.542247] OF: overlay: WARNING: memory leak will occur if overlay removed, property: /testcase-data/overlay-node/test-bus/i2c-test-bus/test-unittest12/status
> [  296.559399] ### dt-test ### EXPECT / : OF: overlay: WARNING: memory leak will occur if overlay removed, property: /testcase-data/overlay-node/test-bus/i2c-test-bus/test-unittest12/status
> [  296.559402] ### dt-test ### EXPECT \ : OF: overlay: WARNING: memory leak will occur if overlay removed, property: /testcase-data/overlay-node/test-bus/i2c-test-bus/test-unittest13/status
> [  296.561292] OF: overlay: WARNING: memory leak will occur if overlay removed, property: /testcase-data/overlay-node/test-bus/i2c-test-bus/test-unittest13/status
> [  296.565238] ### dt-test ### EXPECT / : OF: overlay: WARNING: memory leak will occur if overlay removed, property: /testcase-data/overlay-node/test-bus/i2c-test-bus/test-unittest13/status
> [  296.565240] ### dt-test ### EXPECT \ : i2c i2c-1: Added multiplexed i2c bus 3
> [  296.575450] i2c i2c-0: Added multiplexed i2c bus 2
> [  296.578895] i2c i2c-0: Added multiplexed i2c bus 2
> [  296.579549] ### dt-test ### EXPECT / : i2c i2c-1: Added multiplexed i2c bus 3
> [  296.585532] ### dt-test ### EXPECT \ : GPIO line <<int>> (line-B-input) hogged as input
> [  296.588809] ### dt-test ### EXPECT \ : GPIO line <<int>> (line-A-input) hogged as input
> [  296.590068] GPIO line 509 (line-B-input) hogged as input
> [  296.594977] 
> [  296.595173] =========================
> [  296.595614] WARNING: held lock freed!
> [  296.596036] 5.6.0-rc7-next-20200327-00009-gaad378845d933 #11 Not tainted
> [  296.596808] -------------------------
> [  296.597242] swapper/1 is freeing memory e77ea400-e77ea7ff, with a lock still held there!
> [  296.598219] e77ea48c (&dev->mutex){....}-{3:3}, at: __device_driver_lock+0x27/0x30
> [  296.599788] 1 lock held by swapper/1:
> [  296.600200]  #0: e77ea48c (&dev->mutex){....}-{3:3}, at: __device_driver_lock+0x27/0x30
> [  296.601061] 
> [  296.601061] stack backtrace:
> [  296.601578] CPU: 0 PID: 1 Comm: swapper Not tainted 5.6.0-rc7-next-20200327-00009-gaad378845d933 #11
> [  296.602573] Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS 1.12.0-1 04/01/2014
> [  296.603472] Call Trace:
> [  296.604146]  dump_stack+0x16/0x26
> [  296.605163]  debug_check_no_locks_freed+0xde/0x110
> [  296.606049]  kfree+0x1e2/0x310
> [  296.606444]  unittest_gpio_remove+0x28/0x40
> [  296.606928]  platform_drv_remove+0x19/0x40
> [  296.607382]  really_probe+0x217/0x3a0
> [  296.607787]  driver_probe_device+0xe9/0x130
> [  296.608568]  ? mutex_lock_nested+0x15/0x20
> [  296.609045]  ? __device_driver_lock+0x27/0x30
> [  296.609528]  device_driver_attach+0x2f/0x60
> [  296.609992]  __driver_attach+0x99/0xa0
> [  296.610418]  ? device_driver_attach+0x60/0x60
> [  296.610903]  bus_for_each_dev+0x57/0x90
> [  296.611330]  driver_attach+0x14/0x20
> [  296.611726]  ? device_driver_attach+0x60/0x60
> [  296.612230]  bus_add_driver+0xc7/0x1c0
> [  296.612657]  driver_register+0x97/0xe0
> [  296.613092]  __platform_driver_register+0x2a/0x30
> [  296.614274]  of_unittest_overlay+0xcd8/0xffc
> [  296.614774]  of_unittest+0x1b48/0x2045
> [  296.615208]  ? of_unittest_dma_ranges_one+0x134/0x134
> [  296.619132]  do_one_initcall+0x9f/0x1f0
> [  296.619646]  ? parse_args+0x110/0x300
> [  296.620107]  ? kernel_init_freeable+0x11b/0x197
> [  296.620621]  kernel_init_freeable+0x133/0x197
> [  296.621109]  ? rest_init+0xf0/0xf0
> [  296.621495]  kernel_init+0x8/0x110
> [  296.621883]  ret_from_fork+0x2e/0x40
> [  296.622626] ------------[ cut here ]------------
> [  296.623194] WARNING: CPU: 0 PID: 1 at drivers/base/devres.c:526 devres_release_all+0xe/0x50
> [  296.624300] Modules linked in:
> [  296.624652] CPU: 0 PID: 1 Comm: swapper Not tainted 5.6.0-rc7-next-20200327-00009-gaad378845d933 #11
> [  296.625711] Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS 1.12.0-1 04/01/2014
> [  296.626640] EIP: devres_release_all+0xe/0x50
> [  296.627132] Code: c3 8d b4 26 00 00 00 00 8d 74 26 00 55 89 e5 5d c3 8d b4 26 00 00 00 00 8d 74 26 00 55 89 e5 53 8b 88 90 02 00 00 85 c9 75 12 <0f> 0b b8 ed ff ff ff eb 2b 8d b4 26 00 00 00 00 66 90 89 c3 8d 80
> [  296.629196] EAX: e77ea40c EBX: e77ea40c ECX: 00000000 EDX: 00000001
> [  296.629906] ESI: 00000000 EDI: c324e214 EBP: ed213db4 ESP: ed213db0
> [  296.630608] DS: 007b ES: 007b FS: 0000 GS: 0000 SS: 0068 EFLAGS: 00010246
> [  296.631378] CR0: 80050033 CR2: 00043000 CR3: 033e4000 CR4: 000406f0
> [  296.632078] DR0: 00000000 DR1: 00000000 DR2: 00000000 DR3: 00000000
> [  296.632775] DR6: fffe0ff0 DR7: 00000400
> [  296.633209] Call Trace:
> [  296.633495]  really_probe+0x21e/0x3a0
> [  296.633909]  driver_probe_device+0xe9/0x130
> [  296.634380]  ? mutex_lock_nested+0x15/0x20
> [  296.634841]  ? __device_driver_lock+0x27/0x30
> [  296.635339]  device_driver_attach+0x2f/0x60
> [  296.635810]  __driver_attach+0x99/0xa0
> [  296.636232]  ? device_driver_attach+0x60/0x60
> [  296.636726]  bus_for_each_dev+0x57/0x90
> [  296.637157]  driver_attach+0x14/0x20
> [  296.637561]  ? device_driver_attach+0x60/0x60
> [  296.638047]  bus_add_driver+0xc7/0x1c0
> [  296.638468]  driver_register+0x97/0xe0
> [  296.638890]  __platform_driver_register+0x2a/0x30
> [  296.639432]  of_unittest_overlay+0xcd8/0xffc
> [  296.639909]  of_unittest+0x1b48/0x2045
> [  296.640332]  ? of_unittest_dma_ranges_one+0x134/0x134
> [  296.641008]  do_one_initcall+0x9f/0x1f0
> [  296.641440]  ? parse_args+0x110/0x300
> [  296.641853]  ? kernel_init_freeable+0x11b/0x197
> [  296.642358]  kernel_init_freeable+0x133/0x197
> [  296.642846]  ? rest_init+0xf0/0xf0
> [  296.643235]  kernel_init+0x8/0x110
> [  296.643756]  ret_from_fork+0x2e/0x40
> [  296.644162] ---[ end trace 616644d30a39399d ]---
>
sorry i didn't noticed this mail before. The mentioned commit and this
warning doesn't make sense to me.

> To reproduce:
>
>         # build kernel
> 	cd linux
> 	cp config-5.6.0-rc7-next-20200327-00009-gaad378845d933 .config
> 	make HOSTCC=gcc-7 CC=gcc-7 ARCH=i386 olddefconfig prepare modules_prepare bzImage
>
>         git clone https://github.com/intel/lkp-tests.git
>         cd lkp-tests
>         bin/lkp qemu -k <bzImage> job-script # job-script is attached in this email
>
>
>
> Thanks,
> Rong Chen
>


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
