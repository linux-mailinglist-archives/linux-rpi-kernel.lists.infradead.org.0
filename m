Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA7BE320A8
	for <lists+linux-rpi-kernel@lfdr.de>; Sat,  1 Jun 2019 22:11:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ByMrJhYwLTimTRNgCTxppUn+RKrC8paoYxpcb0pwPxs=; b=Mqu
	tsRy2RBVAUuiIfOhMesXTCMe/hhuYcO5o+y8LyaHpWz7NoGowhV14ITksG0lwROSA72uwXKdzvOeR
	99oBW1er4wP4FsBYhqoSAx4wY553DQAHaWUM0YRo1nylaxAr1As33A2mbzY6JYDJuIXO/lup91sw7
	BsaNEyn6yT0MzBsdknqN1/PPXv3FGFJknq85lEhwdbXO9pgVU1sC65t7ZXHlIfB/0zUzn0Xivyq1a
	E7Ul1DWtncbvy+AcxIgahdScE/V+U6VYRm7ZZ/0WEdry3gd9wA//Np0FnDKBQ1R330gUPHIiI/HsC
	BnBCtt7hTKw3mDIaJPxeeQR1ztAQ8zA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXALC-0003mj-3D; Sat, 01 Jun 2019 20:10:58 +0000
Received: from mout.gmx.net ([212.227.15.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXAL8-0003mM-9F
 for linux-rpi-kernel@lists.infradead.org; Sat, 01 Jun 2019 20:10:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1559419839;
 bh=ICYulOaDDu4Ey1z3HoQ0MCtyYdkzjS3YwLST+w9zPsU=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=bNCcX2B//x79pHNtY8cOEAaceA40Cx+193pCmiZXG/MVHAH0VrIqta4/MAqEUQMHI
 XJ3e3FoIg8ZW/h+Dbn4LKYy28Zj9U0929xK4eqWfCMAs8FB0rKvwFrLasgoG/dKTT9
 LpfizzDRK2pJwaNDLfCmfsOYQfwEhECXDEulREWw=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.160]) by mail.gmx.com
 (mrgmx002 [212.227.17.190]) with ESMTPSA (Nemesis) id
 0M9ra4-1hQakY3UaG-00B59S; Sat, 01 Jun 2019 22:10:38 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: [GIT PULL 1/1] bcm2835-dt-next-2019-06-01
Date: Sat,  1 Jun 2019 22:09:16 +0200
Message-Id: <1559419756-5941-1-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
X-Provags-ID: V03:K1:UpB6vwyQzEh9qffJl5eMjGcqLFEdTDWnluw7jib5BIzcUYFCyGy
 OHrdVE6m/vKsFfiB6BEBKhFNczjt3IfyWJPLlK8Vg678EAD4V7reMMCJtMeh0ikLIU7V0tk
 Pkjgy5PbgCf+DAPSeGmFxkfR9aRuHH0ML5POYqjD2DHJFNWUdcF40DL3nbOdSwA1O8nsMH2
 cQexaCt8+CW48XeyCDjsw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Sv38ZiG8aEE=:wn5L+0PqdgvCjvmFTGhfie
 DekkTuNpCynQ98b9RFgxGCwCupwfeUCPM3z5lFI6mNOK1f4MmqgOyWGrmV4PkVZmbPdSyuee4
 VTgQES0bE8wy2LCk5fpzJrPdmo6pCuJNPIer3fZSNM0VxzH2bZDr4KdiEkvxFT2P+hpJJwPC3
 KMzOg5wXQEpt5AkA6tJrD6YGZwbcVIFWcKFsr4xc/1J/KqiwLQMdtBtzDzhwP5e7Zp1IPuMxh
 uJ9UjQ43tZlZCaI3BVt/d52ich3EpvNP26xwJ4PvpfEkrO/lg3JGUmcqY1xVsNs8Nl6DnTyDs
 MCY8yzX5lci77zsfBAyjm4iQz+U75V2w4LIj5MN8cyjnBm0L7JegBPgAAEXApy5E3tExVF9s0
 n6+w/+h7uWMm746Ns7WS+m/NPi6+4Lx6K99zU4TvduOJA6s/RcCHHczzmTB46w5Zxh2nGShYh
 CiODYJiOsOsd6dutZJKluNi6TRFAaGeaALB6vdW+tTHrrW1T0WLEAwIW3eelOYNtH4bu1G7v/
 54kWLwgL6LqbgzAfejccb/mjNb/oBeyKU1+Kn9YsPNPYXVUBFGDVDkqNfKbU/xqwmjH+pUSsn
 MYxjAqQ+k/afoEgPipPO/71IX99Hpsp/ixTBPLfgQXUdPIxglLEFZS+tPs1RMeHbC1OQXWXBI
 4aFnVz/c38YUq6kxoOY2isqeMlhpBUOAatOzU2cyFITwJX4l1zKv/nL7IjIjZ5ewAlMXMuVlP
 DLaeiIxgSgmE72DXsFPXprn0hoxR/OXH0N/k8GLJhe7jgwn13x+PDBziA3h6H9ig3Olb6zVQJ
 pWYwlKGwaHjknUShLbAiMFSMGL+1/QZL9PN/pZltKAqBDpaQnz7hrQtVFwJzvG7sk+mirk/nt
 hEQFjJZY9MSXwYMKSzvhF1IPXYq2W525v6VfhDHwnTQSuwWXvAcELv0OhdS0FjNlDTWfPu+bZ
 sOE97oVN9DiFN3mkVyOfv0yH3lR38HEY=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190601_131054_665698_5856EA50 
X-CRM114-Status: UNSURE (   9.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.18 listed in list.dnswl.org]
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
Cc: linux-kernel@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

Hi Florian,

the following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:

  Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)

are available in the git repository at:

  git://github.com/anholt/linux tags/bcm2835-dt-next-2019-06-01

for you to fetch changes up to 08e3c41585386f5cefc91ede8835005742df4ba9:

  ARM: bcm283x: Enable DMA support for SPI controller (2019-05-25 12:50:18 +0200)

----------------------------------------------------------------
This pull requests enables DMA support for the main SPI controller
on all Raspberry Pis.

----------------------------------------------------------------
Lukas Wunner (1):
      ARM: bcm283x: Enable DMA support for SPI controller

 arch/arm/boot/dts/bcm283x.dtsi | 2 ++
 1 file changed, 2 insertions(+)

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
