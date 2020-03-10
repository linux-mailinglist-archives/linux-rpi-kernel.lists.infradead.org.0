Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B39401809E9
	for <lists+linux-rpi-kernel@lfdr.de>; Tue, 10 Mar 2020 22:07:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hggxU+OpIXix6t09LpPghvw+LH5gMPnRHfnDYyChvLo=; b=fcBwV3WFbX9EevYtRKmLj1cv/
	1Dy9weXNMzSJ9Qs6M//zJTJFiaf1sz2GICsfospegjDDIVMeIRWfsJUhO6rpuFZUr83xXEZ5ZUExJ
	5dZJpTBm/Y3MhRJOUbnTDhRzINkHcJB9ByMRnInWHEM7OYIpaxJUn4ktQkCb6oseB9H2u6UVaU6gZ
	MfA0iNSb70BgfILoTK3N2LQHDXoKpfjlqzQNdKgt57tfFAU3lqJxoP/qlpZ6l/lNPdV4a0soY4CoG
	Fy25yWjWAAb18TaVOjwvz/CmDgpYVPf02GgAMH6krue4SACcCy0rvcmuB6D69fx9EIWrflcs/B/vd
	FY+YpiOeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBm5e-0000WA-0C; Tue, 10 Mar 2020 21:07:02 +0000
Received: from smtp54.i.mail.ru ([217.69.128.34])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBm5Z-0000SK-AB
 for linux-rpi-kernel@lists.infradead.org; Tue, 10 Mar 2020 21:06:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=orpaltech.com; s=mailru; 
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject;
 bh=g3fnbLGS2o5JEEpK45enEpcp0VX7Yz3PLden/mXF6Cs=; 
 b=GLtmRZCaKcLcQ6AjyIFvcW6sNcS9Zp+dJGjcw8QXH3cnaDofgShRg5Eok6GgOJUu6d7Mr7H5YyeH9jsVwN5uBygaFyaJPzdZPWJPezXMjC8NbzohEngAbuUoLaEh/MFzxqh1PTBsPWLPGq8zD35e14nF5vOeO/cRZkE/20PMh2s=;
Received: by smtp54.i.mail.ru with esmtpa (envelope-from
 <ssuloev@orpaltech.com>)
 id 1jBm5S-0006Cj-8L; Wed, 11 Mar 2020 00:06:51 +0300
Subject: Re: bcm2835 SPI issue
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Lukas Wunner <lukas@wunner.de>
References: <4172f542-71a8-0186-fe4c-29a8148b7844@orpaltech.com>
 <09f2d0fd-19bc-0884-2f78-b0143f3279ef@raspberrypi.com>
 <e51f3e59-0915-27b7-05a1-e1a2fb8c10d0@orpaltech.com>
 <cf8c2169-7987-5b82-1533-d9a34cd09b41@raspberrypi.com>
 <2b973c0c-08ec-8b6a-1a97-4d676fdb2dc6@orpaltech.com>
 <a878deeefca46e0b9cba601d8ac2a76e2470addc.camel@suse.de>
 <27617227-181c-9be4-8f28-b80fb08ea714@orpaltech.com>
 <20200215075439.ire4t43hdjr2c2qm@wunner.de>
 <d522db93-08fd-5444-4e44-1d9f2aa8c2a4@orpaltech.com>
 <1e235d08de7ef783332e67cdbd34eafabb79078c.camel@suse.de>
From: Sergey Suloev <ssuloev@orpaltech.com>
Message-ID: <24985a28-9c7e-1ae3-89e5-0cbb7439e92d@orpaltech.com>
Date: Wed, 11 Mar 2020 00:06:48 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <1e235d08de7ef783332e67cdbd34eafabb79078c.camel@suse.de>
Content-Language: en-US
Authentication-Results: smtp54.i.mail.ru;
 auth=pass smtp.auth=ssuloev@orpaltech.com
 smtp.mailfrom=ssuloev@orpaltech.com
X-7564579A: 646B95376F6C166E
X-77F55803: 0A44E481635329DB0E1AA8A03B392317179C3E6C7981FFF2F94659E4BEF79E7123BE2F6A69CF2583556F68EC540A4532A400B3EEFA591716F72322122C496F3B6DFD674654ACB4528AA4DAF588D0DEC5
X-7FA49CB5: 0D63561A33F958A57964C76107A2E3BD84D71683ABD1804793B21C726BA21E318941B15DA834481FA18204E546F3947CED96AA85C75E140D117882F4460429724CE54428C33FAD30A8DF7F3B2552694A4A5EC4583E1CDF108941B15DA834481F8AA50765F79006375FFD5C25497261569FA2833FD35BB23DF004C906525384303BDABC7E18AA350CD8FC6C240DEA76428AA50765F7900637793013776D8011B0D81D268191BDAD3DBD4B6F7A4D31EC0B8E76B049FB1BA93ED81D268191BDAD3D78DA827A17800CE7E7AC37301263D49CEC76A7562686271EB110E265C3085EA235872C767BF85DA227C277FBC8AE2E8B779389CF6F126FEC75ECD9A6C639B01B4E70A05D1297E1BBC6867C52282FAC85D9B7C4F32B44FF57285124B2A10EEC6C00306258E7E6ABB4E4A6367B16DE6309
X-D57D3AED: Y8kq8+OzVoxvgW9Op3aR8Fxwo7H2ZNxGP5qz8aO2mjTJzjHGC4ogvVuzB3zfVUBtENeZ6b5av1fnCBE34JUDkaJinJwwHx5ysVv9/YfT9uf7dk7/7A5s4Q==
X-Mailru-Internal-Actual: A:0.98801997961154
X-Mailru-Sender: C5364AD02485212F08C1E15139291EE9A83E69E86AC5F4357442BB4CD9D59312069BFC61DABEEB110841D3AAAB1726C63DDE9B364B0DF289264D2CD8C2503E8C22A194DADEED8EEDCA01A23BA9CD1BE7ED14614B50AE0675
X-Mras: Ok
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_140657_553128_D974B4C9 
X-CRM114-Status: GOOD (  15.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.69.128.34 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

Hi, Nicolas,

On 3/10/20 3:55 PM, Nicolas Saenz Julienne wrote:
> Hi Sergey,
>
> On Sat, 2020-02-15 at 14:42 +0300, Sergey Suloev wrote:
>> On 2/15/20 10:54 AM, Lukas Wunner wrote:
>>> On Sat, Feb 15, 2020 at 02:37:35AM +0300, Sergey Suloev wrote:
>>>> On 2/14/20 11:50 AM, Nicolas Saenz Julienne wrote:
>>>>>>>>> On 13/02/2020 22:09, Sergey Suloev wrote:
>>>>>>>>>> I noticed that bcm2835  SPI driver  isn't functioning anymore
>>>>>>>>>> in
>>>>>>>>>> kernels 5.5 - 5.6. I know this because it was used
>>>>>>>>>> successfully
>>>>>>>>>> with previous versions (very latest v4.x and earlier v5.x).
>>>>>>>>>>
>>>>>>>>>> I am testing rpi3b and rpi3a+  and multiple SPI peripherals
>>>>>>>>>> (displays, wireless transceiver, etc) and none of them are
>>>>>>>>>> working
>>>>>>>>>> anymore. Hardware connections stay the same as before so I
>>>>>>>>>> don't
>>>>>>>>>> think this is a hardware issue.
>>> [...]
>>>>> first lets find our the last working version.
>>>> it works in 5.3
>>> Does it not work with v5.4?
>> no, it does not
>>> If so, there have been two major changes
>>> to drivers/spi/spi-bcm2835.c between v5.3 and v5.4:
>>>
>>> One is a change to how Chip Select is handled if no cs-gpios are specified
>>> in the DT.  That change was commit 3bd158c56a56.  You seem to be missing
>>> cs-gpios in the DT, so that commit would be an obvious candidate.
>>> Try reverting it and see if that fixes the issue.
>>>
>>> The other change that went into v5.4 was a speedup for simplex transfers
>>> autored by me and spans multiple commits.  I can't really imagine how
>>> that would break your setup.  SPI messages to your display are split
>>> and then transferred as smaller simplex messages.  Perhaps there's an
>>> issue with how split simplex messages are handled?
>>>
>>> Anyway, try reverting 3bd158c56a56 first or adding a cs-gpios property
>>> and let's go from there.
>>>
>>> Thanks,
>>>
>>> Lukas
>> reverting the driver back to 5.3 by a patch works well for my project.
>> I understand that the issue remains in the kernel source but I'm not an
>> SPI expert and so I let you (or someone else) fix it.
> could you confirm this patch fixes your issue:
>
> https://github.com/torvalds/linux/commit/138c9c32f090894614899eca15e0bb7279f59865
I am not using spidev driver. How this patch can help?
>
> Regards,
> Nicolas
>

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
