Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5116B1DBAFB
	for <lists+linux-rpi-kernel@lfdr.de>; Wed, 20 May 2020 19:17:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Subject:
	References:In-Reply-To:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ch7mciJrcmSUWfV+jakFla+Tjjn8I2/FKuxRL29+1c0=; b=q4H4Vwq98xZ8Yt
	Vl2PIUCPF37xU8RibB5y4p5y6ZQCB1CumLjq5k1BoytcbhSvDRBMSfrtfVw6w10HOqT+hvzInchZf
	Ddg3l1sCxdjGe6lLppm1eaUBoTTM6ViDQ+WlLNuHWfl9znX6tWCREuOS/Yow9tadd//7YCkNR1D81
	HXNFuLr6kXKRA9r0tovPF//PXbSJvvn6/63QYmx/TWhxn0rslCkFBDTAsNSdVSRZ30cnkT4lUhG0n
	b5n1Kw8PZOT9mFEEGAGor0RgJbdrYrVhd+9/br+HhsldNpgWpwGorDhxLACmWLbOUgjuPXHmsxxaO
	iZ3b5gCa5leDEOsp/qaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbSLc-0005Qn-BT; Wed, 20 May 2020 17:17:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbSLY-0005Jf-Mo
 for linux-rpi-kernel@lists.infradead.org; Wed, 20 May 2020 17:17:38 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 416B8206B6;
 Wed, 20 May 2020 17:17:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589995055;
 bh=xltVI1+pEmM6zj2tzZiSZnN117AjeYjfwjSrkN5huHg=;
 h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
 b=VkwZD3r0X6BGTzKnlUlwQOmtTp0aMzo3WDTyACwJkV3UdiA043Qp3ZQY/yqR04pj4
 jBbNO4LyAotapaxo4GWUK+ajtn3ICZ3QwZ4gPTXuBzYAaU+ao4J3nXhc4mKrlqTRH9
 dgY6tCbZsXzoRYf6yRBKFlR5W61xwtpSB6PD62zc=
Date: Wed, 20 May 2020 18:17:33 +0100
From: Mark Brown <broonie@kernel.org>
To: Lukas Wunner <lukas@wunner.de>
In-Reply-To: <cover.1589557526.git.lukas@wunner.de>
References: <cover.1589557526.git.lukas@wunner.de>
Subject: Re: [PATCH 0/5] Raspberry Pi SPI unbind fixes
Message-Id: <158999505312.5069.2701114941516266440.b4-ty@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_101736_789581_B87B3F4B 
X-CRM114-Status: GOOD (  10.22  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Linus Walleij <linus.walleij@linaro.org>, Jingoo Han <jg1.han@samsung.com>,
 linux-spi@vger.kernel.org, linux-rpi-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

On Fri, 15 May 2020 17:58:00 +0200, Lukas Wunner wrote:
> This series fixes ordering issues occurring on unbind of the
> Raspberry Pi SPI drivers:
> 
> Turns out devm_spi_register_controller() is prone to
> incorrect use and dozens of drivers have gotten it wrong.
> I'm only documenting this gotcha here and fixing it in the
> Raspberry Pi drivers.  Fixing the rest is for another day.
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-next

Thanks!

[1/4] spi: Fix controller unregister order
      commit: 84855678add8aba927faf76bc2f130a40f94b6f7
[2/4] spi: bcm2835: Fix controller unregister order
      commit: 9dd277ff92d06f6aa95b39936ad83981d781f49b
[3/4] spi: bcm2835aux: Fix controller unregister order
      commit: b9dd3f6d417258ad0beeb292a1bc74200149f15d
[4/4] spi: bcm2835: Tear down DMA before turning off SPI controller
      (no commit info)

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
