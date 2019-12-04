Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99418113829
	for <lists+linux-rpi-kernel@lfdr.de>; Thu,  5 Dec 2019 00:28:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8s3iLBwXalXoZmlsR9YsUaWouvIQuMjmJISAz0qkAzQ=; b=S+MfCyTW8Zm5Wp
	yBSmtay5QGQnIv3SpuwEF6RqlonrIUbgY+gk7MFLYLn3rAyKyywpCU7ZqqTs2yajnm7RcrL1jECRl
	3+PUZXfnNl2ZpzQguOVwWE6SyKYVXsa5P7crJX/IwzVRA4k6px+6Pa8GdvsjoEeDxg+XS1xO2Q4Qm
	lgxjBjDmei7guStN/17YBQ86Zwt30aGDDbQl/jEk2B/TpezXXRb7E2eFCLvQcTpgGDzfKObYc/6o2
	JTDzZQm3qFa09270LUQbJgvNXVbQdzIo02q8VLMFemSv/I0ojJYN6hUX7EoprMUvvWch7DXeTo2f9
	qjksLSsPgLqbwsDSrgKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ice3u-0008WL-Hy; Wed, 04 Dec 2019 23:28:02 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ice3q-0008Vs-A8
 for linux-rpi-kernel@lists.infradead.org; Wed, 04 Dec 2019 23:28:01 +0000
Received: by mail-lf1-x141.google.com with SMTP id y19so917187lfl.9
 for <linux-rpi-kernel@lists.infradead.org>;
 Wed, 04 Dec 2019 15:27:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yHQVhXEdwiBmbkFOI/t2rAMKEMxdwczYwcvTARuZwPA=;
 b=kdU4pIGwHdUVh3EhGFkzT9GgYsragPKcs7FuwTMlbtLJvttXZfLZUfPXm6aB3Jr+RU
 38MrZ6hymBPgkwUXIBkSpd1J0WPLDweyQBU8s7KUeAX151uIYB1I1kTEiLtOLC6zk3wd
 fr3a4MEoLHiRL3ZiFXBTqWRV9euJoRLUvIpVVsCIBGXM9OxRNiPbDh47Ie3oKbB+MseA
 KYzkWEThxoPnMgEcDGnO/5T0bfLRXagokoliB0cWecFbz4ka+fBNLkA4FoPY8pcE9Jun
 6Kv3/OQbEaisRLh3xAbhwSydMVaM8iqPiKS79yNeq2YBiRAOwB2wy8+fBDwb3ERMc9Ap
 KsFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yHQVhXEdwiBmbkFOI/t2rAMKEMxdwczYwcvTARuZwPA=;
 b=AwPyfRVq3wSebUSMNLl90fvO8UbXVD/KnfXzSopTdS+9TgIALE6hx9MsN4arMhoHdy
 gpHnX8cnzgGx7L0FdRX5lsQRhQMccIEGqpkrGwioCwnb2X8Y35sqivU7ZgnzdNwmCyHP
 tEQxyBZNn1dGZ98W/MjYFsLkhCsxBJGYIh7g5BxHp0m1o6pcuObt8pq4Upx3S3BjoHX7
 WwW7onjgRMSuef3aK2aLcQRbeMjhrtQb3E2ramLMI7GpGMI3eOJjesMdi6xe6kF+EZgn
 UEDFwxo4uP29kVg+fYWyKQoXTR0OpetUgB/eZ7VKKDEI9HpjTkdVzpt90rIrECpQVwdP
 A+og==
X-Gm-Message-State: APjAAAVXyx/QdODaABehLCMXekE2hw+SdEhDU/9oVHUkBZrJc04Yadlk
 D2hVkRDJJmrgqqpJnephLmLzc1MEz09QKBXjoxDIgQ==
X-Google-Smtp-Source: APXvYqz+t++AT2vtWuUK2EhvNZZZKqqY0BgVWoCr/oGj7/IbXngXHuX7q9WugxKvSj/W+txcIm060a0gJxVkUTIpKx0=
X-Received: by 2002:a19:2389:: with SMTP id j131mr2752925lfj.86.1575502072281; 
 Wed, 04 Dec 2019 15:27:52 -0800 (PST)
MIME-Version: 1.0
References: <db6a1e17-49a3-e3ed-7713-56b7763713d6@raspberrypi.org>
 <20191202134344.GE1998@sirena.org.uk>
 <1e0b7cd6-cf9e-2b68-f875-8015c8ffc326@raspberrypi.org>
 <20191203163521.GM1998@sirena.org.uk>
 <CACRpkdbqNw+h6MphF7kLAwym-F3G+ZebMDB2BMt0bzA6DfM0OA@mail.gmail.com>
In-Reply-To: <CACRpkdbqNw+h6MphF7kLAwym-F3G+ZebMDB2BMt0bzA6DfM0OA@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 5 Dec 2019 00:27:40 +0100
Message-ID: <CACRpkdaxXKMqL4Y8yFu+U7WhpXgq6Yr+hx4rYd3aDzc+-dLDFw@mail.gmail.com>
Subject: Re: Side effect of SPI GPIO descriptor usage
To: Mark Brown <broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_152759_629749_34723C6D 
X-CRM114-Status: GOOD (  10.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-rpi-kernel <linux-rpi-kernel@lists.infradead.org>,
 linux-spi <linux-spi@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 4, 2019 at 3:46 PM Linus Walleij <linus.walleij@linaro.org> wrote:

> I looked it over and most are devices like board files and RTC
> clocks that enforce SPI_CS_HIGH. They seem to be native
> chip selects so it will work as expected but I will look it over so
> I haven't broken any of them.

I looked all over:

drivers/mfd/ezx-pcap.c
Enforces SPI_CS_HIGH if platform data PCAP_CS_AH is
set. Nothing (no board file) in the kernel sets it.
No action.

drivers/mfd/mc13xxx-spi.c
drivers/mfd/motorola-cpcap.c
Hardcodes both SPI_MODE_0 and SPI_CS_HIGH.
Should be patched to |= SPI_MODE_0 and
^= SPI_CS_HIGH. I sent patches.

drivers/rtc/rts-ds1302.c
drivers/rtc/rts-ds1305.c
drivers/rtc/rtc-pcf2123.c
These just have some text comments on the importance of using
an active high chip select. That then gets defined in the boardfile or
the device tree which is fine. Any GPIO lines used for this can be
flagged as active high or low appropriately.

drivers/rtc/rtc-ds1343.c:
Hardcodes SPI_CS_HIGH, has no in-tree users (bo board files
refer to it), does not support device tree. So there is no way
to break it. Sent a patch anyways.

drivers/rtc/rtc-rx6110.c
Prints a warning if not flagged SPI_CS_HIGH, wil print
that warning if used with a GPIO chip select from device
tree. No regression, also no in-tree users.

drivers/staging/fb_uc1611.c
drivers/staging/fb_watterott.c
A staging driver hardcoding SPI_CS_HIGH, sent a patch
for this too so we don't gain any bad examples.

Yours,
Linus Walleij

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
