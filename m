Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AB61181574
	for <lists+linux-rpi-kernel@lfdr.de>; Wed, 11 Mar 2020 11:05:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sWd3o5SNs83lAaPgL+7U7pAJubbV2GeoK+b8+cfDaBg=; b=VIG0Eojwm2Y6JN
	wMR9L4DtSmgwcVzfxOTk/mTcDpLor3RDbJhAOGY2bDpeka8YGBpdbmDUErZxfXQ9UIEStz5K/yfzo
	p9SlU7AB27+a5Qyc+3wr0PXdFAzTBZTwyGCNqshobzHcyKQ2cspErNuRWWVtfu1/M+K533166ifgW
	vnTFbMqF9X8Dsb/5KuVrPH6sZa74VFGDyLJD73YeGuONyNlVJ67tHgJi38peECipTntmtgnmytUuG
	/YpJOk38pltAHZwJ9z8LEr0gwCHg61TujI8bY3HlJnuRz6ew6TVfyt5Lapjv2TZIMXWyBps+b3Eon
	eHojlygbBFzBR2ZUZxyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jByEW-0006KY-Pb; Wed, 11 Mar 2020 10:05:00 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jByEU-0006KF-1b
 for linux-rpi-kernel@lists.infradead.org; Wed, 11 Mar 2020 10:04:59 +0000
Received: by mail-io1-xd44.google.com with SMTP id h8so1290164iob.2
 for <linux-rpi-kernel@lists.infradead.org>;
 Wed, 11 Mar 2020 03:04:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=P3p+F8yaluGQJY1OuJDs2lKl8J1aWeV5wdngbetCnmQ=;
 b=HTYtJWX7qv2agmdBSgdO7CrQYdeGj/7OtHvB4F6jKLmdwy/FcvE9iwViDOkV8kZLkz
 pH0W0rGt3BCEsDC8/XQ+EUdOWgsMKEO+fpLX7su6a44Gx5dBWO/K7vMljxPSSR7s5yAc
 kg1FW6R3DB6HGm//i97dgIHvHw8mHj8eh2aWG/+ZLwhIve8MBb7GOcZLbmZqFkRcSYEw
 AHSe81nHuT5HZdIzSTY+7pq8/34zfHSUea6Yil3UkeptQ86NTwzp/oGP3zIfZen2QpNI
 c99Quy/7+vg0izdS9n+F6VhOyN2qigby1XwnRGu8rrTqslrCwxG2wMxkC9CDOfn4EBh7
 o8Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=P3p+F8yaluGQJY1OuJDs2lKl8J1aWeV5wdngbetCnmQ=;
 b=WoYne681pg80jumi9o0zlhwpdpAAftJATp7rHOIbB8TBF0xlXrUQtLEz12GhHZ6zfY
 JhkUXyB3po46xK8D/Py0VB9X+XLoBKyKRGyFHHWFwFCq9d7x8HorYIIjXI1BtIMH7cbx
 11RNZkkN1+u2Ur0/K5XqCMhX/X9eGub9W9q9+SNjziZakMhVCQ9FCN1yqIPIg9IfDH72
 LOBSUcknS7PxQQOzH2rtf68EZUJNkUAxV0KaNnPRak37gPnv60EffD63aU2AcpIfcOb2
 q6I8G1/IPyFTsHLpwLeao8Vg53j3O9PWKVP+T22OO/HftBE97JgevqH49lN9LuPfItRG
 q/SQ==
X-Gm-Message-State: ANhLgQ0fIBurjVmqo+44nna4es9k57tyUWNQZESBjVkIJ3i2nHawnd8K
 2fa774oqU4fqInNfyUCj6BxjJoGYke4lgKPsiSA=
X-Google-Smtp-Source: ADFU+vsaAONRledJDJNWeBbFkC8aRMoX9WMZae5IzUivjrQls7nFs7m0cy5ADgudf3NZRraE9Rwt1M0Bq/yRiCWzTcs=
X-Received: by 2002:a6b:dd14:: with SMTP id f20mr2212265ioc.32.1583921096449; 
 Wed, 11 Mar 2020 03:04:56 -0700 (PDT)
MIME-Version: 1.0
References: <20200310223403.GA31851@xanadu.blop.info>
 <20200311074132.GA7703@xanadu.blop.info>
In-Reply-To: <20200311074132.GA7703@xanadu.blop.info>
From: Peter Robinson <pbrobinson@gmail.com>
Date: Wed, 11 Mar 2020 10:04:45 +0000
Message-ID: <CALeDE9N8_Kmz+6QDMm7CcP9S8rs1iSfcoSwP-pmXh5UWsp9+Fw@mail.gmail.com>
Subject: Re: 5.6.0-rc5 fails to boot (MMC/SDHCI related?)
To: Lucas Nussbaum <lucas@debian.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_030458_090905_6F737105 
X-CRM114-Status: UNSURE (   9.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [pbrobinson[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

> > I'm trying to build Debian images with the vanilla kernel, but I can't
> > get a kernel to boot. I'm probably missing something obvious...
>
> Hi,
>
> I forgot to mention that I had cherry-picked
> d886ff4d2a6aaf4a1e837dc4ccc731bf8c9a606f (ARM: dts: bcm2711: Move emmc2
> into its own bus). I'm now testing without it.

I think there's also a new firmware to go with that piece above. I'm
guessing you're having issue with a RPi4B but I don't see it
mentioned. What HW rev of the HW have you got?

I have one of the original RPi4B's booted with 5.6-rc5 on Fedora 32
without issue. I got a new which should be a rev 1.2 which I intend to
test shortly because we've received similar reports of issues with HW
rev 1.2.

Peter

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
