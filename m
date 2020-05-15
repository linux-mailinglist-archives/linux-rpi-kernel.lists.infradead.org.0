Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C03A1D4C8E
	for <lists+linux-rpi-kernel@lfdr.de>; Fri, 15 May 2020 13:26:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=cPzW5o1zkIq64xw1GNaJOWfqSB1AkIJ0fl9nCFq3MC8=; b=fZB
	mMgJ7wf9qnNXxRBwcLbLJ1Z56euJhC0ghSsfizkvF3AUYVKJC+rZCSYJkDJ1VAuMK/u2RKqfNCx9h
	uiAtfigTyH78wrgv8WZWEgRjis9MwTCCxmfOV0XluW/cns3k2ekvSqA+cOjiFZjuGbXOBa4wMI00N
	V3J8pqOvUSvIU34uFC6h49evilliWeTf04F0Rt+vXrC6aB/s/uRy3dOWiwqH/YVfgskkjR7OtoaIn
	hAtAFSap09r/3S3CYN5ikOxOMCv0TpFn2wKsGcNQBFLO9yb5Ea5I2KHqro47krBlj2ft0jMyZSoND
	0PVWOc+TI6qO/nHAdmYmJBuR8VfNxNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZYTt-0005dx-Oj; Fri, 15 May 2020 11:26:21 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZYTq-0005cl-6v
 for linux-rpi-kernel@lists.infradead.org; Fri, 15 May 2020 11:26:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1589541973;
 bh=YwBwppl8D2zrfU2Ze6JU553zDCyob6wwOFkmi4KB/VU=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=d06WyjnyTC2OhH6A03aAC4MtKbYyHoMaCb55VvSknJLEzXa7u7RKunCZ43Y/01nsh
 jmK5SJZ0uOXt5hTXXODOeWD4/uKTDDDofEb7q7V5Xh6CqXmqxgrEABj/DcZODvnhp9
 Wky5+yDDXRFlZv90n2javCnYxLClqOiMAdMSQWZ0=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from Venus.fritz.box ([78.43.154.122]) by mail.gmx.com (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1N2V4P-1j5bhq0esx-013xnb; Fri, 15
 May 2020 13:26:13 +0200
From: Lino Sanfilippo <LinoSanfilippo@gmx.de>
To: linux-rpi-kernel@lists.infradead.org
Subject: [PATCH] bcm2835: fix missing variable initialisation
Date: Fri, 15 May 2020 13:25:29 +0200
Message-Id: <1589541929-12098-1-git-send-email-LinoSanfilippo@gmx.de>
X-Mailer: git-send-email 2.7.4
X-Provags-ID: V03:K1:wt8wT1Cgo3f406aWunP4rr9GXrWJvSo3WBcLVKQ/Kh04bB2sqbq
 h9dBdqONB+STb/Q+G1oNgWd3h/MjWcB3iUh+BSisOnF0SkjDYzJ5EJ4XAP2/IjuPj1U5ddA
 jrVv+GVU0plEiwhjDbBQQO6UET9m8nUB+w1UaR7eg2ZGlBsAy82yD09fz3bebXipvWa1I2P
 H7cUOj4FdBiaVOzlhAKBg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:zqb1Kqv2ad0=:7lJV9J1yrjOqhE6A01g/rp
 Dgmc9wjdYaZIYyKdBFkZJcagox0CyJW1Z3/Sl/Jo9dJ0qX3qriAaUMYkXozXVlcwLoy2Ejar1
 YPK6W/WP2icqBdxx2BKVcs4fHmRJcD4VLRgYLeWCYSLvSKcIBvgtFnwxnkrzeRtBYp3izW3k0
 9sSt8217k4XH8PYg9AVocEL8H1Tcg6EtDGsIBq0JWc5RZ2wq8BcF98bfkTWuDyrINWjXWjAFs
 +BY+K72CmyoC2kTQaRFCYTLqOXPINBAMEnB2gker6uVYLVVmlRpBu7wDslxAgknl7uLBDGc7Z
 ddOZUiBSscJSoVIogXIkVS7aZPEoEfuki7hSRq15L1LFLPdxY69noY63cZ9GQW2KJ1Q52Gw2b
 aPhg0TUgWAOqb/ryfx/1QguVbAUNu9X6UN30LuQtcxASjFnv68TueMyDB/IRB9looSXz5/3j7
 1lnyiN6ieVLqJ32BswbqfGGekKGXhH4HXEd1KzHlQTKokIPLQG7tsoi2Dh6JAOJbppvvY5fXA
 0+f32i30Qu4c0PqY5kpZkbC0qENzkvvEoJeXywSQkmdbM0aQpx1o6I2r1c/aMl5Pw9ttZKvpR
 fmyuRUN+O01O5WnA0B1jKqVOnxsYld9jX8WXkF/uB2XdvZVmFs//wKJixIKCafaAfz/fg3w5k
 VQRpYCy2i8y1dKhA7dTzb/TOgoDRht4/lWphfy1iqYgxJ67dqfSUw3IkqpMlhZxq9XcL/PZR5
 FEdSrAeXfCirPX36keBjLqlSE8K8xIgfmMQVTFrHBbb3VoR83CxpeeOC7z1dtbBUvHOkj1j2u
 eWuf/P3cqBG4HH3jhxXRHJODKRVG2KEGf4RYPIg5KfSEKvpxRaJfNPDAGkAsQFBxMmEDEFtA2
 D+uugCAsmDEjLgPqAepywS+6ioqETxraMlmfJ2TLStbnVQt975MupYnCkBIN8sUks6/Yb4FGj
 uHWQzMKWe3H5iMh4lpkmK+036ILfNopG3TiY8QjfYYHNwiODX3qWugGlv0nLn93ylAopAmErV
 4YsnL3Zuc9AJ/RWOPXUFalYlLG/PTUpNnOi2NZ6b1KUdL+WqnB1Xx6z5pvBqp8fsHaSSNVOub
 4hVTLp6ADVYD5X+WvCOQYaFYYqXbXAgvmBSdKbuuyhO7RfqEZgDkE06WyYXWjJcrqAWIcahJX
 gMD2G8NJJ+ZY4+UjDSI/MIhSL/IHOe7SDBHHTVvyqXAgBuonLc5/L/I8FzqSIyLJbvqAjj8Im
 dTct9u+0xx3/tHOJz
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_042618_580967_1D96146E 
X-CRM114-Status: UNSURE (   8.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.15.15 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.15.15 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [linosanfilippo[at]gmx.de]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: dave.stevenson@raspberrypi.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

In function get_first_supported_format() the value in variable "ret" is used
as a condition in a for-loop. So make sure it is properly initialized before
it is evaluated the first time.

Signed-off-by: Lino Sanfilippo <LinoSanfilippo@gmx.de>
---
 drivers/media/platform/bcm2835/bcm2835-unicam.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/media/platform/bcm2835/bcm2835-unicam.c b/drivers/media/platform/bcm2835/bcm2835-unicam.c
index 09e68a9..c071e64 100644
--- a/drivers/media/platform/bcm2835/bcm2835-unicam.c
+++ b/drivers/media/platform/bcm2835/bcm2835-unicam.c
@@ -826,7 +826,7 @@ const struct unicam_fmt *get_first_supported_format(struct unicam_device *dev)
 {
 	struct v4l2_subdev_mbus_code_enum mbus_code;
 	const struct unicam_fmt *fmt = NULL;
-	int ret;
+	int ret = 0;
 	int j;

 	for (j = 0; ret != -EINVAL && ret != -ENOIOCTLCMD; ++j) {
--
2.7.4


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
