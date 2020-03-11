Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F1E1181266
	for <lists+linux-rpi-kernel@lfdr.de>; Wed, 11 Mar 2020 08:52:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BID7BzF/JdNNaY5/tUQVdS0/hQStqH/FAC8TZQHAfvs=; b=ffIg+uA9aO0UzC
	RXhUG/EN4t2P0+jxQV2nTVL5Txb9ukdBACJdn7FpCkmmRSQrt+DIKe0IRWxys7Z/lQsWub+8KM5YK
	qcnCSAvy/Ej6XXM9S8xJwDdiwbNRdC+gYFtVghTjAaqW1owE59qCqVBppmR3TKXQMgwfaHJTThyU8
	pRW1T+hC97hnWqBEXpPxcJAvFS5ytqGoWbgJT3iov/xW7IGeLzAxjyyxFYngJdEZfgssMScwXZrJx
	9uhsGU9GdbslTgcf3ncPoE8vZfBIWpv0CJPn/s1lxo8oz9AJB0hHZ6QzFfFAT+Siaf2AqBonqO2bY
	guQTHm7CbxHAsKyHWmDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBwAP-0002Lk-D0; Wed, 11 Mar 2020 07:52:37 +0000
Received: from xanadu.blop.info ([178.79.145.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBwAM-0002Ky-Jw
 for linux-rpi-kernel@lists.infradead.org; Wed, 11 Mar 2020 07:52:35 +0000
Received: from [127.0.0.1] (helo=xanadu.blop.info)
 by xanadu.blop.info with smtp (Exim 4.89)
 (envelope-from <lucas@debian.org>) id 1jBwAK-0007vo-SJ
 for linux-rpi-kernel@lists.infradead.org; Wed, 11 Mar 2020 08:52:32 +0100
Received: (nullmailer pid 14413 invoked by uid 1000);
 Wed, 11 Mar 2020 07:52:26 -0000
Date: Wed, 11 Mar 2020 08:52:26 +0100
From: Lucas Nussbaum <lucas@debian.org>
To: linux-rpi-kernel@lists.infradead.org
Subject: Re: 5.6.0-rc5 fails to boot (MMC/SDHCI related?)
Message-ID: <20200311075226.GA14384@xanadu.blop.info>
References: <20200310223403.GA31851@xanadu.blop.info>
 <20200311074132.GA7703@xanadu.blop.info>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200311074132.GA7703@xanadu.blop.info>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_005234_787210_437D2F73 
X-CRM114-Status: UNSURE (   7.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.79.145.134 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

On 11/03/20 at 08:41 +0100, Lucas Nussbaum wrote:
> On 10/03/20 at 23:34 +0100, Lucas Nussbaum wrote:
> > Hi,
> > 
> > I'm trying to build Debian images with the vanilla kernel, but I can't
> > get a kernel to boot. I'm probably missing something obvious...
> 
> Hi,
> 
> I forgot to mention that I had cherry-picked
> d886ff4d2a6aaf4a1e837dc4ccc731bf8c9a606f (ARM: dts: bcm2711: Move emmc2
> into its own bus). I'm now testing without it.

It also fails to boot without that commit.

Lucas

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
