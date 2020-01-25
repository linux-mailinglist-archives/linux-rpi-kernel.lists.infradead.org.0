Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2FB51495FE
	for <lists+linux-rpi-kernel@lfdr.de>; Sat, 25 Jan 2020 15:04:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h6fiIAE2uZcy0wLuqDuShqUkFvGxBlYGKUmbLDpM+MQ=; b=tYphoB/TSwRE1F
	paT3H8Nm/C/UzjDrFxwOytjvES0N+XL2MzqrXM4NM13tyxShZzfSn9L/+AfA6f1eUJfHvYqTeCjqH
	hlr+v5sobq2AuiarNQxEcr/m8Wez5mGXE7XsUFH011D0KvaGlPmBwL3ecqhOdhUQhqMnm+ssKWKIx
	eTQZ5CzqtCV92l22oITxbv4589JtSMiUiBz3bIbY6Ob5Y8ePHMAGolYPxT/81fpPlgf8L50MDsB1m
	x6FGFd6mH9eWxH8TyZDVwIaz4jv3nxcsIrQn1jstiUOqc39cvFahhsKv9xQkAQ5crwY+YGnK+7nyj
	twEJHus52G+JLBNWy6Cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ivM32-0004XH-5b; Sat, 25 Jan 2020 14:04:28 +0000
Received: from valentin-vidic.from.hr ([2001:470:1f0b:3b7::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivM2y-0004Wv-AE
 for linux-rpi-kernel@lists.infradead.org; Sat, 25 Jan 2020 14:04:25 +0000
X-Virus-Scanned: Debian amavisd-new at valentin-vidic.from.hr
Received: by valentin-vidic.from.hr (Postfix, from userid 1000)
 id DB9383EA; Sat, 25 Jan 2020 15:04:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=valentin-vidic.from.hr; s=2017; t=1579961061;
 bh=FrBzqS8eiienelASeW3XgxvsSBXSDhcRJOiku4JU/YI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=H6ehGnNBAeBssOebeNfp91frxuPvVieNusS3y8/tdd/s8e8mXqjIsHz/JRHc8u+bj
 N9s2keJpTHmxlOCHPj1OQS4abKokPsHrX3iLjQz37vKHoZfktt1nitFAYDxQ4MwO9X
 URM+7hO0pYROl/hQxkWuq5PX+V3kSrc1GOiGCsbmmQGxZ7GwXTWi4UHRlUlgclBZWm
 i6vUMh2UwbVtxVNeoff2naSNApN700bDchkWZEXbeSiWCqIf/B/2s5XXz2ajvVkIr6
 ujJxs7B/lfbzfTM6y0w5KGeF7R3x9xfA7R20g7AMwLqOspv/0vLSD/Uy4syiuRI8lt
 afcxA1bcr5ydg==
Date: Sat, 25 Jan 2020 15:04:21 +0100
From: Valentin =?utf-8?B?VmlkacSH?= <vvidic@valentin-vidic.from.hr>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: RPi B+ USB support
Message-ID: <20200125140421.GI3671@valentin-vidic.from.hr>
References: <20200125130737.GG3671@valentin-vidic.from.hr>
 <C04WEWWXBXRL.28WZVXZ9OKU4B@linux-9qgx>
 <20200125135404.GH3671@valentin-vidic.from.hr>
 <41e082fa921653f57de2809630bedbb339fe5111.camel@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <41e082fa921653f57de2809630bedbb339fe5111.camel@suse.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200125_060424_675456_AAE3746E 
X-CRM114-Status: UNSURE (   5.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

On Sat, Jan 25, 2020 at 02:56:36PM +0100, Nicolas Saenz Julienne wrote:
> Yes, it's possible, did you also update the relevant device-tree file on your
> boot partition?

Yes, I used dtbs/bcm2835-rpi-b.dtb from the same kernelci page.

-- 
Valentin

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
