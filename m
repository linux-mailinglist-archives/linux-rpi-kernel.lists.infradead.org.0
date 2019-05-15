Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 173EE1EB7B
	for <lists+linux-rpi-kernel@lfdr.de>; Wed, 15 May 2019 11:53:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PPP9PMhZC1oPweInucNwl1qzD8NE2tZrhhpaZnQFeq0=; b=WHjBUXhF9MdELk
	UIWdaouwfh91ehtqpjDRVyGZ5Dqp7ALtSaXckDyr9oYOpmt6QYA0RFMgtEHHe+ugktEILTbdOzr3W
	xKKIOzBFZbzdzDC8xT2ymUU+nupsRoKDYVjlgWfpFmzRbLD1xyZnPZRV37LKExGYbKiXh84hZe1FV
	9rraEIEHcLgeDD3RJ1VF/miBOfsJjKYoZoU3WaC/QvrD1voyDZq1/UiRfOa+vxnMlY0UUVvT4XMzP
	SGe3WCUGHl0VKkrPWru4/bB5SKtU91SwWN9+QNahW12JEtfkA+iR65qaI6QVdizSri+Rf7Zk6JDBx
	fBxRBp9fyZg2w4Wnyhcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQqb3-0005QG-3v; Wed, 15 May 2019 09:53:13 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQqap-0005Hu-QF; Wed, 15 May 2019 09:53:05 +0000
Received: from [192.168.178.167] ([109.104.37.15]) by mrelayeu.kundenserver.de
 (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MpDa5-1gtz4V2OlD-00qm1F; Wed, 15 May 2019 11:52:44 +0200
Subject: Re: [PATCH v3 1/4] staging: vchiq_2835_arm: revert "quit using custom
 down_interruptible()"
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-kernel@vger.kernel.org
References: <20190509143137.31254-1-nsaenzjulienne@suse.de>
 <20190509143137.31254-2-nsaenzjulienne@suse.de>
From: Stefan Wahren <stefan.wahren@i2se.com>
Message-ID: <32aa420a-abff-4c47-5f3c-2d4bdf36781c@i2se.com>
Date: Wed, 15 May 2019 11:52:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190509143137.31254-2-nsaenzjulienne@suse.de>
Content-Language: en-US
X-Provags-ID: V03:K1:+2mE9d+u8gqtHxlIg9i/VWYK0DwNnPyY/oJuxZ3r/F7A3KhK9W5
 cCp7pwbA9bAjNpdxlK6/Iep9THU4dI6RvjpdTDtzvJY+58aqLLldc5xNr7PRhB9I86LmFKN
 LHCh1pkG91gS0EVAN2BnJ5cvewcs0PU/OIpW0n1Eae5noiidxp3qdh90d/vDYFuHLjNHC2p
 5n6T2maOg8eOxqC5nOgqw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:bG040yyGSrk=:IY/R0MsMaeOXHWlVqHUCLc
 Ab49FrqKWtQHzDyX1FqJXOxL8lqsOL0kN/Y7NCGyy8+UDEn/Am61+iCMA0wT25byRrvMZxD2p
 Vdv/l8YCNQDMTY3cR1Vx+Y34raHgM1CDYeX0+1f098O7ylSHTobIWa1TKpEr6LL3ahmbnWUq8
 gwEGuFTHCizj4BS3/LLXXoE8ytB/8sUiClJ1kvU2XzoTt1dBWz4EJjbNGe2AnHdzFm/EUaB5T
 zTnG4gedNErS7PNnwC6UeWBBzWoE0f1sV/gxR2ZvC//QkS1yBCCYO7xVe7NHMvWlSs0NG/Lpv
 VT230YoyV8WIPQ+XzCwa9CTFxZ4wv9T/zwWQMUXQ5WJBiiYzLnpJ2exZqNjoVg39Idhurb4nt
 4QPzCQRzXzk05ChMqk8eS3UBtQAAkXfsYqZjbtkDF8uRuZmTPxhysvyu3f3CE7C57TM91KaUh
 Ev/B9krLUayURXbRJo8Bb50/jZthCLjM9Yxh4VHdArHeLEamadd032nzfYRggpArjkgcunPWU
 kYxLOG0Ti7QvDTP5J+GXzOF1V2L7CNwLbaPmQFF7VkgoK6onYMdyAGxy4+QzNoBAwQcRks1Mi
 /v3xLzwun1zn6WmY5yJRkrN+N7lWDNMVewFUh1lBdzBoSesiu6JnkcDPhwZwwPyRo7ecJArOZ
 ErYlDk3nTR7aqj517fCWQc3kgy7rHVH7Biqw8C8BcnlvSLapFGn1BXacH39mT+nvq/tZ/D0Vb
 yPNUa4PHCrXh5aVABT/y2Zan8pMr8fOHC7NXYqcY4lGd7EYk3stnmXIQ+5A=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_025300_256809_3428206A 
X-CRM114-Status: GOOD (  12.28  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-rpi-kernel@lists.infradead.org, dan.carpenter@oracle.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

On 09.05.19 16:31, Nicolas Saenz Julienne wrote:
> The killable version of down() is meant to be used on situations where
> it should not fail at all costs, but still have the convenience of being
> able to kill it if really necessary. VCHIQ doesn't fit this criteria, as
> it's mainly used as an interface to V4L2 and ALSA devices.
>
> Fixes: ff5979ad8636 ("staging: vchiq_2835_arm: quit using custom down_interruptible()")
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

This whole series is:

Acked-by: Stefan Wahren <stefan.wahren@i2se.com>


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
