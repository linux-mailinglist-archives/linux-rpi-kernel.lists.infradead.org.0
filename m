Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 192E7103D02
	for <lists+linux-rpi-kernel@lfdr.de>; Wed, 20 Nov 2019 15:12:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GMh9vuREqk0d8/YWxIzmuiiC6RPD+99T1msGV6Ata7k=; b=MyfWdClgxrBq8StQ2tpTwwEsq
	9jn1SP4s1vIwiPatYFnLtPqyfN6V9fMY78yKteLkx3hG5H7Sw2MFpLvFtjRYwQHf96+Mcj2QfOGr+
	JEsHMB7yc19mi6TZcU0tva2B0f4a9SUUPmVawUsn+8ATflILQf03VNuDM1DCS05ApZ5s8SIE95ACD
	4s+IQF2HOm1TAlYNUOJ7Lx7PRQ/ZO0cH2IZ42P53H3thH1Q3VmOkkreLfGfK9HIW98t9T72CNkzU5
	Ci0ZetjaBUTM/NUVN05exCr287bHBfB0m/YxZ1hT4nufFst8R7uXcsxehx3oPw/7XJhbkm+UrfjCj
	x+iyXX4EQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXQi6-0001pk-Ab; Wed, 20 Nov 2019 14:11:58 +0000
Received: from mx08-00252a01.pphosted.com ([91.207.212.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXQi0-0001ok-Mb
 for linux-rpi-kernel@lists.infradead.org; Wed, 20 Nov 2019 14:11:55 +0000
Received: from pps.filterd (m0102629.ppops.net [127.0.0.1])
 by mx08-00252a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xAKE7rG2029654
 for <linux-rpi-kernel@lists.infradead.org>; Wed, 20 Nov 2019 14:11:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=raspberrypi.org;
 h=subject : to :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=pp;
 bh=/at8uXIrARqtgojJ1uqk2uttbAL7Vve/nUl5o5grkME=;
 b=iPk4YXi5TtZqqzZEnVHVh/T9CVXQQQW0vCtU71hnYjztWvelNo/ZaaAufROx85r7APhI
 ZgQZYopDUCJwclPTYmWYngInGSPF+/gRxb1UMqEj5u3PoHrbdheQ5yyO2IUkwZT2HQl4
 lbNcz9KIIjQ6HRpfNlJXvGFlQDGtaWT6ChP4KU8KMV8KfNn+cRNd/sJ3IJryeCM1EteJ
 zOTxER3V98drx3AdYBx+J752kCu0ipV9RyZV2fUGRnS0uCB+w3F8SiMUGNBR/+C/0JL/
 4nAsHn6XiqeZ8Q8cAryGJYtnl8ffr1SWIrcj3y0fLKC+teOYpmY23PAGoG+B0vUrNGHV pg== 
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69])
 by mx08-00252a01.pphosted.com with ESMTP id 2wa6fr24hc-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=OK)
 for <linux-rpi-kernel@lists.infradead.org>; Wed, 20 Nov 2019 14:11:48 +0000
Received: by mail-wr1-f69.google.com with SMTP id f8so21209421wrq.6
 for <linux-rpi-kernel@lists.infradead.org>;
 Wed, 20 Nov 2019 06:11:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=raspberrypi.org; s=google;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=/at8uXIrARqtgojJ1uqk2uttbAL7Vve/nUl5o5grkME=;
 b=UdB1lz8im6SBGQpcvQzeAhTAlmwVFuGiMZKvwLQx3xcB1KmaMmmhO5EczwU/6YUQyo
 l6VxSMUHLWSXfrlHjEBD8zaSxCimdN3I1/y2HuD3DR8aVtatPRGx4Tfuuwyx+o8KgezN
 wRH0LQXLZvXSu2hhXNc4RHcLjPygwY2ju9OW2Ppqm9Y2z5lbv4/SL6rhPKRCZ0vTJlnB
 6Ipfw41lIejaJ5MR/E8Vrtrqab5N3vNKa97FFUnZ9Wtvc/aEJCM8L9IO1N0ue29BMLgr
 TIBOY6N2LhXvEXLaKglqQa1k5UqK3JHGFVTe2RR+HhN1PoIj3HYMk7//t4+deyvr8h+x
 6PBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=/at8uXIrARqtgojJ1uqk2uttbAL7Vve/nUl5o5grkME=;
 b=ZRBow5lrGA6B7tyyW23mM2jVvCXjMwMqSO1bXGrOvArVkCC6nsay05sR/I2HsjT3uU
 5flsvP6WbVZ/yo9JQL+t2x8RnrzWKyndDamsNM46Qm6iTKQvMTaxJWekNtNOWLKZIUxI
 8IDUXY0um+ghZfj439AMlPZAAM6RkVkYuoUUYPMVFb0luwm6uZ+MVW4pdi8VG7K3Bv2Y
 qU7a+Cvfaen2eTJKatbML6Q4uhWEjjocBs9rL3DMtTAx78yL4Pr6GzkPQZkza9vqbtFs
 2MR4JwpB5WJ1T3PZXn+orZ+qohIdHqNl1+pWmBVyI+ajpuLDu2eXZq93/ibZg+y5LElJ
 RtnQ==
X-Gm-Message-State: APjAAAVDu0yPOLQn7xp/XI096px4fZOf6OVc8Oj0aqPownt2qysH1fOi
 WxV9hrgOStnTLEu3duwKpJ5cZYPUd4r1Uckc4gZfAv+GcUD55WNhBIVZhyh4L9C3fdRT1v1/ug1
 BDp6VnO1q8iD7ZxRg2amhkgaF1noRkCvH/OA=
X-Received: by 2002:adf:9f52:: with SMTP id f18mr3505260wrg.51.1574259107296; 
 Wed, 20 Nov 2019 06:11:47 -0800 (PST)
X-Google-Smtp-Source: APXvYqxZRI7Eod4HiL1Kayr9EEsJm+aehAb4aIL5/d8hMf6YjOsGz3IbTUtcXBU9l53Ogr+zvywRXQ==
X-Received: by 2002:adf:9f52:: with SMTP id f18mr3505217wrg.51.1574259106978; 
 Wed, 20 Nov 2019 06:11:46 -0800 (PST)
Received: from ?IPv6:2a00:1098:3142:14:d54d:f6e0:3aef:f94?
 ([2a00:1098:3142:14:d54d:f6e0:3aef:f94])
 by smtp.gmail.com with ESMTPSA id 19sm35289172wrc.47.2019.11.20.06.11.45
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 20 Nov 2019 06:11:46 -0800 (PST)
Subject: Re: BCM2835 maintainership
To: Stefan Wahren <wahrenst@gmx.net>, linux-kernel@vger.kernel.org,
 linux-rpi-kernel@lists.infradead.org
References: <68580738-4ecf-3bb7-5720-6e5b6dafcfeb@gmx.net>
From: Phil Elwell <phil@raspberrypi.org>
Message-ID: <913cdc73-4b4e-5ea7-80c6-f32d0340f37c@raspberrypi.org>
Date: Wed, 20 Nov 2019 14:11:46 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <68580738-4ecf-3bb7-5720-6e5b6dafcfeb@gmx.net>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-11-20_04:2019-11-15,2019-11-20 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_061153_098708_E42BCC54 
X-CRM114-Status: GOOD (  13.75  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.211 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

Hi Stefan,

On 20/11/2019 11:38, Stefan Wahren wrote:
> Hello,
> 
> i need to announce that i step back as BCM2835 maintainer with the end
> of this year. Maintainership was a fun ride, but at the end i noticed
> that it needed more time for doing it properly than my available spare time.
> 
> Nicolas Saenz Julienne is pleased be my successor and i wish him all the
> best on his way.
> 
> Finally i want to thank all the countless contributors and maintainers
> for helping to integrate the Raspberry Pi into the mainline Kernel.

I'd like to take this opportunity to thank you for being such a champion 
of BCM2835+ and Raspberry Pi. It must have felt like a thankless task at 
times, but you leave the upstream Pi support in a much better state than 
when you started.

Welcome Nicolas - you've been contributing to the mainline kernel almost 
as long as I've been at Raspberry Pi, and you're no stranger to the Pi 
repos on GitHub. I look forward to working with you further.

Phil

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
