Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95545CFC61
	for <lists+linux-rpi-kernel@lfdr.de>; Tue,  8 Oct 2019 16:27:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vXr3E/43mfZFSW6vhRWJ/iO0gNgv/E7bLvDwspSEBG0=; b=NgJiSiTzukJVl7
	g6W9nDqmvwbTl9XjU3gf8dDU6jsf5fMPkbg9/ZYHFwTKw/8htZd3rSnKYwWJPwwiLb+owuRo/wAuG
	1MBtM6lgHGZ7gcKf8k8ao9SVIHGo+49x6ctmOBhwGN3lRcvHknvywacio7i4o8FqZ9V3HSNTk+jFM
	HF19N9ryZXIm6zj3baBMJ9nF5HBy3HmbU85WkMcACfYt+bwIq95tCPERQQ2XcxN/oZhQ7eIvS2n0V
	6J0OpnMEP4fdOXcJ2sj1QQyxti+KeBAFLKpCsAUosOQ+jCQWflx1MHmua/PB9LVbWiTCwcojGHRMX
	yDCvkppl5kH0J4JDhUyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHqSk-0002Jq-2k; Tue, 08 Oct 2019 14:27:42 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHqSh-0002JH-0w
 for linux-rpi-kernel@lists.infradead.org; Tue, 08 Oct 2019 14:27:40 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x98E9LSo051875;
 Tue, 8 Oct 2019 14:27:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=GfyLIyqEXxIaQ2ACVoOP4oi4Ygck8YSsBITIQGuPxKk=;
 b=ZZO3tmZ3gQVSLd44qJDLr14aTBJ+45hTD+0oLHKe/QFJkx0wt0+8Il93UI62MOadCgun
 ZJ6zZ+pZDxJ8ldFJczwGgP3YcL323c84s04yGngHjtNTGa3YupuII/vmevf4fbw8yyKz
 CsjdpASsKjfV/5bpfHS0lbMEFOtckUmr0sWbL8zxzSj4oARMSlbtv2EQtc5RYqqE7g5D
 RYhNfxPXQRVlSBJbtYj8jpV/KpNztCyDVpYY+46TBuTAFVcve+zYzNa73qQMx+djrK++
 E/F1OxThFaX+iDXcuPfjZDmHVJ//uYpVYONh2FpX9igLgaDKbimL1ytGoG0Pp670fdXc oA== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2120.oracle.com with ESMTP id 2vektrde4w-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 08 Oct 2019 14:27:29 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x98E92iE155480;
 Tue, 8 Oct 2019 14:25:28 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3020.oracle.com with ESMTP id 2vg206ds9x-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 08 Oct 2019 14:25:28 +0000
Received: from abhmp0007.oracle.com (abhmp0007.oracle.com [141.146.116.13])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x98EPP4U015274;
 Tue, 8 Oct 2019 14:25:25 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 08 Oct 2019 07:25:24 -0700
Date: Tue, 8 Oct 2019 17:25:17 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Matteo Croce <mcroce@redhat.com>
Subject: Re: [PATCH] staging: vchiq: don't leak kernel address
Message-ID: <20191008142517.GO21515@kadam>
References: <20191008123346.3931-1-mcroce@redhat.com>
 <20191008131518.GH25098@kadam>
 <CAGnkfhxefH+3YKDWQMCOYoj1skcq6rUmHuiHZQ-76YixFqbQjg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAGnkfhxefH+3YKDWQMCOYoj1skcq6rUmHuiHZQ-76YixFqbQjg@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9403
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=748
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910080132
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9403
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=830 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910080132
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_072739_196684_03481EDF 
X-CRM114-Status: GOOD (  15.25  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 LKML <linux-kernel@vger.kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 08, 2019 at 04:21:54PM +0200, Matteo Croce wrote:
> On Tue, Oct 8, 2019 at 3:16 PM Dan Carpenter <dan.carpenter@oracle.com> wrote:
> >
> > The subject doesn't match the patch.  It should just be "remove useless
> > printk".
> >
> > regards,
> > dan carpenter
> >
> 
> Well, it avoids leaking an address by removing an useless printk.
> It seems that GKH already picked the patch in his staging tree, but
> I'm fine with both subjects, really,

The address wasn't leaked because it was already %pK.  The subject
says there is an info leak security problem, when the opposite is true.

regards,
dan carpenter


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
