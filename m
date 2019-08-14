Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E67228DF03
	for <lists+linux-rpi-kernel@lfdr.de>; Wed, 14 Aug 2019 22:40:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vz630Tg+mtpDrReZsMwE+MMCJzdkzzESpyu4t69CrcM=; b=gmQKxWNAX1JBX+
	3/hegRYQEv3SB9jPA2y1cquOn/vOyoFjsO8zFRR4GJFTpXpirWj6WtTx56yQLb1JNgkFvR4Hjdfad
	a0sbQBp/p6ucGERno5bWoK+hhtFWy6yxRHM04ZRX4LeL+aZ37oP40X//R2p8BtIGAJL6Luye99oba
	ecWa0xEkY8LbW24iU0i8zWB95Qmtqhy6Q+3yEmRhnPXfLqKTQwXxVcwVrdHOE8d2iUmmitLpp9Vfe
	L/FyJpH0uK7uPDpC3C4yMk9PB/5HiQgzeoOalQQJN+GBeg7b/tQuc6r/nd6XSVjyRnnFb0GGnbzMh
	ynJ74CyjbhWSMZ9SZZUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hy03t-0008VD-KA; Wed, 14 Aug 2019 20:40:01 +0000
Received: from mo6-p00-ob.smtp.rzone.de ([2a01:238:20a:202:5300::12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hy03o-0008Tn-T8
 for linux-rpi-kernel@lists.infradead.org; Wed, 14 Aug 2019 20:39:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1565815184;
 s=strato-dkim-0002; d=goldelico.com;
 h=To:References:Message-Id:Cc:Date:In-Reply-To:From:Subject:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=XB4Z3t1ZKMo9g3/abJ2drQyx+idnFoxsqv4Xkd6kmJU=;
 b=RnicImzvp1oaG1mwOnDs29Kl/kDMWNn5zhfEiFkHn98/PN+SndXzN8UuLE8AYHwzup
 U8Q29FarhONSoVEcT5WWhVr9jzjS1GghwQerwyfK3HgCAtkbesHiP3YELXPUV7vqdxfn
 HN1BVqwFz+JrzeFvE76sEoQg6ZoEFHZwlIw3/OgdvsAQgWwtL6ey18dQJi2BCaP1smJv
 aquymOGM397zWqWNJyIRhHB2UoaXOJJouQuZaTmh/2PKrVRDnsX606QLZXWv4QFnQgrx
 aDbwkDg9cE9F50pzMnMwf5pjGTV/Wl0Pf52koZN3P1jgYWcSD/UbX7VJybTGJC3PkxxB
 4ekg==
X-RZG-AUTH: ":JGIXVUS7cutRB/49FwqZ7WcJeFKiMgPgp8VKxflSZ1P34KBj4Qpw9iZeHmMmw47slWo="
X-RZG-CLASS-ID: mo00
Received: from imac.fritz.box by smtp.strato.de (RZmta 44.26.1 DYNA|AUTH)
 with ESMTPSA id V074e8v7EKdh7qD
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (curve secp521r1 with 521 ECDH
 bits, eq. 15360 bits RSA)) (Client did not present a certificate);
 Wed, 14 Aug 2019 22:39:43 +0200 (CEST)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
Subject: Re: HDMI monitor wakeup from standby
From: "H. Nikolaus Schaller" <hns@goldelico.com>
In-Reply-To: <22248f50-6ca2-a53c-cec2-1b078f6d2915@gmx.net>
Date: Wed, 14 Aug 2019 22:39:43 +0200
Message-Id: <370BF478-062B-4CC5-917D-301C3ADA456E@goldelico.com>
References: <5D68F876-5942-4E6D-8D2A-528F0D39CAF0@goldelico.com>
 <22248f50-6ca2-a53c-cec2-1b078f6d2915@gmx.net>
To: Stefan Wahren <wahrenst@gmx.net>
X-Mailer: Apple Mail (2.3124)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_133957_538321_26C0342E 
X-CRM114-Status: GOOD (  12.78  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5300:0:0:12 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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

Hi Stefan,

> Am 14.08.2019 um 22:14 schrieb Stefan Wahren <wahrenst@gmx.net>:
> 
> Hi Nikolaus,
> 
> Am 10.08.19 um 18:43 schrieb H. Nikolaus Schaller:
>> Hi,
>> I have running a v4.19 mainline kernel and Debian on the RasPi 3B+
>> and it works well. Except one thing.
>> 
>> If X11 or a console command (xset dpms standby/suspend/off) sends
>> the monitor to standby it won't turn fully on with
>> 
>> 	"xset dpms force on".
>> 
>> The monitor goes on, but there is no image, it reports "no HDMI" and
>> after a while it turns off. The monitor is an ASUS VS247HR.
>> 
>> If I am quick enough I can run "xset dpms force standby" and then
>> immediately "xset dpms force on" and the monitor stays working.
>> 
>> I have tried the same with a HDMI projector (Acer) using the same
>> cable and that one works perfectly with dpms wakeup.
>> 
>> But if the monitor is refusing to turn on, I can replug the cable
>> to the projector and that one shows the image.
>> 
>> So the HDMI data stream is ok, it is just something wrong with
>> standby/wakeup signalling.
>> 
>> What makes me think it is a kernel issue, is that the monitor
>> standby works well with Raspbian default kernels.
>> 
>> Summary:
>> * Asus monitor does not wake up from standby
>> * Acer projector works
>> * replugging cable from Asus to Acer works
>> * Raspbian works with Asus monitor
>> 
>> Any suggestions what I should try?
>> 
>> A special setting in config.txt or cmdline.txt? Mine are here:
>> 
>> 	http://download.goldelico.com/letux-u-boot/RasPi-3B+/latest/
>> 
>> And/or does Raspbian have a special tool to help "xset dpms force on"?
>> 
>> Or is there a feature missing in the mainline kernel which is in
>> Raspbian kernels?
> 
> sorry i'm not that VC4 expert, but you can please enable vc4-kms (open
> source driver) in Raspbian and retest [1]. Otherwise you compare two
> different drivers.
> 
> [1] - https://github.com/anholt/mesa/wiki/VC4

Hm. Isn't VC4 the 3G GPU driver? I am not sure if is related in
any way to controlling power/standby of the monitor. Or is it?

With Raspbian everything works fine for me. It is only broken on
my self-built mainline kernel using standard Debian packages only.
It does not appear to use mesa or vc4, just xserver-xorg-core. And
it works with the video projector.

IMHO it seems to be an issue with lowest level stuff (gpio? HDMI
signaling? HDMI-CEC/HPD wires or the HDMI I2C bus?).

BR and thanks,
Nikolaus Schaller


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
