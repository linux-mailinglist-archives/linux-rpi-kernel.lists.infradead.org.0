Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DAEF18BCA4
	for <lists+linux-rpi-kernel@lfdr.de>; Thu, 19 Mar 2020 17:32:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6sK8NkfbnTIK9FjbiS5j2mv9y7AOALnd7S9a0/k/00o=; b=ZheIAfCtx3ARWj
	LKOGEB31pWueO/Mb910yg5+MvoGEeKJQxorxJTXaULO1c4IpJ+sxTGQUYJotrb7Vpa9dM+JsEwcjh
	KnHJ/506eAGxkevggUN3lCZDByiGKiEBXvVlKivO21KPNAfnSDQaSE0J4xo6rKxrN8IYiqC7fQ0XW
	euHTBHRosEvRKtf6y3kSLkSWyTXAKfQyQNsldseygzVimz83oXEtqJrYADd+IFjFyCC6GabDqEEzo
	rAa2ujFhmA2NK7TNpBeWk8jX9OvaCD/ljkDxL+a/2CYlHRbibeLBiI4yNu1lnz+/k3ypUwxh6hKYT
	4HitkIZlmaECdmjOQOww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEy5k-00035H-70; Thu, 19 Mar 2020 16:32:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEy2d-0007Bz-OK
 for linux-rpi-kernel@lists.infradead.org; Thu, 19 Mar 2020 16:29:11 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C8326208C3;
 Thu, 19 Mar 2020 16:29:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584635346;
 bh=47/adx0Dy1ZaQP4mDTShj4T+svJF5SC8YBHcZVMrVvk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=siOdVv18cPP4PM7prvqdNYpXxxIIgPhNGhgZSJVTUDhdHp5dZvFpywYo2Uk/sW30q
 NoHbuWbpQUypJohs30uYisKMuWSAVeiJiNIdaJB3lV7O7+I0esu8btFlf+pKxR3TlB
 rNLDrXEewZARsPVc9wH6/6OW0WyVrimpgBpaSjPw=
Date: Thu, 19 Mar 2020 17:29:02 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Takashi Iwai <tiwai@suse.de>
Subject: Re: [PATCH RESEND] staging: vc04_services: Use scnprintf() for
 avoiding potential buffer overflow
Message-ID: <20200319162902.GA238565@kroah.com>
References: <20200319161300.25967-1-tiwai@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200319161300.25967-1-tiwai@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_092907_897381_721FE361 
X-CRM114-Status: UNSURE (   8.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devel@driverdev.osuosl.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

On Thu, Mar 19, 2020 at 05:13:00PM +0100, Takashi Iwai wrote:
> Since snprintf() returns the would-be-output size instead of the
> actual output size, the succeeding calls may go beyond the given
> buffer limit.  Fix it by replacing with scnprintf().
> 
> Reviewed-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Cc: bcm-kernel-feedback-list@broadcom.com
> Cc: linux-rpi-kernel@lists.infradead.org
> Cc: devel@driverdev.osuosl.org
> Signed-off-by: Takashi Iwai <tiwai@suse.de>
> ---
> 
> Greg, could you apply it if it's OK?

Will do so, thanks!

greg k-h

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
