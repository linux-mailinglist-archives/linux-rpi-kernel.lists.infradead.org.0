Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09C951CC319
	for <lists+linux-rpi-kernel@lfdr.de>; Sat,  9 May 2020 19:11:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mMJB81oPz82Ye9zbuAc/O0rWuwer80Ku/YX/Ka9GHWk=; b=Xwv0hjOjfMwH6K
	ZldC5tO5VwIGj80UZo5mQye6aF2OsxmSxJU6cNNxmY/jTnFR0Eovwc7UHR6B8yj1SO13ub0SgZSAq
	+WQ0Xm1T+w4TFutQV+/rTuCEuyLi3vt3jSX33n9lIq+MUj9rMbeG33MV554a0meJyVuNTb6iTwxET
	om5qEXbfkf56PG49mos7dNC9v9/iEXE9OJD+PwTqFfjPlea8jpKOjG4XAfsA6dS5ztv3b2r82F9Td
	pQa8nAie1qPxlCg6pzZbsOx738alqBO8weRPj7sfJC+yx1VK8ELKnPSa9T/W87J7gQrVRu/S7yTAB
	Ry/486+glyvF7fsupSiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXT0o-0003du-Qv; Sat, 09 May 2020 17:11:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXT0f-0003Vi-T0; Sat, 09 May 2020 17:11:35 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DB84D2184D;
 Sat,  9 May 2020 17:11:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589044293;
 bh=Knc6lihQiyioaGFRTOVqQ9keAhGSuwjLXItKg6yamdM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Awx6svb+sXY9Nb1+JkPtcyV+gT732HQk2LBchxvGubEgp3mbS7q9AwBqMxh55g0/t
 Li864Ct2Zx/qanTNcvtRN350fif6Rr+879RB03rX33tTlRlh7X+9aHfnSKofph22sn
 Js8zspBbqLHuW6ZBLywIrEdE3ccr8zKi+rkUJYdU=
Date: Sat, 9 May 2020 19:11:31 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: John Oldman <john.oldman@polehill.co.uk>
Subject: Re: [PATCH] staging: vc04_services: interface: vchiq_arm:
 vchiq_connected.c: Block comments should align the * on each line
Message-ID: <20200509171131.GA2495033@kroah.com>
References: <20200509130714.10586-1-john.oldman@polehill.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200509130714.10586-1-john.oldman@polehill.co.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200509_101133_954436_35117704 
X-CRM114-Status: UNSURE (   6.83  )
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

On Sat, May 09, 2020 at 02:07:14PM +0100, John Oldman wrote:
> Coding style issue

Your subject line needs to be much shorter, don't you think?

Please fix up and resend.

greg k-h

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
