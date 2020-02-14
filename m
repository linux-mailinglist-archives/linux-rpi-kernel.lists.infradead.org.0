Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7001315D869
	for <lists+linux-rpi-kernel@lfdr.de>; Fri, 14 Feb 2020 14:27:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ptQmTdErkA/EDwWoDEXolukble3TLeToVKqyavagXEg=; b=X7FQTF++4zLE2C
	JhKKDWaTmxV/cjE3q6xvs2ozwRviW3bwyUfogjV1UNt+Xuy+WCLdeR8oj2OuIV6ij3Y1qmjayXARO
	Rdh19H+HrTA8gFSzQFv1luYmXrDstnbWizxhmhKRlBw3Qtbs1s4kUivWBBQ+ZO09XM/ycA/6SQLN8
	PEH8EkytHMPj0X5jAGrYy3YmFE0ScdlP4Y7e9jDTuHJ9wVcV6qIikgqe4n9uKhZUjFWh6Oag4pDCE
	UH5+NL8DylfhYpAmdn6YjoUAt9FUZrTbQbnMnPvpPFeoz+yFyRjaUzpXXDHG5t7tHG4ahd8AO2nUz
	Mxya9fGtL7UQq2S+i66A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2b0d-0003Kt-NX; Fri, 14 Feb 2020 13:27:55 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2b0a-0003K0-Uz
 for linux-rpi-kernel@lists.infradead.org; Fri, 14 Feb 2020 13:27:54 +0000
Received: by mail-wm1-x343.google.com with SMTP id s144so2078943wme.1
 for <linux-rpi-kernel@lists.infradead.org>;
 Fri, 14 Feb 2020 05:27:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=kkmuJhEJOS35xHHzeJsfZBFbB6rjpScUgo1RMCIjzLg=;
 b=IapFLTaG22Z0NLaoz3u9pu9gmespLmeLh2Jv9CwSY5kLLVddirXyBG4ErrilLVjd+A
 /9lM7iXkn709iuhKnw9DFqZxmN6RbVH3Znu+RmThAXJB/KM9C4pLgADXmeODGpfH/2KO
 pbwjCxMBwGV2SsauYGOCAv4A9PEjZXKHvJStQNtGNoV11EDOUQTjb9XIvFp71h1v2nLL
 LwFRLRE0Rbc9AbejaheweG55XHZMPZ/Is6jzGp0JRdCZLegbNf8TBJrwJ+sl1hzXN4Bx
 TWPObJMKnBgmQ7k6T4k1yp6oU2eZvxWrNWyRUgWK0rzhLW9gV7khwkDagi6FeiTEb8yI
 hkgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=kkmuJhEJOS35xHHzeJsfZBFbB6rjpScUgo1RMCIjzLg=;
 b=o8bpEmjM/Kv5oXuHQ5ARzyYTQopUIGUuT8wsKuFPrHjmZvKbY+dEJ0QOLWSYJ3p4TU
 zs7LJ+kq5HZTvg1tyn2gvPpodl2xlfs2FFLRAwBzPi0htgxizMuYM7NH8FQZRnRP6UQk
 i7IvmRXdosIspe5rSbpfF1dM2suIMPVLXU6O5nn6MvEbAgHf1LtKCJtyOLan3PM5iXQ+
 3NwZIixPA/WEyVV+MatoSmyor/Kv/39KHJ462AlQOycffvQl0vvTDb0ARyjKNwSwR32+
 63wfxr1uWUuBOG0N3Jqg1tyY3fpO4eDplS803OtjciY21WCLhqi1+STOHBqMzO9D9GZ2
 Q0pw==
X-Gm-Message-State: APjAAAXJUnDuUSmDI/9MVEJSGCY36OaEj+aweX6FDojfTO0QtSxWZWqC
 hQviHcS4yyycwVJvCrISzlSjjg==
X-Google-Smtp-Source: APXvYqwBVZd0CyFgsTF+H4YlKcVUtxX3mwLGko8oZoEyRCYR1EWSHfXPWgvEUNHLNNugO0z1VdT1iQ==
X-Received: by 2002:a1c:6755:: with SMTP id b82mr4822533wmc.126.1581686871208; 
 Fri, 14 Feb 2020 05:27:51 -0800 (PST)
Received: from Red ([2a01:cb1d:3d5:a100:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id q124sm19998516wme.2.2020.02.14.05.27.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 14 Feb 2020 05:27:50 -0800 (PST)
Date: Fri, 14 Feb 2020 14:27:48 +0100
From: LABBE Corentin <clabbe@baylibre.com>
To: u-boot@lists.denx.de, nsaenzjulienne@suse.de,
 bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: RPI4: fail too boot with an initrd
Message-ID: <20200214132748.GA23276@Red>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_052752_999613_6C834BC7 
X-CRM114-Status: UNSURE (   9.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

Hello

Since the inclusion of the "enable network support in RPi4 config" serie on uboot, I have started to work on adding the rpi4 in kernelCI.
But I fail to succeed in using a kernel/dtb/ramdisk downloaded via tftp.

Using booti I hit:
[    0.000000] Linux version 5.6.0-rc1-next-20200212 (clabbe@build2-bionic-1804) (gcc version 7.4.1 20181213 [linaro-7.4-2019.02 revision 56ec6f6b99cc167ff0c2f8e1a2eed33b1edc85d4] (Linaro    GCC 7.4-2019.02)) #66 SMP PREEMPT Wed Feb 12 10:14:20 UTC 2020
[    0.000000] Machine model: Raspberry Pi 4 Model B
[    0.000000] earlycon: uart0 at MMIO32 0x00000000fe215040 (options '')
[    0.000000] printk: bootconsole [uart0] enabled
[    0.000000] efi: Getting EFI parameters from FDT:
[    0.000000] efi: UEFI not found.
[    0.000000] OF: reserved mem: failed to allocate memory for node 'linux,cma'
[    0.000000] cma: Failed to reserve 32 MiB
[    0.000000] Kernel panic - not syncing: Failed to allocate page table page
[    0.000000] CPU: 0 PID: 0 Comm: swapper Not tainted 5.6.0-rc1-next-20200212 #66
[    0.000000] Hardware name: Raspberry Pi 4 Model B (DT)
[    0.000000] Call trace:
[    0.000000]  dump_backtrace+0x0/0x1a0
[    0.000000]  show_stack+0x14/0x20
[    0.000000]  dump_stack+0xbc/0x104
[    0.000000]  panic+0x16c/0x37c
[    0.000000]  early_pgtable_alloc+0x30/0xa0
[    0.000000]  __create_pgd_mapping+0x36c/0x588
[    0.000000]  map_kernel_segment+0x70/0xa4
[    0.000000]  paging_init+0xf4/0x528
[    0.000000]  setup_arch+0x250/0x5d8
[    0.000000]  start_kernel+0x90/0x6d8

 
Since the same kernel boot with bootefi and that bootefi lack ramdisk address, I tried to add the address in the dtb via:
fdt addr 0x02400000; fdt resize; fdt set /chosen linux,initrd-start 0x02700000; fdt set /chosen linux,initrd-end 0x10000000; bootefi 0x00080000 0x02400000
But with that, I get:
initrd not fully accessible via the linear mapping -- please check your bootloader ...

I have tried many different start/end address without any change.


My last resort was to embed the rootfs in the kernel.
But with the correct console=, the boot stop at:
[    1.373557] fe201000.serial: ttyAMA0 at MMIO 0xfe201000 (irq = 16, base_baud = 0) is a PL011 rev2
[    1.382565] printk: console [ttyAMA0] enabled
[    1.391318] printk: bootconsole [uart0] disabled

With the wrong console (ttyS0), the boot go up to start init which panic due to lack of console.

Regards

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
