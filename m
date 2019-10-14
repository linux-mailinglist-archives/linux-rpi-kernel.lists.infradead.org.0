Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22167D6A18
	for <lists+linux-rpi-kernel@lfdr.de>; Mon, 14 Oct 2019 21:29:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j32JsGdSWyYI/hTvhzrX6TUddGJSjvMZZTrQCoelwNE=; b=RZODoDPh9HMnf9
	tNW9ayg0h7h93Yaap63T6clKWVdY194qdOkQx1UZKAZk7F2jhkFdPBUcQQmS5jLuoKN1+QXVTbMsp
	Nnq48eKmARcvLfOusoBWqlS+/LH/3x8I+gvIpKz3gUxx2OtGI27UtTQnPQhS6pQzJjqqv5oWOB6Vd
	sK9Hf6zyqg0yTXM8T6VF4tlMm20rny4hvhFIkbNRxj/cH3QBBSE52yNR7y63yzVqvjHD+zugn9SdK
	UNf50SVMzLrnBpedzGDhrlpHCffwLH5olK8FOMIQgMIeXsljDKCQfv0fDdlhjW2khYYFeQeysEhY5
	td3aOnT+zzhJxL79Zatw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK61l-0003yX-Nl; Mon, 14 Oct 2019 19:29:09 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iK61Y-0003qc-2E; Mon, 14 Oct 2019 19:28:57 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id B9983B1E5;
 Mon, 14 Oct 2019 19:28:54 +0000 (UTC)
Date: Mon, 14 Oct 2019 21:28:54 +0200
From: Daniel Wagner <dwagner@suse.de>
To: Stefan Wahren <wahrenst@gmx.net>
Subject: Re: lan78xx and phy_state_machine
Message-ID: <20191014192854.q4cyzkytviitgmgw@beryllium.lan>
References: <20191014140604.iddhmg5ckqhzlbkw@beryllium.lan>
 <20191014143213.ishkkg7bkiwu6wi3@beryllium.lan>
 <e652167b-11e6-ec20-c340-d9ed828cc853@gmx.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e652167b-11e6-ec20-c340-d9ed828cc853@gmx.net>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_122856_252431_8D65BB55 
X-CRM114-Status: GOOD (  11.58  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

Hi Stefan,

On Mon, Oct 14, 2019 at 08:15:21PM +0200, Stefan Wahren wrote:
> Hello Daniel,
> 
> Am 14.10.19 um 16:32 schrieb Daniel Wagner:
> >> I've trying to boot a RPi 3 Model B+ in 64 bit mode. While I can get
> >> my configuratin booting with v5.2.20, the current kernel v5.3.6 hangs
> >> when initializing the eth interface.
> > FWIW, 5.4.0-rc3 doesn't boot neither.
> 
> i'm unable to reproduce this issue with my RPi 3B+

I figured it out. The initializing order doesn't work all the time. It
depends on timing.

> rootfs: ARCH
> Bootloader: U-Boot
> Linux: 5.4.0-rc3, arm64/defconfig
> 
> Are you using a vanilla kernel?

Yeah, mainline kernels

> Which configuration?

ARM64 defconfig

> Is Ethernet cable connected during boot?

Yes.

> Does ACT LED stop blinking?

No idea, I operate it remotely :)

> What is your criteria to decide "doesn't boot"?

My rootfs is over nfs, so when the kernel is able to mount the rootfs
and userland starts.

Thanks,
Daniel

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
