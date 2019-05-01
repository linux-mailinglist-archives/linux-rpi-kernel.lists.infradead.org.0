Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A29AB10BCE
	for <lists+linux-rpi-kernel@lfdr.de>; Wed,  1 May 2019 19:12:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MeZb7YIDxQ9GTfDutMVSWSYbZ6wMsviroFRQuk/Yr1s=; b=nQv5J2+xa8Tgui
	cukoEOzEkYwJ56bf4h6r3LboJZguuwgW6LBYTFdatly9til8iXALSSN4W+o72ZffW+S6HVz3on0yV
	gzzhrPmO1VrZNwVLDGUy1ktvQAgHw9sh2chCKmeU+BWfa8e1lHZQjp84j3jt30gvPQj3Un4KiB/t+
	bI20yOkBnDIM3YRwy6eFR4E8KO9R67s7kliPESHp1b0oEl6CKjkoFGzam4/afFdGnMGtlLPZcmLlK
	C0pyYnNNvdPCjOCkzQfyxJQK2bIK7WViFUVM5vel/w8xf/QmDXPwJ7+KJrDJCVHh2FTHYw9iP1jq/
	lNmWP8zbmEWQi23ZnFyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLslv-0004xt-LL; Wed, 01 May 2019 17:11:55 +0000
Received: from rain.florz.de ([2a07:12c0:1c00:40::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLslr-0004x1-0O
 for linux-rpi-kernel@lists.infradead.org; Wed, 01 May 2019 17:11:53 +0000
Received: from [2a07:12c0:1c00:43::121] (port=59184 helo=florz.florz.de)
 by rain.florz.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-SHA256:256)
 (Exim 4.89) (envelope-from <florz@florz.de>)
 id 1hLslZ-0007HM-Sf; Wed, 01 May 2019 19:11:33 +0200
Received: from florz by florz.florz.de with local (Exim 4.80)
 (envelope-from <florz@florz.de>)
 id 1hLslZ-0000Rk-By; Wed, 01 May 2019 19:11:33 +0200
Date: Wed, 1 May 2019 19:11:33 +0200
From: Florian Zumbiehl <florz@florz.de>
To: Stefan Wahren <stefan.wahren@i2se.com>
Subject: Re: dwc_otg disconnect IRQ storm/starvation crash
Message-ID: <20190501171133.GJ5152@florz.florz.de>
Mail-Followup-To: Florian Zumbiehl <florz@florz.de>,
 Stefan Wahren <stefan.wahren@i2se.com>,
 linux-rpi-kernel@lists.infradead.org,
 popcornmix <popcornmix@gmail.com>
References: <20190430014140.GI5152@florz.florz.de>
 <51166349-220c-6b85-dc22-44c9314810a8@i2se.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <51166349-220c-6b85-dc22-44c9314810a8@i2se.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_101151_222211_81E2F766 
X-CRM114-Status: GOOD (  14.29  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

Hi,

> the dwc_otg is part of the RPF kernel tree. This mailing list is
> dedicated for RPi with upstream kernel which uses the dwc2 driver.

IC--I just assumed that because it wasn't hosted on kernel.org, it was the
mailing list for the RPF fork ...

> Now you have two options:
> 
> 1) Try to reproduce this issue with recent upstream kernel 5.0 / 5.1-rc7
> and dwc2

I just tried it using dwc2 on the RPF kernel (5.1-rc6, which I did the
debugging on), and failed to provoke a crash--I suppose the vanilla kernel
probably would behave the same?

Also, dwc2 actually seems to generally be working fine on that kernel
version. I previously had tried it on the kernel distributed with raspbian
(4.14.98) and experienced enumeration failures and massive network
(ethernet) delays, which is why I hadn't pursued that any further.
Interestingly, I just tested it again with that kernel, and I noticed that
those delays also correlate with having two TTYs on that LTE stick open:
Close one of the FDs and everything behaves normally, open both and ping
latency on some packets spikes to a second or more.

So, I guess I'll just stick with dwc2 on a bleeding edge kernel and see how
that goes. It's just that throughput on the SPI-connected ENC28J60
interface is considerably slower (~ 3 Mbit/s vs. ~ 5 Mbit/s) with that
kernel version (independently of the USB HC driver being used). Is that
likely to be an RPF thing, or probably upstream as well? It's not really a
problem for me, I'm just wondering whether I should investigate that
further ...

Also, more generally, what's the status of vanilla kernel on a Raspberry
Pi 1? What I could find on the web seemed to only cover Pi 2 and 3--did I
miss anything? I certainly wouldn't mind switching to an upstream kernel if
that is feasible ...

> 2) Report this issue to the RPF [1]
[...]
> [1] - https://github.com/raspberrypi/linux/issues

Erm, yeah, thanks, but no, thanks ;-)

Regards, Florian

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
