Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B31981FCC02
	for <lists+linux-rpi-kernel@lfdr.de>; Wed, 17 Jun 2020 13:15:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9LIHjEyTuvn79DK/g4pTHT+FA7CvEgHmMmhdrAcpF/0=; b=NyLO/+QWlt4yEJ
	pwmLF/FBMxjtNFFVTWAjNKufkH0pv5Xo4C2u0x87VRQXi5nuuALx7C0zdmSTXVhjXhR6GIR/1JPaD
	Ns99U9J4ha4k/AYUqR5Q1x5ByUQoKbx7rFsXzOchW/wZjF6OmzqUeJ6x27k1tlxURxmtGLNhPitqH
	1HpITtSGQLTaqnEZdOyD4lz6OglkrxDJneD/zJwzdYv5H941H6V+cs02N5e3o8Tr6Ad9rsxvOMBT0
	t1ISNCZEg/UZZe9+1COKaJLVdGqS0SgYA2gIk2H0rY7AAI9uFTVep7tX6O6emtB82R0Wz+RPltnYV
	Bvqu3JSO8QImFKtQm+Kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlW2c-0004WX-Cv; Wed, 17 Jun 2020 11:15:38 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlW2P-0004Mb-Dh; Wed, 17 Jun 2020 11:15:27 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id DB231AD2A;
 Wed, 17 Jun 2020 11:15:27 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Florian Fainelli <f.fainelli@gmail.com>,
	linux-kernel@vger.kernel.org
Subject: [GIT PULL 1/1] bcm2835-drivers-fixes-2020-0-17
Date: Wed, 17 Jun 2020 13:14:54 +0200
Message-Id: <20200617111453.23345-1-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_041526_296202_8A9D37B0 
X-CRM114-Status: UNSURE (   9.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-arm-kernel@lists.infradead.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

Hi Florian,

The following changes since commit b3a9e3b9622ae10064826dccb4f7a52bd88c7407:

  Linux 5.8-rc1 (2020-06-14 12:45:04 -0700)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/nsaenz/linux-rpi.git tags/bcm2835-drivers-fixes-2020-0-17

for you to fetch changes up to da785a87787c97823d12107a4f0ec7adcc2a78d9:

  ARM: bcm2835: Fix integer overflow in rpi_firmware_print_firmware_revision() (2020-06-17 12:51:45 +0200)

----------------------------------------------------------------
Fixes raspberry pi firmware version output

----------------------------------------------------------------
Andy Shevchenko (1):
      ARM: bcm2835: Fix integer overflow in rpi_firmware_print_firmware_revision()

 drivers/firmware/raspberrypi.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
