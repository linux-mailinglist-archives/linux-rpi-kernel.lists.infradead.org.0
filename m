Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA7F91616CE
	for <lists+linux-rpi-kernel@lfdr.de>; Mon, 17 Feb 2020 16:55:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:To:From:
	Subject:Date:In-Reply-To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=2tQnPoGb+BWV1eJakF1agBRXBy3HMLbx9KoyyrNKxnk=; b=hUnJiBY7oc8HAA
	//ZSPgcffTRB2JcknH1Y+emzPWMnOuIPUy/13tBWcK1jaYnOZTu6I0dibwL+65cyM7bB+CAlBKNL7
	gqpz5X4lWA85YVeHPfJmzSpDkv+XRxD4tEenwPV8+1dhLZwwdUyI5qjT8VnbOpf4Mzu0tLgAE/27M
	Zl/T0QszHMARIUe0Orh8mfgB8ram6eJkvw0NF80eTQ1cOafMi0UmzbPhbrXU1OiQqO8xg3NUFR/rb
	nKbY66Q9iuNF+hrtDn4La3b+31H1UTSkZ2euv++cT1k77BfPWFE/dy7wWPtxqWEfO7OJup5qyWkpN
	za1jmcZqe8+jAE3Qbb1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3ikN-0000za-3G; Mon, 17 Feb 2020 15:55:47 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3ikB-0000sW-9U
 for linux-rpi-kernel@lists.infradead.org; Mon, 17 Feb 2020 15:55:37 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 5D12CB147;
 Mon, 17 Feb 2020 15:55:33 +0000 (UTC)
In-Reply-To: <20200213194001.130110-1-marcgonzalez@google.com>
Date: Mon, 17 Feb 2020 16:49:36 +0100
Subject: Re: [PATCH] staging: vc04_services: Fix wrong early return in
 next_service_by_instance()
From: "Nicolas Saenz Julienne" <nsaenzjulienne@suse.de>
To: "Marcelo Diop-Gonzalez" <marcgonzalez@google.com>,
 <gregkh@linuxfoundation.org>
Message-Id: <C0OK3FSV7XIN.MMMEHI9F14QG@linux-9qgx>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_075535_576353_34D9A360 
X-CRM114-Status: GOOD (  14.54  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 dan.carpenter@oracle.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

On Thu Feb 13, 2020 at 2:40 PM, Marcelo Diop-Gonzalez wrote:
> If kref_get_unless_zero() fails, we should keep looking for the
> next service, since the callers of this function expect that a NULL
> return value means there are no more.
>
> Signed-off-by: Marcelo Diop-Gonzalez <marcgonzalez@google.com>

Reviewed-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Tested-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

Note that, as Dan says, picking up the Fixes tag would be nice.

> ---
> .../vc04_services/interface/vchiq_arm/vchiq_core.c | 14 +++++++++-----
> 1 file changed, 9 insertions(+), 5 deletions(-)
>
> diff --git
> a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
> b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
> index d7d7f4d9d57f..edcd97373809 100644
> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
> @@ -252,11 +252,15 @@ next_service_by_instance(struct vchiq_state
> *state,
> struct vchiq_service *service;
>  
> rcu_read_lock();
> - service = __next_service_by_instance(state, instance, pidx);
> - if (service && kref_get_unless_zero(&service->ref_count))
> - service = rcu_pointer_handoff(service);
> - else
> - service = NULL;
> + while (1) {
> + service = __next_service_by_instance(state, instance, pidx);
> + if (!service)
> + break;
> + if (kref_get_unless_zero(&service->ref_count)) {
> + service = rcu_pointer_handoff(service);
> + break;
> + }
> + }
> rcu_read_unlock();
> return service;
> }
> --
> 2.25.0.225.g125e21ebc7-goog


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
