Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 653AE161263
	for <lists+linux-rpi-kernel@lfdr.de>; Mon, 17 Feb 2020 13:53:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V67TpyqHa60LEimEFkAuwwkbwElv59M+Ro88kZzy7W0=; b=YvaCuCXlLP54rd
	5NJ6ko9H2TNsfOdBxbv3yiqA9aUUB+0tes2m+bLoJE6qrVqIQxF3XfDV7WSeP32Xxrw47w/lIwVxk
	W434+ofkjJ/ZS6NTObBjSiSIBJhJ2vbcI9l85y6a0APN2Iu8dlCqKRZrMtOtsIh1pc66h3OeKaJHQ
	ckCqT3tW5/y77RwJXWorYKsz1ZrqPEdKwoOe8eIjmmbKQIkGMy69SB/RQphx+1yjEDBLKGmdLG/kO
	Yb/l+7Uz7Sr88mAXfUE3FWXSP2kxzStl6Q5ezthk4g+RL/9Wb7nzzXWXvTCTEy5oAt3DOu2ARDeGw
	u3FSgR2uUjaw3Nv9UDjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3ftl-0005Un-Lr; Mon, 17 Feb 2020 12:53:17 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3ftZ-0005Lq-TP
 for linux-rpi-kernel@lists.infradead.org; Mon, 17 Feb 2020 12:53:08 +0000
Received: by mail-wr1-x442.google.com with SMTP id z7so19564223wrl.13
 for <linux-rpi-kernel@lists.infradead.org>;
 Mon, 17 Feb 2020 04:53:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=7R3FILuhN3p+BWRLtBUphGrRXpUsVgK4QWh6n4wz7vw=;
 b=il+X/6zFWwdWFU3GQKLEpKcseKN2qM3E2084edwN17B85FuunBp2lxJhWag48GRblK
 940c3HGHFlq1jcKqiSn8/uURdeuljU2YFjF+Sz2O2jL1jeMSLU89MvA/nut5hDK5HAV2
 hprFcLRI6WKiAhbAO9oEdStZUeIqv9HgyAi5AXGo1clb2kJVzdEyTVXQ+iG+7A1euEBc
 la8FKNxub7fRXIi28kmOTKAcBob/UiRdy21pcJK3KiuInP9AnzjrQ5KHofSRab7UpkUo
 0urdQB9Hzht7pWLYyXRkJXJdRjP06ms2rsnyDxEj7tOzg4rhKfJWyRnTPbuYikDTGpsK
 tTVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=7R3FILuhN3p+BWRLtBUphGrRXpUsVgK4QWh6n4wz7vw=;
 b=tqPaJ8f7QBgBut/2J3embfBVGgZHu41dFaDYlhDE2JC5TQt5vWF/49HpInE+oBPQkX
 fY4GBLqHo5NoDEjHtnAWPGr0b4U2N++SI1GAiassUPeowfqWBqLsNp9mA1miHVPkwoGp
 4ecAUr8yXLmiKZhJm3k0YPL9QEln9bXqW/v5oqml3aB+7QUaPb7gZa/3j0lQslnhp9u9
 PyEWB0k4Wtbl6ZSHNeuWMqOp81sx06XbUpo/y6ILI2ZgiYoD4sJgFQJ+EdrmNTKNADUF
 62n5Zpaouq5SXen+mb/XCupTbq4T8zc0qxu285qEIe58BpvaObVjiPjLpYleMIiDGhxA
 2DdQ==
X-Gm-Message-State: APjAAAV+YnAN1KJ5KE5CUroYAKTW4J0kaays/Knr67lqfjqeH++/3dSA
 XhYiMMHfI3raxNWj+Wodw+/HgA==
X-Google-Smtp-Source: APXvYqzVuuAh0xeYF6cOBMa65EbD6xNASq5s4P4o8y3g+Sr134xF2ST8a695PSriNM9d2l7k1jFAvQ==
X-Received: by 2002:adf:f103:: with SMTP id r3mr22193162wro.295.1581943984139; 
 Mon, 17 Feb 2020 04:53:04 -0800 (PST)
Received: from Red ([2a01:cb1d:3d5:a100:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id j14sm845668wrn.32.2020.02.17.04.53.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 17 Feb 2020 04:53:03 -0800 (PST)
Date: Mon, 17 Feb 2020 13:53:01 +0100
From: LABBE Corentin <clabbe@baylibre.com>
To: Matthias Brugger <matthias.bgg@gmail.com>
Subject: Re: RPI4: fail too boot with an initrd
Message-ID: <20200217125301.GA31847@Red>
References: <20200214132748.GA23276@Red>
 <b726290c-1038-3771-5187-6ac370bc92c9@arm.com>
 <20200217103733.GA11379@Red>
 <c5a959d7-44b2-fab9-8269-d8e858790925@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c5a959d7-44b2-fab9-8269-d8e858790925@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_045306_091550_F35C52AC 
X-CRM114-Status: GOOD (  27.39  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 u-boot@lists.denx.de, James Morse <james.morse@arm.com>,
 linux-rpi-kernel@lists.infradead.org, bcm-kernel-feedback-list@broadcom.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 17, 2020 at 11:50:04AM +0100, Matthias Brugger wrote:
> 
> 
> On 17/02/2020 11:37, LABBE Corentin wrote:
> > On Fri, Feb 14, 2020 at 06:15:27PM +0000, James Morse wrote:
> >> Hi Corentin,
> >>
> >> On 14/02/2020 13:27, LABBE Corentin wrote:
> >>> Since the inclusion of the "enable network support in RPi4 config" serie on uboot, I
> >>> have started to work on adding the rpi4 in kernelCI.
> >>> But I fail to succeed in using a kernel/dtb/ramdisk downloaded via tftp.
> >>>
> >>> Using booti I hit:
> >>> [    0.000000] Linux version 5.6.0-rc1-next-20200212 (clabbe@build2-bionic-1804) (gcc version 7.4.1 20181213 [linaro-7.4-2019.02 revision 56ec6f6b99cc167ff0c2f8e1a2eed33b1edc85d4] (Linaro    GCC 7.4-2019.02)) #66 SMP PREEMPT Wed Feb 12 10:14:20 UTC 2020
> >>> [    0.000000] Machine model: Raspberry Pi 4 Model B
> >>> [    0.000000] earlycon: uart0 at MMIO32 0x00000000fe215040 (options '')
> >>> [    0.000000] printk: bootconsole [uart0] enabled
> >>> [    0.000000] efi: Getting EFI parameters from FDT:
> >>> [    0.000000] efi: UEFI not found.
> >>
> >> So no EFI,
> >>
> >>> [    0.000000] OF: reserved mem: failed to allocate memory for node 'linux,cma'
> >>
> >> Out of memory.
> >>
> >>> [    0.000000] cma: Failed to reserve 32 MiB
> >>> [    0.000000] Kernel panic - not syncing: Failed to allocate page table page
> >>
> >> Out of memory...
> >>
> >>> [    0.000000] CPU: 0 PID: 0 Comm: swapper Not tainted 5.6.0-rc1-next-20200212 #66
> >>> [    0.000000] Hardware name: Raspberry Pi 4 Model B (DT)
> >>> [    0.000000] Call trace:
> >>> [    0.000000]  dump_backtrace+0x0/0x1a0
> >>> [    0.000000]  show_stack+0x14/0x20
> >>> [    0.000000]  dump_stack+0xbc/0x104
> >>> [    0.000000]  panic+0x16c/0x37c
> >>> [    0.000000]  early_pgtable_alloc+0x30/0xa0
> >>
> >> ... really early!
> >>
> >>> [    0.000000]  __create_pgd_mapping+0x36c/0x588
> >>> [    0.000000]  map_kernel_segment+0x70/0xa4
> >>> [    0.000000]  paging_init+0xf4/0x528
> >>> [    0.000000]  setup_arch+0x250/0x5d8
> >>> [    0.000000]  start_kernel+0x90/0x6d8
> >>>
> >>>  
> >>> Since the same kernel boot with bootefi and that bootefi lack ramdisk address,
> >>
> >> Booting with EFI will cause linux to use the EFI memory map.
> >>
> >> Does your DT have a memory node? (or does it expect EFI to provide the information)
> >>
> >>
> >>> I tried to add the address in the dtb via:
> >>> fdt addr 0x02400000; fdt resize; fdt set /chosen linux,initrd-start 0x02700000; fdt set /chosen linux,initrd-end 0x10000000; bootefi 0x00080000 0x02400000
> >>> But with that, I get:
> >>> initrd not fully accessible via the linear mapping -- please check your bootloader ...
> >>
> >> So this one is an EFI boot, but you can't find where to put the initramfs such that the
> >> kernel agrees its in memory.
> >>
> >> If you boot with 'efi=debug', linux will print the EFI memory map. Could you compare that
> >> to where U-Boot thinks memory is?
> >>
> >> (it sounds like your DT memory node is missing, and your EFI memory map is surprisingly small)
> > 
> > Hello
> > 
> > Thanks for your advices.
> > 
> > In the dtb of mainline linux:
> > 	/* Will be filled by the bootloader */
> > 	memory@0 {
> > 		device_type = "memory";
> > 		reg = <0 0 0>;
> > 	};
> > 
> > In uboot I have:
> > static struct mm_region bcm2711_mem_map[] = {
> >         {
> >                 .virt = 0x00000000UL,
> >                 .phys = 0x00000000UL,
> >                 .size = 0xfe000000UL,
> >                 .attrs = PTE_BLOCK_MEMTYPE(MT_NORMAL) |
> >                          PTE_BLOCK_INNER_SHARE
> >         }, {
> >                 .virt = 0xfc000000UL,
> >                 .phys = 0xfc000000UL,
> >                 .size = 0x03800000UL,
> >                 .attrs = PTE_BLOCK_MEMTYPE(MT_DEVICE_NGNRNE) |
> >                          PTE_BLOCK_NON_SHARE |
> >                          PTE_BLOCK_PXN | PTE_BLOCK_UXN
> >         }, {
> >                 /* List terminator */
> >                 0,
> >         }
> > };
> > But I dont know if uboot use that for filling the memory node.
> 
> No it doesn't. U-Boot uses the DT from the firmware and passes this to the
> kernel. But it seems you pass instead your own device-tree to the kernel, so you
> will need to update the memory node to show the available memory on you board.
> 

I dont understand, in the Linux commit "ARM: dts: Add minimal Raspberry Pi 4 support" I read:
The RPi 4 is available in 3 different variants (1, 2 and 4 GB RAM), so leave the memory size to zero and let the bootloader take care of it.
But if uboot dont fill that...
So the DTB in mainline is wrong, right ?

Regards

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
