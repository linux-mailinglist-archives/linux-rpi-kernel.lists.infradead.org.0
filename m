Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9641C1E849F
	for <lists+linux-rpi-kernel@lfdr.de>; Fri, 29 May 2020 19:19:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Subject:
	References:In-Reply-To:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EbrTIB0MmUPFZcixQSiHrhE9Eub+0ncovB9fW1woi+s=; b=cdZ0cr099ppoOs
	QjZjkbwgZMNXI2LFdutl1w2/0fg20kqJja8AWS/SueglUeOGWe/pVBbWI6luG0FQatSISK+wbUh1m
	aTt6CRd6c3pycqwR8XVNUXXQ8F8DhDCL24cuwpYzOQd82LVxQD9Rsr0bL9i35rgyRvvvlvUtq56xr
	NYN5S/iLJnaUfHDU5OKyYj0iF7Xyv+Mzr2cJPAlXRudZF2sqawXQxNcDLZjQgMLw10CDYe5Ps8Yc9
	BDvusbus10TnXLhf2JagbnNDr+a8go4slRmaiLVRVZUYTcb0TbfsWle6TGBMrG2Z/BL8UTTiLjzJn
	m9eTIHmby++MLyb8ZOhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeif1-0008Gn-Vo; Fri, 29 May 2020 17:19:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeiel-00086L-F8; Fri, 29 May 2020 17:18:56 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EFB852074D;
 Fri, 29 May 2020 17:18:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590772730;
 bh=a5S1gx+JJjYPO8/mi+Gcgzo3QS58fT7hT71d61WRYqY=;
 h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
 b=fr3b99EKpWX6dNiBPw7VavMlT7GriqwmdJIPGhfIMPclSFt3svBQ+4tI6fWQ90ct2
 ux78Dcs4U0fu896v258Aup5J1T495R63lJH5K7WGmMOnz/c1jBJ+UruRGE6+O91nAG
 uKEGDpzO80C/Q23LkPLZ3VSJqY94VGd97iPWWdME=
Date: Fri, 29 May 2020 18:18:47 +0100
From: Mark Brown <broonie@kernel.org>
To: linux-kernel@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>
In-Reply-To: <20200528190605.24850-1-f.fainelli@gmail.com>
References: <20200528190605.24850-1-f.fainelli@gmail.com>
Subject: Re: [PATCH] spi: bcm2835: Implement shutdown callback
Message-Id: <159077271266.17043.15897964625717364519.b4-ty@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_101855_524245_52D1F687 
X-CRM114-Status: UNSURE (   9.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Scott Branden <sbranden@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 "open list:SPI SUBSYSTEM" <linux-spi@vger.kernel.org>,
 "maintainer:BROADCOM BCM281XX/BCM11XXX/BCM216XX ARM ARCHITE..."
 <bcm-kernel-feedback-list@broadcom.com>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

On Thu, 28 May 2020 12:06:05 -0700, Florian Fainelli wrote:
> Make sure we clear the FIFOs, stop the block, disable the clock and
> release the DMA channel.

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-next

Thanks!

[1/1] spi: bcm2835: Implement shutdown callback
      commit: 118eb0e52eb74b899053a0f46dfe7e178788d23b

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent to Linus during
the next merge window (or sooner if it is a bug fix), however if
problems are discovered then the patch may be dropped or reverted.

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

Thanks,
Mark

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
