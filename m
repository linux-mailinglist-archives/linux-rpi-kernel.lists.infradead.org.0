Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89849DB5AA
	for <lists+linux-rpi-kernel@lfdr.de>; Thu, 17 Oct 2019 20:15:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dWOjpGJ8lOfbH9KFtAjxbGkBwgw4XMol8bDWj7rKp0A=; b=CArJJ6zK26kmVN
	lsxvhDxod20WNuTTGIGK6zGgbhpHtSIHH9iSnEg3Sj4NiofaPp9+EU39wnk56fD/4btU8df2u0nsB
	+RDJLHCR3LByHtc2230oMFWNDIV+XxDILEKdkCfImDrc8WX4M9i3VOHpDaH/jvBj+KsQJYydByL+w
	7cKjs6lNbzvB3+KKAhfSJGO6T6AwsVlC8k4eIUc6dRGh8A0aiGtoTMPbe1AoiY7m8DNTBwB6iZD4F
	dImxDWET8n10F937facYiUQ5W1BrF+ouTtO31yHuKAtPeRsjAgxMs6DIFqUIzD/BA2cdbJNiAwt3K
	zIfodlThpozBp1wRx+bA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLAIr-0004LE-SO; Thu, 17 Oct 2019 18:15:13 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLAIW-0003Om-1q; Thu, 17 Oct 2019 18:14:53 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 83724B3A0;
 Thu, 17 Oct 2019 18:14:50 +0000 (UTC)
Date: Thu, 17 Oct 2019 20:14:46 +0200
From: Daniel Wagner <dwagner@suse.de>
To: Stefan Wahren <wahrenst@gmx.net>
Subject: Re: lan78xx and phy_state_machine
Message-ID: <20191017181446.llylehcpu66bpqcn@beryllium.lan>
References: <20191014140604.iddhmg5ckqhzlbkw@beryllium.lan>
 <20191015005327.GJ19861@lunn.ch>
 <20191015171653.ejgfegw3hkef3mbo@beryllium.lan>
 <20191016142501.2c76q7kkfmfcnqns@beryllium.lan>
 <20191016155107.GH17013@lunn.ch>
 <20191017065230.krcrrlmedzi6tj3r@beryllium.lan>
 <6f445327-a2bc-fa75-a70a-c117f2205ecd@gmx.net>
 <20191017174133.e4uhsp77zod5vbef@beryllium.lan>
 <388beb72-c7e6-745a-ad39-cfbde201f373@gmx.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <388beb72-c7e6-745a-ad39-cfbde201f373@gmx.net>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_111452_240583_43EEB2B5 
X-CRM114-Status: GOOD (  12.86  )
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
Cc: Woojung Huh <woojung.huh@microchip.com>, Andrew Lunn <andrew@lunn.ch>,
 netdev@vger.kernel.org, UNGLinuxDriver@microchip.com,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

> >> Unfortunately, you didn't wrote which kernel version works for you
> >> (except of this splat). Only 5.3 or 5.4-rc3 too?
> > With v5.2.20 I was able to boot the system. But after this discussion
> > I would say that was just luck. The race seems to exist for longer and
> > only with my 'special' config I am able to reproduce it.
> okay, let me rephrase my question. You said that 5.4-rc3 didn't even
> boot in your setup. After applying Andrew's patch, does it boot or is it
> a different issue?

Yes, with Andrew's patch the initial problem is gone.

> >> [1] - https://marc.info/?l=linux-netdev&m=154604180927252&w=2
> >> [2] - https://patchwork.kernel.org/patch/10888797/
> > Indeed, the irq domain code looks suspicious and Marc pointed out that
> > is dead wrong. Could we just go with [2] and fix this up?
> 
> Sorry, i cannot answer this question.

Sure, I just trying to lobbying :)

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
