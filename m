Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E40E81614CB
	for <lists+linux-rpi-kernel@lfdr.de>; Mon, 17 Feb 2020 15:37:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fg0LTZaVfbRPOM6ZYlzNZwEdeXkAMjo06lXXiPQ5Q7o=; b=EUHVAOh+go1mUt
	pHzs70vs/UDoW7P+ChAuHO9QXJ6wbvr2NHj7haF80Wr1nxdw3gjr76Cz7TlOgGrDDm244ijVxLQvQ
	YW8UVzxjATOBp1YfsaokBiX/3S1bR5AofN2JiSgcjDbw0nKU+YGlXIQObcIAa6+aApJit5id+FU1d
	gXjjcFygpkiG9mHpS38eiTRJWz1cENjp4bjex1ICuyBpC2pgZMf/myoVsSoUd6fQkyqo61eT9hEIB
	TIwAerLuyr/hytiihE4yjWhK4ASMNaK2Sjl0sTzGUmafFlEs1DBOK6Hy1V9e1FA/zGeCfZ2sDoeBB
	1VDVcc6ZhNTTlMKaFrCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3hW7-0004qU-VW; Mon, 17 Feb 2020 14:36:59 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3hW3-0004pR-FD
 for linux-rpi-kernel@lists.infradead.org; Mon, 17 Feb 2020 14:36:57 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200217143652euoutp01df753d2a1e774d0fec93b91ba9a29bfe~0N1ZBH3HT2363523635euoutp01i
 for <linux-rpi-kernel@lists.infradead.org>;
 Mon, 17 Feb 2020 14:36:52 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200217143652euoutp01df753d2a1e774d0fec93b91ba9a29bfe~0N1ZBH3HT2363523635euoutp01i
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1581950212;
 bh=Aw+GcEGAOAFjBDn4bw5HZrk4baOAINLZ2AgrAo1Nk7Y=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=s69Kcazer+F1Q43PIA9+VOyftLc/PsIB6rOo8+1Pmwx1vzDvq05be4jsNS2g/c/aD
 4fm3JZN+xTVx6arTSpSEy+YfXvEr0ybGBXexwO+118B5h2VQu0+wZtQVP6sC3blYtp
 954kxJk6O8hwIlWyFh5LsEdN3Om6fdFCUpmdvdLM=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200217143652eucas1p2bc6dad066589d1b31f6a1dc6c3b32d3f~0N1Yz4D-T1002310023eucas1p2f;
 Mon, 17 Feb 2020 14:36:52 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id C1.6E.61286.405AA4E5; Mon, 17
 Feb 2020 14:36:52 +0000 (GMT)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200217143652eucas1p1e15e99f1bfdf755c352b383e91024347~0N1YaEhWN3210932109eucas1p1f;
 Mon, 17 Feb 2020 14:36:52 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200217143652eusmtrp1f3247f2e7ffee2bea81210ca5677d9ff~0N1YZgx_A2776027760eusmtrp16;
 Mon, 17 Feb 2020 14:36:52 +0000 (GMT)
X-AuditID: cbfec7f2-ef1ff7000001ef66-59-5e4aa5046c0c
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 13.99.07950.305AA4E5; Mon, 17
 Feb 2020 14:36:51 +0000 (GMT)
Received: from [106.120.51.15] (unknown [106.120.51.15]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200217143651eusmtip2e154ff93f15e86ae636b535f972227e9~0N1YBwMiP1707017070eusmtip2a;
 Mon, 17 Feb 2020 14:36:51 +0000 (GMT)
Subject: Re: Applied "ASoC: core: ensure component names are unique" to the
 asoc tree
To: Jerome Brunet <jbrunet@baylibre.com>, Mark Brown <broonie@kernel.org>
From: Marek Szyprowski <m.szyprowski@samsung.com>
Message-ID: <20557448-d6d2-7584-e2ac-c46d337e1778@samsung.com>
Date: Mon, 17 Feb 2020 15:36:51 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <1jlfp1z70u.fsf@starbuckisacylon.baylibre.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrFKsWRmVeSWpSXmKPExsWy7djP87osS73iDGYsEre4cvEQk8XUh0/Y
 LN48OsJs8e1KB5PF5V1z2Cwm3t7A7sDmseFzE5vH+xut7B47Z91l99i0qpPNY/OSeo/Pm+QC
 2KK4bFJSczLLUov07RK4MuZ872Es+KRSsffeX/YGxgNyXYwcHBICJhILtkp3MXJxCAmsYJTY
 1bOECcL5wigxcftaKOczo8T7Oa2sXYycYB0nNk5kh0gsZ5T4dP4vI4TzllHiYtcFZpAqYYFw
 ieV7p7CA2CICnhILF/5nBiliFpjPKHH083R2kASbgKFE19suNhCbV8BOYvvDbUwgNouAqsSr
 nhdgNaICsRKzVx5mgagRlDg58wmYzSlgLXHk/mmwGmYBeYntb+cwQ9jiEreezGeCOHUTu8TJ
 R/YQtovExdlnmCFsYYlXx7ewQ9gyEqcn97CAHCch0Mwo8fDcWnYIp4dR4nLTDEaIKmuJO+d+
 sYGCjFlAU2L9Ln2IsKPEo1lNLJCQ5JO48VYQ4gY+iUnbpjNDhHklOtqEIKrVJGYdXwe39uCF
 S8wTGJVmIflsFpJvZiH5ZhbC3gWMLKsYxVNLi3PTU4sN81LL9YoTc4tL89L1kvNzNzECU9Dp
 f8c/7WD8einpEKMAB6MSD29An1ecEGtiWXFl7iFGCQ5mJRFeb3GgEG9KYmVValF+fFFpTmrx
 IUZpDhYlcV7jRS9jhQTSE0tSs1NTC1KLYLJMHJxSDYysTzj7VhyNeSK9NFnqU4Ot3xL+/HYr
 poLp1k3LGvi7DnF/SLrO1zRbLOfkY16rfZXHj8281DS362ZiwMvdoe03gksrM7hqDv5Olbmo
 lrfg9u86ofx1d9NmxB6fPWee9hIhb4fVQee7Z956Vso4YcWr2xc2GHBtF41/tjNl9Zb7VlVb
 JnKv/eOkxFKckWioxVxUnAgALkY+Fz0DAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrHIsWRmVeSWpSXmKPExsVy+t/xe7rMS73iDKZss7G4cvEQk8XUh0/Y
 LN48OsJs8e1KB5PF5V1z2Cwm3t7A7sDmseFzE5vH+xut7B47Z91l99i0qpPNY/OSeo/Pm+QC
 2KL0bIryS0tSFTLyi0tslaINLYz0DC0t9IxMLPUMjc1jrYxMlfTtbFJSczLLUov07RL0MuZ8
 72Es+KRSsffeX/YGxgNyXYycHBICJhInNk5k72Lk4hASWMoocXzRWVaIhIzEyWkNULawxJ9r
 XWwQRa8ZJR6ufsACkhAWCJdYvncKmC0i4CmxcOF/ZpAiZoH5jBJz111mhuj4wyix9GYjWBWb
 gKFE11uQUZwcvAJ2EtsfbmMCsVkEVCVe9bxgB7FFBWIlbszsYIKoEZQ4OfMJWC+ngLXEkfun
 wWqYBcwk5m1+yAxhy0tsfzsHyhaXuPVkPtMERqFZSNpnIWmZhaRlFpKWBYwsqxhFUkuLc9Nz
 i430ihNzi0vz0vWS83M3MQLjbtuxn1t2MHa9Cz7EKMDBqMTDu2KCV5wQa2JZcWXuIUYJDmYl
 EV5vcaAQb0piZVVqUX58UWlOavEhRlOg5yYyS4km5wNTQl5JvKGpobmFpaG5sbmxmYWSOG+H
 wMEYIYH0xJLU7NTUgtQimD4mDk6pBsYz/8VjJuRvXBT6Syh9UkxZ11OPjbvT8zNPqJ3/mDA9
 /r/+nOACI8utdb/44na/fLWiuOPz1Lo9RhM1PWt155y6+4/73BcbVqHCHTyZ6+q0ba3bVRlm
 L/VaJfRrelHZscemk53PqHAxxVjfuvEwy/3MqphJ4TL33JXlWFWWHZ8kdblhKl/8sYlKLMUZ
 iYZazEXFiQBmoHot0QIAAA==
X-CMS-MailID: 20200217143652eucas1p1e15e99f1bfdf755c352b383e91024347
X-Msg-Generator: CA
X-RootMTR: 20200217121336eucas1p2deb35417f5c4646a89762fd6146c3cf9
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200217121336eucas1p2deb35417f5c4646a89762fd6146c3cf9
References: <applied-20200214134704.342501-1-jbrunet@baylibre.com>
 <CGME20200217121336eucas1p2deb35417f5c4646a89762fd6146c3cf9@eucas1p2.samsung.com>
 <f666e600-2b44-f1fa-7ccf-aa44da6b8979@samsung.com>
 <1jlfp1z70u.fsf@starbuckisacylon.baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_063655_715973_B701073D 
X-CRM114-Status: GOOD (  21.46  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.11 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: alsa-devel@alsa-project.org, Liam Girdwood <lgirdwood@gmail.com>,
 linux-rpi-kernel <linux-rpi-kernel@lists.infradead.org>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

Hi Jerome,

On 17.02.2020 14:18, Jerome Brunet wrote:
> On Mon 17 Feb 2020 at 13:13, Marek Szyprowski <m.szyprowski@samsung.com> wrote:
>> On 14.02.2020 21:56, Mark Brown wrote:
>>> The patch
>>>
>>>      ASoC: core: ensure component names are unique
>>>
>>> has been applied to the asoc tree at
>>>
>>>      https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git
>>>
>>> All being well this means that it will be integrated into the linux-next
>>> tree (usually sometime in the next 24 hours) and sent to Linus during
>>> the next merge window (or sooner if it is a bug fix), however if
>>> problems are discovered then the patch may be dropped or reverted.
>>>
>>> You may get further e-mails resulting from automated or manual testing
>>> and review of the tree, please engage with people reporting problems and
>>> send followup patches addressing any issues that are reported if needed.
>>>
>>> If any updates are required or you are submitting further changes they
>>> should be sent as incremental updates against current git, existing
>>> patches will not be replaced.
>>>
>>> Please add any relevant lists and maintainers to the CCs when replying
>>> to this mail.
>>>
>>> Thanks,
>>> Mark
>>>
>>>   From b2354e4009a773c00054b964d937e1b81cb92078 Mon Sep 17 00:00:00 2001
>>> From: Jerome Brunet <jbrunet@baylibre.com>
>>> Date: Fri, 14 Feb 2020 14:47:04 +0100
>>> Subject: [PATCH] ASoC: core: ensure component names are unique
>>>
>>> Make sure each ASoC component is registered with a unique name.
>>> The component is derived from the device name. If a device registers more
>>> than one component, the component names will be the same.
>>>
>>> This usually brings up a warning about the debugfs directory creation of
>>> the component since directory already exists.
>>>
>>> In such case, start numbering the component of the device so the names
>>> don't collide anymore.
>>>
>>> Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
>>> Link: https://lore.kernel.org/r/20200214134704.342501-1-jbrunet@baylibre.com
>>> Signed-off-by: Mark Brown <broonie@kernel.org>
>> This patch landed in today's linux-next and I've noticed that it breaks
>> registration of VC4 DRM driver on Raspberry Pi3 boards (I've compiled
>> kernel from bcm2835_defconfig):
> I think I have an idea about what is going on. (good catch in the defer BTW)
>
> 1) Funny to see that the vc4-hdmi already registers several (3) ASoC
> components. It must have had warning about the debugfs entry before this patch.

Okay, right, before this patch there is a warning from debugfs I've 
missed (debugfs was not enabled in bcm2835_defconfig):

raspberrypi-firmware soc:firmware: Attached to firmware from 2019-07-09 
14:40
raspberrypi-clk raspberrypi-clk: CPU frequency range: min 600000000, max 
1200000000
debugfs: Directory '3f902000.hdmi' with parent 'vc4-hdmi' already present!
vc4_hdmi 3f902000.hdmi: vc4-hdmi-hifi <-> 3f902000.hdmi mapping ok
vc4-drm soc:gpu: bound 3f902000.hdmi (ops vc4_hdmi_ops)
vc4-drm soc:gpu: bound 3f806000.vec (ops vc4_vec_ops)
vc4-drm soc:gpu: bound 3f004000.txp (ops vc4_txp_ops)
vc4-drm soc:gpu: bound 3f400000.hvs (ops vc4_hvs_ops)
vc4-drm soc:gpu: bound 3f206000.pixelvalve (ops vc4_crtc_ops)
vc4-drm soc:gpu: bound 3f207000.pixelvalve (ops vc4_crtc_ops)
vc4-drm soc:gpu: bound 3f807000.pixelvalve (ops vc4_crtc_ops)
vc4-drm soc:gpu: bound 3fc00000.v3d (ops vc4_v3d_ops)

> 2) Let say that vc4 hdmi driver defers after the registration of the 2nd
> component (/drivers/gpu/drm/vc4/vc4-hdmi.c:1082). The devm callback of
> the 2nd component will run first and call
> snd_soc_unregister_component(). The catch is that this function
> unregisters all the components registered by the linux device so far.
>
> 3) Then the devm callback of the dma_engine will run
> snd_dmaengine_pcm_unregister()
> (sound/soc/soc-generic-dmaengine-pcm.c:466) and the lookup will not find
> the component dmaengine component since it is already unregistered. The
> function bails out and dmaengine_pcm_release_chan() is not run.
>
> 4) Next time the hdmi driver tries to probe, the it will fail to
> allocate the DMA channel because the sysfs entry already exists.
>
> I would suspect that any driver doing:
> 1) devm_snd_dmaengine_pcm_register()
> 2) devm_snd_soc_register_component()
> could be exposed to this issue, even before this patch.
> I don't really get is triggering the issue in this change.
>
> Maybe it would be better if the devm callback of
> devm_snd_soc_register_component() unregistered only the related component.

 > ...

Best regards
-- 
Marek Szyprowski, PhD
Samsung R&D Institute Poland


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
