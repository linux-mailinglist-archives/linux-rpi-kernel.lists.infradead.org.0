Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E85281050CA
	for <lists+linux-rpi-kernel@lfdr.de>; Thu, 21 Nov 2019 11:43:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NEVzpZ7u30nFM2qm1juMcrwxQ76hucmbBgDI1tRYEZw=; b=r0lX8AiwjvSLkY
	VPj8Oiv5V0seI9a/Tb0LZD4FyugtRRIudYLHiRgUvacA6AXSWMJjrc0BNY2SMoFazvytx5Dptkldc
	boFrdsRwy7c2kyfwYpYp2Rc/qKZRZaxAeBn5hp6wdxcHuSWAhIVsQ1psMfCDch5UsoDX3oVo9oV2/
	qSU6FWC7N4c8bKu29ajh2S7XU/mRHvTvP6Y2sZZtu88Jyg9gtE22MEqycjMUfuOm+6zbpBp3K4Mqz
	pUVV3TUdGH0DZdeTl+yZ3JxkM5m5WVvAmUfrhHEmg0q2/I1xdcqs8r/v5IJNP8J/KA7rmtG2GMbAT
	TF1wPlRg9+LyJhflgrVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXjvJ-0007P2-Cd; Thu, 21 Nov 2019 10:42:53 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXjvF-0007OY-LU
 for linux-rpi-kernel@lists.infradead.org; Thu, 21 Nov 2019 10:42:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1574332959;
 bh=Cu4UP4LpQQZyVgOaPhov5Fz2MhBw3/A6/FSTmKY3tSM=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=P5RJn0cfJA7sMj952nkWENIGS3lkgP/unorWTE6fJwgnuS4MZzA62trs36xJC95YN
 d3zw2E3soIhOGQZZxlD30s41OHs08gaA5lrTLTu+RqzepH1/RDsFMArUkfvkYZ7XJR
 yzkgeRNowKZxpplPmwKRm8Igoop4+7z3Fu1aBSj8=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.176] ([37.4.249.139]) by mail.gmx.com (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MiaY9-1hsvRw0zRP-00fkqG; Thu, 21
 Nov 2019 11:42:39 +0100
Subject: Re: [PATCH 0/3] staging: vchiq: Fix vchiq_read return value in case
 of error
To: Marcelo Diop-Gonzalez <marcgonzalez@google.com>,
 gregkh@linuxfoundation.org, eric@anholt.net, wahrenst@gmx.net
References: <cover.1574253964.git.marcgonzalez@google.com>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <f2f8b72e-3d56-e9e5-f381-5b80a09490dc@gmx.net>
Date: Thu, 21 Nov 2019 11:42:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <cover.1574253964.git.marcgonzalez@google.com>
Content-Language: en-US
X-Provags-ID: V03:K1:BIgGyu831W2jQdajxuzPFuZfaGt1VdEJjXLWXkXI0Knjl/EQ5PA
 mC2ZCPpmdX0KL879EjjYPC84kNCSBwyttlHBDnfLKIgQBFY+B4zb6J7hpdqQZhAkHXqyc1r
 o1nev7xgRM/07IJ4CERpu+RtnIPxuqmPoVg1m1gFI36aAapClTPmcU33o0o6iehq5d2Kq/v
 0LkGQmSAOINfsa/LWj4dg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:OUTuvdWfPD0=:e4MNm2rHRYeYZwLJFtCy6d
 KunRXm5TiN3BKE9WXRL+/Nh/8QY9BzV1iorH2OU9CxT44SsVV18AHAP4VcHv/mFhX/927dM8r
 GuRGdeMN8zNPNWwGTz/WZ1mBEVwa8gCsELwoxdQhDcuaatabM2n/q/BI/F7Zju5QO7HnlS6rA
 BGjm6XtaQzJxrCD2zeHXuBfldpEkP3jq65tpHfbX5w3NKvX919jjpWj2OvumP1lTCrkur8eeF
 eS4yuQI065aIJjbBi66kDbAFNoKGkL5cJNWJm2C3w9FmfjmsGTslHJZE92rF2QBxoPo11BiZY
 Mr+h9ER7QSJfoRjtwb/BGMEwse2IFutRyAUipUVlMCnCVKPRCbw+dTdlLmHFxSoAC10+mByJp
 1YCs6Eq62Wdd/isa60GbNKNAeTHYbY6wTYLlmlgyOzicQSZrgEPFes9jUHT+Mg3MqHn7pk3cw
 bh1pxLDeRLsAAhxDz57DRQwXx88WG61bJn/G/Y1b1pWxm6FUnEttwb8/2LIk3ug8q43D37aAm
 fkUBklB5cgWGI+129THQnKgUGuUsYMA3DHdWxvGMBIqMPy5+huUIf7D+lzw5cSIv+8bvKsFQk
 FlikrLx/8bwOiKX/KdeFYOOYbJXPscHYVjvgwzD1KOTx/SAZ6nyeJE4Eq6/33B8BbJmwZSmHl
 TVgqOwBTeyNX/3wb9ObGq3NV7YaTL5wAvAeIAq2mpiBKhBAl7UvkBs15SjP9VFgmbOP4x9p7H
 cwRwyz3RUvCA3esTCa2JJKbqMVy6NYVg7gusygkQpzUkX+kxRpnrA+2yqjgBP5pSFEilBKv3K
 6Tsm9D8VOHXQ6ks93HKzG6GFEQP7eEUNXSASMy7lD1sx0fHrmkWQdmaNq2Wl6+1wDVcyjmEm1
 k7uiwXVz6hO8p73BRXks9r2r70o8UQSReXsFpDzD3m7737inZ00AkF8XiFIecmzw+hW0yNUSu
 KOMdyBL5ngEGjF5IXGzxj8BzRlcMMtyJTCKWgbJOMtBNYz8uh55ijWcm6Kaya+TMmwad99y2I
 lB6XKsnDXyUl0JQiUT7XjvX6Ldntx5I6Ubt2qnUu9B3oGmzT01MjOkWWEfAcAdfJGFKz8S8M5
 OhCLo5OyC5tfRpGxppwKI9CTLP7NrTYuyt0AluFLElyvUpvzUHklaidZlCEfJdVBAt/pzf3gO
 Ng76k5nrBrhBAFwOQXNXeFBuLNYFqU1Dowq0oBAFrwJpJesK5w7fjpVBqTVIT+lvvI5Epsl2B
 CtELgZ3uOHe5nG8fqagPp5I71NvVOxjLk2IaDeWNFCGQ2vG9BJVXYM+s1A6Y=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_024249_997075_5D0DAFA7 
X-CRM114-Status: GOOD (  18.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
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
Cc: devel@driverdev.osuosl.org, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

Hi Marcelo,

[add Nicolas and Phil]

Am 20.11.19 um 16:36 schrieb Marcelo Diop-Gonzalez:
> This is a proposed fix of an issue regarding the handling of positive
> return values from copy_to_user() in vchiq_read(). It looks like the
> struct dump_context passed to the vchiq_dump() function keeps track
> of the number of bytes written in the context->actual field. When
> copy_to_user() returns a positive value, this is set to -EFAULT. The
> problem is that this is never returned to the user, and instead the function
> continues, adding the number of bytes that should have been copied
> to context->actual.
>
> Running the following program:
>
> #include <stdio.h>
> #include <stdlib.h>
> #include <fcntl.h>
> #include <unistd.h>
> #include <errno.h>
>
> int main(int argc, char **argv) {
> 	int fd = open("/dev/vchiq", 0);
> 	if (fd < 0)
> 		exit(-1);
> 	sbrk(getpagesize());
> 	char *bad_buf = sbrk(0)-100;
> 	int x = read(fd, bad_buf, 2000);
> 	printf("%d %d\n", x, errno);
> 	puts(bad_buf);
> }
>
> gives this output:
>
> -1 1
> State 0: CONNECTED
>   tx_po
>
>
>   Remote: slots 2-32 tx_pos=578 recycle=1f
>     Slots claimed:
>
> Note the mangled output and incorrect errno value. Messing with the
> constants in that toy program changes the results. Sometimes read()
> returns with no error, sometimes it returns with a wrong error code,
> sometimes with the right one. But it seems that it only ever returns an
> error at all accidentally, due to the fact that the comparison between
> context->actual and context->space in vchiq_dump() is unsigned, so that
> that function won't do anything else if it ever sets context->actual
> to a negative value.
>
> After this patchset, the above program prints this:
>
> -1 14
> State 0: CONNECTED
>   tx_pos=b4a218(@165de6b4), rx_pos=ae0668(@f02b54f4)
>   Version: 8 (min 3)
>   Stats
>
> Help with testing would be appreciated. So far I've basically just
> diffed the output of 'cat /dev/vchiq', run the program above with
> a few different values, and run vchiq_test a few times.

i consider this as sufficient, but i'm not the VCHIQ expert.

Thanks
Stefan

>
> These were applied to the staging-next branch of the tree
> at git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git
>
> Marcelo Diop-Gonzalez (3):
>   staging: vchiq_dump: Replace min with min_t
>   staging: vchiq: Refactor indentation in vchiq_dump_* functions
>   staging: vchiq: Have vchiq_dump_* functions return an error code
>
>  .../interface/vchiq_arm/vchiq_2835_arm.c      |   5 +-
>  .../interface/vchiq_arm/vchiq_arm.c           | 129 ++++++++++--------
>  .../interface/vchiq_arm/vchiq_core.c          | 104 ++++++++++----
>  .../interface/vchiq_arm/vchiq_core.h          |  12 +-
>  4 files changed, 153 insertions(+), 97 deletions(-)
>

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
