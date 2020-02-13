Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AED1D15C914
	for <lists+linux-rpi-kernel@lfdr.de>; Thu, 13 Feb 2020 18:03:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VoAi/gs7btqlUyQvTxidvYLdL/esSoj3SfvBoPFJ5Js=; b=P8Ginm9wnssm/e
	OxPLnnvG3adJQ6nfCxxL/gxHKoWxLqhV2Xtd3PPv4T47vHOaKIN9nbMKOqSciB+SucTQwejjY+it+
	z08RECLBANgUmD4WjOTKKu3LjT8jWyD654NHcuHET56Dy//W0nA/X7Ohr1Ev3Pmjta7vX3X3na5xn
	wPQyUzjHple8WsVF4UQAXL+AfjEh0qufiEF9AntaH5xSXJj5nqVxKoZKzixV4puj3j9lBWYQU6BU+
	p6467UoVvRN+M4sVMMsETsFbQSanAdZfzTT+MGgaZPbtg549T+mtcX8AZ3EWlxDi9SZZASp6vvnmd
	hg0Ue0aQc5B/yTleMP+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2Hu0-0004j2-P3; Thu, 13 Feb 2020 17:03:48 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2Hty-0004iY-B7
 for linux-rpi-kernel@lists.infradead.org; Thu, 13 Feb 2020 17:03:47 +0000
Received: by mail-pg1-x544.google.com with SMTP id u12so3056351pgb.10
 for <linux-rpi-kernel@lists.infradead.org>;
 Thu, 13 Feb 2020 09:03:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=V1Jz7DQCub4NFVcIsjUqfykk1pSEwxOhi09WkIkiCQ4=;
 b=SrfTq0ph5CTWFUk8fSFDvM236pkVQ/TlXToHwBkv3e14+HB1WVURZ1kjTXR007lrNB
 Bm8VbK0+LvGDHUGGqohoYhLAdc9geg+5q+1Sjb+vNrNCV5SbMCZSbXET3idTixeai/yO
 Lg4GCbvZg0QsJl/aZkY2TbPvRQ4jZ6hnbaWPPjtbsm5ULWf2Xg9+wv4sIKvVXIrGLrN8
 Zc5FUWKQlQuqsgsngd32HU4NoUStPCJkxEHpQD+QiBtEZreMayvuiDvKcaL2ZyO2Ox48
 E+NE5EKAMDSEOitcgLwXsmbAvh+C7hb/Lruy0f4gHLq5Z3ChNWPYfXhYfgA4rPPtjbtN
 UNPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=V1Jz7DQCub4NFVcIsjUqfykk1pSEwxOhi09WkIkiCQ4=;
 b=IAwNaa2vrlWoP8pAf2Xka2XNUt3TcwytG+jC+gb2hTfaCkWyKsXE+RR13YtQm4Iwqh
 onVUL0add18vVlRbyg1aSbRyqvQaOeNyZhVu2zlrwHKKkZVmok1PadGe+6aW2k+aVVY4
 rgW6/9zaG1R3Zn46Sq+6IhYfS233ufYIQwmLVzS5b95K0bhcTrdf3VTMB6uv1zDbR2WO
 H3U8WAHNlGzN1hGCFa9pzf5ksBY0IBtOFbONn10SIK2ofSRi5Kj9/XaADEw80jcdWNBW
 KZrf2Q6aKOmxzDAFpgC3Yd6erUfl1zNXSYC++OezMpOWWSB5A8ua/xoXZsLH+lGVBpuf
 ciTw==
X-Gm-Message-State: APjAAAUwZOYXABvzGNw6ZMY1SBjm6z2SOygPHEgOMY20fG3wOc3DRuFK
 pkVNi3Z/r/UNf2WtXd75yHG5iTSMsl6RWznjHk3kyg==
X-Google-Smtp-Source: APXvYqybG45UxWGVbIyD7iFrzFkMCFDb/shIn5BQDCuI2ZfEh7nMdcRf22IAxvR0h/jHf4hQ2tl+nnm+wuksulQB2is=
X-Received: by 2002:a63:7744:: with SMTP id s65mr18674754pgc.312.1581613423973; 
 Thu, 13 Feb 2020 09:03:43 -0800 (PST)
MIME-Version: 1.0
References: <cover.1581532523.git.marcgonzalez@google.com>
 <ac6186ac888f1acf489b5b504efcba8b0d6a8b25.1581532523.git.marcgonzalez@google.com>
In-Reply-To: <ac6186ac888f1acf489b5b504efcba8b0d6a8b25.1581532523.git.marcgonzalez@google.com>
From: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
Date: Thu, 13 Feb 2020 12:03:32 -0500
Message-ID: <CAKvFj6q9d-Txfe9fj8tfpT9+Ea24qKd+6Jno-XRikgixqghCYw@mail.gmail.com>
Subject: Re: [PATCH 5/5] staging: vc04_services: don't increment service
 refcount when it's not needed
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Greg KH <gregkh@linuxfoundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_090346_406071_06821AD9 
X-CRM114-Status: GOOD (  17.98  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
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
Cc: devel@driverdev.osuosl.org, linux-rpi-kernel@lists.infradead.org,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 12, 2020 at 1:43 PM Marcelo Diop-Gonzalez
<marcgonzalez@google.com> wrote:
>
> There are a few places where a service's reference count is incremented,
> something quick is done, and the refcount is dropped. This can be made
> a little simpler/faster by not grabbing a reference in these cases.
>
> Signed-off-by: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
> ---
>  .../interface/vchiq_arm/vchiq_arm.c           | 16 ++++-----
>  .../interface/vchiq_arm/vchiq_core.c          | 36 +++++++++++++------
>  .../interface/vchiq_arm/vchiq_core.h          |  8 ++++-
>  3 files changed, 40 insertions(+), 20 deletions(-)
>
> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> index 3ed0e4ea7f5c..b377f18aed45 100644
> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> @@ -2497,11 +2497,11 @@ vchiq_instance_get_use_count(struct vchiq_instance *instance)
>         int use_count = 0, i;
>
>         i = 0;
> -       while ((service = next_service_by_instance(instance->state,
> -               instance, &i))) {
> +       rcu_read_lock();
> +       while ((service = __next_service_by_instance(instance->state,
> +                                                    instance, &i)))
>                 use_count += service->service_use_count;
> -               unlock_service(service);
> -       }
> +       rcu_read_unlock();
>         return use_count;
>  }
>
> @@ -2524,11 +2524,11 @@ vchiq_instance_set_trace(struct vchiq_instance *instance, int trace)
>         int i;
>
>         i = 0;
> -       while ((service = next_service_by_instance(instance->state,
> -               instance, &i))) {
> +       rcu_read_lock();
> +       while ((service = __next_service_by_instance(instance->state,
> +                                                    instance, &i)))
>                 service->trace = trace;
> -               unlock_service(service);
> -       }
> +       rcu_read_unlock();
>         instance->trace = (trace != 0);
>  }
>
> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
> index 65270a5b29db..d7d7f4d9d57f 100644
> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
> @@ -222,28 +222,42 @@ find_closed_service_for_instance(struct vchiq_instance *instance,
>  }
>
>  struct vchiq_service *
> -next_service_by_instance(struct vchiq_state *state, struct vchiq_instance *instance,
> -                        int *pidx)
> +__next_service_by_instance(struct vchiq_state *state,
> +                          struct vchiq_instance *instance,
> +                          int *pidx)
>  {
>         struct vchiq_service *service = NULL;
>         int idx = *pidx;
>
> -       rcu_read_lock();
>         while (idx < state->unused_service) {
>                 struct vchiq_service *srv;
>
>                 srv = rcu_dereference(state->services[idx++]);
>                 if (srv && srv->srvstate != VCHIQ_SRVSTATE_FREE &&
> -                   srv->instance == instance &&
> -                   kref_get_unless_zero(&srv->ref_count)) {
> -                       service = rcu_pointer_handoff(srv);
> +                   srv->instance == instance) {
> +                       service = srv;
>                         break;
>                 }
>         }
> -       rcu_read_unlock();
>
>         *pidx = idx;
> +       return service;
> +}
>
> +struct vchiq_service *
> +next_service_by_instance(struct vchiq_state *state,
> +                        struct vchiq_instance *instance,
> +                        int *pidx)
> +{
> +       struct vchiq_service *service;
> +
> +       rcu_read_lock();
> +       service = __next_service_by_instance(state, instance, pidx);
> +       if (service && kref_get_unless_zero(&service->ref_count))
> +               service = rcu_pointer_handoff(service);
> +       else
> +               service = NULL;
> +       rcu_read_unlock();
>         return service;
>  }

ahh wait, this one is buggy..... If kref_get_unless_zero fails then we
want to keep looking
for the next one. Greg, since you already applied this one, would it
be best for me to send
a patch on top of this or send a V2?

-Marcelo

>
> @@ -283,13 +297,13 @@ unlock_service(struct vchiq_service *service)
>  int
>  vchiq_get_client_id(unsigned int handle)
>  {
> -       struct vchiq_service *service = find_service_by_handle(handle);
> +       struct vchiq_service *service;
>         int id;
>
> +       rcu_read_lock();
> +       service = handle_to_service(handle);
>         id = service ? service->client_id : 0;
> -       if (service)
> -               unlock_service(service);
> -
> +       rcu_read_unlock();
>         return id;
>  }
>
> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
> index 30e4965c7666..cedd8e721aae 100644
> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
> @@ -572,7 +572,13 @@ find_closed_service_for_instance(struct vchiq_instance *instance,
>         unsigned int handle);
>
>  extern struct vchiq_service *
> -next_service_by_instance(struct vchiq_state *state, struct vchiq_instance *instance,
> +__next_service_by_instance(struct vchiq_state *state,
> +                          struct vchiq_instance *instance,
> +                          int *pidx);
> +
> +extern struct vchiq_service *
> +next_service_by_instance(struct vchiq_state *state,
> +                        struct vchiq_instance *instance,
>                          int *pidx);
>
>  extern void
> --
> 2.25.0.225.g125e21ebc7-goog
>

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
