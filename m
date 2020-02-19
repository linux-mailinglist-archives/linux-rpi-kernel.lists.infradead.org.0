Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27F20164205
	for <lists+linux-rpi-kernel@lfdr.de>; Wed, 19 Feb 2020 11:25:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ln1PE7R2dx+0uO59D3uekQrQ/PLQRTc42yz8bO+6EYs=; b=g0IEuwO7EsKXR/
	emKwEvAhC8kGYcUuj0weoC5TnkizXdn3i5zjLuwiANQLP28f2+Vw88CnrmuGOubZ+gwR8R3+3ulaH
	jw6tK5DPy4kuXir6rt4eJ+oTopLDzDRqKFLmXEHdbb/5QZ/6Phku/Fyqh1u0bOqmMdyr00Q0UGN57
	8L7P+p0dcg63KwIeCbDZ3qwcDQEU2uSImuytqKo89ZMqSP9jv8h3Q8oYP35tl6Qv9CIw6aDdMVywM
	OgeLjcQnfCLOrw4/eBsuLFbU7UmLsCxpzp6R7ZAOG+bIk0/dntj6hyuCdMx1hbm8hGGaHu4DqvL8D
	ztYdZ41E3c3/k3XC6Xeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4MY9-0008Eu-7K; Wed, 19 Feb 2020 10:25:49 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4MY5-0008Dl-OJ
 for linux-rpi-kernel@lists.infradead.org; Wed, 19 Feb 2020 10:25:47 +0000
Received: by mail-wm1-x344.google.com with SMTP id a6so6157529wme.2
 for <linux-rpi-kernel@lists.infradead.org>;
 Wed, 19 Feb 2020 02:25:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=RejVam6fDIBD/171nva4YA9frryDk02n9j0DCZJ4htM=;
 b=pxiG/15fBub6+F881mK1MfCTN7rUOq+Hm4jea2zZdHSx0shyFznlZv0NXH31Bw/H0M
 /rT0ZsZbEnUTjIxyopaVx0iiXOGuKnCwfOPjHMY3md42nvjdpgPNR6qEsSbGP97BnDNK
 UPLZgYuWV0bk3aR8UPujgHOoxo2hXsJKOltOi2FwTqRfqDIXQuqSUAMRR6PV/awINDLb
 hB8hRkr75zSIVf6CWuQaJQ3MHBsJCvpqdJbvamXjRuFbo6q4VRvjweZu/0+0/8ACzOxI
 FHfT9tphxZTayrfS6uk2/B6ICtsxaO0t/FwZJD8weSuqkT1cTGjBsu+Fs12EBaF/6DPe
 uQBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=RejVam6fDIBD/171nva4YA9frryDk02n9j0DCZJ4htM=;
 b=sW40OCTRJUKaHJM64DX9aMQuiwY/NEJ/yQC+LCNLz42uUKKz6eSStY81wS5oI6qFqZ
 lAFy8VCYC/FvdmjsmcYcnG/luimOy0Ih+WmU+xhThCzZQ0n2Zm6s4UigP2uOnrPQ7OlN
 e+rgMiYzzkog/1oXAP/LYOwg4KIX6Zh1+HLye9bWt+XVQHys9+8FjTveb1AY+aBGXcEW
 p1P5/VURbBeyQbVFEMGWIuT5OcIcOTBeSrtqjV3uz2IY9pKWw/UT56xna5AgyqyuI/6B
 9D+rc/Y7IJVeyiSZ+eegmBiGs8lDI0VgRH5EuvT/coZIlFBauta1HlXk/M+mFskS6X+k
 s8pw==
X-Gm-Message-State: APjAAAU0TNU7YippwLpcrbp8FDvLyMj1YpE4Lihh2ASy71A3uNQD09xv
 w6ownq42Tg9hexrgk1WbEmCQSpjgvKg=
X-Google-Smtp-Source: APXvYqw7/FkSHHxus/ih0u10TbKNOBGCz51zlpX/Ia7XtXiPnjDJYWOyfUo95tzExyHbfRKjRVF68Q==
X-Received: by 2002:a1c:5419:: with SMTP id i25mr9323161wmb.150.1582107943441; 
 Wed, 19 Feb 2020 02:25:43 -0800 (PST)
Received: from localhost.localdomain (cag06-3-82-243-161-21.fbx.proxad.net.
 [82.243.161.21])
 by smtp.googlemail.com with ESMTPSA id 133sm2678562wmd.5.2020.02.19.02.25.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Feb 2020 02:25:42 -0800 (PST)
From: Jerome Brunet <jbrunet@baylibre.com>
To: Mark Brown <broonie@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>
Subject: [PATCH] ASoC: fix card registration regression.
Date: Wed, 19 Feb 2020 11:25:26 +0100
Message-Id: <20200219102526.692126-1-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_022545_794871_152151AE 
X-CRM114-Status: GOOD (  14.23  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
 linux-kernel@vger.kernel.org,
 linux-rpi-kernel <linux-rpi-kernel@lists.infradead.org>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

This reverts commit b2354e4009a773c00054b964d937e1b81cb92078.

This change might have been desirable to ensure the uniqueness of
the component name. It would have helped to better support linux
devices which register multiple components, something is which more
common than initially thought.

However, some card driver are directly using dev_name() to fill the
component names of the dai_link which is a problem if want to change
the way ASoC generates the component names.

Until we figure out the appropriate way to deal with this, revert the
change and keep the names as they were. There might be a couple of warning
related to debugfs (which were already present before the change) but it
is still better than breaking working audio cards.

Cc: Marek Szyprowski <m.szyprowski@samsung.com>
Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 sound/soc/soc-core.c | 29 +----------------------------
 1 file changed, 1 insertion(+), 28 deletions(-)

diff --git a/sound/soc/soc-core.c b/sound/soc/soc-core.c
index 30c17fde14ca..518b652cf872 100644
--- a/sound/soc/soc-core.c
+++ b/sound/soc/soc-core.c
@@ -2442,33 +2442,6 @@ static int snd_soc_register_dais(struct snd_soc_component *component,
 	return ret;
 }
 
-static char *snd_soc_component_unique_name(struct device *dev,
-					   struct snd_soc_component *component)
-{
-	struct snd_soc_component *pos;
-	int count = 0;
-	char *name, *unique;
-
-	name = fmt_single_name(dev, &component->id);
-	if (!name)
-		return name;
-
-	/* Count the number of components registred by the device */
-	for_each_component(pos) {
-		if (dev == pos->dev)
-			count++;
-	}
-
-	/* Keep naming as it is for the 1st component */
-	if (!count)
-		return name;
-
-	unique = devm_kasprintf(dev, GFP_KERNEL, "%s-%d", name, count);
-	devm_kfree(dev, name);
-
-	return unique;
-}
-
 static int snd_soc_component_initialize(struct snd_soc_component *component,
 	const struct snd_soc_component_driver *driver, struct device *dev)
 {
@@ -2477,7 +2450,7 @@ static int snd_soc_component_initialize(struct snd_soc_component *component,
 	INIT_LIST_HEAD(&component->card_list);
 	mutex_init(&component->io_mutex);
 
-	component->name = snd_soc_component_unique_name(dev, component);
+	component->name = fmt_single_name(dev, &component->id);
 	if (!component->name) {
 		dev_err(dev, "ASoC: Failed to allocate name\n");
 		return -ENOMEM;
-- 
2.24.1


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
