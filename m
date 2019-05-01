Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B52CE10CC7
	for <lists+linux-rpi-kernel@lfdr.de>; Wed,  1 May 2019 20:39:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vTofgHsHAQHttyJgTpjfP5w0qBLqygkj1I5cK4ARdvM=; b=nLelfwhs/UeTqm
	aD/cypVIRXnXRtArW6reVKzHlAGh8D+p85C+PcDi970gW+13qn2sqwYCTpyXzbLVRRzrx4gHff/N+
	HyfzhBkLB2q4Gc0kRp78MkMT1l/v9mSjflDhmAy86FGEHDzgW4IB4v8xP0euPvVMmTTUUKHazwwlx
	L8Ik56Wjg34uAfVdbAasUo/CFXzpqEClNAokr3Zo0P3YTaPn+ZrrhpQbuNfF6sYJz7Dv31j2JhKVB
	JzXjETCwJUqKTFlCOj/3APegaGMATvtAO/bzNquFGKP4vb4TSbUF1MIitV2ImLxF2uV0Og/WfiI2x
	QB9O69R2pD7rFYuqqO9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLu8L-0003Oy-W0; Wed, 01 May 2019 18:39:09 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLu8H-0003OM-C5
 for linux-rpi-kernel@lists.infradead.org; Wed, 01 May 2019 18:39:08 +0000
Received: from [192.168.1.166] ([37.4.249.111]) by mrelayeu.kundenserver.de
 (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1N17gw-1gc1SI2R2I-012W2a; Wed, 01 May 2019 20:39:00 +0200
Subject: Re: dwc_otg disconnect IRQ storm/starvation crash
To: Lukas Wunner <lukas@wunner.de>
References: <20190430014140.GI5152@florz.florz.de>
 <51166349-220c-6b85-dc22-44c9314810a8@i2se.com>
 <20190501171133.GJ5152@florz.florz.de>
 <20190501173809.tjjl7valdb3vu4yv@wunner.de>
 <47e0d4c2-1d20-f353-2d2d-9f901c1323e5@i2se.com>
 <20190501182142.ngxyid73xtyz7vyl@wunner.de>
From: Stefan Wahren <stefan.wahren@i2se.com>
Openpgp: preference=signencrypt
Autocrypt: addr=stefan.wahren@i2se.com; keydata=
 xsFNBFt6gBMBEACub/pBevHxbvJefyZG32JINmn2bsEPX25V6fejmyYwmCGKjFtL/DoUMEVH
 DxCJ47BMXo344fHV1C3AnudgN1BehLoBtLHxmneCzgH3KcPtWW7ptj4GtJv9CQDZy27SKoEP
 xyaI8CF0ygRxJc72M9I9wmsPZ5bUHsLuYWMqQ7JcRmPs6D8gBkk+8/yngEyNExwxJpR1ylj5
 bjxWDHyYQvuJ5LzZKuO9LB3lXVsc4bqXEjc6VFuZFCCk/syio/Yhse8N+Qsx7MQagz4wKUkQ
 QbfXg1VqkTnAivXs42VnIkmu5gzIw/0tRJv50FRhHhxpyKAI8B8nhN8Qvx7MVkPc5vDfd3uG
 YW47JPhVQBcUwJwNk/49F9eAvg2mtMPFnFORkWURvP+G6FJfm6+CvOv7YfP1uewAi4ln+JO1
 g+gjVIWl/WJpy0nTipdfeH9dHkgSifQunYcucisMyoRbF955tCgkEY9EMEdY1t8iGDiCgX6s
 50LHbi3k453uacpxfQXSaAwPksl8MkCOsv2eEr4INCHYQDyZiclBuuCg8ENbR6AGVtZSPcQb
 enzSzKRZoO9CaqID+favLiB/dhzmHA+9bgIhmXfvXRLDZze8po1dyt3E1shXiddZPA8NuJVz
 EIt2lmI6V8pZDpn221rfKjivRQiaos54TgZjjMYI7nnJ7e6xzwARAQABzSlTdGVmYW4gV2Fo
 cmVuIDxzdGVmYW4ud2FocmVuQGluLXRlY2guY29tPsLBdwQTAQgAIQUCXIdehwIbAwULCQgH
 AgYVCAkKCwIEFgIDAQIeAQIXgAAKCRCUgewPEZDy2yHTD/9UF7QlDkGxzQ7AaCI6N95iQf8/
 1oSUaDNu2Y6IK+DzQpb1TbTOr3VJwwY8a3OWz5NLSOLMWeVxt+osMmlQIGubD3ODZJ8izPlG
 /JrNt5zSdmN5IA5f3esWWQVKvghZAgTDqdpv+ZHW2EmxnAJ1uLFXXeQd3UZcC5r3/g/vSaMo
 9xek3J5mNuDm71lEWsAs/BAcFc+ynLhxwBWBWwsvwR8bHtJ5DOMWvaKuDskpIGFUe/Kb2B+j
 ravQ3Tn6s/HqJM0cexSHz5pe+0sGvP+t9J7234BFQweFExriey8UIxOr4XAbaabSryYnU/zV
 H9U1i2AIQZMWJAevCvVgQ/U+NeRhXude9YUmDMDo2sB2VAFEAqiF2QUHPA2m8a7EO3yfL4rM
 k0iHzLIKvh6/rH8QCY8i3XxTNL9iCLzBWu/NOnCAbS+zlvLZaiSMh5EfuxTtv4PlVdEjf62P
 +ZHID16gUDwEmazLAMrx666jH5kuUCTVymbL0TvB+6L6ARl8ANyM4ADmkWkpyM22kCuISYAE
 fQR3uWXZ9YgxaPMqbV+wBrhJg4HaN6C6xTqGv3r4B2aqb77/CVoRJ1Z9cpHCwiOzIaAmvyzP
 U6MxCDXZ8FgYlT4v23G5imJP2zgX5s+F6ACUJ9UQPD0uTf+J9Da2r+skh/sWOnZ+ycoHNBQv
 ocZENAHQf87BTQRbeoATARAA2Hd0fsDVK72RLSDHby0OhgDcDlVBM2M+hYYpO3fX1r++shiq
 PKCHVAsQ5bxe7HmJimHa4KKYs2kv/mlt/CauCJ//pmcycBM7GvwnKzmuXzuAGmVTZC6WR5Lk
 akFrtHOzVmsEGpNv5Rc9l6HYFpLkbSkVi5SPQZJy+EMgMCFgjrZfVF6yotwE1af7HNtMhNPa
 LDN1oUKF5j+RyRg5iwJuCDknHjwBQV4pgw2/5vS8A7ZQv2MbW/TLEypKXif78IhgAzXtE2Xr
 M1n/o6ZH71oRFFKOz42lFdzdrSX0YsqXgHCX5gItLfqzj1psMa9o1eiNTEm1dVQrTqnys0l1
 8oalRNswYlQmnYBwpwCkaTHLMHwKfGBbo5dLPEshtVowI6nsgqLTyQHmqHYqUZYIpigmmC3S
 wBWY1V6ffUEmkqpAACEnL4/gUgn7yQ/5d0seqnAq2pSBHMUUoCcTzEQUWVkiDv3Rk7hTFmhT
 sMq78xv2XRsXMR6yQhSTPFZCYDUExElEsSo9FWHWr6zHyYcc8qDLFvG9FPhmQuT2s9Blx6gI
 323GnEq1lwWPJVzP4jQkJKIAXwFpv+W8CWLqzDWOvdlrDaTaVMscFTeH5W6Uprl65jqFQGMp
 cRGCs8GCUW13H0IyOtQtwWXA4ny+SL81pviAmaSXU8laKaRu91VOVaF9f4sAEQEAAcLBXwQY
 AQIACQUCW3qAEwIbDAAKCRCUgewPEZDy2+oXD/9cHHRkBZOfkmSq14Svx062PtU0KV470TSn
 p/jWoYJnKIw3G0mXIRgrtH2dPwpIgVjsYyRSVMKmSpt5ZrDf9NtTbNWgk8VoLeZzYEo+J3oP
 qFrTMs3aYYv7e4+JK695YnmQ+mOD9nia915tr5AZj95UfSTlyUmyic1d8ovsf1fP7XCUVRFc
 RjfNfDF1oL/pDgMP5GZ2OwaTejmyCuHjM8IR1CiavBpYDmBnTYk7Pthy6atWvYl0fy/CqajT
 Ksx7+p9xziu8ZfVX+iKBCc+He+EDEdGIDhvNZ/IQHfOB2PUXWGS+s9FNTxr/A6nLGXnA9Y6w
 93iPdYIwxS7KXLoKJee10DjlzsYsRflFOW0ZOiSihICXiQV1uqM6tzFG9gtRcius5UAthWaO
 1OwUSCQmfCOm4fvMIJIA9rxtoS6OqRQciF3crmo0rJCtN2awZfgi8XEif7d6hjv0EKM9XZoi
 AZYZD+/iLm5TaKWN6oGIti0VjJv8ZZOZOfCb6vqFIkJW+aOu4orTLFMz28aoU3QyWpNC8FFm
 dYsVua8s6gN1NIa6y3qa/ZB8bA/iky59AEz4iDIRrgUzMEg8Ak7Tfm1KiYeiTtBDCo25BvXj
 bqsyxkQD1nkRm6FAVzEuOPIe8JuqW2xD9ixGYvjU5hkRgJp3gP5b+cnG3LPqquQ2E6goKUML AQ==
Message-ID: <874c3dc5-c57f-6373-fc23-e6a95c2705ff@i2se.com>
Date: Wed, 1 May 2019 20:39:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190501182142.ngxyid73xtyz7vyl@wunner.de>
Content-Language: en-US
X-Provags-ID: V03:K1:lONiFzMnBkGrNvkNIj6oCCPgDmi3sDBpcRvvfSs3fzKjA757uGR
 W4oMlX75nyk221gSRmYoa+bFd931SPNuhxzWLJuuLhWh4HG4/A+KDv41Qma8fC1OplLA91Q
 lJUYCG13yqBtWVVZ67dxU83cydTZAYCqJaP2trwMITkL1yYdl6l687PbcF/AyCoQTPP3OeB
 c3DrJIhNZXpCLmlgnfm3A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:xyspjCV4lno=:VmQgoRpQMbAzoviJsNaYkT
 CILLUx44Xks459qeLsSijEztgAcqD2sYE3r/ZAiKIeY1Aoq+vzZopzv6G178nFtgk49dtELz5
 C/6yMbFXj4qxGQUxvTSyKPJBRu7IYOQ7RWtQ4i7ySEDjJM1oWkdsQjmjopJNgFY1uk4811HLM
 VNs7q09Zb3udjggmyuRkaqGptRa8VvCXDJNxqVecDXaJYOREKMTwq1iRxaH6rDoT7sxFFAPD/
 E/m7auQMun59xFimOVd3rvwrsY4mz10l9paesP0w5TUw8YDWNTAG1ozVguMq976LlDkEJb8RZ
 nRGV/NwqvStplQW8YD/E9HxPXBk5Am0g0+eshh6MrJ3lR8Nuy74OQfG3w6+kynSUBnN3BhQjO
 XMwf8la4m6LsS3yYrBcac7+zMeo658JlnMrLXcB0cvO9AXSrp4N/IARxsLHWRdV5zvJQI6Dot
 G83lb1dKpGgMDcadaGnBiGI34svxa8yRxebv1MtWQeWE2z5Fg1SA50KaS3h9vmHlw7SsnAF5F
 Cvph1xdquyGxvraEH7ghPQ9xIFLVvGAKW0kC2c7yiBbz8MrgXQYa4DHvqR6Enj5h00p/CKNM+
 SVII9Rf4I+BGGnX/aFHYs/tWZF/Lo3mTj00dt9CwayIUCX+iz0j5zTwU1HSiMb37FXbQ7UpVv
 OvGpB6fc2J+0Wpf7Yph6//V/x0SeJsS9LhFJZ/Kuhu37jP4jo8A9JpjMYl7XALOkaQG4NMWcY
 4t0NhGZ11qga/YuaVtvGKi2S/Eb7A9E2aO4ye/aUqQwn87AeAyRGMnwXDWk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_113907_362887_F0C1037E 
X-CRM114-Status: GOOD (  13.08  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

Am 01.05.19 um 20:21 schrieb Lukas Wunner:
> On Wed, May 01, 2019 at 08:17:23PM +0200, Stefan Wahren wrote:
>> Am 01.05.19 um 19:38 schrieb Lukas Wunner:
>>> -- >8 --
>>> Subject: [PATCH] ARM: bcm283x: Enable DMA support for SPI controller
>>>
>>> Without this, the driver for the BCM2835 SPI controller uses interrupt
>>> mode instead of DMA mode, incurring a significant performance penalty.
>>> The Foundation's device tree has had these attributes for years in
>>> bcm270x.dtsi, but for some reason they were never upstreamed.
>>>
>>> Signed-off-by: Lukas Wunner <lukas@wunner.de>
>> How about sending a proper patch to take it for the next release?
> Is this not a proper patch? :-) It can be applied with git am --scissors.

The content is fine, but it should be send to all people / lists to give
them a chance to comment. The broadcom guys won't expect such changes
here. Also finding this patch later would be more complicated.

> However I'm not even sure bcm283x.dtsi is the correct file.  Why is
> there a separate bcm270x.dtsi in the Foundation's repo?

In most case bcm283x stands for upstream and bcm27xx for downstream. So
the bcm27xx files usually contains the Foundation extensions.

Regards

>
> Thanks,
>
> Lukas


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
