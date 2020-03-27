Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 707B3196056
	for <lists+linux-rpi-kernel@lfdr.de>; Fri, 27 Mar 2020 22:17:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aGyALiUAc2k5WkxuYA2GHzjiglVtemmgqKhRW1H4+L8=; b=NQIepY5NwhKaTp
	p0PxsdVb3tnTneQIYxhPYcZgOrpfYCikNHdO/upiqP6MsfiUu9PpYH4Bbbq+bHzzOh+wsUoZC+Y22
	HgzO3HgLoKGkJxMkIvO7tYOhj19Y436EpgNWYecHPq8/+pvRn68Xs8up9SBMa01VA3+PPCSag7oUT
	49paBNEFlG9yg+d/yToWY+LbNyLn2W678bbZXxWV1KBJZ+mwJUA63jXfiColt3WBvAqCPSQmMr6EI
	+Dld02R2OmEDLevdglrSelisRrdPB0VbJZ1JA9pbeYmKCMBfdLg2E0TD8Cq3ZYdxeQ9MIM69NoCwo
	icogJ35BdKjBzUw6Mwtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHwMG-0003Oy-3l; Fri, 27 Mar 2020 21:17:40 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHwLG-0002O6-9D; Fri, 27 Mar 2020 21:16:40 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 086C2AC53;
 Fri, 27 Mar 2020 21:16:37 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: [GIT PULL 3/3] bcm2835-defconfig-next-2020-03-27
Date: Fri, 27 Mar 2020 22:16:32 +0100
Message-Id: <20200327211632.32346-3-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200327211632.32346-1-nsaenzjulienne@suse.de>
References: <20200327211632.32346-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_141638_463140_F6291B40 
X-CRM114-Status: UNSURE (   9.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 linux-kernel@vger.kernel.org, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

Hi Florian,

The following changes since commit 8068b7b63583764b46416a62856e42fb1f954ab6:

  Merge tag 'tags/bcm2835-defconfig-next-2020-03-09' into defconfig/next (2020-03-10 11:13:21 -0700)

are available in the Git repository at:

  ssh://git@gitolite.kernel.org/pub/scm/linux/kernel/git/nsaenz/linux-rpi.git tags/bcm2835-defconfig-next-2020-03-27

for you to fetch changes up to f06f924a65fb3991614fb23a783d4fef9c8d14ea:

  ARM: bcm2835_defconfig: Enable fixed-regulator (2020-03-27 21:27:47 +0100)

----------------------------------------------------------------
Enables fixed regulator in bcm2835_defconfig

----------------------------------------------------------------
Nicolas Saenz Julienne (1):
      ARM: bcm2835_defconfig: Enable fixed-regulator

 arch/arm/configs/bcm2835_defconfig | 1 +
 1 file changed, 1 insertion(+)

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
