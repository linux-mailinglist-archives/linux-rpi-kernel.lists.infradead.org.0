Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DB13178B74
	for <lists+linux-rpi-kernel@lfdr.de>; Wed,  4 Mar 2020 08:34:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=I7OpFJAnncVD6QKIPVTWh+nhmH8P57cF7X0VObZhoYg=; b=u+9zaFqjnjUkJLyIzSjpMU7Y5
	j7taZfMNmZyFmkRX2nwCPA4OU9rRy45LRXOLvbCh+cPuzL6IMbEeEI3PoGFXVWzLM6l7/o4cU5o91
	Ay7f19QKMTYIAYH5msDH9Mf+H46Gx+pwAWqY3rNA0zkkkPRNiY0FQwAWyXNn3Cjx5EsyXzXx7QPYb
	wPFJqMs35q53PwGAI80Qd3WbYWMUFW+9AQcrC8imwCDUrKM1Cosw8F+1YyhS0eFVG2LPywSR+18sW
	8OARaCDjZ/okvtGlfkyzPaca5qDo3K2pTcCheDwOO6q+uO0PT2RNhESrWybNyY3/yBqzTrB90lljh
	zMXWCHl2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9OXg-0000kV-MF; Wed, 04 Mar 2020 07:34:08 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9OXd-0000js-Kq
 for linux-rpi-kernel@lists.infradead.org; Wed, 04 Mar 2020 07:34:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1583307238;
 bh=y6n4po5Alwq3VMFio5BEbbgBVfEtj5n/bbVdCcRd/+I=;
 h=X-UI-Sender-Class:Subject:From:To:Cc:References:Date:In-Reply-To;
 b=OcC3n5a12+eK10lEyJwC/TARtjatN6EPDOSWxjU1aVqb5Wbebq6/FcYG0ijKnrheE
 veeKLXpSPfP8o/2HckJ4b3hmo4rLdB7zaSaMs/WxWayBhdB+nMRhkDZW2zHOHf7kmb
 x6iqnNhSr4MX//M69wZNTgH6HZSoNzPsT2t1jfDA=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.0.43] ([188.223.33.120]) by mail.gmx.com (mrgmx005
 [212.227.17.184]) with ESMTPSA (Nemesis) id 1MKbkM-1ioQHJ3hFM-00Kukw; Wed, 04
 Mar 2020 08:33:58 +0100
Subject: Re: [PATCH] define rpi0w sdhci pinctrl state
From: Nick Hudson <nick.hudson@gmx.co.uk>
To: Stefan Wahren <stefan.wahren@i2se.com>,
 linux-rpi-kernel@lists.infradead.org, devicetree@vger.kernel.org
References: <c34db439-3539-88c0-99f1-308d75afd1aa@gmx.co.uk>
 <23a936db-fc89-6259-3991-5791fa88beb7@i2se.com>
 <bd4bd5dc-307f-d058-8f94-00b61a8b8c87@gmx.co.uk>
Message-ID: <c97f3704-a671-be70-4323-181f84d657f8@gmx.co.uk>
Date: Wed, 4 Mar 2020 07:33:55 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <bd4bd5dc-307f-d058-8f94-00b61a8b8c87@gmx.co.uk>
Content-Language: en-GB
X-Provags-ID: V03:K1:nLv9yfsm5lvOIhWzxRz31QdaSxTY/XyD93XIAgdBmTPOcSaqx27
 hUhyOa44vulsq5f3aLk3bVYVwRokx5VSfZyo+/0Ev8HgrHQ3wTbDMi8tzgVZIq3llXec3cJ
 6d24o2nBS3ZTFzhdil1frjM3+FxICIkahWGlxHf6a4K190taW+TldZhIsuQ2HdHGCB/bTqk
 foif8YM5ZFLJcsWniYkOQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:4spx8eQL8tg=:wmxU2yu/UX6tch62SyMkVZ
 3JuxYqCYHiMX89rqg3nYZplMK3WXbOapt93+lse23d5EhdSveeENbF5NCHd1cf3RQ4AcgBGLP
 yBjDo88Ix5FMwH8yRqmzyIkgoJO5JTj+/SlR1Tk2PA2juKTGvCDhVI2t4BN4ZOKMmOBYVqi02
 EZveMzMBgmWRf8EwloS+ES8I9MisJK0kgsyKYimXL2KFFRXCNGlgWIj88HFjJFmL91w2IVgqQ
 Li88trYJEyNPP763UtNYb6YAuR/a8p4N94p8DYM/BA5mLEW1i2hh+GLKPBr3mXA7xODCCoVuD
 s7MS9ffgDWOrpz2oFhS6HZN+Kf69i4nZIoLzoG5YnlghoPxU7rZ5JzZPs82cq1itZ886XIWvA
 ATEXOOaz5Be9B0x1rLRAI9Zgl602afR28AfHMiFDTf16cbxsqQdCeomMAn3vWnB8rocbBd9JB
 0MCos75H2TLZsTLtsLPyPVNFof88IOMRCGnPc9PbDkJ4WepXLvIZbLgCKOe8DwZixRZ3QKu+T
 7C47PRQepcG3DebCFRf/fbLCpUHEa3UqnEKXyhhMDnJWnOdIO689Ehn4cI3PMDAo8k4WgIsTe
 Jh1oXw4UPPO4F7ojOeZ0zggoQAeTpUlihuVIargzTTmajXxYs9KwX5AOCYF21iHtEdJTNtvH1
 E86Kla6vBVAF1BxhBY3XWekDrqSUF0ivOD0fA45YI+kWZXa9Ddu2UGysHsoBtLE3jpmBdxDPf
 KD9IKrrFpvYGZdMZNtc8fV9xMaiGWZ01Qx97wneksohxGjH9cWmegjaFGkyUcgyPt6t6nLYLW
 d0vDvLYV/fb/eED5bjJ9KUM2EkroBqONvu7OY62ISmnYcb1czQW2natdzCysDARRNj2CY1J1n
 YPKJTqEoD3y265ZNAaZw5mBfQUnIJRCAEsWnlgHKPlhl9t2huFPCnfrr664PwxUyCbOanO68W
 XtBdxYU3GFo6s9ODNMkJvM/pXzsZ8dCPMu+ZlNrUi+iU1/1+8MynT4eWc8eu7HwgCNy7IeTKZ
 MHubLi23Pt5H/tMfUKVfvuJWJEvizIWO22ugNSzgm5cGD7UUrLb0xMQL2yAsOfpFcNGSJerIL
 snf0jcZKVCy87cQsyyD5+pf+no1sg7J2NmL8PvROmwHtyZW+N8v69Hu4qCp0YJSGns3pXtnhV
 DiEiAtOAB3XvozhxGPnBAgoAg5+wiyGfu8iNQ2kImQixz2f44Cgzk/spULXc4tB8KXAZdjM+8
 aMeqyJhvAEmMFQ3Il
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_233406_021673_BF9D132A 
X-CRM114-Status: UNSURE (   9.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.15.15 listed in list.dnswl.org]
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org



On 28/02/2020 11:52, Nick Hudson wrote:
>
>
> On 27/02/2020 17:53, Stefan Wahren wrote:
>> Hi Nick,
>>
>> Am 27.02.20 um 00:33 schrieb Nick Hudson:
>>> I'm still not sure where I should be sending this, but here goes.
>>
>> the addresses are right. Please rebase your change against recent Linux
>> git tree and generate a git patch, otherwise we cannot apply your it.
> Oops, I see I sent the comletely the wrong diff... will fix.
>
>>
>> I suggest the following subject:
>>
>> ARM: bcm2835-rpi-zero-w: Add missing pinctrl name

So, I did this, but it's stuck pending ML moderator approval :(
I sent it on Saturday.

Do I need to try again?

Thanks,
Nick

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
