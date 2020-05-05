Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DEBD1C5642
	for <lists+linux-rpi-kernel@lfdr.de>; Tue,  5 May 2020 15:06:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ygoyOUtRlqvbmm7mPkB3qXy1VBgG8OJ3VFH3B+eZAGw=; b=RGWbaPDsnEBuHp
	L62R/Pq8Vz+y7Ww1YxGnzym9Rbs9UhTyCRcPRtwebwgXYwCsdOkdF9nB+pWHlpke8ukrOEC1rTVRA
	4zne3bzeCxO3Tn3zQsuzKMFDQv0zIMwNHrcdFC9v7J28iJPMkRgiRuLOl+5XysgWfgMt70DhqdzGx
	dbSMq6LaxNs2ySYCDBlVr1EHhlERlFxbFUzFDeuVl4zaxB3rcipYyEq7m6zXIIJJ4quwJrkn38z6h
	1LGBD0aR+eJs5RVpfQZyyCSsuphLVilYBhvgzgEqngFHSF+2rwCdZEimGiaQ5WfrMFwP+YFIWHgck
	7QAfgU8ESmrmcAd883tQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVxGo-0001PT-QB; Tue, 05 May 2020 13:05:58 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVxGl-0001Oh-Dw
 for linux-rpi-kernel@lists.infradead.org; Tue, 05 May 2020 13:05:56 +0000
Received: by mail-wr1-x444.google.com with SMTP id e16so2659173wra.7
 for <linux-rpi-kernel@lists.infradead.org>;
 Tue, 05 May 2020 06:05:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition;
 bh=k0zAYBpU/9213QWCZhBHTcViN1Nc4VKyJqJ3/INSFsY=;
 b=bR15CWhLHgQtlAkV6njSG/uRz/QS3ZgzjA2Q8VO32pjaM5kTWem0SpR1JVdfehnDht
 /179GNrIaqc8j9N8bv088gCD+yTQ9DHI6x9JXi70xxnWBXQkpjUqJJfIQk455J9KTwoc
 bXCGY9qIgoiW2iiXPjd27sk6a2km1NtWqbYLpjMJZwD7SZa3ukbMdpu2MzO/pjZ3djh0
 suF9WZysjyWRk1NAm/J+UrW3D4DvQTLpSvgee98qUVF0snui1GP4G5pQo2g2MRSL9tV3
 k4vrG2Qv5vR6LbPNx6C2soo+TJlzVHg7qeVaNTX0Xc96IjdmW64dIlTVRMn7n4RDvZ14
 /IlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition;
 bh=k0zAYBpU/9213QWCZhBHTcViN1Nc4VKyJqJ3/INSFsY=;
 b=EoRb+dtiFmkTAZxtuf80ht2jhDtxVbdaWAQli2PYuQLox4lZTXOluIXXLnx5mOWA7V
 v6diETXDcyWcmN6Cr5VpV9huIKkKBZUfOuIycv1flAKyzkERuizVvNpippxnB4Lf1h4k
 jnbByAI+2kprjJ56E65XvWZAhdOyM8bQeQRrdzF23/6iPx9OsgkNy8oxkvYqSRKjCGAf
 G/jgyY+h1rDmnTzNPrZskbv394/u0cf/1+9ZsPt4/zaTw0ETWRBOoNyT6TnrpRcPYGTk
 drZx8PQqoxKr3zYuQ+UVyRl7VmAJHd5b469FNL1Vz//F1lMwOeTYIrfIhSYxm2iI5Jcv
 c7aw==
X-Gm-Message-State: AGi0Pua+Fr6zIaGbXLUq9o/H7Ftki6LavBrXkwKDPZvFLEjacdFpNaL9
 nMWnyguvGvv3hIeV6m4O8VBsZRbb
X-Google-Smtp-Source: APiQypIW1SuJzXMoqubzRw0oWih7cJ+FdstWZO8Yzb2UAvEcsCnwqVsotTuNMpkvRCzqc4CJJ/pHmA==
X-Received: by 2002:a5d:4c8c:: with SMTP id z12mr3964221wrs.213.1588683947808; 
 Tue, 05 May 2020 06:05:47 -0700 (PDT)
Received: from vasteMachine (s559503e2.adsl.online.nl. [85.149.3.226])
 by smtp.gmail.com with ESMTPSA id o18sm3116415wrp.23.2020.05.05.06.05.46
 for <linux-rpi-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 May 2020 06:05:46 -0700 (PDT)
Date: Tue, 5 May 2020 15:05:32 +0200
From: Jacko Dirks <jdirks.linuxdev@gmail.com>
To: linux-rpi-kernel@lists.infradead.org
Subject: Implicit fallthrough in
 drivers/net/wireless/realtek/rtl8192cu/hal/rtl8192c/usb/usb_halinit.c, bug?
Message-ID: <20200505130532.GA464596@vasteMachine>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_060555_467925_7F9AE0A2 
X-CRM114-Status: UNSURE (   7.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jdirks.linuxdev[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

Hi there,

I want to preface this message by stating that I am not sure wether or
not I am transmitting this message to the right place. It is a question
about the file
drivers/net/wireless/realtek/rtl8192cu/hal/rtl8192c/usb/usb_halinit.c,
which is not in the actual Linux repository on git.kernel.org, but is
part of the repository github.com/raspberrypi/linux. On to the question.

When compiling
drivers/net/wireless/realtek/rtl8192cu/hal/rtl8192c/usb/usb_halinit.c
(henceforth refered to as usb_halinit.c), you will get the following
warning:

drivers/net/wireless/realtek/rtl8192cu/hal/rtl8192c/usb/usb_halinit.c:5694:20: warning: this statement may fall through [-Wimplicit-fallthrough=]
 5694 |    *((u16 *)(val)) = pHalData->BasicRateSet;
      |    ~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~
drivers/net/wireless/realtek/rtl8192cu/hal/rtl8192c/usb/usb_halinit.c:5695:3: note: here
 5695 |   case HW_VAR_TXPAUSE:
      |   ^~~~
Looking at usb_halinit.c, we see the following code:

	switch(variable)
	{
		case HW_VAR_BASIC_RATE:
			*((u16 *)(val)) = pHalData->BasicRateSet;
		case HW_VAR_TXPAUSE:
			val[0] = rtw_read8(Adapter, REG_TXPAUSE);
			break;
		case HW_VAR_BCN_VALID:
			//BCN_VALID, BIT16 of REG_TDECTRL = BIT0 of REG_TDECTRL+2
			val[0] = (BIT0 & rtw_read8(Adapter, REG_TDECTRL+2))?_TRUE:_FALSE;
			break;
		case HW_VAR_DM_FLAG:
			val[0] = pHalData->dmpriv.DMFlag;
			break;
		case HW_VAR_RF_TYPE:
			val[0] = pHalData->rf_type;
			break;

(Lines 5691 and further). Looking at this, I think there might be an
acutal bug here. val[0] is written twice if variable = HW_VAR_BASIC_RATE and the code also gives no
hints of intentional fallthrough.

Can someone who actually knows confirm or deny this?

Thanks,

Jacko Dirks

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
