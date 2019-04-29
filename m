Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6999DD73
	for <lists+linux-rpi-kernel@lfdr.de>; Mon, 29 Apr 2019 10:13:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gHgXHM0xzWJoKEy1BcUo25LE8G0phSlwJx1kgQ/juC8=; b=fO91gBPeeMatHvG/3nxLqkOY0
	R2aTj9fLfgUgldJ2dRQ10R+SDB5r5kCbL8kR20nf/scS2SKpBdzlQ+4NkR5tXxGbJ5VE3JQ/fDO7P
	z9x5w2R/bKyIDW9Nd9Fbx5Xha0C4xBRTRCAKFExfH3uMN7hCC596Xz51YWoMuCIvs5NJtaMFroGZw
	VTYtIPVC6B5i0tPFLNrCPMoJ0Zmq9pL+J73VJ2+yWHSwHI/iQQaRX2XlJ5vNBs1zieh3wd84UKKyT
	t/oXmnzSbHHpY0y7hwQ2QZrL65+EO/+9nJmB6WvjkaY/Zepr8Uikaj/2QEpY1hMazwP3QirPIVUlW
	N3Gu+SAag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL1PR-0006Xb-Kx; Mon, 29 Apr 2019 08:13:09 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL1PJ-0006Qx-3c; Mon, 29 Apr 2019 08:13:02 +0000
Received: from [192.168.178.187] ([109.104.35.134]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MrhHm-1gxjt80B2C-00nhar; Mon, 29 Apr 2019 10:12:50 +0200
Subject: Re: [PATCH] staging: vc04_services: bcm2835-camera: Modify return
 statement.
To: Vatsala Narang <vatsalanarang@gmail.com>, gregkh@linuxfoundation.org
References: <20190429073658.32009-1-vatsalanarang@gmail.com>
From: Stefan Wahren <stefan.wahren@i2se.com>
Message-ID: <185aa88d-037a-52f6-b1e3-70229d1d708e@i2se.com>
Date: Mon, 29 Apr 2019 10:12:52 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190429073658.32009-1-vatsalanarang@gmail.com>
Content-Language: de-DE
X-Provags-ID: V03:K1:ETuuLCQZhg0LcbH5J5l+OOX7ZNomkjssof0/i939kxG3vyvsK3B
 s1VuqakqqAVrDPSnW6izbSKs9JNLDYxqpPNmU7Qux4oFP8C1+x7oThKF4zx87BTOlE6h/oi
 1OHaCMu/WFnLVR16gMPakkvNT6JohMFQTfQmn4hhmHrdcztoC0Pys4rTMgSi2RZjR6c8r2t
 pvtHHj2qJtKdV22m80zGw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:N1XbRiNcjl0=:m3a+qR0kwTG3KzdC2t6bc5
 ixYjwXc1XrQtEUfrVKDb+OMjsNIrKjrjkYicDSku5/WYnMm6yPo3H+yVqIP68kObw5kKUF/D8
 pz2f2oK3PHNnhAv5MUaJmkeKfw8QcjBBaze5mF+dKE8tVVotmONISu9IxDTtZbwcx3LVDSkUP
 k3dHIqhfPbGRRmrwm+gbzUvw5qMZsZa1+jb56tdoYd/MElrPCV2I0IZwDiPr+uR32qzvqn8nC
 1szy5TdhXbg+r4WbqhBXsD+OmIsm3yRGn6fq4pil2Z/ek5a0Iv/8xkPnhTaTwQY28vXvGJ0BZ
 58IyM2MUVH5zraJOzeG498proZ56Yba3Vc8iY2VsDQuyhhnKzrsOES8dzKXhpw2Bepfu44JOh
 sQ0sttwItPsqjdxa5Lqf7kRfPYHwxUinHBT+UIfdAHlWcgBPFF7nC3AiCmLOT1xFrfFI4kDOI
 C19rcbU9jK8ctt3V/BsN+a8pVUx71VDcPButShSDNqPO4WblkOjpLeyYcXZVOBXgTN1+KPXLC
 1NGqJCL+Vt6pFiqymJDIjtZieOm6Daxo7+yYAPcVSJBsn4VZTAcPi7pT0vb1VOtnFjrydlDq3
 vAyOnIADkdLPMS9KAbus4rV0EZXoKzT3zQVAmgF5aNRcnEmWLRfvNgXi2TB44VQmJ27cnYwDE
 S8MUGb+eyw1mHgpKFlxVZc2EkKWbZc7Ils5OvNBySsDmmYDJKv2j1EqiTv6GD0VL+NsPXlZCE
 ECxHjRDjOEqdZothzDdfZeDh8kErXVUZs8wESx92lgyihBqs88dmBtOiYc0=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_011301_456697_4B9A8E94 
X-CRM114-Status: GOOD (  10.10  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.10 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devel@driverdev.osuosl.org, julia.lawall@lip6.fr,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

Hi Vatsala,

Am 29.04.2019 um 09:36 schrieb Vatsala Narang:
> Modify return statement and remove the respective assignment.
>
> Issue found by coccinelle.
>
i didn't check other occurences of the same issue since your last patch 
(27.04.2019).

Could you please verify this is the last one of this type in bcm2835-camera?

Otherwise please send a patch to fixed them all.

Thanks Stefan


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
