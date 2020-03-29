Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26E99196D8A
	for <lists+linux-rpi-kernel@lfdr.de>; Sun, 29 Mar 2020 14:50:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xp75dr+e1K4g3xRLsgCJjYi0HjlYylGuMUAJ7+k96TA=; b=OvSW1OTFqtXNC0pOnV8m4N1XPg
	kZ5F2+4q4UYiXEsfD8x9O85rPDXiCl4WiDEtwy4omCl5/2b7EvJMRnOQX8j/cxqinf1rBze96qVB3
	VFiHUM6AJNQeKFzdXQeVQ1mlnR/iNJpZgV9RDiLA+BoA21+aT6hyu05h3Pi99IKvJkatuJUP1/ORt
	/gSNaCxi3PG0E7AbSHRvw7a39HL/OA+thfmzWTNEn9CNeStSj0xhsshejrU8WY3n7Gl4hLqbl4ipS
	dt3ByPH8VifzbwhR8Jh/WnmQDycOlSR7ungyIsA62d/D0gPF/bJszt/j02vvZ5HMTMTgHskCg99Qf
	eHeDhrwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIXOt-0003IW-BH; Sun, 29 Mar 2020 12:50:51 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIXOq-0003Hx-Cg
 for linux-rpi-kernel@lists.infradead.org; Sun, 29 Mar 2020 12:50:49 +0000
Received: from localhost.localdomain ([37.4.249.171]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MkpOZ-1iw9v42rGB-00mGts; Sun, 29 Mar 2020 14:45:29 +0200
From: Stefan Wahren <stefan.wahren@i2se.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>
Subject: [PATCH 1/9] staging: bcm2835-camera: Drop PREVIEW_LAYER
Date: Sun, 29 Mar 2020 14:44:53 +0200
Message-Id: <1585485901-10172-2-git-send-email-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1585485901-10172-1-git-send-email-stefan.wahren@i2se.com>
References: <1585485901-10172-1-git-send-email-stefan.wahren@i2se.com>
X-Provags-ID: V03:K1:oeXp9Lbrp2LOBHyY7yvptVlZOhB3JzoScY2M1TYSrMj5uk47RcS
 Ci23skkJDV77BED4d8v9baCy21tpcquDptTsoix8Wjr/mPKIRTAmpey22a1luIx51Lzoc4I
 Cztv8Ys0/3MJZy2BLOv0p5YIbULHvHk5+16VNBJhPsXTwuhmtABcoRBZSDqnNXFZjM9a41D
 EeoAmYGI2wjtQoUO7mv0A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:G3YpkJ7G7ls=:w8sVvDa+VDrWewGS64TpwM
 iJVz2zGdj1cPi6xBNr6O19HRoBlMClav9T549C28drlwriOAvf/5zzFsD+D6GO8m3zY7x0S8O
 ebjZW7eRna5QwtakDws1agTuoFOS94KXY4pmm+/acIePdftsGFjpRHyfnymfbQfNw27GyXAwa
 Zg6TilsjqsRXBBdFafy/xLNbncv0yBS6x/sytTKZGG+1h0oGw4ePAbSh6hQ8J622rS8v3XupJ
 zwBzNEr35PIzRwHio2Xlpo6mCpYgDj+6LIcApMDAHDO7AC59NNTBToDaqeyf5fAKNWg36hRcD
 uHmePE1k4kvqEaOeHsCjHnMqFUHzQc5PvXxxacb5Bl1euSJrtEumI4Qf/WSXS/Q7YPvjvIzrF
 xj4fIqw9zQbQl2MyuLHOe4mibKS28YFKHFKUsJMP0N9o3nJevA//CoIqG1RufJ4lRi+ig6t6T
 L2FKvTqLKG3MM0T8HH5lm2Z2D1HDX0RYYv+Glde5ofTquYrV8rm5cgMFVwY5vC8z+d574znnG
 tQOeiDmF0K36ZgUygb5f4i4Z5P++RrJ/VhsR7W6u/qN7B3xZ24GfB0G8bh3ykAftL4hbrfQl/
 wVK/CWV9+5JXVQNkuqQI+KGRKLdmluR+yAYtji6vnqiozNb5OAVSnNnkZ/jiyuDv1TTJSE/Lj
 sbxhqSAAGUkFSM7EjLj17QwCBZpZHJiwncyp9z8faMuDIoh+OcScCtEUGgfTrMx8xRYmSTBP4
 hiIxGsfPWOYaXnq+23COImXRUZv1ChiunxSAKJ+iD36l2x0WRogLV6gIwVfEa9Jqom8EPvpP4
 8DPNPy75uB344ZiBOOZba7WJErneNrh+kFFbfFfLOoKqc5bz9XjW3axa+neBQBIedYontyi
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200329_055048_724048_379C59A1 
X-CRM114-Status: GOOD (  10.76  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: devel@driverdev.osuosl.org, linux-rpi-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

This define is used only once. So drop the define and init the layer
directly.

Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
---
 drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c | 2 +-
 drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.h | 2 --
 2 files changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
index 597acef..ff2ba23 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
@@ -668,7 +668,7 @@ static int set_overlay_params(struct bm2835_mmal_dev *dev,
 			MMAL_DISPLAY_SET_ALPHA |
 			MMAL_DISPLAY_SET_DEST_RECT |
 			MMAL_DISPLAY_SET_FULLSCREEN,
-		.layer = PREVIEW_LAYER,
+		.layer = 2,
 		.alpha = dev->overlay.global_alpha,
 		.fullscreen = 0,
 		.dest_rect = {
diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.h b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.h
index b5fce38..c426a5c 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.h
+++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.h
@@ -30,8 +30,6 @@ enum {
 	CAM_PORT_COUNT
 };
 
-#define PREVIEW_LAYER      2
-
 extern int bcm2835_v4l2_debug;
 
 struct bm2835_mmal_dev {
-- 
2.7.4


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
