Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A96ED76CA
	for <lists+linux-rpi-kernel@lfdr.de>; Tue, 15 Oct 2019 14:47:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8eUNCWLd9CBpxdODXYs49yuiTG5VJU2QNYrDcy5t6NE=; b=jZMFpfeqxYO6k8
	CdG+0JCrsM+Jgwlo2tfQDPkg87psY0SKaGMC2yMXs+hKbe43gZ4iFFNLfFySt0IYmywohr2MPDnUK
	QwfM/HKxeojbYifMvXAi5yih9HvLlQxdU+8a07B/CX0z8V2pzEWtyEcVwNwyFRvwcE6lIKVLIPJsR
	wrh3SKm3qKhfT/97bBogqk3VVucm1Hbb7Aa7xJV7+YAGAivODqdVipXLZTU82CMexgRpra99PjNTS
	+zC8wQeS/EZNPxcgkil4Nk7UIW4jyQ4mczhj7RTEIZOLmBcJEA605szp6YPTv06RWeDo95oJ5x6Yn
	INjqVBemGq+SHtTeKMNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKMEI-0001dJ-0i; Tue, 15 Oct 2019 12:47:10 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKMDj-0001CV-Dj; Tue, 15 Oct 2019 12:46:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=GJeacgwRZQ/bOrl742oGvW0kKE1JwzMCFshubJHj3Vc=; b=gvimkRSbZH8oAZmljIXSS0t5he
 cpewV9RgFCcqYKOb+uYeSsbxVnpbzOD3cdZett/NsUw80CWgl5MueXRUnXsXb02n4p+0bWOhqm2cC
 SWHRbrRxwcLbbtK2fSBGjPw6Z4x0Rw3bCkPOnsYXcVI4B2Pm4DsVBjk4q/zbvLznRjP4=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.92.2)
 (envelope-from <andrew@lunn.ch>)
 id 1iKA9w-00079V-6H; Tue, 15 Oct 2019 01:53:52 +0200
Date: Tue, 15 Oct 2019 01:53:52 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Daniel Wagner <dwagner@suse.de>
Subject: Re: lan78xx and phy_state_machine
Message-ID: <20191014235352.GH19861@lunn.ch>
References: <20191014140604.iddhmg5ckqhzlbkw@beryllium.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191014140604.iddhmg5ckqhzlbkw@beryllium.lan>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_054635_574951_A4C35679 
X-CRM114-Status: UNSURE (   8.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 0.8 DATE_IN_PAST_12_24     Date: is 12 to 24 hours before Received: date
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Mon, Oct 14, 2019 at 04:06:04PM +0200, Daniel Wagner wrote:
> Hi,
> 
> I've trying to boot a RPi 3 Model B+ in 64 bit mode. While I can get
> my configuratin booting with v5.2.20, the current kernel v5.3.6 hangs
> when initializing the eth interface.
> 
> Is this a know issue? Some configuration issues?

Hi Daniel

This is clearly a networking issue, so posting to netdev is a good
idea. And you might want to Cc: the ethernet PHY maintainers.

      Andrew

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
