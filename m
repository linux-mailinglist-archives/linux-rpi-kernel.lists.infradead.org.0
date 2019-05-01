Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFEE010C8F
	for <lists+linux-rpi-kernel@lfdr.de>; Wed,  1 May 2019 20:05:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=u9tkwaRhk1gOVV/rCtWlnVPR3Z96I4lixtzo3jkyfbs=; b=IAelEbOFza3ohAR5RlDZzoB0+Y
	lXRkVCoMkl5MWwrGWV8Hlpx4Tz1VXtX+EU2pY47MLiNc1aboYCwf8xjUgwoWOI1QCO2AcxPJUyEau
	OUlZFOoJ2VffR6Vv6QyTevFT0GqagMbeSQPLGk9IgkFrNneRTmpuUTJ5dTjXTIXXaT35FWAikjLoV
	4ZF3JkqkBEyRBTtaaAC9hG8bIwBgfVyZWEKZJnvxfWS5s9i3kMF9Gu4BUIf8jDAAINaaTTYYXE+2R
	H+GsigIIV/5skzin3vXujGmfntovCHK5i5ucQglLacoL+yNsWolQMwQlHHXHi+OGYh2PwB7TZx7HK
	5DgOKJuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLtbQ-00029M-6S; Wed, 01 May 2019 18:05:08 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLtbL-00011q-99
 for linux-rpi-kernel@lists.infradead.org; Wed, 01 May 2019 18:05:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1556733893;
 bh=pbnBnpNWXRtZ3EwSjvNTvBey4ElKPSMrfXIX9FEr5Es=;
 h=X-UI-Sender-Class:Subject:To:References:From:Date:In-Reply-To;
 b=fdea+z585RIcsgIgg7D/qRFoCe207JLdWu0JRdlLqyRGErbkYQ/TRbWMQDvJJXmcp
 Wq1URsd8gGxefNmdPgXeF0mUaJWoeUmzFmaYRR9yC4b6iYfHXAflX1C0KKI9hsXTJC
 dx2puYht0XOjF9RxQaX155bobCIdDQ/YraCYlsls=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.166] ([37.4.249.111]) by mail.gmx.com (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MrhUE-1h0s8P26RY-00nky1; Wed, 01
 May 2019 20:04:53 +0200
Subject: Re: dwc_otg disconnect IRQ storm/starvation crash
To: Florian Zumbiehl <florz@florz.de>, Stefan Wahren
 <stefan.wahren@i2se.com>, linux-rpi-kernel@lists.infradead.org,
 popcornmix <popcornmix@gmail.com>
References: <20190430014140.GI5152@florz.florz.de>
 <51166349-220c-6b85-dc22-44c9314810a8@i2se.com>
 <20190501171133.GJ5152@florz.florz.de>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <06d89ce2-0392-a7be-aa39-02618ad920e3@gmx.net>
Date: Wed, 1 May 2019 20:04:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190501171133.GJ5152@florz.florz.de>
Content-Language: en-US
X-Provags-ID: V03:K1:DqZHsKfeqvB7nIUhXUpLVELTvQtseaDYzcQIjKYsj7UJ1p417eu
 8gEav7Rm3fwbRD5P/rDwjxMIWRT7SFrusAOk0Kld0dsirOHsFSRfmazmrTygu686gf6X0jR
 YOBwu23Jkp1el1RxTaJzq2CUH1e5glxaQW4RkrLYOpnhY2Cgxonbp2AHQrZoOfIF8GEQGf3
 BYmjZntmfvKzBJjFp5sZQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:62kXcTMFOwA=:qBb3iH0o0b/Dn2jhcLal+M
 nXR1wDDXUHYun8Qz8VDGxPzVKXBYjDMC3RKYHfSY7p4YcXaIWAc1bCEMbfPbH3A7RseFG/MIN
 ptp9SQC8CnBLqEDzLWnZhYsag18/NomAzaWxVyXdv5TLtLN5DGokbbo6Qis9/lks74T24tbQP
 gMvqd1Q6MPXvIc62xRW4W5UjLHdTdescd1zoQb4x8/6uy3HYXF6BGYEG03bhbHEyMzgK8NdLG
 ugSQYtQizBJY72tJyQX97/jdqLc9McFXYMJhF5MNepb2RetbsKJbXQLOiG1nE1FaqeaHM/tdp
 U5KsohgCGI83DKZ0IbYKgwfvdncBo2i9ZUTz6/D37HmuJdCdNn+Wsfqnvos1+qwHm5muydOy0
 t3fSgzhaMeWjXY12m0cua8NXGkxSoTrrEPPSvYQFGSlwdKmtRyv99HLqZNVjqGGGlGmJh5njd
 lRAUckY9v5+SDMzjhf5FAhln9Zt4QdWkfdbAXcBAVgTBWOMGej7Ik5wsTUWT13GQ3MDcAu4yh
 bCXPPCS1sv7jvFGC+KlJtc/wi91L8oaNfHqF1Yn8C7kIOSt63x5xMJjtUVZzDSas3+HOcEDbo
 +khvcb1oA2TsRtF6ExrJkyxYLm5incuR4yq0fDttbOAE6C65AquOLXt1UELBPIHWUKhnQauEe
 oXbBGGpjSxb5hiCDGHfX60unTgsla04UBA9tlMKQv2YcFwNHGc/wVm8E/RYI5b4D5EZu1iUTb
 ZVwYNL/Bx3Sa27PmxLljm8Qeir/2KoITXq93NblguCkaGiiIvqO5qUp0HIOR5g/EkumYJmPTY
 8qfnebzgNLsfGBNAnt0Ga/Q7blcmdh6reI42vnJFwHJWWuJRZTUbuHuR0M9tiI/PYMl/4KwdA
 le9Y67PmnLoRvpEUm8+KQ1m2HiXnrVRY7tIYIQh9aVRArZBr6Q74ue2GG0VJEtFm0uCseKKV5
 Vd9LOF7Ngyw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_110503_760273_89DC04B1 
X-CRM114-Status: GOOD (  19.86  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.15.15 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-rpi-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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

Hi,

Am 01.05.19 um 19:11 schrieb Florian Zumbiehl:
> Hi,
>
>
>> Now you have two options:
>>
>> 1) Try to reproduce this issue with recent upstream kernel 5.0 / 5.1-rc7
>> and dwc2
> I just tried it using dwc2 on the RPF kernel (5.1-rc6, which I did the
> debugging on), and failed to provoke a crash--I suppose the vanilla kernel
> probably would behave the same?
the Foundation usually avoid changes to the upstream driver like dwc2,
so yes i would expect the same behavior.
>
> Also, dwc2 actually seems to generally be working fine on that kernel
> version. I previously had tried it on the kernel distributed with raspbian
> (4.14.98) and experienced enumeration failures and massive network
> (ethernet) delays, which is why I hadn't pursued that any further.
> Interestingly, I just tested it again with that kernel, and I noticed that
> those delays also correlate with having two TTYs on that LTE stick open:
> Close one of the FDs and everything behaves normally, open both and ping
> latency on some packets spikes to a second or more.
Yes, there has been a lot of improvements to dwc2 until 4.19. Since
enabling the microframe scheduler the enumeration issue should be fixed.
>
> So, I guess I'll just stick with dwc2 on a bleeding edge kernel and see how
> that goes. It's just that throughput on the SPI-connected ENC28J60
> interface is considerably slower (~ 3 Mbit/s vs. ~ 5 Mbit/s) with that
> kernel version (independently of the USB HC driver being used). Is that
> likely to be an RPF thing, or probably upstream as well? It's not really a
> problem for me, I'm just wondering whether I should investigate that
> further ...
Hard to tell, since you can't even compare rpi-4.14 with linux-4.14.
Also the RPF tree has some optimizations. Did you properly enabled DMA
in the upstream case?
>
> Also, more generally, what's the status of vanilla kernel on a Raspberry
> Pi 1? What I could find on the web seemed to only cover Pi 2 and 3--did I
> miss anything? I certainly wouldn't mind switching to an upstream kernel if
> that is feasible ...

I believe we will never reach that 100%, but we are still trying.
Unfortunately a lot of websites are outdated e.g. elinux.org.

Here some recent resources [1], [2].

Regards Stefan

[1] - https://www.raspberrypi.org/forums/viewtopic.php?f=71&t=236568

[2] - https://github.com/raspberrypi/linux/wiki/Upstreaming#history

>
>> 2) Report this issue to the RPF [1]
> [...]
>> [1] - https://github.com/raspberrypi/linux/issues
> Erm, yeah, thanks, but no, thanks ;-)
>
> Regards, Florian
>
> _______________________________________________
> linux-rpi-kernel mailing list
> linux-rpi-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
