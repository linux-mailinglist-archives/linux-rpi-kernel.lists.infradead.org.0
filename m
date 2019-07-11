Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C5F56580E
	for <lists+linux-rpi-kernel@lfdr.de>; Thu, 11 Jul 2019 15:45:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xnFZLQNPbFTjWVW6prRRYgPneeDIcmGWviPw9Rf2vaM=; b=ag2QpSJgCPVHrf
	C3XaZCtg91SmYh7MNLdqZXxm0TvLBYNY/icpxrehzSRc7rQPcv4gjoE/OHBeA1/VKgmMtI+stQg0b
	Bn1IphItw34rf12gV7wNOaXt916GOVH0qtTpBNInXfrdBB6d4D/Pt0fjq5G5XvCPztlUv2kL0JXp2
	WCpm0f3rjXHXNLRSuDcsOiYG7Rm0qqxHcQznSoQ5I2qCcLDXaYgzdi56LzfzDr0Zr1JW1awCC2zvv
	jYkqptSyDTXbv1czORuDg96YOjVUYXz4ufVrL78+urZEHeBzbp9BhoKr8qarBmztakpAwQKtM9G69
	X7WKk95gOxo8uDR23Tiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlZOQ-0001e1-8m; Thu, 11 Jul 2019 13:45:50 +0000
Received: from mx08-00252a01.pphosted.com ([91.207.212.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlZOJ-0001cW-BU
 for linux-rpi-kernel@lists.infradead.org; Thu, 11 Jul 2019 13:45:47 +0000
Received: from pps.filterd (m0102629.ppops.net [127.0.0.1])
 by mx08-00252a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x6BDhoHq012918
 for <linux-rpi-kernel@lists.infradead.org>; Thu, 11 Jul 2019 14:45:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=raspberrypi.org;
 h=from : to : cc : subject : date : message-id; s=pp;
 bh=HAfyE5vq9jpBhAxZyoPTsOZYx8qRQEzm7LzCZOVxA98=;
 b=v+McrwDzvUBlxfhM4JXCv751WY6xwI82KPoF4l4JQXxcyP0XiO8nxnkW45TCU1xUEwDo
 PYaL/LwxjrpcVxCGv2OVgPGGgOaFLEFE2kwMuPtfUh9iSrPkDoS87DDFVWROcnN19S8R
 SXXFd6Rqq2HXNZzF4etWTE0mmzV75Zv53QCirw93yWb5cxY1DlCyY/js4EC8ClhO3mws
 UFWm6cahYUvS/24aRadFklsHu+Hw+1/LUSaiEmUjx5Lk8jm55fjnBA2l4jLJqGtJZMkO
 UV/fblJkvbb+gjuEJXnSJKy+W3p7Kmvs6rUOlXCPJ8LD/0vKIrfliA1gRsfcEUpTUcAm pw== 
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71])
 by mx08-00252a01.pphosted.com with ESMTP id 2tmd5x1cm1-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=OK)
 for <linux-rpi-kernel@lists.infradead.org>; Thu, 11 Jul 2019 14:45:41 +0100
Received: by mail-wm1-f71.google.com with SMTP id u17so1648215wmd.6
 for <linux-rpi-kernel@lists.infradead.org>;
 Thu, 11 Jul 2019 06:45:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=raspberrypi.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=HAfyE5vq9jpBhAxZyoPTsOZYx8qRQEzm7LzCZOVxA98=;
 b=WTWXNyOkcpQK+c9/4XM99fDdN6Xw6N4Pf4s3OftsAduPOlc7F4gWSMlWvzRk527WP7
 NSzT5Ww/VHnysyjVyRMBJT9VqXCV0ziwFbz2xLEVPlYNJBaAj8jLfxD1blF2EQPRgCeV
 yW8kpQ/RE5tDpERwMj4w7dXEC9j8k+Aut4G4WMnbuEqgEw0ihaSviX1lgmb0+4HY/3o6
 OexeSwByhl4XKeetzY62qnHMl+qjk1ActnOV3Tj4SDd8EEYHGeGckPJYLLMZyEcxLr7u
 c9SyN9EyDxUhAUl6w21l8g57pn/AnBlgbDO+JZk8Neus2fA7Wk567DHBmFs0/pb8EbQu
 Z5hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=HAfyE5vq9jpBhAxZyoPTsOZYx8qRQEzm7LzCZOVxA98=;
 b=kDfTqz4OxsQGdga4/AXhwVcOBAwUKfxQm/T9XXbpkenwWrnOdeAtrtKEAHQ0oFaGlN
 syMCcZwsl/1csVXIpG+QbsqRbPHcVtSLQoEf4CfWP7GOVxRGoBA9jXzMuGCYEbXPfY+J
 NGlPlT8xhboshrxAh7mQ3zDQg6Tt3oupJCR+t+pKYiYIrFcO+4ZfjO9egMaMf6UVTRr1
 eaIFGgP3FhHbQ7SrhUbFwNn7Un4q0zVZunKfXzAq528HAgSIBEXGcmcSjy5+E0CWhiEH
 vCk2g7797Xz33oFud4G5pAr9VwU1cP5liCEUskXUtRaf/Q5MBzCE5yPF6PwJNtsbifWf
 XJ6g==
X-Gm-Message-State: APjAAAWRhIDSB9tQeyf7FnFFE5WtJ/hlqOwN1d5OhvTuOMMNjvptX0OV
 30YAlgJYmOjsijybAMhoQRCukLnuaRdOJYtzN7nOO7zr2lP5o8HHgrEbqQgztcsWrJpw7EnLhr9
 v7DVK6dj4wv1f7jUPwnlFjhZzOWOIO2o3P3k=
X-Received: by 2002:adf:fe09:: with SMTP id n9mr5641587wrr.41.1562852740558;
 Thu, 11 Jul 2019 06:45:40 -0700 (PDT)
X-Google-Smtp-Source: APXvYqypIrsedHEAbDW3NOuK+HEUYtQnaDEhNZw5HmIZ2Hrqn0o0Rd63sxvab+STDyw06/PvdsoJ7g==
X-Received: by 2002:adf:fe09:: with SMTP id n9mr5641568wrr.41.1562852740312;
 Thu, 11 Jul 2019 06:45:40 -0700 (PDT)
Received: from localhost.localdomain ([2a00:1098:3142:14:4d96:5e54:efaf:af7d])
 by smtp.gmail.com with ESMTPSA id
 z1sm6431022wrp.51.2019.07.11.06.45.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 11 Jul 2019 06:45:39 -0700 (PDT)
From: Phil Elwell <phil@raspberrypi.org>
To: Russell King <linux@arm.linux.org.uk>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Martin <Dave.Martin@arm.com>, Jiri Slaby <jslaby@suse.com>,
 linux-serial@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] tty: amba-pl011: Make TX optimisation conditional
Date: Thu, 11 Jul 2019 14:45:32 +0100
Message-Id: <1562852732-123411-1-git-send-email-phil@raspberrypi.org>
X-Mailer: git-send-email 2.7.4
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:5.22.84,1.0.8
 definitions=2019-07-11_02:2019-07-11,2019-07-11 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_064544_656190_1FCAD9A0 
X-CRM114-Status: GOOD (  20.80  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.211 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

pl011_tx_chars takes a "from_irq" parameter to reduce the number of
register accesses. When from_irq is true the function assumes that the
FIFO is half empty and writes up to half a FIFO's worth of bytes
without polling the FIFO status register, the reasoning being that
the function is being called as a result of the TX interrupt being
raised. This logic would work were it not for the fact that
pl011_rx_chars, called from pl011_int before pl011_tx_chars, releases
the spinlock before calling tty_flip_buffer_push.

A user thread writing to the UART claims the spinlock and ultimately
calls pl011_tx_chars with from_irq set to false. This reverts to the
older logic that polls the FIFO status register before sending every
byte. If this happen on an SMP system during the section of the IRQ
handler where the spinlock has been released, then by the time the TX
interrupt handler is called, the FIFO may already be full, and any
further writes are likely to be lost.

The fix involves adding a per-port flag that is true iff running from
within the interrupt handler and the spinlock has not yet been released.
This flag is then used as the value for the from_irq parameter of
pl011_tx_chars, causing polling to be used in the unsafe case.

Fixes: 1e84d22322ce ("serial/amba-pl011: Refactor and simplify TX FIFO handling")

Signed-off-by: Phil Elwell <phil@raspberrypi.org>
---
 drivers/tty/serial/amba-pl011.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/tty/serial/amba-pl011.c b/drivers/tty/serial/amba-pl011.c
index 5921a33..70c1dc9 100644
--- a/drivers/tty/serial/amba-pl011.c
+++ b/drivers/tty/serial/amba-pl011.c
@@ -270,6 +270,7 @@ struct uart_amba_port {
 	unsigned int		old_cr;		/* state during shutdown */
 	unsigned int		fixed_baud;	/* vendor-set fixed baud rate */
 	char			type[12];
+	bool			irq_locked;	/* in irq, unreleased lock */
 #ifdef CONFIG_DMA_ENGINE
 	/* DMA stuff */
 	bool			using_tx_dma;
@@ -814,6 +815,7 @@ __acquires(&uap->port.lock)
 		return;
 
 	/* Avoid deadlock with the DMA engine callback */
+	uap->irq_locked = 0;
 	spin_unlock(&uap->port.lock);
 	dmaengine_terminate_all(uap->dmatx.chan);
 	spin_lock(&uap->port.lock);
@@ -941,6 +943,7 @@ static void pl011_dma_rx_chars(struct uart_amba_port *uap,
 		fifotaken = pl011_fifo_to_tty(uap);
 	}
 
+	uap->irq_locked = 0;
 	spin_unlock(&uap->port.lock);
 	dev_vdbg(uap->port.dev,
 		 "Took %d chars from DMA buffer and %d chars from the FIFO\n",
@@ -1349,6 +1352,7 @@ __acquires(&uap->port.lock)
 {
 	pl011_fifo_to_tty(uap);
 
+	uap->irq_locked = 0;
 	spin_unlock(&uap->port.lock);
 	tty_flip_buffer_push(&uap->port.state->port);
 	/*
@@ -1483,6 +1487,7 @@ static irqreturn_t pl011_int(int irq, void *dev_id)
 	int handled = 0;
 
 	spin_lock_irqsave(&uap->port.lock, flags);
+	uap->irq_locked = 1;
 	status = pl011_read(uap, REG_RIS) & uap->im;
 	if (status) {
 		do {
@@ -1502,7 +1507,7 @@ static irqreturn_t pl011_int(int irq, void *dev_id)
 				      UART011_CTSMIS|UART011_RIMIS))
 				pl011_modem_status(uap);
 			if (status & UART011_TXIS)
-				pl011_tx_chars(uap, true);
+				pl011_tx_chars(uap, uap->irq_locked);
 
 			if (pass_counter-- == 0)
 				break;
-- 
2.7.4


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
