Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4878196D89
	for <lists+linux-rpi-kernel@lfdr.de>; Sun, 29 Mar 2020 14:50:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=frv6mVnEw/br0okKvTGH46aDdtxe/2/KuCtZa30/MPE=; b=IEX
	iIcH7HXjyKvNOL7Q3IGXQq7jhnOGtM6qWyt1VttGKxXTxsuhSoeidj6JxtmcU1gT/KkSPhljuCFn0
	GZcGyuLZUGj50di3CMAnfZq5rtnERq4yk8QECYo520wXVrvCb9cUtNcppkb/Tgm+Xc4VSIpZze16O
	DeGZIuUPfZ8aMggqnCB8w6PlOOOIab694NeGIpCb4BiZYdJfxW3OaaSvdyKmEfQzc5rhdUacP0k19
	PgY4WmItcnmgYp/eRstXfMTlekTR5mgyyhL1zuZ83cGw30NcTMypNGmQoW7lTauQHsJ3aIPQfLK9B
	Lr5zPG6gUDVj4N7rnuwBnPj5IyNgTQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIXOt-0003JG-UQ; Sun, 29 Mar 2020 12:50:51 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIXOq-0003Hw-JF
 for linux-rpi-kernel@lists.infradead.org; Sun, 29 Mar 2020 12:50:49 +0000
Received: from localhost.localdomain ([37.4.249.171]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1Mk0a0-1iuE6r1Ssi-00kLUd; Sun, 29 Mar 2020 14:45:29 +0200
From: Stefan Wahren <stefan.wahren@i2se.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>
Subject: [PATCH 0/9] staging: bcm2835-camera: Clean up driver
Date: Sun, 29 Mar 2020 14:44:52 +0200
Message-Id: <1585485901-10172-1-git-send-email-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.7.4
X-Provags-ID: V03:K1:b/8SEi6dTJcfQ7tJbccvi8pWqGn9G0aN6VkhKPAs6CHXwAwlp+9
 nWAbg4fBbz7G9RmbPtFhONeqPAshBZDpsmNDKtrgjFGVldlCy8cJUEKf2GAQsOP4WVcQE7h
 yzpkmpWufPA3mnnr5XW+QIJil7MSz8MMGko54c3ev9iLDyafvr2kh96/2eo1r2Np7jn0WT5
 +GnA2EgA2caqRE2aVrOXw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:EYXUlPhn+88=:V9hT3MHIjxMJICzqn/MXOJ
 LQSDMOiiPmu1DSl8vNzz0QXpLB+QIeAI7E1jE1bWWw2S+ZhRgDur/F4SeqdvFbi/Il68PPxmR
 XwMJ2vKiKdcXRSMJmiDZaxboxlGRoSM+F0wJZhiLl5dBOpSfrsfeaLFrkLBb5SqUNuFYD4cZu
 v+efSABgSuN72YBhwro19KPUIQkQkFPuWPvM90XB++U9fD6TiBHoutX58orUQMJrzbjrS21dc
 9GzgM91D0w3c88xy70D8G1h71gVxcxFWoKD9lKz4/waxlr54jlqNAWMIVyzglrVSJSunbvHRy
 qXd/DY9IvfsOC1nqOFB5lhwOB+3BmTMIP9junc6IowPLzk1S4Ai04Bcf4qo8lOVGKm8VjZb7z
 b5mGV8Hj2mt4+1Lt67QnKglvUpJ9VVM1XiANAeqQHI8b3y2tcRcDnyUPzgV2/eVaAIWGxld8m
 RpCUfAW3nb5WNIz6GgZ2eaHbjIjXLkI3ZvVbRtwqXDRYygihM7vpfGaN56xn++rD7KH9LqzYh
 7Yl5g0Lq63X+Zv3bBrDcSM4SsmJlZm1o8u1JuJStF01oXbX30ee7d3eSUyt6p0mOaUsvdLWyg
 AKarNTlXqGd3kp1GPOJX5cXG6ZlFarJTC5hxcuMvY+wppiAyFJBVVxCT8lEbUYciGeasqNsDw
 f7EK+s72mFWnU+7Pvwd5FUJlbIk9uUgv3OiZuPtb/ii3Lq+Tdqu73mmBMzmPJn+0KBnd+jYuL
 lZsZEO/gXFsCxNfDGynEIt4y2iqY5Zz7ZHmukvELuzu95MgnEJmx6lJ6+iytXmFtRa7HWEcp1
 ibnfbJqb69p/IraOivV3Q1iMKgPIBYmhm1nzvI3vGL8h5PVsHvM+atIO7g0hXdHUn7hro+C
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200329_055048_919343_CF6D167B 
X-CRM114-Status: UNSURE (   7.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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

Except of patch 2 all these patches tries to clean up the bcm2835-camera
driver.

Stefan Wahren (9):
  staging: bcm2835-camera: Drop PREVIEW_LAYER
  staging: bcm2835-camera: Activate V4L2_EXPOSURE_METERING_MATRIX
    handling
  staging: bcm2835-camera: Make struct indentation consistent
  staging: bcm2835-camera: Simplify set_framerate_params
  staging: bcm2835-camera: Move encode component setup in its own
    function
  staging: bcm2835-camera: Move video component setup in its own
    function
  staging: bcm2835-camera: return early in mmal_setup_components
  staging: bcm2835-camera: reduce multiline statements
  staging: bcm2835-camera: reduce indentation in ctrl_set_image_effect

 .../vc04_services/bcm2835-camera/bcm2835-camera.c  | 382 ++++++++++-----------
 .../vc04_services/bcm2835-camera/bcm2835-camera.h  |  62 ++--
 .../vc04_services/bcm2835-camera/controls.c        |  97 +++---
 .../vc04_services/bcm2835-camera/mmal-common.h     |  18 +-
 .../vc04_services/bcm2835-camera/mmal-parameters.h |  14 +-
 5 files changed, 279 insertions(+), 294 deletions(-)

-- 
2.7.4


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
