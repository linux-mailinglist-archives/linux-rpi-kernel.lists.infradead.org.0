Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2DED148A68
	for <lists+linux-rpi-kernel@lfdr.de>; Fri, 24 Jan 2020 15:47:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=T56cz8AuMGev1wOe38dj2g+HW0LoSFX+rildVGMss7U=; b=pxZyx+4UDn0l30
	uCgBg5/yvV25QQMm2tT6sR78o65mwIPq0h5g0dzYxEeK1ZM1VpHkAzwpKYDtw6pe0m/u/8PAeG0ht
	EBOwGP5Ur/iTPDRbMPJKPChw8909Z1JEqMFYbsAKhNNF8mg9bwEITxSoeTn9mGohtfYVjMBieqQBG
	QDGxFrD5/QxeEXYuyjNTFzVwyG7aA9mkefo8YQ4T+GUm+punhqo/QNe6pGvzOmE6m6nI6jC/OZwPu
	M5QRWSTZ/l7IOluaMxPd1mG+LKrFTI+BDUb7hH9kko/w9TuNvj0aX2MKA6qxn1EREjvhcuCs0MnNq
	ULdVhterLa8VTMTPQggQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iv0F7-0008KM-QE; Fri, 24 Jan 2020 14:47:29 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iv0EC-0007bZ-A5; Fri, 24 Jan 2020 14:46:33 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id D7510AFA8;
 Fri, 24 Jan 2020 14:46:29 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: gregkh@linuxfoundation.org
Subject: [PATCH 00/22] staging: vc04_services: suspend/resume cleanup
Date: Fri, 24 Jan 2020 15:45:54 +0100
Message-Id: <20200124144617.2213-1-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_064632_491355_C1078A2D 
X-CRM114-Status: GOOD (  10.32  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

While in the process of preparing vchiq to support the Raspberry Pi 4, I
stumbled upon a bunch of dead code in it. Which this series deletes.

Ultimately the idea is to clean up vchiq_bcm2835_arm.c up to a point
where it'll be easy to join it with vchiq_arm.c, which IIRC the TODO
file states, should be the sole responsible for platform code.

With this we'll be able to introduce RPi4's functionality in a cleaner
way.

Overall it's a 500 line clean up, I tried to keep the patches as small and
manageable as possible, but I'd be happy to squash them if you prefer it
that way.

This was tested on a RPi3-B using the camera and HDMI audio and
vchiq_test app.

---

Nicolas Saenz Julienne (22):
  staging: vc04_services: Remove unused variables in struct
    vchiq_arm_state
  staging: vc04_services: Get rid of resume_blocked in struct
    vchiq_arm_state
  staging: vc04_services: Get rid of resume_blocker completion in struct
    vchiq_arm_state
  staging: vc04_services: get rid of blocked_blocker completion in
    struct vchiq_arm_state
  staging: vc04_services: Delete blocked_count in struct vchiq_arm_state
  staging: vc04_services: get rid of vchiq_platform_use_suspend_timer()
  staging: vc04_services: Get rid of vchiq_platform_paused/resumed()
  staging: vc04_services: Get rid of vchiq_platform_suspend/resume()
  staging: vc04_services: Get rid of vchiq_platform_videocore_wanted()
  staging: vc04_services: Get rid of vchiq_platform_handle_timeout()
  staging: vc04_services: Get rid of vchiq_on_remote_use_active()
  staging: vc04_services: Get rid of vchiq_arm_vcsuspend()
  staging: vc04_services: Get rid of vchiq_check_resume()
  staging: vc04_services: Delete vc_suspend_complete completion
  staging: vc04_services: Get rid of unused suspend/resume states
  staging: vc04_services: Get rid of USE_TYPE_SERVICE_NO_RESUME
  staging: vc04_services: Delete vchiq_platform_check_suspend()
  staging: vc04_services: Get of even more suspend/resume states
  staging: vc04_services: Get rid of vc_suspend_state in struct
    vchiq_arm_state
  staging: vc04_services: Get rid of vchiq_arm_vcresume()'s signature
  staging: vc04_services: Get rid of the rest of suspend/resume state
    handling
  staging: vc04_services: vchiq_arm: Get rid of unused defines

 .../interface/vchiq_arm/vchiq_2835_arm.c      |  43 --
 .../interface/vchiq_arm/vchiq_arm.c           | 496 +-----------------
 .../interface/vchiq_arm/vchiq_arm.h           |  81 +--
 .../interface/vchiq_arm/vchiq_core.c          |  16 -
 .../interface/vchiq_arm/vchiq_core.h          |  15 -
 5 files changed, 11 insertions(+), 640 deletions(-)

-- 
2.25.0


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
