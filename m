Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E10771135FA
	for <lists+linux-rpi-kernel@lfdr.de>; Wed,  4 Dec 2019 20:53:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+VDxuyWQCk4ghsidE/JqYKwBx8PNV1uOu9g6yLO500s=; b=YQYqRKIuOw8XGS
	CNxiSSWm5RRWWDclIJhCPFTB4TFLaL5ywCtGv6h15Msa48Eg62z3DPJy2bMQTGmHFE7oSSMU7WjJk
	Ne4E/cvauVaiSNx3hpb8fJiMR9YhGU0tDO6yeMW7Bj7qC2Bx8ID6/w5zi0sztmapOGKGskDGyVM3v
	vAMDVrBaCJr/7Ugyz6CAOrkUv31VUKxzdNtAbyZq+kt3/ipkqnkADEbmjJYHhwOo1/q33wI5nxQd9
	MsLltMsl2chAEz0DkO57m28+BfSgeyKS0DnEtyYNCaqhVi6Dp/60uVTYv91W/WtOr4lcWRB3Qz8UA
	8+Rop6MW0u7AH4E4ZvQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icaho-0007Ru-IM; Wed, 04 Dec 2019 19:53:00 +0000
Received: from mout.gmx.net ([212.227.15.19])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icahl-0007RH-9x
 for linux-rpi-kernel@lists.infradead.org; Wed, 04 Dec 2019 19:52:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1575489171;
 bh=QVrzI5S+bWp6NbvMQtrTI6yu+S+Z0WqoVu67WgYLFEo=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=RJyyXL0cMVrVaeJ9G0np074CjuJuJIQ7VTicZRW5xz8FOzkahTvR29w8Jjzq+Zk7S
 +lhVfW2kgufYcnVhp32keXANEH1OS2ud6DsdMs2az4SpWWbMpNUftHhH2o7F6amgiQ
 5tqYVMocl5JCJpH79N4spaXKzSeB6cQOZo5By5oU=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.176] ([37.4.249.163]) by mail.gmx.com (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1M89Gj-1ihpcu0kxH-005IPR; Wed, 04
 Dec 2019 20:52:51 +0100
Subject: Re: Raspberry Pi Kernel Contributing
To: Stephen Brennan <stephen@brennan.io>
References: <BYWGM3UIMECN.2LBM56ZYRCANU@pride>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <56b727cd-d5f9-2ae5-ce21-0bc7834b2400@gmx.net>
Date: Wed, 4 Dec 2019 20:52:49 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <BYWGM3UIMECN.2LBM56ZYRCANU@pride>
Content-Language: en-US
X-Provags-ID: V03:K1:CfhjzTDB1q5Itxmg+/DR+LcYDJjLaKo/knu7Z4gCekF0fCL03oO
 x1esFsEZ3/615DyEWYVrkQAvSqHPNZouNBkTIe7TeVRvjc5P8FoLd6cdr2w4FdlcEagZLi0
 DWuyYyknfK1oEYQQXf3cakLWAOblsOde2fl9eTuB9H+b83lF/itUkPRDS8tHNrkSLWOMDAR
 3k0bNe8XKdde1gDcEdVZg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:+hmJkv7rKKI=:yHkEW5ybHtl98WP7S2tlYQ
 1u81gJLjugx6aNlKIfkwkASdPrRyfjRa2qll9DLR/lSwxBMDKm4dV+aVr1RgQUha1ERy9U3Tj
 kOezCZUx8oky2lc0ferSEviRPIU8Zw17ijGjC3Rh6QZGfgL1I0ZyRV6ZhFGh3AVvTM4ksVNXP
 tXjx4PBswrYSHbH4EunB72zY4NGznxOJm7Kj5GidBQqfq/HgEIgXWy+16Hm5Bhdp/fYFhi5n/
 8K/gnW/ayIdMquB+tu8/BwTc5RohhiU0IbLx3FLJ4ilnlTmLb2zu8z2Wy4hIRzIZQKoOc8+zY
 jXg1bd2a3EOzeG3RsPXp4MNhw7zR7asMSAHxi44NMyy4AJkiiaNaLKr0BwoWXCzSNz8i2lA81
 nfY3uKM2gOZMR+A2kHA5b6vbo0lQYrRkEhMegNLpCxSXPBBW5272m1gDGtxf9Qa8hrQja8ySW
 XpcoktbWuWe5Dz8EIgzP0+ISwVvpl/S0M4EvV1m4lXP3/BJQmmXxfacuoG+CznzzvFYKtyESm
 CK4RS9gy5C6tcFcnN3/14mGF1ZdpTtOp9AOhQ/M8OZevWYvXoMvhQwLEx5FNsv7Arovlr8JGW
 UFk2nUu1y3FrSuAWg3yqX7iSD8NAMi1qZ1fLuAZI053FvhJ9lwF6RQyK0Py0RQv2PzP4/TOPZ
 HHh7QqC2HGRVz5pLohE+ZEsYeI0u3bKZUd4TsXR8dOPYEvCjZ1wnNe43AOBOaFvjWx85Wez35
 lBWj0QD9GivK7BJ+NNd4+eTRNOFt0a3Qx1XdPHSkEHSMmr0tqyORYgwWOTPKg+fQadUaCKtzZ
 r0GjF62ajCPzCWJHFR6u31m0AJKAjlgfS025TXySS7kdLzPe38PbqpMHhDaAkKcKlwMv0RvO+
 ZM6aEERC54gMjVN6TSzmJiqN1SDYP4zoRWQIAl8ZcNU/4AcUbxegz1+8eVOw903m5F2xFiMx0
 XvfIFuTxCCMrRqDtbDHAmb1MU145VE+8PdXh1K4diLfZo8gtxpZaqFpKDVRrvWNhOwAVcuEVn
 KfFmeUrN5nDTfYvJ/u6WkLfx+SLQZfy8ByViikFbfG9XUVLCAIa/WPvNpjwQQbFldVke8xQs0
 LcdA9rSlDwBZbQTmgjb/RiHGdirIZ/VqJ9K2porjrVU59Y21eP1QtF6FNMpzUP/ywjEYF5lcR
 5kRd3OdFOYFFjWWbXLKrfThSOsB6rcudqJKRgZ5iAhzCUM7v8iIeBqLjhAYx+w8IWmQGAANsy
 Zn2JTOsgQQlLofkaNWtms+HzcLwURgW5881Qu8X0yIbyb4jjQuBaMbpVXTIA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_115257_638669_DFC53F50 
X-CRM114-Status: GOOD (  20.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Am 04.12.19 um 08:35 schrieb Stephen Brennan:
> Hi Stefan, and also Florian since I know you've handed off maintainership,
i want to mention that Nicolas take over the BCM2835 maintainership.
>
> On Wed Nov 13, 2019 at 8:09 AM, Stefan Wahren wrote:
>> Am 12.11.19 um 09:00 schrieb Stephen Brennan:
>>>  I also see some work related to the BCM2711 SOC for the
>>> Raspberry Pi 4, which I doubt I know enough to help with. I did a diff to see
>>> what could be upstreamed:
>>>
>>>     git diff --numstat v5.4-rc7..rpi/rpi-5.4.y
>> The better source for upstreaming of RPi 4 is here [2]. A lot of
>> downstream patches are hacks and not suitable for mainline. So
>> upstreaming is sometimes much more work than simply a resend of those
>> patches. But there still a lot of lower fruits. A good example is the
>> hwrng support for the bcm2711.
> [snip]
>> [2] - https://github.com/lategoodbye/rpi-zero/issues/43
> I'm looking back at the upstreaming status and noticed two unclaimed
> components - spi and bcm2835-power.
this list is not complete. So these two are not the only missing ones. I
tried to extend it based on current rpi-5.4.y.
>  I wonder if there is any pointer to
> what needs to be done for these, or some documentation on the underlying
> hardware?
Yes, we all are still waiting for the BCM2711 datasheet or at least a
memory map. This would be a nice christmas present ;-)
>
> For bcm2835-power the main relevant commit I see is c1ee74bff379 ("soc:
> bcm: bcm2835-pm: Add support for 2711.").
Correct, but this one not ready for upstream submission. I think this
was more a hack to get V3D running on RPi 4. A proper approach needs a
new compatible like brcm,bcm2711-pm|.|
>  For spi I'm not sure where to
> look, I see a few commits but nothing particularly relevant to Pi 4.

Please look at this patch and the discussion:

https://patchwork.kernel.org/patch/11048251/

>
> I'm happy to try to take on anything which you may not have time for, but
> I'm sorry in advance that I may need a few pointers to get me started.

Thanks for your help!

Stefan

>
> Thanks for your continued help!
> Stephen
>

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
