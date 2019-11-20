Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D650103FE8
	for <lists+linux-rpi-kernel@lfdr.de>; Wed, 20 Nov 2019 16:47:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pWkxXmHfDD21sGYD8iAT8UWEpfsggaXIQRzPbAnLuao=; b=KZkED3gM1ZMVBM
	SkzvjTevEX5ZDTCF1Qo5B4kCy4hMNTSiy1TrmZYBD1fOIPVUriw1bt5fGDAFy1fpeMkK/Nz6r3BMY
	mTn77HIhnjcEPDxZrdSIQbeSPgIPbDedWO9FBhP+1W2bMleUBFIzCKLxGxdvG9Xbe6/pRC5qlAy88
	lvq/20FhMDo8IyV4GFsy1Oxt7hwHAzGZXXkN7gR/6QeWxl8NPzqsd2MT8RauhTuaK22l9RyvXsgUL
	QadLQNT881vJy/ys2NBqlXGBu2nHaRz2bB4c/3q7MFoomiwG+3Vc0mUVCR2CjvdJXZc32UTVsrAfe
	8bb7Q4zqF0+R3bENkKfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXSC9-0004LX-C2; Wed, 20 Nov 2019 15:47:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXSBY-0003g0-E7
 for linux-rpi-kernel@lists.infradead.org; Wed, 20 Nov 2019 15:46:29 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E141820692;
 Wed, 20 Nov 2019 15:46:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574264787;
 bh=jsNoUD5HlaDAsX6ZueZcGW8hIPzIvVjC/F/MlG0JjRA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Ih34yPJ39xN6RB7lQ+aJbhG8O45zFJKIzWeJ+UOSbcPsz2wpCiRkMIb/t6E0+KSjA
 wFadb97jArw2FDxgqF8/H40JLJGbddhH5O6TVJn1GfNn/mYiutz/SYDeAhb0rbiUhV
 U2P76LwZ6NUgOKrZlXLeT5fQcKXFuA18kk0vvT1E=
Date: Wed, 20 Nov 2019 16:46:25 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
Subject: Re: [PATCH 1/3] staging: vchiq_dump: Replace min with min_t
Message-ID: <20191120154625.GA3015918@kroah.com>
References: <cover.1574253964.git.marcgonzalez@google.com>
 <d38c33e15a5cdffd2d49243574fee46be8caee92.1574253964.git.marcgonzalez@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d38c33e15a5cdffd2d49243574fee46be8caee92.1574253964.git.marcgonzalez@google.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_074628_505102_1193F339 
X-CRM114-Status: UNSURE (   5.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devel@driverdev.osuosl.org, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 20, 2019 at 10:36:46AM -0500, Marcelo Diop-Gonzalez wrote:
> Replacing this and fixing the block comment format in this
> function fixes checkpatch warnings.

That is two different things.  Which means you need two different
patches here.

Please fix up.

thanks,

greg k-h

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
