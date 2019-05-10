Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 456A519A89
	for <lists+linux-rpi-kernel@lfdr.de>; Fri, 10 May 2019 11:23:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9ZKMCKdCYZKHAyY69MOs6zPcqzuH4mWtonYNmiRD2dc=; b=Nop6t66s+as6PT7FUSlJadv9p
	tXJCwFvUwZo88A8UWWF8it1sfcnbwbc1AHqalHR6SQVg0kJxbFc7Wu2uFRtAkrWekHOMEyaQ7f5ni
	HKJtYqbQEhn5ygJCmiKwfXkw0N/RYIUVBKFn1BrYvLmQQAWHeWgNEBEIGySSqbYAS6bbAykpBByEv
	gWzlq16kf9OwSaXu+XkV6cJ5IVURzdOE9R0TX755p/hOwp/gdCRCpnmBRfwqnTKcn2MkE/2fXa4YQ
	vCnF4EF/H0dSTYUZBxtTzHQUpfRA2XFYYn3Tnl2DkOxnWTRgH0poqzZIpixGXbBjAndBdLN9jLfZ7
	eL4KRysDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP1kZ-0001Y2-TN; Fri, 10 May 2019 09:23:31 +0000
Received: from www3345.sakura.ne.jp ([49.212.235.55])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP1kW-0001Xg-N5
 for linux-rpi-kernel@lists.infradead.org; Fri, 10 May 2019 09:23:30 +0000
Received: from fsav301.sakura.ne.jp (fsav301.sakura.ne.jp [153.120.85.132])
 by www3345.sakura.ne.jp (8.15.2/8.15.2) with ESMTP id x4A9NIu5072302;
 Fri, 10 May 2019 18:23:18 +0900 (JST)
 (envelope-from na-hoan@jinso.co.jp)
Received: from www3345.sakura.ne.jp (49.212.235.55)
 by fsav301.sakura.ne.jp (F-Secure/fsigk_smtp/530/fsav301.sakura.ne.jp);
 Fri, 10 May 2019 18:23:18 +0900 (JST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/530/fsav301.sakura.ne.jp)
Received: from [192.168.1.8] (p14010-ipadfx41marunouchi.tokyo.ocn.ne.jp
 [61.118.107.10]) (authenticated bits=0)
 by www3345.sakura.ne.jp (8.15.2/8.15.2) with ESMTPSA id x4A9NH6T072290
 (version=TLSv1.2 cipher=AES256-SHA bits=256 verify=NO);
 Fri, 10 May 2019 18:23:18 +0900 (JST)
 (envelope-from na-hoan@jinso.co.jp)
Subject: Re: [PATCH] spi: bcm2835: Remove spi_alloc_master() error printing
To: Stefan Wahren <stefan.wahren@i2se.com>, broonie@kernel.org,
 linux-rpi-kernel@lists.infradead.org, eric@anholt.net
References: <1557477738-20634-1-git-send-email-na-hoan@jinso.co.jp>
 <f8998234-1ab6-43e7-7dd8-859933b2179f@i2se.com>
From: Hoan <na-hoan@jinso.co.jp>
Message-ID: <a16cd122-8f30-d9d3-6774-bb6c25243f8c@jinso.co.jp>
Date: Fri, 10 May 2019 18:23:17 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <f8998234-1ab6-43e7-7dd8-859933b2179f@i2se.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_022329_021269_AB904FF5 
X-CRM114-Status: UNSURE (   8.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: linux-spi@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

Dear Mr. Stefan!

On 2019/05/10 18:05, Stefan Wahren wrote:
> Hi,
>
> On 10.05.19 10:42, Nguyen An Hoan wrote:
>> From: Hoan Nguyen An <na-hoan@jinso.co.jp>
>>
>> Printing an error on memory allocation failure is unnecessary,
>> as the memory allocation core code already takes care of that.
>>
>> Signed-off-by: Hoan Nguyen An <na-hoan@jinso.co.jp>
> looks like more spi drivers are affected.
>
> Could you please take care at least of spi-bcm2835aux ?
Thanks! I have just updated it!


Thank You!


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
