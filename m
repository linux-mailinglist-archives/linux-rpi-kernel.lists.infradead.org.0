Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0E4715BC3F
	for <lists+linux-rpi-kernel@lfdr.de>; Thu, 13 Feb 2020 11:00:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=fFH1EibRTZWV1hvSC4SBesI/fBp/mwdmQZUcML13ZLA=; b=EeZ/5LNkpFsmpjJ+P1eYd2eycP
	01NQfAP2e/hBXjhlWfXrgKj2XAe6WKlZn80epG5qMM5guAJJfK8QugLfbqR0MZRQn+hW2mhcBqwo2
	JuQs8zO02z2sdYubsnUoSOkh5fJR8N1rbtDeahlbg0G8R5eXrIHI1xOgk1JTzWYIRJtBGwEg6U+9F
	jvSMNSvj4Su85nAjXDsbqeFZN9rggdLjDf4ZNGlKHpCFThLRl22phtdqkLtJ4NQQRxTtP0d4PI/SD
	Gya89pgef3MS7OPcmnZRLjb5f7JZWEnkXQfYzEOsGVVHM6xPSmaDyoXlCH1vIt8jxIkyjb/d1I6R1
	ssQ4QEow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2BHx-0006GG-AP; Thu, 13 Feb 2020 10:00:05 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2BHt-00060l-Hw
 for linux-rpi-kernel@lists.infradead.org; Thu, 13 Feb 2020 10:00:03 +0000
Received: from [192.168.178.45] ([109.104.45.70]) by mrelayeu.kundenserver.de
 (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MGyl3-1jFfgV0HC7-00E8DN; Thu, 13 Feb 2020 10:59:48 +0100
Subject: Re: [PATCH] ARM: bcm2835_defconfig: add minimal support for Raspberry
 Pi4
To: Marek Szyprowski <m.szyprowski@samsung.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <CGME20200212102022eucas1p1c49daf15d3e63eda9a56124bc4eafb57@eucas1p1.samsung.com>
 <20200212102009.17428-1-m.szyprowski@samsung.com>
 <a1d66025baa13b2276b12405544fc7107aac8d6c.camel@suse.de>
 <5adcb2de-3570-9c4d-5e5b-726b94fb2029@samsung.com>
From: Stefan Wahren <stefan.wahren@i2se.com>
Message-ID: <916c0113-9910-26cd-3720-15399fde507b@i2se.com>
Date: Thu, 13 Feb 2020 10:59:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <5adcb2de-3570-9c4d-5e5b-726b94fb2029@samsung.com>
Content-Language: en-US
X-Provags-ID: V03:K1:rqjER1Wpxcp48iehpHocS30UWq5iynTkVomtysQANDNAsxQUZBr
 dpG3OaBTB/7yXyaPOULjiyFytd/2r48rtEt52nhmdVwrYdmJOoirHVd7MchHYtFRr7Y00gi
 5ErUxFr/yw4yv3YsuIMklWSjllbk5ohw+Sv8VeE5QsRBC4kDpp/Ck4JXGluZY0StD5xyV7P
 LaZo/d6mNLiZZuX8hNVkg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:yn/y25ko+sQ=:YBuWtfcDihwiPv5UiEgeWY
 jlFhaWYcVsFAfdHx5jBoBUsOOUghY+Eys6ivMNx3FQeaffWvEeWMMRG59zWPnpR5YqMoRUQbt
 NpYqHR2yUadaSWgLI5CW2H9rOHI8FVuE+hSvtt6FhFTlP6BlbqNlhl2935J93m2hCLAIGjg1E
 TjmBFmxq6700QQTt+kUUUbtMqst7dT13JxJJlodaIv5JUQ0xPx/y9g87nEUN+49LJ62sfEUkC
 cyeuG6U7Zh8SmC+kF2ZQfKBJujfROi34DYMHF3JWrVe4NMfukhJ8KiS37Z58XlXPr99CQwUH2
 4TfTC2GzjYfXQ4apGzqciPfqqC9QyeO4LMicxdBmcdgDtr4diOMs30PvPhWvFCaQow4bJ/RaD
 VgfXZ1vFgC5/Fo+orsheeYfYkX0aHHOqmqrAUl32DKb7JYinKAvuWINkJ3LMVcNvCwCT0C4Gx
 Zmo5Xeca0odMP8jZaQHShEh89IUE2TXTLkxKGoPvjDmJyS+6lZRz3R2Vh5sKJb5Ql1rXAwdBK
 7zTYNTZHkTZ4F7Z/x7erJ9LKn1mZv3LpT2uZHdWOr+M7x90L9NYhn9r0uKFL3ZFS7xKcsYLYW
 LZyG8GC28T8FWMv00i8IWS0mC8x+oyBXB5O1oBcDKqiQK6CMbmGkr/KIK19NaTOVcTUM1YD85
 SrOI0ajNQVxmCmrpFLPnnaCsyyAeTDvGwSDpac58HvNXSx2tPPNeMNBMCaK/PyGMumbGlAVMh
 CicEIcSBivprYSwdWuY1OJ9pPgFI7hNs2VV3TaYdv055qjXjhSAq9U8zVuJ9b6/3ZGsVDH6lq
 neGrgMY1FV3+tGsWkrMTGurrs22zKA69eECG4QzMtf+FxmcDzqlgPvYSmIZijp5qHZ4fYKK
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_020001_902726_000752DF 
X-CRM114-Status: GOOD (  13.64  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.72.192.74 listed in wl.mailspike.net]
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

Hi Marek,

On 13.02.20 08:35, Marek Szyprowski wrote:
> Hi Nicolas
>
> On 12.02.2020 19:31, Nicolas Saenz Julienne wrote:
>> Hi Marek,
>> On Wed, 2020-02-12 at 11:20 +0100, Marek Szyprowski wrote:
>>> Add drivers for the minimal set of devices needed to boot Raspberry Pi4
>>> board.
>>>
>>> Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
>> Just so you know, the amount of support on the RPi4 you might be able to get
>> updating bcm2835_defconfig's config is very limited. Only 1GB of ram and no
>> PCIe (so no USBs).
> Yes, I know. A lots of core features is missing: SMP, HIGHMEM, LPAE, PCI 
> and so on, but having a possibility to boot RPi4 with this defconfig 
> increases the test coverage.

in case you want to increase test coverage, we better enable all
Raspberry Pi 4 relevant hardware parts (hwrng, thermal, PCI ...). This
is what we did for older Pi boards.

SMP, HIGHMEM, LPAE are different and shouldn't be enabled in
bcm2835_defconfig from my PoV.

Best regards
Stefan


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
