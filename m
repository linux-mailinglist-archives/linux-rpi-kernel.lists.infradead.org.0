Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8970188C52
	for <lists+linux-rpi-kernel@lfdr.de>; Sat, 10 Aug 2019 18:44:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:To:Date:Message-Id:Subject
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pZylelOwtcae6ODCFoHXY8ZUGRJgJDr3Y+LAuEUewp4=; b=G2sb83Hga1oM35
	I2uz0oesPiBcJ8PvKopHsC4W87GU5tDdY63qcaEvGXDAPS0tcv13UxbYtnHgdttXQWja16RSO1k/A
	oSEDa3vlvxo0Zjb7BCVTy63oHdm4O6kgXoVTBNHIg1gnB35iYQpHd+hbH5uyAzWkFGfuaeHyvWq+b
	+6EO81KOLK9UnQj+U0XnAy180z5QKng1qkcrELjLhzBtrmOlyAwARQdsqqwb6bM5Iujbc7xWGOVZY
	DEUJWgpGBxxt2jn3HFwRDFm4pWDyjyl3NG/WcqwLkkF78sg+IYD3Ral1rV/4//tz+x6g/C2/2JrBd
	WO+1zFvruVvC+TgOhb9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwUTP-000888-0r; Sat, 10 Aug 2019 16:44:07 +0000
Received: from mo6-p00-ob.smtp.rzone.de ([2a01:238:20a:202:5300::7])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwUTK-000877-9z
 for linux-rpi-kernel@lists.infradead.org; Sat, 10 Aug 2019 16:44:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1565455436;
 s=strato-dkim-0002; d=goldelico.com;
 h=To:Date:Message-Id:Subject:From:X-RZG-CLASS-ID:X-RZG-AUTH:From:
 Subject:Sender;
 bh=MF1oXijqN2TdIVuBSZAFxI4q5jV47KjpYL/TUrRiXqc=;
 b=niywIZncRfoAGCcNRoJx1TTycLiYjYeIq9klX6HmF9DHoxjLySsQEpK4ounD99jMB8
 NG1Hd8up3xvnHcZnUs5oZzKJQ1VA8Py0tYvkzZY+hZ8YML/GCLP2gjqmaaGECF+7IIkR
 IoveYnyy+Epyu6BGwmGSe3nbGNMlu1Oxkn9TWDHFzJMtKbB8o+se44Ins7SJO7/R/OS6
 tqKKYYHjrNkKCy2XNV7mB91aSKYuqgSfFtj8MjVQFO44OIyULua9biNoUjnJWoVE9WxW
 ik9r8MZ4Yvl40H02hvdl5BQarUviPgKEWGiAxGfreOvDGQzrZqm9JRUNRA+PFPlGr52U
 2pyw==
X-RZG-AUTH: ":JGIXVUS7cutRB/49FwqZ7WcJeFKiMgPgp8VKxflSZ1P34KBj7wpz8NMGH/zuwDCpEcw="
X-RZG-CLASS-ID: mo00
Received: from mbp-13-nikolaus.fritz.box
 by smtp.strato.de (RZmta 44.24 DYNA|AUTH)
 with ESMTPSA id j00b6dv7AGhulok
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (curve secp521r1 with 521 ECDH
 bits, eq. 15360 bits RSA)) (Client did not present a certificate)
 for <linux-rpi-kernel@lists.infradead.org>;
 Sat, 10 Aug 2019 18:43:56 +0200 (CEST)
From: "H. Nikolaus Schaller" <hns@goldelico.com>
Subject: HDMI monitor wakeup from standby
Message-Id: <5D68F876-5942-4E6D-8D2A-528F0D39CAF0@goldelico.com>
Date: Sat, 10 Aug 2019 18:43:59 +0200
To: linux-rpi-kernel@lists.infradead.org
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Mailer: Apple Mail (2.3124)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190810_094402_949512_42C42E96 
X-CRM114-Status: UNSURE (   7.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5300:0:0:7 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Hi,
I have running a v4.19 mainline kernel and Debian on the RasPi 3B+
and it works well. Except one thing.

If X11 or a console command (xset dpms standby/suspend/off) sends
the monitor to standby it won't turn fully on with

	"xset dpms force on".

The monitor goes on, but there is no image, it reports "no HDMI" and
after a while it turns off. The monitor is an ASUS VS247HR.

If I am quick enough I can run "xset dpms force standby" and then
immediately "xset dpms force on" and the monitor stays working.

I have tried the same with a HDMI projector (Acer) using the same
cable and that one works perfectly with dpms wakeup.

But if the monitor is refusing to turn on, I can replug the cable
to the projector and that one shows the image.

So the HDMI data stream is ok, it is just something wrong with
standby/wakeup signalling.

What makes me think it is a kernel issue, is that the monitor
standby works well with Raspbian default kernels.

Summary:
* Asus monitor does not wake up from standby
* Acer projector works
* replugging cable from Asus to Acer works
* Raspbian works with Asus monitor

Any suggestions what I should try?

A special setting in config.txt or cmdline.txt? Mine are here:

	http://download.goldelico.com/letux-u-boot/RasPi-3B+/latest/

And/or does Raspbian have a special tool to help "xset dpms force on"?

Or is there a feature missing in the mainline kernel which is in
Raspbian kernels?

Does some control line need more delay?

Thanks,
Nikolaus Schaller


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
