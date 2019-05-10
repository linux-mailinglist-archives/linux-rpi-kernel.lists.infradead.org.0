Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E993A19A96
	for <lists+linux-rpi-kernel@lfdr.de>; Fri, 10 May 2019 11:26:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z3BmDUa8k8Rf4pOK8wqXGsjrz3iqC0xDstMGVZ2DKOE=; b=gTCArxWOcxw6uR
	eHEtHacn/liKm4AYFqG3hMoUpqo+qW8npZvn8y1rPMivhEFPRN47GvJ3pc8nMaA7mfLCUxkYbD0BW
	qJTL0TwRpjoIWWOasIesitxYHEz38WjhFBa7ScgCFx2hjWvE7Yat/iHNigimYGCA+6LzI39gx3/62
	H5by+EF2vz3CqPPGoxNlqF8iSMOfdHah5u+Wj/p021VZOsNCV/b2BG5kDN9zKkuiV/G34/g7PWKI1
	AihWfkiIyF8h7gHI/eS/+uqgu9hiv4cTK8JH8AnBEVi2DuwQmmwCZW3LwphJzRx3+B9Hg+uscGuXL
	0OlD9SwwFrAzpXjIYK1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP1nn-0003Le-8Z; Fri, 10 May 2019 09:26:51 +0000
Received: from mail-vk1-f196.google.com ([209.85.221.196])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP1nj-0003LA-L7
 for linux-rpi-kernel@lists.infradead.org; Fri, 10 May 2019 09:26:48 +0000
Received: by mail-vk1-f196.google.com with SMTP id s80so1319205vke.6
 for <linux-rpi-kernel@lists.infradead.org>;
 Fri, 10 May 2019 02:26:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DT5wT8AJFVUKeUgrd/69X3hf26YvnynRb3rkliFJbeQ=;
 b=uG7l7Qjp4j7QOuULXu4XPMdnK7HNopnACLOG81OGGjbZc0xkVT87+DiKWLSrcd/qAj
 VMNWNjuFRM5mmKAe+ZT4g/3pXIV9XENQ+xd0zCCt2CNjnkLOcktMu6K+1dWRx9k6LoUs
 mrpIrZCC6x7x1f1XC5fW5Wzr9TrUg+bd1911POTgYHISBdu4oIxOjcrjKfZl6k8Ddtsm
 bSEtkp525via8ati46DHHKDqgWRkDKyT5qOhiSMdaR/ycCWLySJXYlDofimjONqRSTfs
 4Mg4YCteeiqb4Gi2TgJHJ1bmpaqOzWNt+ZeRFCW9BvSqiWSVXwR3rXmvQlzPxuQkwhLS
 2xNA==
X-Gm-Message-State: APjAAAVPwI1h+O5fYi0P3F5+Lz6Tqh3CR5s4HgQW+LxMf0ogMAtQtpTC
 BHiMOURe9k62yRh7Ljpt/4p4W5Q99Knjwh8X6UA=
X-Google-Smtp-Source: APXvYqzj9/rCw1pufzI1/agjRwFhQV+30BDwd3fzoCGNzdcwix3rNmXJAjBYqBSsxKR7EK7EHL7MuNngBAZXWTOnlw8=
X-Received: by 2002:a1f:ff0b:: with SMTP id p11mr4594722vki.83.1557480406122; 
 Fri, 10 May 2019 02:26:46 -0700 (PDT)
MIME-Version: 1.0
References: <1557480060-15311-1-git-send-email-na-hoan@jinso.co.jp>
In-Reply-To: <1557480060-15311-1-git-send-email-na-hoan@jinso.co.jp>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 10 May 2019 11:26:33 +0200
Message-ID: <CAMuHMdX4x8x=xbszMJ-BVd6xCvZV_m7ds41d2b3og5XJKyZNQg@mail.gmail.com>
Subject: Re: [PATCH] spi: bcm2835aux: Remove spi_alloc_master() error printing
To: Nguyen An Hoan <na-hoan@jinso.co.jp>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_022647_689518_9187B75A 
X-CRM114-Status: UNSURE (   8.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.196 listed in list.dnswl.org]
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

On Fri, May 10, 2019 at 11:25 AM Nguyen An Hoan <na-hoan@jinso.co.jp> wrote:
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
