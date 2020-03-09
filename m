Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31EC017E36D
	for <lists+linux-rpi-kernel@lfdr.de>; Mon,  9 Mar 2020 16:21:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:To:From:
	Subject:Date:In-Reply-To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=yMHH3s8HNN48lbPE69h/2Pi+DZ45tZTplb3bQe/IkYg=; b=QXE9Jgf1Dd4qT+
	Je9oMrLRVMH6MH5SB2YWZFmTpDH0VcyMKP6MR/5vhT2whvEDYMmBLR+KRrCXmNtDGP6fRwJIktNQ7
	/USLp4zogPAHie9cUz+7x2Vwu9OE/e5ssWma2k0tlXncB/8nE/brm9XcaVJwtThAlgZ3tYXo28GuL
	ET3mXmWArfVeEaBALav53RqkJYO+itC0tZY77iUPE9FHw9K0t9sEkEqV+HxVvD8veRKm8oFYp1bON
	aSerNEdmz11tMrFwoDlTzWxT1Cb8h13gKJXcd7NWkCL41Q7KybR4VegJmvc+C0WtXD6x9OdLT9ATM
	4l/5yVpnAbgJmgIDydNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBKDJ-0003lk-Pl; Mon, 09 Mar 2020 15:21:05 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBKD8-0003dl-44; Mon, 09 Mar 2020 15:20:55 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 0FE2AAD2B;
 Mon,  9 Mar 2020 15:20:52 +0000 (UTC)
In-Reply-To: <20200304132437.20164-1-nsaenzjulienne@suse.de>
Date: Mon, 09 Mar 2020 16:20:33 +0100
Subject: Re: [PATCH v2] ARM: dts: bcm2711: Move emmc2 into its own bus
From: "Nicolas Saenz Julienne" <nsaenzjulienne@suse.de>
To: "Nicolas Saenz Julienne" <nsaenzjulienne@suse.de>, "Rob Herring"
 <robh+dt@kernel.org>
Message-Id: <C16EMMYP9HNH.163772OHL9QL4@linux-9qgx>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_082054_308891_E8FD1EF6 
X-CRM114-Status: UNSURE (   7.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, phil@raspberrypi.org,
 linux-kernel@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

On Wed Mar 4, 2020 at 3:24 PM PST, Nicolas Saenz Julienne wrote:
> Depending on bcm2711's revision its emmc2 controller might have
> different DMA constraints. Raspberry Pi 4's firmware will take care of
> updating those, but only if a certain alias is found in the device tree.
> So, move emmc2 into its own bus, so as not to pollute other devices with
> dma-ranges changes and create the emmc2bus alias.
>
> Based in Phil ELwell's downstream implementation.
>
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> ---

Applied to for-next

Regards,
Nicolas

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
