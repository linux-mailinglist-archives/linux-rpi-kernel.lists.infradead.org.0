Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACEDC10E9F0
	for <lists+linux-rpi-kernel@lfdr.de>; Mon,  2 Dec 2019 13:10:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:From:To:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=r6t3bPdoczB3NIq1BFgsySLVr5Em/ZpuXAAHG9dckxw=; b=atqI4QlW5+One/
	effPkjiQ0yrA5HwFk17+eGafEkEWclji7Mm/7ZEsJBM7chMEtUs+zq3fxE3jnXMqbZalBr9e3hYVZ
	4190sBBd8NtdyX8Fi/W3vYPWaAmDro3buc6Wxb4hkwthiolGmsMEG8qBnkVsanNbKEF7WyJ0m4ElE
	vhfvF/8MFcmxzKiR7WJOziWZMXsK5RtPAKeznVW6lWtLXjO1GpazOXcfzu5t+KHmXaX57ZB5kKEUt
	xqrePod/KRrEziI3zclke67icngOq4plew3QnMNQzTk2hNAY+sKiiw9wOWcvX8TtQSLFbfG0/3zkc
	TLktNlVgYTxvlLLzhYjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibkX3-0003br-Db; Mon, 02 Dec 2019 12:10:25 +0000
Received: from mx07-00252a01.pphosted.com ([62.209.51.214])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibkWy-0003b0-BF
 for linux-rpi-kernel@lists.infradead.org; Mon, 02 Dec 2019 12:10:23 +0000
Received: from pps.filterd (m0102628.ppops.net [127.0.0.1])
 by mx07-00252a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xB2CA9MB022583
 for <linux-rpi-kernel@lists.infradead.org>; Mon, 2 Dec 2019 12:10:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=raspberrypi.org;
 h=to : from :
 subject : message-id : date : mime-version : content-type :
 content-transfer-encoding; s=pp;
 bh=Jqjk1YIYJn09xCowXcBKwYry3d3CxcwldaQy0bAF4+Q=;
 b=ye7zMlpJR3K0oiKdI1QMduVk7tY2kJyhnj3y46J0yDCTrDylhzq+JRt02wYbKN6XQfpl
 Y1z6DAt5e+zeOqZjM31VrHxrQukj62ClgFCtCkkIb3Xbgf2r74nMAz9e38cSu+GExJhL
 qCsz+dfL9RoPeQ/QibgLW0xo6cbDAEn2w5+rtAUwQ2dC80NvfCNzwyUhvccRyxoixvwx
 YNTluRn2RDNIchFbkUqzhwDa7ti+iqA+QUJhmlk+edfSJ4HPNy5ptcUIO1KiK8tTX9u0
 xrZIJ2KOgIXNBl91xDdXe3RS/TCKYEFup9x+esvBPAuUAYYiHowXIpgDkAN0Gn6nQY9O tQ== 
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69])
 by mx07-00252a01.pphosted.com with ESMTP id 2wkeq98ybv-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=OK)
 for <linux-rpi-kernel@lists.infradead.org>; Mon, 02 Dec 2019 12:10:14 +0000
Received: by mail-wr1-f69.google.com with SMTP id q6so20335656wrv.11
 for <linux-rpi-kernel@lists.infradead.org>;
 Mon, 02 Dec 2019 04:10:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=raspberrypi.org; s=google;
 h=to:from:subject:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=Jqjk1YIYJn09xCowXcBKwYry3d3CxcwldaQy0bAF4+Q=;
 b=FCx0/xtSaEZd5n1dRnLS5YgywVF5YHdqRHUzSIv80/ZUdXam1fBRjDRo0Tohbx3/8s
 a58nYgK5T0QMJ3NeM9mYoG7dkQituE9MDLZ2HWh71C0kggGxqqDQhCZhtQaQqB7LFfDM
 RFnlZRfBiyUmF0y0wCUgBBapOjqrvuG8Ph6hFvCAFrsiZvFHIZjZya/eYmQVH4gsjj6k
 +JjmF6jaozJr0/c0c7WThu27+tMscESWrSGfWAfHbEZVpl3qPmJuRDVEjksQCeMRzPkl
 u2/TEZafqnV95BUBbd9xpic+rv7fxm/t3jpan5uh9FqL25rqbW71BYciP2qUKCgmc7LA
 K6ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:from:subject:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=Jqjk1YIYJn09xCowXcBKwYry3d3CxcwldaQy0bAF4+Q=;
 b=NdY+HHrh432ijoSw/jP+xv1UnPirkCpprL2kPFQeLLvuhMGoQZQDjFaZwz4HxrlWVQ
 S5uI1mxWOebSdU1MJn4mwLxHFfaXzCKzSXoMj15wvKDcFHas49RyjmUA/ZF/yN7Cvb+G
 zs5VcJqtD/B6inRoQFfz4J+gJGyS3zdnGHHvH22jozCu1Zd3LCHAgm1B8YcEBNKfb5wY
 PdS69ndi8fIA6GHR3f1c86IGto4NQEzFRxunWTwiCkVDf3S2Py7yDdXbnvbbphIFLHZh
 Z5E2mF8zKioo3+hA0zFEIvt3khCUa4OIHX485OCtHXjSY0YiIEZx5NVqJjgiqkeqgJ0t
 Vk3w==
X-Gm-Message-State: APjAAAVsQXFhQY6nTOWxs1mV89u70zq8AnQ1g2PjyJGAz0IC7JFwdm7U
 JQAANkL377SbC76Gbs9h5/17RwybfR5DXzeQF0lWZwkSftkspmfiePl9H46nF0SXHyzXBQ23AUn
 FvcXKdMgESIctwUaGhRxWpux8JcLnPP/JGTk=
X-Received: by 2002:a7b:c19a:: with SMTP id y26mr26990124wmi.152.1575288613229; 
 Mon, 02 Dec 2019 04:10:13 -0800 (PST)
X-Google-Smtp-Source: APXvYqwduwi43ZhC6mYLsHsLeSw0dSkkpop68I1FsryXHBy7xeaVzmFCWlAfOi7ks19Ajav/5siL1Q==
X-Received: by 2002:a7b:c19a:: with SMTP id y26mr26990086wmi.152.1575288612940; 
 Mon, 02 Dec 2019 04:10:12 -0800 (PST)
Received: from ?IPv6:2a00:1098:3142:14:c5ae:b42a:dc72:b89c?
 ([2a00:1098:3142:14:c5ae:b42a:dc72:b89c])
 by smtp.gmail.com with ESMTPSA id d12sm14591659wrp.62.2019.12.02.04.10.11
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 02 Dec 2019 04:10:12 -0800 (PST)
To: Linus Walleij <linus.walleij@linaro.org>, Mark Brown <broonie@kernel.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-spi@vger.kernel.org, linux-rpi-kernel@lists.infradead.org
From: Phil Elwell <phil@raspberrypi.org>
Subject: Side effect of SPI GPIO descriptor usage
Message-ID: <db6a1e17-49a3-e3ed-7713-56b7763713d6@raspberrypi.org>
Date: Mon, 2 Dec 2019 12:10:11 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-12-02_02:2019-11-29,2019-12-02 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_041020_745221_50FD5983 
X-CRM114-Status: GOOD (  11.98  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.214 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

Hi,

A relatively recent patch [1] to the spi-bcm2835 driver modified it to 
use GPIO descriptors for chip select handling. A side effect of this 
change is to set the SPI_MODE_CS_HIGH flag for devices connected to the 
controller, which seems strange since it happens for devices that 
require the usual active-low chip select.

This change came to light when a user reported that the SPI-Py library
(a client of the spidev driver) wasn't working on 5.4, which was traced 
to it overwriting the SPI mode flags when it was only trying to set the
CPHA and CPOL flags. This had the affect of inverting the chip select
line, with the obvious consequences. That corruption of the flags is 
clearly an error, but what if the application and library were genuinely 
trying to specify that the attached device required an active-high chip 
select? Would it now require that they _clear_ the CS_HIGH flag?

Thanks,

Phil

[1] 3bd158c56a56 ("spi: bcm2835: Convert to use CS GPIO descriptors")

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
