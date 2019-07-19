Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E5466E685
	for <lists+linux-rpi-kernel@lfdr.de>; Fri, 19 Jul 2019 15:36:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=3Brnz4G5M4VHIgX/3L2wp5VjqYLIL/AayTjmUTaOSO4=; b=leI
	/pR6ryumUQRwUXZJgvSQenuyVFw1qJwbJWg+MtX9QJu7UGYxiejKfUiXWHWvrcvJ7s6dzBYFlJiFg
	fZePnfcSBGPwZlcKHmBbU+CpFV/TB9tx8evz+dn8ZVjKm2qQxsTy3Nv4X7JgUnRC1AEwA6KAnH2dP
	YmCoEBYECYqE7GqfQMoMcFQ845tyEslaHGTs64vPptchz9fU4rDgQQ+JOZ6HBimSQlByC0/54QSs8
	0lufylO9J4kgmwUYT5zKW64TMk8LlTQw7mlyNlxCPCZ9sUs9QFVZZpmy86jmk7HdRZLSotmxHHaBo
	hzNaup4nRoC3xAKtPXc32uv2iUlKhqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoT3M-00062j-4D; Fri, 19 Jul 2019 13:36:04 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hoT32-0005qr-Kn; Fri, 19 Jul 2019 13:35:46 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CD6E0337;
 Fri, 19 Jul 2019 06:35:40 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id A61FC3F71A;
 Fri, 19 Jul 2019 06:35:39 -0700 (PDT)
From: Dave Martin <Dave.Martin@arm.com>
To: linux-serial@vger.kernel.org
Subject: [RFC PATCH 0/2] serial: pl011: Fix TX dropping race
Date: Fri, 19 Jul 2019 14:35:23 +0100
Message-Id: <1563543325-12463-1-git-send-email-Dave.Martin@arm.com>
X-Mailer: git-send-email 2.1.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_063544_723471_B282F991 
X-CRM114-Status: UNSURE (   8.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Russell King <linux@arm.linux.org.uk>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-rpi-kernel@lists.infradead.org, Jiri Slaby <jslaby@suse.com>,
 Rogier Wolff <R.E.Wolff@BitWizard.nl>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

When serial_core pushes some new TX chars via a call to
pl011_start_tx(), it can race with irqs triggered by ongoing
transmission, overfilling the FIFO and causing characters to be silently
dropped.

This was originally reported by Phil Elwell [1], who proposed an initial
fix.

This series aims for a simpler and more robust solution to the problem.

Any testing much appreciated!  If all looks good, I can repost this on
v5.3-rc1 when that arrives.


As noted in the patches, I'm not sure that the second patch is necessary
(or even desirable).  Please test both with and without the second
patch, and please comment if you have any thoughts on it :)


[1] [PATCH] tty: amba-pl011: Make TX optimisation conditional
http://lists.infradead.org/pipermail/linux-rpi-kernel/2019-July/008832.html


Dave Martin (2):
  serial: pl011: Fix dropping of TX chars due to irq race
  serial: pl011: Don't bother pushing more TX data while TX irq is
    active

 drivers/tty/serial/amba-pl011.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

-- 
2.1.4


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
