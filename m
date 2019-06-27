Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4956658AB1
	for <lists+linux-rpi-kernel@lfdr.de>; Thu, 27 Jun 2019 21:07:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=YIHoRu24Zo1YLd6H+RFhLzNnoVNevKh+DlUEgrAwSH8=; b=UiTQlQ9LoLicA9v2BKIJJLsoUY
	+ighZjRcyZe3SI9NixxkylMYTkOFJpUiEE1s5xfT1cnxNSU2oe37Wvze5vKf4vFppmNtvaDgmA0nC
	kYCqUktMDCkiGI9LXxZjOjvry+PoaOILb5JxNTONp8g6xuwnGLRsn9IHhji4W0spy7p6pwL/10vcF
	G3nW/W2IkP8lmibxufmhMy96P9XSW+nUJYAQ88sPU5gfePDU4Q3I+0Ky+U2efW13+nA3oIg1wnyje
	cTXpnmVdB6YoYuxAbHb6jM2DWhL+/MR1eID226t7eL9qZ/LUpG1FQ5+dTBxOw2L1Jjb2XgbQehezZ
	50tny9sA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgZk4-0003nE-Iy; Thu, 27 Jun 2019 19:07:32 +0000
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgZje-0003Yu-Ua; Thu, 27 Jun 2019 19:07:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1561662414;
 bh=wbvRD4gZayXs5feDvbdQH+nNcCfD44PAYVIgXWdJUDQ=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=BRHB2R0X4TNtTvYYrmJsJwLW7FTRr7NXJTMG/Yv/h8BRe9WD8NgB6fLF43GiqcHFZ
 4PjX78ZO6mk+nPogbzYkFF2btZHAWh1Fjb0BeUJCBo5kEbw3K+6ZLs6xy3BtyaGX3F
 VelCFtWo+dLMo/xuWGHYtBV6zEs7Zibz7ubkB44Q=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.111]) by mail.gmx.com
 (mrgmx101 [212.227.17.168]) with ESMTPSA (Nemesis) id
 0LiHc7-1iKbC103Ax-00nRfW; Thu, 27 Jun 2019 21:06:54 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH 25/31] staging: bcm2835-camera: Correct V4L2_CID_COLORFX_CBCR
 behaviour
Date: Thu, 27 Jun 2019 21:06:20 +0200
Message-Id: <1561662386-23045-6-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561662386-23045-1-git-send-email-wahrenst@gmx.net>
References: <1561662386-23045-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:Omp5apnrgEsmpUXsU1fQRehbMLMejLw0me0mFJp1WOPmGsEK/LL
 +xbXWkNp8DZT/yNnks9b0rc+oKnyhcKwjw60Py1c9KST+It9Tu1YDPhLhy3d7znO/3e1pJP
 pcsbk/YjU1k/qr5F7Pmb1IuQ52C4gaDbSUFx3FmTvtuAf1liY9o4XkAs8VyLm7KMg9rtIoQ
 +u6owyMRobELSw4qVylcg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:bBDowvqWoGc=:Os/FdnRnkN8zTlHOaR8Qd4
 DrKNstGGKMed/h4EZuRNihqiM1o/YxCo6kpTeTaTcre1FPFbYkwPzFGraNR3GB7V23VV/6aJX
 GtaIh9CBRSZxhKwDjO/qt68Kru+KNz/YWBKM4Zaq5PhQzc2AYLeijjQFWaWu+psqf4m9d7bmK
 K/k8ebU8Be/3NVatbrQqb0PBxzawZN1ytj2h3NlKIy3s4D3e9LrzaCPVSm1j4ovX79r78AzDd
 NpHSQCtX7MfJv2HaU7A7+PWia+SuyseXjt4ncadNAU5Ia4YTKt9lyJsyvwrI96apG9Uk0MK0+
 a42803Lt/8W5k0iM44ko6GBeUUCKFAlOi30EvGrqxrOPVXYxmalOJk0cdmwfgdbjELOyzqfpJ
 8DRmIqkb2g4fSJe2XOmvL9hYTE4dldxtu+pvGhuJDhRsux0B0GDVB1JTzZYKquw1l35wrOcQf
 vhZbs2y8IZk/BJ1uMKcq2/dl5PmxUQbaZocrrTFolu3d2lNf/6F6tG8ammdX87iDqsCGw9Wc1
 TdDRRedXN0unghSWrLV9tue4fdBud4dt8gtrkWwns39cIUxUQk0ie8neR/VI5wG0Otmz57gyY
 /xq6/x/xlqj9+OrgwWzdf1TuHez0bZEra16aLzrrFtG6w9we59McEWItrvA3HDYOFtLTNn61H
 M/pBYq2Qna8dxn8F/2+siPvtkcL9njyvoICZ79PQl8ZqfMzcfT37MCJs9CaBlyGcOyJFOrErf
 YnYhVfYWGXMiKfsZpaT0GDl7gBqlcx8xOH+JIKD6vbzsC19WXz5hax+dy5dqeh2M4ASrYSBfT
 zkCCwqT3khQh2+H/CbQjbcmFmKWKFptPK0vwKa4ow0hFOBCmjHHi0ek/X3CMwAz041G9eA9kj
 ZWKizhooihJpE/Kvofh2S4g8ZnPy1Ork9B3r3HPppYrjhP5zY1Wghrq8SHXRGlTs355wVp2SH
 uAFFqwhazxYeTogIdyr+Us1piEMtUFx1jdEF2QZTvIGJ7KFGh/bZoRwbYPkfzKqo1laUFnYDe
 Va/v/r3HbJX/Xhqo59HXHo2WmdEykVdhNLNRRMTXjjK3TsLoQcqHKSPtHXprKIwq6FE1e8JwO
 uLiYBhGfB1LwmE=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_120707_292496_F5B83F96 
X-CRM114-Status: UNSURE (   9.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.20 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devel@driverdev.osuosl.org, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

From: Dave Stevenson <dave.stevenson@raspberrypi.org>

With V4L2_CID_COLORFX_CBCR calling ctrl_set_colfx it was incorrectly
assigning the colour values to the enable field of dev->colourfx
instead of the u and v fields.

Correct the assignments.

Reported as a Coverity issue
Detected by CoverityScan CID#1419711 ("Unused value")

Reported-by: Colin Ian King <colin.king@canonical.com>
Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.org>
---
 drivers/staging/vc04_services/bcm2835-camera/controls.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/controls.c b/drivers/staging/vc04_services/bcm2835-camera/controls.c
index 038b9b9..b8aaedd 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/controls.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/controls.c
@@ -574,8 +574,8 @@ static int ctrl_set_colfx(struct bm2835_mmal_dev *dev,

 	control = &dev->component[COMP_CAMERA]->control;

-	dev->colourfx.enable = (ctrl->val & 0xff00) >> 8;
-	dev->colourfx.enable = ctrl->val & 0xff;
+	dev->colourfx.u = (ctrl->val & 0xff00) >> 8;
+	dev->colourfx.v = ctrl->val & 0xff;

 	ret = vchiq_mmal_port_parameter_set(dev->instance, control,
 					    MMAL_PARAMETER_COLOUR_EFFECT,
--
2.7.4


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
