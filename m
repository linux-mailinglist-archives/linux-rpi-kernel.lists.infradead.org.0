Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F67C18BD6
	for <lists+linux-rpi-kernel@lfdr.de>; Thu,  9 May 2019 16:32:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GSL3Rtcd+t40IH023Fakpcf8eDFXRxpqFQFoYlwhI4o=; b=aZbOh56hHJcSv/
	yXxP0gXn4TeX5b+dJM67iPa2TodjBt4O/IAHz3GQSN8J/U77a+Dt7KOml9OP0Zu6p7IKARc/dLyyv
	6VolPWQl8FjO+xJaZ6RHV7C6QojdV+6AhmCT1UeN0gn2PU+OT7bcMNyy6AAMWBkU9Fo8RPETgU1rh
	KKe7YTxmts0mVXM57NsjsiOC/6TbJAhlAKvtfyRc56SEnhNJKRi/CnQG5wq93wTwGMzAVT7CRRWDc
	zHehlBZKQeFUNO/Lq43nOLB3V9/P8Qi2muRhQ/514XUrGkRrQG+SDX2L6dh3z8YPu+pC595aeGyvc
	WGeuVx50Sb268OeC1WmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOk5m-00067Z-IU; Thu, 09 May 2019 14:32:14 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOk5P-0005fu-QC; Thu, 09 May 2019 14:31:53 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id E498EABD4;
 Thu,  9 May 2019 14:31:49 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v3 0/4] staging: vchiq: use interruptible waits
Date: Thu,  9 May 2019 16:31:32 +0200
Message-Id: <20190509143137.31254-1-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_073151_996826_5B48BB0C 
X-CRM114-Status: GOOD (  13.27  )
X-Spam-Score: -1.6 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.1 URIBL_SBL_A Contains URL's A record listed in the Spamhaus SBL
 blocklist [URIs: lists.fedoraproject.org]
 0.6 URIBL_SBL Contains an URL's NS IP listed in the Spamhaus SBL
 blocklist [URIs: lists.fedoraproject.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-rpi-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-rpi-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rpi-kernel>, 
 <mailto:linux-rpi-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rpi-kernel/>
List-Post: <mailto:linux-rpi-kernel@lists.infradead.org>
List-Help: <mailto:linux-rpi-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel>, 
 <mailto:linux-rpi-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devel@driverdev.osuosl.org, dan.carpenter@oracle.com,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

Hi,
this series tries to address an issue that came up in Raspbian's kernel
tree [1] and upstream distros [2][3].

We adopted some changes that moved wait calls from a custom
implementation to the more standard killable family of functions. Users
complained that all the VCHIQ threads showed up in D state (which is the
expected behaviour).

The custom implementation we deleted tried to mimic the killable family
of functions, yet accepted more signals than the later; SIGKILL |
SIGINT | SIGQUIT | SIGTRAP | SIGSTOP | SIGCONT for the custom
implementation as opposed to plain old SIGKILL.

Raspbian maintainers decided roll back some of those changes and leave
the wait functions as interruptible. Hence creating some divergence
between both trees.

One could argue that not liking having the threads stuck in D state is
not really a software issue. It's more a cosmetic thing that can scare
people when they look at "uptime". On the other hand, if we are ever to
unstage this driver, we'd really need a proper justification for using
the killable family of functions. Which I think it's not really clear at
the moment.

As Raspbian's kernel has been working for a while with interruptible
waits I propose we follow through. If needed we can always go back to
killable. But at least we'll have a proper understanding on the actual
needs. In the end the driver is in staging, and the potential for errors
small.

The first 3 commits fix the issue, and should probably get in as soon as
possible, the last commit is just cosmetic and can wait until 5.3.

Regards,
Nicolas

[1] https://github.com/raspberrypi/linux/issues/2881
[2] https://archlinuxarm.org/forum/viewtopic.php?f=65&t=13485
[3] https://lists.fedoraproject.org/archives/list/arm@lists.fedoraproject.org/message/GBXGJ7DOV5CQQXFPOZCXTRD6W4BEPT4Q/

--

Changes since v2:
  - Cleaned up revert commit message
  - Rebase & merge conflict resolutions
  - Add code cleanup suggested by Dan Carpenter

Changes since v1:
  - Proplery format revert commits
  - Add code comment to remind of this issue
  - Add Fixes tags

Nicolas Saenz Julienne (4):
  staging: vchiq_2835_arm: revert "quit using custom
    down_interruptible()"
  staging: vchiq: revert "switch to wait_for_completion_killable"
  staging: vchiq: make wait events interruptible
  staging: vchiq: stop explicitly comparing with zero to catch errors

 .../bcm2835-camera/bcm2835-camera.c           | 11 ++-
 .../interface/vchiq_arm/vchiq_2835_arm.c      |  2 +-
 .../interface/vchiq_arm/vchiq_arm.c           | 85 +++++++++----------
 .../interface/vchiq_arm/vchiq_connected.c     |  4 +-
 .../interface/vchiq_arm/vchiq_core.c          | 53 +++++++-----
 .../interface/vchiq_arm/vchiq_debugfs.c       |  4 +-
 .../interface/vchiq_arm/vchiq_util.c          |  6 +-
 7 files changed, 82 insertions(+), 83 deletions(-)

-- 
2.21.0


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
