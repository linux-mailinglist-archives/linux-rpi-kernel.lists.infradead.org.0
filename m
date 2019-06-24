Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7169951E02
	for <lists+linux-rpi-kernel@lfdr.de>; Tue, 25 Jun 2019 00:13:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=AfGywOXRhMAZ10nsePZRrpbRA0mQJ0UHQdB5yaArgJA=; b=vDw
	ky6ce8/aQs06kZ5NVRzO540HkmWEBi74rJKnw4p2aPhcbGt2rlegf6KsjpdIsM6/CCoKyoW2foHzq
	Y1WfNPlcvamDNm/UXsmvqizvY3BHHYZ/RY0J57wqX7XhP3al96tRBjmVhgafLMgJ+c55QA5qj0ptZ
	DmDJk0YJ2dN/aaU8EGZYr1mIDSqP9TSIwd7tbCCA5sUiEQuZ44352Xt/Dk6TqYIJSvz02hGDeEmMM
	CUoIwNezlrKPkUg5Bn+eAr5ao2RjGdv7+EBdsx3EYPFSOLg687aieMFBfieE11gvfq/aPDexVW/hT
	o6rzz2Br431DBu5LR8PwthQErZk3LoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfXDc-0007DL-N1; Mon, 24 Jun 2019 22:13:44 +0000
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfXDY-0007CY-Gy
 for linux-rpi-kernel@lists.infradead.org; Mon, 24 Jun 2019 22:13:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1561414401;
 bh=GysLsYTuZsd/CXGs4HdO1VCTJil5RrdvuS6/TiPl2bY=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=CGIuimCpdUTiOV1K8ZCWxHAskUnqvpQWsKczJlN6C56j8+2Tw/86X9PaEgXUxpz21
 vLqMlARZOx3MoiCCaa+lfusw/5TdZ612o5z5uzTYyhlE4V4aQ9e1yZppkHNSRvMFoA
 sYwkmHT4+fAdBEEK9b0UYjw6vVkz9VpUGU9kwLeE=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.111]) by mail.gmx.com
 (mrgmx103 [212.227.17.168]) with ESMTPSA (Nemesis) id
 0MKYpv-1hguWc2RVf-001wNW; Tue, 25 Jun 2019 00:13:21 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH] staging: bcm2835-camera: Restore return behavior of
 ctrl_set_bitrate()
Date: Tue, 25 Jun 2019 00:13:15 +0200
Message-Id: <1561414395-12518-1-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
X-Provags-ID: V03:K1:LGa8UAO+GzmbgvlLItsNffmxnvrhpUjzzhEbaoSn7FwAXOkBTQT
 CXW3GFoFMF7ihP2FNuGybonNAe4XC1IG1wlefi99zYppeICDE1DXNEfp72vJtW+hdWbIWTv
 rQGf9V1DQzVE6avn/XMprdK5kasTgjwFYL1ePyQdxClEBcHaYQFYCkmYu3B0wvQkayY3VwX
 I5OkkpT21gvRetaja00uw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:NjJkG8Xb29w=:CFuXM4/BeBw1RHflSUg+wT
 DLCtoqPccHOy98ClrHyjRkvcvSalof5xIx+mzBrGpL3mMXOhQHWlhWhW/Nc97+cE/o/zbc46e
 Xzu63C68+DescTtQQqA6uGw86cxtiH/orBi92mgVYQu1jRQhgsfy3wLgpZtmP7DL2+HDxX+5O
 jchC3c47rzKhzvmAlIOKqaTIJsGCW7A9Cd52eELlSZkT80cB5DIF2XHqB/j7vBlLzp3HapQZK
 RdhI4PxJ5IUDWi1Sf9I2POV/BfejX89eSBNrQN9DE4uxHkINg7jkAs4bm88qIDUw8Ud2paeof
 6GTXwqSKt788XBkWivmWL7ePrvKJgvvYnrbRSiWNqDoY0sQsSTUlxpGW5QYZRSJ+c909qSYKE
 ka9tOuWtp/Ps3/YgmLIPnpr2MU4ZKL71djgA7HTBC5FqKJfAe52NGuJd4KDIOFh6YogawSG+5
 cSUQodcaGNfqRBI8pKmx9plGVLgvLPMkfRx7h4Am3xQ40NkmvxGP9akWpDF4xx9MoFrRG5G1e
 keHPdyWZbJRSDjW4fHTpIYivXC7kkidVd4V6XH0lLleoXlAuVoq+E35/Lr0ee4K/8KiuX/yYh
 ELD6gLdVEZ5/yB74NMonP4WL5E973IJ35D1YmdPx+hwT9BQBa1F6jSB0A64s5iMapT3t2qNYW
 1hnxusRTf9/ADzValJX0zIG49nCaNoWliIaExu7OKmYPPxhtAYoD9md5Pp1lf40Hnxw1BdN3j
 uy1SVj5R3yJ+4JiUQAx7cHK3qFU/zVmMvBwBBnapQJas5jxas48BZLfxDlZ6DoD9b9mUsZGta
 FLmePmnwcyWcRaQkKyOndZVORG/qhYLNR9ywLYHKxJcGVpKOKfeLJBA1TCtJqCS/ogtmu4QL1
 x9VvrbSBjAcePZmdfDR55iQx07QMqxIQq102+rxcwI5TuyrgENtG5IbmcJ6qhVTIJVh1Wo8uX
 1WbDLWUW1dYV6m2nGVNZ0EcD2pYXVQWY=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_151340_862999_CE3842E5 
X-CRM114-Status: UNSURE (   8.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.21 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devel@driverdev.osuosl.org, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

The commit 52c4dfcead49 ("Staging: vc04_services: Cleanup in
ctrl_set_bitrate()") changed the return behavior of ctrl_set_bitrate().
This breaks probing of bcm2835-camera:

    bcm2835-v4l2: mmal_init: failed to set all camera controls: -3
    Cleanup: Destroy video encoder
    Cleanup: Destroy image encoder
    Cleanup: Destroy video render
    Cleanup: Destroy camera
    bcm2835-v4l2: bcm2835_mmal_probe: mmal init failed: -3
    bcm2835-camera: probe of bcm2835-camera failed with error -3

So restore the old behavior and fix this issue.

Fixes: 52c4dfcead49 ("Staging: vc04_services: Cleanup in ctrl_set_bitrate()")
Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
---
 drivers/staging/vc04_services/bcm2835-camera/controls.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/controls.c b/drivers/staging/vc04_services/bcm2835-camera/controls.c
index d60e378..1c4c9e8 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/controls.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/controls.c
@@ -610,9 +610,11 @@ static int ctrl_set_bitrate(struct bm2835_mmal_dev *dev,

 	encoder_out = &dev->component[MMAL_COMPONENT_VIDEO_ENCODE]->output[0];

-	return vchiq_mmal_port_parameter_set(dev->instance, encoder_out,
-					     mmal_ctrl->mmal_id, &ctrl->val,
-					     sizeof(ctrl->val));
+	vchiq_mmal_port_parameter_set(dev->instance, encoder_out,
+				      mmal_ctrl->mmal_id, &ctrl->val,
+				      sizeof(ctrl->val));
+
+	return 0;
 }

 static int ctrl_set_bitrate_mode(struct bm2835_mmal_dev *dev,
--
2.7.4


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
