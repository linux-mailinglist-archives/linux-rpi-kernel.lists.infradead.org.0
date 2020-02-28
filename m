Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E13E8173679
	for <lists+linux-rpi-kernel@lfdr.de>; Fri, 28 Feb 2020 12:53:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ia2qcH01OrQFTsvwFakRDUPW43OQZLRik316KmVJRbA=; b=PmR1ZKROwNvPZqGp2lVeUI1WC
	kT3Az9w9wMIPHPZgnpXUOPSPx+AM9//Oi8NbJYpArry4Gj8/zYTMZbC37/duRKGJd6BXNVVSsgnzp
	+Wl1vkwnJAT/mxBxIrih1qkeY5jfQwyV+2XeMDl6xJx//vTm/Ti3UrXc634Qa1KRdbwf6Wk2Pm07J
	W889uW+QLj3DW3Ilaf7VW3NfEMK1rb7dPpIULt9eBmVdwN3e8vM0/watlbZhaq/IM4L5ZJi1rjqIa
	lnB/rbbSKY34Kj8Ln7fT/mcxV31Km0HoCYo4x8Y/IhRVBNHPwKjbM31tzQLNxiDzid+t3+slIUxni
	v4y4KhB8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7eCH-0003Op-P9; Fri, 28 Feb 2020 11:52:49 +0000
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7eCE-0003OW-LJ
 for linux-rpi-kernel@lists.infradead.org; Fri, 28 Feb 2020 11:52:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1582890761;
 bh=E4E1cvmOoa1R3ggxn0W5VA37j87qo9Un/InroAhqkxA=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=f0ARzT0M69Tkv4sX7EVjqXDq+weVvqBWEzI6nuip1xvjpEM/N7mLFtv0des64thHM
 m8pDMwxZyqcxyVBVqCiMjhfbR1QYB3Mg64DSDf7YPo8JS37HMH+WTOachGghuseIRY
 KwBIPB+5aAZo5dpPwoDLSdovQ7WukH9JcdtX+waI=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.68] ([86.161.30.248]) by mail.gmx.com (mrgmx104
 [212.227.17.174]) with ESMTPSA (Nemesis) id 1MwQXN-1jQPV62lTJ-00sKBB; Fri, 28
 Feb 2020 12:52:41 +0100
Subject: Re: [PATCH] define rpi0w sdhci pinctrl state
To: Stefan Wahren <stefan.wahren@i2se.com>,
 linux-rpi-kernel@lists.infradead.org, devicetree@vger.kernel.org
References: <c34db439-3539-88c0-99f1-308d75afd1aa@gmx.co.uk>
 <23a936db-fc89-6259-3991-5791fa88beb7@i2se.com>
From: Nick Hudson <nick.hudson@gmx.co.uk>
Message-ID: <bd4bd5dc-307f-d058-8f94-00b61a8b8c87@gmx.co.uk>
Date: Fri, 28 Feb 2020 11:52:40 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <23a936db-fc89-6259-3991-5791fa88beb7@i2se.com>
Content-Language: en-GB
X-Provags-ID: V03:K1:IyQXi+K25Am9OBXickJYB4m0olsIqE0l79J0l2rgQvn5sxjnn2T
 zBswdHhNXLMx8vSzl6LkLTbD2kZFCXq2nY1FbPb9DYaG3TyKsiwgWFtRu4ybyYMwTvwwQOR
 IYqVdu9kPMbUisp7N0FIDDt9KpMRrc1KdTpY4ftdVwVdFQh4FxlWwlodM4yZW1BrqOciEa4
 HRNTDJXjOnZB7kWMCu+nA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:K97iQwfrBgI=:GRJ64+SJQCITrVbeU4yKzI
 S2xEAJCgNSAjk0L3nQFviEpklg81aI6H7030NuJpRfEpECVlf3JauOGxc9Pu0W7vfiIK2diWD
 A5yoBNuXhXDWDa8RDHOvfroQKqHvcr4lRQ9Oav2mBy2fie7WIFTyttQZFvSuxkW5Z9kIQwlON
 3H4BknzG0D6H/Ps1pXftnqBtVck6LsvDqotSRFsaYUE97ALO8V91V13WUF4msb3xdp8m2xPYq
 TYGgBgbRcKrJp8K1DWNmda2/CJZrLJZ2OLoKPFbEOIdgBGyxXLgFavYN7cYGMlbfT0dIXZQCz
 YwPWJCUSZPXeGp/pbvJonFznLW5TqLodn2s92KEtLNIUlgrhk4FC6C0AffHqdl1Iyv1nzmN0j
 e+bUCQX3CubkdZsnu3rOh/5KfDIK05BsXzz72wuwewwoD4VcGYRf0Hwul/QMQy9UEerHfJoq1
 hEs8X/u0wLuziCWnPQ8YAi0LWYql8NmhJTuDqt3svwETlesfG3K57mIAmcLYaF+TvNPFIqbWR
 eW4XFI93AfL9XYcBt8mP2WGLMYKnhiS7e1yTHHNSWumq6JyACw8C7q2tpoR6+BlZOv1bR7zq9
 rBUyZfVlBfNbv04az5l/Om+vgBVuS6Kq00fUgbhllzR0MbtDcEuG5fj5ip/FtdRD448Z74uUc
 inJtLumA6nwcYb7Xs3J3i3P7Ef8ecCfW7Y1nu08ranIRVRvUblSj9ijEDiqvDH8AVJPF9J8vl
 YH3C7onvBfZmwqxpXTeuLXYioQTb8VLuXBeNCm7p+mnOGD6AC9L6xqhOtvjH7vruhjdKu806l
 S90ui83kiqzyA0jthgtJjrgwOBshkJfrWGsjBqrzVVGDP0Vucm7WzDJYWmaoX5xFiEXpXrpzN
 Bl5H5V4KFaEDKPeNpqdt6noQDWIoXnAvmyhFKDTaESjHUP7rOUHOnITXe/VPj7pK7b3H9wQGk
 V2Vu0V6ctRiOAN2RrEMYQkPg+px9Zn8HfAvLJn3P+ifRfunmMjukShOAZ2M57XEHW1hpMzooV
 SibiobbhaMMlZ/RaOgmu2Nmo07tZhm4NMnRI99aWvp8651uJi9JqIBSUjb2mByvHexbmDysN1
 WOGzJy5QLEHgVL+KQ8rBqs8+ULh2AZLa+Q6KbbJBKFoUylMFtwNIA3BNMS2I5eeZt0AmMS26Y
 RglB67ON9wWnAdYRQhK4NBvLhN2TBJu+ZOT9MLmQtHnkl58e+f1hRV6hMVnkR4DyoLHQKnVXm
 RE8QN5wjRUTnlIkTV
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_035247_148891_70EE45EE 
X-CRM114-Status: UNSURE (   9.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.22 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org



On 27/02/2020 17:53, Stefan Wahren wrote:
> Hi Nick,
>
> Am 27.02.20 um 00:33 schrieb Nick Hudson:
>> I'm still not sure where I should be sending this, but here goes.
>
> the addresses are right. Please rebase your change against recent Linux
> git tree and generate a git patch, otherwise we cannot apply your it.
Oops, I see I sent the comletely the wrong diff... will fix.

>
> I suggest the following subject:
>
> ARM: bcm2835-rpi-zero-w: Add missing pinctrl name

will do.

>
> Thanks
> Stefan

Thanks,
Nick

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
