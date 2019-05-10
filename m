Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEBC619A39
	for <lists+linux-rpi-kernel@lfdr.de>; Fri, 10 May 2019 11:06:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j/zoSpiDPAhK/EaKM1tguoBdufcp2U9/w8pZ+uehgvs=; b=DqJZkMST/EdTOz
	vPxW4ASK7WMK4Jay9wiBrp1CYFqtkCeopXjhFlittJDmrmvERIGu7+veFEMCfq86xBoRsIVG4l577
	q3+ETN6oPEW8aKXDAmfNKbc3ADdWprIuLJqF1kqabDQ5i6tzdH0YszIwZFr/K6+h9EzdVKCnt5OeQ
	xnpZzkjskYGjUippKQCHFeDenIOpgDU9PiOKeCv6KmR8QqyrYLKXloCBtnnj4JNtEYvjvzh8rXDQo
	91G/drHul86hHgpasPPF+FMntZW6a4iD5XRtpI4NjRFBuBjBGYFysliNGN9FONfrzvITOWeviRpCQ
	SzoZz++aYmG/r92GT3Lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP1Tp-0003J2-J5; Fri, 10 May 2019 09:06:13 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP1Tl-0003Hw-8h
 for linux-rpi-kernel@lists.infradead.org; Fri, 10 May 2019 09:06:10 +0000
Received: from [192.168.178.187] ([109.104.54.236]) by
 mrelayeu.kundenserver.de (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MXp1O-1hCvYv1g3Y-00YDDx; Fri, 10 May 2019 11:05:57 +0200
Subject: Re: [PATCH] spi: bcm2835: Remove spi_alloc_master() error printing
To: Nguyen An Hoan <na-hoan@jinso.co.jp>, broonie@kernel.org,
 linux-rpi-kernel@lists.infradead.org, eric@anholt.net
References: <1557477738-20634-1-git-send-email-na-hoan@jinso.co.jp>
From: Stefan Wahren <stefan.wahren@i2se.com>
Message-ID: <f8998234-1ab6-43e7-7dd8-859933b2179f@i2se.com>
Date: Fri, 10 May 2019 11:05:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1557477738-20634-1-git-send-email-na-hoan@jinso.co.jp>
Content-Language: en-US
X-Provags-ID: V03:K1:wzz1T0bbfVGDOnI6uyGkDlwQzvTlBc78kHbjrTErqfmah+moxCd
 vlyjYfixKCsd+ywYhyWUMyYva7UUEpup8FOoOuoGTYNT3Z3EsEfwD4TQK6Yb2ZtcK952IzM
 nWNyE92iEe37jLT5EKuFg1QpTbn5QgtqGNVkirsLGSN2SQQq2MK57+n7j116/IWqdu9wr4o
 Wxv5D2+uijxyoofdgVU1g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:kl9xCEh4dW0=:tHnGIO023NmvYtXeYYB4nT
 nPihdVL8jd+/geLMaqrreM/4/59icJPaU4SQfFpkiwoUPYa1hWeyzvj0eC4t58YRCmE9FunlT
 KZLOuBhv3jfIyYhPkeuhqWFX7PUermsfEeMjV4wqQhHWBXjlrDFaqguUMf5XUGHSsX3VdzuYD
 t+LVtg/dzhYi1eCfrzzPMHRZOgmMVB5sm35N/wi4ME/Bk3mhcge0ZhDMH+T4HaPBkMjnkoGca
 5I2bjkRDBNv6nskX2amF9P5U08bjS5FTga02nO70owZ2D/bu4j2jIKT5MWjFVakuiIBjWpWUA
 K/ZdqyrhGL1k8ThckI5fsNEcrNL5fS8WjzmtGr58j/blszho0DLOs2YFKrQnNagNnq+dViwed
 0WSC/aRPr0sMCygfWDVOqRFC2pGk1spzuZc3DukpHN3wWJisIsdS6nwxiPWL8kJpk5pLJ5/Yj
 2EMD6/k0lktgEUBU3t0hBGV3+i3TvKfppCOzd530KeWMXeIZIzJKPyKbTR2FQ+br3L3ErXZ5A
 34mDIq5snP4ylDIBBWh00d+0778hV++Ojlj+kSCs1V1wG6sCUEaY9MQsoOFU3GfGWPrc7mxF3
 bMvkexUD0+fTJBrtRhqkYJpLn6rJsDPQBOS5Tbp3xkL0TghJAjlsRyFdBo9XLZXUNMmt2sXfn
 sB8yYZef9sVGBMs3gaSc4/ScL3RreugxU39UQ264liUQfwL7HMC9osPYXumlnsxSWyMLCKtAP
 UkJyDZoUr7ARP/na54lp/pBIDmPm/2VJOA6dU2A+L+BF/lRJtjpR8yX5VAE=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_020609_605969_278BE06C 
X-CRM114-Status: UNSURE (   9.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
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
Cc: linux-spi@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

Hi,

On 10.05.19 10:42, Nguyen An Hoan wrote:
> From: Hoan Nguyen An <na-hoan@jinso.co.jp>
>
> Printing an error on memory allocation failure is unnecessary,
> as the memory allocation core code already takes care of that.
>
> Signed-off-by: Hoan Nguyen An <na-hoan@jinso.co.jp>

looks like more spi drivers are affected.

Could you please take care at least of spi-bcm2835aux ?

Stefan


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
