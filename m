Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C682F8A12
	for <lists+linux-rpi-kernel@lfdr.de>; Tue, 12 Nov 2019 09:00:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:To:From:Subject:
	Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4IeVtFYQgaOGS/Ywq3SWYy4fx1XTK9OWQjMGd/WQ6yM=; b=W0zwUrW/tEnBAX
	VlWmLe5U0HKX+s2LphPbW3JtkxoFtRKwVcKBQ3ff6ZzkaQL8T7lRnFgsMPapindnPy2zQ5TQrviGt
	GTsin7AYH4pskgU5YSGaLbUb+1/sSKaS2ut+haFTxCf4LvS5my2B86u0sfabb2NsBxF8RHrKqUTIa
	1Eb4V6wAp7ikuLjEXU3sWnFZr5125JBdQ6gmK49wsIwckMo9+rHOXgx7qi9+jD3OHOGTAiH/aizb8
	QZ6oFpUetOTj4tXlR17U7KpEaJ5i1Bilc/SBiJWdbO0sSUseelI1lRBZ4r5/Y4bIdm0MqoJ0T3jAw
	/HtFCZ+0fbtGPE1kH6Nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUR65-0002wm-0k; Tue, 12 Nov 2019 08:00:21 +0000
Received: from sender4-of-o54.zoho.com ([136.143.188.54])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUR61-0002wT-Rc
 for linux-rpi-kernel@lists.infradead.org; Tue, 12 Nov 2019 08:00:19 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1573545612; cv=none; 
 d=zohomail.com; s=zohoarc; 
 b=Q+Q5E/XyixBx4kp0k1uPBCh4oMauqPHgoO/uHq7jnqmmjTjYz56nYucwZlggbRVGvc9FJ5GGoMe5WMC9IiTP5oZzBoHSTV8tLj1T24SetmqrQitqTKz9ha2SQHBh6KdmQ7o3SjVREPRUczCezgWz6e3f9MRX/JqO0qBPg/6/nqw=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com;
 s=zohoarc; t=1573545612;
 h=Content-Type:Content-Transfer-Encoding:Date:From:Message-ID:Subject:To; 
 bh=Xb56JJDHcO4uscR5nCWETSwFIRFUBi4R4VF5gSPRMl8=; 
 b=YPnNjfYdAy8MePxiiaz7wzYsgB/fpo4X10O7S2pVm7SUMy9a+64lOfiCjHQAvPIu7fkHSbAhWojzZSbQx4Djio4Yci0bqDqkumigr3wznE3kjep2ZRuRjrFDQ2lW0MdKS/x40TixBRdo98dY+IMtyJerPoK5AUk/2jNMYwi/Kjs=
ARC-Authentication-Results: i=1; mx.zohomail.com;
 dkim=pass  header.i=brennan.io;
 spf=pass  smtp.mailfrom=stephen@brennan.io;
 dmarc=pass header.from=<stephen@brennan.io> header.from=<stephen@brennan.io>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1573545612; 
 s=selector01; d=brennan.io; i=stephen@brennan.io;
 h=Content-Transfer-Encoding:Content-Type:Date:Subject:From:To:Message-Id;
 l=1084; bh=Xb56JJDHcO4uscR5nCWETSwFIRFUBi4R4VF5gSPRMl8=;
 b=fB7WCA9UgRx5VOP6J4heygzjO+iR/uu4FU5DuGALvGw+kkQcGS5v5wSom1D02TuZ
 g6Wzv5YfFulpGdEkyD1idyF7qDNO40esGoeqenOEhFEUc5Kypz2PHIkWYvBgrsffAFj
 w6AErl4XvlDgd+x7Fm5iX4gwD8vqrbfeOYjMREy4=
Received: from localhost (195.173.24.136.in-addr.arpa [136.24.173.195]) by
 mx.zohomail.com with SMTPS id 1573545611575841.2357944928929;
 Tue, 12 Nov 2019 00:00:11 -0800 (PST)
Date: Tue, 12 Nov 2019 00:00:10 -0800
Subject: Raspberry Pi Kernel Contributing
From: "Stephen Brennan" <stephen@brennan.io>
To: <linux-rpi-kernel@lists.infradead.org>
Message-Id: <BYDRD5YUMB44.1Y6PT33UHHX24@pride>
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_000017_983323_667F7120 
X-CRM114-Status: UNSURE (   6.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

Hello everyone,

I'm new to the Raspberry Pi kernel project and I wanted to learn more about the
project goals and how I could contribute. From the resources I've seen (e.g. the
topic of #raspberrypi-kernel on Freenode [1]), upstreaming the raspberrypi/linux
tree seems to be a goal. I also see some work related to the BCM2711 SOC for the
Raspberry Pi 4, which I doubt I know enough to help with. I did a diff to see
what could be upstreamed:

    git diff --numstat v5.4-rc7..rpi/rpi-5.4.y

The diff is quite large, for example there is an entire RTL8192CU driver which
seems separate from the mainline one. I did see a few interesting, smaller
looking drivers that might be suitable:

  * drivers/mmc/host/bcm2835-mmc.c
  * drivers/clk/bcm/clk-bcm2835.c
  * drivers/video/backlight/rpi_backlight.c

Are these suitable areas to try to upstream? If so, what mailing list might be
appropriate? If not, what are some good qualities to look for when doing this
sort of work?

Thanks,
Stephen Brennan

[1]: https://elinux.org/RPi_Upstreaming

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
