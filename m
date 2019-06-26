Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97EBD56711
	for <lists+linux-rpi-kernel@lfdr.de>; Wed, 26 Jun 2019 12:43:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YnYx4jzm4+DP0SABeIvYy6/uArqpAiNXmjNbPP9BvqA=; b=haCDdPgvUN7ZUq
	1yt05NVgPcBPMVNHDYOhet9WVySdHsGw9+7iufVFmT/kkket6XYJ3UDdE59NsB9qlNNJa2bgWOQKy
	NfTorEXHpNF5KFb85Ef7aPDFVrT1AdFuO/3EI8okZU3bx/8u9h94O0dYX3aRDYshUzR9osatHuhtD
	P2f6jTAY0U9gxnwK9HzULmeeUK/5HsN/PrMtOjw6d44A2vXbavbKqRQBo1mIhIM4UW4bAom4IdseB
	ltY4YzE2XZgv11R0TC2oxTAegNAfN1MEZNFJ0oaA1q73CyIdfebkc09XNfyl0UvRVwVMSEE4lEnKM
	dRjHrjNld5XSMSRfGatg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg5OR-0003QP-4p; Wed, 26 Jun 2019 10:43:11 +0000
Received: from mx07-00252a01.pphosted.com ([62.209.51.214])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg5OM-0003P8-MZ
 for linux-rpi-kernel@lists.infradead.org; Wed, 26 Jun 2019 10:43:09 +0000
Received: from pps.filterd (m0102628.ppops.net [127.0.0.1])
 by mx07-00252a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x5QAcEfK025787
 for <linux-rpi-kernel@lists.infradead.org>; Wed, 26 Jun 2019 11:43:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=raspberrypi.org;
 h=mime-version :
 references : in-reply-to : from : date : message-id : subject : to : cc :
 content-type; s=pp; bh=H72M3+PWhw9sOunRiDpxWoNo9tqIHCGVsvvEbNV2cac=;
 b=w+pX53jhDrcg3Ri331gchgt0yH/PHyxd2zMjzKNDFaSZDyyWfYtLefI8a2BSffZYtP5E
 cmeHcyZ6Qd036b5eukQztS1xWPm6rs3f17ik+8lMHrX9d6m5mr41B/iabxb8F/7cMP2k
 NHSEB7DObJV8GxTCk3ACUhu8h9X4RcCzaY24xuJ8TGqM6rm555wyFaiP1kj3FvgarZEZ
 4A+r2m+muouchXkuY1MmVLEiz5uTuFLxT7dwzT2gOBi4kkX0+dMQKMdevsViAvZj3Md5
 +9sSNv63e68ypQJ0zaNSZl3zRKiJ5LZH6Sr+BDtOrnmDcVrbGyXoDXvrAxL/lvVOhvIr 2g== 
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com
 [209.85.210.200])
 by mx07-00252a01.pphosted.com with ESMTP id 2t9ehut3a0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=OK)
 for <linux-rpi-kernel@lists.infradead.org>; Wed, 26 Jun 2019 11:43:02 +0100
Received: by mail-pf1-f200.google.com with SMTP id d190so1535296pfa.0
 for <linux-rpi-kernel@lists.infradead.org>;
 Wed, 26 Jun 2019 03:43:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=raspberrypi.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=H72M3+PWhw9sOunRiDpxWoNo9tqIHCGVsvvEbNV2cac=;
 b=B/5z55lee914sGMzs/ZjBxJ62Uul/d0vYZNRY/Wr4ucoBuxrZsHuPxvN9T+JO4AXk7
 Zl7tQBBY9ZmSx/POB3pAPLHlcjl5K+ZpJHvRYPhXPc0Dx3pMiGsEpTTpbvHnKUNMv/HL
 ADchEiRObMQhpTso1YNwrdaP40XtIWI9e5wLXwxxUYrVjZabC0vOOiMofnpmrF/FDqwf
 ZvWJh4ye3oypogexs/hOaHSw+llPhO7btJEKSrME3ZjU5TxQhfrMkPtIfJO69lD29YbX
 Y0wiYZoWSagYjBOvbFcskj08AcE326EPLEv5mq/tcAp3mPIICh9Qb+NeChw+428/fLxC
 FuyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=H72M3+PWhw9sOunRiDpxWoNo9tqIHCGVsvvEbNV2cac=;
 b=kIeCWp6muR72ob/wGoHuYS/+nAdaYQrDM7MPkpT/eyIVogL4AOAD9MUZU7+A4l66GD
 S3A7B0E8ziMRj2WNH0tqmsSWBiPLtkfJ1IrBqYbY7LYHDYUzjJeyKXFkZ2xiGjG0Jnbv
 2TOWNezo7t4rL8pLQXpwNK3IKjb2X7liADSNSoF/hiP03a6O3AkKli9yEgBEIE5nKtkJ
 sjDxD/y2MXcAVvSdmMjPTjsQ7rWU5Ke1poKwgT0Xp2tow7s8cHOdzBO1Mom4uYvRAaAY
 ejymL0nCmfUIdmkqc6JB4IFU3QZB0jvFDrWO/2N77JOHP/5avqG1i7DkXt1+d7z6WmfH
 kEuw==
X-Gm-Message-State: APjAAAU9cKab3FXyJ8nYjrFOxuVqp1Vj1N4cg113ft/yklwsDMTqq+jq
 oZq4YVnJ06jcqhMlEMNT5tjR/F2P6Q+V7GW2q5YQeFECHabOsBKeGa9bejMS45HbMAj5feRK/BU
 aQfGp8VLRmbWernDb6+ZGiPyNuRmxUr9hEvuPBkDGJiapyhweaw==
X-Received: by 2002:a17:902:296a:: with SMTP id
 g97mr4575661plb.115.1561545780332; 
 Wed, 26 Jun 2019 03:43:00 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzoaspFcX9aLC1AUlC3zgQFeLmLLAxDawSBjp3KT5SgiRv/Vh6vP1KZavG5puO6oi4xjZ2lUwREVMgGnN7C3ks=
X-Received: by 2002:a17:902:296a:: with SMTP id
 g97mr4575640plb.115.1561545780096; 
 Wed, 26 Jun 2019 03:43:00 -0700 (PDT)
MIME-Version: 1.0
References: <1561414395-12518-1-git-send-email-wahrenst@gmx.net>
 <20190625075558.GY28859@kadam> <27ed9c22-1d36-7c3e-a81b-5fa1e8245d1e@gmx.net>
In-Reply-To: <27ed9c22-1d36-7c3e-a81b-5fa1e8245d1e@gmx.net>
From: Dave Stevenson <dave.stevenson@raspberrypi.org>
Date: Wed, 26 Jun 2019 11:42:46 +0100
Message-ID: <CAAoAYcNhwoCwRrac7ek+5XfjqJyBUj1jHefidSoLmj_XG7jPHw@mail.gmail.com>
Subject: Re: [PATCH] staging: bcm2835-camera: Restore return behavior of
 ctrl_set_bitrate()
To: Stefan Wahren <wahrenst@gmx.net>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:5.22.84,1.0.8
 definitions=2019-06-26_06:2019-06-25,2019-06-26 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_034307_063437_27F4917A 
X-CRM114-Status: GOOD (  32.35  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.214 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 KHOP_DYNAMIC           Relay looks like a dynamic address
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
 Madhumitha Prabakaran <madhumithabiw@gmail.com>,
 "moderated list:BROADCOM BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>,
 Dan Carpenter <dan.carpenter@oracle.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

Hi Stefan.

On Tue, 25 Jun 2019 at 17:30, Stefan Wahren <wahrenst@gmx.net> wrote:
>
> Hi Dan,
> hi Dave,
>
> Am 25.06.19 um 09:55 schrieb Dan Carpenter:
> > On Tue, Jun 25, 2019 at 12:13:15AM +0200, Stefan Wahren wrote:
> >> The commit 52c4dfcead49 ("Staging: vc04_services: Cleanup in
> >> ctrl_set_bitrate()") changed the return behavior of ctrl_set_bitrate().
> >> This breaks probing of bcm2835-camera:
> >>
> >>     bcm2835-v4l2: mmal_init: failed to set all camera controls: -3
> >>     Cleanup: Destroy video encoder
> >>     Cleanup: Destroy image encoder
> >>     Cleanup: Destroy video render
> >>     Cleanup: Destroy camera
> >>     bcm2835-v4l2: bcm2835_mmal_probe: mmal init failed: -3
> >>     bcm2835-camera: probe of bcm2835-camera failed with error -3
> >>
> >> So restore the old behavior and fix this issue.
> >>
> >> Fixes: 52c4dfcead49 ("Staging: vc04_services: Cleanup in ctrl_set_bitrate()")
> >> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
> > I feel like this papers over the issue.  It would be better to figure
> > out why this is failing and fix it properly.  -3 is -ESRCH and when I
> > grep for ESRCH I only see it used in the ioctl so that can't be it.
> >
> > I think it must be -MMAL_MSG_STATUS_EINVAL actually, but it comes from
> > the firmware or something so we can't grep for it.
> yes this is a result from the VC4 firmware, there is nothing i can do
> about it. Even the firmware has been fixed, the driver must be
> compatible with older firmware version.
> > Can we do some more digging to find out why it's failing or otherwise
> > we could add a comment.
> >
> >       /*
> >        * FIXME:  port_parameter_set() sometimes fails with
> >        * -MMAL_MSG_STATUS_EINVAL and we don't know why so we're
> >        * ignoring those errors for now.
> >        *
> >        */
> >       return 0;
>
> I will add a comment and a v4l2_dbg entry.
>
> @Dave
>
> I used a Raspberry Pi 3 with a V1.3 camera and get this with an
> additional v4l2_dbg in ctrl_set_bitrate()
>
> [    1.472805] raspberrypi-firmware soc:firmware: Attached to firmware
> from 2019-03-27 15:48
> ...
> [    7.441639] videodev: Linux video capture interface: v2.00
> [    7.511659] bcm2835_v4l2: module is from the staging directory, the
> quality is unknown, you have been warned.
> ...
> [    8.162504] bcm2835-v4l2: Set fps range to 30000/1000 to 30000/1000
> [    8.163104] bcm2835-v4l2: Set fps range to 30000/1000 to 30000/1000
> [    8.163624] bcm2835-v4l2: Set fps range to 30000/1000 to 30000/1000
> [    8.164395] bcm2835-v4l2: mmal_ctrl:eecd7187 ctrl id:0x98091f ctrl
> val:0 imagefx:0x0 color_effect:false u:0 v:0 ret 0(0)
> [    8.164493] bcm2835-v4l2: ctrl_set_colfx: After: mmal_ctrl:1ec18e37
> ctrl id:0x98092a ctrl val:32896 ret 0(0)
> [    8.165413] bcm2835-v4l2: ctrl_set_bitrate: After: mmal_ctrl:b01a3b48
> ctrl id:0x9909cf ctrl val:10000000 ret -3(-22)
> [    8.165872] bcm2835-v4l2: scene mode selected 0, was 0
> [    8.166249] bcm2835-v4l2: V4L2 device registered as video0 - stills
> mode > 1280x720
> [    8.166596] bcm2835-v4l2: vid_cap - set up encode comp
> [    8.171208] bcm2835-v4l2: JPG - buf size now 786432 was 786432
> [    8.171220] bcm2835-v4l2: vid_cap - cur_buf.size set to 786432
> [    8.171228] bcm2835-v4l2: Set dev->capture.fmt 4745504A, 1024x768,
> stride 0, size 786432
> [    8.171234] bcm2835-v4l2: Broadcom 2835 MMAL video capture ver 0.0.2
> loaded.
>
> Looks like the firmware dislike val:10000000
>
> Any thoughts?

I'd had a quick dig yesterday, but forgot to hit send :-/
It looks like the firmware is getting upset over the ordering of
things in setting the default bitrate and the bitrate mode. Setting
the bitrate mode to the default of VBR fails (return code is ignored)
as the bitrate is 0 at that point. Setting the bitrate then fails as
the firmware default mode is "disabled" (ie specify the Qp
parameters).

Setting the bitrate is also done via the MMAL port format when
enabling the stream, so I believe it's only the setting of the default
values that fails.

I'll sort a firmware fix, but a comment here along the lines you
propose is definitely worth it.
 /*
  * Older firmware versions (pre July 2019) have a bug in handling
  * MMAL_PARAMETER_VIDEO_BIT_RATE that result in the call
  * returning -MMAL_MSG_STATUS_EINVAL.
  * Ignore errors from this call.
  */
  return 0;
(apologies for the formatting).

  Dave

PS Is linux-rpi-kernel actually behaving for other people? I didn't
see this patch when it was submitted, and it isn't showing in the list
archive either.

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
