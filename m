Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16E8A19B12
	for <lists+linux-rpi-kernel@lfdr.de>; Fri, 10 May 2019 12:12:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SfU3XBNcPFj4+urHcye73lgWffhwWSik50R+n3SZNgM=; b=FAV2yajk6zqwZJ
	wIglBhpNick0Ljcv5prvggyYtFIX49nh9XYyrQzKg1sRaZ3y+zaGozSyStopFvqxLm4J8NTlrGL/n
	T+1kl2Blst2+B+/TAY+v0SA3ekd6U6QCJQANS4Wp2g9/Kyr0/KetNEKSdQGGEUeYjlpIppieva8/D
	NGJPmUIRBER+6nLmjMM0H1iPv1WLwFBRxAA4YilT3VH/Me6ksk0Uiq8teHhFyIMIbzM7P0aMEb5gN
	sY4Dt8qDKuROqttZ/PtkFZIXFRW53a5nw1jlIiFrhxx7X3fomoxOluolIMXGvpjdC/uU6d5+rHOlp
	wsqjwfuV7melN/FdnAnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP2Vh-0003Nn-24; Fri, 10 May 2019 10:12:13 +0000
Received: from 212-186-180-163.static.upcbusiness.at ([212.186.180.163]
 helo=cgate.sperl.org)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP2Ve-0003NL-4s
 for linux-rpi-kernel@lists.infradead.org; Fri, 10 May 2019 10:12:11 +0000
Received: from msmac.intern.sperl.org (account martin@sperl.org [10.10.10.11]
 verified) by sperl.org (CommuniGate Pro SMTP 6.2.1 _community_)
 with ESMTPSA id 7764629; Fri, 10 May 2019 10:12:07 +0000
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
Subject: Re: [PATCH] spi: bcm2835aux: Remove spi_alloc_master() error printing
From: Martin Sperl <martin@sperl.org>
In-Reply-To: <1557480060-15311-1-git-send-email-na-hoan@jinso.co.jp>
Date: Fri, 10 May 2019 12:12:26 +0200
Message-Id: <C67428EF-6EC9-4655-B2FA-B562402E4AAE@sperl.org>
References: <1557480060-15311-1-git-send-email-na-hoan@jinso.co.jp>
To: Nguyen An Hoan <na-hoan@jinso.co.jp>
X-Mailer: Apple Mail (2.3124)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_031210_367584_1C013939 
X-CRM114-Status: UNSURE (   4.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 TVD_RCVD_IP            Message was received from an IP address
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Brown <broonie@kernel.org>,
 linux-rpi-kernel <linux-rpi-kernel@lists.infradead.org>,
 linux-spi@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org


> On 10.05.2019, at 11:21, Nguyen An Hoan <na-hoan@jinso.co.jp> wrote:
> 
> From: Hoan Nguyen An <na-hoan@jinso.co.jp>
> 
> Printing an error on memory allocation failure is unnecessary,
> as the memory allocation core code already takes care of that.
> 
> Signed-off-by: Hoan Nguyen An <na-hoan@jinso.co.jp>
Reviewed-by: Martin Sperl <kernel@martin.sperl.org>


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
