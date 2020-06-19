Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BC7D200B82
	for <lists+linux-rpi-kernel@lfdr.de>; Fri, 19 Jun 2020 16:31:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tyscsaF0+D9xTA79k7OosChj45Lf2Eg/e3QIv5PkwA8=; b=WK6D4MRMS+3mBW
	9cktqAS+VCfnA9sDp1qI6tTJ8rGPR/zbnIa3rAL7x4wPFNTHoSLLpNCqMkOpTt1DEYompRcnpekGP
	yPOEQnrqI63bckaRM0NKFV3FVU/TB9+KvCvqSObkCT7czf01mqe0NmBb5BMcsU+f+C/ZfN7d81fys
	yuA2x/uQhEvgvnAMWwM6UTj2yJ7rIS1auW2UJdJQ7oq0Z3t5zrnGJpR4nqrekbMt8DJUXtixxXB0/
	Fy4SRB/qs4E8zcOeZi6tOB7/3YMtXC7DrixZbmNE7m42PmNrz1xZC9vmuRKuc4RhOjMbcr3fSGraj
	CH3SyBIT1CDeXfoY/GXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmI3a-0007kE-TP; Fri, 19 Jun 2020 14:31:50 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmI3X-0007jW-3A
 for linux-rpi-kernel@lists.infradead.org; Fri, 19 Jun 2020 14:31:48 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 05JEBuqI170324;
 Fri, 19 Jun 2020 14:31:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type; s=corp-2020-01-29;
 bh=jcaWTu8TTCJeW29NCwS+6EkwN/A4iYHkwPeu7/XE5+w=;
 b=HB16Npk3IdUUXMSCubMX27cGZ5Zz/7geIv+Cwo8d9vCVNpO0Ra7n/MjO2i0sqNiyffer
 LN5FylgO8zg8yyL5+uj8JF2FEgOTptnaURKmf1g7hg80T7UfQHY0bx1SaCZK4nPbNpeu
 PvMuf5y/zc5b2FaW4Izqu5nswgQLatEGsj43TnUnGalKqLz9j3HSMTJHm/SoDsEthbCK
 aKiYoSrJ2RsgYzv4dZ60Yy82LRsZoGsOqAlUsONPtuMxPixz55r4d5gZqKj/g+2wuAMp
 Hzu3EM4g9pso0jqn6KLCawECehVTeNafxgY+omGwal6/8NY6vjgDm1eyRTiCQf8Ciy1h /g== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2130.oracle.com with ESMTP id 31q66071be-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 19 Jun 2020 14:31:39 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 05JEDHj2140785;
 Fri, 19 Jun 2020 14:31:39 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3030.oracle.com with ESMTP id 31q66rjw5f-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 19 Jun 2020 14:31:38 +0000
Received: from abhmp0016.oracle.com (abhmp0016.oracle.com [141.146.116.22])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 05JEVb3K028572;
 Fri, 19 Jun 2020 14:31:38 GMT
Received: from mwanda (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 19 Jun 2020 07:31:37 -0700
Date: Fri, 19 Jun 2020 17:31:32 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: nsaenzjulienne@suse.de
Subject: [bug report] staging: vchiq_arm: use list_for_each_entry when
 accessing bulk_waiter_list
Message-ID: <20200619143132.GE267142@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9656
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 adultscore=0 phishscore=0
 mlxscore=0 bulkscore=0 malwarescore=0 mlxlogscore=999 suspectscore=3
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2006190106
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9656
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 lowpriorityscore=0 malwarescore=0
 bulkscore=0 phishscore=0 adultscore=0 priorityscore=1501 mlxscore=0
 spamscore=0 clxscore=1015 mlxlogscore=999 suspectscore=3 impostorscore=0
 cotscore=-2147483648 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2006190106
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_073147_271348_EB6D58C8 
X-CRM114-Status: GOOD (  10.48  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [156.151.31.86 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devel@driverdev.osuosl.org, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

Hello Nicolas Saenz Julienne,

The patch 46e4b9ec4fa4: "staging: vchiq_arm: use list_for_each_entry
when accessing bulk_waiter_list" from Nov 20, 2018, leads to the
following static checker warning:

	drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:427 vchiq_blocking_bulk_transfer()
	warn: iterator used outside loop: 'waiter'

drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
   417          mutex_lock(&instance->bulk_waiter_list_mutex);
   418          list_for_each_entry(waiter, &instance->bulk_waiter_list, list) {
                ^^^^^^^^^^^^^^^^^^^^^^^^^^
The list iterator is always non-NULL.

   419                  if (waiter->pid == current->pid) {
   420                          list_del(&waiter->list);
   421                          break;
   422                  }
   423          }
   424          mutex_unlock(&instance->bulk_waiter_list_mutex);
   425  
   426          if (waiter) {
                    ^^^^^^
In the original code "waiter" was only non-NULL if we found the correct
pid, but now it's always non-NULL.

   427                  struct vchiq_bulk *bulk = waiter->bulk_waiter.bulk;
   428  
   429                  if (bulk) {
   430                          /* This thread has an outstanding bulk transfer. */
   431                          if ((bulk->data != data) ||
   432                                  (bulk->size != size)) {
   433                                  /* This is not a retry of the previous one.
   434                                   * Cancel the signal when the transfer
   435                                   * completes.
   436                                   */
   437                                  spin_lock(&bulk_waiter_spinlock);
   438                                  bulk->userdata = NULL;
   439                                  spin_unlock(&bulk_waiter_spinlock);
   440                          }
   441                  }
   442          }
   443  
   444          if (!waiter) {
                    ^^^^^^^
This is dead code now.  I'm a bit surprised this bug didn't show up
during testing.

   445                  waiter = kzalloc(sizeof(struct bulk_waiter_node), GFP_KERNEL);
   446                  if (!waiter) {
   447                          vchiq_log_error(vchiq_core_log_level,
   448                                  "%s - out of memory", __func__);
   449                          return VCHIQ_ERROR;
   450                  }
   451          }
   452  
   453          status = vchiq_bulk_transfer(handle, data, size, &waiter->bulk_waiter,

regards,
dan carpenter

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
