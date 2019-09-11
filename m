Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19C0DB02C9
	for <lists+linux-rpi-kernel@lfdr.de>; Wed, 11 Sep 2019 19:38:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TBu66iD7s3YYgf9fk7WxrqCxqi9y2SX//7VDXNe1vBk=; b=btNLXv9mIVo4+5
	4cDJBtY3VIdF0hXj03sfL77evZ2t+8Z/3x2R1WBuj4nuNMsgilZfPrbqSQ3Urdo7FqZ3J0B2VkBwf
	XwiSffv/ADW16IAYfbCjN8VN76BV/fCwIqR+yr5m1viuyVYNZgaFZRfDpm9NPRFttg9AadPeI3hxq
	xFn87kXmOheT0FlZjRraEP51TMXeNlrwIopTCNOAKewn9D6B//EI+vBL/92hH1avc2PnxXcWIPW8C
	tIjRmdWOsEdhjnsB/SjBOrrcrlI61hJPbFceWgwuDhoUBft9L84WQbC/3fpUqZqd8Ilc3nk2Eeu2s
	EDB5WJerbM3a0tuzUniA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i86ZJ-0003UH-0T; Wed, 11 Sep 2019 17:38:13 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i86ZF-0003Tl-MJ
 for linux-rpi-kernel@lists.infradead.org; Wed, 11 Sep 2019 17:38:10 +0000
Received: by mail-pg1-x542.google.com with SMTP id c17so4119870pgg.4
 for <linux-rpi-kernel@lists.infradead.org>;
 Wed, 11 Sep 2019 10:38:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=HFNs3VIOJF+/jkI2zxc/LRnDhLyxHsi8ph6smCt7L+Q=;
 b=VUHggKfeiF4j3v+totu3C0Tp7d/fJ/jAEC1zdOH7PL668WlWcKvhipruHzLbs4m+Nc
 JrUBAYQo1bupDyEFXf3aRwA+XlLmxsmtF7saY1i7SSP02eCix58F3yxnteuMR7xiwEO3
 dlvjmP/WbmTkoVpDNNJN+y3fpkYc04i5Y2s5DNw+KeDkgJkeHOB6tkdA1BSFbk4r30UO
 yhQBG6VM4Ee2YONhlhaEdGtp0LLEm6Gfv5HwYbHVMJAMU8LVssO9ajHs8ZZq9dWE5kSV
 jMDAB2kSEseAea2r7G2jf7hKcr9/i0TlRtqbXbsWlrmxPBYjxOGkeVNbxodBaRnt0e8U
 hhOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=HFNs3VIOJF+/jkI2zxc/LRnDhLyxHsi8ph6smCt7L+Q=;
 b=GaiWAjwPjDsGBrx6fbjYvskA9Olm6uaEUKD/HapCk4amaAKUDgCll0lrctrcSVARYk
 9LrPUKJyGP2b24PwaCXceWwF5BecgvD2afm/lOSayww7Zw32LNQp3XLiZh5ZoGo58GGW
 I/W2dNS+FBr1aTCpLvzbCqFkliQ4qQlq3SGCuYJshCUBfh29Pk11L4sJyf9/Qg5qoV/0
 WwuuyhtZL/51lDQOHe08DGbueDPO+eriVacciDMiTeW2BoYxaHxp2BCbsUUytA2Bi/Fm
 Llgy//h2K5LWXbyB0xu3xBeV7aN794w+tquRdS9/6boWspCHmbrs30lPbktBRuZpckNz
 JDiA==
X-Gm-Message-State: APjAAAVGV/2G9MXIvhcdvNltMAAuFHbdrmIOQlV3A24Rltz3CktLK7k3
 V8wTD57zPhPdEE0g2MMLAQ8=
X-Google-Smtp-Source: APXvYqzhAECrRcZjqz2bn2C1j+nqBdtUB7K77PGTq3g0XPCgVmWcXukcaaW21a/0sx9XIIxonXpeIg==
X-Received: by 2002:a63:d64f:: with SMTP id d15mr34892141pgj.345.1568223488521; 
 Wed, 11 Sep 2019 10:38:08 -0700 (PDT)
Received: from SARKAR ([1.186.12.73])
 by smtp.gmail.com with ESMTPSA id 207sm29076441pfu.129.2019.09.11.10.38.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Sep 2019 10:38:08 -0700 (PDT)
Date: Wed, 11 Sep 2019 23:08:03 +0530
From: Rohit Sarkar <rohitsarkar5398@gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH] staging: vhciq_core: replace snprintf with scnprintf
Message-ID: <20190911173803.GA19183@SARKAR>
References: <20190911135112.GA5569@SARKAR>
 <7bf3c74d-e690-1ef1-dd74-ac98667e42ef@i2se.com>
 <20190911142543.GA9873@SARKAR> <20190911144312.GL15977@kadam>
 <20190911150300.GA12027@SARKAR> <20190911172422.GK20699@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190911172422.GK20699@kadam>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_103809_732481_268A89A1 
X-CRM114-Status: UNSURE (   9.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rohitsarkar5398[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (rohitsarkar5398[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kernel-janitors@vger.kernel.org,
 Tobias =?iso-8859-1?Q?B=FCttner?= <tobias.buettner@fau.de>,
 Dominic Braun <inf.braun@fau.de>, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 11, 2019 at 08:24:22PM +0300, Dan Carpenter wrote:
> On Wed, Sep 11, 2019 at 08:33:00PM +0530, Rohit Sarkar wrote:
> > There are a lot of usages of "snprintf" throughout the staging
> > directory (315 to be exact)
> > Would it be worthwhile to find ones that may cause an information leak
> > and replace them with "scnprintf"?
> 
> A lot of times it's really easy to see that the uses are safe, so
> snprintf() is fine in that case.  If it's not obviously safe then change
> it.
> 
> regards,
> dan carpenter
> 

Sure, thanks a ton!
regards,
Rohit

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
