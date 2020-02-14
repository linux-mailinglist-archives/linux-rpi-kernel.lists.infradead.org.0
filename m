Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9361515D75F
	for <lists+linux-rpi-kernel@lfdr.de>; Fri, 14 Feb 2020 13:26:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HBE1Ns0xdGFA8Uil19nrg6Mc6HOA0/6ESqUJP8PZatU=; b=T+OWRUZTo/nwlK
	YT9rHCKqeEPCCWr+9Nh9LGG00+TFbZCW+4vrHPIoA+yOfe0IMfnUOLuQcexFSMZJwFjTI9ZJ/4Vz2
	lgPHLeVgUWMCg+68vbJmGxoYpMkk1/n9fg9CQIfkvYFMMIGuKONuJxbSebnODoGMz/Uu8+J07XU+W
	5t1CmtpKJXTvrchFE8vZRz1M43+5ZrvV8bKDnGXc2H6sTp/StW/GcIPuoAjKA9MBF6s90kFb4dxMx
	U4Bnfm1FBNfE78dRv/12G1v3UNL3DOIW7UAgPQ/BsbxZjqtouc63IYGlAZWgnOKKpRh53Z3j9MV/T
	Y6eh3nEO3l+erBxaMLnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2a2z-0005Hw-Qo; Fri, 14 Feb 2020 12:26:17 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2a2m-00055o-9o
 for linux-rpi-kernel@lists.infradead.org; Fri, 14 Feb 2020 12:26:06 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200214122601euoutp016fdf24409ec03672cc277e2ddbc77c52~zRHSbTEGk2000020000euoutp01R
 for <linux-rpi-kernel@lists.infradead.org>;
 Fri, 14 Feb 2020 12:26:01 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200214122601euoutp016fdf24409ec03672cc277e2ddbc77c52~zRHSbTEGk2000020000euoutp01R
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1581683161;
 bh=aW/+vMdFzD8SE/Td/cuvjlkwmievkHZjELbJo6wwrUA=;
 h=Subject:To:From:Date:In-Reply-To:References:From;
 b=DK3Xn+l2YYSsFua9oNhBeLu0fz24uLSyoNRU2T1LF1UEkCpRrmNQPdYRvvyRsarQK
 sUfzPUqPq7NcNIHpTgTwSHNRytUA/TSx/aJI0Con68PJRBIp0VN383/7q7Ytwkvz6y
 QOdn976F8DOcQYEEOSDuHDaedKmcmAtgTwpJLlZ8=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200214122601eucas1p2a5f9f7d8eb7411da7ad70ab4c8996da9~zRHSUTjJp0164901649eucas1p2v;
 Fri, 14 Feb 2020 12:26:01 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id BD.10.60698.9D1964E5; Fri, 14
 Feb 2020 12:26:01 +0000 (GMT)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200214122601eucas1p1d1b141c41c788821c80ae6bc2ce04f8a~zRHR_9fcW3230232302eucas1p1Z;
 Fri, 14 Feb 2020 12:26:01 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200214122601eusmtrp126c556f304ec88903b477fcffdb56e98~zRHR_VoCX1114911149eusmtrp1T;
 Fri, 14 Feb 2020 12:26:01 +0000 (GMT)
X-AuditID: cbfec7f5-a0fff7000001ed1a-5a-5e4691d9af7c
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id C1.DF.08375.9D1964E5; Fri, 14
 Feb 2020 12:26:01 +0000 (GMT)
Received: from [106.120.51.15] (unknown [106.120.51.15]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200214122600eusmtip1b5b5bdb41040567d1986f396fb6bbfb9~zRHRpUmUk2500125001eusmtip1D;
 Fri, 14 Feb 2020 12:26:00 +0000 (GMT)
Subject: Re: [PATCH] ARM: bcm2835_defconfig: add minimal support for
 Raspberry Pi4
To: Stefan Wahren <stefan.wahren@i2se.com>, Nicolas Saenz Julienne
 <nsaenzjulienne@suse.de>, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
From: Marek Szyprowski <m.szyprowski@samsung.com>
Message-ID: <8bd7a25a-359d-5b30-4c95-004032d78cb6@samsung.com>
Date: Fri, 14 Feb 2020 13:25:59 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <916c0113-9910-26cd-3720-15399fde507b@i2se.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprBKsWRmVeSWpSXmKPExsWy7djP87o3J7rFGex8omix6fE1VovLu+aw
 WUy8vYHdYtus5WwWm1bcYHNg9dh6y9Rj85J6j82nqz0+b5ILYInisklJzcksSy3St0vgyrh3
 /D1LwQ2uigPzaxsYT3F0MXJySAiYSLzu+c/axcjFISSwglGi5cp9JgjnC6PE7f9LoTKfGSWW
 9Lezw7T8enuRBSKxnFHixKR3zBDOW0aJnfMXgVUJC4RIbOmcA5YQETjJKNFx8S0LSIJNwFCi
 620XG4jNK2AncWT6VbA4i4CqxNQt7WBxUYFYidkrD7NA1AhKnJz5BMjm4OAUsJFYcM4PJMws
 IC+x/S3IfBBbXOLWk/lgd0sIdLNLvL81nx2kXkLARWLeyjKIq4UlXh3fAvWBjMTpyT0sEPXN
 jBIPz61lh3B6GCUuN81ghKiylrhz7hcbyCBmAU2J9bv0IcKOEk+3bYKazydx460gxA18EpO2
 TWeGCPNKdLQJQVSrScw6vg5u7cELl5ghbA+JpVdmMU5gVJyF5MlZSD6bheSzWQg3LGBkWcUo
 nlpanJueWmycl1quV5yYW1yal66XnJ+7iRGYXk7/O/51B+O+P0mHGAU4GJV4eCX63OKEWBPL
 iitzDzFKcDArifAeVgQK8aYkVlalFuXHF5XmpBYfYpTmYFES5zVe9DJWSCA9sSQ1OzW1ILUI
 JsvEwSnVwLjWvXuN1IXqk+F37BTdVRdkVCz9e0PQsmLuqc28UT38BV3BYlksK0vTPu3azHF/
 +eT/E4+/0gsrZ/VPjv21+5FrfG32dU9eg9pTrw+u+6k9981yoTcbn2dyvjKJiFtf+2bt7ie+
 E77vz/dacnbtEvnSbJtrCV8vfE8u5nTt9Ljg/0984jK7ltNKLMUZiYZazEXFiQA7Kk9rKwMA
 AA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprPIsWRmVeSWpSXmKPExsVy+t/xu7o3J7rFGVz7yGOx6fE1VovLu+aw
 WUy8vYHdYtus5WwWm1bcYHNg9dh6y9Rj85J6j82nqz0+b5ILYInSsynKLy1JVcjILy6xVYo2
 tDDSM7S00DMysdQzNDaPtTIyVdK3s0lJzcksSy3St0vQy7h3/D1LwQ2uigPzaxsYT3F0MXJy
 SAiYSPx6e5Gli5GLQ0hgKaPEnX9zmCASMhInpzWwQtjCEn+udbFBFL1mlNg/4SYzSEJYIETi
 Se8ydpCEiMBpRom2R9OgRm1mknjydDIjSBWbgKFE11uQdk4OXgE7iSPTr7KA2CwCqhJTt7SD
 xUUFYiVuzOxggqgRlDg58wlQDQcHp4CNxIJzfiBhZgEziXmbHzJD2PIS29/OgbLFJW49mc80
 gVFwFpLuWUhaZiFpmYWkZQEjyypGkdTS4tz03GJDveLE3OLSvHS95PzcTYzAyNl27OfmHYyX
 NgYfYhTgYFTi4S2Y4BYnxJpYVlyZe4hRgoNZSYT3sCJQiDclsbIqtSg/vqg0J7X4EKMp0G8T
 maVEk/OBUZ1XEm9oamhuYWlobmxubGahJM7bIXAwRkggPbEkNTs1tSC1CKaPiYNTqoFx0b05
 /iePvQrZ6cs07dVE7uOOkRHRe9VehFwwlnjA/XC5aHxMdINszdXEXws5bHT6Tt+zcOyddr/p
 UHfjOvXN/y4VXAzf8N77ybRbkzc5JqUzLpmS1vF/f9xR9aRFbsJF8lGWW+2EGfjbxIz4zzkk
 b2Pz+/w6yeqHweLv3WKOJ6sOB/5K31GhxFKckWioxVxUnAgAmSraYrICAAA=
X-CMS-MailID: 20200214122601eucas1p1d1b141c41c788821c80ae6bc2ce04f8a
X-Msg-Generator: CA
X-RootMTR: 20200212102022eucas1p1c49daf15d3e63eda9a56124bc4eafb57
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200212102022eucas1p1c49daf15d3e63eda9a56124bc4eafb57
References: <CGME20200212102022eucas1p1c49daf15d3e63eda9a56124bc4eafb57@eucas1p1.samsung.com>
 <20200212102009.17428-1-m.szyprowski@samsung.com>
 <a1d66025baa13b2276b12405544fc7107aac8d6c.camel@suse.de>
 <5adcb2de-3570-9c4d-5e5b-726b94fb2029@samsung.com>
 <916c0113-9910-26cd-3720-15399fde507b@i2se.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_042604_555452_A2426B1C 
X-CRM114-Status: GOOD (  12.54  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.11 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

Hi Stefan,

On 13.02.2020 10:59, Stefan Wahren wrote:
> On 13.02.20 08:35, Marek Szyprowski wrote:
>> On 12.02.2020 19:31, Nicolas Saenz Julienne wrote:
>>> On Wed, 2020-02-12 at 11:20 +0100, Marek Szyprowski wrote:
>>>> Add drivers for the minimal set of devices needed to boot Raspberry Pi4
>>>> board.
>>>>
>>>> Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
>>> Just so you know, the amount of support on the RPi4 you might be able to get
>>> updating bcm2835_defconfig's config is very limited. Only 1GB of ram and no
>>> PCIe (so no USBs).
>> Yes, I know. A lots of core features is missing: SMP, HIGHMEM, LPAE, PCI
>> and so on, but having a possibility to boot RPi4 with this defconfig
>> increases the test coverage.
> in case you want to increase test coverage, we better enable all
> Raspberry Pi 4 relevant hardware parts (hwrng, thermal, PCI ...). This
> is what we did for older Pi boards.

Okay, I will add thermal in v2. HWRNG is already selected as module. 
Enabling PCI without LPAE makes no sense as the driver won't be able to 
initialize properly.

> SMP, HIGHMEM, LPAE are different and shouldn't be enabled in
> bcm2835_defconfig from my PoV.

Maybe it would make sense to also add bcm2711_defconfig or 
bcm2835_lpae_defconfig?

Best regards
-- 
Marek Szyprowski, PhD
Samsung R&D Institute Poland


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
