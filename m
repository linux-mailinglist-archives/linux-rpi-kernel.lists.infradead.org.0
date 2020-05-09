Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90B8B1CC199
	for <lists+linux-rpi-kernel@lfdr.de>; Sat,  9 May 2020 15:08:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=NoM6AQLF84oNX6+wZYx8i0pPNTvVqf8ktM5cQl/80mg=; b=O53
	jcB3r6xBeZrVYF8iiCdXrdz5LZ1/zpKCEPF13leDGydDVYHTmZ3/mhyosQLKPmvqn4qsailbFUJMu
	2xgUla9+/lOgL4UwBVU318iXCzyyFGTkSCqZ8CjRArdlROCXaue3CyErZ1QHYFFSjLbx0Hz/TH+4g
	5xbh4vhY+3BnVg3xCs8IL4iI5UZlTxNsblZ3iuUyvplqag1DBJTj04PpdgGAK4iUWkx5ZAiXNlMSs
	dqza+Ta8Up8CK50MbRJ+QGF7GEMo7GEToPDElpHvA7j/rAaOFsIMOp6gqC60m6n53EYYcLYqFk4q6
	JNccpChguK0/offR+4KfUUybQ86Nu6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXPCm-0007Mm-Jo; Sat, 09 May 2020 13:07:48 +0000
Received: from mailomta29-sa.btinternet.com ([213.120.69.35]
 helo=sa-prd-fep-041.btinternet.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXPCi-0007CC-IU; Sat, 09 May 2020 13:07:46 +0000
Received: from sa-prd-rgout-004.btmx-prd.synchronoss.net ([10.2.38.7])
 by sa-prd-fep-041.btinternet.com with ESMTP id
 <20200509130726.KSVB7822.sa-prd-fep-041.btinternet.com@sa-prd-rgout-004.btmx-prd.synchronoss.net>;
 Sat, 9 May 2020 14:07:26 +0100
Authentication-Results: btinternet.com;
 auth=pass (LOGIN) smtp.auth=j.oldman998@btinternet.com
X-Originating-IP: [31.53.141.224]
X-OWM-Source-IP: 31.53.141.224 (GB)
X-OWM-Env-Sender: j.oldman998@btinternet.com
X-VadeSecure-score: verdict=clean score=0/300, class=clean
X-RazorGate-Vade: gggruggvucftvghtrhhoucdtuddrgeduhedrkeehgdeitdcutefuodetggdotefrodftvfcurfhrohhfihhlvgemuceutffkvffkuffjvffgnffgvefqofdpqfgfvfenuceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofestddtredtredttdenucfhrhhomheplfhohhhnucfqlhgumhgrnhcuoehjohhhnhdrohhlughmrghnsehpohhlvghhihhllhdrtghordhukheqnecuggftrfgrthhtvghrnhepgeeftdfhfeeuiefhgfekfeethedutddtfeduteevleevfedvfefhjeeijefhgffgnecukfhppeefuddrheefrddugedurddvvdegnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehhvghlohephhgvnhhrhidrhhhomhgvpdhinhgvthepfedurdehfedrudeguddrvddvgedpmhgrihhlfhhrohhmpeeojhhohhhnrdholhgumhgrnhesphholhgvhhhilhhlrdgtohdruhhkqedprhgtphhtthhopeeosggtmhdqkhgvrhhnvghlqdhfvggvuggsrggtkhdqlhhishhtsegsrhhorggutghomhdrtghomheqpdhrtghpthhtohepoeguvghvvghlsegurhhivhgvrhguvghvrdhoshhuohhslhdrohhrgheqpdhrtghpthhtohepoehgrhgvghhkhheslhhinhhugihfohhunhgurghtihhonhdrohhrgheqpdhrtghpthhtohepoehjohhhnhdrohhlughmrghnsehpohhlvghhihhllhdrtghordhukheqpdhrtghpthhtohepoehlihhnuhigqdgrrhhmqdhkvghrnhgvlheslhhishhtshdr
 ihhnfhhrrgguvggrugdrohhrgheqpdhrtghpthhtohepoehlihhnuhigqdhkvghrnhgvlhesvhhgvghrrdhkvghrnhgvlhdrohhrgheqpdhrtghpthhtohepoehlihhnuhigqdhrphhiqdhkvghrnhgvlheslhhishhtshdrihhnfhhrrgguvggrugdrohhrgheqpdhrtghpthhtohepoehnshgrvghniihjuhhlihgvnhhnvgesshhushgvrdguvgeq
X-RazorGate-Vade-Verdict: clean 0
X-RazorGate-Vade-Classification: clean
Received: from henry.home (31.53.141.224) by
 sa-prd-rgout-004.btmx-prd.synchronoss.net (5.8.340) (authenticated as
 j.oldman998@btinternet.com)
 id 5E3A27DB0FC00535; Sat, 9 May 2020 14:07:26 +0100
From: John Oldman <john.oldman@polehill.co.uk>
To: nsaenzjulienne@suse.de
Subject: [PATCH] staging: vc04_services: interface: vchiq_arm:
 vchiq_connected.c: Block comments should align the * on each line
Date: Sat,  9 May 2020 14:07:14 +0100
Message-Id: <20200509130714.10586-1-john.oldman@polehill.co.uk>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200509_060744_884642_B05AC7EA 
X-CRM114-Status: UNSURE (   9.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [213.120.69.35 listed in list.dnswl.org]
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

Coding style issue

Signed-off-by: John Oldman <john.oldman@polehill.co.uk>
---
 .../interface/vchiq_arm/vchiq_connected.c     | 32 +++++++++----------
 1 file changed, 16 insertions(+), 16 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_connected.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_connected.c
index 1640906e3929..993535bbc479 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_connected.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_connected.c
@@ -15,10 +15,10 @@ static   int                        g_once_init;
 static   struct mutex               g_connected_mutex;
 
 /****************************************************************************
-*
-* Function to initialize our lock.
-*
-***************************************************************************/
+ *
+ * Function to initialize our lock.
+ *
+ ***************************************************************************/
 
 static void connected_init(void)
 {
@@ -29,13 +29,13 @@ static void connected_init(void)
 }
 
 /****************************************************************************
-*
-* This function is used to defer initialization until the vchiq stack is
-* initialized. If the stack is already initialized, then the callback will
-* be made immediately, otherwise it will be deferred until
-* vchiq_call_connected_callbacks is called.
-*
-***************************************************************************/
+ *
+ * This function is used to defer initialization until the vchiq stack is
+ * initialized. If the stack is already initialized, then the callback will
+ * be made immediately, otherwise it will be deferred until
+ * vchiq_call_connected_callbacks is called.
+ *
+ ***************************************************************************/
 
 void vchiq_add_connected_callback(VCHIQ_CONNECTED_CALLBACK_T callback)
 {
@@ -64,11 +64,11 @@ void vchiq_add_connected_callback(VCHIQ_CONNECTED_CALLBACK_T callback)
 }
 
 /****************************************************************************
-*
-* This function is called by the vchiq stack once it has been connected to
-* the videocore and clients can start to use the stack.
-*
-***************************************************************************/
+ *
+ * This function is called by the vchiq stack once it has been connected to
+ * the videocore and clients can start to use the stack.
+ *
+ ***************************************************************************/
 
 void vchiq_call_connected_callbacks(void)
 {
-- 
2.17.1


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
