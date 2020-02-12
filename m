Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00D4A15B2DE
	for <lists+linux-rpi-kernel@lfdr.de>; Wed, 12 Feb 2020 22:37:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WkILFtqAzpF7wCKenx/4I/COQEULkE86BdzQkhjqODo=; b=UQn+goLhNKP9bv
	GVqjR0rXZgWbn1LehQ3vLjLuu6n6iRmeFHvytyYF7u+LZ3Wty5PwJJ2LAHVJuiWwkaG4LmjOh1d5H
	pwfb0oJeNNEWsfeUh+V5VEbIH5EZzZWLEpTGFj6HzVQjKeDJJ7PZjTB2niBAyMGmI5HbuPU1MsP3z
	gDhDhoF4xePbrgBU8Scn3Uk+eWo9AqJOn/ny9uAw4JnxDyiwKkZ6wfDd/55kuGLn8xTQJqbIKTLuN
	4AfAAji4C9tqbrXPUpuHRIALxy4VLGhfElrDuaAtZqw30grk7iJEjFGi6aSbJl5uVbOhjWzPSnsYv
	W67RASVJGfYzVzhiKqYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1zhH-0001WI-NQ; Wed, 12 Feb 2020 21:37:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1zhD-0001Vq-8V
 for linux-rpi-kernel@lists.infradead.org; Wed, 12 Feb 2020 21:37:26 +0000
Received: from localhost (unknown [104.132.1.104])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 592B22173E;
 Wed, 12 Feb 2020 21:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581543442;
 bh=bVlWV8eGS8M90FJHliE7E85UDJ7NxAMqD7R1Pcxd73w=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=te3N7h04GS+OBPzGStJc5x3oMTzRI44umrFU5FWk2EZjMMnedeHMYdV9r6YTDM3EV
 L0hnUhBBi5zpVsdtiugfDQ1WYbmiXH1244F3gbVkfLaqMEIdjI51pbDVX0CxvpIPkO
 1Xw9bsDM8XDceA15Wbgzxh5BlFhzor/uYxN8OxBk=
Date: Wed, 12 Feb 2020 13:37:21 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
Subject: Re: [PATCH 2/5] staging: vc04_services: remove unneeded parentheses
Message-ID: <20200212213721.GA2297906@kroah.com>
References: <cover.1581532523.git.marcgonzalez@google.com>
 <41511abf64f73af62f21f8e0c7457edc289af905.1581532523.git.marcgonzalez@google.com>
 <CAKvFj6obuHJgt1_ePLJ+Mba4k8RY2WLhutcsfNJk9ZFk4QcnPg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKvFj6obuHJgt1_ePLJ+Mba4k8RY2WLhutcsfNJk9ZFk4QcnPg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_133724_434347_D10F33F7 
X-CRM114-Status: GOOD (  16.49  )
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

On Wed, Feb 12, 2020 at 01:51:15PM -0500, Marcelo Diop-Gonzalez wrote:
> On Wed, Feb 12, 2020 at 1:43 PM Marcelo Diop-Gonzalez
> <marcgonzalez@google.com> wrote:
> >
> > there are extra parentheses around many conditional statements
> > that make things a little harder to read
> >
> > Signed-off-by: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
> > ---
> >  .../interface/vchiq_arm/vchiq_core.c          | 36 +++++++++----------
> >  1 file changed, 18 insertions(+), 18 deletions(-)
> >
> > diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
> > index 4f8b59deaec9..72bfa0f73958 100644
> > --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
> > +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
> > @@ -138,8 +138,8 @@ find_service_by_handle(unsigned int handle)
> >
> >         spin_lock(&service_spinlock);
> >         service = handle_to_service(handle);
> > -       if (service && (service->srvstate != VCHIQ_SRVSTATE_FREE) &&
> > -               (service->handle == handle)) {
> > +       if (service && service->srvstate != VCHIQ_SRVSTATE_FREE &&
> > +           service->handle == handle) {
> >                 WARN_ON(service->ref_count == 0);
> >                 service->ref_count++;
> >         } else
> > @@ -161,7 +161,7 @@ find_service_by_port(struct vchiq_state *state, int localport)
> >         if ((unsigned int)localport <= VCHIQ_PORT_MAX) {
> >                 spin_lock(&service_spinlock);
> >                 service = state->services[localport];
> > -               if (service && (service->srvstate != VCHIQ_SRVSTATE_FREE)) {
> > +               if (service && service->srvstate != VCHIQ_SRVSTATE_FREE) {
> >                         WARN_ON(service->ref_count == 0);
> >                         service->ref_count++;
> >                 } else
> > @@ -184,9 +184,9 @@ find_service_for_instance(struct vchiq_instance *instance,
> >
> >         spin_lock(&service_spinlock);
> >         service = handle_to_service(handle);
> > -       if (service && (service->srvstate != VCHIQ_SRVSTATE_FREE) &&
> > -               (service->handle == handle) &&
> > -               (service->instance == instance)) {
> > +       if (service && service->srvstate != VCHIQ_SRVSTATE_FREE &&
> > +           service->handle == handle &&
> > +           service->instance == instance) {
> >                 WARN_ON(service->ref_count == 0);
> >                 service->ref_count++;
> >         } else
> > @@ -209,10 +209,10 @@ find_closed_service_for_instance(struct vchiq_instance *instance,
> >         spin_lock(&service_spinlock);
> >         service = handle_to_service(handle);
> >         if (service &&
> > -               ((service->srvstate == VCHIQ_SRVSTATE_FREE) ||
> > -                (service->srvstate == VCHIQ_SRVSTATE_CLOSED)) &&
> > -               (service->handle == handle) &&
> > -               (service->instance == instance)) {
> > +           (service->srvstate == VCHIQ_SRVSTATE_FREE ||
> > +            service->srvstate == VCHIQ_SRVSTATE_CLOSED) &&
> > +           service->handle == handle &&
> > +           service->instance == instance) {
> >                 WARN_ON(service->ref_count == 0);
> >                 service->ref_count++;
> >         } else
> > @@ -237,8 +237,8 @@ next_service_by_instance(struct vchiq_state *state, struct vchiq_instance *insta
> >         while (idx < state->unused_service) {
> >                 struct vchiq_service *srv = state->services[idx++];
> >
> > -               if (srv && (srv->srvstate != VCHIQ_SRVSTATE_FREE) &&
> > -                       (srv->instance == instance)) {
> > +               if (srv && srv->srvstate != VCHIQ_SRVSTATE_FREE &&
> > +                   srv->instance == instance) {
> >                         service = srv;
> >                         WARN_ON(service->ref_count == 0);
> >                         service->ref_count++;
> > @@ -464,10 +464,10 @@ get_listening_service(struct vchiq_state *state, int fourcc)
> >                 struct vchiq_service *service = state->services[i];
> >
> >                 if (service &&
> > -                       (service->public_fourcc == fourcc) &&
> > -                       ((service->srvstate == VCHIQ_SRVSTATE_LISTENING) ||
> > -                       ((service->srvstate == VCHIQ_SRVSTATE_OPEN) &&
> > -                       (service->remoteport == VCHIQ_PORT_FREE)))) {
> > +                   service->public_fourcc == fourcc &&
> > +                   (service->srvstate == VCHIQ_SRVSTATE_LISTENING ||
> > +                    (service->srvstate == VCHIQ_SRVSTATE_OPEN &&
> > +                     service->remoteport == VCHIQ_PORT_FREE))) {
> >                         lock_service(service);
> >                         return service;
> >                 }
> > @@ -485,8 +485,8 @@ get_connected_service(struct vchiq_state *state, unsigned int port)
> >         for (i = 0; i < state->unused_service; i++) {
> >                 struct vchiq_service *service = state->services[i];
> >
> > -               if (service && (service->srvstate == VCHIQ_SRVSTATE_OPEN)
> > -                       && (service->remoteport == port)) {
> > +               if (service && service->srvstate == VCHIQ_SRVSTATE_OPEN &&
> > +                   service->remoteport == port) {
> >                         lock_service(service);
> >                         return service;
> >                 }
> > --
> > 2.25.0.225.g125e21ebc7-goog
> >
> 
> I have to admit that this one trades one checkpatch warning for
> another.... (line too long). It seemed like it looks better this way,
> and getting rid of the long lines would have meant refactoring more
> stuff, but if its a problem I can redo this one

No worries, I'll take it :)

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
