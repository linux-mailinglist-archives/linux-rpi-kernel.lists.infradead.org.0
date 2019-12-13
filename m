Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7668A11E076
	for <lists+linux-rpi-kernel@lfdr.de>; Fri, 13 Dec 2019 10:18:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z+dedBvlTgXvqLmbWso7QOPt8FobpAbXxrxIxFQyEpY=; b=kfiPEqelfIK2cp
	XM/vSocRIw9dw+6up2c1wwn/ak0y1PuxDHR0mRqVocNmlaBtCLgA9aueGYEJhY+mL7BF/erM+sxRG
	xwYDKR1M7exkkntkUpBmVh/+WpF6Lb7O+Rjv6jAE3ZHJYAz3VjymqVI7lOC17VAWO0R3VZFpEk6N+
	z+Q1VeV3C0lpxTpkMxRHAeKvCKcptXrcb5wGUM+ETT3P+CkzkNm2xnqmbOWUohVBMIR7g9r1i3+9V
	0MI10SIhDLXH6jFuUSlSEWs0eUJ1kpXr+mgxcWrIr24ShpJElfwFqHp07JXmKWNS7W9lufAD6GMvD
	9kXX74Jo/ZiT7Lt/421g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifh5T-00030m-TC; Fri, 13 Dec 2019 09:18:15 +0000
Received: from mail-lj1-f196.google.com ([209.85.208.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifh5R-0002zs-1S
 for linux-rpi-kernel@lists.infradead.org; Fri, 13 Dec 2019 09:18:14 +0000
Received: by mail-lj1-f196.google.com with SMTP id j6so1855121lja.2
 for <linux-rpi-kernel@lists.infradead.org>;
 Fri, 13 Dec 2019 01:18:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=RZ51uRTlJcv6c8enjZTOzifIqw0cVu1vMI6dvmNCekw=;
 b=Y4/J6bIJz+l3AkzXZodEpl8UR5vV4mSdFfvkvz0PXQ2TYf8tk1dW8PgorB1cpMhiX/
 X18hbE6WPjaRo+qEmtRK7ydO7+470JcqRhNvb/LdVA0MxRop+BuJQJwjfxZpXF9kdkYF
 j3NK7/DhbT7xYQgIhth1+iJkAsHFmlx29XgUE1DFcyUF1o0Qx5zzE1VlhDu+ffPi0wzU
 21PrNlBq4gWMCMJ5uEM6puVyFNT6JtSQqPJOwQe1u0h41BSTONJ21TIsltFCmLTFsfWP
 7MwI4G7nxQs0x9f/r83AxGAgYXiZdzyTshyncusdNK+tPKdcxtao6sDzcGdhKhlDE2Ii
 CN6g==
X-Gm-Message-State: APjAAAVhHnXhCJhTa3Ds2JQx26lGc9Id2keg3gk2OV/VT+hcWuuIdg5Q
 Uxmi6HiA+fUyZxm7iYiAwCb0ieeF
X-Google-Smtp-Source: APXvYqwVxJbJvkmBpoQ44DVZmfkrX2ABY2jSL5V+LsTOqfrT61h5h4UZeIEkOUyzz6Rbwv1HTfRiaA==
X-Received: by 2002:a2e:850f:: with SMTP id j15mr8768401lji.91.1576228688991; 
 Fri, 13 Dec 2019 01:18:08 -0800 (PST)
Received: from xi.terra (c-14b8e655.07-184-6d6c6d4.bbcust.telenor.se.
 [85.230.184.20])
 by smtp.gmail.com with ESMTPSA id l21sm4223245lfh.74.2019.12.13.01.18.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Dec 2019 01:18:08 -0800 (PST)
Received: from johan by xi.terra with local (Exim 4.92.3)
 (envelope-from <johan@kernel.org>)
 id 1ifh5N-0007ZJ-0d; Fri, 13 Dec 2019 10:18:09 +0100
Date: Fri, 13 Dec 2019 10:18:09 +0100
From: Johan Hovold <johan@kernel.org>
To: Marcel Holtmann <marcel@holtmann.org>
Subject: Re: [PATCH v3] bluetooth: hci_bcm: enable IRQ capability from node
Message-ID: <20191213091809.GW10631@localhost>
References: <20191211094923.20220-1-glaroque@baylibre.com>
 <cf77eec5df92b1845f0bf7cc8eb53edd4af9e1bf.camel@suse.de>
 <0CF02341-CF69-4680-B61F-DC5C0702F1A2@holtmann.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0CF02341-CF69-4680-B61F-DC5C0702F1A2@holtmann.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_011813_082433_45BC0E56 
X-CRM114-Status: GOOD (  17.15  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jhovold[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.196 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Johan Hedberg <johan.hedberg@gmail.com>,
 lkml <linux-kernel@vger.kernel.org>, BlueZ <linux-bluetooth@vger.kernel.org>,
 Guillaume La Roque <glaroque@baylibre.com>,
 linux-rpi-kernel <linux-rpi-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

On Thu, Dec 12, 2019 at 09:46:32PM +0100, Marcel Holtmann wrote:
> Hi Nicolas,
> 
> >> Actually IRQ can be found from GPIO but all platforms don't support
> >> gpiod_to_irq, it's the case on amlogic chip.
> >> so to have possibility to use interrupt mode we need to add interrupts
> >> field in node and support it in driver.
> >> 
> >> Signed-off-by: Guillaume La Roque <glaroque@baylibre.com>
> >> ---
> >> drivers/bluetooth/hci_bcm.c | 3 +++
> >> 1 file changed, 3 insertions(+)
> > 
> > This triggers the following panic on Raspberry Pi 4:
> > 
> > [    6.634507] Unable to handle kernel NULL pointer dereference at virtual
> > address 0000000000000018

> >> diff --git a/drivers/bluetooth/hci_bcm.c b/drivers/bluetooth/hci_bcm.c
> >> index f8f5c593a05c..9f52d57c56de 100644
> >> --- a/drivers/bluetooth/hci_bcm.c
> >> +++ b/drivers/bluetooth/hci_bcm.c
> >> @@ -1409,6 +1409,7 @@ static int bcm_serdev_probe(struct serdev_device
> >> *serdev)
> >> {
> >> 	struct bcm_device *bcmdev;
> >> 	const struct bcm_device_data *data;
> >> +	struct platform_device *pdev;
> >> 	int err;
> >> 
> >> 	bcmdev = devm_kzalloc(&serdev->dev, sizeof(*bcmdev), GFP_KERNEL);
> >> @@ -1421,6 +1422,8 @@ static int bcm_serdev_probe(struct serdev_device
> >> *serdev)
> >> #endif
> >> 	bcmdev->serdev_hu.serdev = serdev;
> >> 	serdev_device_set_drvdata(serdev, bcmdev);
> >> +	pdev = to_platform_device(bcmdev->dev);
> > 
> > Ultimately bcmdev->dev here comes from a serdev device not a platform device,
> > right?
> 
> I was afraid of this, but then nobody spoke up. Can we fix this or
> should I just revert the patch?

Just revert it, the patch is plain broken and makes no sense.

As Nicolas pointed out, bcmdev->dev is a member of struct serdev_device
so cannot be cast to a platform device.

Johan

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
