Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37092183B7D
	for <lists+linux-rpi-kernel@lfdr.de>; Thu, 12 Mar 2020 22:38:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=MNSo92vm4sgkOiHKTW8Ql9iNb6rkC05z6rekMaAXBTY=; b=JzL
	cUZypx8IlKJGbQpcU5Vw+iHYifY+5Z4oPBONrl0OfNBldlxbeAsAgjwhPJkyMLfGO7r5UgtgClEWT
	5aj2Ycv8q2631GT64LzO6sRD9GN9WlVEzqZsJTYRokPL9prqJbmd9GMwnOoya7dETE0d9Qq2Gk+14
	aoDvoyJUMLk4SEML0C6QcFZCLamDY9y2EWsAdjEeY7I/QoV5qBuR/qeOH3668HH0aCzfqGY2EEqUc
	1jy/5drynXEOycBJXlFpwhgOFfmoccyEV1MaC9tvQKDCmBW2XrLtoDcC+aCtQbstk2ykAsUV13mWM
	hnErEP6TeYVoQK3zt/hcZIq8tO2LkTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCVXJ-0000at-IV; Thu, 12 Mar 2020 21:38:37 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCVXG-0000UY-3G
 for linux-rpi-kernel@lists.infradead.org; Thu, 12 Mar 2020 21:38:35 +0000
Received: from localhost.localdomain ([37.4.249.171]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MsI0I-1jRHCQ2BFC-00tnmK; Thu, 12 Mar 2020 22:38:28 +0100
From: Stefan Wahren <stefan.wahren@i2se.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>
Subject: [PATCH 0/2] staging: bcm2835-camera: Improve bm2835_mmal_v4l2_ctrl
Date: Thu, 12 Mar 2020 22:37:37 +0100
Message-Id: <1584049059-6772-1-git-send-email-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.7.4
X-Provags-ID: V03:K1:BfBaKtz+Mn0xGJ8wvufKLCBCN5jcKraI+D+u9LYsquxPkHOYi40
 YFAo15tQxUJAz5nTCs07TwzEDjqEMYLPTnisms5SvA/8/VMREtw4ec/i9ZpvLEd8pfrzpiu
 LoA3A15sEtCCkcwWT0gzCQESF0zdgIM0qt98xwcX21BJNU8/1s+GGtv+rmsSAx/p4EqvD4g
 yPLPpXo05+fL/gn7PBDiA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Szr7ojfhu8s=:LvbhbLWKgAItsRiDz3sJu6
 s0H/n8yBbR+D8bLLugcLR7mRmCetxE3tGrX4bUjmZ/im08yuzJdS42mPtW1WW9buVBRN3C+3i
 YUY+fQqUAHHxjZGNPEhogEwsIU0kUloC3fbVz8edvD/ce/H1nkJYau7L7QZpWnw+tvke7s+xk
 YKIbh0UHZqoRQYj9rjBvtA2K87vOuaVU9NMMH4Ik5mbbtqsmt6y1LLrmhODMjV2t8gMK7lliL
 hX3Kkop+MxbkktGXIk2cUsmGHQxRb1QdOBQQPWrDhYdDh1CNhzqxQ7LYX0EKY3qSaRwTdd2py
 +CHo/OeA77OYEdob/nMy/kKjJfztqzde0EY00jqJ5EESmCeuomzT+4ks4IfdDTnhbXNb3H3XI
 H4EbXRuSqmBvjSV/Dou2/kUyZdiyHs2uJ/A0V2pkVBbBQVRF8i6wkdQXNfyKAt4SRplYhZmUR
 dGRW7/cu8A7xjBLue4xLL7Y+x2VuEwDtvTYU0vGPK58PBtF9Wg6+qGOQcxuL4gs1H0a2HD/e9
 8kg5fxz9zS39OGqkPEeGZyZyL8x5rWTVAQM/7PAuAnTSqOCmNUXgaj+1XmM8xIc+uSzKiQotl
 WGPyG5n6ZU4mF/xRJ0x0vrNuMKL4dJ0udtzt0oDszqGQx4ipcY2aiFezl6yTTb4eKyKP9BNDX
 HboHGaaNIA1VuS+mTr/cmUpN42wew14bC4TuN/OuPYK6QfmoNv+dXwZ60cFxyHJQz9vyICfXE
 VT2pgfqKAHpE6egb1slTM4JYkoEpEQXK5I3UZPZ2uOb1XZpDC4qH0Ip+nu/n/gzAGeK1j8+UA
 xgqfb6aGl7bKtWXPeil6KJP2P9ybjnF/0Uz6dkX8/MDY4y9+Du/DpUgnQtIZNWJkv2fvZMb
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_143834_428031_5F26E45A 
X-CRM114-Status: UNSURE (   7.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
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
Cc: devel@driverdev.osuosl.org, linux-rpi-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

These 2 patches improves the V4L2 controls in the bcm2835 camera driver.

Stefan Wahren (2):
  staging: bcm2835-camera: Drop unused ignore_errors flag
  staging: bcm2835-camera: Use designators to init V4L2 controls

 .../vc04_services/bcm2835-camera/controls.c        | 458 +++++++++++++--------
 1 file changed, 278 insertions(+), 180 deletions(-)

-- 
2.7.4


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
