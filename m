Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F51215FE25
	for <lists+linux-rpi-kernel@lfdr.de>; Sat, 15 Feb 2020 12:42:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=td/F1gYXdiUFxd2iKPM+5nh0M/tYpeEjXNWk9WmrVBg=; b=QOKWRI2t+r2vTvm0mcWqivaCf
	6koym+sr22RKa+T93HoXHQiBspM0Kngj/QwuWx9tqbCZAm9p05JwDOrh5WmFnUs8JdTqFnMiUB2yA
	RQyXeOPF/AN9EMkG7fU+lhKvBVIoPmGACynDX6kYYAaT7ZXnMs+6Hnu7ukjc9RHyWAuZ8uNjCC22I
	6w4LlXP7TB38rCPVKa3Yrz01sWvSHvzsxtDhp8Y0oMnn7y849aGKQf93xn/XD2HQlV4HFVZndIMtx
	h7aFfuqoc8nz5fpctFgRixAFnWtvBjIwNEKMdTX+PnF1lqzU6HiNUMiKDINo8pHirJelomyKnMix2
	S9BQxI2AQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2vq0-0000CK-EG; Sat, 15 Feb 2020 11:42:20 +0000
Received: from smtpng1.m.smailru.net ([94.100.181.251])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2vpx-0000Bi-7a
 for linux-rpi-kernel@lists.infradead.org; Sat, 15 Feb 2020 11:42:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=orpaltech.com; s=mailru; 
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject;
 bh=baQwV0bwYKlqRlE9JJJCEGFQs6gn2OB3/2fXkrzfEsI=; 
 b=DQonXyJJ5R1Hreukqbw6gLRbRBcKhnSuONVswGZ8Jd99ewk27ISzJK9m633x5u0u7T/Tir5LsxUpL6FPEuopw8zTWKpuZVC+dNuDH/osOdijLB+Rd6AP/IeHA+kkrs3ZTStmYRFEO+WPGLNLg5Trllno/JnWlLePrYsqQxF+x2w=;
Received: by smtpng1.m.smailru.net with esmtpa (envelope-from
 <ssuloev@orpaltech.com>)
 id 1j2vpr-0004Gz-Kl; Sat, 15 Feb 2020 14:42:12 +0300
Subject: Re: bcm2835 SPI issue
To: Lukas Wunner <lukas@wunner.de>
References: <4172f542-71a8-0186-fe4c-29a8148b7844@orpaltech.com>
 <09f2d0fd-19bc-0884-2f78-b0143f3279ef@raspberrypi.com>
 <e51f3e59-0915-27b7-05a1-e1a2fb8c10d0@orpaltech.com>
 <cf8c2169-7987-5b82-1533-d9a34cd09b41@raspberrypi.com>
 <2b973c0c-08ec-8b6a-1a97-4d676fdb2dc6@orpaltech.com>
 <a878deeefca46e0b9cba601d8ac2a76e2470addc.camel@suse.de>
 <27617227-181c-9be4-8f28-b80fb08ea714@orpaltech.com>
 <20200215075439.ire4t43hdjr2c2qm@wunner.de>
From: Sergey Suloev <ssuloev@orpaltech.com>
Message-ID: <d522db93-08fd-5444-4e44-1d9f2aa8c2a4@orpaltech.com>
Date: Sat, 15 Feb 2020 14:42:10 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200215075439.ire4t43hdjr2c2qm@wunner.de>
Content-Language: en-US
Authentication-Results: smtpng1.m.smailru.net;
 auth=pass smtp.auth=ssuloev@orpaltech.com
 smtp.mailfrom=ssuloev@orpaltech.com
X-7564579A: 646B95376F6C166E
X-77F55803: 0A44E481635329DB0E1AA8A03B392317F65658A2B47C0803182E8BADE9E554165E8AE89331AB255EF688BCB05C26794D067AD130C63776EB43FC038A8A3B01723C455C7F039229F9B26260233B75A04C
X-7FA49CB5: 0D63561A33F958A50BB295F39D70A97415C1AFB125678A38D49D23DA4F9259428941B15DA834481FA18204E546F3947C86A7C529F68B8E5CF6B57BC7E64490618DEB871D839B7333395957E7521B51C2545D4CF71C94A83E9FA2833FD35BB23D27C277FBC8AE2E8B1BE95B8C87527B4BA471835C12D1D977C4224003CC836476C0CAF46E325F83A522CA9DD8327EE4930A3850AC1BE2E73589424AA0EF8DE9BAC4224003CC836476C0CAF46E325F83A50BF2EBBBDD9D6B0F05F538519369F3743B503F486389A921A5CC5B56E945C8DA
X-D57D3AED: Y8kq8+OzVoxvgW9Op3aR8Fxwo7H2ZNxGP5qz8aO2mjTJzjHGC4ogvVuzB3zfVUBtENeZ6b5av1fnCBE34JUDkaJinJwwHx5ysVv9/YfT9ue1i86nvLVpHQ==
X-Mailru-Sender: 689FA8AB762F73930799C7A3FA23A2705FBE5E9611996E7CA6A7E648BD526C95778B5FB1219D8779F6BCD4B1DE95BF653AE5922765F965CDF1D7D1B96E5495AE10FCEA6DFE3E0A150D4ABDE8C577C2ED
X-Mras: Ok
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200215_034217_464167_484AE5B8 
X-CRM114-Status: GOOD (  17.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [94.100.181.251 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Phil Elwell <phil@raspberrypi.com>, linux-rpi-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

On 2/15/20 10:54 AM, Lukas Wunner wrote:
> On Sat, Feb 15, 2020 at 02:37:35AM +0300, Sergey Suloev wrote:
>> On 2/14/20 11:50 AM, Nicolas Saenz Julienne wrote:
>>>>>>> On 13/02/2020 22:09, Sergey Suloev wrote:
>>>>>>>> I noticed that bcm2835  SPI driver  isn't functioning anymore in
>>>>>>>> kernels 5.5 - 5.6. I know this because it was used successfully
>>>>>>>> with previous versions (very latest v4.x and earlier v5.x).
>>>>>>>>
>>>>>>>> I am testing rpi3b and rpi3a+  and multiple SPI peripherals
>>>>>>>> (displays, wireless transceiver, etc) and none of them are working
>>>>>>>> anymore. Hardware connections stay the same as before so I don't
>>>>>>>> think this is a hardware issue.
> [...]
>>> first lets find our the last working version.
>> it works in 5.3
> Does it not work with v5.4?
no, it does not
> If so, there have been two major changes
> to drivers/spi/spi-bcm2835.c between v5.3 and v5.4:
>
> One is a change to how Chip Select is handled if no cs-gpios are specified
> in the DT.  That change was commit 3bd158c56a56.  You seem to be missing
> cs-gpios in the DT, so that commit would be an obvious candidate.
> Try reverting it and see if that fixes the issue.
>
> The other change that went into v5.4 was a speedup for simplex transfers
> autored by me and spans multiple commits.  I can't really imagine how
> that would break your setup.  SPI messages to your display are split
> and then transferred as smaller simplex messages.  Perhaps there's an
> issue with how split simplex messages are handled?
>
> Anyway, try reverting 3bd158c56a56 first or adding a cs-gpios property
> and let's go from there.
>
> Thanks,
>
> Lukas

reverting the driver back to 5.3 by a patch works well for my project.
I understand that the issue remains in the kernel source but I'm not an 
SPI expert and so I let you (or someone else) fix it.

Thank you,
Sergey


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
