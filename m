Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FF241705D1
	for <lists+linux-rpi-kernel@lfdr.de>; Wed, 26 Feb 2020 18:17:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=d14Mex2jfDETNzBLmw+6Z1jU4Wd0HB2KbXsAOed3lCI=; b=L/lE+IAunCO7IGbtDTPMO99uu
	URW8CGH1vsDUxMyeW8Oyke+ShP1dpcqnkEdGX8KTKE5fOa7Y7fAQ2YURJM2Ixgj5dDGqA9kdC1cBI
	sHsxrOytkn0+zbv2+mDuWX4tegb09Xeo0K0Nn5vUabV0uMqhfrzjW2Kclk+YLSRVSvHjCe/MkHYJs
	exQImA/wZP6LVcam3/ilsaQT0kp5uV18UCXeu86YRqyV4HyifE+30wwjqlUs2kJsrDkqliMzPYW0u
	paXiAOBBW1Y9HvQtdQo1ztOnpx8dD07zHrcUB0ntySLW8FajURtbKsI5vgE2lRAztuLtL41ynsrgE
	sj0+EMORA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j70JU-0003yy-5L; Wed, 26 Feb 2020 17:17:36 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j70JR-0003yE-6a
 for linux-rpi-kernel@lists.infradead.org; Wed, 26 Feb 2020 17:17:34 +0000
Received: by mail-wm1-x343.google.com with SMTP id t14so40657wmi.5
 for <linux-rpi-kernel@lists.infradead.org>;
 Wed, 26 Feb 2020 09:17:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=raspberrypi.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=D5NgFvpvyGD2NAkidGgia/jVmr0ryRkNn23SZkfip3U=;
 b=KPTIuJ6hOKN4eNm6446oV+ufMfdLlLPWUE/tcfYlDyTvUttjmb4fzCSa0EzUQQTqQd
 4A6Lk8gDTE75gNGQNVL7pThfh+KOKigyKwqXaZmiVC0p6B4Tvs0pwoFlJ7elicCo8hrn
 WchqZZ8SHT/si1iGF31t/ZKMIEwvTsxHMUqr43GAELsgjrORQeYSKwABRgw02f/xA3Zw
 4vK0eYbFLJal+Ic4ZjMmDqgc9per9KH3xgnJeg3epqAhAdt8fRkPfoAZryfDW+Ev5n59
 K+UKrDlgGf+BZdmaLwxciFqLtwmoDJVZAHZVRhIt2/WIglamTAcdGRk9VzdwR1vk003J
 rk1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=D5NgFvpvyGD2NAkidGgia/jVmr0ryRkNn23SZkfip3U=;
 b=Od0DKwRQJLZdtc4btzyNuq+3CJCba4L3QliHFbamUGKT3Qa1HaICuZkQ/ZVKla4hmx
 m7mSrEdm5ZAGK5Sw4e6YwIZW2h/kXlq8k4HkGNupfl2/3+3kfxcttpVAsvFGIh8Uq68T
 PpL4tButuJGUMzwAUenwW7UMFBx21lWMVDFqndWs0bESRKaUFduWrH2Pi1fOuL4pgAzD
 7xLeGRTa1NntcQA+EEKdoDtMP3bOo153HYTaacINA6PpcXVW/J1MJ2f+NVB+DgyKhJYD
 QqrpLFvZQZj8IWwXqb68kehtmN4e8YeLWn2PNk8AeCV4NNxJXTtrvEUat3//QYku4YXR
 o1xw==
X-Gm-Message-State: APjAAAWUeLrU/Nq589RsDiKKKy2GCTarL/iag/oM3gLVwa+Jsdqq9IxV
 sZoX0r3CcfstYJlBjqjIy0vskA==
X-Google-Smtp-Source: APXvYqxrttVIAUjGEZgZ4W32J3SfMG1F9ArDXDphkR2AMS3TDMpZqL7cqVnwvPG+nsAXG0VspMUfLw==
X-Received: by 2002:a05:600c:299:: with SMTP id
 25mr6704261wmk.68.1582737451052; 
 Wed, 26 Feb 2020 09:17:31 -0800 (PST)
Received: from ?IPv6:2a00:1098:3142:14:a5b1:f6ea:e382:15d7?
 ([2a00:1098:3142:14:a5b1:f6ea:e382:15d7])
 by smtp.gmail.com with ESMTPSA id z21sm3719210wml.5.2020.02.26.09.17.30
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 26 Feb 2020 09:17:30 -0800 (PST)
Subject: Re: [PATCH] ARM: dts: bcm2711: Add pcie0 alias
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Rob Herring <robh+dt@kernel.org>, Florian Fainelli <f.fainelli@gmail.com>
References: <20200226164601.20150-1-nsaenzjulienne@suse.de>
From: Phil Elwell <phil@raspberrypi.com>
Message-ID: <51e9f945-b047-eb66-28c0-54d467ce51a7@raspberrypi.com>
Date: Wed, 26 Feb 2020 17:17:30 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200226164601.20150-1-nsaenzjulienne@suse.de>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_091733_373781_B411F3BF 
X-CRM114-Status: GOOD (  10.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

Hi Nicolas,

On 26/02/2020 16:46, Nicolas Saenz Julienne wrote:
> Some bcm2711 revisions have different DMA constraints on the their PCIE
> bus. The lower common denominator, being able to access the lower 3GB of
> memory, is the default setting for now. Newer SoC revisions are able to
> access the whole memory space.
> 
> Raspberry Pi 4's firmware is aware of this limitation and will correct
> the PCIE's dma-ranges property if a pcie0 alias is available. So add
> it.

I can confirm that this is exactly what the firmware is looking for, so

Reviewed-by: Phil Elwell <phil@raspberrypi.com>

Phil

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
