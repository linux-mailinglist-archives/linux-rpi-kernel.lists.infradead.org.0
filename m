Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F4FC4ED9B
	for <lists+linux-rpi-kernel@lfdr.de>; Fri, 21 Jun 2019 19:12:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5I3ks7bo+m43xjDhftF20Ai8N7LqyWrDlKc/nYZOAzY=; b=bubXd9vdVU9fVE
	m1HbqkQDO568nDsIJqPoEzIb6ySSdGRThuIWm4p/WIugOZD7ISlt7UvWGLQTLIdbI4+C3AfL9Oq25
	eamaMku07iVRbsq8LdF2GW7y37qpUPCpPt2m01k3+AdMy/lbCTjfIyFHcAs6IsTOvjbBVaCX4yBCl
	Mw8w182vrBOoHwpGzwgmGvJLglljf0hE4xyBjsUQl57FbGNLw6QogXKPqBV4HzjRAqpohqxe+XQI6
	QhcqcLaWMZTvwMo1tqIEG3DQ/LWNITSCDIE/OvEjarAGEtaEQIfojw+91pCZqpLRudX5686NCCIWJ
	p07El5U72a0Lopx2BK0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heN55-0000Mv-VO; Fri, 21 Jun 2019 17:12:08 +0000
Received: from mout.gmx.net ([212.227.15.19])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heN51-0000MS-53; Fri, 21 Jun 2019 17:12:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1561137110;
 bh=pikR5/KXF+9GO3cS9XFX/uRd/MsXY9NL3Y1lHICzUUk=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=FJXxyzw+/1XB/g0RUfao91CSG+l1ICS3cdsJHBdgdb6Trm0BllQJ2xom71hIsqmRP
 FkcVpO0dRFtQo6qCOvvk8tgezQ+yxVYVl4mg9eYJaKjLjt2GZTLOpYAZLYKGY5bSyh
 hJnmnxp1pWXb4wj1ZL2q25nqT+LGTNiTy2TerMxU=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.162] ([37.4.249.111]) by mail.gmx.com (mrgmx002
 [212.227.17.190]) with ESMTPSA (Nemesis) id 0LaXEN-1iJUzq3X9L-00mIa6; Fri, 21
 Jun 2019 19:11:49 +0200
Subject: Re: [PATCH v2 0/2] i2c: bcm2835: Fixes for clock changes in probe
 function
To: Annaliese McDermond <nh6z@nh6z.net>, eric@anholt.net,
 f.fainelli@gmail.com, wsa@the-dreams.de, swarren@wwwdotorg.org,
 linux-i2c@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
References: <20190621105250.19858-1-nh6z@nh6z.net>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <7d23a83f-4e3a-5186-78b2-2183e636b0af@gmx.net>
Date: Fri, 21 Jun 2019 19:11:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <20190621105250.19858-1-nh6z@nh6z.net>
Content-Language: en-US
X-Provags-ID: V03:K1:taiXKuJGyrqz/BHoKI9wPQvzZ/He7P42vNLrqNR/za/dm564A3Y
 mRGIFBrcnHMAo0vByONnKinbDRLSetzaePSTdZjCHPtexJGtB47g5JshdyVuA87vW1xzYqO
 49HOPhzRHZWKYw6TW8Wk7JciWSBiPl6s9swQ+7w9QwnXMITgbdma50acDpD+jGm0+CzRzzd
 dlBU5Qj4MW3XflcwOe65w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:XqbpE/Gjd04=:hg1BHGqyph7ozZl2spYdEE
 kVBMb1xhXyEzsgRZruYhs78JOZ4PUIkhbxWTPE5ITXagKTKQh46ZN3mXLPLd07klwifBxm2rY
 YtEPEnan3/+2y0Uw1/n374bFeG8UdgJy+uSg8IUI6gso6NSBk0L5HZ4vo/3tk5GkHJUnvFlzT
 je+2f0CFw11oYwoX8Jji1xuU1QZaD/inaW4SUoCupr1yDrBJSd+Tz1AfMRPEqNmP8Y5FkOgV8
 kPZNOrvo8ZOWaCrStWiSIgVHWPssAsDE1twdAOY7F/o5GkiQ+enFlKDa1qrGp158SoBuPXKcr
 IInDTOFNCHPwmu6zKV8njVek9q5G2xNdMZ+rA56H3xyrTyWdnXlKkZd51HMSEzabBd37Wgmqy
 EpAF197obWmWSqJQyDM2vFElITyKbCXEyufncZ8cZV+1/eABkopZDx/RWT8YeVK2BEXgDGOZh
 aLFMz4gpybewx+7CucVU94Q5dcPI2qT6cOGG4GfbjQA6YXOuIK4mJ9knRkpFUw+J+Jb3tB0p+
 1wjdWrkGSEleqknh+JY3tFuGsAPHMpVfp99j5OHrMaQw8AQuXyn81Rwrv7icIpzvaDtqJ+1X1
 ZQTUimozgGsts5FipE0ycPnOyi01jZP/tntZVgWqlrOeh9IETRKvRNDhBGMQBYevQWFSMpgBV
 QXoRzWz6wUWryC7PrJdRIO5swRb7c7UxPjG9kSU/luoDTRowwcWZQDY9MUuOWjnyL6Pu344GK
 hPHnM8fFI0VSu6l1DZUknKQkWTABcTX2zStr2RfJ2VPzeY6NbNMAweyJEe/oQkQLfI2oTWnXU
 Xd8Mn/tAFXwGcFIzYdgpAci3iItkAW6SwlJk89bTz00Wg5bQC8QtwBf5esTnxVATZ39W3tKKD
 FrOQx/OUA8hWcja12eJi5t3M3UBUA85FYQAIaNcLC5m4jSKlY/4w+oX/QFKSiAHubvbAJ0s6w
 lgbp4TLe4Q8RfrfYHglCnGDFCb82kLUIQ6bgDcV1+CqisunHQLAVq
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_101203_529656_46D3870E 
X-CRM114-Status: GOOD (  14.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.19 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: team@nwdigitalradio.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

Am 21.06.19 um 12:52 schrieb Annaliese McDermond:
> An issue was reported in [1] and [2] that the latest version of the i2c
> driver was not properly loading.  After analysis it was determined that
> the new clock code was failiing because the i2c driver was trying to
> load before the bcm2835-clk driver when not loaded as a module. This is
> fixed by actually attempting to grab a reference to the clock and failing
> out with a EPROBE_DEFER if it's not there.  This gives the other drivers
> an opportunity to load.
>
> This series also fixes a related bug where the clock setup code in the
> probe function could cause an issue where the IRQ would be requested
> by the driver and never freed in case of some clock setup failure.  The
> patch moves this IRQ code to the end of the probe function where it will
> not cause this issue.
>
> [1] - https://www.raspberrypi.org/forums/viewtopic.php?f=44&t=242856
> [2] - https://archlinuxarm.org/forum/viewtopic.php?f=23&t=13719

This whole series is:

Acked-by: Stefan Wahren <wahrenst@gmx.net>


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
