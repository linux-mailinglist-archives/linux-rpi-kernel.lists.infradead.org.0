Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7F3F18363C
	for <lists+linux-rpi-kernel@lfdr.de>; Thu, 12 Mar 2020 17:35:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/YF+kH2dqH3cq4Oht/sW1a2gpV6FPfiWdMZbnTMp7E4=; b=V6QNH+fXGi2S4A
	XOXRu9aoPPeZaWOu3tRvigfr6EuVOHj734vjS80Uh9M6U42awW87T38wXrwTIIpl5NmRgOjHd9/ya
	u1zg7uiAdE3QZJrqWkHh0jE3mA0zDuyQiNjP3/0Blimey+7zFAq/E9ejA1lyV30UIPJ3lcyDK9Hth
	cMJlC7olSITOu/UURLCSUHitJXuopXk2UMsBxJeLl9jHZwaSAoD2nKHEdcx8aOYM6hk3+TX3J4Ce5
	B5a9BfCFCWg/ackTYNl802Jb7d5fQ+jeYzGFYJbK2Qh1XMNuR2NK+VIFVCBULpuy4+Q4y1TYVZz8B
	jHnbA49N7kuUW6Vvilsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCQnQ-0003rq-Vz; Thu, 12 Mar 2020 16:34:56 +0000
Received: from xanadu.blop.info ([178.79.145.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCQnO-0003rN-77
 for linux-rpi-kernel@lists.infradead.org; Thu, 12 Mar 2020 16:34:56 +0000
Received: from [127.0.0.1] (helo=xanadu.blop.info)
 by xanadu.blop.info with smtp (Exim 4.89)
 (envelope-from <lucas@debian.org>) id 1jCQnJ-0001ou-Nu
 for linux-rpi-kernel@lists.infradead.org; Thu, 12 Mar 2020 17:34:49 +0100
Received: (nullmailer pid 26664 invoked by uid 1000);
 Thu, 12 Mar 2020 16:22:06 -0000
Date: Thu, 12 Mar 2020 17:22:06 +0100
From: Lucas Nussbaum <lucas@debian.org>
To: linux-rpi-kernel@lists.infradead.org
Subject: Re: 5.6.0-rc5 fails to boot (MMC/SDHCI related?)
Message-ID: <20200312162206.GA26612@xanadu.blop.info>
References: <20200310223403.GA31851@xanadu.blop.info>
 <e3df2e1c87997799babafcd17676b7473d3f5154.camel@suse.de>
 <20200311120724.GA30432@xanadu.blop.info>
 <9fd81af85cb60df8d74da4f0c8b9d2eb435b8c49.camel@suse.de>
 <20200311220404.GA4112@xanadu.blop.info>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200311220404.GA4112@xanadu.blop.info>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_093454_389380_154B62AE 
X-CRM114-Status: GOOD (  15.19  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

On 11/03/20 at 23:04 +0100, Lucas Nussbaum wrote:
> On 11/03/20 at 13:21 +0100, Nicolas Saenz Julienne wrote:
> > On Wed, 2020-03-11 at 13:07 +0100, Lucas Nussbaum wrote:
> > > Is there a system image somewhere using vanilla versions for u-boot and
> > > the kernel I could compare with? (it sounds like it would be a better
> > > idea than to compare with Ubuntu's).
> > 
> > I suggest using openSUSE's tumbleweed as a starting point for kernel/u-boot
> > AFAIK it's the one around that really tracks upstream development and tests it
> > (TBH I haven't checked what arch or Gentoo are doing). That said, we use UEFI
> > for booting, which might not be what you're looking for. In that regard I
> > suggest checking out ARM's EBBR, https://arm-software.github.io/ebbr/.
> 
> Thanks for all the help.
> 
> At this point:
> 
> I can boot using openSUSE firmware->u-boot->grub trick (which is also
> described in https://www.suse.com/media/article/UEFI_on_Top_of_U-Boot.pdf, which is a nice read)
> 
> I can also boot using U-boot, both using openSUSE device tree and
> overlays, and using the kernel's device tree.

I tried booting without u-boot (mainly out of curiosity), with the
kernel DT, but it seems that the kernel fails to start (or the console
is misconfigured).

The boot hangs after:
-----------------------------------------
Loading config.txt hnd: 0x00001565
Initialising SDRAM 'Micron' 16Gb x1 total-size: 16 Gbit 3200
Loading recovery.elf hnd: 0x00000000
Failed to read recovery.elf error: 6
Loading start4.elf hnd: 0x0000caa0
Loading fixup4.dat hnd: 0x0000cdb4
MEM GPU: 76 ARM: 948 TOTAL: 1024
FIXUP src: 128 256 dst: 948 1024
Starting start4.elf @ 0xfec00200
-----------------------------------------

Is there a good way to debug this?

Lucas

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
