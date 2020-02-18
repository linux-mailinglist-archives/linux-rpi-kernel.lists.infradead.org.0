Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CF9616211A
	for <lists+linux-rpi-kernel@lfdr.de>; Tue, 18 Feb 2020 07:47:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PA9iuIMEWoy8h0Fw9G5zxxKY1gFSCCmFBHClNmNZmCo=; b=XiSISTT0UfmwaY
	quLivaII3HDywm2Q6V6xRTIg0RMBzR8xDurdIuJHCIjWAG7Zn9Qg2V0omaKkWTqtaNarQThsWPHhS
	zc28W0wIWUmyffQqGC5HimhUu6PBfnnspWNtrN8vJRXPKVU3B5LeadUSqi2W/vlCSpwrshoZ5T/TR
	C8aOxzsWmD3rngP9hlddXRpsBC2mgWF13v8Yiw5McEqCO7JZ/MR5JKbYa75fKzk2FZk4jq2eFhSP1
	kQIgiW9MpWrr4CkozenRZjbc+PCyseTN31kGQJf59/k6KrPCLfBgLIDeVsGtJCcF9IbY1ywWqnAoN
	ApGykJfw8IXFTiChPEvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3wfl-0003Gz-Hl; Tue, 18 Feb 2020 06:47:57 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3wfh-0003GD-V6
 for linux-rpi-kernel@lists.infradead.org; Tue, 18 Feb 2020 06:47:55 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200218064748euoutp0232018ba9e3164e4a1683349046626f56~0bFHxLXQY1822218222euoutp02E
 for <linux-rpi-kernel@lists.infradead.org>;
 Tue, 18 Feb 2020 06:47:48 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200218064748euoutp0232018ba9e3164e4a1683349046626f56~0bFHxLXQY1822218222euoutp02E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1582008468;
 bh=5OmFQvW0+eYHX8EYUo3b9SjCwA/SO59ajoq9b2DMIq8=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=ZHdJvTjcPN90qmVxCvoGQndNDGlAFiQa+V8O3y930gFHsE6jjYpn/AkxDwOtJvlEY
 lC74jHU67nA6L+i7OohdfbFMLE7p1FjeKfgMZPAF1KsuI4NtIq6NNv6VALTuvgeurd
 AqkCIUaKjG57hj6Wan1xxmkDpfv02j5v9yAqg0fY=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200218064748eucas1p245e9a8e6d083311597cea7cd64e9515a~0bFHpLKtl2478324783eucas1p2M;
 Tue, 18 Feb 2020 06:47:48 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id BD.5F.60679.4988B4E5; Tue, 18
 Feb 2020 06:47:48 +0000 (GMT)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200218064747eucas1p1d65dab715088fdefd0c3a50061ee2dca~0bFHTgj971065510655eucas1p1J;
 Tue, 18 Feb 2020 06:47:47 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200218064747eusmtrp22169b3909a757538c24950a0c2da7550~0bFHS6I5E3148231482eusmtrp2Q;
 Tue, 18 Feb 2020 06:47:47 +0000 (GMT)
X-AuditID: cbfec7f4-0e5ff7000001ed07-cc-5e4b8894e801
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 46.C9.07950.3988B4E5; Tue, 18
 Feb 2020 06:47:47 +0000 (GMT)
Received: from [106.120.51.15] (unknown [106.120.51.15]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200218064747eusmtip19a20528bc2d5b68f3affc9c168fa0bf6~0bFG6_1kO3273132731eusmtip1-;
 Tue, 18 Feb 2020 06:47:47 +0000 (GMT)
Subject: Re: [RFT/DONTMERGE] ASoC: devm_snd_soc_register_component fixup
To: Jerome Brunet <jbrunet@baylibre.com>, Mark Brown <broonie@kernel.org>
From: Marek Szyprowski <m.szyprowski@samsung.com>
Message-ID: <e70bb7a5-21b0-0e71-871e-2c02b35f86ea@samsung.com>
Date: Tue, 18 Feb 2020 07:47:45 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200217180626.593909-1-jbrunet@baylibre.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrNKsWRmVeSWpSXmKPExsWy7djPc7pTOrzjDCa+YbK4cvEQk8XUh0/Y
 LN48OsJs8e1KB5PF5V1z2Cwm3t7A7sDmseFzE5vH+xut7B47Z91l99i0qpPNY/OSeo/Pm+QC
 2KK4bFJSczLLUov07RK4Mk7t62EqWKZSMfN6J1MD43bZLkZODgkBE4mpq28ydzFycQgJrGCU
 +PBxFxOE84VR4uG8XlYI5zOjxP4JU9hgWq4ueQKVWM4oMe34RkaQhJDAW0aJ1bPLQWxhAQ+J
 9lkX2EFsEQFPiYUL/4PtYBaYzyhx9PN0sASbgKFE19susKm8AnYSCzrmsoLYLAKqEkt/LGQB
 sUUFYiVmrzzMAlEjKHFy5hMwm1PAWuLooUNgNrOAvMT2t3OYIWxxiVtP5oP9ICGwjl3i5+cH
 UGe7SBw5P5sdwhaWeHV8C5QtI/F/J0xDM9DT59ayQzg9jBKXm2YwQlRZS9w59wtoEgfQCk2J
 9bv0IcKOEgt6vrGChCUE+CRuvBWEOIJPYtK26cwQYV6JjjYhiGo1iVnH18GtPXjhEvMERqVZ
 SF6bheSdWUjemYWwdwEjyypG8dTS4tz01GKjvNRyveLE3OLSvHS95PzcTYzAJHT63/EvOxh3
 /Uk6xCjAwajEwxvQ5xUnxJpYVlyZe4hRgoNZSYTXWxwoxJuSWFmVWpQfX1Sak1p8iFGag0VJ
 nNd40ctYIYH0xJLU7NTUgtQimCwTB6dUA2MW81mfrtan5817z/NXngs5FORv+uHeocZM/w0C
 Ud9bV7Pc6Xd2F7has8Q7dd/TnT/yPq9tz72c++z5yaKz689l+ewKqrLmDRay3xqlrn+ta8IO
 4WKVhj/JVxyzNm+0/ikf/mRegOWH3kSb5olnrycdZj9v5vdqxsLAS8lHDiV97lSdWNrKn6/E
 UpyRaKjFXFScCACqTel6PgMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrHIsWRmVeSWpSXmKPExsVy+t/xu7qTO7zjDN5+17S4cvEQk8XUh0/Y
 LN48OsJs8e1KB5PF5V1z2Cwm3t7A7sDmseFzE5vH+xut7B47Z91l99i0qpPNY/OSeo/Pm+QC
 2KL0bIryS0tSFTLyi0tslaINLYz0DC0t9IxMLPUMjc1jrYxMlfTtbFJSczLLUov07RL0Mk7t
 62EqWKZSMfN6J1MD43bZLkZODgkBE4mrS56wdjFycQgJLGWU6Jr3hwUiISNxcloDK4QtLPHn
 WhcbRNFrRolb556DFQkLeEi0z7rADmKLCHhKLFz4nxmkiFlgPqPE3HWXmSE6DjNKNLT3g1Wx
 CRhKdL0FGcXJwStgJ7GgYy7YChYBVYmlPxaCTRUViJW4MbODCaJGUOLkzCdgcU4Ba4mjhw6B
 2cwCZhLzNj9khrDlJba/nQNli0vcejKfaQKj0Cwk7bOQtMxC0jILScsCRpZVjCKppcW56bnF
 RnrFibnFpXnpesn5uZsYgXG37djPLTsYu94FH2IU4GBU4uFdMcErTog1say4MvcQowQHs5II
 r7c4UIg3JbGyKrUoP76oNCe1+BCjKdBzE5mlRJPzgSkhryTe0NTQ3MLS0NzY3NjMQkmct0Pg
 YIyQQHpiSWp2ampBahFMHxMHp1QDo++sijyT7ZeWtp8PkFr5xmDL1NulsSu/vLvP3nS/MNXJ
 JdLPVXHO9Kc1yWd4xC6yJna6qAZ8WrTYLsL2zQT71dnXfmzPnXecQzfv6IOwazr+6XMsS+WE
 1thX+7uZrdpn6F16XIRrcqZMmXzC85QNTx7tL62ym/xtW/3sDzI9iXrmEVGRTWcFlViKMxIN
 tZiLihMBH7SAQ9ECAAA=
X-CMS-MailID: 20200218064747eucas1p1d65dab715088fdefd0c3a50061ee2dca
X-Msg-Generator: CA
X-RootMTR: 20200217180640eucas1p220a8a33489d01a860821370060953153
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200217180640eucas1p220a8a33489d01a860821370060953153
References: <20557448-d6d2-7584-e2ac-c46d337e1778@samsung.com>
 <CGME20200217180640eucas1p220a8a33489d01a860821370060953153@eucas1p2.samsung.com>
 <20200217180626.593909-1-jbrunet@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_224754_216512_A7334B5A 
X-CRM114-Status: GOOD (  19.59  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.12 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: alsa-devel@alsa-project.org, Liam Girdwood <lgirdwood@gmail.com>,
 linux-rpi-kernel <linux-rpi-kernel@lists.infradead.org>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

Hi Jerome,

On 17.02.2020 19:06, Jerome Brunet wrote:
> Hi Marek, would you mind trying the following patch. It should target the
> component removal intead of removing them all. I'd like to comfirm this is
> your problem before pushing in this direction. Thanks
>
> Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>

It helps a bit. There is no warning from sysfs, but vc4-drm is still not 
registered properly:

raspberrypi-firmware soc:firmware: Attached to firmware from 2019-07-09 
14:40
raspberrypi-clk raspberrypi-clk: CPU frequency range: min 600000000, max 
1200000000
vc4_hdmi 3f902000.hdmi: ASoC: CODEC DAI vc4-hdmi-hifi not registered
vc4_hdmi 3f902000.hdmi: Could not register sound card: -517
vc4-drm soc:gpu: failed to bind 3f902000.hdmi (ops vc4_hdmi_ops): -517
vc4-drm soc:gpu: master bind failed: -517

> ---
>   include/sound/soc.h                   |  1 +
>   sound/soc/soc-core.c                  |  8 +++++++
>   sound/soc/soc-devres.c                | 32 ++++++++++++++++++---------
>   sound/soc/soc-generic-dmaengine-pcm.c |  2 +-
>   4 files changed, 31 insertions(+), 12 deletions(-)
>
> diff --git a/include/sound/soc.h b/include/sound/soc.h
> index f0e4f36f83bf..e5bfe2609110 100644
> --- a/include/sound/soc.h
> +++ b/include/sound/soc.h
> @@ -442,6 +442,7 @@ int snd_soc_add_component(struct device *dev,
>   		const struct snd_soc_component_driver *component_driver,
>   		struct snd_soc_dai_driver *dai_drv,
>   		int num_dai);
> +void snd_soc_del_component(struct snd_soc_component *component);
>   int snd_soc_register_component(struct device *dev,
>   			 const struct snd_soc_component_driver *component_driver,
>   			 struct snd_soc_dai_driver *dai_drv, int num_dai);
> diff --git a/sound/soc/soc-core.c b/sound/soc/soc-core.c
> index 6a58a8f6e3c4..bf6a64fbfa52 100644
> --- a/sound/soc/soc-core.c
> +++ b/sound/soc/soc-core.c
> @@ -2599,6 +2599,14 @@ static void snd_soc_del_component_unlocked(struct snd_soc_component *component)
>   	list_del(&component->list);
>   }
>   
> +void snd_soc_del_component(struct snd_soc_component *component)
> +{
> +	mutex_lock(&client_mutex);
> +	snd_soc_del_component_unlocked(component);
> +	mutex_unlock(&client_mutex);
> +}
> +EXPORT_SYMBOL_GPL(snd_soc_del_component);
> +
>   int snd_soc_add_component(struct device *dev,
>   			struct snd_soc_component *component,
>   			const struct snd_soc_component_driver *component_driver,
> diff --git a/sound/soc/soc-devres.c b/sound/soc/soc-devres.c
> index a9ea172a66a7..d5e9e2bed2ce 100644
> --- a/sound/soc/soc-devres.c
> +++ b/sound/soc/soc-devres.c
> @@ -11,7 +11,7 @@
>   
>   static void devm_component_release(struct device *dev, void *res)
>   {
> -	snd_soc_unregister_component(*(struct device **)res);
> +	snd_soc_del_component(*(struct snd_soc_component **)res);
>   }
>   
>   /**
> @@ -28,21 +28,31 @@ int devm_snd_soc_register_component(struct device *dev,
>   			 const struct snd_soc_component_driver *cmpnt_drv,
>   			 struct snd_soc_dai_driver *dai_drv, int num_dai)
>   {
> -	struct device **ptr;
> -	int ret;
> +	struct snd_soc_component *component;
> +	struct snd_soc_component **ptr;
> +	int ret = -ENOMEM;
> +
> +	component = devm_kzalloc(dev, sizeof(*component), GFP_KERNEL);
> +	if (!component)
> +		return -ENOMEM;
>   
>   	ptr = devres_alloc(devm_component_release, sizeof(*ptr), GFP_KERNEL);
>   	if (!ptr)
> -		return -ENOMEM;
> +	        goto err_devres;
>   
> -	ret = snd_soc_register_component(dev, cmpnt_drv, dai_drv, num_dai);
> -	if (ret == 0) {
> -		*ptr = dev;
> -		devres_add(dev, ptr);
> -	} else {
> -		devres_free(ptr);
> -	}
> +	ret = snd_soc_add_component(dev, component, cmpnt_drv, dai_drv,
> +				    num_dai);
> +	if (ret)
> +		goto err_add;
> +
> +	*ptr = component;
> +	devres_add(dev, ptr);
> +	return 0;
>   
> +err_add:
> +	devres_free(ptr);
> +err_devres:
> +	devm_kfree(dev, component);
>   	return ret;
>   }
>   EXPORT_SYMBOL_GPL(devm_snd_soc_register_component);
> diff --git a/sound/soc/soc-generic-dmaengine-pcm.c b/sound/soc/soc-generic-dmaengine-pcm.c
> index 2cc25651661c..a33f21ce2d7a 100644
> --- a/sound/soc/soc-generic-dmaengine-pcm.c
> +++ b/sound/soc/soc-generic-dmaengine-pcm.c
> @@ -474,7 +474,7 @@ void snd_dmaengine_pcm_unregister(struct device *dev)
>   
>   	pcm = soc_component_to_pcm(component);
>   
> -	snd_soc_unregister_component(dev);
> +	snd_soc_del_component(component);
>   	dmaengine_pcm_release_chan(pcm);
>   	kfree(pcm);
>   }

Best regards
-- 
Marek Szyprowski, PhD
Samsung R&D Institute Poland


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
