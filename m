Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF394114C85
	for <lists+linux-rpi-kernel@lfdr.de>; Fri,  6 Dec 2019 08:07:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b7KjX9PY5dki4A08AA9mw4TBlysoEPS12EzGYoBoQtA=; b=aMh5dRIk8rkk1W
	Utm0gh0M7/6Fjj+rVfukW7baobIum9FuihGPh1JgYXdToEnVn8NsbwIfcoCO1uqExaWiRxHPFKbyL
	1hpZ93z0NseF7nLXhNmSpCb1XUAvQXW9RfhxPvuSJSjJZXm/HWxTFtrnOzSZ2XKyi209skCuzdALU
	JHJE3bDECWDjyy+JUWZY729/igk/hUsjZpy8t/pduRwQFWhXs6oAHe/68/qxIiIJffbz/Vn/3rSzr
	IGtN5dJKhuQIY9Zq6boNeznwQm9nsZ8bzFPSN6AaCrCmgMO91Nw9zjD2TI1UmnHwdw64d70iTE6rj
	OwTk/ICHR+LPuDdo09yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1id7hR-0007jH-HN; Fri, 06 Dec 2019 07:06:49 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1id7hO-0007is-Me
 for linux-rpi-kernel@lists.infradead.org; Fri, 06 Dec 2019 07:06:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1575615993;
 bh=FgOwiUQb1IZEX2RP63zHxjKd+NU5T2I9uoQAo0EoiXw=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=g0s7/xgN2cex4Z+YhBqSQPpO4BdmrgNn+hRSXtG7XSoea9SvymAiVVJsJUoVDHGUI
 LCfBvzblbzFnCDEPAPaVjm8eiKrLA5D5/Y5fxKHDQ3zO4dFNj/t2ijXZJ8gUnyxY23
 J7JJcVk4xcfqBXd4E30roVF4TLTyLYDGWhroHfjM=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.176] ([37.4.249.122]) by mail.gmx.com (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1N33Ed-1hbteW1hYD-013LTH; Fri, 06
 Dec 2019 08:06:33 +0100
Subject: Re: Raspberry Pi Kernel Contributing
To: Petr Tesarik <ptesarik@suse.cz>
References: <BYWGM3UIMECN.2LBM56ZYRCANU@pride>
 <56b727cd-d5f9-2ae5-ce21-0bc7834b2400@gmx.net>
 <20191205084551.59d828fd@ezekiel.suse.cz>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <013be731-0bf9-ee55-3e3e-0ea7fb01ec0e@gmx.net>
Date: Fri, 6 Dec 2019 08:06:31 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191205084551.59d828fd@ezekiel.suse.cz>
Content-Language: en-US
X-Provags-ID: V03:K1:7v42E87Rp0mQkLQcZYS59VWxGELJXP6Zss9FxkhjH3MHTND+j9J
 SFtcIOl3Lyobht5EyRM14vnt0jM/23BZ+mI3Cfa2FLTIILRHq74mZKQxXfhDeci5uaZyVOO
 3BQ4gDb0jHGiIa6nwPlhbxBzKv7kbhWMc2XOmnlsoO2bv4YnqtT+p9hC4Lu5y6v7z0TXGvK
 ogIT0XpTKL/FdNPGPXI5Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:eKcNbjcBzgA=:Mj2vqkv9YWmnMd/9WOqSK2
 b6JG4WcJFIJfUochmvuRhZapAEnK1LKcQpdtcJBca3eJUw8x5KT0EpvPGNMPLjjvo8bIvFf4m
 TV5TRewCCnuOCNuljBwYDiZOhjDnLl51t8QTSd2RSEp8ZJ7w8T7qVKeMyxDiPy+gC1NiokhIJ
 Su6vWw+jtfIThRtzIwp20AmrO8vmEmcCuJhClLb2LWlpBdIb9cU4FPfV1XqrIdQHbyNID5bUb
 8uvm61VL2fhxtJzKfJ4IElhDl3QPZV+G5NUHaBLFP9Vf5K16vHh3RH3TGgW1eXBHYzOm/fyYH
 qSklHFR2CmSMzUhDzq3qTozU4ukj9JFAz0ujjgeHk8JQZAjx7krbujF4lHAIQMF6Nonb6kswO
 KR5zLJ0qdvEz0euhmSaqeFJLGrJ0GriWmVRnKa997Z49t8/Nsv6nG+0nsVbnlvf89Ew5nsDbT
 P/mkBbUDvq7blYCftigqSQ/S71iAT9csKBlKBhaLbFypOYXMHFCp4U6kAdXENLoazIotETVTL
 iBrx3aG+0ktprpy1/FbUQKYgt+Yro7gLO4yQBPu5is8bCuIzzxka6fzKslE6J9gD1MnmD8Lio
 S70qNrDS8XR/QIhrQ88aACOM8OxFSZDTRgFfHDKBYqaiECok5Sx9ySKRJ3a3QFCk6+Ui+YIFu
 3FX1YR6ZnNykdqCU15yMvaKDxMeQ9lca/8VSzAidYRG7vdcTmZGRB/KfXsD+EVAjA6PQcRKxo
 zgOY8x0X9oH97jAbPMy5NyJ5C6fmPUleYJ10Q4lXQ0AZ8QYTOo9jVf8XreiYFrgI/7R6FTQBk
 eksvYGWrc1iEAsRlGrD7Uq4NTkbqtx6SpIInmlce0uKnylj7Mt0razyJwIxRpIGfGPTvUxJNc
 etB0t+eHogkX9Rt4BXjnmYklEoIO7NFX2AzENWPK28ND/EVKSKMy3PovyduQoq+bIxIBo26qx
 O9mNb7yIunInb0pJNfD45h8JeY3oIrtOOAzJLbG6Z4Q3NjvReFnEDr+B9+T9Zjorob5dgc8Zo
 HWaCT8oG2W3yS+NdQxigSy0blgw0VVUxoYg7B76VdrsupGEY1Iet/fa8SckwhTmSJd+oIxcM5
 KQyYMslE3qx7UesDTtsYOhMJJcAlK5quKudcipNYOOE9ivyyKQjIZsJswHfDvWFHH56QVLSei
 YEPYrsr/rHkKpJjcTwI1iFdNkg18HBUbNF+12Oah5oPqKw90OjCzb4KNS9wyH3rYWEpeO2e/i
 wZbpy5TWGDbq9rLv9WAa2XpPMG2fm1cbj5NsQFm/v+BTe5fQCeRgY1JBUGlE=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_230647_068770_D5046C2E 
X-CRM114-Status: GOOD (  10.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.15.15 listed in wl.mailspike.net]
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
Cc: linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

Hi Petr,

Am 05.12.19 um 08:45 schrieb Petr Tesarik:
> On Wed, 4 Dec 2019 20:52:49 +0100
> Stefan Wahren <wahrenst@gmx.net> wrote:
>
>> Hi Stephen,
>>
>> Am 04.12.19 um 08:35 schrieb Stephen Brennan:
>> [...]
>>>  I wonder if there is any pointer to
>>> what needs to be done for these, or some documentation on the underlying
>>> hardware?
>> Yes, we all are still waiting for the BCM2711 datasheet or at least a
>> memory map. This would be a nice christmas present ;-)
> Out of curiosity,
maybe this answer your own question.
>  what are we missing apart from the new IP blocks that
> are already worked on (network, PCIe, v3d) and never documented blocks
> (OTP, hwmon, RNG)?

In order to review or fixing driver bugs this documentation is mandatory.

Regards
Stefan

>
> Petr T

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
