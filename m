Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F586196D73
	for <lists+linux-rpi-kernel@lfdr.de>; Sun, 29 Mar 2020 14:45:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=B5xhqkJHNiU4fb9Dfg0YGjp/dxGGOZGoCNA/W8fMdWE=; b=rlQxcItsKCmPvPegVpvnWtq/VG
	mHtoWnioUq5JUdTVH6E5dxdcfWG0u3R82h/yE1aloIErUrgqOJQman2UMHOIhj/s7pYyk08oDQM5A
	7M29XUQfJhD4OUeOeHsjXlzSv9ds0gO9EIytF9U6BFAPxKGTZOzHVNNXLycweJzaBT3hxEilZtDhQ
	IaillzC/Qd7qWtdMr6dsM0QeeXFX9jtct2xgPr2IsfH/k6If7/oPTQHm98s1hwlhivWlev8wFNPiS
	/MmmG9lngvoAeYUO/yFJQRVeoBzwsLyZldky4VWqC03BFLuzm9igmq4dt5i7ZLBPkPoZjgwid1mOw
	suQffZew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIXK0-0001Mm-Ee; Sun, 29 Mar 2020 12:45:48 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIXJv-0001H5-13
 for linux-rpi-kernel@lists.infradead.org; Sun, 29 Mar 2020 12:45:45 +0000
Received: from localhost.localdomain ([37.4.249.171]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MWAf4-1jqABk32V8-00Xdvx; Sun, 29 Mar 2020 14:45:30 +0200
From: Stefan Wahren <stefan.wahren@i2se.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>
Subject: [PATCH 4/9] staging: bcm2835-camera: Simplify set_framerate_params
Date: Sun, 29 Mar 2020 14:44:56 +0200
Message-Id: <1585485901-10172-5-git-send-email-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1585485901-10172-1-git-send-email-stefan.wahren@i2se.com>
References: <1585485901-10172-1-git-send-email-stefan.wahren@i2se.com>
X-Provags-ID: V03:K1:5YU3oC2y94BsZHHYP8TndlwcyUp8J4pyLiOitJbi1VPt2GGSjFF
 37wl4zqf46C3NQUFXNKKmkwVwCnOeXYiCU67dWN9GrQyc5nH5PmCNoY6YETmoTizJ3cjoNA
 wfKZAowjXiIY1MN4qYJXzKqUs/oSH7ZaaLbCWocpW5ODaAtM/EjxV69SDITg7mOwK/9XPJW
 gG/QciRNyUDsMiXbohZDw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:stQiyL73QVY=:5r1KvvNoqMUZdhoZGKZMNt
 cR81WvcP+ySBYe7qdS80bNYaepAUEeDsm5Gg/M4NQ0Biq0SjZKnQqz5WEkccfJpHrR+P3maYG
 5b2yKbxr1a8tkblk8s7UDStlTENl54/QRpxL17jSGVVTrQfmcnIrCuT1Kor3lNWTLdg1GupHU
 SeHaTSJWdqsug6S1SdFaZXQNAU5HOTHF/El9t5VD0SJ5RPrGhYkTFwXo93HvbcPqYSeLVCEFV
 3lUzC82U4v5QSjgp4Z7tNmKuW6zPr2S8ALIbGkkZHNNlmnpCpH7WSlK9F8HMUTAKsVltNG2Ia
 C5CVohbE5TOs2423KSk4v43Zey1EJRfkcqst4b24P7TFbMfL4oD2U/8+TTdOv+A+nQk4ccADE
 Bf3Syr2A+t8AOffGccvpmaxk90IA4O4OlLuSXimDWdrxbsf4itIPF3ejokVnyqIrN3Sczu8po
 kyWQx+Y2ZnNiT/zGjGpqWDMVAwXehpt8BBCcz0ZWJ5CZtT6zVMIcsHtu7rrFJr+BqKI0skukk
 t/82OTMIYXtUTDueu8flSd44iCuflSD3TCf0C3OH7aYzPAkxo6xrlSRAqKD+o2QQ0CGiacEuG
 +YhtMJSvASlRXJHQMSrhYecBTKy9zllku5fUVjdh9lP9SpStxYbfnj9rDcyJD4NyGoVDmr5JN
 FHOvGav9OnhWLt9Rsta5gElumgFRBS6Mel8rOoy0HlhYzfi4Sfnd/B7cvBykI8YXBom13YnWN
 OnF1zwHRr3+R5wryYfsKrVgWn1vGfPPd8GUrF2DortbQbLWOlBT0F6Mb+Bo06E8RCZNW4hJ8+
 Tg8f05vbGDhSnqFq5pPKhoQB5WWO2u7rPaoIIYF+CMr9BeZzo03zKidSVbOt+hScUIs1It+
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200329_054543_369569_BEE481FD 
X-CRM114-Status: GOOD (  11.12  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
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

This simplifies set_framerate_params and avoids the multiple assignment
in one line by moving the fps_high handling out of the if statement.

Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
---
 drivers/staging/vc04_services/bcm2835-camera/controls.c | 15 ++++++---------
 1 file changed, 6 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/controls.c b/drivers/staging/vc04_services/bcm2835-camera/controls.c
index 275ff21..e46f150 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/controls.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/controls.c
@@ -1280,21 +1280,18 @@ int set_framerate_params(struct bm2835_mmal_dev *dev)
 	struct mmal_parameter_fps_range fps_range;
 	int ret;
 
+	fps_range.fps_high.num = dev->capture.timeperframe.denominator;
+	fps_range.fps_high.den = dev->capture.timeperframe.numerator;
+
 	if ((dev->exposure_mode_active != MMAL_PARAM_EXPOSUREMODE_OFF) &&
 	    (dev->exp_auto_priority)) {
-		/* Variable FPS. Define min FPS as 1fps.
-		 * Max as max defined FPS.
-		 */
+		/* Variable FPS. Define min FPS as 1fps. */
 		fps_range.fps_low.num = 1;
 		fps_range.fps_low.den = 1;
-		fps_range.fps_high.num = dev->capture.timeperframe.denominator;
-		fps_range.fps_high.den = dev->capture.timeperframe.numerator;
 	} else {
 		/* Fixed FPS - set min and max to be the same */
-		fps_range.fps_low.num = fps_range.fps_high.num =
-			dev->capture.timeperframe.denominator;
-		fps_range.fps_low.den = fps_range.fps_high.den =
-			dev->capture.timeperframe.numerator;
+		fps_range.fps_low.num = fps_range.fps_high.num;
+		fps_range.fps_low.den = fps_range.fps_high.den;
 	}
 
 	v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev,
-- 
2.7.4


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
