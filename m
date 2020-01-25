Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 092EA149578
	for <lists+linux-rpi-kernel@lfdr.de>; Sat, 25 Jan 2020 13:18:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XNM12jwgyRWaDhnLFC19axzvNfRVGnO4Sq9Q+zWRbrw=; b=sKJnmUPU4WltwP
	5//K67OSrz/RuS//IxMAmSgOdbRjXLIm/CwuoBrImxiDPK4MD+6FlFU3W94EqAmPLKvy9y9zBDpOG
	1PiKeZuMeTZUnkva3qVqx+lyftjCcbVr+ihawpJX0Ir4Bs/hHVFl63VXYDqpC+eLF4ERlrD+HjVqB
	+K3b4XvBdUd4FQOjT+w8D7YM+Q+DS0hfg6C76opZelU6D2cR00LsJyFdR+Ji7VWIck8DJZGWk0dZY
	kU92rubKdVRVLViYhSRBoR1QfAqYYxkcDAMgUJlkGho9yJVWwUaduoopbcwpRXXuLreoFIc1p9UEX
	CnBj9QMHi7E+ScNFjtZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ivKOp-00086Y-5S; Sat, 25 Jan 2020 12:18:51 +0000
Received: from valentin-vidic.from.hr ([94.229.67.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivKOl-00085s-OV
 for linux-rpi-kernel@lists.infradead.org; Sat, 25 Jan 2020 12:18:49 +0000
X-Virus-Scanned: Debian amavisd-new at valentin-vidic.from.hr
Received: by valentin-vidic.from.hr (Postfix, from userid 1000)
 id 5A94D3EA; Sat, 25 Jan 2020 13:09:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=valentin-vidic.from.hr; s=2017; t=1579954173;
 bh=jpu7XBBEGA7hZUVsxffIBNg+6AIphfg2ISKo4YLnMUk=;
 h=Date:From:To:Subject:From;
 b=ORWPAvNnvXRulbZgn3WtWFK3QcGYeKVGLl5BEVpR0UPVnUR8uYOHfDhjpNFkQqQCJ
 uZofdNpOSdgX0m1UkCN3zBhM2bEgK7yj5rDT2Rw4EJo+Qs7OX3YaS1Mh0jJxr+cf8e
 zyNOCss70WL14ZxQPCbe2P/Mq+pQ4csAYZZqDL/bUrG5pY5eS1zrf7PSMPA28Z0HhM
 2fKZB+ZWX4wm1inH/hkiURKQlgqQIYU5Z+BuBLohLHUWVii+eeVyEwcXHcWNPwWDFg
 XKlOSlnasRz7WEYn4wqSjYNQcRkHP6OWqmOyoMbZa7NWWm1bKFXc2gcnWRBhj8T4gV
 pV75P5QmF2TOQ==
Date: Sat, 25 Jan 2020 13:09:33 +0100
From: Valentin =?utf-8?B?VmlkacSH?= <vvidic@valentin-vidic.from.hr>
To: linux-rpi-kernel@lists.infradead.org
Subject: RPi B+ USB support
Message-ID: <20200125120933.GF3671@valentin-vidic.from.hr>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200125_041848_243636_4D43F33E 
X-CRM114-Status: UNSURE (   4.92  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

Hi,

I was trying to run a mainline kernel on the old RPi B+ v1.2
and while it boots correctly the USB and Ethernet ports are not
working. I suppose this is some known problem?

-- 
Valentin

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
