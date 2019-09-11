Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6306AFF2D
	for <lists+linux-rpi-kernel@lfdr.de>; Wed, 11 Sep 2019 16:52:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zPnvWc3KO/wE4AxAsTVMnLbLVqxT4R+KwKcTeGclnRQ=; b=GV8H4a8eePVT1H
	ydLvmzNV7KzdqIzGJsYCdRZ0ZEXihT6pMGfOkaR+N3rgUdsjZOdxlLQS+s0zMT7LZG6I1tztqAWmc
	//daru8RUrnVL+ljKvRwAU7ffQ5pHCUI2oGnAGKqLAkM3oXqrLNLmQRI8FwwQfTSI1URsqWaOfLft
	UgacxyePe6eSAL9RA6Jv7sqG+ikE6lip4mR/Hmwfi/OdV5dJm3YmLj+HiZQmiTWmSCGvunXlJkBeK
	ZzAmvTptVNXR99DngBMWzMFdArj00/4DtT9zaUSx5nwZdnJ/+gCnuYTVxg1zklhpiyPrYyaXQuPoE
	lM1wDkt5eM6ERwmFmAqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i83yR-0007va-6p; Wed, 11 Sep 2019 14:51:59 +0000
Received: from aserp2120.oracle.com ([141.146.126.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i83yL-0007vA-GL
 for linux-rpi-kernel@lists.infradead.org; Wed, 11 Sep 2019 14:51:57 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x8BEi0YN161669;
 Wed, 11 Sep 2019 14:51:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=GALjjsQ4XuYbTbMKG4BUnACZ78xWL+7Db4FVG5RO2+k=;
 b=U0v+kCO3frbL4CXrNOLTwy2buzmL0rI1kd9rn4/GnGpuRAXLmxRVcw9t6z0hvwOnIPuF
 khPYVpp2Qe5miSZXn8z4lXHttKdts51XbQL6Cqq5pSnuLgTwXdlbDYxxdwYDQvyG2Fto
 GQHHZDZ+vxoWVXDizobo9cpByxp8NqS0w4aOGd3smYY2FknSZnmGsDRUwYsuYe97uXh+
 PZiKNMhkHRQlWWHCOBdNzDC0EHm7l4SjYRHrui2t/mxfXyVSSjxgbFQU1I8OphBvUAMq
 oq+Gf5iBsLoR39U6uzaO33wWwJ4dvt3YxFI46Ppw2APE7e5F5q2DFhVvzBFVUFk9ded4 Fg== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by aserp2120.oracle.com with ESMTP id 2uw1jyakas-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 11 Sep 2019 14:51:32 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x8BEhja2115834;
 Wed, 11 Sep 2019 14:51:31 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3020.oracle.com with ESMTP id 2uxk0tach8-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 11 Sep 2019 14:51:31 +0000
Received: from abhmp0014.oracle.com (abhmp0014.oracle.com [141.146.116.20])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x8BEkOxI002956;
 Wed, 11 Sep 2019 14:46:24 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 11 Sep 2019 07:46:23 -0700
Date: Wed, 11 Sep 2019 17:46:12 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Rohit Sarkar <rohitsarkar5398@gmail.com>
Subject: Re: [PATCH] staging: vhciq_core: replace snprintf with scnprintf
Message-ID: <20190911144312.GL15977@kadam>
References: <20190911135112.GA5569@SARKAR>
 <7bf3c74d-e690-1ef1-dd74-ac98667e42ef@i2se.com>
 <20190911142543.GA9873@SARKAR>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190911142543.GA9873@SARKAR>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9377
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1906280000 definitions=main-1909110138
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9377
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1906280000
 definitions=main-1909110138
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_075153_632261_0F0EDEF8 
X-CRM114-Status: GOOD (  17.34  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.78 listed in list.dnswl.org]
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

On Wed, Sep 11, 2019 at 07:55:43PM +0530, Rohit Sarkar wrote:
> On Wed, Sep 11, 2019 at 04:17:25PM +0200, Stefan Wahren wrote:
> > Hi Rohit,
> > 
> > On 11.09.19 15:51, Rohit Sarkar wrote:
> > > When the number of bytes to be printed exceeds the limit snprintf
> > > returns the number of bytes that would have been printed (if there was
> > > no truncation). This might cause issues, hence use scnprintf which
> > > returns the actual number of bytes printed to buffer always
> > >
> > > Signed-off-by: Rohit Sarkar <rohitsarkar5398@gmail.com>
> > thanks for your patch. Did you test your change on the Raspberry Pi?
> 
> Hey Stefan,
> No I haven't done so as I thought this is a generic change?
> Will that be necessary?

No.  It's not required.  The patch is easy to audit and clearly
harmless.

The question would be does it actually fix a bug?  I looked at it and
some of the strings are definitely a bit long.  The longest one I saw
was:
	"  Slots: %d available (%d data), %d recyclable, %d stalls (%d data)",
	123456789 123456789 123456789 123456789 123456789 123456789 123456789

If you get a lot of stalls, then that looks like it could lead to a
read overflow (an information leak).  Either way this does make the
code a bit easier to audit so it seems like a nice cleanup.  Next time
though, I really would prefer if you put this sort analysis in your
commit message so I can just glance over it.  (I'm lazy).

Reviewed-by: Dan Carpenter <dan.carpenter@oracle.com>

regards,
dan carpenter

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
