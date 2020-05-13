Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F55B1D134A
	for <lists+linux-rpi-kernel@lfdr.de>; Wed, 13 May 2020 14:54:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Y9g5hpgsBi96wDeo9m9+SdT1NNgJq3RdsR0/PHEAUrE=; b=qAv
	PlaxF3vJim/WnERvhyCq5m/ln8lo9oSjeM9kKAe8XIlOL5XiSUiXpqJUGzqx83e/xX5bbmURdkZ4t
	7aKIVueKJO3U7Wv0/ml04o2d5izVLq2/NM0gUvYGAAoyGkEHKGvR767q+xKi2cYlXduYy3eevJ3Ke
	BQ0GXtabEd9IAZGm4hR8/9YrHujOaeGaI87f6YMJ9QDC06qEoNyy9kayD8yzM0Ws3+Se2YigY/vil
	+uMfDYMd1jWnIuMWtR4Gam44l+ZoR579t8Enja72VkVsf23Ljs0zvUgrLLXSSv80r/ZZOxAXwbLY8
	smEr/hu6KdX7nXhBubqpTp7g8tX5aAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYqu6-0006Up-U8; Wed, 13 May 2020 12:54:30 +0000
Received: from mailomta2-re.btinternet.com ([213.120.69.95]
 helo=re-prd-fep-048.btinternet.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYqu2-0006TK-BU; Wed, 13 May 2020 12:54:28 +0000
Received: from re-prd-rgout-003.btmx-prd.synchronoss.net ([10.2.54.6])
 by re-prd-fep-048.btinternet.com with ESMTP id
 <20200513125415.BCRW8887.re-prd-fep-048.btinternet.com@re-prd-rgout-003.btmx-prd.synchronoss.net>;
 Wed, 13 May 2020 13:54:15 +0100
Authentication-Results: btinternet.com;
 auth=pass (LOGIN) smtp.auth=j.oldman998@btinternet.com
X-Originating-IP: [31.53.141.224]
X-OWM-Source-IP: 31.53.141.224 (GB)
X-OWM-Env-Sender: j.oldman998@btinternet.com
X-VadeSecure-score: verdict=clean score=0/300, class=clean
X-RazorGate-Vade: gggruggvucftvghtrhhoucdtuddrgeduhedrleeggdehjecutefuodetggdotefrodftvfcurfhrohhfihhlvgemuceutffkvffkuffjvffgnffgvefqofdpqfgfvfenuceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofestddtredtredttdenucfhrhhomheplfhohhhnucfqlhgumhgrnhcuoehjohhhnhdrohhlughmrghnsehpohhlvghhihhllhdrtghordhukheqnecuggftrfgrthhtvghrnhepgeeftdfhfeeuiefhgfekfeethedutddtfeduteevleevfedvfefhjeeijefhgffgnecukfhppeefuddrheefrddugedurddvvdegnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehhvghlohephhgvnhhrhidrhhhomhgvpdhinhgvthepfedurdehfedrudeguddrvddvgedpmhgrihhlfhhrohhmpeeojhhohhhnrdholhgumhgrnhesphholhgvhhhilhhlrdgtohdruhhkqedprhgtphhtthhopeeosggtmhdqkhgvrhhnvghlqdhfvggvuggsrggtkhdqlhhishhtsegsrhhorggutghomhdrtghomheqpdhrtghpthhtohepoeguvghvvghlsegurhhivhgvrhguvghvrdhoshhuohhslhdrohhrgheqpdhrtghpthhtohepoehgrhgvghhkhheslhhinhhugihfohhunhgurghtihhonhdrohhrgheqpdhrtghpthhtohepoehjohhhnhdrohhlughmrghnsehpohhlvghhihhllhdrtghordhukheqpdhrtghpthhtohepoehlihhnuhigqdgrrhhmqdhkvghrnhgvlheslhhishhtshdr
 ihhnfhhrrgguvggrugdrohhrgheqpdhrtghpthhtohepoehlihhnuhigqdhkvghrnhgvlhesvhhgvghrrdhkvghrnhgvlhdrohhrgheqpdhrtghpthhtohepoehlihhnuhigqdhrphhiqdhkvghrnhgvlheslhhishhtshdrihhnfhhrrgguvggrugdrohhrgheqpdhrtghpthhtohepoehnshgrvghniihjuhhlihgvnhhnvgesshhushgvrdguvgeq
X-RazorGate-Vade-Verdict: clean 0
X-RazorGate-Vade-Classification: clean
Received: from henry.home (31.53.141.224) by
 re-prd-rgout-003.btmx-prd.synchronoss.net (5.8.340) (authenticated as
 j.oldman998@btinternet.com)
 id 5E3A16DE1046F7AE; Wed, 13 May 2020 13:54:15 +0100
From: John Oldman <john.oldman@polehill.co.uk>
To: nsaenzjulienne@suse.de
Subject: [PATCH V4] staging: vc04_services: Block comment alignment
Date: Wed, 13 May 2020 13:54:05 +0100
Message-Id: <20200513125405.28242-1-john.oldman@polehill.co.uk>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_055426_672348_EB2A4BAD 
X-CRM114-Status: GOOD (  10.16  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [213.120.69.95 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 1.0 FORGED_SPF_HELO        No description available.
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, John Oldman <john.oldman@polehill.co.uk>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

Coding style issue reported by checkpatch.pl
This patch clears the checkpatch.pl "Block comments should align
the * on each line" warning.
Also cleared /****** and blank line.

Signed-off-by: John Oldman <john.oldman@polehill.co.uk>
---
v1: Initial attempt.
v2: Resubmitted with shorter comment line, as suggested by Greg KH.
v3: Resubmitted with descriptiuon text moved into the comment area.
v4: Resubmitted with /****** and blank lines removed.

 .../interface/vchiq_arm/vchiq_connected.c     | 33 +++++++------------
 1 file changed, 11 insertions(+), 22 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_connected.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_connected.c
index 1640906e3929..79b75efa6868 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_connected.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_connected.c
@@ -14,12 +14,7 @@ static   VCHIQ_CONNECTED_CALLBACK_T g_deferred_callback[MAX_CALLBACKS];
 static   int                        g_once_init;
 static   struct mutex               g_connected_mutex;
 
-/****************************************************************************
-*
-* Function to initialize our lock.
-*
-***************************************************************************/
-
+/* Function to initialize our lock */
 static void connected_init(void)
 {
 	if (!g_once_init) {
@@ -28,15 +23,12 @@ static void connected_init(void)
 	}
 }
 
-/****************************************************************************
-*
-* This function is used to defer initialization until the vchiq stack is
-* initialized. If the stack is already initialized, then the callback will
-* be made immediately, otherwise it will be deferred until
-* vchiq_call_connected_callbacks is called.
-*
-***************************************************************************/
-
+/*
+ * This function is used to defer initialization until the vchiq stack is
+ * initialized. If the stack is already initialized, then the callback will
+ * be made immediately, otherwise it will be deferred until
+ * vchiq_call_connected_callbacks is called.
+ */
 void vchiq_add_connected_callback(VCHIQ_CONNECTED_CALLBACK_T callback)
 {
 	connected_init();
@@ -63,13 +55,10 @@ void vchiq_add_connected_callback(VCHIQ_CONNECTED_CALLBACK_T callback)
 	mutex_unlock(&g_connected_mutex);
 }
 
-/****************************************************************************
-*
-* This function is called by the vchiq stack once it has been connected to
-* the videocore and clients can start to use the stack.
-*
-***************************************************************************/
-
+/*
+ * This function is called by the vchiq stack once it has been connected to
+ * the videocore and clients can start to use the stack.
+ */
 void vchiq_call_connected_callbacks(void)
 {
 	int i;
-- 
2.17.1


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
