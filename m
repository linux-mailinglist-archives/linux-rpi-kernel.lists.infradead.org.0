Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3B0119A25
	for <lists+linux-rpi-kernel@lfdr.de>; Fri, 10 May 2019 10:58:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OSzezEbeuUjco2+uiOelivEPget/rVqV3gWnrmk1v9E=; b=Zk4Tk2k1oZp2Py
	bJKIMBxlYksY8BCBe0VUFz4eynWAReuYKskYVelXG0+lvgK4zqd8tMnHjhT5KSCAPGwBEodyC5pXF
	APZZkztsAY9/93x0Zc4Y2WZ5fEKVfWPm2J9efjm47U/zJ8wyX8j/TMwjds7I9VjAYdEoeZRVI0V7m
	QUU3rVgV+JnMPklMcj4PPCKDswh7iuqgoL4wxAgAkBYXY1/iN66egTCYm86mTT3MpLcaCWc1n4Cqj
	kO1tV7CaV3TIHoeKwyo5kFOr1E9qOj36Ma5X1NixvzBDEjD6Vv9/1gkaM++8ZasLRdEs2s+ec5mG6
	t4TKJ1MRD9NupPBeby1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP1Mi-0008TW-4E; Fri, 10 May 2019 08:58:52 +0000
Received: from mail-ua1-f66.google.com ([209.85.222.66])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP1Me-0008T1-OB
 for linux-rpi-kernel@lists.infradead.org; Fri, 10 May 2019 08:58:50 +0000
Received: by mail-ua1-f66.google.com with SMTP id 94so1871229uaf.10
 for <linux-rpi-kernel@lists.infradead.org>;
 Fri, 10 May 2019 01:58:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Y/d5Ifswy3YqVl9Xug/va1f5QH34DIA8vxfgHTAgVCI=;
 b=qTtLHo42HRAPj7DpyzGZ2Ye4tLhSNRZIKPqtQfWyHXH6HTykk+ZMUzXC6NvNhXG1RN
 jbvby3sozw0WFOsmiq/iTNoFluZJ/nJGltdNOANr9z5ZElZKlDmgddCxXam7Cmz/Ba/9
 LCPaPP/ABROEtUmTrbgF0a0hq6dq5QUgTRluDEPFWiWgMvTnUQl2PR++Z74WIap4nKSG
 QCZMeHgEPX56wWD43LpdRtwYwSXP+5V3ZkM3BP7LNm9T8kaNmEhABcwyhZvqmZtknJx6
 Q/rBXdDcTic7gjdFqQHbdb9vh+ar2pW/tbLvdHS47F57aNb2/r7ru0v0jezIDgiGPILP
 XZOw==
X-Gm-Message-State: APjAAAX2GuAcfl2H7OIZZrLE9dpjwx3rkyg3pSohew8dR2aSlWtVES0n
 IVAC6y2bvKw/1dqA+HKo+6MQN77O5XpQLB3xppk=
X-Google-Smtp-Source: APXvYqyXMm3lCed9SDXn/XOymM42x1HVXQHzWqD7RKR0b1qdhybEgwHwcAU2Wu1PloVsAkKVFa9eUeX5s3hNIH8prkE=
X-Received: by 2002:ab0:d89:: with SMTP id i9mr4679017uak.96.1557478726866;
 Fri, 10 May 2019 01:58:46 -0700 (PDT)
MIME-Version: 1.0
References: <1557477738-20634-1-git-send-email-na-hoan@jinso.co.jp>
In-Reply-To: <1557477738-20634-1-git-send-email-na-hoan@jinso.co.jp>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 10 May 2019 10:58:34 +0200
Message-ID: <CAMuHMdUFr3BMYH5LmvS9vxCoQnqzA6m3X-E9B6vKbMyeH8QK-w@mail.gmail.com>
Subject: Re: [PATCH] spi: bcm2835: Remove spi_alloc_master() error printing
To: Nguyen An Hoan <na-hoan@jinso.co.jp>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_015848_789766_A14536C8 
X-CRM114-Status: UNSURE (   7.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.66 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 0.1 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Mark Brown <broonie@kernel.org>,
 linux-rpi-kernel <linux-rpi-kernel@lists.infradead.org>,
 linux-spi <linux-spi@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

On Fri, May 10, 2019 at 10:44 AM Nguyen An Hoan <na-hoan@jinso.co.jp> wrote:
> From: Hoan Nguyen An <na-hoan@jinso.co.jp>
>
> Printing an error on memory allocation failure is unnecessary,
> as the memory allocation core code already takes care of that.
>
> Signed-off-by: Hoan Nguyen An <na-hoan@jinso.co.jp>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
