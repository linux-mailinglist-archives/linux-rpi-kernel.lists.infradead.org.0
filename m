Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 830D8F0F2
	for <lists+linux-rpi-kernel@lfdr.de>; Tue, 30 Apr 2019 09:10:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=dtsYiqXaSfWLf1MUoxFiXnYeb8c9pHHkXJ15siieOSM=; b=aziO46KGdnaCWiGARh0gviel9o
	pxc0a6r/fd8pkIsURnBnU9f7unjDHMEKBJl7h9y3jPLCJukL4FBYuYaEKEFcOzPyl2bGqaDmAIC6s
	/97RYXBIbiwn9mZ5wsXj3xZUKSt96mMmQcA8JYgjjRjallB5JtWwuRkPMbWphAqFt1s6QPe+4Ax5Q
	h50j19wEqUum4FDCu71liykO/Yf8SbsbV4SUW4GtjzyWuSW0ZVqDcq4gSFYRJkXxwVUVngQ2leOkY
	9OwzNbL50jaOtp3MQZL4CqZ/pPCw25VcGYfI2CL0P4MO/iUh5ChFrEppMuWLNRUEHX311KH+4I5Ja
	OToK0Oag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLMuj-0007hF-JE; Tue, 30 Apr 2019 07:10:53 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLMuf-0007gd-U6
 for linux-rpi-kernel@lists.infradead.org; Tue, 30 Apr 2019 07:10:51 +0000
Received: from [192.168.178.187] ([109.104.32.252]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MQdI8-1h6Qmz0EPG-00NhPN; Tue, 30 Apr 2019 09:10:43 +0200
Subject: Re: dwc_otg disconnect IRQ storm/starvation crash
To: Florian Zumbiehl <florz@florz.de>, linux-rpi-kernel@lists.infradead.org,
 popcornmix <popcornmix@gmail.com>
References: <20190430014140.GI5152@florz.florz.de>
From: Stefan Wahren <stefan.wahren@i2se.com>
Message-ID: <51166349-220c-6b85-dc22-44c9314810a8@i2se.com>
Date: Tue, 30 Apr 2019 09:10:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190430014140.GI5152@florz.florz.de>
Content-Language: en-US
X-Provags-ID: V03:K1:+d//EYJ0r8fQxhh7rFK5reluCvCZ3CbX+U2FP9qS0dblHtDiKQF
 ZbX0PrgEXg/qRiYP7/M5V40wNngdJtncfvwqvMZ6KBVwI88CPZKMs/+xR1RzyqB9cwYZXnb
 D8pdklRxrujl0MZUCN3E2oEzhrVimuCnIRZP7AnRpae2/I8trMd6EkHQoUQuf5ZaB+M2SqB
 ZjFpxUFu/9KGmOogyeNRA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:BAuDWPTEUqs=:sTIeP+LjCar6l4ddJurOzd
 aRmPARznkGBftQCQA5mKRJf+Cp+x0Vavhpn1dZ4aRblLWCCxymT5iQ5yJAG4iHNWDFa7/W11Q
 4p3K4MZ17Y6wa1+s2YBdMUwLPWssE5xc0N1zoeD/S+V+8IXXM2Tay1PRCMKmN6s0i7KoJcPWj
 hlFK0X/Tsjl3coEWH//67MjaAA3gHxECKJTYwsmslJAnXGrtvXKHphExZTPvU5F4pTuWncFGF
 75pc7ZU63FqnKBC9Xk92s0vGbFZE8pTFY+cLGdRJsefcTuidDYsWlj7WlSSS24zxVX88Tz+Iv
 LVL9sL1R92xO6bxoF0wmsLb6Cro73EOOJGasSfLro5lViuhxEX8BbCtlfUKoGVoLzwdTdVBR8
 l4BcX9x3BF/UF5n/EoFNII9HOW/MGS4u2L9xwvLHhiS26NIgjAk0cQ8a4Foi249+vSlBF0g13
 u85s6cP0rRteV9KhSHysHBUAzkMWGXReCuIjlKXDW4Iq7UVldC/f6xxWGuxmFNnfqiKGSy5AZ
 ZrW3HnjbgayhOoizlfFyBk+gwaldlOEV55+gghMfurHCgamkYoZK3wx/LH3Ep6j9lnX3SrbLQ
 o+8Hp5QRsyKSObrrOsF04CmjyOwJaPrHSAkE/QFGG4J2regScecaQB7TQWw89dmGnoYc3N79u
 lnnM1ktk92DO7Lj4woN2w0JXfXwQkqiVu/17Ih7pqtkv+iHle0NFoycEyMI5xto1StME7gy5n
 IlP59BBzO5zK5O8RWnxOjHI1nrnilT5DJBu5wJBazWDVT3glVRkDP/N/CJU=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_001050_273998_DE0CBB91 
X-CRM114-Status: GOOD (  23.69  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
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

Hi Florian,

On 30.04.19 03:41, Florian Zumbiehl wrote:
> Hi,
>
> I have found that a Raspberry Pi 1 reliably crashes when I unplug an LTE
> stick from it if two of its TTYs are open at the moment when I unplug it
> (like, user space processes having open file descriptors for them).
>
> After some debugging, I have found that the reason for this crash seems to
> be an IRQ storm: The device driver (or whoever exactly, I didn't dig
> further in that direction) issues read and interrupt transactions, which
> fail with a transaction error (presumably because the unplugged device
> doesn't respond?), which seems to cause the driver to immediately retry
> them, causing another transaction error, causing another retry ...  leading
> to ~ 30000 interrupts per second, keeping the CPU completely busy, and thus
> preventing the hub disconnect message that would make the driver stop
> issuing those failing transactions from being processed.
>
> I have tried adding some code that heuristically detects the IRQ storm and
> simply clears the host controller's global interrupt enable for a few
> jiffies to give the kernel a chance to process the disconnect--and that
> indeed prevents the Pi from crashing.
>
> Now, that's obviously a terrible hack that also could fall over in various
> ways, so I don't have a patch to submit (yet)--but as the dwc_otg driver is
> pretty complex, I thought I'd rather ask those of you who do already know
> it well what you think a sensible solution to this problem could look like.
>
> One idea I did have was to maybe track per-device transaction errors, and
> to throttle the submission of new transactions for a device when the last
> 50 (or whatever) have resulted in transaction errors? I would think that
> that should not cause any problems during normal operation, but would stop
> a disconnected device from thrashing the CPU for more than a millisecond or
> so. I have no idea, though, how practical that would be to implement in the
> driver ...

the dwc_otg is part of the RPF kernel tree. This mailing list is
dedicated for RPi with upstream kernel which uses the dwc2 driver.

Now you have two options:

1) Try to reproduce this issue with recent upstream kernel 5.0 / 5.1-rc7
and dwc2

2) Report this issue to the RPF [1]

Thanks Stefan

[1] - https://github.com/raspberrypi/linux/issues

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
