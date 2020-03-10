Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37F9317F0BA
	for <lists+linux-rpi-kernel@lfdr.de>; Tue, 10 Mar 2020 07:47:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z+DDaeaN/yb418aA1pSdTc+qIhxi/zEZ270i4Q7YYCw=; b=bsd3fLf79K/n8o
	lxNTje3N0TX49livAQr8+ZvoTyKf+fWDYZS6rVbaoIQAYCbd5Die0743OP5LbyV3+299njO1nsl3z
	9znBvz7oeek0dJDy0FlzF7up3gd8tXkP2qXRdLCzbSP9QojcSg2oKRmuxbpHyLjmxqFbXrseSkTwf
	9MohbA1CE/T8/gROqhSZTQRToLa869f9cKLbVUm0TtqtLjsiVu+8uX/4yyWeGaAXY8Hoos/5z0TvK
	XxDP1KFvrn99cuvuuRBIas9znCgMHZEYiG81O2d+F4m2qlRvl60KD+UJUCpdw0XmN6FKYHE6we6xI
	MeW6htl69KdPb4IzzD0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBYfH-0006dR-6K; Tue, 10 Mar 2020 06:46:55 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBYfD-0006ch-G2
 for linux-rpi-kernel@lists.infradead.org; Tue, 10 Mar 2020 06:46:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1583822805;
 bh=jBgFrKOJpoVE20yuxXHNQVFLlQ2yV+hT2lQhU43mPrQ=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=jHv4G5C9ZUiYATOfGJsebLwlYtF2nbfUj32EfbGL0+yQopP7cV07fj1CirV/MCsGP
 a3Ism4J7e26zktnmuGZ1EOfW9TxgMuXZvHw8q7ChqqWjne+lrdWjcua4rM+ZivJ4yN
 Oi2mx9YNUV8AEJ0aYUt51Ygt41h4VdGV2eaEHkeo=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.68] ([86.134.17.80]) by mail.gmx.com (mrgmx004
 [212.227.17.184]) with ESMTPSA (Nemesis) id 1MgeoI-1jqNab2gnc-00h8bz; Tue, 10
 Mar 2020 07:46:45 +0100
Subject: Re: ARM: bcm2835-rpi-zero-w: Add missing pinctrl name
To: Florian Fainelli <f.fainelli@gmail.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-rpi-kernel@lists.infradead.org, devicetree@vger.kernel.org
References: <20200309164842.8184-1-nick.hudson@gmx.co.uk>
 <8609efe72001a183452c4bd4f1f1a827eb789406.camel@suse.de>
 <47bc256f-d8f2-6f42-1421-12e19c09d0ce@gmail.com>
From: Nick Hudson <nick.hudson@gmx.co.uk>
Message-ID: <b9b15470-deb0-6434-8e42-6482ea4bec9d@gmx.co.uk>
Date: Tue, 10 Mar 2020 06:46:41 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <47bc256f-d8f2-6f42-1421-12e19c09d0ce@gmail.com>
Content-Language: en-GB
X-Provags-ID: V03:K1:qOm7olJMt2zokTuR2QN6wmbffUfyi1X1nnMHDMPFf1OXbZo9S4t
 LKiCIYtTmAakTikiFbA2rMRebjcAyhELVcOEzbTQHXJXtphW3PWSUfmoZ8q/03S3KxJeyW8
 5xVOKFpxyX2iEmyvtoDGRy4qTf9SIi9sbEN3Cj5DO64wSQmUGJ4cS6HRKddYYUhjvJ4155l
 /mpgt1ycsEz3z7nX3J2lw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:cXcF1Zoqi8A=:ZgZHQmiLdemIUMo9ZguLAn
 QODd4lUR4T1Pmp1Zk7wigZu2zWtuQhqiuOinR09ukdDMEpW9VeqVqmgOm5RassE2ZMUy8daHg
 3sAkybTR2ih+ceZ83n3YFFbhoNwKhh1FwsvQXnizTnOhn0u299+hulBGaaT7QCLnyUSqcJFVM
 B4kWZlxzhIomRokoOivGdTsWqsW91Rzm+RSeDZiGIPJ30qpkzaK1bisrsJANJZNLv84vlhcCq
 rQRbnTDl7nAy7gQ1qaIDpIB0wgLTuuyM56i0hMKAVH06fbNOEdXnqXHnT69uY9PHh4iXMV2g7
 zms3VZXXFb5T+h66eRDm4dJ4Mrw9ozug08ZmmgbmMO5eyooBL/SsT4Kqyn2HnD0BA476s2sMi
 eQvk/A9l0pT/ajqFpraS/PHAMmTb/CsyKnVzjyxbOX2dUcujQRFeav4GUa442oKPHo8+84dQi
 oe1knrSidFqIdlMyKrhShLl4ip/BL5BDXWmS4Tkwya+PqlnpNFJjyM0f76wBt9Hk3Dkjx29qq
 UC3StMK8uHj8j9Wi7uDhUTq0JBmkewgVQm2018raEnwQ1Qv981nG6unYcroo2H9CVlzVolTx9
 gx/VdVfMvOonf4hS9eexBwfObl3SSSdmMvXSte/2UH4R/XX3/i7raQIe997N/XmGsy//o3Nhn
 QGxRi401s7g8y/kbLzxoo3JHKsyA6/pClxgJSw/4WtnJ6lWVrqvDmRDsCwHuD/qx+AFYLWKIt
 l78i+tXg38MLhPWbeMMmKcaoao1oWkJOHx86+FrmuobPSzb/F3SaRnwji/PRh2jnetTFj3NIz
 Ya1PMjk9xG6HLb/EB8xZXtUG6KZ/5bsM6/YQRpf4pEMus6/2jdejOTu7vDxhIbfra3rNU9wKl
 Ee9BVAYyCwrmMl7INSNxNQrPY+sC9a5MyagBnUbCqWpLYV+7FVQy7qS927XSbyM8+fpLKFR4P
 IvC5BgA8y0JglJNjxhvy981r89XTlCqI8ze5aww8Eiqxe+CKYKDaCMK7OlpPpGbitNQnfVjxC
 xqDKP+KbO+rFHc1tu1G4Db29W4pGWr2GTZVsujb7CeE3nH6MT6wkPPtpL1AhVT4kMaYizWdda
 OHeZsqg0DrpWdzK5F1WsiT7kOjSTt+xY/IguXVSeb/+IzLk5X7y0CGPmTGXc33O+9mmOmxIj0
 WFUemcVUz5qy2KuzBOVjN+1u1EzcTCSHCLLyWpdUl0ra34ImUtMesZ07zTw9zHBLwPlJx3dXe
 J2W160c6P1h0q641w
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_234651_866241_70E9B20D 
X-CRM114-Status: GOOD (  11.63  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.15.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Nick Hudson <skrll@netbsd.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org



On 09/03/2020 20:51, Florian Fainelli wrote:
> On 3/9/20 1:15 PM, Nicolas Saenz Julienne wrote:
>> Hi Nick,
>>
>> On Mon, 2020-03-09 at 16:48 +0000, nick.hudson@gmx.co.uk wrote:
>>> From: Nick Hudson <nick.hudson@gmx.co.uk>
>>>
>>> Define the sdhci pinctrl state as "default" so it gets applied
>>> correctly and to match all other RPis.
>>>
>>> Signed-off-by: Nick Hudson <skrll@netbsd.org>
>>> ---
>>
>> you should add the [PATCH] prefix in your subject when submitting patches. Also
>> make sure you CC everyone listed by ./sripts/get_maintainer.pl, so they can
>> properly review the patch.
>
> It would also be nice to get a Fixes: tag such that this could be
> backported to stable kernels. Thank you.

If you haven't already guessed... I have no idea what I'm doing here so some
guidance would be nice.

I guess it's been wrong from day one and so I should have something like

Fixes: 2c7c040c73e9 ("ARM: dts: bcm2835: Add Raspberry Pi Zero W")

?

Thanks,
Nick

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
