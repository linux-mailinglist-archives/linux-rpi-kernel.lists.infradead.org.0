Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D9B1184F5F
	for <lists+linux-rpi-kernel@lfdr.de>; Fri, 13 Mar 2020 20:42:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dTzZdQGsTjam+/9vvILSIpKxCdM8AChuWCYuKjHkWyM=; b=eUhP18wlIT4G7q
	DkwzoXxfLsLkjtxONrD6PRfv6JtVUOEm6opTxcbXgeSkQj4nTJZmN8MEPwLe3InwRHD/+E3ED6eNo
	wnuiA7mGgDzpSxkpExRUyAC1wa/eVg9uDNxm0pA9Qzlb7srWLEu/ukFprHDhD2EnlxjZsWmwuwGoD
	7HeZql4BTKXuKCInmMo1wAArvQdEFa+qr+NPGBd22DtEVGlCcZPHBkCGvhoF/7PQWGa4GWBEz3qL5
	rJKg7SVckFBzwUxSFXsHdvbSXBNEbvetW+c+LdM0RLcXUrkNTNlFC9DCLnXtION7EZXR3s0veMHMF
	4Ozlnagnpi7Gr0NTYdwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCqCO-0007zu-6p; Fri, 13 Mar 2020 19:42:24 +0000
Received: from xanadu.blop.info ([178.79.145.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCqCK-0007zU-Eu
 for linux-rpi-kernel@lists.infradead.org; Fri, 13 Mar 2020 19:42:22 +0000
Received: from [127.0.0.1] (helo=xanadu.blop.info)
 by xanadu.blop.info with smtp (Exim 4.89)
 (envelope-from <lucas@debian.org>)
 id 1jCqCF-0000TG-JV; Fri, 13 Mar 2020 20:42:15 +0100
Received: (nullmailer pid 13957 invoked by uid 1000);
 Fri, 13 Mar 2020 19:41:05 -0000
Date: Fri, 13 Mar 2020 20:41:05 +0100
From: Lucas Nussbaum <lucas@debian.org>
To: Matthias Brugger <mbrugger@suse.com>
Subject: Re: 5.6.0-rc5 fails to boot (MMC/SDHCI related?)
Message-ID: <20200313194105.GB12824@xanadu.blop.info>
References: <20200310223403.GA31851@xanadu.blop.info>
 <e3df2e1c87997799babafcd17676b7473d3f5154.camel@suse.de>
 <20200311120724.GA30432@xanadu.blop.info>
 <9fd81af85cb60df8d74da4f0c8b9d2eb435b8c49.camel@suse.de>
 <20200311220404.GA4112@xanadu.blop.info>
 <20200312162206.GA26612@xanadu.blop.info>
 <c7a947d6-8410-df47-4e43-03a0917392d6@suse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c7a947d6-8410-df47-4e43-03a0917392d6@suse.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_124220_632848_0ABB2B6E 
X-CRM114-Status: GOOD (  16.09  )
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

On 13/03/20 at 19:20 +0100, Matthias Brugger wrote:
> 
> 
> On 12/03/2020 17:22, Lucas Nussbaum wrote:
> > On 11/03/20 at 23:04 +0100, Lucas Nussbaum wrote:
> >> On 11/03/20 at 13:21 +0100, Nicolas Saenz Julienne wrote:
> >>> On Wed, 2020-03-11 at 13:07 +0100, Lucas Nussbaum wrote:
> >>>> Is there a system image somewhere using vanilla versions for u-boot and
> >>>> the kernel I could compare with? (it sounds like it would be a better
> >>>> idea than to compare with Ubuntu's).
> >>>
> >>> I suggest using openSUSE's tumbleweed as a starting point for kernel/u-boot
> >>> AFAIK it's the one around that really tracks upstream development and tests it
> >>> (TBH I haven't checked what arch or Gentoo are doing). That said, we use UEFI
> >>> for booting, which might not be what you're looking for. In that regard I
> >>> suggest checking out ARM's EBBR, https://arm-software.github.io/ebbr/.
> >>
> >> Thanks for all the help.
> >>
> >> At this point:
> >>
> >> I can boot using openSUSE firmware->u-boot->grub trick (which is also
> >> described in https://www.suse.com/media/article/UEFI_on_Top_of_U-Boot.pdf, which is a nice read)
> >>
> >> I can also boot using U-boot, both using openSUSE device tree and
> >> overlays, and using the kernel's device tree.
> > 
> > I tried booting without u-boot (mainly out of curiosity), with the
> > kernel DT, but it seems that the kernel fails to start (or the console
> > is misconfigured).
> > 
> > The boot hangs after:
> > -----------------------------------------
> > Loading config.txt hnd: 0x00001565
> > Initialising SDRAM 'Micron' 16Gb x1 total-size: 16 Gbit 3200
> > Loading recovery.elf hnd: 0x00000000
> > Failed to read recovery.elf error: 6
> > Loading start4.elf hnd: 0x0000caa0
> > Loading fixup4.dat hnd: 0x0000cdb4
> > MEM GPU: 76 ARM: 948 TOTAL: 1024
> > FIXUP src: 128 256 dst: 948 1024
> > Starting start4.elf @ 0xfec00200
> > -----------------------------------------
> 
> Where does this come from. It does not look like U-Boot output.

It's before u-boot: it's the EEPROM BOOT_UART feature that you can
enable. See instructions at
https://www.raspberrypi.org/documentation/hardware/raspberrypi/booteeprom.md
https://www.raspberrypi.org/documentation/hardware/raspberrypi/bcm2711_bootloader_config.md

The easiest way to do it is by booting raspbian.

Lucas

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
