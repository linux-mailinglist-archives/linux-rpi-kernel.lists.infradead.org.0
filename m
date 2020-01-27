Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D460C14AAC8
	for <lists+linux-rpi-kernel@lfdr.de>; Mon, 27 Jan 2020 21:03:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jKaXgYoZ65iDZ2f2sXk8ZOgvHGjPNz/nxiY+1Ua2Ij0=; b=i3442hFKkG8zN1
	NPXCP+OHa7yKW1IN3puuaD4GYopwzPFkBRh70Vvixt28gVJXDSWMz7VqBmxZeAzocGpPWwlrjcytF
	1HyPqll9/Fgk7VJzp3nH7n9NeVYRd54fWZaAofkwQICbQYyABDNG/P7M9LV3pcx+vXwgAMLFQXcv4
	eVMqlbQv7nwlK1NpUbpqJCjbopOUPs+GRP+qIn14/7wPQhWUo45X4h/pGiDHhcD5vDB3KdXPe3mGu
	e3p9SFrV0YzR3K052/lIoz5OPYyNrzOxhgdxVgFW2ElmUUPCpu04S9d2EyD/WPRgPSXWG0di9XdJV
	cEbEz/ePdTf8vZc7fO1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwAb8-00045I-5E; Mon, 27 Jan 2020 20:03:02 +0000
Received: from valentin-vidic.from.hr ([94.229.67.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwAb5-00044k-L5
 for linux-rpi-kernel@lists.infradead.org; Mon, 27 Jan 2020 20:03:01 +0000
X-Virus-Scanned: Debian amavisd-new at valentin-vidic.from.hr
Received: by valentin-vidic.from.hr (Postfix, from userid 1000)
 id 1DAA8393; Mon, 27 Jan 2020 21:02:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=valentin-vidic.from.hr; s=2017; t=1580155368;
 bh=fRWRX98jC86tXlVTSR4DmkrD0lvvMReNXYv6d8DffHk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=DhVMFib+o1PzAPYxd+Q7cM8lxK+mZmM0h/K3KxNY42qQN0V1pnHzbLG95L8qkVgaF
 /CDYbrxUAjZtusWnwVV9GijKUgN2GJ7mv0uLFhFfpEEaskrX7XBy4QjfjZFaBruV36
 ofY8hBRW5yD9BsCn2tU/EECfxUpPobFakO/HvXUtbkICXvon4ErFbqZA/REykuhc2H
 LIkmK3SKISEq79iPGy8b3neqrt5foHmQJx3LxMGJKmsb+SJhmeAMn8OyiEr20e11em
 eFypdWoUQETr3cIbEEJq+fF1ZLazmnud5dw5kxPPOFM5KLZBef8rrmj75HdgodSTsG
 8mq1h+oqje47A==
Date: Mon, 27 Jan 2020 21:02:48 +0100
From: Valentin =?utf-8?B?VmlkacSH?= <vvidic@valentin-vidic.from.hr>
To: Stefan Wahren <stefan.wahren@i2se.com>
Subject: Re: RPi B+ USB support
Message-ID: <20200127200248.GX3671@valentin-vidic.from.hr>
References: <20200125120933.GF3671@valentin-vidic.from.hr>
 <d374f6cd6692d088ffad15cb29085cd723903418.camel@suse.de>
 <20200125130737.GG3671@valentin-vidic.from.hr>
 <39e2b61e-6ccf-a222-2246-5a36a2042e2c@i2se.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <39e2b61e-6ccf-a222-2246-5a36a2042e2c@i2se.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_120259_974334_BBF2E99B 
X-CRM114-Status: UNSURE (   6.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

On Mon, Jan 27, 2020 at 08:29:06AM +0100, Stefan Wahren wrote:
> is this warning disappeared, after swapping u-boot?

Yes, the warning is gone now, but not sure what the cause was
exactly. Probably something wrong with loading the device tree
from the boot.scr, as both the git and the packaged version of
u-boot.bin work now without problems.

-- 
Valentin

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
