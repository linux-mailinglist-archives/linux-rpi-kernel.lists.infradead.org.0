Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6D8A1628CA
	for <lists+linux-rpi-kernel@lfdr.de>; Tue, 18 Feb 2020 15:45:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OFj4odGhI3xKYoG0reY+k2IRj59Kg7o9mb07O52+3SY=; b=sBwbM4pb4+jI2V
	5rthiBqA7RMrkcZQ78dEUHl4Nn4Y7rrKMCk1fji54hwUEF0AziGevzbxyKgzQkC6gCoP34rbStZpY
	G+LlFwkbGq+AtYa0YqSSPzsUs71xjYvuVqPP+TED3AWBPiP51FlH/3IxpCabL2GpP2vDleD24tXRD
	jjntIYAGChIfeD12bQqrXRkA1FeLf0qzPjJGqbJr8ruUxhTKeukJoKIhzvfrVgdkEUoFN9S4GG60Q
	7JiHjo5lXDdpV2mFSPcmIP7pxWBZb0cLxB1eksFpOlfJ8Yb5jOV0k7PNQhCImNNFMTtbsvYYZLLJx
	U8oNupWD+EDqBshv8iQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j447w-000349-I5; Tue, 18 Feb 2020 14:45:32 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j447t-000333-Fd
 for linux-rpi-kernel@lists.infradead.org; Tue, 18 Feb 2020 14:45:30 +0000
Received: by mail-pg1-x543.google.com with SMTP id z12so11070134pgl.4
 for <linux-rpi-kernel@lists.infradead.org>;
 Tue, 18 Feb 2020 06:45:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=PgVA74rw/Os3jpwsoZ9ssKAAiF6uv0dDc1ODzO4kp7U=;
 b=YYlZcWxAZ6/+b94Q2vrpNWGl5UwkzRE+JT0dBBLtNUmGuBlYmIZMs0N6T0ItKKo/Ai
 6fIrMhA+uw2F+TUfgwdlcNuZ133c8dPrMl5NMH1di9R3USLjf3AEmThFuZmVu2p0vBV7
 JLavjooBGQpWu8bBYaOcXCrEAIsZaGGdO5iA3nQ24mkUGZRifufirPwsivRlamIn76IS
 L4vXM2VBiThAYeQvxMWhkelFCfROh36JWDW6Aac7aDAXQ73Zjr9+SdtvQ+BuCwU6r62N
 z5TuWdAC8OUlZQS+9eOGDxUhR7iiPqFpTqxk5OBH35IVtDVdaSDNXAodW/d4xKKtDfSI
 FlYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PgVA74rw/Os3jpwsoZ9ssKAAiF6uv0dDc1ODzO4kp7U=;
 b=tKQ4OguFg1q2SAS0n/ZatqoCgkO7MLfxjGgY12rnr2lK0kmTgMJ8B6gv2IMtqJwzOy
 fa7aQSf+zOp8y7FFI2Qgbla8cUYpJXz/l+T8vguhSKqSCvtlnW4KEEN8T76B2UxdhmS/
 CI8qQ9pKAW0yq68hvdOsZ5lBzrQDPDULMhIIzP/6QmMAmRF3kT7fjm6biyBPTpCuf8WX
 a5xnmHZutTSV8mCEJlPTTgMbbZIi/46b2H7N7dz2ZkXQYKQvcuNK9MQ065dAJzNWXhpA
 3qqriZXU8voltYbB4WclbaliQou2g1ircUB/75iuIq+j4MRbMbush3/ZjK67RXC9okMB
 Tfdw==
X-Gm-Message-State: APjAAAU91lxSZateR1WZfG/pJASngvV3Q88XYfTsHssxt4P8kRpOoKZW
 pUjli5rfcfx6F1yrdaww7jEZ68kTdzqrvEBbeHJH7A==
X-Google-Smtp-Source: APXvYqwbiIt8Ld0kUAUr8Ptx7Nq+Jjuf5kDvUZWTU/Gh1LifVVyYDVuEb39rLiPuZCBOKca262/gj3E05azYltgr1Xs=
X-Received: by 2002:a63:3c2:: with SMTP id 185mr22342627pgd.72.1582037126783; 
 Tue, 18 Feb 2020 06:45:26 -0800 (PST)
MIME-Version: 1.0
References: <20200213194001.130110-1-marcgonzalez@google.com>
 <C0OK3FSV7XIN.MMMEHI9F14QG@linux-9qgx>
In-Reply-To: <C0OK3FSV7XIN.MMMEHI9F14QG@linux-9qgx>
From: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
Date: Tue, 18 Feb 2020 09:45:15 -0500
Message-ID: <CAKvFj6qR+1fdVWAivo-pddsFk8zNhbrO3JjXj-qBa-CA0M9-EA@mail.gmail.com>
Subject: Re: [PATCH] staging: vc04_services: Fix wrong early return in
 next_service_by_instance()
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_064529_523360_CA7023F9 
X-CRM114-Status: GOOD (  15.44  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: devel@driverdev.osuosl.org, Greg KH <gregkh@linuxfoundation.org>,
 linux-rpi-kernel@lists.infradead.org, Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 17, 2020 at 10:55 AM Nicolas Saenz Julienne
<nsaenzjulienne@suse.de> wrote:
>
> On Thu Feb 13, 2020 at 2:40 PM, Marcelo Diop-Gonzalez wrote:
> > If kref_get_unless_zero() fails, we should keep looking for the
> > next service, since the callers of this function expect that a NULL
> > return value means there are no more.
> >
> > Signed-off-by: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
>
> Reviewed-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> Tested-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

thanks for reviewing!

>
> Note that, as Dan says, picking up the Fixes tag would be nice.
>
> > ---
> > .../vc04_services/interface/vchiq_arm/vchiq_core.c | 14 +++++++++-----
> > 1 file changed, 9 insertions(+), 5 deletions(-)
> >
> > diff --git
> > a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
> > b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
> > index d7d7f4d9d57f..edcd97373809 100644
> > --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
> > +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
> > @@ -252,11 +252,15 @@ next_service_by_instance(struct vchiq_state
> > *state,
> > struct vchiq_service *service;
> >
> > rcu_read_lock();
> > - service = __next_service_by_instance(state, instance, pidx);
> > - if (service && kref_get_unless_zero(&service->ref_count))
> > - service = rcu_pointer_handoff(service);
> > - else
> > - service = NULL;
> > + while (1) {
> > + service = __next_service_by_instance(state, instance, pidx);
> > + if (!service)
> > + break;
> > + if (kref_get_unless_zero(&service->ref_count)) {
> > + service = rcu_pointer_handoff(service);
> > + break;
> > + }
> > + }
> > rcu_read_unlock();
> > return service;
> > }
> > --
> > 2.25.0.225.g125e21ebc7-goog
>

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
