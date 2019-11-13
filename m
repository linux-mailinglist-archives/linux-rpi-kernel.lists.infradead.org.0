Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95382FB71C
	for <lists+linux-rpi-kernel@lfdr.de>; Wed, 13 Nov 2019 19:19:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2e2YJnKh0YVnivcex6diI2no9PgmRT3ref4fuuPa4uo=; b=s7QzWakinZMK1n
	13uNzInm4PQ+Ula2oEA5JEXM6qgxRW4caE3UHdkFa99VhxZN/Fcep5VifIkgyxu5GkPBnWoq8y7ZG
	qmwN3QxtiLrFHa6F1cLyvPckhgr3aK3xPJla7gHqRbrk2PboGUKpaIdXeGsd/bQDCi3+uiEZci3T1
	9blek637JQy7A8de/IDpSYg2ftV0ZNcm72g3p1lM1WENtBYmBwutiunkptiQS/19b4khsrkl6iq2p
	63WerHyQKip1v2hXw7guSJzW7mYeLoub42nek2EVUKnDBSPMgIbJOuHvHs2Q8pefZLfa7fvlVRHih
	DfDx0ElugCKxu6tHsl9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUxEV-0003Ra-Si; Wed, 13 Nov 2019 18:19:11 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUxES-0003QJ-48
 for linux-rpi-kernel@lists.infradead.org; Wed, 13 Nov 2019 18:19:09 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xADI977H080954;
 Wed, 13 Nov 2019 18:17:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=s/C4gMF2RVVPDFj1GueO16cvWPMCqzc61gY61lcszxg=;
 b=NW+K0XRzODndaZ3Hv15Ezi+g9Rs/CPwCsb35ZEAUHlRiywc3z0fzNXLZNoIZJC4lqDMZ
 cs5KF1Zbyy62EDpq9u3yfbGCVanodJI32f0k9yG3Q+9hn6yp6bW2Vcv2TNfz9Y/HXLt4
 +O5Zx5oS3WixxSLNv0Fg4QN1fevyJkro7opn7V7u2DWLbAdQGAuA5mA3jLA5Meyt0Mhn
 m030bgyp3W9MJ8Wwxw6mazgYz2fiwpsQtpCji8hR4ffmwB/buvQKQ4OYiOtEbz0Miv6T
 NW2Nj3UOBKp4DZvuSBK2LSN1RNLX3qoUvd2v1nrlZQla7vY6v4PhdNxirYh3VQAzZFsG nQ== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2120.oracle.com with ESMTP id 2w5p3qx825-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 13 Nov 2019 18:17:56 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xADIDhNM099137;
 Wed, 13 Nov 2019 18:17:56 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3030.oracle.com with ESMTP id 2w8g17xw92-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 13 Nov 2019 18:17:56 +0000
Received: from abhmp0017.oracle.com (abhmp0017.oracle.com [141.146.116.23])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id xADIHqvA001618;
 Wed, 13 Nov 2019 18:17:53 GMT
Received: from kadam (/129.205.23.165) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 13 Nov 2019 10:17:52 -0800
Date: Wed, 13 Nov 2019 21:17:42 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
Subject: Re: [PATCH 1/2] staging: vchiq: Move retrieval of rpi_firmware to
 vchiq_platform_init()
Message-ID: <20191113181742.GB3284@kadam>
References: <cover.1573482698.git.marcgonzalez@google.com>
 <6054322775b30a90c1fed28a085e5fd578ed70fa.1573482698.git.marcgonzalez@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6054322775b30a90c1fed28a085e5fd578ed70fa.1573482698.git.marcgonzalez@google.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9440
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1910280000 definitions=main-1911130157
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9440
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1910280000
 definitions=main-1911130157
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_101908_267847_B39F986C 
X-CRM114-Status: GOOD (  13.32  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

On Mon, Nov 11, 2019 at 12:14:23PM -0500, Marcelo Diop-Gonzalez wrote:
> This allows the removal of the struct rpi_firmware* member
> from struct vchiq_drvdata.
> 

Please don't start your commit message in the middle of a sentence.

It looks like this:
https://marc.info/?l=linux-driver-devel&m=157349280800959&w=2


> Signed-off-by: Marcelo Diop-Gonzalez <marcgonzalez@google.com>

regards,
dan carpenter

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
