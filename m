Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 896FD12E8BD
	for <lists+linux-rpi-kernel@lfdr.de>; Thu,  2 Jan 2020 17:34:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Knb4slNyc1uKupE5Vk8nbNfWeHrujr9+6emfTqv07Fc=; b=q9TTxtgqNxLgka
	5A0prGrAgkrtPYIHQuZgb3jN2fWvr/kHskfp4N9KOOei3K4DZAXCXtuYn3QkoWXUOmwbNjOEB4pIt
	9Oa5s9XPXyTcMBYT/xco81ERRyfLCBdjB1qmocZieyotg2WtsSzUivYeN6cetK5GluOeEg+sp1o+J
	v2CBGtDQ3p38RreBqJ3d01rXIPOmAlyWFYNaRNqLew/KO6iMIszE/PIzb743J6tRkviZpbzdqIAtl
	l9lvL18umS9xRX9MCEUQOxo8LHGwqpzamNsyrM6nEFog2SWd1S/4FZqsitFh9qTpVVGGdEtj0sKpT
	VKTedvVclaVfgmdPwfPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1in3Qu-0005b4-Ai; Thu, 02 Jan 2020 16:34:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1in3Qr-0005aD-NX
 for linux-rpi-kernel@lists.infradead.org; Thu, 02 Jan 2020 16:34:46 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 81FBF20866;
 Thu,  2 Jan 2020 16:34:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577982885;
 bh=5Kp8ap/Tk/z4Hh1HhvEz36l6SkechDXcwS4trGtvr7A=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=HELp7UlBrA0UawPyBI2eVrqWC3tbDaC78xoJIA7hR5PvuKjVXDS7wMmOt4MfVqyLW
 oavFwxm7t+DQA9zK10Cqq0rwtcWTB1G11B0VdsJZCfKK4hgCI603DjgxoDAOMEDDBa
 FSPUxymJVgn9oid/rIgVI+1kKdHPIi8bibUnU2v4=
Date: Thu, 2 Jan 2020 17:34:42 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Marcelo Diop-Gonzalez <marcelo827@gmail.com>
Subject: Re: minor bug report in staging/vc04_services/
Message-ID: <20200102163442.GA177909@kroah.com>
References: <CA+saATVwyungoYC2WTZf7j=kp8YXbDGJ44DOWNePiK9VeLOETQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+saATVwyungoYC2WTZf7j=kp8YXbDGJ44DOWNePiK9VeLOETQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_083445_790430_0AC7BCAF 
X-CRM114-Status: GOOD (  11.05  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: devel@driverdev.osuosl.org, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 02, 2020 at 11:24:09AM -0500, Marcelo Diop-Gonzalez wrote:
> Hi, I noticed couple minor bugs while looking around in
> drivers/staging/vc04_services/*:
> 
> 1. When opening "/dev/vchiq", vchiq_debugfs_add_instance() adds a debugfs
> directory named after the tgid of the process who opened the file. But
> there will be collisions if you try opening it multiple times from the same
> process.

Odd, but shouldn't cause any problems as no code paths should care if
debugfs works or not, it's only for debugging :)

> 2. In vchiq_dump_platform_instances(), called from vchiq_read(), each
> instance's ->mark member is used to track whether it's been printed
> already, but two concurrent readers could stomp on each other (causing one
> of them to see fewer instances than actually exist), since a field in the
> vchiq_instance struct itself is being modified with no
> locking/synchronization
> 
> I didn't want to send any patches out since I'm not sure if/how people
> would want to fix these, but thought I'd point them out.

Patches are always best, please feel free to submit to help resolve
these.

thanks,

greg k-h

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
