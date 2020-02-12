Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFCB215B4D3
	for <lists+linux-rpi-kernel@lfdr.de>; Thu, 13 Feb 2020 00:34:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ji5vXxABrnZkyxi22DhzyBdEJBjlsys0aEdxE/VP998=; b=oIzPZ29hSKdlX5
	JxE09kEVWzZnBaMg7cb4i7tb211leuGQaoFr13I0LHFg1fxZkkBesZIJtX/oQHO3t7BodC525nG6R
	GJXfBfr0BWn8NJgwCpxWJSB8cOaPXpThv3sTTcYAXJz4qQadroR+TuHn2cwyxxJwva5wsItp470tT
	jWITSzcZAOmZPnsCziMBepqvs7dtr5nVi8NWKAbON/WpirV8qoldWBEPZtVJFBXM+jiUWZ2/R1lCA
	+8NAwreixds29/Fcbdjs4N5z0iZY+jv4CWDYmOKczAdKps2fMWpfYtshcFwjfKMCgEPaGXo3VS1Ve
	iQyaFLaR7Q3pBdYKukQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j21WL-0003tc-K4; Wed, 12 Feb 2020 23:34:17 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j21WH-0003t5-V9
 for linux-rpi-kernel@lists.infradead.org; Wed, 12 Feb 2020 23:34:15 +0000
Received: by mail-pl1-x643.google.com with SMTP id t6so1548333plj.5
 for <linux-rpi-kernel@lists.infradead.org>;
 Wed, 12 Feb 2020 15:34:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TGLLK5q+LOFxWirH65p7n0u9xV8nMHWKM6VYmyOksas=;
 b=OvG3JfyCqAVxEhppX+vtBDujPiisJTRR7nuyjr+1wRQml58WPOpR9YTr7ij+7furAK
 rN5u/Zshmep6PQHdwdNT6ABlNhiIwpjFEtzkynLmPLMvKS8dwX7EZ8VOyCthCICwnnvj
 pEPJMgi54fBO99E2FGSuN9nHUidk2LyJyKJojHKRtxlzKoXwb4f1JjPJxTUhrJl1Y/1i
 9KcqmSOohmmoDKtUyCQPcRIuOvZGUTeJw9ogth4YiI72IUrRWF/eHc/2OLFaV5I6DSgG
 QGA/vkH7aoPW/ukrWwJbqPOp4Lh77F/SpAEEtzQcgvaIQIo1tCSWZu94svOzXcnFuAc2
 2AZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TGLLK5q+LOFxWirH65p7n0u9xV8nMHWKM6VYmyOksas=;
 b=iw/aFKh3KkGz/56/vaNHt0n1R6IzBBQFffDRVMPxAhf7d8QZfr6apYxYJet6D5Pu6+
 aTilk08eEu7A78qTN1IuBqFtbEw2AIOgbWdLsIvEWwCEbZpBGRe1At96ljngOCvjfBdv
 67hETLCFKxx+V4bCijMKdCCP3IBlwutvWS1E5TwsqrxK2xJkapS2J1qQC6+kc1z5wD4o
 1YY7w0wi6/jQ+p7YkMeaOgFOuZpGrwPEChdueBTkd+5/NGH8cvNYLot+IQm8Cd+G4nYp
 T/KClCBYaxx0ABD+gOINqucxEnHB313JcOWf18uBm2AuL/LbTrQQiijvJABjVQUvjpc5
 Bt9w==
X-Gm-Message-State: APjAAAXoYlVCHP0XWqOKtEaHz9bI5IULR4frwlhtRF4mHlNTvWz1qPn7
 vJGRb7pqR1TpAFuvLGq5v3N20STpRRiA6FGC9i9L5g==
X-Google-Smtp-Source: APXvYqxZm/OA+PfXAs+SWsvaX0D53u19ytUYYspKhXrfnbrEFzIqpZPlgGNtBolh+ZabAPsi/XhuT0ZRl7t4fnEclYI=
X-Received: by 2002:a17:90a:8806:: with SMTP id
 s6mr1572209pjn.141.1581550452575; 
 Wed, 12 Feb 2020 15:34:12 -0800 (PST)
MIME-Version: 1.0
References: <cover.1581532523.git.marcgonzalez@google.com>
 <3bf6f1ec6ace64d7072025505e165b8dd18b25ca.1581532523.git.marcgonzalez@google.com>
 <20200212214002.GB2297906@kroah.com>
In-Reply-To: <20200212214002.GB2297906@kroah.com>
From: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
Date: Wed, 12 Feb 2020 18:34:00 -0500
Message-ID: <CAKvFj6qXPzmQTBgvQaHSh2m25HDi14Rbgm4rVD2ySRaKvYDgpw@mail.gmail.com>
Subject: Re: [PATCH 4/5] staging: vc04_services: use kref + RCU to reference
 count services
To: Greg KH <gregkh@linuxfoundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_153414_030481_D0E7E9C2 
X-CRM114-Status: GOOD (  25.70  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devel@driverdev.osuosl.org, Dan Carpenter <dan.carpenter@oracle.com>,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 12, 2020 at 4:40 PM Greg KH <gregkh@linuxfoundation.org> wrote:
>
> On Wed, Feb 12, 2020 at 01:43:32PM -0500, Marcelo Diop-Gonzalez wrote:
> > Currently reference counts are implemented by locking service_spinlock
> > and then incrementing the service's ->ref_count field, calling
> > kfree() when the last reference has been dropped. But at the same
> > time, there's code in multiple places that dereferences pointers
> > to services without having a reference, so there could be a race there.
> >
> > It should be possible to avoid taking any lock in unlock_service()
> > or service_release() because we are setting a single array element
> > to NULL, and on service creation, a mutex is locked before looking
> > for a NULL spot to put the new service in.
> >
> > Using a struct kref and RCU-delaying the freeing of services fixes
> > this race condition while still making it possible to skip
> > grabbing a reference in many places. Also it avoids the need to
> > acquire a single spinlock when e.g. taking a reference on
> > state->services[i] when somebody else is in the middle of taking
> > a reference on state->services[j].
> >
> > Signed-off-by: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
> > ---
> >  .../interface/vchiq_arm/vchiq_arm.c           |  25 +-
> >  .../interface/vchiq_arm/vchiq_core.c          | 222 +++++++++---------
> >  .../interface/vchiq_arm/vchiq_core.h          |  12 +-
> >  3 files changed, 140 insertions(+), 119 deletions(-)
> >
> > diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> > index c456ced431af..3ed0e4ea7f5c 100644
> > --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> > +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> > @@ -22,6 +22,7 @@
> >  #include <linux/platform_device.h>
> >  #include <linux/compat.h>
> >  #include <linux/dma-mapping.h>
> > +#include <linux/rcupdate.h>
> >  #include <soc/bcm2835/raspberrypi-firmware.h>
> >
> >  #include "vchiq_core.h"
> > @@ -2096,10 +2097,12 @@ int vchiq_dump_platform_instances(void *dump_context)
> >       /* There is no list of instances, so instead scan all services,
> >               marking those that have been dumped. */
> >
> > +     rcu_read_lock();
> >       for (i = 0; i < state->unused_service; i++) {
> > -             struct vchiq_service *service = state->services[i];
> > +             struct vchiq_service *service;
> >               struct vchiq_instance *instance;
> >
> > +             service = rcu_dereference(state->services[i]);
> >               if (!service || service->base.callback != service_callback)
> >                       continue;
> >
> > @@ -2107,18 +2110,26 @@ int vchiq_dump_platform_instances(void *dump_context)
> >               if (instance)
> >                       instance->mark = 0;
> >       }
> > +     rcu_read_unlock();
> >
> >       for (i = 0; i < state->unused_service; i++) {
> > -             struct vchiq_service *service = state->services[i];
> > +             struct vchiq_service *service;
> >               struct vchiq_instance *instance;
> >               int err;
> >
> > -             if (!service || service->base.callback != service_callback)
> > +             rcu_read_lock();
> > +             service = rcu_dereference(state->services[i]);
> > +             if (!service || service->base.callback != service_callback) {
> > +                     rcu_read_unlock();
> >                       continue;
> > +             }
> >
> >               instance = service->instance;
> > -             if (!instance || instance->mark)
> > +             if (!instance || instance->mark) {
> > +                     rcu_read_unlock();
> >                       continue;
> > +             }
> > +             rcu_read_unlock();
> >
> >               len = snprintf(buf, sizeof(buf),
> >                              "Instance %pK: pid %d,%s completions %d/%d",
> > @@ -2128,7 +2139,6 @@ int vchiq_dump_platform_instances(void *dump_context)
> >                              instance->completion_insert -
> >                              instance->completion_remove,
> >                              MAX_COMPLETIONS);
> > -
> >               err = vchiq_dump(dump_context, buf, len + 1);
> >               if (err)
> >                       return err;
> > @@ -2585,8 +2595,10 @@ vchiq_dump_service_use_state(struct vchiq_state *state)
> >       if (active_services > MAX_SERVICES)
> >               only_nonzero = 1;
> >
> > +     rcu_read_lock();
> >       for (i = 0; i < active_services; i++) {
> > -             struct vchiq_service *service_ptr = state->services[i];
> > +             struct vchiq_service *service_ptr =
> > +                     rcu_dereference(state->services[i]);
> >
> >               if (!service_ptr)
> >                       continue;
> > @@ -2604,6 +2616,7 @@ vchiq_dump_service_use_state(struct vchiq_state *state)
> >               if (found >= MAX_SERVICES)
> >                       break;
> >       }
> > +     rcu_read_unlock();
> >
> >       read_unlock_bh(&arm_state->susp_res_lock);
> >
> > diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
> > index b2d9013b7f79..65270a5b29db 100644
> > --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
> > +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
> > @@ -1,6 +1,9 @@
> >  // SPDX-License-Identifier: GPL-2.0 OR BSD-3-Clause
> >  /* Copyright (c) 2010-2012 Broadcom. All rights reserved. */
> >
> > +#include <linux/kref.h>
> > +#include <linux/rcupdate.h>
> > +
> >  #include "vchiq_core.h"
> >
> >  #define VCHIQ_SLOT_HANDLER_STACK 8192
> > @@ -54,7 +57,6 @@ int vchiq_core_log_level = VCHIQ_LOG_DEFAULT;
> >  int vchiq_core_msg_log_level = VCHIQ_LOG_DEFAULT;
> >  int vchiq_sync_log_level = VCHIQ_LOG_DEFAULT;
> >
> > -static DEFINE_SPINLOCK(service_spinlock);
> >  DEFINE_SPINLOCK(bulk_waiter_spinlock);
> >  static DEFINE_SPINLOCK(quota_spinlock);
> >
> > @@ -136,44 +138,41 @@ find_service_by_handle(unsigned int handle)
> >  {
> >       struct vchiq_service *service;
> >
> > -     spin_lock(&service_spinlock);
> > +     rcu_read_lock();
> >       service = handle_to_service(handle);
> >       if (service && service->srvstate != VCHIQ_SRVSTATE_FREE &&
> > -         service->handle == handle) {
> > -             WARN_ON(service->ref_count == 0);
> > -             service->ref_count++;
> > -     } else
> > -             service = NULL;
> > -     spin_unlock(&service_spinlock);
> > -
> > -     if (!service)
> > -             vchiq_log_info(vchiq_core_log_level,
> > -                     "Invalid service handle 0x%x", handle);
> > -
> > -     return service;
> > +         service->handle == handle &&
> > +         kref_get_unless_zero(&service->ref_count)) {
> > +             service = rcu_pointer_handoff(service);
> > +             rcu_read_unlock();
> > +             return service;
> > +     }
> > +     rcu_read_unlock();
> > +     vchiq_log_info(vchiq_core_log_level,
> > +                    "Invalid service handle 0x%x", handle);
> > +     return NULL;
> >  }
> >
> >  struct vchiq_service *
> >  find_service_by_port(struct vchiq_state *state, int localport)
> >  {
> > -     struct vchiq_service *service = NULL;
> >
> >       if ((unsigned int)localport <= VCHIQ_PORT_MAX) {
> > -             spin_lock(&service_spinlock);
> > -             service = state->services[localport];
> > -             if (service && service->srvstate != VCHIQ_SRVSTATE_FREE) {
> > -                     WARN_ON(service->ref_count == 0);
> > -                     service->ref_count++;
> > -             } else
> > -                     service = NULL;
> > -             spin_unlock(&service_spinlock);
> > -     }
> > -
> > -     if (!service)
> > -             vchiq_log_info(vchiq_core_log_level,
> > -                     "Invalid port %d", localport);
> > +             struct vchiq_service *service;
> >
> > -     return service;
> > +             rcu_read_lock();
> > +             service = rcu_dereference(state->services[localport]);
> > +             if (service && service->srvstate != VCHIQ_SRVSTATE_FREE &&
> > +                 kref_get_unless_zero(&service->ref_count)) {
> > +                     service = rcu_pointer_handoff(service);
> > +                     rcu_read_unlock();
> > +                     return service;
> > +             }
> > +             rcu_read_unlock();
> > +     }
> > +     vchiq_log_info(vchiq_core_log_level,
> > +                    "Invalid port %d", localport);
> > +     return NULL;
> >  }
> >
> >  struct vchiq_service *
> > @@ -182,22 +181,20 @@ find_service_for_instance(struct vchiq_instance *instance,
> >  {
> >       struct vchiq_service *service;
> >
> > -     spin_lock(&service_spinlock);
> > +     rcu_read_lock();
> >       service = handle_to_service(handle);
> >       if (service && service->srvstate != VCHIQ_SRVSTATE_FREE &&
> >           service->handle == handle &&
> > -         service->instance == instance) {
> > -             WARN_ON(service->ref_count == 0);
> > -             service->ref_count++;
> > -     } else
> > -             service = NULL;
> > -     spin_unlock(&service_spinlock);
> > -
> > -     if (!service)
> > -             vchiq_log_info(vchiq_core_log_level,
> > -                     "Invalid service handle 0x%x", handle);
> > -
> > -     return service;
> > +         service->instance == instance &&
> > +         kref_get_unless_zero(&service->ref_count)) {
> > +             service = rcu_pointer_handoff(service);
> > +             rcu_read_unlock();
> > +             return service;
> > +     }
> > +     rcu_read_unlock();
> > +     vchiq_log_info(vchiq_core_log_level,
> > +                    "Invalid service handle 0x%x", handle);
> > +     return NULL;
> >  }
> >
> >  struct vchiq_service *
> > @@ -206,23 +203,21 @@ find_closed_service_for_instance(struct vchiq_instance *instance,
> >  {
> >       struct vchiq_service *service;
> >
> > -     spin_lock(&service_spinlock);
> > +     rcu_read_lock();
> >       service = handle_to_service(handle);
> >       if (service &&
> >           (service->srvstate == VCHIQ_SRVSTATE_FREE ||
> >            service->srvstate == VCHIQ_SRVSTATE_CLOSED) &&
> >           service->handle == handle &&
> > -         service->instance == instance) {
> > -             WARN_ON(service->ref_count == 0);
> > -             service->ref_count++;
> > -     } else
> > -             service = NULL;
> > -     spin_unlock(&service_spinlock);
> > -
> > -     if (!service)
> > -             vchiq_log_info(vchiq_core_log_level,
> > -                     "Invalid service handle 0x%x", handle);
> > -
> > +         service->instance == instance &&
> > +         kref_get_unless_zero(&service->ref_count)) {
> > +             service = rcu_pointer_handoff(service);
> > +             rcu_read_unlock();
> > +             return service;
> > +     }
> > +     rcu_read_unlock();
> > +     vchiq_log_info(vchiq_core_log_level,
> > +                    "Invalid service handle 0x%x", handle);
> >       return service;
> >  }
> >
> > @@ -233,19 +228,19 @@ next_service_by_instance(struct vchiq_state *state, struct vchiq_instance *insta
> >       struct vchiq_service *service = NULL;
> >       int idx = *pidx;
> >
> > -     spin_lock(&service_spinlock);
> > +     rcu_read_lock();
> >       while (idx < state->unused_service) {
> > -             struct vchiq_service *srv = state->services[idx++];
> > +             struct vchiq_service *srv;
> >
> > +             srv = rcu_dereference(state->services[idx++]);
> >               if (srv && srv->srvstate != VCHIQ_SRVSTATE_FREE &&
> > -                 srv->instance == instance) {
> > -                     service = srv;
> > -                     WARN_ON(service->ref_count == 0);
> > -                     service->ref_count++;
> > +                 srv->instance == instance &&
> > +                 kref_get_unless_zero(&srv->ref_count)) {
> > +                     service = rcu_pointer_handoff(srv);
> >                       break;
> >               }
> >       }
> > -     spin_unlock(&service_spinlock);
> > +     rcu_read_unlock();
> >
> >       *pidx = idx;
> >
> > @@ -255,43 +250,34 @@ next_service_by_instance(struct vchiq_state *state, struct vchiq_instance *insta
> >  void
> >  lock_service(struct vchiq_service *service)
> >  {
> > -     spin_lock(&service_spinlock);
> > -     WARN_ON(!service);
> > -     if (service) {
> > -             WARN_ON(service->ref_count == 0);
> > -             service->ref_count++;
> > +     if (!service) {
> > +             WARN(1, "%s service is NULL\n", __func__);
> > +             return;
> >       }
> > -     spin_unlock(&service_spinlock);
> > +     kref_get(&service->ref_count);
> > +}
> > +
> > +static void service_release(struct kref *kref)
> > +{
> > +     struct vchiq_service *service =
> > +             container_of(kref, struct vchiq_service, ref_count);
> > +     struct vchiq_state *state = service->state;
> > +
> > +     WARN_ON(service->srvstate != VCHIQ_SRVSTATE_FREE);
> > +     rcu_assign_pointer(state->services[service->localport], NULL);
> > +     if (service->userdata_term)
> > +             service->userdata_term(service->base.userdata);
> > +     kfree_rcu(service, rcu);
> >  }
>
> I think that's the first time I've seen krefs used with rcu.
>
> It looks sane at first glance, but it's a lot of tricky changes, so I'll
> assume you tested this and go merge it to see what breaks :)

Sounds good, thanks! hopefully it works :)

>
> thanks for doing this,
>
> greg k-h

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
