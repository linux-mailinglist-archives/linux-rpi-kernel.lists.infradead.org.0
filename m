Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D42015B029
	for <lists+linux-rpi-kernel@lfdr.de>; Wed, 12 Feb 2020 19:51:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X5CQ6jrFkCwXSc0rtqOu7cWHMOiIVSvKLDHDcOoWnsw=; b=XnHNOJYrx1nStH
	r+dF91u+pfUx3/0TQd3z4SXj4f+cIHB4J5jMzKzKPvL9GcFXuN8TC2YDP2B8FsQ6ixeIRxvnNZzTv
	Daml8wg+1y1Y4joim1Th6zAaYub8f7by2tMzuNetlVEWRWSNAePlVKaGP5GUud81y8Dm7QoCkE+9g
	GTm/8J0IqptJK63+LEVwOOnnPvD1Zr0KAFKMm5hkM+rg4mjHx2qawKSSQoDQWBlZzJK476SXoGLwT
	SsiEACCEwLyQ4bUw6Ej+Y0Z0KCjaobleBLh+WLa3RawzCxHIXZpKq1P/MYijBrI8z1w5EY1+2b6nD
	/4F+NohffUnOM5cQBYzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1x6j-0002Wq-K8; Wed, 12 Feb 2020 18:51:33 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1x6g-0002WV-Pp
 for linux-rpi-kernel@lists.infradead.org; Wed, 12 Feb 2020 18:51:32 +0000
Received: by mail-pj1-x1042.google.com with SMTP id f2so1974619pjq.1
 for <linux-rpi-kernel@lists.infradead.org>;
 Wed, 12 Feb 2020 10:51:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fhG+w73Um4LRFx1y+IQP8p309R6bRu5uLfdD6UwelV0=;
 b=N1XXNwwDuJi2iQrSn7S1fTrbkcTowP8yJzUc4aEqH6J/Gcx4e35g8hmic0On8mFV3e
 WJ1vnNa2xOTFAumo3rUYeJE55S7QjRjzElXdhRG7XgSyyp8FJUX7cRDR0ITC20xqBxdz
 rRqLHA6fmmbgsjOnTCudG3pjdyflzIvPxZDFocdpTqafbSPiS30GWrPmP0o14a2ZCR9V
 /L77PYgI8D2V/LcHhNrXiU1y1yQF2PJ6xlJqhSCRj06oDliVX5I42e+mi4e7t76ITPDX
 EwlXy5ZXLii90d5GKsMqgvO+/egkwSN3gjgYC5CSjlN5AJE9h4SSZ5Q8CJ0qT2FQ/iB3
 Db6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fhG+w73Um4LRFx1y+IQP8p309R6bRu5uLfdD6UwelV0=;
 b=LqBgba5CzLLn82i0RrVBnfKg1QSbrhViZ3/9+DR3dp64Knen8VdEkMLY5TJULiBg0f
 cRLFrvf9sdgh/mP1JPeI8YXBobdSyaZKb9IOtboLuBeoMQH7rHNOxbhWOuyHFiJZuM1H
 4+0TZTs9bjRMgelO5eZJcJebwsFiwmd8uYrN6AWYrJFZytkC6WFNLCgwTcAAbjPMsU0j
 jx8718SEC0hmtcA35Vfa9ffa0vA8ecYOqiBzWmJIWJ/Suy7Hq3KNAjCutX+YA0oEF7uF
 Td6swakaCwwMAQY1tlmSRYqODvj/E7gsyzkV3b4qHO0W4XkBCeOvssJySroIAlfDnUQz
 o13A==
X-Gm-Message-State: APjAAAWoxnDVjMszVO4sPqT1MmuQg+vGIOoFfKCijv58DdQV/CrJH8Ta
 MkFElB0JrLXnMZrYrgsgPd8O1OL3D/TCMsaxSZxecA==
X-Google-Smtp-Source: APXvYqzkUxnHg6CvOHByBeQAqbneX++1ZWXENIJEAVxPur5dnVqS1hanHN6wo+UydZLYl6ASeOWL5RTKG1IKeX3V1Hw=
X-Received: by 2002:a17:90a:348a:: with SMTP id
 p10mr525547pjb.120.1581533487373; 
 Wed, 12 Feb 2020 10:51:27 -0800 (PST)
MIME-Version: 1.0
References: <cover.1581532523.git.marcgonzalez@google.com>
 <41511abf64f73af62f21f8e0c7457edc289af905.1581532523.git.marcgonzalez@google.com>
In-Reply-To: <41511abf64f73af62f21f8e0c7457edc289af905.1581532523.git.marcgonzalez@google.com>
From: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
Date: Wed, 12 Feb 2020 13:51:15 -0500
Message-ID: <CAKvFj6obuHJgt1_ePLJ+Mba4k8RY2WLhutcsfNJk9ZFk4QcnPg@mail.gmail.com>
Subject: Re: [PATCH 2/5] staging: vc04_services: remove unneeded parentheses
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Greg KH <gregkh@linuxfoundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_105130_865094_F8EF8031 
X-CRM114-Status: GOOD (  13.71  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: devel@driverdev.osuosl.org, linux-rpi-kernel@lists.infradead.org,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 12, 2020 at 1:43 PM Marcelo Diop-Gonzalez
<marcgonzalez@google.com> wrote:
>
> there are extra parentheses around many conditional statements
> that make things a little harder to read
>
> Signed-off-by: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
> ---
>  .../interface/vchiq_arm/vchiq_core.c          | 36 +++++++++----------
>  1 file changed, 18 insertions(+), 18 deletions(-)
>
> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
> index 4f8b59deaec9..72bfa0f73958 100644
> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
> @@ -138,8 +138,8 @@ find_service_by_handle(unsigned int handle)
>
>         spin_lock(&service_spinlock);
>         service = handle_to_service(handle);
> -       if (service && (service->srvstate != VCHIQ_SRVSTATE_FREE) &&
> -               (service->handle == handle)) {
> +       if (service && service->srvstate != VCHIQ_SRVSTATE_FREE &&
> +           service->handle == handle) {
>                 WARN_ON(service->ref_count == 0);
>                 service->ref_count++;
>         } else
> @@ -161,7 +161,7 @@ find_service_by_port(struct vchiq_state *state, int localport)
>         if ((unsigned int)localport <= VCHIQ_PORT_MAX) {
>                 spin_lock(&service_spinlock);
>                 service = state->services[localport];
> -               if (service && (service->srvstate != VCHIQ_SRVSTATE_FREE)) {
> +               if (service && service->srvstate != VCHIQ_SRVSTATE_FREE) {
>                         WARN_ON(service->ref_count == 0);
>                         service->ref_count++;
>                 } else
> @@ -184,9 +184,9 @@ find_service_for_instance(struct vchiq_instance *instance,
>
>         spin_lock(&service_spinlock);
>         service = handle_to_service(handle);
> -       if (service && (service->srvstate != VCHIQ_SRVSTATE_FREE) &&
> -               (service->handle == handle) &&
> -               (service->instance == instance)) {
> +       if (service && service->srvstate != VCHIQ_SRVSTATE_FREE &&
> +           service->handle == handle &&
> +           service->instance == instance) {
>                 WARN_ON(service->ref_count == 0);
>                 service->ref_count++;
>         } else
> @@ -209,10 +209,10 @@ find_closed_service_for_instance(struct vchiq_instance *instance,
>         spin_lock(&service_spinlock);
>         service = handle_to_service(handle);
>         if (service &&
> -               ((service->srvstate == VCHIQ_SRVSTATE_FREE) ||
> -                (service->srvstate == VCHIQ_SRVSTATE_CLOSED)) &&
> -               (service->handle == handle) &&
> -               (service->instance == instance)) {
> +           (service->srvstate == VCHIQ_SRVSTATE_FREE ||
> +            service->srvstate == VCHIQ_SRVSTATE_CLOSED) &&
> +           service->handle == handle &&
> +           service->instance == instance) {
>                 WARN_ON(service->ref_count == 0);
>                 service->ref_count++;
>         } else
> @@ -237,8 +237,8 @@ next_service_by_instance(struct vchiq_state *state, struct vchiq_instance *insta
>         while (idx < state->unused_service) {
>                 struct vchiq_service *srv = state->services[idx++];
>
> -               if (srv && (srv->srvstate != VCHIQ_SRVSTATE_FREE) &&
> -                       (srv->instance == instance)) {
> +               if (srv && srv->srvstate != VCHIQ_SRVSTATE_FREE &&
> +                   srv->instance == instance) {
>                         service = srv;
>                         WARN_ON(service->ref_count == 0);
>                         service->ref_count++;
> @@ -464,10 +464,10 @@ get_listening_service(struct vchiq_state *state, int fourcc)
>                 struct vchiq_service *service = state->services[i];
>
>                 if (service &&
> -                       (service->public_fourcc == fourcc) &&
> -                       ((service->srvstate == VCHIQ_SRVSTATE_LISTENING) ||
> -                       ((service->srvstate == VCHIQ_SRVSTATE_OPEN) &&
> -                       (service->remoteport == VCHIQ_PORT_FREE)))) {
> +                   service->public_fourcc == fourcc &&
> +                   (service->srvstate == VCHIQ_SRVSTATE_LISTENING ||
> +                    (service->srvstate == VCHIQ_SRVSTATE_OPEN &&
> +                     service->remoteport == VCHIQ_PORT_FREE))) {
>                         lock_service(service);
>                         return service;
>                 }
> @@ -485,8 +485,8 @@ get_connected_service(struct vchiq_state *state, unsigned int port)
>         for (i = 0; i < state->unused_service; i++) {
>                 struct vchiq_service *service = state->services[i];
>
> -               if (service && (service->srvstate == VCHIQ_SRVSTATE_OPEN)
> -                       && (service->remoteport == port)) {
> +               if (service && service->srvstate == VCHIQ_SRVSTATE_OPEN &&
> +                   service->remoteport == port) {
>                         lock_service(service);
>                         return service;
>                 }
> --
> 2.25.0.225.g125e21ebc7-goog
>

I have to admit that this one trades one checkpatch warning for
another.... (line too long). It seemed like it looks better this way,
and getting rid of the long lines would have meant refactoring more
stuff, but if its a problem I can redo this one

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
