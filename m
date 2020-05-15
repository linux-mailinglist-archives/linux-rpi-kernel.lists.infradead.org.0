Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 388BD1D4D60
	for <lists+linux-rpi-kernel@lfdr.de>; Fri, 15 May 2020 14:05:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jg083AR+p1D3m+Abiz8xIDT7Ouu0/nHHzfd8uQsIFk4=; b=fCxOWb/YCLDUAy
	J24UzhHFix7zXCFeYn2kg/200OGY5EGOKaAPVp1xZNyYXAg0mmdCtUqVnlmQlXzKLa4Tndz04MJnp
	Nq75MztZfxNrO+09RYHU+MQhH4KfljmvqsPreqJfG9+3UITTVMCydcHn/fmlbYMqD+j/Vc5eBTPGr
	nM80qmIHXMVWmljk+u8z86JloKjqzt06KWJAE8AHPkbwBVqfz+U2oEtSXAEm2M6AGD5MTHi5IUvjl
	x3FdX6kvDeN5kKeLnzqRw26ZUGGMD4aqcfn5BP3hIpolHrx5/xTkl46cV6c2avnKpXDliB700kGLN
	CNeXkH51MEi7Q/IgOnFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZZ5x-00035a-T0; Fri, 15 May 2020 12:05:41 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZZ5V-0000pt-6T
 for linux-rpi-kernel@lists.infradead.org; Fri, 15 May 2020 12:05:17 +0000
Received: by mail-wm1-x342.google.com with SMTP id u188so2393811wmu.1
 for <linux-rpi-kernel@lists.infradead.org>;
 Fri, 15 May 2020 05:05:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=raspberrypi.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ld9PSPi4gxMT3srhK2KkB8g1qVfn/iswsFX6/TsfNCY=;
 b=YxsJRRS/TLR3HlFZMOfkdngSGnAHMusp2nLfcDYdcQTHQtoDm5uE34J/9HTOleL2OX
 wjp0tWsEyKYHxh94SeK+WFvQcRGhx8yLMmq8BH5w5QLArci1+iqFk69Ui1j0YX7470Qx
 gUpDT6nWJMmLLMOrqKjGe0JDL0G8zbUI5EJBJlSHqGxh2e5tgfX72lW6BtS5fQdlcAuA
 dCb1xEw0n3pMOFR3r2J2GD2UVLzZn819UsKlYemdktSa6LJuE6ADNvv8Dpw8crQE5bjr
 PH+wSKaWGLJHOCLXK5PAiEeFF3gFZsowrm5q/N9ELGGUEMpmiz0ssIN7kohEVhrP51AH
 ZArw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ld9PSPi4gxMT3srhK2KkB8g1qVfn/iswsFX6/TsfNCY=;
 b=n+JcySnBl6QNuB/SNZBhX6kz3U5U/8mXvbeHQ/G9EFzsxXDdCBiwH6MVEQkKjRMgfg
 +9f3SKLNkI/7k/DDW4xsY/YasGU9RNEyzdRNuU3wTkwUeWOSejogy91PXzb86jVnYK3E
 lGhHtGlG3Kg5puPDFmGurei4BdrenQSRSVRU3+DU7hlCSVA+LzzLTiKpg0XIM54Qyvpp
 USf3i8g7z9fD46VIhhF17JD7kYeDgNN1onz1klH5igdjUJ6+CjVvoxa4zS2f8M8dwPZ8
 z5rySQTqPsr4gGb9doX2/4CMKiy1zuo3qbfPPLYxMv1yXf0WN5ES/Zs5ucGNivdsoEvp
 FQgA==
X-Gm-Message-State: AOAM530Pq8AH+7Z98VHiLCX1RP9xA0NDm2L24PP5xxEJw30U+RNNvKeE
 BtZ0N4HVsEM0ubDKgDLSI9p/XPHzO50IxyQMGvEFl4fws9Y=
X-Google-Smtp-Source: ABdhPJxRurWTcQv2hqgLdhFGCWVR03306scnTrkFhCu533yNPPRDisaou5SGbfQBTpOLMEGw6a3HpmP6UiSDdRIcepY=
X-Received: by 2002:a7b:cf22:: with SMTP id m2mr3932518wmg.82.1589544305688;
 Fri, 15 May 2020 05:05:05 -0700 (PDT)
MIME-Version: 1.0
References: <1589541929-12098-1-git-send-email-LinoSanfilippo@gmx.de>
 <20200515114732.fbiriwdppozvg2d7@wunner.de>
 <c9d65552-ebff-ecb2-2042-ef214088ee9e@gmx.de>
In-Reply-To: <c9d65552-ebff-ecb2-2042-ef214088ee9e@gmx.de>
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Fri, 15 May 2020 13:04:48 +0100
Message-ID: <CAPY8ntDaGADVRHhyDwZC8DVjzQn0DhN+0803p9k4+BO=LFtODQ@mail.gmail.com>
Subject: Re: [PATCH] bcm2835: fix missing variable initialisation
To: Lino Sanfilippo <LinoSanfilippo@gmx.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_050513_322780_F8FF5A07 
X-CRM114-Status: GOOD (  14.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-rpi-kernel@lists.infradead.org,
 Dave Stevenson <dave.stevenson@raspberrypi.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

Hi Lino

On Fri, 15 May 2020 at 12:55, Lino Sanfilippo <LinoSanfilippo@gmx.de> wrote:
>
> Am 15.05.20 um 13:47 schrieb Lukas Wunner:
> > On Fri, May 15, 2020 at 01:25:29PM +0200, Lino Sanfilippo wrote:
> >> In function get_first_supported_format() the value in variable "ret" is used
> >> as a condition in a for-loop. So make sure it is properly initialized before
> >> it is evaluated the first time.
> >>
> >> Signed-off-by: Lino Sanfilippo <LinoSanfilippo@gmx.de>
> >> ---
> >>  drivers/media/platform/bcm2835/bcm2835-unicam.c | 2 +-
> >
> > This driver isn't present in the upstream kernel, only in the
> > Foundation's downstream repo.  To fix the issue, I think you
> > need to submit a pull request on GitHub rather than a patch
> > to the list.

It's in the process of being reviewed and updated on the linux-media
mailing list.
https://patchwork.linuxtv.org/patch/63531/

> Hi Lukas,
>
> thank you for this information and for the review.

It's already fixed on the rpi-5.4.y branch.
You are correct that rpi-4.19.y has the issue - PR welcome!
https://github.com/raspberrypi/linux

  Dave

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
