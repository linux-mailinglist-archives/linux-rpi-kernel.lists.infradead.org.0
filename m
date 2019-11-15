Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94901FE549
	for <lists+linux-rpi-kernel@lfdr.de>; Fri, 15 Nov 2019 19:51:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gc95L1o9SLKds7i48QtF9M8Qbg4vjSnKMg2hDlKkoEU=; b=lM59Tc8qT4Cy8z
	NxI7zqXQh7lwQPeUwOZD+kA+yC5qbzOQIhcSJUI1DMnaKDpq93mz0sbKmHF8E366I2WGsMkDQncaj
	n/vN8j9fIQxi48ZNfdNavbn5JnA26Ao7FfBYlbxMtjBjQ0Oe2CeaAP8It6UW9xBIG8XXBQ6Rtu3Ae
	v9pSzU0FIuC/4VarTSiMgeV2Ro0kku6b0d0ZC8MW3gCchdBv9SR6OZmypZikMVJUcOE3IbIB/O2G0
	jsTdNy+U9JUm6T+kjAiBfEX7nsEJ/vtrBcDZOCmvn7mPrRrEaC2LxjH+JvSfzr8ZaS6graylpEQv3
	X80z3ty1z46hFMEfj+gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVggP-0001rL-5K; Fri, 15 Nov 2019 18:51:01 +0000
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVggL-0001qh-TN
 for linux-rpi-kernel@lists.infradead.org; Fri, 15 Nov 2019 18:50:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1573843845;
 bh=t5KkWTPz1H/48UIg9fRHHctJG/uGxjWUnQU+RH8flqk=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=WDXa8FPIrkB+VIYULBcQveR9TKI4Ga39uLwBGbbMn+fAoQL54zD4JyZWOi20LJBYr
 kFAdqpzTlkQ6+B8NDxqUsQkWhSWJPYzvXy2ORPNn+dBJo7JcWdyVJ9PmtQPNqHTCu6
 UC1zuQp856puP3LXx+jKry0kt55u3imsT2liLZg0=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.173] ([37.4.249.102]) by mail.gmx.com (mrgmx104
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1M8QS8-1ia4Or2VyS-004Vnp; Fri, 15
 Nov 2019 19:50:45 +0100
Subject: Re: Raspberry Pi Kernel Contributing
To: Stephen Brennan <stephen@brennan.io>
References: <BYGDNQDD7EAM.38INTCINFU0O8@pride>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <c79b8c70-17f5-4272-5855-756a0d8da3e0@gmx.net>
Date: Fri, 15 Nov 2019 19:50:43 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <BYGDNQDD7EAM.38INTCINFU0O8@pride>
Content-Language: en-US
X-Provags-ID: V03:K1:G7eZHHDPLGb0MY2KLZltLzeeFW6FHKXqRCzalrJpZdC1SAwMgTo
 S6SB0T5C0t4HK5l8BUwFumKx4sXAFC2eDrRe1lrpVMXB0WVfivZ8skBdANJk2cm6PwGklee
 619UfRKq2lmKZo/IzZGmQ8I/cW41SfGfQ+jSHoP0X2lVxuXUgzPJ7Eg3k8x3zZkAbyBIgys
 LGFSHS38Y5xZab7vENojg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:FB6Xyax5Rhs=:ogNiRtiedmLbe69dEvuTF3
 RL+Y5ej94UOxI+uQE9dBmVfkSu+zJMjrogbvZ/+voC7YYHxq+2PA++45XFlUH/VO7pLE9VTjB
 bCTBMXesE3Qc0J5hMtLC3FkLodtZ6iQY2HMK/VaJQG6sNqMHnGtg7bcZOv0jKGbY8J+8b+x9c
 q5HPEay/wDXele6frKcK5vOMLfmhiED0rEj5Co/DXPvkFUXTcuIrIETjfgKuR8+UOmNBl9zDj
 szcCTZptbPxSfOVPpV8kUFUJhy7DeY6mGiMGer/Ou+cfI5dF7sDdFGrdDkOFiZHxBoH6jLcei
 K8FyG7LsaEFd3Y4MU0rhsQKrubNvqe4PVQe/2T5h8WV2lp4MTmRgoMyiXi7Rhr/z8TdbGwWNh
 yAUSt+m8qodX8DznSuoKAsdi7ScrbRxcls4/JQrs/5tKo2HULVHFervh/uBjCkZabMocthuaV
 wgpf7tqqOZ1N41okAXtODu6dWdWIDrhg3yvLMyTmEporm0nqzuseY8AX2XwyT7u2NdxnTvknq
 TNr85u/nJxjDvkjNLS/DGYUIJUfpEZgWtgZzfPrtxWm3GLpycWIcScj3PnWdiuk3cp1j2Uj7w
 EBbNLfyckGtGUQqNvzt8gDqFclD4mTEyP2+ieY5zR4SwA3tGB7R/Bj997ms4EBLyfL+r+nIAJ
 QRnlwb2AsbweVEyYXeLPr0G40T8J24biC2as+NRq0fce+HJ4ELG4gt+oNnBaDaAtN2gRYjFNg
 NYF2CUg1HAuFInyiufRfIi7QKzjNjd9J+UtncoDb344h15qSnS+8izgwpJ4w9qVWyj8Al2WGk
 J0ETxm32syqS7bdTFThaHD1+Trmn3zVkBf0ZX5k318b1t4zrY5wUADLs4KgYqHIePjIkjxWsT
 5MjHX4vap48JuCw6MDZ8ZB6P8YzXamPOIZu/9283udiUKSejnV5ipP2qnX2N0ypLyTasJyZpC
 ScLd6ip3DKJyfY+UnWQfInCmR+RFNgHPm62SJ58pPhaXDZ6x3CuuXl7q7ghCa+D+llCo9cjEP
 IOiMW7G3vZjLsRr/9RUx3qbGm+Z1Ls/801GnbwREtlczG4Zrn3UwWLVJhxQksVjDljKLDU6Hl
 zNFFOLDw4zdXj3KC3DqT7npNYxB9hdUfhW6dXDYYIw2LVK6A6J1qmhpaR8Z0kWCNA9KWU3uoR
 yuMdzQ7hRkDjiwFk9bhz88JCNUyxF8cD2Bbq9RSaTBhNXdjhAYkSLBVO63ipSyBPtjSMrJoSY
 F7dbM5R8KXTthuItRwMlpvlCSv9HzWEwaQPaaBrBl0IN5Ke0oz2j0ErMWCxk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_105058_279993_459EFF09 
X-CRM114-Status: GOOD (  17.14  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.21 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Hi Stephen,

Am 15.11.19 um 10:53 schrieb Stephen Brennan:
> Hi Stefan,
>
> Thanks for taking the time to share your advice and thoughts on the
> project, I really appreciate it!
>
>>>  From the resources I've seen (e.g. the
>>> topic of #raspberrypi-kernel on Freenode [1]), upstreaming the raspberrypi/linux
>>> tree seems to be a goal.
>> Not exactly. I see the priorities for the mainline support differently.
>> In the vendor tree everything is optimized to the RPi and its usability.
>> Sometimes this violates portability or security aspects. So in upstream
>> we don't want performance at all cost. This is the reason why we use the
>> dwc2 USB host driver and not dwc_otg.
> That's a more nuanced approach which makes a lot more sense!
>
>> The RPi should be integrated to the other ARM platforms and behave like
>> them. An example for this is the recommend usage of GPIO labels instead
>> of the deprecated sysfs.
>>
>>
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
> I've started looking into this. I haven't found too many technical
> references on the iProc RNG200. That said, I've gotten my kernel dev setup
> for the Pi 4B and I'm going to try applying the diff to the upstream kernel
> and see what happens.

no need to do this. Just rebase my branch:

https://github.com/lategoodbye/rpi-zero/tree/bcm2711-hwrng

I currently don't have the time to take care of it.

Regards
Stefan

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
