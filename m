Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A47D5170C9B
	for <lists+linux-rpi-kernel@lfdr.de>; Thu, 27 Feb 2020 00:33:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:To:Subject:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ye2Ai8OOzCSMKR6SA9JyZ7n9Mh0nTmY7261zlTEWrb0=; b=Lh6tqtydBSc4Zo
	zvm7uSnk0qINt0MiQxPh0Faw3q5pVOX9FwgDavxZeFkoMN/sYrWjp31SBUTjl9Q2x/y9d3Od79hFf
	R+4xvSpjNdNSBIoKC9yfK25INGKQp2jxIWf88nMH3/e1w+WQG0K3GREh2rLk1GIMNCKi2N+h0cWXm
	E4A4omm1HErm86JcRGgbvP7j8PoBk53/xBnmDNCsDrq+uAlS8gEAwKybT5g4199n4O6mqgdtjLFUD
	6w3afnJLo8zNX6qGO/vMmgpNC2Ar2E5CYEFoZdbpa9Ypxe2IdLnze6usqQqLkeUHHD+MIdhla+bAA
	XpfsVTTxKLxMX4QluSZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j76BV-0003Js-9P; Wed, 26 Feb 2020 23:33:45 +0000
Received: from mout.gmx.net ([212.227.15.19])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j76BS-0003Ik-12
 for linux-rpi-kernel@lists.infradead.org; Wed, 26 Feb 2020 23:33:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1582760014;
 bh=PEBp0ArLq+2LbrCAGyFPB5vynzZQUrubxtUU1vOoQRc=;
 h=X-UI-Sender-Class:From:Subject:To:Date;
 b=cOMnDUARRfkzmSvPh3Atgby9BC0uO+ads8UohmMAWnFZ1Ak1Y3Wf7ubs0g5zo4WU9
 fnJbKqqNweTaMNI5PgHu5BCnZZcxVt2K3BisiJnKXXCpWCQBmhgOCNzEYJ0r1AYbE0
 DUXG6KhZlk+bXtEji6IAR7NY0vNB1+47gtMtvsHo=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.0.43] ([188.223.33.120]) by mail.gmx.com (mrgmx005
 [212.227.17.184]) with ESMTPSA (Nemesis) id 1Mjj8D-1jqeg92mrb-00lH1t; Thu, 27
 Feb 2020 00:33:34 +0100
From: Nick Hudson <nick.hudson@gmx.co.uk>
Subject: [PATCH] define rpi0w sdhci pinctrl state
To: linux-rpi-kernel@lists.infradead.org, devicetree@vger.kernel.org
Message-ID: <c34db439-3539-88c0-99f1-308d75afd1aa@gmx.co.uk>
Date: Wed, 26 Feb 2020 23:33:33 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
Content-Language: en-GB
X-Provags-ID: V03:K1:8vEkXAA8iBdb/YZBvbTOrrQtrx04cwkf9+zgIS+GCYzE3az2YML
 ZzFMLqCtqBAwezvIzN5qmtfq64dXeDPR8RHyK1LPul3hP/Udshntjz3xu/Q1FYJMc0WAnK8
 NS46tHtVGebRynPsr2ghryD52NkjGUsNd06c9GunmW2LaDvdyr06X1061ZpyuwmBETMZglq
 ctN4R/BlYUMdX3F+4ynXw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:7fQj1P162/Y=:wW2L/1sspxwAb3LOjSGssR
 oydQkiEpc538gML4IgK/sK8gTewvbxg5DWzYC3fveuIbED1767MudYFaRwR+6mWxKSmyDqaMs
 tjm7kKN7mm05yQBUe3e4kujwiDH1rEDHNR/wluHocFRhbmumHLMOMAaifjtCBMChLOWAHXrXk
 OV7s2ijf+ygyc6ctOTSCO3Ff3AsTcEmwxuj1q7gYMPbEi/bDwBLnZ7H3MFpPNLtb11UFuqdv8
 YgBdD9ROgw1FI9fpPsVjIyYK2+eWah6w5sfqybPyeeNqBLEikyj11gY9XeradH0UR6WGgWoAb
 CkDk6FccAe1osW/KwesKH1yxJ41lMVBwmSzBGwtZSKlaYm9GH762cDuImAjcCrHRRT+hvos1D
 04I8Hv1sNkI9967H8NgTzmwrAvxrFOTkF+LQa9ZJYExeJ5N/1k1MhDFdYqf39pEDuWmN9L1Wc
 ppOkJ0hv+/61aq6nB7EXmM2yjPDNuExAhESPMMZzw1mv9KCedmAEtzDuwYEix9TknmtMA5XB0
 Fq35BlyY0yYGqiFP2Cn2SnDfVMDDrAYb+47xvwi+0gSFlKzQnBSiTGLEDQJ0Fi/nSYOsxAcik
 UZHGwivrzocO0jIs8FzdhOL+5QWVw79M/OJeyVeUUG7m3Ob4lZzUSDtiIAuirPtyt1N4tSKfs
 f3J5GAXW5brRgmFxQ8gSboy/VZBTJLX0968QRqA+CGp/XBSYcOXePitALgAB1B1hmd0NeCR2f
 pd8JptMgTABJrDIH9Prf6++wOKRDVVZhINyp3fNrrM1rrys3QyZgg/25M2snBpyffuooteM3Q
 6fFJXVPhUO4SqEFfBTwgXlFfkrbfgzaG428IB8qNHnKHBbYZFF2A9sL4Z9zYqPqIcs+oxJDxh
 D7O8UZPUaKBcXJkhGqs9oye8p5BmyxCOtpYrXybn10QjZe+YvxVHIQIl/jBCtYLqKfPw8ydlH
 sFTps54CnACvVwLlrPTV8t0NVIJ3/aXfCb0E/EGvKYTXzoj5EC5g9nXKEhcAunHF/BikOEMz2
 gesXW38W1urp4/vS8ReVhSkrQjXsHy5HkPbcLDUj17q96bynucGTncjGNoEiNI+GcO6WVqsiQ
 jU47InDygh8Cnktu6rlzRdngBRGPRH0NxUiK8uVfQvjPEhM/ARAZnwEDXaZoYe2Hz4llyyXqN
 qqBJI7b10j1+lEYu1ZJdv2stmhJNmNSxCQsis/OCWOkg34vGeNVaaRVdtnCeuy3LBvbhx2Xx6
 us1gRAu1zJFxb70yQ
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_153342_405278_1C9B3672 
X-CRM114-Status: UNSURE (   5.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.15.19 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

I'm still not sure where I should be sending this, but here goes.

Define thesdhci pinctrl state as "default" so it gets applied correctly
and to match all other RPis

Signed-off-by: Nick Hudson <skrll@netbsd.org>
---
Index: bcm2835-rpi-zero-w.dts
===================================================================
RCS file:
/cvsroot/src/sys/external/gpl2/dts/dist/arch/arm/boot/dts/bcm2835-rpi-zero-w.dts,v
retrieving revision 1.1.1.4
diff -u -p -r1.1.1.4 bcm2835-rpi-zero-w.dts
--- bcm2835-rpi-zero-w.dts	3 Jan 2020 14:33:09 -0000	1.1.1.4
+++ bcm2835-rpi-zero-w.dts	19 Feb 2020 07:53:54 -0000
@@ -112,6 +112,7 @@
  &sdhci {
  	#address-cells = <1>;
  	#size-cells = <0>;
+	pinctrl-names = "default";
  	pinctrl-0 = <&emmc_gpio34 &gpclk2_gpio43>;
  	bus-width = <4>;
  	mmc-pwrseq = <&wifi_pwrseq>;

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
