Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D774D15B76
	for <lists+linux-rpi-kernel@lfdr.de>; Tue,  7 May 2019 07:54:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l8/JEXs2HiNWXBDtbtfFXSwfeaQ1ZvehnXEuZH6vmDo=; b=MjQS+CwO9OXiEx
	s0n3n3hE26vdiNqK5gt7FMNo6oc6LSbCGfQIiKcjnr+i/S/pdhUEVzQ60cZ27GzKNObMatzuLPWjN
	R3HwA4QJSR/b29zwmK46M/qcYzvYLI9mKxMt2lu9y+4NbGleiX+KCGzmmpBwzS1p5Lw+FsPOXoN3W
	H9bjV/EMlNdBIB36JCZpON2IO4GYRtQLGXp5gni9SL3M23oTYcoJbGc6/8+JMNCFeMXoOkdAJb6ZV
	ibamNcRyJv/xwEKBnvAw7bhe5SutYyffRzVcg094mIGZ0NFKoXoDYowbG4lpTu8yTXlHCAaNmnAzX
	s2K7y4U+3CWjLqiRe1GA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNt3n-0007ho-De; Tue, 07 May 2019 05:54:39 +0000
Received: from aserp2130.oracle.com ([141.146.126.79])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNt3j-0007gs-QS; Tue, 07 May 2019 05:54:37 +0000
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
 by aserp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x475mn5F173525;
 Tue, 7 May 2019 05:54:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2018-07-02;
 bh=kJQobYwWo6iFFg61xydLrFO2gb+vbqflfGMqytbSt44=;
 b=FoFGdqOSsVcD9mQe/DscR5O60zlk+Ejev9fOw62vKLZlEilOZD1+sMk5dUblc/KEJOfL
 +gAf1RItHcleauKg8kOyPEhPKJerXL4YpKj/z56S1pfkASQdhdwV3m6o6vI1yVB6Twm9
 X+L6RH7zj2d+oSQ80CjvBjDwLBi/ZO176zo6vHpIgbo/Ik93nbkN0kYmkWT1pBrgtBxJ
 8OkVEYbfw6E9bmI2erg5nm8bcTIFk0LXJFNLpunYT6zh2j9w3TCQRNzqyfaTTp8yrWDK
 PG9QTzBNjJv2e9BjeQW7TYxEbBn4zUeTeyH8wQ+sxlnny+1WjTPeOWagb64rYsO5Y5SN jg== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2130.oracle.com with ESMTP id 2s94b5tpe7-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 07 May 2019 05:54:20 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x475qxmF127046;
 Tue, 7 May 2019 05:54:20 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by aserp3030.oracle.com with ESMTP id 2s94b99m85-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 07 May 2019 05:54:20 +0000
Received: from abhmp0009.oracle.com (abhmp0009.oracle.com [141.146.116.15])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x475sDut019063;
 Tue, 7 May 2019 05:54:13 GMT
Received: from kadam (/196.109.148.118)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 06 May 2019 22:54:12 -0700
Date: Tue, 7 May 2019 08:54:05 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [PATCH v2 2/3] staging: vchiq: revert "switch to
 wait_for_completion_killable"
Message-ID: <20190507055405.GI2269@kadam>
References: <20190506144030.29056-1-nsaenzjulienne@suse.de>
 <20190506144030.29056-3-nsaenzjulienne@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190506144030.29056-3-nsaenzjulienne@suse.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=9249
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1905070039
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=9249
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1905070039
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_225435_948115_BCDD5CF2 
X-CRM114-Status: GOOD (  16.14  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.79 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-rpi-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 linux-kernel@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

On Mon, May 06, 2019 at 04:40:29PM +0200, Nicolas Saenz Julienne wrote:
> The killable version of wait_for_completion() is meant to be used on
> situations where it should not fail at all costs, but still have the
> convenience of being able to kill it if really necessary. VCHIQ doesn't
> fit this criteria, as it's mainly used as an interface to V4L2 and ALSA
> devices.
> 
> Fixes: a772f116702e ("staging: vchiq: switch to wait_for_completion_killable")
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> 
> This reverts commit a772f116702e3f0afdd7e6acadc1b8fb3b20b9ff.
> ---

Git just sets you up for failure with its revert.  That code was from
when git was really new and now everyone gets annoyed when they see a
raw git hash without a human readable subject.  Just say at the start of
the commit message:

This reverts commit a772f116702e ("staging: vchiq: switch to
wait_for_completion_killable").

The killable version of wait_for_completion() is meant to be used on
situations where it should not fail at all costs, but still have the
convenience of being able to kill it if really necessary. VCHIQ doesn't
fit this criteria, as it's mainly used as an interface to V4L2 and ALSA
devices.

Fixes: a772f116702e ("staging: vchiq: switch to wait_for_completion_killable")

regards,
dan carpenter


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
