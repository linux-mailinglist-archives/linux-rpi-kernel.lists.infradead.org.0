Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C39F718AE8
	for <lists+linux-rpi-kernel@lfdr.de>; Thu,  9 May 2019 15:44:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zuEhNu6vNzeIvyZnLH7xX5OkoAcHU0IieuoJuj868Ys=; b=K2WdfHyoCR4h5Q
	Dz5VDSAaOpGuajoGL2Cst59TyVOAsNQtHeVdmfDoaW+F6fK9nysdVRX7W4c3tqfkDray5KdadvO0m
	rXGIgMh3QvnvpbQONOqi8SWcU073nfPerea1IoD1Y+QFvatAu/kWoes0LwQy+3z4JP6xIn7EqQmaT
	vpHC6KTbKcSGojNzZNAWDJGwEu3xC5Vo2jjkPOUZBScvg/ZzeEFKjpinh6i2ZdArUyDDtJD+BDFKn
	ipIh6iu78fkMTPNEkg4WgexpbY8BklWMHwAM+PRoR8SoIAFL6E0iNdaCAQB5VM16rgIarNegFaMyf
	I0+4o5X63HnQ2qgR5X9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOjLA-0006FU-05; Thu, 09 May 2019 13:44:04 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOjL6-0006Ec-HT
 for linux-rpi-kernel@lists.infradead.org; Thu, 09 May 2019 13:44:02 +0000
Received: from [192.168.178.187] ([109.104.55.4]) by mrelayeu.kundenserver.de
 (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1M9WiK-1hJF9W00TE-005VF2; Thu, 09 May 2019 15:43:50 +0200
Subject: Re: Enable DMA support for SPI controller (was dwc_otg disconnect IRQ
 storm/starvation crash)
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
References: <20190430014140.GI5152@florz.florz.de>
 <51166349-220c-6b85-dc22-44c9314810a8@i2se.com>
 <20190501171133.GJ5152@florz.florz.de>
 <e3533679-edd8-b8f8-c5b5-8681bb57ae2e@i2se.com>
 <c2c6366d59d6f1418a46634970c98f4d6b0b9377.camel@suse.de>
From: Stefan Wahren <stefan.wahren@i2se.com>
Message-ID: <b311c5cf-c8ce-0e8f-8597-ac3bed205548@i2se.com>
Date: Thu, 9 May 2019 15:43:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <c2c6366d59d6f1418a46634970c98f4d6b0b9377.camel@suse.de>
Content-Language: en-US
X-Provags-ID: V03:K1:hwSt9nrf0LBvJ2CjJee9moyvhkLZlHp3R57nYGTi1dX7mLf2K5x
 kz67FVHCdrrZmcV4NyL6ng0r9rBH4AvBphRwPaz5T04JxLRXbzt04oTGZ8XDe9+oMTsZ1kE
 51R0igEJnhxlql7DULCZS55SJ82o39TjeqXKrZUgXgSiSHyzIhp8GvVaMlqDRhphYlYfKDV
 0q1ZT7er2zYt1Wc0b4B5w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:S+2MWJCf/08=:FJA6PtkOwmNc1v2l9q/hyb
 KafxKGQ6fpNnRJjL35rANWf33Ff2N1wf6WRZx/YTeH5X2M+ya64iG1Br+4srQ4qgzNmidbk/c
 vkotgqeuqKZ8wePeIkfH91UoN6LAHEc9QkZ/up/iwl8CUUhrEoInfxKELcYZSam1xpL3/z0wN
 A9y/y2hlWaRK8xpJlRlQQYx25GqN/WQWinNh91Mgu9w5FzfN2ORALc7m+R45K1np9rJWAb9WR
 EaMzCilbAAFPJj2/Eb/HpUCBBSawMHIXsLgUm/UPO4d1Esh4zFEQpLZxWvWbT9DtP0ICc5ShG
 48iU4UrZIr9rmZ4HwY2fGr/Y2h9pKIf4VR5A0DXAmHKH/bRg7QiBnuLhANekMXGFTNIAp0zxB
 xr5pknSSoPrG78O/bHsxSifrOV1mapx4Ce/g6sxpBRi2YseO+/ynvwf6r/axP3ob6waUwBhMc
 e657VmfsFuihvEHnSuzhKWqH8YE7ju7yvIA98UimRn5PXJNc8q38EKlfcJsL16Qr9kaKG9Ybb
 QwBM6aqI4Ketd6RrFNkO44n7VxrUczb8yExdxouxcSFHGayC0I4eclEuX7yZFQiwpZivbDEYS
 CVbBAWG1oLOq7OjWm7dBinT9BwawO59S7x5WtolSsH4lIu4Tx1hdb6dCyhJd7AJHjj1fhEwN8
 BTPDLFAdvertCM8idHMzZKxA5KykJPwXh/LCtsRqoh0bYUT9IAUs3qCJQUcadkyVsiGjR8g4z
 dQRa/PYm1E7S9AJOiUSUYXA085L1JS4OzZbCCaMQHUVTso9yBssZPNCX9uk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_064400_881294_22DF84F7 
X-CRM114-Status: GOOD (  18.05  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.130 listed in wl.mailspike.net]
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
Cc: linux-rpi-kernel@lists.infradead.org,
 =?UTF-8?Q?Noralf_Tr=c3=b8nnes?= <noralf@tronnes.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

Hi Nicolas,

On 09.05.19 15:28, Nicolas Saenz Julienne wrote:
> Hi Stefan,
>
> On Wed, 2019-05-08 at 21:05 +0200, Stefan Wahren wrote:
>> Hi Nicolas,
>>
>> since you have a semi-working SPI setup, could you also please test the
>> following DT patch?
>>
>> I like to see this integrated into 5.3 and the original message hasn't
>> published to the mailing list yet.
>>
>> Thanks Stefan
>>
>>
>> -- >8 --
>> Subject: [PATCH] ARM: bcm283x: Enable DMA support for SPI controller
>>
>> Without this, the driver for the BCM2835 SPI controller uses interrupt
>> mode instead of DMA mode, incurring a significant performance penalty.
>> The Foundation's device tree has had these attributes for years in
>> bcm270x.dtsi, but for some reason they were never upstreamed.
>>
>> Signed-off-by: Lukas Wunner <lukas@wunner.de>
>> ---
>> arch/arm/boot/dts/bcm283x.dtsi | 2 ++
>> 1 file changed, 2 insertions(+)
>>
>> diff --git a/arch/arm/boot/dts/bcm283x.dtsi b/arch/arm/boot/dts/bcm283x.dtsi
>> index 1b53339..893a76a 100644
>> --- a/arch/arm/boot/dts/bcm283x.dtsi
>> +++ b/arch/arm/boot/dts/bcm283x.dtsi
>> @@ -421,6 +421,8 @@
>> reg = <0x7e204000 0x1000>;
>> interrupts = <2 22>;
>> clocks = <&clocks BCM2835_CLOCK_VPU>;
>> + dmas = <&dma 6>, <&dma 7>;
>> + dma-names = "tx", "rx";
>> #address-cells = <1>;
>> #size-cells = <0>;
>> status = "disabled";
>>
> It seems to be running OK on my setup (w5500 SPI Ethernet controller). It's
> been running at max speed for an hour without issues. Also, the throughput is
> higher and more stable.

thanks. So it would be okay if Lukas / me add your Tested-by ?

Stefan

>
> Regards,
> Nicolas
>

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
