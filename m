Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 746BB15C9A9
	for <lists+linux-rpi-kernel@lfdr.de>; Thu, 13 Feb 2020 18:43:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yjtx+xBoyhdajnBq+71EtTrDTL6elvKRMm7wexx6oec=; b=XvOrkP/kks34kH
	XxNuIQvt3fmpSXdO22wHBZOnILAZQqE4SZd7Lego+P7GchZ/MkYye6SxMYVPu44dDDRamLm8LUrMU
	8c35HT9vH6CgYCZPgXLftk5Gojh0o4DAUMdklr30Vk8q3l2N9wn5PUThewefMeRELDWBOtEE0L73P
	I++7kuYobrdJ9BfFvPqp/DEUyFXp+0KLc9fsrFM1weWyA/cGg0Hl2MTYDTJdPdwGHuIrxk+yzJnHg
	pt9E7dyMseqM3ihKu/YeT1uw2BrpCg9IeQEX3SZ0cGQZEkDZsLghAJA8S6ihrlz9/SxLTkOJoiMO3
	Qffjil4Ios7Gpu3ktWmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2IWT-0002s9-63; Thu, 13 Feb 2020 17:43:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2IWP-0002jo-B9
 for linux-rpi-kernel@lists.infradead.org; Thu, 13 Feb 2020 17:43:31 +0000
Received: from localhost (unknown [104.132.1.104])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E1901206ED;
 Thu, 13 Feb 2020 17:43:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581615809;
 bh=J32yj4OuDHw1RJn/WqVcGMBsWn6twYxhuCwPRG78nZ0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ulPubzc0xM1Z4dN0RAcelB7x1qCdRsOyb+LDiAY3I9kh6FN2ucUIW3kgjyljPbavi
 6DRBetuxf9xy8TeXC90cbeH/sYDxIIxOvJJzVBsxeDcgbDATDVFbFiAVF5qoZs5iqV
 rZABHy59Oed7H4T6mTLC1fl71HDtKu4uv/8DowRk=
Date: Thu, 13 Feb 2020 09:43:28 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
Subject: Re: [PATCH 5/5] staging: vc04_services: don't increment service
 refcount when it's not needed
Message-ID: <20200213174328.GA3688005@kroah.com>
References: <cover.1581532523.git.marcgonzalez@google.com>
 <ac6186ac888f1acf489b5b504efcba8b0d6a8b25.1581532523.git.marcgonzalez@google.com>
 <CAKvFj6q9d-Txfe9fj8tfpT9+Ea24qKd+6Jno-XRikgixqghCYw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKvFj6q9d-Txfe9fj8tfpT9+Ea24qKd+6Jno-XRikgixqghCYw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_094329_626224_7E53F16D 
X-CRM114-Status: GOOD (  18.76  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devel@driverdev.osuosl.org, Dan Carpenter <dan.carpenter@oracle.com>,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 13, 2020 at 12:03:32PM -0500, Marcelo Diop-Gonzalez wrote:
> On Wed, Feb 12, 2020 at 1:43 PM Marcelo Diop-Gonzalez
> <marcgonzalez@google.com> wrote:
> >
> > There are a few places where a service's reference count is incremented,
> > something quick is done, and the refcount is dropped. This can be made
> > a little simpler/faster by not grabbing a reference in these cases.
> >
> > Signed-off-by: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
> > ---
> >  .../interface/vchiq_arm/vchiq_arm.c           | 16 ++++-----
> >  .../interface/vchiq_arm/vchiq_core.c          | 36 +++++++++++++------
> >  .../interface/vchiq_arm/vchiq_core.h          |  8 ++++-
> >  3 files changed, 40 insertions(+), 20 deletions(-)
> >
> > diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> > index 3ed0e4ea7f5c..b377f18aed45 100644
> > --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> > +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> > @@ -2497,11 +2497,11 @@ vchiq_instance_get_use_count(struct vchiq_instance *instance)
> >         int use_count = 0, i;
> >
> >         i = 0;
> > -       while ((service = next_service_by_instance(instance->state,
> > -               instance, &i))) {
> > +       rcu_read_lock();
> > +       while ((service = __next_service_by_instance(instance->state,
> > +                                                    instance, &i)))
> >                 use_count += service->service_use_count;
> > -               unlock_service(service);
> > -       }
> > +       rcu_read_unlock();
> >         return use_count;
> >  }
> >
> > @@ -2524,11 +2524,11 @@ vchiq_instance_set_trace(struct vchiq_instance *instance, int trace)
> >         int i;
> >
> >         i = 0;
> > -       while ((service = next_service_by_instance(instance->state,
> > -               instance, &i))) {
> > +       rcu_read_lock();
> > +       while ((service = __next_service_by_instance(instance->state,
> > +                                                    instance, &i)))
> >                 service->trace = trace;
> > -               unlock_service(service);
> > -       }
> > +       rcu_read_unlock();
> >         instance->trace = (trace != 0);
> >  }
> >
> > diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
> > index 65270a5b29db..d7d7f4d9d57f 100644
> > --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
> > +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
> > @@ -222,28 +222,42 @@ find_closed_service_for_instance(struct vchiq_instance *instance,
> >  }
> >
> >  struct vchiq_service *
> > -next_service_by_instance(struct vchiq_state *state, struct vchiq_instance *instance,
> > -                        int *pidx)
> > +__next_service_by_instance(struct vchiq_state *state,
> > +                          struct vchiq_instance *instance,
> > +                          int *pidx)
> >  {
> >         struct vchiq_service *service = NULL;
> >         int idx = *pidx;
> >
> > -       rcu_read_lock();
> >         while (idx < state->unused_service) {
> >                 struct vchiq_service *srv;
> >
> >                 srv = rcu_dereference(state->services[idx++]);
> >                 if (srv && srv->srvstate != VCHIQ_SRVSTATE_FREE &&
> > -                   srv->instance == instance &&
> > -                   kref_get_unless_zero(&srv->ref_count)) {
> > -                       service = rcu_pointer_handoff(srv);
> > +                   srv->instance == instance) {
> > +                       service = srv;
> >                         break;
> >                 }
> >         }
> > -       rcu_read_unlock();
> >
> >         *pidx = idx;
> > +       return service;
> > +}
> >
> > +struct vchiq_service *
> > +next_service_by_instance(struct vchiq_state *state,
> > +                        struct vchiq_instance *instance,
> > +                        int *pidx)
> > +{
> > +       struct vchiq_service *service;
> > +
> > +       rcu_read_lock();
> > +       service = __next_service_by_instance(state, instance, pidx);
> > +       if (service && kref_get_unless_zero(&service->ref_count))
> > +               service = rcu_pointer_handoff(service);
> > +       else
> > +               service = NULL;
> > +       rcu_read_unlock();
> >         return service;
> >  }
> 
> ahh wait, this one is buggy..... If kref_get_unless_zero fails then we
> want to keep looking
> for the next one. Greg, since you already applied this one, would it
> be best for me to send
> a patch on top of this or send a V2?

On top is easiest for me, I don't like to revert things :)

thanks,

greg k-h

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
