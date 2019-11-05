Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8D08F0913
	for <lists+linux-rpi-kernel@lfdr.de>; Tue,  5 Nov 2019 23:09:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yfjeu5d/86fI/aUg5WMgeD8AFeTAL2lFGHhKQkQOiWI=; b=ikhXgOvgAG69LW
	ZrOMAeW2FnXCzOIChgIOx5srxljH/jxOKew0SjMzaIK79ruOTivrXK0cA75nLJ88JQfjgRUhMfi1Y
	l15isDOfNTd1fS/uFYeDDOnVo6I8sxFBz5dTdxI6RjciMDc+DJOkymKgmyRU7bJH/hd/oHB9fvDN+
	+GIhFVPEPPkBEfjrOyq78Q/qy0ueReN87ZIR9tLcev1gm1XCLMU4tn5S3J4E2FODLANqGdZRSUTxY
	wYvd/woostnYpU0VmcObQ6KGt8w+cuhFU2a1VKMMEz+VdQ7Q3O2dSioLnfUiDCh9P2M4TsCC+Z66s
	4ZPOMdo8IdCqBDXAzkUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS714-0001zg-L8; Tue, 05 Nov 2019 22:09:34 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS711-0001yM-2r
 for linux-rpi-kernel@lists.infradead.org; Tue, 05 Nov 2019 22:09:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1572991763;
 bh=5A4pdjB6iCuZufbV/5ehqkaD+KZ1Rth6G/PVGU09KAA=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=P0s5RHCUmiUuyPrmkfVMxeBSdn7tBnBn5L08qAvLqWZy6Cykw8euhOfxy+gVxt7Rq
 AkBhFAZmfFGb2V6/jPogrnUTJ9EGdHCiS5Mlh+M8LKnjNUY5xXLRnCXKf4d7qpomGO
 siQIVtKmj27p0LVsfce+miIrm7i9lVyHihLP0vks=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.164] ([37.4.249.112]) by mail.gmx.com (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1M4s0j-1iTUKC2flH-0022jj; Tue, 05
 Nov 2019 23:09:23 +0100
Subject: Re: [PATCH] staging: vchiq: Have vchiu_queue_init() return 0 on
 success.
To: Marcelo Diop-Gonzalez <marcgonzalez@google.com>,
 gregkh@linuxfoundation.org, eric@anholt.net
References: <20191105204417.13994-1-marcgonzalez@google.com>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <76e91e27-e796-82e8-bbad-d503b1ddc4cd@gmx.net>
Date: Tue, 5 Nov 2019 23:09:22 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191105204417.13994-1-marcgonzalez@google.com>
Content-Language: en-US
X-Provags-ID: V03:K1:TXuY0DbJlXL0dwh4bk1yKGT9SbMFRe/eG6kvnDoMtQNxVxQQvjR
 E5p7C2zVDwniT7BoWF9464JH2vc5aQDCY2sUzXaa8hy2/vnznGrcopB6t/i/D4sYNHDA0tH
 BxkEbKpPSHXTpf+70feUVXhgusLi3+ytI+UM62Y0SfGfRhTbMziR6D2clpzI/TAivfwK6sN
 Pl6uVQrov1Q3bSsziN4fw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:+Vi4cu8UePU=:ybgbpYEgFsacmDpg3u7A9K
 OQZ57p1N3SCF3JszYBP9/262eW+rBNcNvp7wD5AKV0z9rVGJTwqyDTn5cFbiLOWaFK1gnu1Uw
 OQBTHCJzuvjbFSSMS4YCICyl/SFXr4EOeErnGAUQy7xMI53vv0GC0KgMoypghOzkLBfrpE8R8
 PYA51rSE62f/PcKJjtI7wtudRJ0DBnNFhty3ljLxbzGBInAq09F4nKNEbyxHlh8VTSC64yoeI
 Xexj6CWvb6LvxTW208fhzpaAxwrfiwo01xyIIYbTwi7BbrXiCwBp0HqESpoaqL0JRtIyIo3X/
 JUMaSwvbUwxjoWD+zIkUAhe/gEmoHB9SQ3Ciltr4LEioo0BJWVQPDeZT28xD1zVPkQ9rYc+eN
 TJljV5BW7vPtG0t1wHsoyRI0XFLlBJlWwgt71JUP+feAmqnsdBEGYyt0S1asq0QCurUKYePF5
 iDOmiceBIQZ0tE0f9pzXxu0fusmPnme30sI6TXW97nQLsBT6Z9l9u4VUbdPpXzH/9thYitJDE
 4FodVDZExFH0UQ74O3KNW5tySGOkYkxwz3o456Wq3BYO3LK8JC6AVx+PvnOe3pPKwoiNmapoP
 A6vhWLctjn5BZG5dUAxfcU4ITL3MQS0yvaDFdaRwm1RF6dxgQWE3tehdClpgI0ZZ4Lbq7FUGV
 5bKMxHxGBHmZu8p8poDhLqGRSeRCjpCLI2b9w363x40PSUL08RKsw95sP+Bet92J5s+EKyyYv
 24f07QP9paXqiDGhwfEFG4dcMaYa96wNH+iKo4P5ue7CJn51gBAbZZ1D9FS2xn2BePLEGjiBz
 QzT30YP1wnF7eSOmmWexEgk2m6GWTQsp0sM933NpWp//dfIyNHeUopec18hxwPy/IGnoCh38h
 QsLIExvygMzgjF/zjchujMX296estKfenAjmaUAybXXegG50oPOwfGIHIDPzmB3Jbt0xRTd2T
 u4pIfpu6W5BdN648QyDw+4bjt4lRxkFJkZUe0vrOIqymsCgKY0QiqSOFvXfyIa+5n2TFUIZyv
 BKO8FXr6NuFpcdewmURcDTCU2C7mrTHNoSRQTVLtcuhf9rS/cuI18jzQGb5X3cReNgCsFO3Sm
 wnV4KumZrLjEzVaCDjoCEN7AGPrbKVLVOWc6fr8RE/bvIZMzH9KQ/+NCH9/LViSWtUMapukp7
 vcdQsFxyvyM/d0T2fZPI3E4jxvzL8dUpEda0B/neX++P3Cdt6lNRNw5hs/HQS8qJcuCr+ONMI
 xtRNVhJnATKijen3fsMvfRsQdXutxeom4ofs70uJnOGCAuv5Cm9eJJQSFzTE=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_140931_424498_C5EC4AEC 
X-CRM114-Status: UNSURE (   8.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

Hi Marcelo,

Am 05.11.19 um 21:44 schrieb Marcelo Diop-Gonzalez:
> It could be confusing to return 1 on success and 0 on error
> given the style elswhere.
>
> Signed-off-by: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
could you please resend your patch with the staging driver mailing in CC?

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
