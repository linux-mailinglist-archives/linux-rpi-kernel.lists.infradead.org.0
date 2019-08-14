Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2DF48DE88
	for <lists+linux-rpi-kernel@lfdr.de>; Wed, 14 Aug 2019 22:15:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=E95z38TDC4UgttFJh4X+tb45HWxoV7vjFkTLSSRKYog=; b=Rt88sLIyEHyTL6Sdvs2m+t/qVV
	EfWpAhVtr1H/ttqATURt6AIKNbt+cOj6zgVw7H9ogboInZjNhVznY0Kbx0CJ/5Dd+1Mk+9jNVBbB1
	MioUM+z2PD1DPVThq9n7ewJJ5u4tdAITdf+kmpoJGiQhENxG6D+xM1oien2TXZQhngI1SrOoH13Lz
	mnS2dNfPS5xWOhrPd2+sSJb7t54+Xih5PMMP7ucBoPlktlCc04LBQ+8jvSU/IaIrsdvYze5fyoWPG
	7feDJEhK/1Y8XV+N34tTHLzlSczmbgXxdoWhZX9dPuSNawXH3Q2/x9VssNCuPu587up9Q3WwkKYDt
	q3hfNG+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxzfs-0008QL-LC; Wed, 14 Aug 2019 20:15:12 +0000
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxzfm-0007gz-1s
 for linux-rpi-kernel@lists.infradead.org; Wed, 14 Aug 2019 20:15:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1565813693;
 bh=q97j1l4demAFJJAZvDYwux7yQUP1K7u7Jcj3F3agYlM=;
 h=X-UI-Sender-Class:Subject:To:References:From:Date:In-Reply-To;
 b=kpG4/QpJjLhEusP+ccVy7Dkt5m0fFnWQoXBgt1ec6Ih+anRC3ingUiWYztnnga3/q
 d8BS2qqIiLnpg932NSJzZcLuOQ5NtOAM/jVo97+73ReWkQSC+Aq7/68ItQuyHjCpoQ
 1kpIOvK4YUTCY5eQ7N6XHPTzjKz5qcYCqEI8bNss=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.162] ([37.4.249.106]) by mail.gmx.com (mrgmx101
 [212.227.17.168]) with ESMTPSA (Nemesis) id 0MdFwl-1hh9F00OWZ-00ISlv; Wed, 14
 Aug 2019 22:14:53 +0200
Subject: Re: HDMI monitor wakeup from standby
To: "H. Nikolaus Schaller" <hns@goldelico.com>,
 linux-rpi-kernel@lists.infradead.org
References: <5D68F876-5942-4E6D-8D2A-528F0D39CAF0@goldelico.com>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <22248f50-6ca2-a53c-cec2-1b078f6d2915@gmx.net>
Date: Wed, 14 Aug 2019 22:14:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <5D68F876-5942-4E6D-8D2A-528F0D39CAF0@goldelico.com>
Content-Language: en-US
X-Provags-ID: V03:K1:QpcCMep/pMM5IxWjwnykZvFzSyOZQJcQwo1mXSON309e3t+vbUL
 Zsq5tuNTYETqTTdcjqcSRRL2pwLWuMgIx5lN6PKydSDBElyFLBbX4etN8mVegqtl2kWOzKA
 LtAAgNDvIQdmxrT0BZ3IUS/sFs+XcjrxaukKfdAcUJ4upTGeNNjfqAGmpuBEgq0SLpCuMjX
 vGeI/ZG3kY+v8UnMSYjzg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:2SIbUIX6s7s=:utvG20mJz0iEoWXtsbr7bf
 ACQUVnHveHlsrvEHQGsbMz4/EBlvQG05vLtLZm0NM4sp5ATUDmsH+Y2k8S+hh8BJFgj3GSiSc
 dTsleI5XoigMrV2/ke4xIzfEEszR3xbsmxPMfl23M8XBECZZ+xVXFFVN5TazcnFX3hmBTOqR6
 R5HRW/725F07Xy7siLe6ymb+4GzpiAV5w/BSlAa7pWMXeZkuoJfwccWeDg0HWRhlWfjtcVC/+
 o+HSDbRybFSxQCRnr004lWRXN/VNeyPTUuC/+vHs9R7tl7F05cZpqHMMy9bzMdqXv/UOpxnaR
 gYYNm04q2RB3FAqsdH0Z2SsqT2y9HojjJ5NwwtDai30yvdjnO8V+QfpTqB/4bqyuVdZ+cWR+q
 WPrluh4DHmdVUBf0uL/nGvpjSvpfD+NZW2+P7T95ZMeGKAjrZ2U9IvEvdciklFOv8E+uY5d1O
 23gqiJkZfDXMSSlMTBecyWGiJvkoqjCHG3Q2wxjilu+ZgKwrvwETCMQBSIElP78qadnVhI/VV
 ZJFKAZLUIVqHOL3Y/SF+gngbjjKenwJYqIWp3Jb9S6Ie5ZaQPX7bTBFnB6bqUxvrkQgSe+wEe
 anf8cq8DP0rT8PkG5fR7dHEwI1mB+Ktpo+VmKYAQH3ZUI5OHqzQl+kvgECe2AEFOVAmfaERBz
 3bERUrjaqZHfSa2ObJlv9zETOlndmFVt9D2YF9A0MaO3Ck39h7ZdplKwi2L4CLOa8tTXrINGk
 s0oEQcehQTrQzrpS2z8Tk88iLiHKBdmjBvikcVTSZlXMN7CuttZv/SORCfEHwI0b1+dp30jGZ
 VjEp9jEkdkKL+zPLotES2BcdFzJ8AnbAZx44ARhmRsBXOlgjtRMvHsETTK+BKtMWZd2XfKrB/
 x5zGnuioDkauYksXMvOKKUqYlMTSWeMcJNPq//3JizDQyYxgEBci0UZNvtIDQKX+Y/j1Dxf9P
 V83hmT6EC8qzPzJSSBipF0sED10ZlmWGT1NOKrJuf/zcQl8hg87hVN2FyUCPOHI2YJh4zqGOp
 kUaGkKrLfu0Z4quXmsNP7vZ2F1IUFdGDyGphjnxpvkMEMN1uE1u1pa+pUJdxFpJo2UsTOSaX+
 abfQpUL+YjIstPX7sgMhFm2wc+AKirOWkbnIH7+RZuoGg0OXXCUrDdUAvRNkLVBnUiMXnK/94
 agM2A=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_131506_447786_7CFA6521 
X-CRM114-Status: GOOD (  18.61  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.21 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

Hi Nikolaus,

Am 10.08.19 um 18:43 schrieb H. Nikolaus Schaller:
> Hi,
> I have running a v4.19 mainline kernel and Debian on the RasPi 3B+
> and it works well. Except one thing.
>
> If X11 or a console command (xset dpms standby/suspend/off) sends
> the monitor to standby it won't turn fully on with
>
> 	"xset dpms force on".
>
> The monitor goes on, but there is no image, it reports "no HDMI" and
> after a while it turns off. The monitor is an ASUS VS247HR.
>
> If I am quick enough I can run "xset dpms force standby" and then
> immediately "xset dpms force on" and the monitor stays working.
>
> I have tried the same with a HDMI projector (Acer) using the same
> cable and that one works perfectly with dpms wakeup.
>
> But if the monitor is refusing to turn on, I can replug the cable
> to the projector and that one shows the image.
>
> So the HDMI data stream is ok, it is just something wrong with
> standby/wakeup signalling.
>
> What makes me think it is a kernel issue, is that the monitor
> standby works well with Raspbian default kernels.
>
> Summary:
> * Asus monitor does not wake up from standby
> * Acer projector works
> * replugging cable from Asus to Acer works
> * Raspbian works with Asus monitor
>
> Any suggestions what I should try?
>
> A special setting in config.txt or cmdline.txt? Mine are here:
>
> 	http://download.goldelico.com/letux-u-boot/RasPi-3B+/latest/
>
> And/or does Raspbian have a special tool to help "xset dpms force on"?
>
> Or is there a feature missing in the mainline kernel which is in
> Raspbian kernels?

sorry i'm not that VC4 expert, but you can please enable vc4-kms (open
source driver) in Raspbian and retest [1]. Otherwise you compare two
different drivers.

[1] - https://github.com/anholt/mesa/wiki/VC4

>
> Does some control line need more delay?
>
> Thanks,
> Nikolaus Schaller
>
>
> _______________________________________________
> linux-rpi-kernel mailing list
> linux-rpi-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
