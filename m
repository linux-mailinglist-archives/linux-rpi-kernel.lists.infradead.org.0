Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1F371D4D93
	for <lists+linux-rpi-kernel@lfdr.de>; Fri, 15 May 2020 14:19:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hd5ZpcTCqQA0NdU2athQKwJ3YSm4WoP2HiQ2IJl4YtA=; b=KGTQCMOn40pkoK
	EfZfNOQGFwlkhziloKH8NpiIMT3S3zi7xcD6PXXBRjdQEHXRRxJ9P4bcThR3VkTgMpPwtAtuMCaeV
	CYklMCvFje8Q3rfDS+xXMMhs7qwWLSbdCT54kwmH+6d1nuSl9UEoI+v/vuCPkeS1nC2tbNtAmxHcJ
	VzpZyiqSoiWbMCdV6ZCPNSRLQ3SscRcqtTKIPr/VFatTjigI6ilNMK3+kd8j7GzAifuY7QrS+I9w9
	dKPovf0PKD82vjEfraaV4gcvc+LYFX91a5buggSekBdI36HEZa7Iuo0vbOL135Ie7x9zZGpzSNQlC
	GiByolIpImtFYpdnP78w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZZJ2-00033L-Ti; Fri, 15 May 2020 12:19:12 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZZIx-00032j-A7
 for linux-rpi-kernel@lists.infradead.org; Fri, 15 May 2020 12:19:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1589545143;
 bh=ona6/2LvQ5W8AZF227rWo0GSj1HLDSr9PmVQhWu8sNQ=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=lEmKF41X0HsVe0b6GdXJxmdug2IMscHMJd/hNiwH0exC+spIBPkF9orKB3Uatb00J
 89HA3S6opY+rHXp9x0jkCkYKIaLdKxK2V4+5JH+Ny2zVmEwSY4aIGDssVY9F8Csd+N
 p5nbK3EKZMrccqhcNk9tmKqVy7zUTE1hywx4/H+U=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.178.51] ([78.43.154.122]) by mail.gmx.com (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MNbp3-1jkNDg0vxj-00P6y5; Fri, 15
 May 2020 14:19:03 +0200
Subject: Re: [PATCH] bcm2835: fix missing variable initialisation
To: Dave Stevenson <dave.stevenson@raspberrypi.com>
References: <1589541929-12098-1-git-send-email-LinoSanfilippo@gmx.de>
 <20200515114732.fbiriwdppozvg2d7@wunner.de>
 <c9d65552-ebff-ecb2-2042-ef214088ee9e@gmx.de>
 <CAPY8ntDaGADVRHhyDwZC8DVjzQn0DhN+0803p9k4+BO=LFtODQ@mail.gmail.com>
From: Lino Sanfilippo <LinoSanfilippo@gmx.de>
Message-ID: <0530f845-4f3f-b1c4-5e9f-8b26456eb539@gmx.de>
Date: Fri, 15 May 2020 14:19:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <CAPY8ntDaGADVRHhyDwZC8DVjzQn0DhN+0803p9k4+BO=LFtODQ@mail.gmail.com>
Content-Language: en-US
X-Provags-ID: V03:K1:ppB2KpbeGcxgS28Mlplo+jVwAwTCWO+0F7u/vdbpM+gQYghHNge
 AqlPjR8eT9ZgyD3YHD5UhtmpvKal+HH9Y20wi/c9QMmXAQB0Ds+2FDZJT/Uep086zPDF1nO
 kjtI5mD+EPMNG44eyX8LxifNWF0xGriCaN3gXpCj+FR/DH83YzzBjQxzjuYpIsUsSJiA048
 hGwxFj3CAMy1EVuQygdCQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:ItjVOQyCwU0=:QUxfpxC5/GOnvmlAiYm6V8
 5ATL/AGc5bLeZQzEpD2MwQ8kL9pZZmzf5Uwhd6XRdm73vQx8uRuLFXk8YgRFa/Kx9Bv2x/UFR
 1reWe3wKsWhQF2Z4wjxBmwlCp3o4i9VTgp2sb404MZv+qWGevstxxv9TuuIsKK0H0ckrEcika
 YbVCIrU8vM0AWjIC3iPIHWDIGGcG38FoDdIHf+vorJWlk6fGnpRiBBSoGJ/b9hUJPLh1tLeJY
 0oGIZeyK81T2iU+f8By+fDaMH8FtjaKN3IgquSLsi0inmbpBuFgvPBGSuh2QFCmL//JR/eaWa
 6YBZq+Ud6Gp99UVyaVSzdkTKcgSuPhwfZyGB8osipi/z91wQSH41N+/NXHaQquA6to0D57b7q
 EG1tk2iUFhugUTot1RG0ZTzrdiSG3KIrOOfrlJClvygXjte0faKMwdVm/HzdbY1HmxHIM3HZJ
 J8CYIuaXLYeU2TqhnV5uFU5J0LQAeSXWGPqtVNoE436EFv6eO8k05UNrKtRz0HNGW+r1blMIf
 RRdL4rHzF9JL5lLTaTL+Fjq4uiD/ar398bzjvDE+46IPcS/jiVxOFmYeIenp8wPR8le5XbVHP
 6tu2mYHctf7RPaen4Kg18FHv9r2Do9sQLqCOmo2/xL9T2qg+f0QQ/OKqAkOlN3DvOZnjT6QiI
 dvF9PUj/RQjeNF8EyMmOQkKXUN640iQi+y9FSrJEpIJlpvdCV7nAlVvaw9QS6OUTIJsppY3f3
 jM087blLndi1aif2h3c8ac9CwWTzxPzbxNQ7c4y3TlUbIT0H6Hn2DznW+jEMWcVEFqE4o4I5C
 F0y6TV+e4fUUlOdLEm2srIlH3CkgcMLC2bB8jj0GfshjbkgJqyHYI874Xt1FrpXxs7VMJVVmE
 1Kot9gz0CZCKguf8FQixNIzR66WS7wDek7qkgYs/7tsGewcX2wFXIHaWpwPTPjaGdZUm4XonN
 dM1oPkMyP2HS/JL5SGXRTNuN+TcZkV6R25m1ufxK70D4lBdLK0fCdm+hxtMXgIIlhhmDH//k+
 /Njq3ILs2UNHx686v8u/fWuw2R4OVfRre7UAuBFegOAXZN+4sTOHG4dZWjPBfWQ6h4zhzKdIr
 UJdqfEgxMvN1lJDXae8nqjf5mvNgWv2ymjdiLa06DAJ0RFcM3KwSxEmSHSjClrJlU6EpXBL0Q
 +NvNrH3GKIVKlJWTNwkPXLfeQX6CRfsCWxsZzlA3rKKo4n2a5AuPpkMC6X0E95yuRCTTknHSO
 0p3FIHannFeUF/tQZ
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_051907_645539_7C852E58 
X-CRM114-Status: UNSURE (   8.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.15.15 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.15.15 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [linosanfilippo[at]gmx.de]
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
Cc: linux-rpi-kernel@lists.infradead.org,
 Dave Stevenson <dave.stevenson@raspberrypi.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org



Hi Dave,

>
> It's in the process of being reviewed and updated on the linux-media
> mailing list.
> https://patchwork.linuxtv.org/patch/63531/


>
> It's already fixed on the rpi-5.4.y branch.
> You are correct that rpi-4.19.y has the issue - PR welcome!
> https://github.com/raspberrypi/linux
>
>   Dave
>

ah ok, I was not aware of the fix in the rpi-5.4 branch.
Thank you for the clarification!

Regards,
Lino

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
