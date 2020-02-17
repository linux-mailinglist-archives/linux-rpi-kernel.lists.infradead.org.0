Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A234161963
	for <lists+linux-rpi-kernel@lfdr.de>; Mon, 17 Feb 2020 19:06:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Flc743wjR3fCVfyGXEa6KAPqCwlXDG5/yD9IC6EbayA=; b=WY6efflPQWW7cG
	WQzR1sBKdvrKPUQr+hY5S8s0rNvCfpDdJVKqW0lupVBNsGu4unWFtTzJAW4NFFQItr0zs3cM0AIUK
	VFRIhANnVtss24mTB7/UYo7v59CNJmk5GmS35JqM22x0ffdYWaF2C+BnL0erqxwZx18dtXhCCzttX
	J17GBkAZkj1Y6GEhk7CG9+S/TwBDhMmkXgOmWJPSOuVTLq6Tzkyhu9N5M3hGwxU9rejO0Axnpg4tL
	3MebsOYMoshnR32dFtHtbtAVwM6Z2Cw8wBQxl58xMcjC9kbclSCsvGM5BnHUM+K5B/yktEd4m92ZM
	eGdzGK7q2y4nTV1qXWAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3kn6-0005Om-06; Mon, 17 Feb 2020 18:06:44 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3kmy-0005Nz-HM
 for linux-rpi-kernel@lists.infradead.org; Mon, 17 Feb 2020 18:06:42 +0000
Received: by mail-wr1-x443.google.com with SMTP id n10so18917927wrm.1
 for <linux-rpi-kernel@lists.infradead.org>;
 Mon, 17 Feb 2020 10:06:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4nIGgpR6dxPbUKvKu1GNRxbB1TO6afrCiGpP741rVUc=;
 b=FOth/oybwE6qAHw51eAfFYXowWJRP1oRU/FExfez93psv5Gj5qjfSN6kJfOSkyjz4V
 NVNb81QmvBTEFdlF29ucdGdDwgVnxRO0yXZD95TOIkMhnvkJNe8tG1rXjG+sAD75BCW2
 qwp0GQUrwiNg9YFERbyCbBi7ozKTd6DlUxquL96omY2Bjb2SjJFajgm+LzhL6FI8SxTE
 17wbUIuezRS5Wr99jkcYZwkNa51UY9c8CoIqFxeJccxr3QtNvmzryk/GD+Pe9FskEoMk
 1nGyeBFn19MZ/d0KecUtTsuqEuL820uKbYGtM6fzGegr2a8Gg5+Fpqp9sisr/UGzFTbW
 CvZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4nIGgpR6dxPbUKvKu1GNRxbB1TO6afrCiGpP741rVUc=;
 b=UsLqym1CpxTTPPrmv49ACK3ZfjAquaqhPPKt6WH5TvpJmkZzhd7K7WBZW4LJUS91pl
 Y2vWsRWZtNSgodphpZXtIjN66R/EcRw15R2JSteaKrfwTU+9Q/6JXcdvyLnqBZyjC8lf
 sisUaXuKoFYVl1Z2q97PpeSKM0yWt14Ezh5JKXkWQlPqvDYgN/S1zBRYUyJn5LmPXd1l
 CNFMto2GFn8ZtrujsG2pBNJ5RYO4wZdIkTBLO0XGhF5d3GwP2KszArBSfNLest9LKyXt
 rdEv+XE8ZfcEQbvsX4zhv4BohW0d/dcipX+mt0M7ZG9e9zSLUxM38FdNa3GMRjut8N4Y
 wQtg==
X-Gm-Message-State: APjAAAXzNJ4tlTUdyygh8DHIxUd5ATO8lA/NSRAD271R7zQC3rVEovY0
 rRwsDCoHLkQK87ylaKm7I4h0pg==
X-Google-Smtp-Source: APXvYqyBEo4ZFXC6CR3RHyHS3MGnk6ZzfhtbpwNrhWU7GWupMw65B4+Li8NoPZ09CArtzdmLc4ueXw==
X-Received: by 2002:adf:dc86:: with SMTP id r6mr23671245wrj.68.1581962794494; 
 Mon, 17 Feb 2020 10:06:34 -0800 (PST)
Received: from starbuck.baylibre.local
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id d204sm254850wmd.30.2020.02.17.10.06.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 17 Feb 2020 10:06:33 -0800 (PST)
From: Jerome Brunet <jbrunet@baylibre.com>
To: Marek Szyprowski <m.szyprowski@samsung.com>,
 Mark Brown <broonie@kernel.org>
Subject: [RFT/DONTMERGE] ASoC: devm_snd_soc_register_component fixup
Date: Mon, 17 Feb 2020 19:06:26 +0100
Message-Id: <20200217180626.593909-1-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20557448-d6d2-7584-e2ac-c46d337e1778@samsung.com>
References: <20557448-d6d2-7584-e2ac-c46d337e1778@samsung.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_100636_717726_472443F4 
X-CRM114-Status: GOOD (  15.13  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-kernel@vger.kernel.org, alsa-devel@alsa-project.org,
 Liam Girdwood <lgirdwood@gmail.com>,
 linux-rpi-kernel <linux-rpi-kernel@lists.infradead.org>,
 Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

Hi Marek, would you mind trying the following patch. It should target the
component removal intead of removing them all. I'd like to comfirm this is
your problem before pushing in this direction. Thanks

Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 include/sound/soc.h                   |  1 +
 sound/soc/soc-core.c                  |  8 +++++++
 sound/soc/soc-devres.c                | 32 ++++++++++++++++++---------
 sound/soc/soc-generic-dmaengine-pcm.c |  2 +-
 4 files changed, 31 insertions(+), 12 deletions(-)

diff --git a/include/sound/soc.h b/include/sound/soc.h
index f0e4f36f83bf..e5bfe2609110 100644
--- a/include/sound/soc.h
+++ b/include/sound/soc.h
@@ -442,6 +442,7 @@ int snd_soc_add_component(struct device *dev,
 		const struct snd_soc_component_driver *component_driver,
 		struct snd_soc_dai_driver *dai_drv,
 		int num_dai);
+void snd_soc_del_component(struct snd_soc_component *component);
 int snd_soc_register_component(struct device *dev,
 			 const struct snd_soc_component_driver *component_driver,
 			 struct snd_soc_dai_driver *dai_drv, int num_dai);
diff --git a/sound/soc/soc-core.c b/sound/soc/soc-core.c
index 6a58a8f6e3c4..bf6a64fbfa52 100644
--- a/sound/soc/soc-core.c
+++ b/sound/soc/soc-core.c
@@ -2599,6 +2599,14 @@ static void snd_soc_del_component_unlocked(struct snd_soc_component *component)
 	list_del(&component->list);
 }
 
+void snd_soc_del_component(struct snd_soc_component *component)
+{
+	mutex_lock(&client_mutex);
+	snd_soc_del_component_unlocked(component);
+	mutex_unlock(&client_mutex);
+}
+EXPORT_SYMBOL_GPL(snd_soc_del_component);
+
 int snd_soc_add_component(struct device *dev,
 			struct snd_soc_component *component,
 			const struct snd_soc_component_driver *component_driver,
diff --git a/sound/soc/soc-devres.c b/sound/soc/soc-devres.c
index a9ea172a66a7..d5e9e2bed2ce 100644
--- a/sound/soc/soc-devres.c
+++ b/sound/soc/soc-devres.c
@@ -11,7 +11,7 @@
 
 static void devm_component_release(struct device *dev, void *res)
 {
-	snd_soc_unregister_component(*(struct device **)res);
+	snd_soc_del_component(*(struct snd_soc_component **)res);
 }
 
 /**
@@ -28,21 +28,31 @@ int devm_snd_soc_register_component(struct device *dev,
 			 const struct snd_soc_component_driver *cmpnt_drv,
 			 struct snd_soc_dai_driver *dai_drv, int num_dai)
 {
-	struct device **ptr;
-	int ret;
+	struct snd_soc_component *component;
+	struct snd_soc_component **ptr;
+	int ret = -ENOMEM;
+
+	component = devm_kzalloc(dev, sizeof(*component), GFP_KERNEL);
+	if (!component)
+		return -ENOMEM;
 
 	ptr = devres_alloc(devm_component_release, sizeof(*ptr), GFP_KERNEL);
 	if (!ptr)
-		return -ENOMEM;
+	        goto err_devres;
 
-	ret = snd_soc_register_component(dev, cmpnt_drv, dai_drv, num_dai);
-	if (ret == 0) {
-		*ptr = dev;
-		devres_add(dev, ptr);
-	} else {
-		devres_free(ptr);
-	}
+	ret = snd_soc_add_component(dev, component, cmpnt_drv, dai_drv,
+				    num_dai);
+	if (ret)
+		goto err_add;
+
+	*ptr = component;
+	devres_add(dev, ptr);
+	return 0;
 
+err_add:
+	devres_free(ptr);
+err_devres:
+	devm_kfree(dev, component);
 	return ret;
 }
 EXPORT_SYMBOL_GPL(devm_snd_soc_register_component);
diff --git a/sound/soc/soc-generic-dmaengine-pcm.c b/sound/soc/soc-generic-dmaengine-pcm.c
index 2cc25651661c..a33f21ce2d7a 100644
--- a/sound/soc/soc-generic-dmaengine-pcm.c
+++ b/sound/soc/soc-generic-dmaengine-pcm.c
@@ -474,7 +474,7 @@ void snd_dmaengine_pcm_unregister(struct device *dev)
 
 	pcm = soc_component_to_pcm(component);
 
-	snd_soc_unregister_component(dev);
+	snd_soc_del_component(component);
 	dmaengine_pcm_release_chan(pcm);
 	kfree(pcm);
 }
-- 
2.24.1


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
