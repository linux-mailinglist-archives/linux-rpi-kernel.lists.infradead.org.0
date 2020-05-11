Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54B391CE17E
	for <lists+linux-rpi-kernel@lfdr.de>; Mon, 11 May 2020 19:20:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KkMIFgm/i8rIySu3MKTXV5U/1tw/hI08jEsKLGuaidk=; b=Nbygch4gdmEOV6
	RW6OJP5fiyvLF+hQvqzhKFLxxHnYkmJbcR5B3qc2TfE9bxxBq8ihijR9mOtTGLSJZcTjYTCTqjBgM
	FTI0PqqVh3XTNR/+Dq0mw6Y84MQs8s+7cFWW01kwvFymDALioP2LWEsjMvc8oeSzEdaXvXPGk66GL
	HoVFLydrOr4+Ttu2H9SQnnvvPKHILZs6ID9cQvx36uhRzs14MsTvvSsgbnVTHe1Z14V3Q02xd5WlK
	mCLx1Jj5nHnQW7K6qBrktZL/Potk++1aihJBVo9FnTRduxj1GHH5hGCMxlbzrnIJgAqv1y9aZFlX8
	0qnpNAw/AefpPFyrhRnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYC5n-0004au-8n; Mon, 11 May 2020 17:19:51 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYC5k-0004VT-6N
 for linux-rpi-kernel@lists.infradead.org; Mon, 11 May 2020 17:19:49 +0000
Received: by mail-lj1-x241.google.com with SMTP id g1so4505789ljk.7
 for <linux-rpi-kernel@lists.infradead.org>;
 Mon, 11 May 2020 10:19:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=anholt-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KjilQVaMW5bj1pstvVNrQfVUnVke7cHNmi4yKLCUZ6w=;
 b=AYQWm2psEssn6RcwA/1ys2dBNI/JI+tBpIv11JuKCaOXFMe7jgQKAqs4DPisAZBYJp
 1Vqe/i0BZRyNzYYunmt6K6lRXeC+XC4qcq9nUI7y4OdEIIOZSF9cb+Y3kA4SsQAIkYqt
 MOdoqylx00o2aJcTgTdDR413rNIAwZ//EhPeILleb0aDCK6eCDUIqjQPDNc6B0oEZuXN
 n7m9FCtOrS3Xlrz6h6IZ5dBjvXA9D7RZg7w/Zs0grINq40y2rXdw9n9MNOFVb8l8rdLP
 US1dtfiH+bAxICJnCCmIQaCjUVmS5HLU1V6h68YVlKPkbw77j1fpKe4PpTfvo1z3It3a
 nkGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KjilQVaMW5bj1pstvVNrQfVUnVke7cHNmi4yKLCUZ6w=;
 b=EwJGWyyQSAXv3fAkjTWWEIOLO+ATlUh1Y7dSzttLjd/bLVQVpRNsDx12oapu/WSTWV
 AkW5jImte4vZlHdoJQDPT6G9Ilkiap+ZQTXngiQ31oisNuhyOxBJyyc083KV5grfnIiv
 yxMx5GczNPbjSUWyksqJ9fiyWsptyi4RVvuu2J0Yqbn6djMRK9Y8cXW+E8xt3hoavFv0
 5uZ3ZT7Bb1/RCepCTId3vrTsKRvk6i1SA1Wi9mU0col/8JXPCEmAuaKnwXmQXc4DTi8m
 ndPGqDfB6iIaZowW9qDTxoC18gxX6CqhFW9B2Ws7hhHK2gsD6THiFeXXzuX4Hf6laEPf
 yGsA==
X-Gm-Message-State: AOAM533317NnBwkXbjmxJEih6hrfl4X+jjbT5vWOFJ4TcwOkBkgPSe0k
 qGExr0aebh1PlS+twnqRH1YezeSVaS/2VgWhAVCGuw==
X-Google-Smtp-Source: ABdhPJw+Gpn0+EhlnD4SdYB5UdkdBPhPbGkg64H3e47IhbM3cIzbaAAhJ8fU69wfv5sEfZh1PMjcJtj/fZkQ55I7EEc=
X-Received: by 2002:a2e:3012:: with SMTP id w18mr11187530ljw.55.1589217581389; 
 Mon, 11 May 2020 10:19:41 -0700 (PDT)
MIME-Version: 1.0
References: <20200511110250.23869-1-nsaenzjulienne@suse.de>
In-Reply-To: <20200511110250.23869-1-nsaenzjulienne@suse.de>
From: Eric Anholt <eric@anholt.net>
Date: Mon, 11 May 2020 10:19:30 -0700
Message-ID: <CADaigPV7JAPtXqkVf8ooPFFn8hxZYcV_iabzO5mGZO18+ZB4dA@mail.gmail.com>
Subject: Re: [PATCH] MAINTAINERS: Update Raspberry Pi development repository
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_101948_286112_7AC65176 
X-CRM114-Status: UNSURE (   5.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: bcm-kernel-feedback-list@broadcom.com, linux-kernel@vger.kernel.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

On Mon, May 11, 2020 at 4:02 AM Nicolas Saenz Julienne
<nsaenzjulienne@suse.de> wrote:
>
> Eric Anholt's repo isn't used anymore. List current one.

Acked-by: Eric Anholt <eric@anholt.net>

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
