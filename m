Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CF561043AF
	for <lists+linux-rpi-kernel@lfdr.de>; Wed, 20 Nov 2019 19:51:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XeFltI3GvU+rRfZvozkxF5YRw+iZXe3lZQMHKCL6PBE=; b=gtiLGN2dFzbk4h
	5qgypfoFvUDFZdOh1U4NqHOdA31wXQL/HbgR/b8lL4JLFE9CHzZ+Ic+fhQaHxEamiLyKdpHkKElMS
	GJvKWOcLqzliB9mpjm0wREFB5tXdE9YtdOItzt43Ao8ohpk7cPZf+KLqGrr1JBW4KsnmCW3HtV74P
	Q689iAm5DIrFb2nmpkplBE33DVa+ZO06aQPTAnRfDJ+BGQ5FLNFGrIAwPsZirvDWFPZ3skCg0cUFs
	6lYavRS0y4ojm34zI9SUD8Kc1FNgh9F9HNm4vlq3zJbwJaupd4cbvhtD1QIVj60mVHHH0PboLMP4m
	7lXv9aJAR2EoqIYW2emA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXV4g-00046B-IG; Wed, 20 Nov 2019 18:51:34 +0000
Received: from aserp2120.oracle.com ([141.146.126.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXV4W-0003wo-Ux
 for linux-rpi-kernel@lists.infradead.org; Wed, 20 Nov 2019 18:51:26 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xAKIn4No011715;
 Wed, 20 Nov 2019 18:51:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=yDB8B98fuOgOqpF833AXkXbwwM7XtZGmTS4XraI7Ldw=;
 b=Kzt17tIfec0WJ64VYsRBtsIYJgKMvKTFjU1cVidSxnJ4XvqxzORpv8jh6VrDuh2MCWSV
 4T92Lljy1LVC9tr8NoggiuNdnoagOKP/NSkqS9o52ReSSdXXVE+eKFip1l42gFeXsSEC
 hzclteY61kAbezsZrQafB6Oc/hp+2Ql6dbfNS3RJLOASO+9wcxDcxiNF5FeUEe9n+NDA
 IFtm7wxhSqPV+TNQdP1bUiqsGVtMHSfN7beXPiIChG+vCeZcARiASiy1Ktncs1ga5uSY
 wSXWPxGy4pi1M5uLdtvm0TyNe0vVY2Si5quoelqQrRti7X+3aIJF6DfD4EG913EXtZAy RA== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by aserp2120.oracle.com with ESMTP id 2wa92pyg98-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 20 Nov 2019 18:51:10 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xAKImZ2f186682;
 Wed, 20 Nov 2019 18:51:09 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3020.oracle.com with ESMTP id 2wd46wwgfk-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 20 Nov 2019 18:51:09 +0000
Received: from abhmp0015.oracle.com (abhmp0015.oracle.com [141.146.116.21])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id xAKIp5Qk003372;
 Wed, 20 Nov 2019 18:51:07 GMT
Received: from kadam (/41.210.141.247) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 20 Nov 2019 10:51:04 -0800
Date: Wed, 20 Nov 2019 21:50:47 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
Subject: Re: [PATCH 3/3] staging: vchiq: Have vchiq_dump_* functions return
 an error code
Message-ID: <20191120185047.GE5604@kadam>
References: <cover.1574253964.git.marcgonzalez@google.com>
 <b4b5b1c7ec61a25fb3ca3c90687dc80db8a21e90.1574253964.git.marcgonzalez@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b4b5b1c7ec61a25fb3ca3c90687dc80db8a21e90.1574253964.git.marcgonzalez@google.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9447
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=938
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-1911200155
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9447
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-1911200155
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_105125_122988_7E5AE941 
X-CRM114-Status: GOOD (  14.51  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.78 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Thanks for the patch.  Looks good.

Reviewed-by: Dan Carpenter <dan.carpenter@oracle.com>

On Wed, Nov 20, 2019 at 10:36:48AM -0500, Marcelo Diop-Gonzalez wrote:
>  	copy_bytes = min_t(int, len, context->space - context->actual);
>  	if (copy_bytes == 0)
> -		return;
> +		return 0;
>  	if (copy_to_user(context->buf + context->actual, str,
>  			 copy_bytes))
> -		context->actual = -EFAULT;
                ^^^^^^^^^^^^^^^^^^^^^^^^^

> +		return -EFAULT;
>  	context->actual += copy_bytes;
        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

In the original code we saved the error code to context->actual, then
we added some bytes

>  	len -= copy_bytes;
>  
> @@ -2109,8 +2108,9 @@ vchiq_dump(void *dump_context, const char *str, int len)
>  
>  		if (copy_to_user(context->buf + context->actual - 1,
                                 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
and then we tried to use the result to corrupt the user space program.
So this patch is a nice bug fix.

>  				 &cr, 1))
> -			context->actual = -EFAULT;
> +			return -EFAULT;
>  	}
> +	return 0;
>  }

regards,
dan carpenter

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
