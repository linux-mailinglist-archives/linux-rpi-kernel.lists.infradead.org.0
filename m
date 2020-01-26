Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63E7514999D
	for <lists+linux-rpi-kernel@lfdr.de>; Sun, 26 Jan 2020 09:22:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IP+T5DvHAoDNuBZmUL8tS2UFn256+OEZO2ZFSbgUH+U=; b=aArHLU6wSt/hhp
	aCxC7/N9ZFY18ycjGYa+e71p9NTKOwkGe1fodZY3dm0thXkqGRIQTdH6kusEonUJo/oxQ19SsWU6F
	psnAUmZ8R6a36n/wQNbbQkgFlhHCWxrHgh+6NVEPtniH/QiTargn8Z9dulu4F6wUuhLg9kttTFu7R
	XcENEH4FAOZA0QgPXPSQIlx/FWL/HYZ4lVzOjv2m+uFqN4i6gTk6M94/FrQQUi5AbZC5w1YooEZNv
	6yzVN/ZOWJSBH3ZBSeip+MVqpnSfbynkSLvQqELOwIqsfd7GW6jUNIrovezk49qV8jWOYN/VTv4N1
	a1+dBPONm95CSlPTMUVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ivdBa-0000Lp-Dz; Sun, 26 Jan 2020 08:22:26 +0000
Received: from valentin-vidic.from.hr ([94.229.67.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivdBX-0000LI-1M
 for linux-rpi-kernel@lists.infradead.org; Sun, 26 Jan 2020 08:22:24 +0000
X-Virus-Scanned: Debian amavisd-new at valentin-vidic.from.hr
Received: by valentin-vidic.from.hr (Postfix, from userid 1000)
 id DC77831A; Sun, 26 Jan 2020 09:22:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=valentin-vidic.from.hr; s=2017; t=1580026930;
 bh=to6Vd+e5IHZOyyof7n+AYah15NXJ8xKCdZW0OHBRMBo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=VFBg+R4zasQ6hfEE4XawStriSKz1rrFxG67j45S5w7vVxn+0fwCRmzd/qJCaGK0Nz
 3oWkws66aMJ6AZPhqFlbW9/Z//L/2pK4T1Hlml64opiTkB4fUjk5PI56ARs5+ELs48
 /6tA3cGZMA5jJ/+oDi4Bp4F/kel1UcA5MW3W6Wfu1C+6jVKU9M3ydfPRjHBvu0LylB
 EmuibNMrHPd4NuXkFiXhSRVobx4+uLOcjBBrQOPKeNyPd/yv0CHhapDrS5+SqgUeHV
 TAPJLp/MJhKowjpDFgqj4sHrPSfigqzldkRkLgVZ3pO9pYiiu4ZxtDhhg0jhB+fxRY
 +gGjDjlvUVc7g==
Date: Sun, 26 Jan 2020 09:22:10 +0100
From: Valentin =?utf-8?B?VmlkacSH?= <vvidic@valentin-vidic.from.hr>
To: Matthias Brugger <mbrugger@suse.com>
Subject: Re: RPi B+ USB support
Message-ID: <20200126082210.GO3671@valentin-vidic.from.hr>
References: <20200125130737.GG3671@valentin-vidic.from.hr>
 <C04WEWWXBXRL.28WZVXZ9OKU4B@linux-9qgx>
 <20200125135404.GH3671@valentin-vidic.from.hr>
 <41e082fa921653f57de2809630bedbb339fe5111.camel@suse.de>
 <20200125140421.GI3671@valentin-vidic.from.hr>
 <0f28a4fe2806aa5e4444aa6758ea60a73d1e8209.camel@suse.de>
 <20200125163450.GJ3671@valentin-vidic.from.hr>
 <1afc2087-62ba-81ab-3f6b-a010c789606f@suse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1afc2087-62ba-81ab-3f6b-a010c789606f@suse.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200126_002223_364235_FF79C187 
X-CRM114-Status: UNSURE (   8.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Sun, Jan 26, 2020 at 03:32:12AM +0100, Matthias Brugger wrote:
> Reading your message I understand that you don't use U-Boot anymore. Can specify
> which U-Boot version did you use that caused the trouble?

I still use u-boot just from Debian package now (u-boot-rpi 2019.01+dfsg-7).
Booting directly to the kernel (kernel=vmlinuz in config.txt) does now
work on RPi 1 B+ for some reason (just hangs on the rainbow screen)?

Previously I was using u-boot build from git, but now I can't reproduce
the problem anymore - boot works with this u-boot.bin too, so I'm not
sure what was the problem. It could be I was not loading the device tree
correctly so none of the kernels could start the USB subsystem.

-- 
Valentin

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
