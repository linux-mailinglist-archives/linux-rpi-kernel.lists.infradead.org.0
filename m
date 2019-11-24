Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04BE010846C
	for <lists+linux-rpi-kernel@lfdr.de>; Sun, 24 Nov 2019 18:49:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=s3WHvOMKB5PEKzYvLHDQIL5LmhM5Z3+9FCzne//Vtnc=; b=Bmy
	lHhheXcS13flWPw008bYcL28MZEZXIuLkmdVnTN86df7+I0owLENs70V5gZgVF9V3O2Nz6iZRss8p
	rCa8H4a9lnUMQS/CmHzb/swMW3bST1/9I8nMBirByelAY/YEgfwuVM4humAPK0QBR8G8Nt06E+nCU
	IgPSFkvZrastBzje72r+7sFCjogC6nRS8RCUAPsAjkxn+c1LXJA9gFtpdGuIAJ5KkdidfawNiZxI+
	AOSiPNHpP4F2+bku6nZDRPJtcMrixzWFRJ2MJqCnOHwRa/9h438oY+fpDU6GDJeReoOvNit/a8mob
	6ozUlPnF5UXvXpAvCHlRPrP9LVHAKMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYw0n-0003z3-Oy; Sun, 24 Nov 2019 17:49:29 +0000
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYw0k-0003yZ-4g
 for linux-rpi-kernel@lists.infradead.org; Sun, 24 Nov 2019 17:49:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1574617754;
 bh=jQma2DMj2OUi4IPrSs74a2mg2cXB6B2ePPUkQZc5R8Y=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=cGgTkaLv91MXn8FFV24WZNykVu73qFhAgjua3LvWKj2Ujq4B4iArjaHS4K0BGWtAP
 +3Ke83aaB8Ilmaoe127yfU66sttBmYL+8aQnCxqAMggxjZsH4tFIW8H/LNMnYOxzS3
 vtgnxSvZ8KvWf/7tVmQKF53VOrfFszHPU9C/DwMs=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.139]) by mail.gmx.com
 (mrgmx105 [212.227.17.168]) with ESMTPSA (Nemesis) id
 1MBm1U-1iggJa0Xm8-00CDLe; Sun, 24 Nov 2019 18:49:14 +0100
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>, Florian Fainelli <f.fainelli@gmail.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: [PATCH] MAINTAINERS: Make Nicolas Saenz Julienne the new bcm2835
 maintainer
Date: Sun, 24 Nov 2019 18:48:53 +0100
Message-Id: <1574617733-18151-1-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
X-Provags-ID: V03:K1:yxP93BJoRRCg5PQKqyRpoYwf8+5viy9m3Zo5KM0CcYx+07oZVOK
 1g2KmEWyKVOmdpQELfS2LTL3jU7/ORWc+GpxjNFyK+pJ+5eahWzLy24rwNxsnFVqoha3mvJ
 1Ez6ZV40QvzGr9mDLViRKYlNxpxjXE+FjwxTFtqy7veIhNZZddsnn/fPYHvKb3NGHF2bmxv
 9FSbU7jQO3zqIEcpBJhzA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:UYCg+ruJbMk=:CJ3HuR8QCyD2yvloLZTove
 jR5gbpG/yUe8IHyByPQR/y7BN8CHZ2OjPIcUupbZwZS9yB88iWg+K0/K3yQxLkuXhUzKUo1mK
 4wgLAcIQ/H88KuRbZm/hiAxxpbzVchU+i/UWwLhKoo3rUQeVUBHsc2tuIKtXtOR4FsrjI+TWE
 aHF2TxUWcXehn3uBE+xPas4cHi3GARiZM6S8eTYcN1oSA0fREerhXgH90l1gniP/cr0n6CCWD
 +6V4kSGbGq1mXmKLj64Dmsy1n+1I1j5cThXketnRX2XA56Un3ryDH2ezbo7UBD5khFz1lw676
 WxnZnXBiT+YaMofXlOZBAwpuB4ucG4taC4Xm7E9+AOSkRXVJQLiextByzb52BXYCnXQZEKqCJ
 jb22K4TL9AvawifYEU9N/CKDtLlkHDTuxhZRSJMZdJyn97e5uGKBtCxLUbIE6RQpe8KY2eQTD
 L7KrP4AySohGn4+xkPxp8dmSUvHsqQ/grBKj7ayL/8ajRP0WfyjSE5n2uZPUUb8XuQM+SJODF
 eLUSDxGQvrBP8EkQyykQnQpGKqxO+rNADUKQnBqA9RdMrcpGJquSBKg7ZuhhBYH5Mc63VxtWa
 67p6kjRgZlISEotq3rsiTjgafwyPMa9Q+8gA6PNmXR3HirCfzfstbBrWRfKOcsQ9OASCEp913
 PyugfFvqJU5EGVpv0ZmougjjEbs22kmlZ4Gkm0DS4AZnP4purwycJtfHButrRtVg4Q0zsyqDG
 jvsKSC9sBKgHTS1TmvVqZXbzOR1v4ru3mFzMsX9XoXYm2m+l/zrn8oEFdSzD7GfiiYL1Ff64H
 JX2gIf13PPbQuqYin1yVur76wPxRb/IIP1csxOrGj2TXv+3xFmbbByscwsMDprY5DjEzHK3OJ
 WRSVD0hbqVyQAQAN0bIBJENd7dWv0U6iACFDNCyF9Y+Z+gOgOE5pk2s9jVMAuCtlRt4B2npDn
 CSAADWAFRxvgRsLoIWPLaMDQQnqRu20S5DUO8hRydg4T2qTmC6p/flWm+TinAgNbqwc5nzTUL
 7dho9pbXettZ8F08/x0zR+bNDF9mQttiNmNuNhMFvq5eBZaZls/NnU4udwU4tn2ykYD6YiHSM
 r0P5WeAAUWco7Y9KIzQk4XRJWo5HaWRjkYAgUQrdOjHhPb7gJ0G8SP3sf2QfRvLlrHZcc7966
 oJbWGqqTvi7pMlqMEygoLD1qIyDzSGGHX4rASrvMqlcaMIQMonmIIGWNcfcPDc5EbF3IHVrbP
 eLYWkdNuyfHGylvmoKK121FmAwNHKKRgMoOhAbg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191124_094926_512535_6DD90C0F 
X-CRM114-Status: UNSURE (   9.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.21 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-rpi-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

Eric isn't active any more and i don't have the necessary free time.
Nicolas already made contributions to bcm2835 and is pleased to take
over the maintainership. My thanks go to both of them.

Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
---
 MAINTAINERS | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 512e527..4285190 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -3224,8 +3224,7 @@ N:	kona
 F:	arch/arm/mach-bcm/

 BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE
-M:	Eric Anholt <eric@anholt.net>
-M:	Stefan Wahren <wahrenst@gmx.net>
+M:	Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
 L:	bcm-kernel-feedback-list@broadcom.com
 L:	linux-rpi-kernel@lists.infradead.org (moderated for non-subscribers)
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
--
2.7.4


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
