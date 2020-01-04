Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FFED130392
	for <lists+linux-rpi-kernel@lfdr.de>; Sat,  4 Jan 2020 17:29:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=PiZ5w+h0BqmNNhGrmEY8i0Sw6hM1i5uspGPnP3szJz0=; b=XiN
	BurwZ9HFK/Y2uSEAWpxdY2NIEMvhGl7X2mDM2D4JTJra42RBHbkWmN/PKT5ncuu9p7PjmrFBuRxss
	x3k2ydeuRkxVqBR0w1B5PIZ2d8QUh9GcPmwROYgk1qAkqYl/NvB3gXibQyAthYKwJZv3yf7ve9Abs
	H3Tq/vYL39mboWCmjvmAywwbauP0Bguj9PDWPJ7We5vzMMnDjzLDEeDogRdLMYHlt0YtJ6G9BU3HQ
	QB9E/4h68kyz4lw2Fl2g0CPayZa56icWaxNSuQQwwXjWgXNuIwevrNIpchswmnmCrdjOR/rIqg0Ok
	CoJKBflNXLzoMmqiPioHXUadHPtkPMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inmIm-0001bw-3d; Sat, 04 Jan 2020 16:29:24 +0000
Received: from conuserg-10.nifty.com ([210.131.2.77])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inmId-0001VP-P4; Sat, 04 Jan 2020 16:29:17 +0000
Received: from grover.flets-west.jp (softbank126093102113.bbtec.net
 [126.93.102.113]) (authenticated)
 by conuserg-10.nifty.com with ESMTP id 004GSaoq029321;
 Sun, 5 Jan 2020 01:28:36 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-10.nifty.com 004GSaoq029321
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1578155317;
 bh=BCbtz6rrc6jSvrHHlVpTqOC3pSISW0eDFtaFXvtYM3o=;
 h=From:To:Cc:Subject:Date:From;
 b=JHz5tHHohM/sW7N+Cy4N3GCI3+kamahEwpbzEddjwuS5Nug2R0nzw43vbjAIhr90O
 Gy2IkEKWs4RB2G797wbNhcW3D1gLHSqfIH1O/7GravvV+o/g+J3bIZ+DTNIvYMndCk
 T+DCwzVJU8yloxqV1NiV1Et4xoxyftcLqJKC4ZZTSySgao5vW2PfjBdF1I8vAwPtxy
 8BhBjzxgx0Ct7GsHOZBrHTCapk6GMROxTG+PYwR7o476tlu+hlgZyQQ0yN2P6yShul
 wC8QuOiF2lkcQ0r3hDtc/Yaj+M+LULOmccX/EKCpiDaNoAnGNPgX4p5y0C2GeOW4vk
 l7jNVW0vI7dvA==
X-Nifty-SrcIP: [126.93.102.113]
From: Masahiro Yamada <masahiroy@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: vc04_service: remove unused header include path
Date: Sun,  5 Jan 2020 01:28:29 +0900
Message-Id: <20200104162829.20400-1-masahiroy@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200104_082916_051267_E5341041 
X-CRM114-Status: UNSURE (   7.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.77 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: devel@driverdev.osuosl.org, Masahiro Yamada <masahiroy@kernel.org>,
 linux-kernel@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

I can build drivers/staging/vc04_services without this.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 drivers/staging/vc04_services/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vc04_services/Makefile b/drivers/staging/vc04_services/Makefile
index afe43fa5a6d7..54d9e2f31916 100644
--- a/drivers/staging/vc04_services/Makefile
+++ b/drivers/staging/vc04_services/Makefile
@@ -13,5 +13,5 @@ vchiq-objs := \
 obj-$(CONFIG_SND_BCM2835)	+= bcm2835-audio/
 obj-$(CONFIG_VIDEO_BCM2835)	+= bcm2835-camera/
 
-ccflags-y += -Idrivers/staging/vc04_services -D__VCCOREVER__=0x04000000
+ccflags-y += -D__VCCOREVER__=0x04000000
 
-- 
2.17.1


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
