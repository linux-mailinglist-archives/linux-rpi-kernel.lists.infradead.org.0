Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 895FB16C2BB
	for <lists+linux-rpi-kernel@lfdr.de>; Tue, 25 Feb 2020 14:50:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N9oNZc7cS9PKveP8FXx8Qx+FbmdrWObz1pslw3aY0TY=; b=ZcNc5Itwhs4kgk
	/cF6vlEEiDVV70JTk6hC5fL4FumekmW2EWC9QgMTdXd1S2B8fJYykFL+f8LV9Zw6PlyUgw8MOVPfK
	EI5sBqx5s8JEKfph9WOMNxPiTz9rXJO7fgUjuWb9b46O5/pf0fzMLC2299G8ePauMLGGbd20FBHcs
	nrENmuPI3hpP20K0AnLabbyUT2U9IPMqU41wYdGsrGsndO4MoM+saM0uWWH5GbRK0kI73gRJkl3bn
	h0+sCCBigy+kQ9nVrxW5/b+9oJ7V2QTWvj3eBF7nsazwota/vuPCwJY9beqeU8YXy3ey7CNmKx62v
	01Rhiv6WBkP95e9r7XJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6abm-0003eQ-4t; Tue, 25 Feb 2020 13:50:46 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6abb-0003Vy-CI; Tue, 25 Feb 2020 13:50:36 +0000
Received: from [192.168.178.56] ([109.104.32.141]) by mrelayeu.kundenserver.de
 (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MQMm9-1ikP2y02U5-00MHZm; Tue, 25 Feb 2020 14:50:21 +0100
Subject: Re: [PATCH] ARM: dts: bcm283x: Add missing properties to the PWR LED
To: Peter Robinson <pbrobinson@gmail.com>
References: <1582480985-6773-1-git-send-email-stefan.wahren@i2se.com>
 <CALeDE9P3ksuvLeiki5HSnAjQTs4tM_bhspB-ktMWiy85SZocSg@mail.gmail.com>
From: Stefan Wahren <stefan.wahren@i2se.com>
Message-ID: <d6550364-a9e6-afeb-76dd-436fbf4d0f66@i2se.com>
Date: Tue, 25 Feb 2020 14:50:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CALeDE9P3ksuvLeiki5HSnAjQTs4tM_bhspB-ktMWiy85SZocSg@mail.gmail.com>
Content-Language: en-US
X-Provags-ID: V03:K1:zh/lhPbDTMBR2wwqi88n/Y1Le1BNJevvVDN08/rxKfTvFziQSm9
 SU8vtPwXNtuoIXOMny38Zuevmt5b4FTo9PP4/3HFixkvPnc+U70bEGsq+g37YJLZCM3YvFi
 IqBBXxRSd9QyZyaRTDUA2wWcYBqdkbiU0mxlA0F6UXQa8y5jCiO0IbGkbQKgWTLzVFNIDRy
 W9nyC760c+/RQTH1WL4LQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:lgvznwyGZ1A=:41Vq6khd8gR2OOxNwqQiYU
 C9ShaCnnK3ZxwoSeXB5l4611GdArHXzvH9q1B3Lp8QWeasMMpWKXIXxWkvdlCPni7YPjchy/e
 wbW16MuNH+DktRuvbWcEcn+h23yJKAYVwe/KOuPnwnlJfAOVY/839kf8ZjlX0YDpspYiEIN1O
 PTheOxoG1csGf9IvuufF8dHgG03ZenbrWAszEFT0uYVL+sO9h2EEAlwmRPaJ0IG8mbELjssIl
 3xzOmovFcaINE5w2roxCL5HVY+gdI0R+4mQnfGmLDVW5cV2bK0hh7T245gUdt7Qw1eMHFI4f+
 rr1ixwlIdn9QhBmG2ocRDvWOj6I3Ur7t3VscTAaZaQdSRyUPKZ3iam+8KpLwYSH3K/NtEULuj
 dVWHxGe+bCgGhOecfbQ2Kt9bGsFRCqJigVdwCOodD9ZM61TlEh7WijDa3oF9NVK4+lRh7e9La
 sVteIs3ufLRvrB6+9KiGrSNUlgn8B0YeRaoNEicvNvr7h8uLr2q9ZdiVo2ihrzSN2FNmk0kdz
 41TNUcWE2UqlBayRxAR39HvNpSVJXN40xi5xceBfeoCRg1EcbY9ss1U83Iino/TuPodUPZ6mW
 8jgUDH9brcT6R/2tKWomWZdQ0bO2skdHhGIDbifXm+85lgo36MLR3BqBtJ/DNiYuYPnHO7NH7
 9N0X7weu2Jm813WseEiYVJ3PIfVCaEQQULTl0TgtTb3dhcv+sUrpwM1b99BPY3VNl0KqeTQUD
 4z83IOR7ZVZz7GL5dB8jb4Bbh2hYpxwNE1qUR8am7amGJc/VJAJsf2wdtLktWnH85+1sqxT+c
 Rx+RlF0VFsv8expsORlUKZ4pThbiZO4WB1VDO+hHv4zPzatfPw3GZ7mckoXO/7UFbl6bLK+
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_055035_713590_BBD36EF1 
X-CRM114-Status: GOOD (  13.19  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Scott Branden <sbranden@broadcom.com>,
 Ray Jui <rjui@broadcom.com>, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

Hi Peter,

On 25.02.20 14:29, Peter Robinson wrote:
>> This adds the missing properties to the PWR LED for the RPi 3 & 4 boards,
>> which are already set for the other boards. Without them we will lose
>> the LED state after suspend.
>>
>> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
> Tested-by: Peter Robinson <pbrobinson@gmail.com>
thanks
>
> Tested on a 3B+ and a 4B. On a related note it seems that the original
> RPi3B is missing the pwr led entry altogether, is that expected given
> that at least the 2, other 3 models have the entry?

This is expected since the PWR LED on the 3B doesn't have a real
dedicated GPIO. In downstream this is handled via a virtual GPIO driver
which isn't available in mainline.

Best regards
Stefan


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
