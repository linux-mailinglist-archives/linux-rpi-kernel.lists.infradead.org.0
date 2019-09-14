Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CA6BB2BDA
	for <lists+linux-rpi-kernel@lfdr.de>; Sat, 14 Sep 2019 17:25:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=WQallRgUKA2wuEQQmTlYLC20SWdVGa1GJF8rxCm+Ywg=; b=Isq
	BWR0rSGjEkTLuh9KKdjKSj7wEHuaz7r+mh1cZiJXUVGVdaghkQpY7k65cQjP74q1Qn8s0nPZ3McsT
	VcrLcypFmwMoREyVrYPadU1Pq+0Pl2ZIMH+nG+r0Ba49HUVyptIAJutOYktdywn53jqhn4PBqKmw4
	c0TrWhZ2ZG0PvhXlqLz62/NbsGmwwb118af02N50t/DYxQbLZqkjjXktleHqqHgqVOm4xE/OijGDt
	QyGwMD91FeRF8IQqW9jOhDFK0I+Ifcxc2Ek15zYh8BuNq/Z133beTJhVxUjZUg2lZeaOy6/IJlllM
	Htwch4CZ6Tersiu8d0TZo5Dw1SdVmYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i99vA-0002Yx-Oe; Sat, 14 Sep 2019 15:25:08 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i99v5-0001Mf-5H
 for linux-rpi-kernel@lists.infradead.org; Sat, 14 Sep 2019 15:25:04 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id F0887AEB3;
 Sat, 14 Sep 2019 15:24:57 +0000 (UTC)
From: Takashi Iwai <tiwai@suse.de>
To: Eric Anholt <eric@anholt.net>, Stefan Wahren <wahrenst@gmx.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: bcm2835-audio: Fix draining behavior regression
Date: Sat, 14 Sep 2019 17:24:05 +0200
Message-Id: <20190914152405.7416-1-tiwai@suse.de>
X-Mailer: git-send-email 2.16.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190914_082503_353424_62CB0338 
X-CRM114-Status: GOOD (  12.45  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

The PCM draining behavior got broken since the recent refactoring, and
this turned out to be the incorrect expectation of the firmware
behavior regarding "draining".  While I expected the "drain" flag at
the stop operation would do processing the queued samples, it seems
rather dropping the samples.

As a quick fix, just drop the SNDRV_PCM_INFO_DRAIN_TRIGGER flag, so
that the driver uses the normal PCM draining procedure.  Also, put
some caution comment to the function for future readers not to fall
into the same pitfall.

Fixes: d7ca3a71545b ("staging: bcm2835-audio: Operate non-atomic PCM ops")
BugLink: https://github.com/raspberrypi/linux/issues/2983
Cc: stable@vger.kernel.org
Signed-off-by: Takashi Iwai <tiwai@suse.de>
---
 drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c   | 4 ++--
 drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c | 1 +
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c
index bc1eaa3a0773..826016c3431a 100644
--- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c
+++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c
@@ -12,7 +12,7 @@
 static const struct snd_pcm_hardware snd_bcm2835_playback_hw = {
 	.info = (SNDRV_PCM_INFO_INTERLEAVED | SNDRV_PCM_INFO_BLOCK_TRANSFER |
 		 SNDRV_PCM_INFO_MMAP | SNDRV_PCM_INFO_MMAP_VALID |
-		 SNDRV_PCM_INFO_DRAIN_TRIGGER | SNDRV_PCM_INFO_SYNC_APPLPTR),
+		 SNDRV_PCM_INFO_SYNC_APPLPTR),
 	.formats = SNDRV_PCM_FMTBIT_U8 | SNDRV_PCM_FMTBIT_S16_LE,
 	.rates = SNDRV_PCM_RATE_CONTINUOUS | SNDRV_PCM_RATE_8000_48000,
 	.rate_min = 8000,
@@ -29,7 +29,7 @@ static const struct snd_pcm_hardware snd_bcm2835_playback_hw = {
 static const struct snd_pcm_hardware snd_bcm2835_playback_spdif_hw = {
 	.info = (SNDRV_PCM_INFO_INTERLEAVED | SNDRV_PCM_INFO_BLOCK_TRANSFER |
 		 SNDRV_PCM_INFO_MMAP | SNDRV_PCM_INFO_MMAP_VALID |
-		 SNDRV_PCM_INFO_DRAIN_TRIGGER | SNDRV_PCM_INFO_SYNC_APPLPTR),
+		 SNDRV_PCM_INFO_SYNC_APPLPTR),
 	.formats = SNDRV_PCM_FMTBIT_S16_LE,
 	.rates = SNDRV_PCM_RATE_CONTINUOUS | SNDRV_PCM_RATE_44100 |
 	SNDRV_PCM_RATE_48000,
diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
index 23fba01107b9..c6f9cf1913d2 100644
--- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
@@ -289,6 +289,7 @@ int bcm2835_audio_stop(struct bcm2835_alsa_stream *alsa_stream)
 					 VC_AUDIO_MSG_TYPE_STOP, false);
 }
 
+/* FIXME: this doesn't seem working as expected for "draining" */
 int bcm2835_audio_drain(struct bcm2835_alsa_stream *alsa_stream)
 {
 	struct vc_audio_msg m = {
-- 
2.16.4


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
