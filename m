Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88CB31B36B7
	for <lists+linux-rpi-kernel@lfdr.de>; Wed, 22 Apr 2020 07:12:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9FmaiENhpPuDwXy2QpWsETLgPHDkwh8V3ADErQVV3cw=; b=p4CEVW/XHnYAAnKEcin5SgnmS
	r8TI+wqHYRNlztlPd4I6YuDIsTPxtKCA7ygvUFNRIU+SfiaNRu3ynwye0Lc04GO14dTBeGYaZaQKV
	whgzBfXFBOQ5zfo3zQ11cmWYVMyV6B8c5D69hUUjO0KpY2+Jl4SxrdBrE/Atzu46ja+Hol4+wrJmn
	qrn7aV9JrONI/XuY4cYPgo6lbrr7HCWlum1/yiYUhhMzP0Ug18DAwtWpcGFtroUFZ1m3QgyevU81n
	aMjJ1Wsdq5Hm1xcTP9qVIe8EA/utd2oSQKFT+jFSqj+slnDx6al38CfRo1fQQ8A1+6jwj58vkjDry
	X9Fqc8CyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jR7gF-0000OA-Cw; Wed, 22 Apr 2020 05:12:15 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jR7gB-0000NK-CC
 for linux-rpi-kernel@lists.infradead.org; Wed, 22 Apr 2020 05:12:13 +0000
IronPort-SDR: AoqkBgdnTZyRxaEqPsBF0NeIlbJozrDVTfIUOEoZ0hBwvNio2A0Ji2yIIFuGVRaPOl3waSUwLW
 9gCPO1TDmFDw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2020 22:12:09 -0700
IronPort-SDR: IDYAUAHl8JeUIVumoqUWvLLVyyDGPLqW1AMGn5xKmfwRI7fHCPWBeA7kL6dWrUdBubNkESoaX6
 GBQsNlKVD1kA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,412,1580803200"; d="scan'208";a="402416968"
Received: from shao2-debian.sh.intel.com (HELO [10.239.13.3]) ([10.239.13.3])
 by orsmga004.jf.intel.com with ESMTP; 21 Apr 2020 22:11:45 -0700
Subject: Re: [staging] aad378845d: WARNING:held_lock_freed
To: Stefan Wahren <stefan.wahren@i2se.com>
References: <20200406020449.GU8179@shao2-debian>
 <59d1223f-e23c-e5f7-8477-b329a9469f60@i2se.com>
From: Rong Chen <rong.a.chen@intel.com>
Message-ID: <a8711be5-a42c-d4ac-e36b-cdf87449ccb6@intel.com>
Date: Wed, 22 Apr 2020 13:11:35 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <59d1223f-e23c-e5f7-8477-b329a9469f60@i2se.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_221211_490069_6F044CC6 
X-CRM114-Status: GOOD (  10.84  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.31 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org



On 4/16/20 3:13 AM, Stefan Wahren wrote:
> Hi,
>
> Am 06.04.20 um 04:04 schrieb kernel test robot:
>> FYI, we noticed the following commit (built with gcc-7):
>>
>> commit: aad378845d9334d223d0d56db8332ce071d90202 ("[PATCH 9/9] staging: bcm2835-camera: reduce indentation in ctrl_set_image_effect")
>> url: https://github.com/0day-ci/linux/commits/Stefan-Wahren/staging-bcm2835-camera-Clean-up-driver/20200329-225704
>>
>>
>> in testcase: boot
>>
>> on test machine: qemu-system-x86_64 -enable-kvm -cpu SandyBridge -smp 2 -m 8G
>>
>> caused below changes (please refer to attached dmesg/kmsg for entire log/backtrace):
>>
>>
>> +--------------------------------------------------------------------------------------+------------+------------+
>> |                                                                                      | 301f97157d | aad378845d |
>> +--------------------------------------------------------------------------------------+------------+------------+
>> | boot_successes                                                                       | 8          | 0          |
>> | boot_failures                                                                        | 9          | 16         |
>> | WARNING:at_kernel/rcu/rcutorture.c:#rcu_torture_fwd_prog                             | 4          | 3          |
>> | EIP:rcu_torture_fwd_prog                                                             | 4          | 3          |
>> | Kernel_panic-not_syncing:Attempted_to_kill_init!exitcode=                            | 6          |            |
>> | Assertion_failed                                                                     | 2          |            |
>> | WARNING:held_lock_freed                                                              | 0          | 15         |
>> | is_freeing_memory#-#,with_a_lock_still_held_there                                    | 0          | 15         |
>> | WARNING:at_drivers/base/devres.c:#devres_release_all                                 | 0          | 15         |
>> | EIP:devres_release_all                                                               | 0          | 15         |
>> | BUG:kernel_NULL_pointer_dereference,address                                          | 0          | 15         |
>> | Oops:#[##]                                                                           | 0          | 15         |
>> | EIP:add_dr                                                                           | 0          | 15         |
>> | Kernel_panic-not_syncing:Fatal_exception                                             | 0          | 15         |
>> | BUG:kernel_hang_in_early-boot_stage,last_printk:Probing_EDD(edd=off_to_disable)...ok | 0          | 1          |
>> +--------------------------------------------------------------------------------------+------------+------------+
>>
>>
>> If you fix the issue, kindly add following tag
>> Reported-by: kernel test robot <rong.a.chen@intel.com>
>>
>>
>> [  296.433348] ### dt-test ### EXPECT \ : OF: overlay: WARNING: memory leak will occur if overlay removed, property: /testcase-data/overlay-node/test-bus/test-unittest0/status
>> [  296.434682] OF: overlay: WARNING: memory leak will occur if overlay removed, property: /testcase-data/overlay-node/test-bus/test-unittest0/status
>> [  296.438645] ### dt-test ### EXPECT / : OF: overlay: WARNING: memory leak will occur if overlay removed, property: /testcase-data/overlay-node/test-bus/test-unittest0/status
>> [  296.438647] ### dt-test ### EXPECT \ : OF: overlay: WARNING: memory leak will occur if overlay removed, property: /testcase-data/overlay-node/test-bus/test-unittest1/status
>> [  296.439964] OF: overlay: WARNING: memory leak will occur if overlay removed, property: /testcase-data/overlay-node/test-bus/test-unittest1/status
>> [  296.442125] ### dt-test ### EXPECT / : OF: overlay: WARNING: memory leak will occur if overlay removed, property: /testcase-data/overlay-node/test-bus/test-unittest1/status
>> [  296.442125] ### dt-test ### EXPECT \ : OF: overlay: WARNING: memory leak will occur if overlay removed, property: /testcase-data/overlay-node/test-bus/test-unittest2/status
>> [  296.443264] OF: overlay: WARNING: memory leak will occur if overlay removed, property: /testcase-data/overlay-node/test-bus/test-unittest2/status
>> [  296.464571] ### dt-test ### EXPECT / : OF: overlay: WARNING: memory leak will occur if overlay removed, property: /testcase-data/overlay-node/test-bus/test-unittest2/status
>> [  296.464572] ### dt-test ### EXPECT \ : OF: overlay: WARNING: memory leak will occur if overlay removed, property: /testcase-data/overlay-node/test-bus/test-unittest3/status
>> [  296.466503] OF: overlay: WARNING: memory leak will occur if overlay removed, property: /testcase-data/overlay-node/test-bus/test-unittest3/status
>> [  296.469963] ### dt-test ### EXPECT / : OF: overlay: WARNING: memory leak will occur if overlay removed, property: /testcase-data/overlay-node/test-bus/test-unittest3/status
>> [  296.470955] ### dt-test ### EXPECT \ : OF: overlay: WARNING: memory leak will occur if overlay removed, property: /testcase-data/overlay-node/test-bus/test-unittest5/status
>> [  296.472792] OF: overlay: WARNING: memory leak will occur if overlay removed, property: /testcase-data/overlay-node/test-bus/test-unittest5/status
>> [  296.478533] ### dt-test ### EXPECT / : OF: overlay: WARNING: memory leak will occur if overlay removed, property: /testcase-data/overlay-node/test-bus/test-unittest5/status
>> [  296.478562] ### dt-test ### EXPECT \ : OF: overlay: WARNING: memory leak will occur if overlay removed, property: /testcase-data/overlay-node/test-bus/test-unittest6/status
>> [  296.480358] OF: overlay: WARNING: memory leak will occur if overlay removed, property: /testcase-data/overlay-node/test-bus/test-unittest6/status
>> [  296.484480] ### dt-test ### EXPECT / : OF: overlay: WARNING: memory leak will occur if overlay removed, property: /testcase-data/overlay-node/test-bus/test-unittest6/status
>> [  296.484482] ### dt-test ### EXPECT \ : OF: overlay: WARNING: memory leak will occur if overlay removed, property: /testcase-data/overlay-node/test-bus/test-unittest7/status
>> [  296.487813] OF: overlay: WARNING: memory leak will occur if overlay removed, property: /testcase-data/overlay-node/test-bus/test-unittest7/status
>> [  296.491912] ### dt-test ### EXPECT / : OF: overlay: WARNING: memory leak will occur if overlay removed, property: /testcase-data/overlay-node/test-bus/test-unittest7/status
>> [  296.492304] ### dt-test ### EXPECT \ : OF: overlay: WARNING: memory leak will occur if overlay removed, property: /testcase-data/overlay-node/test-bus/test-unittest8/status
>> [  296.494318] OF: overlay: WARNING: memory leak will occur if overlay removed, property: /testcase-data/overlay-node/test-bus/test-unittest8/status
>> [  296.498335] ### dt-test ### EXPECT / : OF: overlay: WARNING: memory leak will occur if overlay removed, property: /testcase-data/overlay-node/test-bus/test-unittest8/status
>> [  296.498337] ### dt-test ### EXPECT \ : OF: overlay: WARNING: memory leak will occur if overlay removed, property: /testcase-data/overlay-node/test-bus/test-unittest8/property-foo
>> [  296.500123] OF: overlay: WARNING: memory leak will occur if overlay removed, property: /testcase-data/overlay-node/test-bus/test-unittest8/property-foo
>> [  296.506899] ### dt-test ### EXPECT / : OF: overlay: WARNING: memory leak will occur if overlay removed, property: /testcase-data/overlay-node/test-bus/test-unittest8/property-foo
>> [  296.506901] ### dt-test ### EXPECT \ : OF: overlay: node_overlaps_later_cs: #6 overlaps with #7 @/testcase-data/overlay-node/test-bus/test-unittest8
>> [  296.508845] ### dt-test ### EXPECT \ : OF: overlay: overlay #6 is not topmost
>> [  296.510454] OF: overlay: node_overlaps_later_cs: #6 overlaps with #7 @/testcase-data/overlay-node/test-bus/test-unittest8
>> [  296.512496] OF: overlay: overlay #6 is not topmost
>> [  296.513055] ### dt-test ### EXPECT / : OF: overlay: overlay #6 is not topmost
>> [  296.513056] ### dt-test ### EXPECT / : OF: overlay: node_overlaps_later_cs: #6 overlaps with #7 @/testcase-data/overlay-node/test-bus/test-unittest8
>> [  296.536328] ### dt-test ### EXPECT \ : i2c i2c-1: Added multiplexed i2c bus 2
>> [  296.538415] i2c i2c-0: Added multiplexed i2c bus 1
>> [  296.541270] i2c i2c-0: Added multiplexed i2c bus 1
>> [  296.541696] ### dt-test ### EXPECT / : i2c i2c-1: Added multiplexed i2c bus 2
>> [  296.541697] ### dt-test ### EXPECT \ : OF: overlay: WARNING: memory leak will occur if overlay removed, property: /testcase-data/overlay-node/test-bus/i2c-test-bus/test-unittest12/status
>> [  296.542247] OF: overlay: WARNING: memory leak will occur if overlay removed, property: /testcase-data/overlay-node/test-bus/i2c-test-bus/test-unittest12/status
>> [  296.559399] ### dt-test ### EXPECT / : OF: overlay: WARNING: memory leak will occur if overlay removed, property: /testcase-data/overlay-node/test-bus/i2c-test-bus/test-unittest12/status
>> [  296.559402] ### dt-test ### EXPECT \ : OF: overlay: WARNING: memory leak will occur if overlay removed, property: /testcase-data/overlay-node/test-bus/i2c-test-bus/test-unittest13/status
>> [  296.561292] OF: overlay: WARNING: memory leak will occur if overlay removed, property: /testcase-data/overlay-node/test-bus/i2c-test-bus/test-unittest13/status
>> [  296.565238] ### dt-test ### EXPECT / : OF: overlay: WARNING: memory leak will occur if overlay removed, property: /testcase-data/overlay-node/test-bus/i2c-test-bus/test-unittest13/status
>> [  296.565240] ### dt-test ### EXPECT \ : i2c i2c-1: Added multiplexed i2c bus 3
>> [  296.575450] i2c i2c-0: Added multiplexed i2c bus 2
>> [  296.578895] i2c i2c-0: Added multiplexed i2c bus 2
>> [  296.579549] ### dt-test ### EXPECT / : i2c i2c-1: Added multiplexed i2c bus 3
>> [  296.585532] ### dt-test ### EXPECT \ : GPIO line <<int>> (line-B-input) hogged as input
>> [  296.588809] ### dt-test ### EXPECT \ : GPIO line <<int>> (line-A-input) hogged as input
>> [  296.590068] GPIO line 509 (line-B-input) hogged as input
>> [  296.594977]
>> [  296.595173] =========================
>> [  296.595614] WARNING: held lock freed!
>> [  296.596036] 5.6.0-rc7-next-20200327-00009-gaad378845d933 #11 Not tainted
>> [  296.596808] -------------------------
>> [  296.597242] swapper/1 is freeing memory e77ea400-e77ea7ff, with a lock still held there!
>> [  296.598219] e77ea48c (&dev->mutex){....}-{3:3}, at: __device_driver_lock+0x27/0x30
>> [  296.599788] 1 lock held by swapper/1:
>> [  296.600200]  #0: e77ea48c (&dev->mutex){....}-{3:3}, at: __device_driver_lock+0x27/0x30
>> [  296.601061]
>> [  296.601061] stack backtrace:
>> [  296.601578] CPU: 0 PID: 1 Comm: swapper Not tainted 5.6.0-rc7-next-20200327-00009-gaad378845d933 #11
>> [  296.602573] Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS 1.12.0-1 04/01/2014
>> [  296.603472] Call Trace:
>> [  296.604146]  dump_stack+0x16/0x26
>> [  296.605163]  debug_check_no_locks_freed+0xde/0x110
>> [  296.606049]  kfree+0x1e2/0x310
>> [  296.606444]  unittest_gpio_remove+0x28/0x40
>> [  296.606928]  platform_drv_remove+0x19/0x40
>> [  296.607382]  really_probe+0x217/0x3a0
>> [  296.607787]  driver_probe_device+0xe9/0x130
>> [  296.608568]  ? mutex_lock_nested+0x15/0x20
>> [  296.609045]  ? __device_driver_lock+0x27/0x30
>> [  296.609528]  device_driver_attach+0x2f/0x60
>> [  296.609992]  __driver_attach+0x99/0xa0
>> [  296.610418]  ? device_driver_attach+0x60/0x60
>> [  296.610903]  bus_for_each_dev+0x57/0x90
>> [  296.611330]  driver_attach+0x14/0x20
>> [  296.611726]  ? device_driver_attach+0x60/0x60
>> [  296.612230]  bus_add_driver+0xc7/0x1c0
>> [  296.612657]  driver_register+0x97/0xe0
>> [  296.613092]  __platform_driver_register+0x2a/0x30
>> [  296.614274]  of_unittest_overlay+0xcd8/0xffc
>> [  296.614774]  of_unittest+0x1b48/0x2045
>> [  296.615208]  ? of_unittest_dma_ranges_one+0x134/0x134
>> [  296.619132]  do_one_initcall+0x9f/0x1f0
>> [  296.619646]  ? parse_args+0x110/0x300
>> [  296.620107]  ? kernel_init_freeable+0x11b/0x197
>> [  296.620621]  kernel_init_freeable+0x133/0x197
>> [  296.621109]  ? rest_init+0xf0/0xf0
>> [  296.621495]  kernel_init+0x8/0x110
>> [  296.621883]  ret_from_fork+0x2e/0x40
>> [  296.622626] ------------[ cut here ]------------
>> [  296.623194] WARNING: CPU: 0 PID: 1 at drivers/base/devres.c:526 devres_release_all+0xe/0x50
>> [  296.624300] Modules linked in:
>> [  296.624652] CPU: 0 PID: 1 Comm: swapper Not tainted 5.6.0-rc7-next-20200327-00009-gaad378845d933 #11
>> [  296.625711] Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS 1.12.0-1 04/01/2014
>> [  296.626640] EIP: devres_release_all+0xe/0x50
>> [  296.627132] Code: c3 8d b4 26 00 00 00 00 8d 74 26 00 55 89 e5 5d c3 8d b4 26 00 00 00 00 8d 74 26 00 55 89 e5 53 8b 88 90 02 00 00 85 c9 75 12 <0f> 0b b8 ed ff ff ff eb 2b 8d b4 26 00 00 00 00 66 90 89 c3 8d 80
>> [  296.629196] EAX: e77ea40c EBX: e77ea40c ECX: 00000000 EDX: 00000001
>> [  296.629906] ESI: 00000000 EDI: c324e214 EBP: ed213db4 ESP: ed213db0
>> [  296.630608] DS: 007b ES: 007b FS: 0000 GS: 0000 SS: 0068 EFLAGS: 00010246
>> [  296.631378] CR0: 80050033 CR2: 00043000 CR3: 033e4000 CR4: 000406f0
>> [  296.632078] DR0: 00000000 DR1: 00000000 DR2: 00000000 DR3: 00000000
>> [  296.632775] DR6: fffe0ff0 DR7: 00000400
>> [  296.633209] Call Trace:
>> [  296.633495]  really_probe+0x21e/0x3a0
>> [  296.633909]  driver_probe_device+0xe9/0x130
>> [  296.634380]  ? mutex_lock_nested+0x15/0x20
>> [  296.634841]  ? __device_driver_lock+0x27/0x30
>> [  296.635339]  device_driver_attach+0x2f/0x60
>> [  296.635810]  __driver_attach+0x99/0xa0
>> [  296.636232]  ? device_driver_attach+0x60/0x60
>> [  296.636726]  bus_for_each_dev+0x57/0x90
>> [  296.637157]  driver_attach+0x14/0x20
>> [  296.637561]  ? device_driver_attach+0x60/0x60
>> [  296.638047]  bus_add_driver+0xc7/0x1c0
>> [  296.638468]  driver_register+0x97/0xe0
>> [  296.638890]  __platform_driver_register+0x2a/0x30
>> [  296.639432]  of_unittest_overlay+0xcd8/0xffc
>> [  296.639909]  of_unittest+0x1b48/0x2045
>> [  296.640332]  ? of_unittest_dma_ranges_one+0x134/0x134
>> [  296.641008]  do_one_initcall+0x9f/0x1f0
>> [  296.641440]  ? parse_args+0x110/0x300
>> [  296.641853]  ? kernel_init_freeable+0x11b/0x197
>> [  296.642358]  kernel_init_freeable+0x133/0x197
>> [  296.642846]  ? rest_init+0xf0/0xf0
>> [  296.643235]  kernel_init+0x8/0x110
>> [  296.643756]  ret_from_fork+0x2e/0x40
>> [  296.644162] ---[ end trace 616644d30a39399d ]---
>>
> sorry i didn't noticed this mail before. The mentioned commit and this
> warning doesn't make sense to me.
>

Hi Stefan,

Sorry for the inconvenience, we recompiled the kernel and the problem is 
gone,
please ignore this report.

Best Regards,
Rong Chen



_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
