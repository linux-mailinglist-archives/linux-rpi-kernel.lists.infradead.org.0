Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 653471828FA
	for <lists+linux-rpi-kernel@lfdr.de>; Thu, 12 Mar 2020 07:28:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Em486tNIMyyMT5Vv1Xd3+LoyGTuD/WE3mjKPfuqsGzg=; b=Up65JoPX8GCq5c
	20E15pR8tAjPqtO1SM8K3EQY71dBR4jZO5cZXX+eSljvxWyMTzuvLunWei2rQhGBf42VCcXOg+RJK
	zdLjsl7MDlD/AeDP9H788t7W8435+Vp5tMxXFr93HCyOzT47Iqd/mLs723OlrgN8WwnCXAUEDfywG
	rXZdgN9cgh++Ht7y8bLOjt8iaaF6ttFBcLsuCdbCeDhAJHoHgiQVJIYGhJ9s8T7cHZ5seIKLNY7tz
	EHvaLZ6HxhdZicmmQBnYcCd1BZ3QppsWBpP7vQks2GqMI4MTZua/ZhQ2wu4909GE4Xlab7UzqzWHR
	HJKixtcjOU5LOhPawNWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCHKB-0003CJ-Dx; Thu, 12 Mar 2020 06:28:07 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCHK7-00035N-Iu
 for linux-rpi-kernel@lists.infradead.org; Thu, 12 Mar 2020 06:28:05 +0000
Received: from [192.168.1.183] ([37.4.249.171]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MQgtC-1j0dWo1Tza-00Nj1g; Thu, 12 Mar 2020 07:27:52 +0100
Subject: Re: 5.6.0-rc5 fails to boot (MMC/SDHCI related?)
To: Lucas Nussbaum <lucas@debian.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
References: <20200310223403.GA31851@xanadu.blop.info>
 <e3df2e1c87997799babafcd17676b7473d3f5154.camel@suse.de>
 <20200311120724.GA30432@xanadu.blop.info>
 <9fd81af85cb60df8d74da4f0c8b9d2eb435b8c49.camel@suse.de>
 <20200311220404.GA4112@xanadu.blop.info>
From: Stefan Wahren <stefan.wahren@i2se.com>
Openpgp: preference=signencrypt
Autocrypt: addr=stefan.wahren@i2se.com; keydata=
 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 AQ==
Message-ID: <1f1d4276-deeb-d9f4-f3f0-5200d27d7d90@i2se.com>
Date: Thu, 12 Mar 2020 07:27:51 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200311220404.GA4112@xanadu.blop.info>
Content-Language: en-US
X-Provags-ID: V03:K1:TxXB1bF6JF1d9QwlC4zKucTMHR2OUwpOehZQnj7slURhF/JO6Gd
 gWWufaikveuxTz5zB4izyvB3dKmvnkePEeiChDpjmVTsXQO85iEsL0/OSpVkoFz9tq2YC0/
 vXbOP10/fRdSlM+crd2VoNyIIpbWR7+7Hy3AAaIq2zX5DLRrtb5Rajdh5XM2/3n8rcwe1su
 z5Sk10blsounmLDEF23MA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:7pDwUjpZJAg=:X/9GINPmN2LKzwGx6GGexI
 tYgJO66CrCXQXiZufqwreNNJy6XNM9DzIZA0crabyLPlBPG2o95Vc+xnbpOB9XcOsraSQSnFt
 eWiql+er49gH2PpQDO2ryOwpnUph2mpxfmQMhqMy2y6IOoOLbIXP2aTG7PvamVFB/J67Q/O5K
 8N29jWSy6z4ETMFbKUIV5+AhJ3f0u8sIILEOlq3kCDI3FPo6ZUGKUo22ueqtayJR0apfTQJXj
 1C0Y6PUbrNv/c14JPuJpmSlvt9gPsQt1GDFT4sGIWsmMgRyBvKfkRNbqN2n9hK3uEnCrwZU8f
 xRvfaGchsETwd+Sy5uuwcg2EEIoWLRcU3cpRIvzwQUNv10TVsbjh/1qnY+oCCu7SctV0VTtY0
 NtHUZKC8v/VvFQ8vjJQ7ssyLMHbLappBcQRUmEXsgRHwL1ZVfwN3LyI3N8Nv5EYiq85FTZAPo
 DEfdO14OsUeYx7AmYSWhLX+hkPn4v4H9lCMoFZvwO2P63p5nKKBraRqGwbNOQLgR25NDqOLVo
 Z48yxt+gd4jrZFi3hAnFhRjVMt0W9NDlcywd6seeSj9SRZJfPJtTAzhq6fHu8MkZmwr426Suw
 p6g7AWi41exBy5HkmSnXUz4Yqp/BzPIpeVUSjtVpAKQ5/V5pL9x5Z1fzuAGsyiChPnJ6+Rmb3
 QIUdDpofOlhIG2OFILz2KYoUYU09WkT1mQ9Rof7/W87RS3DJeIU6bIC0Yo/UoNi2zhDyJV5++
 1FlzMJZwckBvPp+AoHPcP1Cns6Rp+lDNS69k7e/aSx434ZzJPbpHbiIYkcC/TKFCrHHJX87nc
 D4AVOcX6TdUpPcGEqX4AAxDGNngPZxiyiR1IQ+2ya0tsi9Pa8rWL7fKxYMTBU/nSr0AsPZW
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_232803_930462_BE130D08 
X-CRM114-Status: GOOD (  16.32  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

Hi Lucas,

Am 11.03.20 um 23:04 schrieb Lucas Nussbaum:
> On 11/03/20 at 13:21 +0100, Nicolas Saenz Julienne wrote:
>> On Wed, 2020-03-11 at 13:07 +0100, Lucas Nussbaum wrote:
>>> Is there a system image somewhere using vanilla versions for u-boot and
>>> the kernel I could compare with? (it sounds like it would be a better
>>> idea than to compare with Ubuntu's).
>> I suggest using openSUSE's tumbleweed as a starting point for kernel/u-boot
>> AFAIK it's the one around that really tracks upstream development and tests it
>> (TBH I haven't checked what arch or Gentoo are doing). That said, we use UEFI
>> for booting, which might not be what you're looking for. In that regard I
>> suggest checking out ARM's EBBR, https://arm-software.github.io/ebbr/.
> Thanks for all the help.
>
> At this point:
>
> I can boot using openSUSE firmware->u-boot->grub trick (which is also
> described in https://www.suse.com/media/article/UEFI_on_Top_of_U-Boot.pdf, which is a nice read)
>
> I can also boot using U-boot, both using openSUSE device tree and
> overlays, and using the kernel's device tree.
>
> I noticed that when booting with the kernel's DT, the serial console is
> ttyS1, not ttyS0. Is that expected?

yes this is expected with the Mainline kernel. The Raspberry Pi Tree has
a modification about that.

Unfortunately this is one of the many slight differences.

Regards
Stefan

>
> Lucas
>
> _______________________________________________
> linux-rpi-kernel mailing list
> linux-rpi-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
