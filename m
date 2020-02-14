Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 163CA15D50D
	for <lists+linux-rpi-kernel@lfdr.de>; Fri, 14 Feb 2020 10:56:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Txdm1IbwqOpKIBZ6smoASsZznJPUxZOIeUGbvqAkgqk=; b=DzCfUQSljKBJ8TKikZ8m45JlR
	u2M0JuhSAGPIL/ouMMMbrnzRl2g1V6PMSgweh77cZwECOJSnQyTCICjx+gPJAgJiX78YktzjeNU2y
	kJ+oUJInCENJZksMAfY86NQNuOtruXMsBWhh+EVlT9bbk5CnAYw+ptVe35lGoGXAkylK7NIEc1D7c
	DT5hdoEp/q8ZiSqGiQnqlWR0sF+Ttt64s3i8NJz53qHJtVe0h7eVEhNdmHqJnYQzE+w1DTbV8+jKp
	HJkx4lIXMvNXSjQNjWixyzh1F4AnRgx08kkMvd95MrR3qtuacu1UwpGdwIF2SIshQRIqelx3+IZBK
	UHx+JpkuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2XiL-0001GW-BB; Fri, 14 Feb 2020 09:56:49 +0000
Received: from smtpng1.m.smailru.net ([94.100.181.251])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2XiH-0001Fz-EO
 for linux-rpi-kernel@lists.infradead.org; Fri, 14 Feb 2020 09:56:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=orpaltech.com; s=mailru; 
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject;
 bh=QgjoiChfHiaJZ5dheZak5rI9b+/Lm2I0vtEJ9f9ygs8=; 
 b=n3Mj58CqCIb9Blx3Zo0o3WeRQr1XE4hx3AlxPrKsa4qGCX62uIcgx/yiiLlsykJJNeltRrb9nf7Yg2A/QdANSwq/J1JDzE2pqVZDdlvLnKDhgxfVR17YkCbMh8XUcBgJNyKvUbZRx9nkUbS9H5PHaSxN2ZYYdphlawScyKQBwew=;
Received: by smtpng1.m.smailru.net with esmtpa (envelope-from
 <ssuloev@orpaltech.com>)
 id 1j2XiC-0003Ri-G0; Fri, 14 Feb 2020 12:56:41 +0300
Subject: Re: bcm2835 SPI issue
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Phil Elwell <phil@raspberrypi.com>
References: <4172f542-71a8-0186-fe4c-29a8148b7844@orpaltech.com>
 <09f2d0fd-19bc-0884-2f78-b0143f3279ef@raspberrypi.com>
 <e51f3e59-0915-27b7-05a1-e1a2fb8c10d0@orpaltech.com>
 <cf8c2169-7987-5b82-1533-d9a34cd09b41@raspberrypi.com>
 <2b973c0c-08ec-8b6a-1a97-4d676fdb2dc6@orpaltech.com>
 <a878deeefca46e0b9cba601d8ac2a76e2470addc.camel@suse.de>
From: Sergey Suloev <ssuloev@orpaltech.com>
Message-ID: <c5325860-6f5b-c5c0-ffc3-742fe591d870@orpaltech.com>
Date: Fri, 14 Feb 2020 12:56:39 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <a878deeefca46e0b9cba601d8ac2a76e2470addc.camel@suse.de>
Content-Language: en-US
Authentication-Results: smtpng1.m.smailru.net;
 auth=pass smtp.auth=ssuloev@orpaltech.com
 smtp.mailfrom=ssuloev@orpaltech.com
X-7564579A: B8F34718100C35BD
X-77F55803: 0A44E481635329DB0E1AA8A03B392317F65658A2B47C0803F01F5B95D76963831F665E924DD030F2F688BCB05C26794D47A71ACEB2803AEA1EECBA26492EC0B0FE41E7A294BA18AB50369C00C7062A20
X-7FA49CB5: 0D63561A33F958A51B2C6FCD0DBA1C791D1EF45D9D70B211EE71801C84B6FC9B8941B15DA834481FA18204E546F3947C86A7C529F68B8E5CF6B57BC7E64490618DEB871D839B7333395957E7521B51C2545D4CF71C94A83E9FA2833FD35BB23D27C277FBC8AE2E8B974A882099E279BDA471835C12D1D977C4224003CC836476C0CAF46E325F83A522CA9DD8327EE4930A3850AC1BE2E735B58781B77DE60D36C4224003CC836476C0CAF46E325F83A50BF2EBBBDD9D6B0F05F538519369F3743B503F486389A921A5CC5B56E945C8DA
X-D57D3AED: Y8kq8+OzVoxvgW9Op3aR8Fxwo7H2ZNxGP5qz8aO2mjTJzjHGC4ogvVuzB3zfVUBtENeZ6b5av1fnCBE34JUDkaJinJwwHx5ysVv9/YfT9ucHzdFdgtlbdA==
X-Mailru-Sender: 689FA8AB762F73930799C7A3FA23A2709C5A414751C94D5E65548775EA0699C6778B5FB1219D8779F6BCD4B1DE95BF653AE5922765F965CDF1D7D1B96E5495AE10FCEA6DFE3E0A150D4ABDE8C577C2ED
X-Mras: Ok
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_015645_671317_8CF95BF7 
X-CRM114-Status: GOOD (  17.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [94.100.181.251 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

Hi, Nicolas,

On 2/14/20 11:50 AM, Nicolas Saenz Julienne wrote:
> Hi Sergey,
>
> On Fri, 2020-02-14 at 01:58 +0300, Sergey Suloev wrote:
>> hi, Phil,
>>
>> On 2/14/20 1:45 AM, Phil Elwell wrote:
>>> Hi Sergey,
>>>
>>> On 13/02/2020 22:37, Sergey Suloev wrote:
>>>> hi, Phil,
>>>>
>>>> On 2/14/20 1:22 AM, Phil Elwell wrote:
>>>>> Hi Sergey,
>>>>>
>>>>> On 13/02/2020 22:09, Sergey Suloev wrote:
>>>>>> hi, Nicolas,
>>>>>>
>>>>>> I noticed that bcm2835  SPI driver  isn't functioning anymore in
>>>>>> kernels 5.5 - 5.6. I know this because it was used successfully
>>>>>> with previous versions (very latest v4.x and earlier v5.x).
>>>>>>
>>>>>> I am testing rpi3b and rpi3a+  and multiple SPI peripherals
>>>>>> (displays, wireless transceiver, etc) and none of them are working
>>>>>> anymore. Hardware connections stay the same as before so I don't
>>>>>> think this is a hardware issue.
>>>>>>
>>>>>> I am using the following patch in my build to enable SPI pins:
>>>>>>
>>>>>>
> https://github.com/orpaltech/armlinux/blob/master/patch/kernel/armlinux/stable/v5.5/rpi/0017-spi-bcm2835-Add-SPI-controller-pins.patch
>   
>>>>>>
>>>>>> It was enough in previous kernels for SPI to work. Is there
>>>>>> anything else I should do now ?
>>>>> I think you need to add:
>>>>>
>>>>>      status = "okay";
>>>>>
>>>>> Otherwise, the spi node will remain disabled.
>>>>>
>>>>> Phil
>>>>>
>>>> thanks for reply.
>>>>
>>>> It is already done by the dt-overlays.
>>>>
>>>> Again: it was working before! It just stopped working after moving to
>>>> 5.5.
>>> I don't think that bcm2837-rpi-3-b.dtb has changed significantly
>>> between 5.4 and 5.5.
>>> Have you tried the 5.5 DTB with the 5.4 kernel?
>>>
>>> Phil
>>>
>> no, not yet.
>>
>>
>> I forgot to attach logs in my previous email, here it is
>> https://pastebin.com/v5mFpN2G
>>
>>   From this log you can see that SPI display "works" well:
>>
>> root@rpi3-b-arm-stretch:~# dmesg | grep spi
>> [    3.011567] spi spi0.1: setting up native-CS1 to use GPIO
>> [    3.019620] spi spi0.0: setting up native-CS0 to use GPIO
>> [    3.367637] [drm] Initialized ili9486 1.0.0 20171208 for spi0.0 on
>> minor 1
>> [    3.390109] ads7846 spi0.1: touchscreen, irq 94
>> [    3.396306] input: ADS7846 Touchscreen as
>> /devices/platform/soc/3f204000.spi/spi_master/spi0/spi0.1/input/input0
>> [    3.408486] ili9486 spi0.0: waveshare35_enable: enter
>> [   37.821112] ili9486 spi0.0: fb1: ili9486drmfb frame buffer device
>>
>>
>> But the display isn't working. The same scenario with any other SPI
>> peripheral : no errors in the log but the peripheral is malfunctioning.
>>
>> I am not a big expert in SPI, but I connected my oscilloscope and I can
>> see some activity on CLK and MOSI.
>>
>> All this makes me think that current SPI driver doesn't produce the
>> "correct" SPI protocol messages anymore.
> Lets see if we can fid out the fautly patch.
>
> I get from your message that you tested successfully v5.4 but v5.5 fails right?
>
> I see no changes in the SPI driver between those release, so we'd need to do a
> git bisect. But first lets find our the last working version.
>
> Regards,
> Nicolas
>
I agree. I am going to find it ASAP and let you know.

Sergey


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
