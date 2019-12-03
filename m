Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B4171103D8
	for <lists+linux-rpi-kernel@lfdr.de>; Tue,  3 Dec 2019 18:49:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kc157cyxBrvvV3touGFm6Je2rCacbTp4uNJN8HrwjGM=; b=FVZq3QSLteHy+x
	+4aryZnE/ZVp4feuVk5cvlrpppE6OqobvlxisqW+OFsLjFkU65K4mwvUl15NqBkVlvVT4tsQTGjXo
	yYxgAcj1ymfExztjed0ERbuBdosea0PfhXyRmmXq/rT/B9BkHPjXM3aR1PnPIo7o0csvyFwqJV+4x
	ZTBdhY06lUMiBeFvKL0jzalo5jar1r9U0QjwQ38vKdo+0Gqzt5qkj+JRQag3C4EffnAd6VZik4eya
	+3mASR6H6GgueE8e920hr+UI1Osr5SAmgYhbG189nw62ClaQ0WERY/eu/g768eOGrn8T+r60qj7Tk
	dezDTIw1LECfOsY6iNCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icCIU-0005Wj-J0; Tue, 03 Dec 2019 17:49:14 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icCIR-0005VO-L0
 for linux-rpi-kernel@lists.infradead.org; Tue, 03 Dec 2019 17:49:13 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xB3HiHeL083905;
 Tue, 3 Dec 2019 17:48:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=sSASPAHagPCXIE0J+FbrggrMCD8nUj8l3FLAbhUoC+c=;
 b=MmRu/EbGwC7+cPmq7YtAcXvP5Pxgb5K/lqNTR83+9wsdlNUugNgRTHUv80Hh9uC+07p5
 mqmb9dYjffOh/UrNkMGvBtt6pSvQN1YVVIEHP2a0wvWB7/7Wccc8xD1m8hxzjtRcVNJI
 g9WFV70FR3hI+apZdgOgQKmPHLTpHEMYNsRFVMwWxVT/5V4J0DxMjEH0lZew6CFtlupa
 QsjMpPnvsZH2P4DTkvbmPeqoGMIYdL8yS/58uU2n4TcNJuuV1gQ2afm6RiYHrvtS17AP
 F+hpEFUMYoEvwlNcVl20+UPt7fU94W8F1x9sSqOaWt93/0t2y+63x4SomyC5ZPbjqdvY QA== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2130.oracle.com with ESMTP id 2wkfuu9hky-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 03 Dec 2019 17:48:58 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xB3Hi3ND034942;
 Tue, 3 Dec 2019 17:48:58 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3020.oracle.com with ESMTP id 2wnb80fx9t-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 03 Dec 2019 17:48:58 +0000
Received: from abhmp0014.oracle.com (abhmp0014.oracle.com [141.146.116.20])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id xB3HmsfK010433;
 Tue, 3 Dec 2019 17:48:54 GMT
Received: from kadam (/129.205.23.165) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 03 Dec 2019 09:48:53 -0800
Date: Tue, 3 Dec 2019 20:48:45 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
Subject: Re: [PATCH] staging: vchiq: call unregister_chrdev_region() when
 driver registration fails
Message-ID: <20191203174845.GB1765@kadam>
References: <20191203153921.70540-1-marcgonzalez@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191203153921.70540-1-marcgonzalez@google.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9460
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-1912030134
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9460
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-1912030134
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_094911_820949_571F4203 
X-CRM114-Status: GOOD (  11.40  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 03, 2019 at 10:39:21AM -0500, Marcelo Diop-Gonzalez wrote:
> This undoes the previous call to alloc_chrdev_region() on failure,
> and is probably what was meant originally given the label name.
> 
> Signed-off-by: Marcelo Diop-Gonzalez <marcgonzalez@google.com>

Fixes: 187ac53e590c ("staging: vchiq_arm: rework probe and init functions")
Reviewed-by: Dan Carpenter <dan.carpenter@oracle.com>

Thanks!

regards,
dan carpenter


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
