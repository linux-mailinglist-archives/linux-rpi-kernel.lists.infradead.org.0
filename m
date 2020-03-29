Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C572196D7C
	for <lists+linux-rpi-kernel@lfdr.de>; Sun, 29 Mar 2020 14:46:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=sJiVr204Dj4D3yNZw2hLKqCkWejxUK/T79nbPiCSEKo=; b=Pe3dD38b1Q35/wV9C3yzTc3d5D
	aJPMnkKhioXU3zDjJUpvfFknGpyQC5HMYmnpmrp7/EqVLjhSIsBHGY3oUjah9D+eKf0/6UoQ70gPA
	2hDyEcauUzJUgQNoP33pJED9CX+FkMFv7+bPofQ0uOqWER3PkAd2+9x1RwOT4fPAAbfFDuhxJVeCc
	xuEArYPtSPcnR0p0hVv4Yb4CX7FmcEODsxqvmoVEwr4jgiHafdJkyvZdPofLC/2z8QxRl/+ne8t7T
	QDuRME6dP9IywPBnCfB8vKCHU9N63OwEZYeFWisGbntJ8E98UEG2aYtG70pYkw6xWPjRIkqoDsnuy
	Xoc39Nbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIXJw-0001Jd-Rf; Sun, 29 Mar 2020 12:45:44 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIXJt-0001HC-Ui
 for linux-rpi-kernel@lists.infradead.org; Sun, 29 Mar 2020 12:45:43 +0000
Received: from localhost.localdomain ([37.4.249.171]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MOAJt-1jh3Nw4BgX-00ObWg; Sun, 29 Mar 2020 14:45:30 +0200
From: Stefan Wahren <stefan.wahren@i2se.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>
Subject: [PATCH 2/9] staging: bcm2835-camera: Activate
 V4L2_EXPOSURE_METERING_MATRIX handling
Date: Sun, 29 Mar 2020 14:44:54 +0200
Message-Id: <1585485901-10172-3-git-send-email-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1585485901-10172-1-git-send-email-stefan.wahren@i2se.com>
References: <1585485901-10172-1-git-send-email-stefan.wahren@i2se.com>
X-Provags-ID: V03:K1:/Ltfqj7IJB/fOsZzoGrROP51B7Er3XY/LaqKCSdqaqIlnRZfUvV
 6lLx6AsFbJp4FK7dGZN0cNgAvvdzSRDFr5vWeOZE/j79yDgpsZB/daEia4Rv6mPBckVgOAW
 PNYcH/ripqJnufRzmeTjZS6nfkW3KJY/IA2Lffck/0DUA31nSMmmk36+AB+lzM7+pvXEUrO
 lHiLzQq1aS9ZaYYKZXMDw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:URTCvjr8+IY=:kMqYM/Kf+eybEztMskdEe9
 ZRbA59G203MzmPq8g3V6UattihxYxwjoVFyQSVxWTWbkz5ena9TnKtijDMhF8BvJhvcf1PA0d
 uzzqhOQp1QT6E3SiiPXWQRYxx8+Hp1+D+xrmNuE358RU/dA/6U8s9BrK+WR8H08/RKvTnfnWd
 EDyWXbzTMl0HHEMqpgeRcxaK2FmRei/KNUNWmGHXGfsHvctftD6STNJwv3Ma9wJE2J47bN1nS
 YMXE6LHpuEd4FDJbWCkCVTM5xWDdVWte6NxR9L1yEzVnVgHpSXCRpVBMV1bs8n4LxtQzINJr6
 thHiu6QWG6srbVXYSndgzc6APvo5c4RdLBFGkqU6aKULgbSjLAWHTkSpr6Axt4dBEfZ6bj6xn
 Mp1+gZXfnAwwmrArk6ECpk2eNfY3Yx4PVwcakyVQtd8awa7DNfXi04VXvIcDxtzotdwX4EFbO
 FtRIDaKlZY835yEkzxaPjZRkv0nbOZzCAVgQNqN7nFVoNvhr0aZ/p4TMnCNHWxkh22e9BiaXt
 BSjFiv1bIgzI6LmBRfsgeppPpE4HvBztR5zeY5tuaid8hlAvwD/OkVjyKMb92ZA0+nw/RP3D4
 DpSWZ47eEJfMHTx+pAy1Z3COn0wMYjPL8/eh9jQgncCG6dnGWPotP4Nvz6aTjcMUw8PbxSsnb
 3G2VKdsAuY4XtCVGKip9I4yhmS76n82OQnXqAfXA3TIOB3SFnXJWEti1PF5DoOKb/3T3KtE2w
 Zma7RrBnpc7tQPEF11Tv5Zf1xbwZDmpyG/EXhtmr7LCS3nIXdHJwXO8l5qyn3COAK+Q7RzN8Q
 OmarClc38GiXH+SK8DLi6mTtFNzlFzjJ3c7G6kQD8kbvt1E+/QwThSuFxIgKLY8uI8x5J4H
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200329_054542_296201_2D48070D 
X-CRM114-Status: GOOD (  12.29  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
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

I don't see any reason to keep this TODO, so activate the
V4L2_EXPOSURE_METERING_MATRIX handling.

Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
---
 drivers/staging/vc04_services/bcm2835-camera/controls.c | 12 +++++-------
 1 file changed, 5 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/controls.c b/drivers/staging/vc04_services/bcm2835-camera/controls.c
index 5137fcf..1d0caf4 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/controls.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/controls.c
@@ -377,11 +377,9 @@ static int ctrl_set_metering_mode(struct bm2835_mmal_dev *dev,
 		dev->metering_mode = MMAL_PARAM_EXPOSUREMETERINGMODE_SPOT;
 		break;
 
-	/* todo matrix weighting not added to Linux API till 3.9
-	 * case V4L2_EXPOSURE_METERING_MATRIX:
-	 *	dev->metering_mode = MMAL_PARAM_EXPOSUREMETERINGMODE_MATRIX;
-	 *	break;
-	 */
+	case V4L2_EXPOSURE_METERING_MATRIX:
+		dev->metering_mode = MMAL_PARAM_EXPOSUREMETERINGMODE_MATRIX;
+		break;
 	}
 
 	if (dev->scene_mode == V4L2_SCENE_MODE_NONE) {
@@ -1045,8 +1043,8 @@ static const struct bm2835_mmal_v4l2_ctrl v4l2_ctrls[V4L2_CTRL_COUNT] = {
 	{
 		.id = V4L2_CID_EXPOSURE_METERING,
 		.type = MMAL_CONTROL_TYPE_STD_MENU,
-		.min = ~0x7,
-		.max = V4L2_EXPOSURE_METERING_SPOT,
+		.min = ~0xf,
+		.max = V4L2_EXPOSURE_METERING_MATRIX,
 		.def = V4L2_EXPOSURE_METERING_AVERAGE,
 		.step = 0,
 		.imenu = NULL,
-- 
2.7.4


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
