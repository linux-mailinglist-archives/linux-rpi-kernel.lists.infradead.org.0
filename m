Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 022041038D8
	for <lists+linux-rpi-kernel@lfdr.de>; Wed, 20 Nov 2019 12:39:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=77rPBDpm6lPhbRKKF8lFUhaa6mfo/eFZGUGWmN/Wwf0=; b=XP+KLVFgY6k+c/
	UA/E8EgjJavhLzd3qM/yGQc9OzVUAyqYul5+iB/HZkRGUqQVcDZxaj0VF5i7+MQZD9/g8t/6ezrlo
	hH3TyufYDv7KzQTuwYzilO1l38UU/p14ZTnID4AECY0byShUhFn71o5RPXt9xmhGaokUYMLy2KOwY
	cAiSZi18uvqhP2k/4+WT2lt6iNnSl8SMQUWPis3PDDKw9MqQsugqcgt7onBFnj9C8XXGZvIfIlu8A
	6LD76gsv+eCio1QFRyTtdTMCN7KLM+GbkpFLsZbv76Q8wwtU0gP7kd8lcTXQ6iwhr/KyLvn5+4cM4
	YdlyeeNsbHfFF5sh0i8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXOK3-0001HV-Rl; Wed, 20 Nov 2019 11:38:59 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXOK1-0001Gx-8n
 for linux-rpi-kernel@lists.infradead.org; Wed, 20 Nov 2019 11:38:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1574249930;
 bh=lqyqM/sKrmql+PwHb90YqnUSZovmLvHDKIXNfQX0XeU=;
 h=X-UI-Sender-Class:To:From:Subject:Date;
 b=WWmfwRyAjcV8ViIpjf/CrABvhxI6lIzVC28U0o3AQh0byXlqRqaouAupHjXf4tDpx
 FNHnFk2d/kwDVW8Uai5hFSwGfHS27y5awF5KidbFTHo2nqJnMI3/QveXQzp32Ci2OO
 Yq4roVRyiSLnlofCipjzRSdfhfsSSL/R+jlhG1gM=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.176] ([37.4.249.139]) by mail.gmx.com (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1Mz9Un-1hch4L3AFX-00wDIF; Wed, 20
 Nov 2019 12:38:50 +0100
To: linux-kernel@vger.kernel.org, linux-rpi-kernel@lists.infradead.org
From: Stefan Wahren <wahrenst@gmx.net>
Subject: BCM2835 maintainership
Message-ID: <68580738-4ecf-3bb7-5720-6e5b6dafcfeb@gmx.net>
Date: Wed, 20 Nov 2019 12:38:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
Content-Language: en-US
X-Provags-ID: V03:K1:NppHBscTU5hFATj15+QdozwTQz+xRqNmlaXDy40FziLle98rbmP
 KIFr7e4mAKiQVE7zB4E3NiFBPguRs/7U7ORwGbL6Rr7RBD4CrBcQASbssUkQWFmHu1RuHpO
 me23qknFZ0BVIRsPMnR0FH3qU1FRHRhTsjYJameCjwBiAJw7MNO/AITyzKcAuzobUyTdpvX
 Cjls8R8+zM+gJSnZxU78w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:M+omUdPv3xY=:hhPaWjXE4xbat3U20/FSm4
 iO1khFenmQgYrl/fnqeF5nh2XZcYcFofP/8BXl4uM6J1EUY7HaOXn9VV+rwpJLXAA2Iib52S5
 eL4qPkKJflGhekCqxtM2gEAd9t8ymwrtL4oF1DWbOvSwQXnVqluR4xT2YU/58WkgmHcLt2Epu
 xcuyF4BhlXGXy9oq0DGvz08PyT1J9aTHoGpIksNaz50z304/hnUo+FwAIBRxzb/Mn4yveznH3
 ARkBX10atW1IigzBAOonG/aFJI3RSsnRAYO4/6t3/Gfkik8Fcw8E72z1Qk7slQQz+mYNzcwz3
 zyeDBEzAI4j0NMq+ypM+4DVpC9864tSfmTxmTIFHqWZ+E2Gl3j4gp7HifBN2lq7tAzFBYf6YW
 2JoshHyBjUuYdvrUMcZPSp9FP4+vwlAiyXyrWZgB6GXDyf8rvfEljFEtO6MK8Pt0JccWUdRny
 cK5+qS1FjW/MPX/lioI+LUdSVLSM/jVW50+PiGY/ilf4OWN5c/Uj2sNnhZR+nzdoqQdiyn5yj
 MtOT955dvay3oLP6I4yLbbHrYOArf3ZvexeubYjYSBF4InnnYdp9TBceO3TLnbMwO29LJrSHm
 pmiVid/xo7FYV+0gj+oB9mzVJAHILEf+3RE6iKxZe4NnExzJUzU9MnJ3+VDN/BUWYJKJe8+sK
 hS+ZEe//98nUp/d77p4X5Z0oGOt5HCpv0MLpfvLj5WpVNdEe+1I62vHTDlqbuAEdHl79mH+uG
 XICH7hC9V+v/YOXyh6wKwhBJyGR6E1Dx0Q9u/DaaduAUds94RPlL/g3d1jC6P947LFNvflKH1
 nTPjZFq+axacpM7/+FmhTuA3bS/VdRrb2jsVOvbTL2hL2w+FYYCdIEM1qYyCTv/lyKl0GPRvR
 3OsGBGpwYFyHVSt+Cd3NEZC+OO4EWcKGJYlT/lai0jUEGNEgsD8+AzKiE42vDAjPgZj9IvU22
 D36IaWBstdLM/UKAmRC7Ourif5v7Jwk9TWgemyVNw+z58xMIcXsqbH85Ab+8UOIe3ePgq+b87
 u0OxX4fKAlg6eVmNfUBiz797VOzlD3Juj1+8hAcoL04aGhBiZbBNuLGVbhfLgqCGuIa6+lToX
 e7bhApcjV+g/5lpiOJHyEzqRVVpL62jqIEdAmbV9UaA/l3YeMVERXUj7NMotjif1pXsk3Adwf
 UhTa5vAYxeYu/3n6Lh9Kamb2uPs5+G7zT/FmeQwWedNSeunnt7Uzr5LRWr+Dcdeb7kjpU5Xst
 nS5PDp/sgEfJp6VJ9mZxXtO5qDzQ7zYgls7GePax4so1pUG0auOKoBByhqzg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_033857_640385_02CEB829 
X-CRM114-Status: UNSURE (   5.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Hello,

i need to announce that i step back as BCM2835 maintainer with the end
of this year. Maintainership was a fun ride, but at the end i noticed
that it needed more time for doing it properly than my available spare time.

Nicolas Saenz Julienne is pleased be my successor and i wish him all the
best on his way.

Finally i want to thank all the countless contributors and maintainers
for helping to integrate the Raspberry Pi into the mainline Kernel.

Regards
Stefan


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
