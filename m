Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B38D815DA7E
	for <lists+linux-rpi-kernel@lfdr.de>; Fri, 14 Feb 2020 16:18:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Subject:To:From:
	Date:In-Reply-To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=n0g5op4PuU1RLNckybFANFuuS5qsV1XghFp396lnCeQ=; b=ebCXAITTxBfE2V
	x8KQ3kpQnlVb39Ucary23+HN/8S+sXISenLKvZuY8lkXBbp+iiUTKnqaF6wqfwwVXasBV9/OM9Z+e
	PGGLvNlRLZRId6OfUyz2o7aK1EOzw1YVdqFMAgjnPOg0BjYz6oe3li2HIGkVye6F5STjo/DVVYq5Z
	rwGcUjnM9y7Md69cmnrm3D4TozEpU0VYyec8PoQwbKP7VhUj59KJuFDS0W8Wj9NO3p7OfF0LJ5VsS
	JfPWKXktNcQi4BAGrzPtWiy8oi0j7FP314DbZaQFH1CLgCVO/vwdRCltXShvq5nuI1Y3CQ/vz2f/M
	bni4k3fjxv2fwEjeKLoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2ck1-0006gn-VD; Fri, 14 Feb 2020 15:18:53 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2cjl-0006Ql-BT; Fri, 14 Feb 2020 15:18:39 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 3CB97AF57;
 Fri, 14 Feb 2020 15:18:35 +0000 (UTC)
In-Reply-To: <8bd7a25a-359d-5b30-4c95-004032d78cb6@samsung.com>
Date: Fri, 14 Feb 2020 16:14:23 +0100
From: "Nicolas Saenz Julienne" <nsaenzjulienne@suse.de>
To: "Marek Szyprowski" <m.szyprowski@samsung.com>, "Stefan Wahren"
 <stefan.wahren@i2se.com>, <linux-rpi-kernel@lists.infradead.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] ARM: bcm2835_defconfig: add minimal support for
 Raspberry Pi4
Message-Id: <C0LZGU1IU7QO.9VKWHWJ56XZV@vian>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_071837_565841_F94DEDA2 
X-CRM114-Status: GOOD (  16.86  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

On Fri Feb 14, 2020 at 1:25 PM, Marek Szyprowski wrote:
> Hi Stefan,
>
> On 13.02.2020 10:59, Stefan Wahren wrote:
> > On 13.02.20 08:35, Marek Szyprowski wrote:
> >> On 12.02.2020 19:31, Nicolas Saenz Julienne wrote:
> >>> On Wed, 2020-02-12 at 11:20 +0100, Marek Szyprowski wrote:
> >>>> Add drivers for the minimal set of devices needed to boot Raspberry Pi4
> >>>> board.
> >>>>
> >>>> Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
> >>> Just so you know, the amount of support on the RPi4 you might be able to get
> >>> updating bcm2835_defconfig's config is very limited. Only 1GB of ram and no
> >>> PCIe (so no USBs).
> >> Yes, I know. A lots of core features is missing: SMP, HIGHMEM, LPAE, PCI
> >> and so on, but having a possibility to boot RPi4 with this defconfig
> >> increases the test coverage.
> > in case you want to increase test coverage, we better enable all
> > Raspberry Pi 4 relevant hardware parts (hwrng, thermal, PCI ...). This
> > is what we did for older Pi boards.
>
> Okay, I will add thermal in v2. HWRNG is already selected as module.
> Enabling PCI without LPAE makes no sense as the driver won't be able to
> initialize properly.

Agree on this.

> > SMP, HIGHMEM, LPAE are different and shouldn't be enabled in
> > bcm2835_defconfig from my PoV.
>
> Maybe it would make sense to also add bcm2711_defconfig or
> bcm2835_lpae_defconfig?

IMO bcm2711_defconfig if the last resort solution. I don't think you can
do bcm2835_lpae_defconfig as RPi and RPi2 SoCs don't support LPAE. An
intemediate solution is being discussed here:
https://lkml.org/lkml/2020/1/10/694

Regards,
Nicolas

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
