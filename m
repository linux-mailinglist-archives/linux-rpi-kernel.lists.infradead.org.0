Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B540A1D4D18
	for <lists+linux-rpi-kernel@lfdr.de>; Fri, 15 May 2020 13:56:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NK1ed4YWqmujpTABR1UInX5GC629ZgGeQNr0m+Ai97U=; b=b3jfW5p3wNNSwZ
	QbPWFGI9gbvaI4Pr8j7JUvbdX/SupZcVEwgSwmwQiKS7iA8FDNyaZ/ku77qvHKS06c3dVlhDEx8y4
	qBHIWMt+15/O3Nku4AKMgaIvTpqdfZNOqpUbRhfFYurD/mPFNEi45qVAVnjFAhCPNuqmr4BAouW6P
	3FBnDCgdqe0VqZJ/QVp5XJUwA62bVbbMTGiJmCFdbdQeHx2oe7dsm7dnKYA42X/aWaCgdGQssCBfE
	dRqbq1MXxwmVTWxbVvU898wLTwd90TwGAmf/ahgH8Lw1s0oVfkzdFVi3fclt//ebXeAR7wZOH7kC7
	BY1wNt7fqGdU3QkxnLrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZYwN-0004nq-Cr; Fri, 15 May 2020 11:55:47 +0000
Received: from mout.gmx.net ([212.227.15.19])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZYwK-0004ms-AT
 for linux-rpi-kernel@lists.infradead.org; Fri, 15 May 2020 11:55:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1589543740;
 bh=M+GeWKCObCBMNllVs+WkLl07rXnlkypzzMGC1vg+tWg=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=SQMzV3Y10PmudrErO6KejMCXU3U2RyOV215YwLjZb6jeQFAqWnU8XWRiVdqsqjMtu
 5by413veFdSKc72gwTf9Src7ot5IirNOEBUXj1Wiaw7TLlZmr/X6Ao/n/r96GLROv+
 QlVlCet1pqF6hlrQOZ5INw32fHlZ71FhUgIB1rik=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.178.51] ([78.43.154.122]) by mail.gmx.com (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MkHMZ-1ipXrm47dx-00kex3; Fri, 15
 May 2020 13:55:40 +0200
Subject: Re: [PATCH] bcm2835: fix missing variable initialisation
To: Lukas Wunner <lukas@wunner.de>
References: <1589541929-12098-1-git-send-email-LinoSanfilippo@gmx.de>
 <20200515114732.fbiriwdppozvg2d7@wunner.de>
From: Lino Sanfilippo <LinoSanfilippo@gmx.de>
Message-ID: <c9d65552-ebff-ecb2-2042-ef214088ee9e@gmx.de>
Date: Fri, 15 May 2020 13:55:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200515114732.fbiriwdppozvg2d7@wunner.de>
Content-Language: en-US
X-Provags-ID: V03:K1:dgzHz5gREmHJzfRAUYeNpK9zHyAJEbjxpMHp/qBNLuN+33XC2nu
 KVYsDwzaHKd8TZoRUB1mMQh8k92fe/3yfFzzZU9T12HfS8ggnjOAzw9th76UyrlH8043Tcc
 Ysu2vuBKWu0clHtIul9Gh+I2agABkxSZv+NWeEtGfpPcNTp5PFdWxqDn7Skv76sZpFEriTc
 +easG3aDc7xapNPzr0HvQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:LiUEpX5LiJ0=:9eCT2evJhJszHmsm2KIAv5
 RmUx8Ef3SNOdCK3X76sz44ZCf1UBmwin7zuOCQbB+NdbzaSRDB2xERmWi3aj+VJAdZv9etaRc
 mZQxZzyIZyRxwg/MLLTF68JjEU7Nu74YdkG3QbSuySJ2pGKylXWjmTUOV9MiIl5Js65EWh9Nz
 bd2DzZvvi8kHz7SGN7msaK0Bah1PWETJwWYUIs8FRo+P3FGEW6LSA5gvHhMnBF6Q6wprvUT8S
 ZxIR+d1CSJaf41H2E8YELqA8XxxWjWLezbkIPsHlz36kHvyef/E2b7d7nbdQ10tGIabkHYwa8
 pBJX34vDNp2WyL05lvULB0hAKwqP5Sx30oiGFGietPFznMO19Xmok6yFqQJ8RUEmMeSLlRc2K
 iTsP+96SH6xIUzQBNFRaYXGOeLESt6u96XCgPuh685wj29Wk9shcQYqMBxHAfnsGZqqxudgTx
 OL+McAwpbF48X4GOL+0m13bDe1aY0PvqVCfpPiKfuamXSEYm18/mDQK8oY1zrZkbTLfzqh3Mu
 y5Bw0Cl347eyDfv5tlVB5UyPzPv9/GCWF6ZOfGePa9rpk0EWYQUlgFDsgkSQbWKscuPzEODSc
 8zxRdtQ6Gh5etwE0oF5CYYNvL9ps3AJ1YFIZZavKne7gsqPtJqwa9sg4hRkHMevN4DUrFQYra
 /qRLCRZ4MI7P+8slxP1i84iIin/PohLKSJCGYyjm4Mim/y8mcv0s0OiH7sYsyqm7NV8oE3uUg
 Ta7FAOu9fIORjJDvx58Q2uhk3Ip0W7kNHbkYmPmyvmMXCGy57jEtVytIXq1mrhGcYZlYaHx1Z
 LYRQLE+Di99Qh0CuRYO6cEThckDICjLdt4OqT1K7Bo9J2zxYD0/CX5qQ/T3raXkYrhOx7qCxR
 kHbVZ8pIKzd3mpJskVt1zVM3q7IGGb+hdUrNpJZPcvBU46dlV0U8SxSMC/DteEGiBBcyDAcs1
 jApQyLc3PH8HOKR6Hq9wEQSBfDFBnzBVQh50L6zSL/YAzpuKxXsYBueMaIJTGeY6ZvYtAQlBt
 7ToCkVK0fd5xxITXtZ1FtK1JWk53JaCgCCEacu+nfXMYURVS2DBgZCkGsfj7HNgQoymIX35X3
 I/GOb45qdJKNbeVjb8yAa8xyWHglYiR7zeX/ejVMRUMvNw8n3Gx7SwSFnqugemu6UloALFe3I
 eDGw1TfYYDvI1pst47csouRBjkDOZIfKcNgRZn7zLvfl53pn/2OI2Jce8O9leJ0sob1F4j0V/
 0rWKY9XfZLR2Mo8qq
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_045544_658523_07DB05D2 
X-CRM114-Status: GOOD (  11.69  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.15.19 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.15.19 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [linosanfilippo[at]gmx.de]
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
Cc: linux-rpi-kernel@lists.infradead.org, dave.stevenson@raspberrypi.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

Am 15.05.20 um 13:47 schrieb Lukas Wunner:
> On Fri, May 15, 2020 at 01:25:29PM +0200, Lino Sanfilippo wrote:
>> In function get_first_supported_format() the value in variable "ret" is used
>> as a condition in a for-loop. So make sure it is properly initialized before
>> it is evaluated the first time.
>>
>> Signed-off-by: Lino Sanfilippo <LinoSanfilippo@gmx.de>
>> ---
>>  drivers/media/platform/bcm2835/bcm2835-unicam.c | 2 +-
>
> This driver isn't present in the upstream kernel, only in the
> Foundation's downstream repo.  To fix the issue, I think you
> need to submit a pull request on GitHub rather than a patch
> to the list.
>

Hi Lukas,

thank you for this information and for the review.

Regards,
Lino


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
