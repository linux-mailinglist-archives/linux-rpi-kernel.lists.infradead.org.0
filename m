Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A53891496A4
	for <lists+linux-rpi-kernel@lfdr.de>; Sat, 25 Jan 2020 17:35:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sXGuVvSc+zBdbW+bVeGbCpMTxW0cwcW27gWkPpmq5Do=; b=GsKkoaEdi3EhKj
	TikarP1I0POK9i+X0wT8u72PAjv2hMomwzHCpkXFLQ74DNpdxqTHmzRdUBetyDqpW1eHri5cSoV8t
	EXEb49HVU0RasZO/SK/gBglo8NkU5OxjRRiFFiGbBNDWcwDMQBuwkL4LA6tt84i5PgSClJYIGXWHw
	M/Qfrgnl1txvJrbvlS4YVCYWFBGjcrU2z3vRyHsuMjByPX09zFjqYQdV4BwcNT2FF3gY7dVZRhrdr
	/4+wuptkBe3fedH4ZfKiePgnS0c7jhh0Jt2Gpgcw12lgmK2owf4TOB/sO3nyorGQoCRQi+iBFPny7
	YsFBHGiQDxO+aTf6j9BQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ivOOp-00080O-1a; Sat, 25 Jan 2020 16:35:07 +0000
Received: from valentin-vidic.from.hr ([2001:470:1f0b:3b7::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivOOj-0007OO-KG
 for linux-rpi-kernel@lists.infradead.org; Sat, 25 Jan 2020 16:35:03 +0000
X-Virus-Scanned: Debian amavisd-new at valentin-vidic.from.hr
Received: by valentin-vidic.from.hr (Postfix, from userid 1000)
 id 9AB1E3EA; Sat, 25 Jan 2020 17:34:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=valentin-vidic.from.hr; s=2017; t=1579970090;
 bh=sc6LzT0JMeS2aSnvePISDlh0FFBh6hsPdtDdsXP8yLY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=c3ajIDzLJS+ZYVOIHD42PYhu/Qls0ZiSJT6rOWIpMqeebmIkDO+SZhBRMkPEHOvnH
 9JWN2+0Uxqs+JIB7jnaXVL38ltfa21fhc+AnkbfOrtsoN3l+9NGewylff/w7UD49wb
 xeg+GsERrQ9Wn3+z1BpaaSdPcrL8CPebj2non4j7dd643uwhQfDOtzM1kLr1xnZiq2
 spCPGb+lz7a1xKhng9U28zFrBMoL4g/KNx50KeU9lD90X6jfhIqSBDMT2S2frWS3W/
 BvI9clg36S/k8dday6DWZo4mlnBtKiNT+mFCnBMQfZaeY2rQFYFft96Qt7WzHiz3KP
 rMfBsZvzE2nTA==
Date: Sat, 25 Jan 2020 17:34:50 +0100
From: Valentin =?utf-8?B?VmlkacSH?= <vvidic@valentin-vidic.from.hr>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: RPi B+ USB support
Message-ID: <20200125163450.GJ3671@valentin-vidic.from.hr>
References: <20200125130737.GG3671@valentin-vidic.from.hr>
 <C04WEWWXBXRL.28WZVXZ9OKU4B@linux-9qgx>
 <20200125135404.GH3671@valentin-vidic.from.hr>
 <41e082fa921653f57de2809630bedbb339fe5111.camel@suse.de>
 <20200125140421.GI3671@valentin-vidic.from.hr>
 <0f28a4fe2806aa5e4444aa6758ea60a73d1e8209.camel@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0f28a4fe2806aa5e4444aa6758ea60a73d1e8209.camel@suse.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200125_083501_984542_FDC66519 
X-CRM114-Status: UNSURE (   6.48  )
X-CRM114-Notice: Please train this message.
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

On Sat, Jan 25, 2020 at 05:16:23PM +0100, Nicolas Saenz Julienne wrote:
> Could you list me the contents of your boot partition and the contents of
> config.txt file (which should be in the boot partition).

I recreated the boot partition from scratch and now the boot and USB
works with both the Debian and kernelci kernel, so it seems the u-boot
was causing the problems. Thanks for the help :)

Here is the current boot setup:

-rwxr-xr-x 1 root root    18693 Jan 25  2020 COPYING.linux
-rwxr-xr-x 1 root root      250 Jan 25 16:25 Makefile
-rwxr-xr-x 1 root root    12428 Jan 25  2020 bcm2835-rpi-a-plus.dtb
-rwxr-xr-x 1 root root    12312 Jan 25  2020 bcm2835-rpi-a.dtb
-rwxr-xr-x 1 root root    12642 Jan 25  2020 bcm2835-rpi-b-plus.dtb
-rwxr-xr-x 1 root root    12518 Jan 25  2020 bcm2835-rpi-b-rev2.dtb
-rwxr-xr-x 1 root root    12434 Jan 25  2020 bcm2835-rpi-b.dtb
-rwxr-xr-x 1 root root    12510 Jan 25  2020 bcm2835-rpi-cm1-io1.dtb
-rwxr-xr-x 1 root root    12838 Jan 25  2020 bcm2835-rpi-zero-w.dtb
-rwxr-xr-x 1 root root    12348 Jan 25  2020 bcm2835-rpi-zero.dtb
-rwxr-xr-x 1 root root    12914 Jan 25  2020 bcm2836-rpi-2-b.dtb
-rwxr-xr-x 1 root root    13637 Jan 25  2020 bcm2837-rpi-3-b-plus.dtb
-rwxr-xr-x 1 root root    13445 Jan 25  2020 bcm2837-rpi-3-b.dtb
-rwxr-xr-x 1 root root    13433 Jan 25  2020 bcm2837-rpi-cm3-io3.dtb
-rwxr-xr-x 1 root root      422 Jan 25 16:25 boot.scr
-rwxr-xr-x 1 root root      494 Jan 25 16:25 boot.scr.uimg
-rwxr-xr-x 1 root root    52296 Jan 25  2020 bootcode.bin
-rwxr-xr-x 1 root root       32 Jan 25  2020 config.txt
-rwxr-xr-x 1 root root       32 Jan 25 16:22 config.u-boot
-rwxr-xr-x 1 root root     6694 Jan 25  2020 fixup.dat
-rwxr-xr-x 1 root root     2623 Jan 25  2020 fixup_cd.dat
-rwxr-xr-x 1 root root     9876 Jan 25  2020 fixup_db.dat
-rwxr-xr-x 1 root root     9872 Jan 25  2020 fixup_x.dat
-rwxr-xr-x 1 root root 11005781 Jan 25 16:25 initrd.img
-rwxr-xr-x 1 root root 11005845 Jan 25 16:25 initrd.img.uimg
-rwxr-xr-x 1 root root  4698056 Jan 25  2020 kernel.img
-rwxr-xr-x 1 root root  4944992 Jan 25  2020 kernel7.img
-rwxr-xr-x 1 root root  2869348 Jan 25  2020 start.elf
-rwxr-xr-x 1 root root   683172 Jan 25  2020 start_cd.elf
-rwxr-xr-x 1 root root  5016516 Jan 25  2020 start_db.elf
-rwxr-xr-x 1 root root  3956164 Jan 25  2020 start_x.elf
-rwxr-xr-x 1 root root      980 Jan 25 16:26 sysconf.txt
-rwxr-xr-x 1 root root   445700 Jan 25  2020 u-boot.bin
-rwxr-xr-x 1 root root  3138032 Jan 25 16:24 vmlinuz

# cat config.txt
enable_uart=1
kernel=u-boot.bin

# cat boot.scr
mmc dev 0
setenv fdtfile bcm2835-rpi-b-plus.dtb
setenv kernel vmlinuz
setenv initrd initrd.img.uimg
setenv bootargs console=tty0 console=ttyS1,115200 root=LABEL=RASPIROOT rw elevator=deadline fsck.repair=yes net.ifnames=0 cma=64M rootwait
fatload mmc 0:1 ${kernel_addr_r} ${kernel}
fatload mmc 0:1 ${ramdisk_addr_r} ${initrd}
fatload mmc 0:1 ${fdt_addr_r} ${fdtfile}
bootz ${kernel_addr_r} ${ramdisk_addr_r} ${fdt_addr_r}

-- 
Valentin

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
