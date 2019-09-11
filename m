Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C6D8B029F
	for <lists+linux-rpi-kernel@lfdr.de>; Wed, 11 Sep 2019 19:25:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e18NxV1ZRMg5sKfcD4K55fPMqPeWazgaTLDfMMhC1Q8=; b=LB/yTIpSulMDIh
	ZkU+xIQpE4NicniumTNjEb+g0WFnwCo3uKHdvQl6Xbl0PuW7Tr++VAOb5tANX10/UcKpIsgVU4lMV
	HF/Cmkml8lZqjM9h25C6Q/+IUKXv5HbK7My+jZ3pcVBO3DFLKB9+gm8QVsKLrv1WkuFWQRtV4W6/b
	MRBy4C3HCXvYLcsXRoXaGhB+Ad3s3GQgNd/XskGuXnT+eIEt/2WA5nPktbNDcpsjk1TghmzXmvz0n
	zQ47/V8ld2PrY9491yF5hOUj1Co5Vg2sA8WyVjUjUtlqOGL0fw/pZpOwI/J3oKda8Q9MhmqyN86HA
	WIF0Ruzdm5CPzJXyFCwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i86MW-0007MO-5h; Wed, 11 Sep 2019 17:25:00 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i86MT-0007Ly-1X
 for linux-rpi-kernel@lists.infradead.org; Wed, 11 Sep 2019 17:24:58 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x8BHNx0G181328;
 Wed, 11 Sep 2019 17:24:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=VWik13ipRm/Hq5xXs2BO/ZA9+psKkHTYcDciUtPvFGk=;
 b=FOlnkmNMYpZSJciKOEf8UOquN/Ieu7QWq/eYhP/64U5tZ9Iu+grNzpsOT+coBCCeEZh4
 CGQL8IGXTgfhYUfzN3MpgDhpsFtXT4YctwTm7oeWfyp0cJBkyFjHgfovfGYKR7Z9TFBD
 djSYrBNLrxdO2XrVOKKo+rWTeSiQXOzu4r5W7MlQJK+k++D0P/ChjuwX3+V4ZhQVylPA
 nCKRY4EmjYj4J+yAIL1vl0F92EGefDDHq7q8jliqgpCgQZ2/HPeSkoaYnbymHTZKC1Mb
 G5CRwH0arIsyUxrnH8l10geCt9CHrGPSNz81dxE6+Dx6BVrtc/Wa+GlST4njo5Htqxzh 4g== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2130.oracle.com with ESMTP id 2uw1m93nwb-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 11 Sep 2019 17:24:34 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x8BHOL9V006379;
 Wed, 11 Sep 2019 17:24:33 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3020.oracle.com with ESMTP id 2uxk0tfbpr-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 11 Sep 2019 17:24:33 +0000
Received: from abhmp0007.oracle.com (abhmp0007.oracle.com [141.146.116.13])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x8BHOTtE032582;
 Wed, 11 Sep 2019 17:24:30 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 11 Sep 2019 10:24:29 -0700
Date: Wed, 11 Sep 2019 20:24:22 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Rohit Sarkar <rohitsarkar5398@gmail.com>
Subject: Re: [PATCH] staging: vhciq_core: replace snprintf with scnprintf
Message-ID: <20190911172422.GK20699@kadam>
References: <20190911135112.GA5569@SARKAR>
 <7bf3c74d-e690-1ef1-dd74-ac98667e42ef@i2se.com>
 <20190911142543.GA9873@SARKAR> <20190911144312.GL15977@kadam>
 <20190911150300.GA12027@SARKAR>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190911150300.GA12027@SARKAR>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9377
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=693
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1906280000 definitions=main-1909110160
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9377
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=763 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1906280000
 definitions=main-1909110160
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_102457_172254_D1804EEE 
X-CRM114-Status: GOOD (  11.97  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kernel-janitors@vger.kernel.org,
 Tobias =?iso-8859-1?Q?B=FCttner?= <tobias.buettner@fau.de>,
 Dominic Braun <inf.braun@fau.de>, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 11, 2019 at 08:33:00PM +0530, Rohit Sarkar wrote:
> There are a lot of usages of "snprintf" throughout the staging
> directory (315 to be exact)
> Would it be worthwhile to find ones that may cause an information leak
> and replace them with "scnprintf"?

A lot of times it's really easy to see that the uses are safe, so
snprintf() is fine in that case.  If it's not obviously safe then change
it.

regards,
dan carpenter


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
