Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04B48172898
	for <lists+linux-rpi-kernel@lfdr.de>; Thu, 27 Feb 2020 20:30:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=FCW7SXt7EvHbmBscbYotlsHXr3bLjkhWaQ5RyoN5o4w=; b=EJE8mh99A/Z5QTkk/ZjfOPvHKV
	co7jqAE0M7dbCPkRjj673o81dLxr2JsHlvD0tqgXiA6hlIC4qvtUblLTb62l1OJecWDhCHgd7SmV9
	8RclyOfYkUr0z86IB/0XNsHxnn8lWI0kaH/613BdXl8Vlkrdw7xNRXJpO/fUATBQSRyqLpUVVJcZY
	3MmMgLbhdy5O3McATT2VtnI2LxybkNqtnJchKtpZXKwJbI5cCkapw7LxniJVwr9LZNyw2MXtfFuJV
	siA4lUL8gCfJJCp/6pSha/oeZGAcGy1unHf/mJLznyOrqIwE4FUz/A5TZ6dKoFKjqGnjFKOjr5JEH
	h4h1QOXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Or6-00027v-0W; Thu, 27 Feb 2020 19:29:56 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7Or2-00025x-A2; Thu, 27 Feb 2020 19:29:54 +0000
Received: by mail-wr1-x442.google.com with SMTP id v2so150719wrp.12;
 Thu, 27 Feb 2020 11:29:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Ts+uSIKuoMAT4GVlY0xYp++rOG/WfuZn269REQF9/WI=;
 b=I0bRD9FLZLEifaJVygPjHYFoM6s4ZauKp9Ur7rpMtb+um53Ml9hWW6QBx0T9PyWyOG
 IrmX+XF0avqqEzPJV+/uk+sCByBtJup1kJeD4lGT+mlD7d2Ve66sOUjYX6OiuAX323u6
 MaMM5Yu2RjvjZJ7DvCyZGgVVCxiZs2RMYzvu/lb80503mtE+kvzZ+gKbkG4xswTaFkec
 LMhRlbaIEU2R7dX2Pw1AYM7pNwyPO7JFSW0whRCY1SVJUye5UYz2hvfQOdUpWnxH9xGO
 Ip/l2oFQW0BIa3tySzEzBnmWwugGaU8NSv4nVaFJT0l/FOHF42xwRXajRxHuA5Pv2FN6
 A3Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Ts+uSIKuoMAT4GVlY0xYp++rOG/WfuZn269REQF9/WI=;
 b=BEi/4ccsf0qpKn6J7bKTpfH9QofI7GoISdSKIIAbnwO1VgDk0NGxGL08apuN7WY3E8
 JKMI9Xf57xI55jbvEJNTxCXTGXQRO37cFfnqYo+YZjmX1xzwaNCmaoTrvuh9Si+8eYmt
 nWDvC6la4gfeDeSKx9I/R+tIkjzYyPWIkenHtx7N/WKwYf+/h1wVzrup9TOvwQFUTHOI
 swjBs5eeiaS68vT7fUWH2dW+adzpP93nUF+6pXCezJec7AsVpBVhhZEpuh1llT92wpfY
 5n3VdyrGHiqLR5c/itm1iv64arTwLW/sAN49PknOpFpZsaHPwTulWyWtgo1D0j3nyeeI
 nLrA==
X-Gm-Message-State: APjAAAU6qAtem7po6XdFTBMFZezf2rnZ0Gly1v7mkcASBlrVeSqFP7QV
 er0mnfyvfoeqVB/AMP+pgSQ=
X-Google-Smtp-Source: APXvYqy1BlYk+WSVAjCb5Zo9RSyLM0W4u08H4uBOcKJqmwQRQm5P/RkPigt4t2fNyrvLi+/GS/Toxg==
X-Received: by 2002:a05:6000:1246:: with SMTP id
 j6mr357729wrx.233.1582831790230; 
 Thu, 27 Feb 2020 11:29:50 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id w1sm8878013wmc.11.2020.02.27.11.29.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Feb 2020 11:29:49 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH] ARM: dts: bcm2711: Add pcie0 alias
Date: Thu, 27 Feb 2020 11:29:46 -0800
Message-Id: <20200227192946.17328-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200226164601.20150-1-nsaenzjulienne@suse.de>
References: <20200226164601.20150-1-nsaenzjulienne@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_112952_357046_5BE286F9 
X-CRM114-Status: GOOD (  10.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, phil@raspberrypi.org,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

On Wed, 26 Feb 2020 17:46:00 +0100, Nicolas Saenz Julienne <nsaenzjulienne@suse.de> wrote:
> Some bcm2711 revisions have different DMA constraints on the their PCIE
> bus. The lower common denominator, being able to access the lower 3GB of
> memory, is the default setting for now. Newer SoC revisions are able to
> access the whole memory space.
> 
> Raspberry Pi 4's firmware is aware of this limitation and will correct
> the PCIE's dma-ranges property if a pcie0 alias is available. So add
> it.
> 
> Fixes: d5c8dc0d4c88 ("ARM: dts: bcm2711: Enable PCIe controller")
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> ---

Applied to devicetree/fixes, thanks!
--
Florian

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
