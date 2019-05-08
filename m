Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5099A17655
	for <lists+linux-rpi-kernel@lfdr.de>; Wed,  8 May 2019 12:55:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7cJbPZ4AUxD0uf3soS2uQj4UrJd76NhNnYOo6wUuZSA=; b=JNLqdXWZIGMfiJ
	ETl8p/WXCokr3rsI6MAv1HtLBJqDIlOmOd4g/HKgnEQdfsV6p62JcRSc6z61tNhFKILe8qIGw1iBr
	LgIXjRymOuQveINlT9ph7bBZ7WP7VtdJAHb1zZgbjbU9zHZPA6MSRzhp7I0wlfeyxI6LMtI4VDxLd
	qWlRczkzf6INGW8kEMU76+0UIk1+Rm2poYakFE+vEQNsR7JvKhQQSIKLQNUzrIwwPB0ZUkXUJD1jT
	D87Iptu9YTLkfOAvRoxVsbdbJquIENO9SYs+ODrEjP4tFctaVvw1PGQKuYlAT3glwPL/gWiZglrX8
	PMdJOFhFJZ31Rvsel2cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOKEn-0002uA-Ak; Wed, 08 May 2019 10:55:49 +0000
Received: from 212-186-180-163.static.upcbusiness.at ([212.186.180.163]
 helo=cgate.sperl.org)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOKEi-0002tJ-2v; Wed, 08 May 2019 10:55:46 +0000
Received: from msmac.intern.sperl.org (account martin@sperl.org [10.10.10.11]
 verified) by sperl.org (CommuniGate Pro SMTP 6.2.1 _community_)
 with ESMTPSA id 7764359; Wed, 08 May 2019 10:55:22 +0000
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
Subject: Re: [PATCH V2 5/6] spi: bcm2835: make the lower limit for dma mode
 configurable
From: kernel@martin.sperl.org
In-Reply-To: <20190508084205.GD14916@sirena.org.uk>
Date: Wed, 8 May 2019 12:55:32 +0200
Message-Id: <CE110436-866D-44F4-B8A5-F7D02DD06F70@martin.sperl.org>
References: <20190423201513.8073-1-kernel@martin.sperl.org>
 <20190423201513.8073-6-kernel@martin.sperl.org>
 <20190424070712.hh6ozvhkvkxhwak3@wunner.de>
 <20190508084205.GD14916@sirena.org.uk>
To: Mark Brown <broonie@kernel.org>
X-Mailer: Apple Mail (2.3124)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_035544_299389_284824AF 
X-CRM114-Status: UNSURE (   3.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 TVD_RCVD_IP            Message was received from an IP address
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
X-BeenThere: linux-rpi-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-rpi-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rpi-kernel>, 
 <mailto:linux-rpi-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rpi-kernel/>
List-Post: <mailto:linux-rpi-kernel@lists.infradead.org>
List-Help: <mailto:linux-rpi-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel>, 
 <mailto:linux-rpi-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-spi@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org


> On 08.05.2019, at 10:42, Mark Brown <broonie@kernel.org> wrote:
> 
> especially with the ATMega case where we want fast individual clocks but
> lots of dead space in between bytes (is the controller capable of adding
> that dead space itself in DMA mode BTW?).

No it is not - at least not so far as I know of (and I just went over the
available documentation again).

Martin

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
