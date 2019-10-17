Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E685BDAE07
	for <lists+linux-rpi-kernel@lfdr.de>; Thu, 17 Oct 2019 15:15:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4V7l4vJBt4T1kttW7ydiZuCnQLN9OEEuWf+yrtnywa8=; b=FXaLS1c++x6W0a
	GRTtwbxeQwVelBAiJ6snxnWoZCLuSCBAvYUzGOOtdE3UEIAXqKfktur8/jTsJmcmhfYYcYTwwKwbO
	R9I7/jhw3EoY62dmRGVdIb6Qr6I0BIoeG0bct3HzArbvBpVsE7tRH2XqVwZge34aQkyJs80uACKye
	QE37F21/P5d/NYPoJ+UHGYswgwfFrAC39u2YV2JZBnH53ye/lkY5wCL0omb6QYOZW4KCmOsfWjh/b
	rOcG4HaCyc8bCiTaP3XwU245lU+8TyLu5qrkvpT5bM5pH22d3rCDGphQZRoCyWIOQwIn56Qn/L5uy
	2DYVduB23tMSFp2Lm/dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL5cl-0007Tb-4z; Thu, 17 Oct 2019 13:15:27 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL5ci-0007T7-M6; Thu, 17 Oct 2019 13:15:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=NqVeHSqOt7B49IXQ7DBm0nJvqrZVETdR2j3Q+0D5yBk=; b=BNND/TCB2BZpVmQujW/03vUDTN
 7iY+e61kwaHLaAoBoDESVzmbENCJ/t60CuvndaGdVxM/aPZ/01g7m2ON9E/KlnwPowwzpI157VscX
 J5ANU/jbivWqVhtShE18WtdGuvxLC4H6cjreA9z9T/4VVUCLYT6CnI6g2sK72Zzh6xvw=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.92.2)
 (envelope-from <andrew@lunn.ch>)
 id 1iL5cb-0004RE-8r; Thu, 17 Oct 2019 15:15:17 +0200
Date: Thu, 17 Oct 2019 15:15:17 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Daniel Wagner <dwagner@suse.de>
Subject: Re: lan78xx and phy_state_machine
Message-ID: <20191017131517.GJ4780@lunn.ch>
References: <20191014140604.iddhmg5ckqhzlbkw@beryllium.lan>
 <20191015005327.GJ19861@lunn.ch>
 <20191015171653.ejgfegw3hkef3mbo@beryllium.lan>
 <20191016142501.2c76q7kkfmfcnqns@beryllium.lan>
 <20191016155107.GH17013@lunn.ch>
 <20191017065230.krcrrlmedzi6tj3r@beryllium.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191017065230.krcrrlmedzi6tj3r@beryllium.lan>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_061524_725764_D1051233 
X-CRM114-Status: UNSURE (   7.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Woojung Huh <woojung.huh@microchip.com>, netdev@vger.kernel.org,
 UNGLinuxDriver@microchip.com, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 17, 2019 at 08:52:30AM +0200, Daniel Wagner wrote:
> On Wed, Oct 16, 2019 at 05:51:07PM +0200, Andrew Lunn wrote:
> > Hi Daniel
> > 
> > Please could you give this a go. It is totally untested, not even
> > compile tested...
> 
> Sure. The system boots but ther is one splat:

Cool. So we are going in the right direction.

This splat looks complete different. But it might still be a race
condition with netdev_register. We should look at what the power
management code is doing.

	   Andrew

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
