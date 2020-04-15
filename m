Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 457C41AB120
	for <lists+linux-rpi-kernel@lfdr.de>; Wed, 15 Apr 2020 21:17:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DdSxtQb5+ocU3Smg00OAuXCg+y5NtEdvWkZXtT+NA6Y=; b=NNdOx+Ph9YSxPo
	3zKbSmkVNvUB2BPIcwABeTPIsNQI3aldk/yenDAm1iPv/CN5ZqL6PtImEOnYF4DH1j2KP5MYfJMzF
	QJb1UKj0tTyQR9O83ln8rt3IoaptgZ75gnRHfgb6subpZHpEtPz0feAp8UOA+CeyrYsPcwAa2nidL
	96DdCQP4ajlqy+GyuqezBduffV2X8MKsZYzD3NcchzsYin5JRJPYaLnPmd2hgyN+18SPRKvUrYRwT
	7npk692blxYHsNhgJzNFoH+e1kEQdK1VlzoXc8jbFjVItCqkLNjalcxDg8nhL+gCu1C1tJKi0wI6m
	524PrdFm26o5NN6Qc2FQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOnXL-0000Ir-0d; Wed, 15 Apr 2020 19:17:27 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOnXF-0000IG-4K
 for linux-rpi-kernel@lists.infradead.org; Wed, 15 Apr 2020 19:17:25 +0000
Received: by mail-lf1-x142.google.com with SMTP id r17so3558924lff.2
 for <linux-rpi-kernel@lists.infradead.org>;
 Wed, 15 Apr 2020 12:17:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=anholt-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2Li6Tf7eb/94qSjOO3SfTTxWgQZS96NjwL2/MTelfTs=;
 b=JCVZVhXeCt1StGEKOwQldZeE69vytts+PPBX/IEVT+TCFBmAPjCojq/XLChUGiQcWh
 rn5v+40mBZ7oBZtKcDKjEMJhY4Odhnvn7lLpMeoKRsDCbRpp6oo6+LTHZeebtyMXE0MV
 ipVKSr1WJWA/P62XD4l1DsnxFAUqoo/c+SQi2LkH9cgNH2GNpUgTS5eI6s8tQaknb8eM
 OHXwDebhW8JZLdGF163fgUPSdbM3U94zhx/8Ii3dDwXfQlIXp1QcxXwxwoPOJOMwWR/6
 CrKwEvBWQWuqhAjMf+OUI5ETWs55JmyxbiQSgjvhmFQo1/+wSNF/nqMDsW4Ctsv+3sFk
 U12w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2Li6Tf7eb/94qSjOO3SfTTxWgQZS96NjwL2/MTelfTs=;
 b=EHQEfzD54VlfPp8lR8Bi6IkRn0nkrne3A4AEY/+h+Pq4GRAnhMYV2KnNY6H5bdTjLV
 2EPkjOdU23YgHqkeYUDIAKCQQmYHXQghtwCn4S177Vm7scRLv5Ix7M4iL5LwKbTQGQNV
 tcc9oaGKQu5PnJGwsTr6ffdOBcLFWI3apkuv2FcRil9pmM5xk3pYymYkgvtomWlMGbDI
 2au8hjkw9kCiTKdIUTh59rKfyDmodRAOLXjHYSRPRs8y6LbffM5qQZOIA59G4AO/Q97Z
 N3I33IGOQ7t7GeqNP+dcULqEH+oPgvQMWan565pqn/F8zWweOFI07ODbEvJtVoYwcQCB
 EnKw==
X-Gm-Message-State: AGi0PuaFq2vINPQZDLOJR1rJCf4DQLMyvSJdpS5dvNjR2ryMFnL/cdwj
 otdOesYcDsORZkf6mjD/wpkL22+DvQnt5asUJhk1Hg==
X-Google-Smtp-Source: APiQypJw4CeUT45MAbksOXKhbBHlaf00wE31zM5ZLC/zDaXhf/09xcV158G7zniXKFzLj9VS2oryuZ+szRrdLMbITKE=
X-Received: by 2002:a19:d3:: with SMTP id 202mr3873367lfa.24.1586978238610;
 Wed, 15 Apr 2020 12:17:18 -0700 (PDT)
MIME-Version: 1.0
References: <20200415144233.23274-1-nsaenzjulienne@suse.de>
In-Reply-To: <20200415144233.23274-1-nsaenzjulienne@suse.de>
From: Eric Anholt <eric@anholt.net>
Date: Wed, 15 Apr 2020 12:17:07 -0700
Message-ID: <CADaigPXwfjd-HoOtBm_fuPQ9eh7AKTaJx+ocLsppPFdL3Cr4jg@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: bcm283x: Disable dsi0 node
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_121721_221909_2D9FA667 
X-CRM114-Status: GOOD (  16.00  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Scott Branden <sbranden@broadcom.com>,
 Ray Jui <rjui@broadcom.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 15, 2020 at 7:42 AM Nicolas Saenz Julienne
<nsaenzjulienne@suse.de> wrote:
>
> Since its inception the module was meant to be disabled by default, but
> the original commit failed to add the relevant property.
>
> Fixes: 4aba4cf82054 ("ARM: dts: bcm2835: Add the DSI module nodes and clocks")
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> ---
>  arch/arm/boot/dts/bcm283x.dtsi | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/arch/arm/boot/dts/bcm283x.dtsi b/arch/arm/boot/dts/bcm283x.dtsi
> index e1abe8c730cef..b83a864e2e8ba 100644
> --- a/arch/arm/boot/dts/bcm283x.dtsi
> +++ b/arch/arm/boot/dts/bcm283x.dtsi
> @@ -372,6 +372,7 @@ dsi0: dsi@7e209000 {
>                                              "dsi0_ddr2",
>                                              "dsi0_ddr";
>
> +                       status = "disabled";
>                 };

If you've confirmed that vc4 still probes,

Reviewed-by: Eric Anholt <eric@anholt.net>

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
