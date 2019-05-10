Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2D07199D5
	for <lists+linux-rpi-kernel@lfdr.de>; Fri, 10 May 2019 10:42:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=81C1FeemVpz87j7y6V49DjQM1m9pDP4DFdmZJzgcXlw=; b=FQI
	MG2xJL2VW2+zosqRARpg3p7MQcH9ZWOaoaKTh1Ckemqdx6B3AfdFQ+s8RfxLQ2ijLRM9D7VdNMfnT
	ItYd2CyUNGbMTKBzxsDR82OCgWQPFWaaFCgIXGEcGVk5hh9u2J8Z5pucJrTMjMFOmVlFRHaZKOscO
	dTZ33WbiA806wbEn++fdAmhglowVI/d5/bHVp+724yfUCm5NW/5L/4oUHDWf53h3Ml5Y1VZq78D6b
	KH7d2HupknNMvvw3cI6pKlMkTg2tZN0wu6+8l2pI8TG8qJgooZTUglX4UAE+xCNwYuaCIpB5KfXN4
	R7w4i1p91DECL5pYW66ac02CUps0ZWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP175-0000ts-IU; Fri, 10 May 2019 08:42:43 +0000
Received: from www3345.sakura.ne.jp ([49.212.235.55])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP171-0000tO-Nj
 for linux-rpi-kernel@lists.infradead.org; Fri, 10 May 2019 08:42:41 +0000
Received: from fsav305.sakura.ne.jp (fsav305.sakura.ne.jp [153.120.85.136])
 by www3345.sakura.ne.jp (8.15.2/8.15.2) with ESMTP id x4A8gNUB045869;
 Fri, 10 May 2019 17:42:23 +0900 (JST)
 (envelope-from na-hoan@jinso.co.jp)
Received: from www3345.sakura.ne.jp (49.212.235.55)
 by fsav305.sakura.ne.jp (F-Secure/fsigk_smtp/530/fsav305.sakura.ne.jp);
 Fri, 10 May 2019 17:42:23 +0900 (JST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/530/fsav305.sakura.ne.jp)
Received: from localhost (p14010-ipadfx41marunouchi.tokyo.ocn.ne.jp
 [61.118.107.10]) (authenticated bits=0)
 by www3345.sakura.ne.jp (8.15.2/8.15.2) with ESMTPSA id x4A8gIAv045826
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Fri, 10 May 2019 17:42:23 +0900 (JST)
 (envelope-from na-hoan@jinso.co.jp)
From: Nguyen An Hoan <na-hoan@jinso.co.jp>
To: broonie@kernel.org, linux-rpi-kernel@lists.infradead.org, eric@anholt.net, 
 stefan.wahren@i2se.com
Subject: [PATCH] spi: bcm2835: Remove spi_alloc_master() error printing
Date: Fri, 10 May 2019 17:42:18 +0900
Message-Id: <1557477738-20634-1-git-send-email-na-hoan@jinso.co.jp>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_014239_991487_1B761484 
X-CRM114-Status: UNSURE (   7.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: na-hoan@jinso.co.jp, linux-spi@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

From: Hoan Nguyen An <na-hoan@jinso.co.jp>

Printing an error on memory allocation failure is unnecessary,
as the memory allocation core code already takes care of that.

Signed-off-by: Hoan Nguyen An <na-hoan@jinso.co.jp>
---
 drivers/spi/spi-bcm2835.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/spi/spi-bcm2835.c b/drivers/spi/spi-bcm2835.c
index 35aebdf..0b779c2 100644
--- a/drivers/spi/spi-bcm2835.c
+++ b/drivers/spi/spi-bcm2835.c
@@ -932,10 +932,8 @@ static int bcm2835_spi_probe(struct platform_device *pdev)
 	int err;
 
 	master = spi_alloc_master(&pdev->dev, sizeof(*bs));
-	if (!master) {
-		dev_err(&pdev->dev, "spi_alloc_master() failed\n");
+	if (!master)
 		return -ENOMEM;
-	}
 
 	platform_set_drvdata(pdev, master);
 
-- 
2.7.4


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
