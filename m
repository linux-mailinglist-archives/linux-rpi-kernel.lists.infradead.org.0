Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41C5B1AD1A2
	for <lists+linux-rpi-kernel@lfdr.de>; Thu, 16 Apr 2020 22:58:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ZO5PVg37PGjBz6+TuZTwc5OLrRKmM/pJ6kWRMJx0x5o=; b=LWJXirovZWbQG2ItgDdRsHqGO7
	4AMmS3WgQPvGBIsu4q4mwip3pPzgJXn7K+EtFjvMwVes6sRNm6piqoq0TjSdt7Lm276atJWTPxJ2q
	3QPG0hezNyL+JiXRK6IrTM+2of9SMGvYQgMSMS+gIFifq9hYHdqyM6MNDFtFgqQ9HrhecK96TsrjB
	g9KqlrBV/NpyT1lv718T/B7ypmAl+OYvEVEm6WF8Hzxt4eIbzVB2ViXFgyZNMogM5jY0I3loYGqjj
	Dogb5LK6RqC5JR2bpradJeoSswLk1sXopc3GKE99uy4Fbt9E2Z4+vQAxKcIFr12vKHPEHF7KPi28p
	lEV+pq7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPBaL-0007sb-4J; Thu, 16 Apr 2020 20:58:09 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPBaJ-0007ru-4h
 for linux-rpi-kernel@lists.infradead.org; Thu, 16 Apr 2020 20:58:08 +0000
Received: by mail-pg1-x542.google.com with SMTP id x26so2207830pgc.10
 for <linux-rpi-kernel@lists.infradead.org>;
 Thu, 16 Apr 2020 13:58:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Sas/tGiFl0s7XZ0zL4ohjomf4TSfEGYFHbj6ThxC/Q8=;
 b=Lwu9UDtNMgAoUxxVC9TsbsE7mMgDb72Z7+nXg04RHG4hPJ0N7N7FE5lNMo60+lpWWa
 4Eazfitgo+CVVK+5Drb42fPHtYo+SzQ0f8hzYGgX5r3AShWZt3dme+hi/rCOBoYazyEm
 +/Doa7WIUyLFDB3q7j+zeQ1WAq1+BgKZ6bRT5ctUZt7QWlw+7tyWlf6ln1MOu89rSfEB
 foIeYMaplyuyuD/qrEC3StiHCpSKQDPr24nzua+dPJeMbvjyjmEpDJRtiTlj6o4FSaUh
 Nf5iUmtFzKLlcDs/YQXLIJx6grp4KCbEseUWSV2V6dTyuxfQmI2+qaa7aKVcQQMsgL0v
 WZlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Sas/tGiFl0s7XZ0zL4ohjomf4TSfEGYFHbj6ThxC/Q8=;
 b=hO2N54boLrwzTYWW85GBaxrQirGxeMQ/AGF1g3tt7LwpW+tyB0Sqf771BnEfT6Klna
 LB2l2ukFk1Jw9gfaHVexEZoSmSsBEeopm4VuZOODJ69gNt0u4fs71dD/SHr+TK8Q/X6t
 RgBIcdw/JFAA6SfRq+EBLXZmSd4uxscDyDRiUX0hbtQCHQSN1LrrW72dXKALQpCfA4Bh
 qdTaWayk6Q1ClRyNYntEM5UATfWg34VA3VY8EvkyZNqDWEnbPXx3GTAEJ9n1z6kUFpvL
 bQ00CWU5SQM8vAQBBn/30cVn8Yc7o1aq9WZseI7fweezArJ+vC+vbC7X/F7dDtpZZYFE
 dXEw==
X-Gm-Message-State: AGi0Pubd/K81GRI6aq6Qn5GcIUgWLcSYfL0xR2Y0H/SA+/DW+/C+J51m
 zc4JQ805IE38LmG6dBKu+nY=
X-Google-Smtp-Source: APiQypJ66yxVorklC/JNOIkrKD7QfHRAWlyj41i1m6VUlUr28zjVb28QuWVDrtMRRkQ16U+7sRSMXg==
X-Received: by 2002:a63:ca41:: with SMTP id o1mr34533711pgi.419.1587070686555; 
 Thu, 16 Apr 2020 13:58:06 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id g12sm2886932pfm.129.2020.04.16.13.58.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Apr 2020 13:58:05 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Rob Herring <robh+dt@kernel.org>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>, Eric Anholt <eric@anholt.net>
Subject: Re: [PATCH] ARM: dts: bcm283x: Disable dsi0 node
Date: Thu, 16 Apr 2020 13:58:04 -0700
Message-Id: <20200416205804.4640-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200415144233.23274-1-nsaenzjulienne@suse.de>
References: <20200415144233.23274-1-nsaenzjulienne@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_135807_185720_03DA2A72 
X-CRM114-Status: GOOD (  10.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

On Wed, 15 Apr 2020 16:42:33 +0200, Nicolas Saenz Julienne <nsaenzjulienne@suse.de> wrote:
> Since its inception the module was meant to be disabled by default, but
> the original commit failed to add the relevant property.
> 
> Fixes: 4aba4cf82054 ("ARM: dts: bcm2835: Add the DSI module nodes and clocks")
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> ---

Applied to devicetree/fixes, thanks!
--
Florian

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
