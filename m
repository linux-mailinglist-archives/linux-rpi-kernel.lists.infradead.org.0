Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 572B417E500
	for <lists+linux-rpi-kernel@lfdr.de>; Mon,  9 Mar 2020 17:49:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=berFJrr0U8O62uRCV6PQAh03KK+r92y7JF8rTHNJk80=; b=f9N
	Hq6w2h78mYaQfaeWhKjZaYF2R06wiA322t0+cUb8aE+MuBKCiQRjYwC/nVHkJ9wjIzYqgGbtkPWMB
	JUahWBy1sdElq/YcFFaDZZnTYqRSgQB7i+pOCbl5JoqjFiA/pkpAk+37x0Q/tDpm77CLJ+6Q5uVyl
	8KR25BQzzVPnjlMjJMx8YTTcTzgPl8zLKOPCotxWPMl6rfaD8pb/mh/Np5zouj+VR59PBAzxn4CD1
	XYY5LWBtRExfB4xt45DNgM5mYt17RWLNPhafcfky8jr3O77Ga+l0DSkY7JhoQCE2/MNE3uI6g6l02
	4PWS+gwNruny8AAxzhsLfXSx36K3eLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBLaR-0006fr-2A; Mon, 09 Mar 2020 16:49:03 +0000
Received: from mout.gmx.net ([212.227.15.19])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBLaN-0006fJ-9A
 for linux-rpi-kernel@lists.infradead.org; Mon, 09 Mar 2020 16:49:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1583772532;
 bh=bJZASp2wqp9DJbqY/Zmxx2XfmImJ56qCMM/gAOy79bs=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=k+AolkOW7aMPveXSRCzTW1mzf7AnpFbkVFgspbpnZTvRabNmYJv7vHXhmG+hZdW4m
 xadEFgOuNfF9RO9tM3+sggHp7u4fcF/iPFB4ylMYS4Zw1E9dsCpZJOZsWa/aO9e2ip
 o7r8KphXQ3j/bYe1/whvp14Ook5Q9+sHYLx7zRRU=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from zoom ([188.223.33.120]) by mail.gmx.com (mrgmx004
 [212.227.17.184]) with ESMTPSA (Nemesis) id 1N4QsO-1jIX7y2CNq-011Pey; Mon, 09
 Mar 2020 17:48:52 +0100
Received: by zoom (Postfix, from userid 2000)
 id DA6F719C8597; Mon,  9 Mar 2020 16:48:50 +0000 (GMT)
From: nick.hudson@gmx.co.uk
To: linux-rpi-kernel@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: ARM: bcm2835-rpi-zero-w: Add missing pinctrl name
Date: Mon,  9 Mar 2020 16:48:42 +0000
Message-Id: <20200309164842.8184-1-nick.hudson@gmx.co.uk>
X-Mailer: git-send-email 2.17.1
X-Provags-ID: V03:K1:EWzltLxH3lc0PaDWKiDsDvrtgmxbVZf503xTW2EYG4eCK4WO0SI
 3s15ax8nQoxEuKgct+4iIiBQKyx+egXPSWusqhufDdo6QzSKLn39NODetwdcqb87WHczRBH
 VlpVFYRP9c2Zn9hfIuSOh+WIpPggeWCcBiIDuU9VTG3QNJaMYfE16GEpzut+H/F9/yCFVak
 68/tZm1NVIZr/r4dk4vSg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:icy/k2Wp7oU=:uONgayPy9N7KjVWTwGtGlh
 WAVqB5tsMO0+MRSCav3ZMAZhwrnxoREnBm11+6xELUyfZqHREUXGojGXsZFl+SUW5bmtC+Y4x
 gwRGPFE3dAgRAE/5zgi6wm9RrzXPBTWPJRbFNk/w0hE1/HpwHGkFTceG6kntEdrd3X91pGtZo
 eL8xCjkOKngn2mhGgVQ8k8s96jbq2FVoHzICr1wBzVsDWYc8KCSg/v/jtA46oJU8LaWeCnz1C
 Ze1ODe7kWLiXjqpcByhjxFVvHbFrg1Lp4AYSOIghFiInxLKArs2LbxTtchpuBBuDJJAEmAZg+
 ENHfKzCkTNYiLnxwxrIsjWLNGRsSkVTmrUr+al/LGGrYkz4Jdqo3WUGVce/vnD3xTAXW6ooFZ
 2t/teEXFN/vVqGWZ7VJoUJZsqCTnpFCDRX/c3fPk6y+okdsRX+x0FkBuMNRDD67ArsY+dmJmi
 iLx9f8j/UyiUuOVAFVGllLe8lGXEMc575m7fFT2p0xPNC/2jut23grsNefUVSZ/vHVZXpO501
 +jrPDh3Faql9xnX8PSD3xyvfzWK6AY5Q2xGtOpZvln/XRTk3HV6IvVZJcp+R8b8rtJs6Pzo2J
 +YWDTYWAQplTlTTapW0s2MZNMLrPqTSbRzYUkcf6DQOccyrrzCSnUmFNuV2fagzIfMCG1TT1H
 CbRXTTAFRaKRiiGO2oLF4UkGT93wuubMlLzEz2TNoZApWmJPwqiHfklIzFZqGVs52Plka3VN5
 qfNXrP7lNseJhGo9AKt52oR+iZFchrsMlvNY4Nno3opZhsSl2kWREhWs0Y/TxUEronSTL+P6Z
 Gy8UA7us3XUfbPMJP/ufz3o0cX80NDahgz+2SznYV8uKU6Y5SBqhqqInOmEahXPafohSIQZdF
 t6+3gkhE42/hW7dejV+zOzldZMS7MfndkvFk/beH9XYSWcE12pHg2HNgmJj40r9UXj8cJEeto
 vfSFlmJplvcUPbL93kvqTL5P0AWjHOL6S4n4yG30ipcB8nbiIn/KQ+EvvsdVVi0kLRuHF9rzo
 Kerv+2sibXZ/fWcA6nPYqGMmPWCRKbVdrNPNr6kV8D3XCsZbvGamfuwnSGGdDAFORIb3QefTj
 AOx0NK++JOicgI/jPVbq4wn/QpSb9CfJFFBGvM7Xc1D08/YPYTwV2hLCuZ7BFm8N/pWcnylMA
 feH5/2Sxpbd7xEyMR6UVOhjOQnn13iD9eYx3QqoblT7eY5rU1sDLnDyq+9AGRqLlMFsIEpmUz
 mmk/mxnr4i8/RwSpJ
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_094859_654373_AE1D46F3 
X-CRM114-Status: UNSURE (   6.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.15.19 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Nick Hudson <skrll@netbsd.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

From: Nick Hudson <nick.hudson@gmx.co.uk>

Define the sdhci pinctrl state as "default" so it gets applied
correctly and to match all other RPis.

Signed-off-by: Nick Hudson <skrll@netbsd.org>
---
 arch/arm/boot/dts/bcm2835-rpi-zero-w.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/bcm2835-rpi-zero-w.dts b/arch/arm/boot/dts/bcm2835-rpi-zero-w.dts
index b75af21069f9..4c3f606e5b8d 100644
--- a/arch/arm/boot/dts/bcm2835-rpi-zero-w.dts
+++ b/arch/arm/boot/dts/bcm2835-rpi-zero-w.dts
@@ -112,6 +112,7 @@
 &sdhci {
 	#address-cells = <1>;
 	#size-cells = <0>;
+	pinctrl-names = "default";
 	pinctrl-0 = <&emmc_gpio34 &gpclk2_gpio43>;
 	bus-width = <4>;
 	mmc-pwrseq = <&wifi_pwrseq>;
--
2.17.1


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
