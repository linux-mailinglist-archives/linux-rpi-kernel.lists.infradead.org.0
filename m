Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9491FAAA2
	for <lists+linux-rpi-kernel@lfdr.de>; Wed, 13 Nov 2019 08:10:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rKalfTm7Bjd4wukA1AFvprBwMoYuNobGdtWEroQbLHA=; b=pNdgwfHTuk8cG7
	cfTGHt5hfZD2jJKrsE7wYUNJdLFqcHLvOO+Pk7o4a6KztYSop+6eJJJNx7dCF0Kw2W3KEaMHmpPH0
	sSdExhAnpRvWBLZi6G5AuGnmzL0rdqOYVO5k2qLLKTFSD8i54+fWbdxmM35vt1OV+1cNUTZU73wbv
	ywoST5sJzcYwhMALryuqP3/JXfaVM1plv/3MFKpxlnZbbWxD8p0VmbIlH3j4s9UPaVTg6Z2Et3YzB
	TLQLUgWRZn4AJcG+um6gpL2iZF9iRC6gG/15cnpEH32nrNNToZQM4FNPXemGqjRxo95S0tYeaDZ+Z
	0BQ4B18ADSWjphPusfJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUmmt-0004py-5O; Wed, 13 Nov 2019 07:09:59 +0000
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUmmp-0004p6-6j
 for linux-rpi-kernel@lists.infradead.org; Wed, 13 Nov 2019 07:09:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1573628982;
 bh=lMob5iLzFJkyr7ddrMsbQm/Xl9fXg22JohyA4MgbFrQ=;
 h=X-UI-Sender-Class:Subject:To:References:From:Cc:Date:In-Reply-To;
 b=dU6xeuQTjtVBcT/E3sEmbCM2pN5uUK5tWvpRnEJ/XW3iAfrSJHF5VUNVT9eHMOOBE
 iXgGEHlKlk3UgaarexV7cUn7ngT/eIFj4p5Hvqk//EG4IT7/cUfE3tauS/0Kgdad2X
 XbUWyxkxoRGs7A8jpnwJ70by7iOtipmbSVZNUS7Y=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.170] ([37.4.249.94]) by mail.gmx.com (mrgmx104
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MGhuU-1ihQ5U2gyI-00DpF9; Wed, 13
 Nov 2019 08:09:42 +0100
Subject: Re: Raspberry Pi Kernel Contributing
To: Stephen Brennan <stephen@brennan.io>
References: <BYDRD5YUMB44.1Y6PT33UHHX24@pride>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <1e78280b-0ea5-5f14-4660-b9a204fb3c16@gmx.net>
Date: Wed, 13 Nov 2019 08:09:42 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <BYDRD5YUMB44.1Y6PT33UHHX24@pride>
Content-Language: en-US
X-Provags-ID: V03:K1:f91AW0Zjf1eTq0qcd0jbumxzA4nioukrXYfRnE2zCd0Ln87Q58L
 qSTamQbUtQ9jbMMuQaF3G4Ngy38rzxeGPwRN9PcjLaD+SCTYfxaUASP9VYPqzxB9zNgC2PK
 OStDW4Jqywoc/d3y1xeX7dlgPbsIt2DwMrZ76rc0zfTr9LXpYHo9GrTjS0PBhjzFbOoeuJb
 Y/EhqLUcpRHPcJKmiOyTA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:ZdPheSG18PU=:e3t4FXLjmISLjbzLS+Uuwa
 pa3mKG/gcHzf977m/Lvlvn8v5jlmQIf6LVtlH7n06ucHlEgbMLCPPiBTXMCaKxVOmtnhEYLxJ
 HqC9gbeIbe7cHvuLzoGj7SNGtw3f2ErQtWkmjJvjdRdexLvXEC109daWvWl4+NlNzM0Qz9R+8
 t3qOGfGfaAI43Wbn74ip5IvZU1EUMWvBWvKUProiBfhk/3Wg4YSyZTTPG0ua6KJnH+juXoIjw
 +ZtgQ0arrU44L9CCs7vHYxB1Jnzw2f7rx6VMzNoSUpJmcUz0UJ4T0YJaY3LOfhRkzmQ5fuz2m
 fHCvV0qPbAr1zObqJeJvBHmLOK0giGHp0lw3VBnDHAPm4BTjJKIx7Ie5k1PHIsIbg8CbJlXjJ
 kDC/30Qa7KH0PgamLVgd1UCQPoJO49q12g8gO1ttDRgI0IGYl3IEL36/rwMsCdv1X6uES9Z/T
 hZj+myuUDntiaqn+BmmfKSXh9aAug+wXi3kD9yuIFrsFzp4wLUXPJDfD04XluFCf2Harcnu9N
 daJvt2ho+3XWjONuZq5S4kpP2kX5d0jIFW09OYErwhuwg5xB4JnYI1DQlNy1H75HjW/q9xi2T
 G+QqmS5HJ4djvQZCiVN8vXIA4JOJmHPE7zgGlKIzaAvsL5yJ7Tj5hu8MSBt51TqIlUL8y2452
 nb//bJCGNQAqG5leLq9x7QgQRGR8wM1Yd7xXcihy4uxJ9QfN3Vyuju5VOtsxaP2QbLDI/6bF3
 3JFOr9QvUV9CiSWNHYmkAiMDB7Yt8Coi77SNb6sIMyOWhgnMwNk9wPbIhLGsGmexkNmcTinn/
 OaorkySp0UpyHMg2ulOC/+HIUPXuHFiNKKl5IMxJUEddhk1jB7SahF6G0DsTXTd3bHC2YrLrj
 jIkLDID+oPioqMboKsYC+Jyfua8ZQApKgoADetzrC/dW8FCjCza6nfgYRZvuoDW91PPSd6AIR
 8WrKKjx2JOmEHoyYD3Ojtyk7MXrjftcf4RXy8oHRxhVjtVGj4uYf2+KTTPQ1HfQbvYWTGSj2C
 jX9dJBwquc4JEOqMdvl8uAwwd5W6tz4QAbwAjFeaVlP0uYm6E63gH91L482MmyqVCkU5JMJCw
 7pIeFAVzgF0NftUiBFpzhNF7+B2oMZMQzzneWeoUvLv/+4rrM1u1f5tGQiZcglsW3casUDKYP
 C17GNbKUQIQOzKYnn9wLP/TfrsEbdjbGWFqBy2BHSs98oKGmi0i8KqL2UafR5nuHlC3+E2qbW
 PPK7/9f7kJ3LTEngSCIJxx86tzXebb3qdOfTYdAqFckGdtBtWzFLC5ubDeN0=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_230955_582810_C719C530 
X-CRM114-Status: GOOD (  22.53  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.21 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

Hi Stephen,

Am 12.11.19 um 09:00 schrieb Stephen Brennan:
> Hello everyone,
>
> I'm new to the Raspberry Pi kernel project and I wanted to learn more about the
> project goals and how I could contribute.
there are no clearly defined project goals, but my personal goal would
be that the Raspberry Pi become a popular upstream reference SBC. All
kinds of contributions are welcome like development, testing or
documentation.
>  From the resources I've seen (e.g. the
> topic of #raspberrypi-kernel on Freenode [1]), upstreaming the raspberrypi/linux
> tree seems to be a goal.

Not exactly. I see the priorities for the mainline support differently.
In the vendor tree everything is optimized to the RPi and its usability.
Sometimes this violates portability or security aspects. So in upstream
we don't want performance at all cost. This is the reason why we use the
dwc2 USB host driver and not dwc_otg.

The RPi should be integrated to the other ARM platforms and behave like
them. An example for this is the recommend usage of GPIO labels instead
of the deprecated sysfs.

>  I also see some work related to the BCM2711 SOC for the
> Raspberry Pi 4, which I doubt I know enough to help with. I did a diff to see
> what could be upstreamed:
>
>     git diff --numstat v5.4-rc7..rpi/rpi-5.4.y
The better source for upstreaming of RPi 4 is here [2]. A lot of
downstream patches are hacks and not suitable for mainline. So
upstreaming is sometimes much more work than simply a resend of those
patches. But there still a lot of lower fruits. A good example is the
hwrng support for the bcm2711.
>
> The diff is quite large, for example there is an entire RTL8192CU driver which
> seems separate from the mainline one.
Please forget about the Realtek driver. There are already 4 Realtek wifi
driver in the mainline kernel. There is no need for another one.
>  I did see a few interesting, smaller
> looking drivers that might be suitable:
>
>   * drivers/mmc/host/bcm2835-mmc.c
This has been dropped in favor of sdhci-iproc. It only lacks DMA support.
>   * drivers/clk/bcm/clk-bcm2835.c
Yes, there are some changes missing for v3d support.
>   * drivers/video/backlight/rpi_backlight.c
In general we try to avoid to upstream driver which depends on the
firmware interface. But i agree this is missing.
>
> Are these suitable areas to try to upstream? If so, what mailing list might be
> appropriate?

This is the right mailing list for discussions. But please send patches
also to linux-arm-kernel for a wider audience. Please have also a look
at this [3] for more recent information.

Best regards
Stefan

[2] - https://github.com/lategoodbye/rpi-zero/issues/43
[3] - https://github.com/raspberrypi/linux/wiki/Upstreaming

>  If not, what are some good qualities to look for when doing this
> sort of work?
>
> Thanks,
> Stephen Brennan
>
> [1]: https://elinux.org/RPi_Upstreaming
>
> _______________________________________________
> linux-rpi-kernel mailing list
> linux-rpi-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
