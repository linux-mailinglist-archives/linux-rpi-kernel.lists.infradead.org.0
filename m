Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A013169799
	for <lists+linux-rpi-kernel@lfdr.de>; Sun, 23 Feb 2020 14:04:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=3601JLbmmXjnTqOhxsBlqQbY4H+2XQm+8Fy0ec1wDGQ=; b=iFR
	mmfr+E3PH1PIsBS69tvBPX1m8TOz+0KqgORJllJ3/wapG05Sb+UdBYRu79qLsP0ihztVjE/FVhSZ9
	QmV7uI6la8eUYw6qyAwxqJFUQdkn65APnBXGc5/DIAay1AEL7jr7MF9rWmU5L3/FwvlUtzPNkHEmH
	ujj2mSg2Wu76endUJfun0TIQW6H1+PdDxlETsHCneVKsa1YP00Ps1iGtQ2HCQw5u1Qs4gcnaO5fxY
	GlaoyyvAXKuRNdlvt9+ngXSFRXn9gpeNJOGG3vAI45o/jJ4yK5uumBhIC+sHbP5okk8ABTKUPpOQC
	kOBu6AD9FU7BTafVZR4tO1vLRBBZ8Pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5qvt-00019c-Rn; Sun, 23 Feb 2020 13:04:29 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5qvk-00014I-67; Sun, 23 Feb 2020 13:04:21 +0000
Received: from localhost.localdomain ([37.4.249.121]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MhDEo-1jaDwE2jC6-00eMCo; Sun, 23 Feb 2020 14:04:12 +0100
From: Stefan Wahren <stefan.wahren@i2se.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>
Subject: [PATCH] ARM: bcm2835_defconfig: Explicitly restore CONFIG_DEBUG_FS
Date: Sun, 23 Feb 2020 14:02:56 +0100
Message-Id: <1582462976-30646-1-git-send-email-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.7.4
X-Provags-ID: V03:K1:CoVY1sXEwV2l9EVwIL4/vKabbkLRc6PDSydEJoCPv/DceZV9G+X
 +4Lsl2DE3ev9q4tPi8ZfMi/sOcG/535sYaOvQ8AHxonjQuQCe/C5BxhTPft9VB5KrlsG/lJ
 Z8h8KdxVCkJinnAxuTDG1iz2VQnIHWdlSxr1PA03By5GpXGJrMUbaxDYbZYp66bq833slJr
 iLFFf9mNBOocesZpllMkw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:c/XCZm9674I=:VfT84tFuX8f64fMm1J1I52
 sETxGV0spQSxtdN+tGh2miB5BCFLH+o2mTomzwgHSML9CzEZI9eaz78tA5uguEJHcpKDAzZq+
 iLISvMKoMyfet3y/7h90bzjb8BdJ5pEyvi4l9pnym2U8h0UC0J0eWOLIM/gLZGzWDRtDAif4L
 gk/AP4DxHWsocnwJlx6UQaiiVoAGVwt/YlRlYqQcQz6LIN0j+95m69ISV954nqSRtH0GvbU2c
 Ta663VWP/N8kdtlurTuWGPc6HHjZzV+g6N2kWpmhWu8eqDtb2fLWLDNKMvvwKrgUOcamFciSP
 dCZMtu6YnFdS4QNNDZII7uf+99l1zxzagL376n/iNEOKPaPpdJTTu+5Bd+j5fVy1qYebg95da
 c/hMB+zc3wfj1dWrfHUmJEycA88ZEDp2Uu205mtxY+loQKGWnfeqqt6iivb0Hllynp3s04q7l
 nToDN5fxpbTdZ6/zd9UULcXp1liYXAM1QlHiQ1pYVVw6dAXWMy4msMHozTRuGUexy/IKX+6eR
 8qiv5EFabZRR7IVuAqPFSTi0w+Tu34Fmt0uuBd8F7juho2/5GlMDSMIv+hm/jYH2HctlECXK5
 Fo4k1/LBUvK3PvAQPs7sP2eTIa71Dil3Mrpm53Qw2WPtYWAPmXq4H0O1M2pMeTxXgF/buGUJJ
 lCshihATi/XM/W2/HaNKUjNwUnSNguYFO8AO+odzp3WB5hCp0VNp5clkG+fehT7Kkzd8JCNo2
 ihs7cHFL7lcPUBb900AAl5cn9rmeE4T/ODPCgBXRt/lHmoiOMjdAXrGn0x7esNvZfb9iO4NeD
 y7h42kMEwIopee0l1dxQ6mBJQZril99E0odWq4nQnRHhg8m9Ei5YYGhGNSWYQVBVKFcJ7Nr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200223_050420_532694_707ED5F9 
X-CRM114-Status: GOOD (  10.39  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

The commit 0e4a459f56c3 ("tracing: Remove unnecessary DEBUG_FS dependency")
accidentally dropped the DEBUG FS support in bcm2835_defconfig. So
restore the config as before the commit.

Reported-by: Marek Szyprowski <m.szyprowski@samsung.com>
Fixes: 0e4a459f56c3 ("tracing: Remove unnecessary DEBUG_FS dependency")
Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
---
 arch/arm/configs/bcm2835_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/bcm2835_defconfig b/arch/arm/configs/bcm2835_defconfig
index 3843754..8e7a3ed 100644
--- a/arch/arm/configs/bcm2835_defconfig
+++ b/arch/arm/configs/bcm2835_defconfig
@@ -183,6 +183,7 @@ CONFIG_SCHED_TRACER=y
 CONFIG_STACK_TRACER=y
 CONFIG_FUNCTION_PROFILER=y
 CONFIG_TEST_KSTRTOX=y
+CONFIG_DEBUG_FS=y
 CONFIG_KGDB=y
 CONFIG_KGDB_KDB=y
 CONFIG_STRICT_DEVMEM=y
-- 
2.7.4


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
