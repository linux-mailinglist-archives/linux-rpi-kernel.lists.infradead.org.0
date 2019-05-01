Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01BB010CA0
	for <lists+linux-rpi-kernel@lfdr.de>; Wed,  1 May 2019 20:17:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=4ZWgBTNcmXV8LM6lS9WDre5WL3jZ2okDwEghP3AZyDE=; b=BUXQmf84ctiAzgkU7dnEoGDHZv
	KQo1CW7Fnq+KI/f4IE+02B3KUoREdEpsK1pMV0FGoxdUBWlCZZWZdHn+Ns8HFzWchBE+DIBI4+KAQ
	+DrgXHwT+WeitVm1dYKCRPr26awDI8M2xw0VS+qvlqExkWuxLQ4uw+vKjRV1j7NXYxjFCNbNsEnE2
	xEFX974J9T5+dx5DTzjtsvXvkNysOVhNmicoXBX8WdFdIq+Ex0S0L6EFyy6xddTCUU020n0DAdLWV
	xPnreDL0xsSg/FSb0SpADHj6vVUn7HYgIrCyWiFKWGgZBtGGGH2k0EYwAvwiqgmsYuBLO0t4yfX3+
	/IEdELYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLtnS-0005Jt-DS; Wed, 01 May 2019 18:17:34 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLtnP-0005JP-4m
 for linux-rpi-kernel@lists.infradead.org; Wed, 01 May 2019 18:17:32 +0000
Received: from [192.168.1.166] ([37.4.249.111]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1Mmhs6-1gwypO1TLa-00jr5b; Wed, 01 May 2019 20:17:24 +0200
Subject: Re: dwc_otg disconnect IRQ storm/starvation crash
To: Lukas Wunner <lukas@wunner.de>, Florian Zumbiehl <florz@florz.de>,
 linux-rpi-kernel@lists.infradead.org, popcornmix <popcornmix@gmail.com>
References: <20190430014140.GI5152@florz.florz.de>
 <51166349-220c-6b85-dc22-44c9314810a8@i2se.com>
 <20190501171133.GJ5152@florz.florz.de>
 <20190501173809.tjjl7valdb3vu4yv@wunner.de>
From: Stefan Wahren <stefan.wahren@i2se.com>
Openpgp: preference=signencrypt
Autocrypt: addr=stefan.wahren@i2se.com; keydata=
 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 AQ==
Message-ID: <47e0d4c2-1d20-f353-2d2d-9f901c1323e5@i2se.com>
Date: Wed, 1 May 2019 20:17:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190501173809.tjjl7valdb3vu4yv@wunner.de>
Content-Language: en-US
X-Provags-ID: V03:K1:eWeK+LKDThL6VefiekBP3RTdbuG6F5/VV5m2EHhXDFc8X1Q8ivm
 H4O3kP9WWSkPhBJlAu+/Kr/gxp75qvekzo1IrAm0hBK2C60Yxrrb9aV9WlmnLe8fEjMzOPE
 spLQntp8RMtlfFShCV7fZcUcPiGxKR9E/OtIbS3U7hES4IRCKxxTXWUfjdtxqClAikLnRDu
 xANA8YsNt6RCrSGxxGbHA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:mhPL422D9Dw=:srHj8Xn1H8tlZcMwqTcTuM
 M+ChC4E1iexPHUoSIKD/877WNnbtvs8Cmsnm1IkhZvkG2VwGI/FHLZmh9QROmoENib8U7VKZQ
 b+V0Bo7otUkeoaRBYJ6heYj5gJmv8Z6Xc6HJ1AT6cXf/T6eZROuxiKm165+9Pso8+7HFjNt0+
 eUuKbul5hJuFfAzsDych9RMyvdQUZuPmv2yD21HBy3oGowaTzljTmtEMyLyMSywDfwNrSJegF
 +RzDjzs5X/9Loh2+400pXDzk8fOJ9s9y9kvqX6hrQA6zh511/ID9hYAm8qGM4rD9uCVEJ+16w
 dh8ZOdbAGv4ddjb7v8DhlPNxT5Lul5iWk5wQuY3ZBu4be5gosO/uG0/6OoKQm0KNLOetNppWc
 bjAlQbJNpk110TjEefWkLxyBNjpySmCmOF/Lx8CXeZv1jfTZfMiP6xO4kJFHKuHEhu4DkmvHr
 LUfNMn9Kyvdy09+9YIFsPyrqC8Pas71XzluX1o7tk4agkvFztCtiUZcJFT+sz3MAiwDJgGyYj
 KakBwohbyMvaWiJqLegN+ilhdmyGXDZhrfbavixzivoDql29SC52Kz+O2FfFxcd4jEEp/37a1
 M+dmBOOVGGjKxZXKfvSKbzcwHxfhQz1iewbIQEmCG+NPSUSxnr5DCRxD/9lAkgCLtzwEOrsMz
 EiKOTvYp7yWfSvS9Y7iTgsRFODZGPh/GTuPV6eEtQgwzs3BQfprRXcXdU4TEvjeKLO+/uSNqQ
 9lTQn/PrWVExs51e46rjGH6mKzuuKXHxNm/B3xVP4bXrk5a3tvUgBnvKd44=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_111731_488585_81E12E03 
X-CRM114-Status: GOOD (  13.68  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

Am 01.05.19 um 19:38 schrieb Lukas Wunner:
> On Wed, May 01, 2019 at 07:11:33PM +0200, Florian Zumbiehl wrote:
>> So, I guess I'll just stick with dwc2 on a bleeding edge kernel and see how
>> that goes. It's just that throughput on the SPI-connected ENC28J60
>> interface is considerably slower (~ 3 Mbit/s vs. ~ 5 Mbit/s) with that
>> kernel version (independently of the USB HC driver being used). Is that
>> likely to be an RPF thing, or probably upstream as well? It's not really a
>> problem for me, I'm just wondering whether I should investigate that
>> further ...
> Does the below help?
>
> -- >8 --
> Subject: [PATCH] ARM: bcm283x: Enable DMA support for SPI controller
>
> Without this, the driver for the BCM2835 SPI controller uses interrupt
> mode instead of DMA mode, incurring a significant performance penalty.
> The Foundation's device tree has had these attributes for years in
> bcm270x.dtsi, but for some reason they were never upstreamed.
>
> Signed-off-by: Lukas Wunner <lukas@wunner.de>

How about sending a proper patch to take it for the next release?

Thanks


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
