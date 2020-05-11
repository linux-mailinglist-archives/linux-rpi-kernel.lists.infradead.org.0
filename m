Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41D761CE67F
	for <lists+linux-rpi-kernel@lfdr.de>; Mon, 11 May 2020 23:02:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=/gHVEIrQD4GtJVFFQdCBZ6MkhRNYFi27xotputj4wcg=; b=HVI0+IKcfStud6yKNqGFv31Xa1
	pCaOlsZJk9MbFuLDqzsjhGyNCLSLrO6Nfm87ncYExYfHLlK7UZ0LPdje94amtoNoRr3CiwS6Z5VSA
	x4cWt048E6tAEU6QQKg8kbrYyyfpqe1Pt5dXUMEay9HJx5MQSDf+xWcF4dUPzAKajNkalgqcxdIJj
	5b1Ny1EsfguxoCrqyXPHae6YYusO4rRmNU7eBxsmCYV3VROo6g38ub8DwOoL2UYieD07C7ahKPTk3
	j4QISDd+b5PIV8DPtkraf4i/E4n1davYfE5PtcD/FzoJ1Y9N+FhA4Yx1XlFgtG2I9Ttk9c5Y8Rjjs
	P2k6oJEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYFZZ-0006Tx-2n; Mon, 11 May 2020 21:02:49 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYFZW-0006Tg-1Z
 for linux-rpi-kernel@lists.infradead.org; Mon, 11 May 2020 21:02:47 +0000
Received: by mail-pf1-x444.google.com with SMTP id x77so5306578pfc.0
 for <linux-rpi-kernel@lists.infradead.org>;
 Mon, 11 May 2020 14:02:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=sSsJuiuQVhX5mi+0hDBDIBKGp39VuH2U96/o+lEhntI=;
 b=stiW8was2ZkQrskwkMD/u2MqfHNAkQB3uEQRKk2uZn0hcIA29HYKSr3aPf1ip6E+NJ
 FBhCXI0cO1MfkYL21OBWDivT/nxpnciW3X0O1EqTHGxnd8rpceTIlIywSF+1WmHuRxLd
 1eLOhrAeK4ff1GxvFOIr2SXkukkZy++YIzbggOIiW2e5u3u/lnt+5FDSuTgryx2rkQsp
 hQIPP9Z8tcIch+2lr4rzOjabDM15Elvzb+15SWvw/UA1FQisl+VB4bH375R7ztwqqNeE
 NeKVvvMeTtV9hM9NktOXPBE921OW8ecDMiTIWudZCcpglwaq+LZldC2cKOdGsPe/TkZz
 9NtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=sSsJuiuQVhX5mi+0hDBDIBKGp39VuH2U96/o+lEhntI=;
 b=rdW3IYuVVRk6acgfLPhQh2m7nbcGJalU2tfY5D+DJ6HduCWhvcGITXajV7LzWrsWY0
 x593XMGt56f6d7E4kux81scXfGo3X+7L2cWwFaBpWBYM3Y15yTmrvHHDKg2Q6PokmEt2
 EHUt+jdT409h558HHpVHxmtNgg6ecUU+UmhJJmbj5ni0iAl8D5J/x/erpdtgxSmc8g8b
 6kWmfh+3C2tVJnevByLpOWucggM92rmoB0OTvGvOsTRzUDPbCDlaaBoun+q00FhTtlTl
 U7QF39AtA9Fy8cnVly4HUkdK47lrvjXMdWHvXwrAiV/y2YFTcHHBQxPgt3v1FHT+XFS7
 boAQ==
X-Gm-Message-State: AGi0Pub2+4YV8aScvQnIhCrM7QxjezIOb4UK3ooiLE9sBHRLlSl/BJH2
 JTR/RxvgnICRiRdS/c1Z+GaCmRmX
X-Google-Smtp-Source: APiQypJRVv554GH4F41XHegtP2kTtAQfKN5F1lohS2Cs+iIkrMulrtyKgFejve5HIUAqf2YdCxUfsA==
X-Received: by 2002:a63:5a41:: with SMTP id k1mr17002700pgm.424.1589230964794; 
 Mon, 11 May 2020 14:02:44 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id p24sm9899121pff.92.2020.05.11.14.02.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 May 2020 14:02:43 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] MAINTAINERS: Update Raspberry Pi development repository
Date: Mon, 11 May 2020 14:02:42 -0700
Message-Id: <20200511210242.27892-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200511110250.23869-1-nsaenzjulienne@suse.de>
References: <20200511110250.23869-1-nsaenzjulienne@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_140246_108786_ED7615A8 
X-CRM114-Status: UNSURE (   5.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-rpi-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

On Mon, 11 May 2020 13:02:50 +0200, Nicolas Saenz Julienne <nsaenzjulienne@suse.de> wrote:
> Eric Anholt's repo isn't used anymore. List current one.
> 
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> ---

Applied to maintainers/next, thanks!
--
Florian

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
