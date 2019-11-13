Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 543C5FB71B
	for <lists+linux-rpi-kernel@lfdr.de>; Wed, 13 Nov 2019 19:19:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q5w1wkFWHLBx3gU12X4MS16F13BfucM7j+1aFQwdLfo=; b=rQQtRC7zcQBNJb
	Zh3sqj09LYVjESzYBNvq/7QwzP2+qJqun7YC21HUYFNpaC+hHtFE5DZraOmWWed021aMf7Hq/zQD9
	iEH/wDJheHa8JU0aR03ooryAW44lfLR//lYmLqBe2kK+iXcTvimDxyjs2FQrThiIOS/my4D2NpzPW
	h3GkCxsTJN6jnI9pjidUGWd0tIBRzP40LrX+ETQZg0HAvbXjf4OcPRHg/cKKU3+uiXHPBl3xtLqt5
	p6wmZPNF1yLx0wlXvnROP4veub/pK9zFDYgaQoXKbXGVe+WEZYX9HiQdZoIsfKmRG+B8LeWAFMYlv
	97cSwwLj8aE/eAgkjhDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUxEO-0003Ox-Tp; Wed, 13 Nov 2019 18:19:04 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUxEM-0003ON-1k
 for linux-rpi-kernel@lists.infradead.org; Wed, 13 Nov 2019 18:19:03 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xADI9arl111015;
 Wed, 13 Nov 2019 18:18:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=eO9aK9f1nv03vVy3u7/V8yVF5+eSyY2QrxSLimmNCsw=;
 b=jGfm+G4rDdOsoYWmXh9+cEzW1riLtquJfhRMtGoh5+t0S+FLeeE3QmnT3iYhoGG1zRZs
 IyzLP4QwNTz2ZpGzyhUtJtGuWsMcTO12nrlwymdTyzfCL/zZQOMMV9bvjhz/BhaH6Fng
 DvX2bzztSl6j9QycmmozPh77MuqO+ixmjRY8vTGwMQif9G2gt3SdWpZAJ6pT35z1GRdq
 vyOTjV37zTLIWlhcDSGd8ICjDeEl4lMew1ygYHCQFlhMhRZ9MnfJGzn/jkV0EOG2Nry6
 DXLupnPhOqoWcwQaairDtchKHfiTe4A8EfEBYy13tTDqooIXTFVUjeVQhOy8CD6H04xS Zw== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2130.oracle.com with ESMTP id 2w5mvtxchc-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 13 Nov 2019 18:18:51 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xADIDeAv006876;
 Wed, 13 Nov 2019 18:18:50 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3020.oracle.com with ESMTP id 2w7vbdasvk-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 13 Nov 2019 18:18:50 +0000
Received: from abhmp0003.oracle.com (abhmp0003.oracle.com [141.146.116.9])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id xADIInrY015033;
 Wed, 13 Nov 2019 18:18:49 GMT
Received: from kadam (/129.205.23.165) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 13 Nov 2019 10:18:49 -0800
Date: Wed, 13 Nov 2019 21:18:42 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
Subject: Re: [PATCH 2/2] staging: vchiq: Remove global bcm*_drvdata
Message-ID: <20191113181842.GC3284@kadam>
References: <cover.1573482698.git.marcgonzalez@google.com>
 <bfad5318dbecc1705416a554dc806a99069247b0.1573482698.git.marcgonzalez@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bfad5318dbecc1705416a554dc806a99069247b0.1573482698.git.marcgonzalez@google.com>
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
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1910280000
 definitions=main-1911130157
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_101902_225858_8DD3AE54 
X-CRM114-Status: GOOD (  12.35  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
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

On Mon, Nov 11, 2019 at 12:14:24PM -0500, Marcelo Diop-Gonzalez wrote:
> @@ -109,7 +108,8 @@ int vchiq_platform_init(struct platform_device *pdev, struct vchiq_state *state)
>  	if (err < 0)
>  		return err;
>  
> -	g_cache_line_size = drvdata->cache_line_size;
> +	if (of_device_is_compatible(dev->of_node, "brcm,bcm2836-vchiq"))
> +		g_cache_line_size = 64;


Could you remove the initialization and do it like this:

	if (of_device_is_compatible(dev->of_node, "brcm,bcm2836-vchiq"))
		g_cache_line_size = 64;
	else
		g_cache_line_size = 32;

Maybe we could even just remove the global?

regards,
dan carpenter


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
