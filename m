Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC912AFE85
	for <lists+linux-rpi-kernel@lfdr.de>; Wed, 11 Sep 2019 16:17:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date
	:Message-ID:From:References:To:Subject:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ickPh1GOzwahXSMtm8AmLxOBL2NXATGjZpshQHNHegU=; b=k7W1OYwmLo7/es
	C18JplFrgxVtRK/k9oK6dwZb6fH1OhBlEb5q+TKOJCjGthiSH9TKuf7tNyKQc/7GBMYc8jWh83ZPO
	9XC5+NDPFhuu19LXQxdLhBW45XSn0yfAfyXIz/dd2izROIIDOOs9+icUMoLmalTkcTAproG52MJ9Q
	ixM10am1mgaSEbPx3Hd+TupM/pp/uuSAnar0kDZXr9zCGp9gxZThgaG58pwS7NAYfE5CBOCB1v379
	fgGLKoeoHdKclK6YwKbdw+jHnhAXUGBJiWJpeVDcXhK+yXk0O/+QTQhk3qO62cDU0a3UkPLyNKeTy
	Tidd+Hf+uhaJceDboD0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i83RJ-0002Sf-Bq; Wed, 11 Sep 2019 14:17:45 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i83RF-0002SE-BV
 for linux-rpi-kernel@lists.infradead.org; Wed, 11 Sep 2019 14:17:42 +0000
Received: from [192.168.178.51] ([109.104.36.78]) by mrelayeu.kundenserver.de
 (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MD9Kj-1hz0sQ1dR3-0099ZC; Wed, 11 Sep 2019 16:17:27 +0200
Subject: Re: [PATCH] staging: vhciq_core: replace snprintf with scnprintf
To: Rohit Sarkar <rohitsarkar5398@gmail.com>, Eric Anholt <eric@anholt.net>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
References: <20190911135112.GA5569@SARKAR>
From: Stefan Wahren <stefan.wahren@i2se.com>
Message-ID: <7bf3c74d-e690-1ef1-dd74-ac98667e42ef@i2se.com>
Date: Wed, 11 Sep 2019 16:17:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190911135112.GA5569@SARKAR>
Content-Language: en-US
X-Provags-ID: V03:K1:uA7A4z8RtLe6psHsb2WmUkXx0EoIQhDKSOGnfwLT+4O0T9y7af7
 0YhigydzRBiLVJDONmGQmX1yst8TkCsS5Mp+aIWcwJfTEpepijrLHxd6a5hFdyCDjryOp3T
 4PMjI2bqqQMKR3ycFPeEuDCcUSqiP8X9nTQEA9TbhYIvAWBP3S3BDnEpE34t3r8elKw4EUc
 127dIrcGjezBVfjhKBE0g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:p11JRo+/rtk=:rEO3bRuBaLFffRL8wjw00m
 yLVfeYZo63B1t922DK95c4A0uiEct4luY+yJlOO+D+I09KYXFJtHYj+tE8d9JczmnQZk4EWp+
 EmezaBfWQ8t9pY3phAZZkRzqqCurIk76eXi2o3nQrreF5C8x64lCRgn9YJ1a1aCwhVGrIg1Cv
 JOmqJiOwFfyLVkobQvH4uJlkj1gdkuPrr+OUbyjFy3uDQgsD1QN/9avS0GaaDvdagwkSy0+tZ
 oXRIJ5ngm++sjN2msSO85LiqE6ndF9T0HmEjk28R0r2zfpM50xV2ey+bcSRoBUcRUENmp0DOS
 cEABVj9BT1coHvPa4TCLuFM9sA8WkVv0gg4SYA2G8LYOab1BL2BlhBsL3fi4PCipjO/ggc6Tq
 xVZ8odd73hejsmjZ8pA142IUQSeLhPd4YcW72aUjtkdB6NU6t/iGsmjwOAICunv0W9LZlDSde
 HzOi02QPS50ODngvULTV56UFru4PG2Ld8qP3vp1TNpuOxgL9DjiGMMTOXoHJsU08hO7HCI3Yh
 Yvni0nFZRu+OgSsn5WhsifVJ+qodk58DXWvdpd1cZ//s92oGrKznXQAjtLDmpXDZXVJboCMUS
 5PWffZUVJTS2YD6FWA/1w3u2jVaP9GfLgJ4AxcXHBk45Asv3gGtJoZNcrrNREsf5TxzmplZCA
 ZInGWZwytBWy3Ti/+jXAlgiOQlP+56ZDDpqPB50Tyc4cDMJZ1vdZVOQ86Os0x6gW8WyAMGQPx
 RCNA3jS6RBUjPmfkYWw/WxcdA5VxeORM71bYilHTEmLhtNSjNODwjap/U9KrwxmWxRSk5Aiq1
 t070jxnOEwT4/Spr5XhK4Bz5MuQjmtipKCJzzI8D3QjtMgCwaO7N0ht+aVuHyEpILcPmU9MWy
 vuI65Ncg2CXzIb52h5cr80xKjBypzeIZZr+xEsTs4=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_071741_692716_81064F18 
X-CRM114-Status: UNSURE (   8.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.5 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.133 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.5 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
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
Reply-To: Stefan Wahren <wahrenst@gmx.net>
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kernel-janitors@vger.kernel.org,
 =?UTF-8?Q?Tobias_B=c3=bcttner?= <tobias.buettner@fau.de>,
 linux-rpi-kernel@lists.infradead.org, Dominic Braun <inf.braun@fau.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

Hi Rohit,

On 11.09.19 15:51, Rohit Sarkar wrote:
> When the number of bytes to be printed exceeds the limit snprintf
> returns the number of bytes that would have been printed (if there was
> no truncation). This might cause issues, hence use scnprintf which
> returns the actual number of bytes printed to buffer always
>
> Signed-off-by: Rohit Sarkar <rohitsarkar5398@gmail.com>
thanks for your patch. Did you test your change on the Raspberry Pi?

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
