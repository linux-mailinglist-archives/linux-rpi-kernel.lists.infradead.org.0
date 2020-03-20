Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EBC518CD30
	for <lists+linux-rpi-kernel@lfdr.de>; Fri, 20 Mar 2020 12:46:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rYa9rRLzeUut5Y3858lF2GcbAeb4YTf+NyDnkaYmDD8=; b=DqAlhXUgRxO+i3
	jjCR+F1mBaxcFLHk3byduOfOYkcHIMZw/REh3GUF6dwc7fGoMu07ifvXszTCB9OZUYHNfa0sMjrkd
	J5gt8tqzyprzGMPRhy0QgU5Zq6cFPHHe2Q2jR2bbVz1rYmT9f4QkRSxia+jPQ0CF/TKGaE968bbj1
	f9BfPWrbBZWS4tO+CeZqIr8F2Jcp1qC5hrEf8yuUAyMHEQn6JHIsCNJ4viCWE4G9xC4V3FjH0GgNz
	etUd7ERMNrVlrBxQ19pP51wHZxI2MpWEYVFCmX0AgR9RJdvEqIeqc75Sjoa2R/4yT+QzwMJc1hONg
	5wewUeGzRTAJcKATmkNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFG6P-0007Zk-Rt; Fri, 20 Mar 2020 11:46:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFG6H-0007SF-34
 for linux-rpi-kernel@lists.infradead.org; Fri, 20 Mar 2020 11:46:06 +0000
Received: from mail-io1-f51.google.com (mail-io1-f51.google.com
 [209.85.166.51])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BADFD20754
 for <linux-rpi-kernel@lists.infradead.org>;
 Fri, 20 Mar 2020 11:46:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584704764;
 bh=o3Mr0+6vOT0HMquBVK0W8//CA3BlyAOd1cckAfLtMmY=;
 h=References:In-Reply-To:From:Date:Subject:To:List-Id:Cc:From;
 b=Ijottreq5gSdcRUA6bpXlhYJEFL1RoAhcnYHKxocfcPU0h81AurAYQ8ZicPjizuI3
 puybFGMeZRpM8ZHuv5CdO1wxGy0lMoAAsojltX4wIBaK4liMIONt+LQvX6Fqy8diqU
 +U2pTLGXQCLLUq8qNrBluTs4xU16HZw80FK9UYzg=
Received: by mail-io1-f51.google.com with SMTP id q9so5623406iod.4
 for <linux-rpi-kernel@lists.infradead.org>;
 Fri, 20 Mar 2020 04:46:04 -0700 (PDT)
X-Gm-Message-State: ANhLgQ3NwoTt50apC/1lOQ/3CnoBFoWOo5AzGZQa6yMQ4F50MvJn20zz
 h+Tbimd2oxwUx2iQacibaFUPj6tBcErjYBFW5lc=
X-Google-Smtp-Source: ADFU+vuybqosV9UUKyHgPXKKIRA10VNnjBjLsX3ujhmein6A0rTxNXu08zzWNY2HvqZUtYVOWqutEDR7JKn+vblMV/o=
X-Received: by 2002:a02:880e:: with SMTP id r14mr7389246jai.107.1584704764196; 
 Fri, 20 Mar 2020 04:46:04 -0700 (PDT)
MIME-Version: 1.0
References: <fa54aed317ea92ad306dcaa338b925a5c7a9ef51.camel@suse.de>
In-Reply-To: <fa54aed317ea92ad306dcaa338b925a5c7a9ef51.camel@suse.de>
From: Josh Boyer <jwboyer@kernel.org>
Date: Fri, 20 Mar 2020 07:45:52 -0400
X-Gmail-Original-Message-ID: <CA+5PVA7qKqEsWBCUXUVXZwezt0xG_GLyeB8Mh4k8mebcRDvqEA@mail.gmail.com>
Message-ID: <CA+5PVA7qKqEsWBCUXUVXZwezt0xG_GLyeB8Mh4k8mebcRDvqEA@mail.gmail.com>
Subject: Re: [PATCH] brcm: Update brcmfmac434xx firmware binaries
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_044605_155287_3A8A1D33 
X-CRM114-Status: GOOD (  13.82  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 linux-rpi-kernel <linux-rpi-kernel@lists.infradead.org>,
 Linux Firmware <linux-firmware@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 20, 2020 at 7:15 AM Nicolas Saenz Julienne
<nsaenzjulienne@suse.de> wrote:
>
> Both devices were affected by the Kr00k vulnerability, CVE-2019-15126.
>
> The Raspberry Pi family of devices being one of the main users for these
> chips, the firmware files were taken from their downstream
> linux-firmware repository.
>
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> ---
>
> I'd really like to get some confirmation/comments from Broadcom if possible.
> This was taken from:
> https://github.com/RPi-Distro/firmware-nonfree/commit/ce751a84617715ca0189e55c3cf07f12d87e16e5

Yeah.  I'm not comfortable taking this if they aren't pushing it here.
Someone from Broadcom should comment.  Also, I don't think these are
the only devices impacted.  It would be better to get them all at once
if possible.

josh

>
>  brcm/brcmfmac43430-sdio.bin | Bin 388739 -> 400447 bytes
>  brcm/brcmfmac43455-sdio.bin | Bin 488193 -> 624943 bytes
>  2 files changed, 0 insertions(+), 0 deletions(-)

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
