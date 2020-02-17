Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4328A161040
	for <lists+linux-rpi-kernel@lfdr.de>; Mon, 17 Feb 2020 11:40:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zEjKcCe/wWoZ/sjsUieco7HO2aMclMLhXDHpD0D+1v4=; b=ICDy+sl99opabV
	Y2wpm5PZS2Zc63Y9lYYLR1qsoV9jTYHwA2MzXP5mGgtGlrOUvohQB38waAjn9VQoUFzPkHSyk3P93
	iGPrhxCWcKvkuHgDCzk1XFXxkFQAWRVaVmUlLInOgPnWMkaNHogKkw6joNzlhLn5ALFVy3P8fvhEs
	xXFA77oXyMYlrXnfjZIeFZmEYZmGped/aOxrAQ0Mx9eJqZ8yvSzAW8VeuhR6O+gR2i6O9zGZz94H0
	UIi771WIYIVowEr1sCKVECNYg0+r/MIsCd1qdyHofALudeDsbWLqlws/ygSgOgvhVz4b6vQBPY/7f
	2h3R4IBq0VzbSsZVam+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3dpX-0000CH-0v; Mon, 17 Feb 2020 10:40:47 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3dpU-0000Bj-85
 for linux-rpi-kernel@lists.infradead.org; Mon, 17 Feb 2020 10:40:45 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 01HAWtMG039115;
 Mon, 17 Feb 2020 10:40:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=AssWYkkfUk6ufkPD923UKC0grtFJ43QUY44ABFcu9DA=;
 b=mRfiY8dc2th25r5JQPh1J4SM8cudGAwvj1dCe/erhE/lEHm6v1nZOo29QWrk6dJ9L87M
 +7EY2yadWzfF0JWxp08I0opK/iT46BIevSvb+3C/ytbOEoxEFENP/vfyhr30RomBPoqx
 kbG0Y9I+W800O8+mRB+0x8xbez7CiCVV0+lrkCv+9nV640AaQwywaA0Vb5sayhZr4K+Q
 hZkXtQ0rm10hIYn+R/aQWNYe2DeAjD2iqhxLMImWDm4TnNNks8qmaatHXV8UFcHmsrJT
 mBsqIah5FiOFpplSHmtTQpCeBlfNXGly4KinYwFxziEFk5A8W5p+RUphz1m896PJgJgQ pw== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2130.oracle.com with ESMTP id 2y7aq5jmnr-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 17 Feb 2020 10:40:37 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 01HAXcYK057880;
 Mon, 17 Feb 2020 10:40:36 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3030.oracle.com with ESMTP id 2y6t4ftdau-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 17 Feb 2020 10:40:36 +0000
Received: from abhmp0015.oracle.com (abhmp0015.oracle.com [141.146.116.21])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 01HAeXm6023347;
 Mon, 17 Feb 2020 10:40:34 GMT
Received: from kadam (/129.205.23.165) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 17 Feb 2020 02:40:33 -0800
Date: Mon, 17 Feb 2020 13:40:26 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
Subject: Re: [PATCH] staging: vc04_services: Fix wrong early return in
 next_service_by_instance()
Message-ID: <20200217104026.GB19641@kadam>
References: <20200213194001.130110-1-marcgonzalez@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200213194001.130110-1-marcgonzalez@google.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9533
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 bulkscore=0
 mlxlogscore=941 phishscore=0 mlxscore=0 malwarescore=0 suspectscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2001150001 definitions=main-2002170092
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9533
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 impostorscore=0 adultscore=0
 spamscore=0 priorityscore=1501 suspectscore=0 clxscore=1015 bulkscore=0
 phishscore=0 mlxlogscore=999 lowpriorityscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2001150001
 definitions=main-2002170092
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_024044_329715_E87F4A13 
X-CRM114-Status: GOOD (  12.35  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Thu, Feb 13, 2020 at 02:40:01PM -0500, Marcelo Diop-Gonzalez wrote:
> If kref_get_unless_zero() fails, we should keep looking for the
> next service, since the callers of this function expect that a NULL
> return value means there are no more.
> 
> Signed-off-by: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
> ---

Please use a Fixes tag.

Fixes: a2203cfe0d84 ("staging: vc04_services: don't increment service refcount when it's not needed")

That way we know it doesn't need to be backported.

regards,
dan carpenter


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
