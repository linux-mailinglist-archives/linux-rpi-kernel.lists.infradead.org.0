Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4F7B1CC766
	for <lists+linux-rpi-kernel@lfdr.de>; Sun, 10 May 2020 08:55:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h3xqCyFLxEO6vSAaSCNjNFCvNWr7NaXeJHLm/E4w1XI=; b=Muc5zZB1l9DG9b
	UV7+qkqzzjgoOM3dcet8V3u1cjN41t/QCjrZtIOKCqpkLM6BtYb6qdGK3WitJhrcuqb9IO0w4ihtk
	DE06rY64vCD3w5/jOEZwl75ac6eFlmj0APEZsbdQ2El84a0TIGgyma614F0BuIoHqpUl0wzA3r+ih
	Ul/hJMnYXep2G3Xu6xDXMNmDgVoD/iUdJulArj7zWkjhxmWNA0nxxf1jbpHGD/WzfS6E2Ck8Frz04
	BuR5LMT63/pA13/jRVsYrVTqJRlEw/vVwROlF7HbKxy0T3CAc078DwFCWFx/sxmMKmNBnvH7FvcgA
	FG5wD4Rb/O0HDr2JrNpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXfs4-0005md-Tw; Sun, 10 May 2020 06:55:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXfru-0005eV-TS; Sun, 10 May 2020 06:55:24 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E2B4120801;
 Sun, 10 May 2020 06:55:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589093722;
 bh=i5eGJPVlmK+E4XcF7rr2doxsy/jQO4NBL2xSdPxqnXY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=BdYDUObf0M7RBKkgpJMQOM//qgcTHgD4HLXJMvm/0yg8PHYzmQLbD/HcCwqHXrbxf
 SgJdjqHun6gQKs6rojSgCGfRyHRsA9pIYljd5bnqC7GyjKHs7GR5Uz/gn86gfTDlbn
 dt4aKmQVM1hyuL8QYEY8YO3Vq8/4tOJh5hVKpDUo=
Date: Sun, 10 May 2020 08:55:19 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: John Oldman <john.oldman@polehill.co.uk>
Subject: Re: [PATCH V2] staging: vc04_services: vchiq_connected.c: Block
 comment alignment
Message-ID: <20200510065519.GB3434442@kroah.com>
References: <20200510060645.10159-1-john.oldman@polehill.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200510060645.10159-1-john.oldman@polehill.co.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200509_235522_970674_06D1545D 
X-CRM114-Status: UNSURE (   8.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

On Sun, May 10, 2020 at 07:06:45AM +0100, John Oldman wrote:
> Coding style issue
> 
> Signed-off-by: John Oldman <john.oldman@polehill.co.uk>
> ---
> v1: Initial attempt.
> V2: Resubmitted with shorter comment line, as suggested by Greg KH.
> 
> This patch clears the checkpatch.pl "Block comments should align the * on each line" warning.

Why is this text not in the changelog area?  Don't you think that it is
better than the 3 words you currently put there?

Please fix up and resend.

thanks,

greg k-h

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
