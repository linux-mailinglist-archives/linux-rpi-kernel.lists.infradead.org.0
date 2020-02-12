Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C99615B009
	for <lists+linux-rpi-kernel@lfdr.de>; Wed, 12 Feb 2020 19:43:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YpzHKBZ2TWU9kBRJzPhco4CWd1ATfpo32AE9tNWx+u4=; b=NdQ2ZExucHfmzU
	PgGkjjf9qAY1F08vIICR0wCCb+OXa6n2Tt6TNAHy65rhVFm89bbgNtFKXoPtbyWdwdiUV9wt4hFGi
	2RRo7EnnVHQiLx+gpCDMw3/jE5jtZksjqJwzYCFTc2Me8WInOfT2pRTfeAcYglNET4k5EIiJNh3HD
	O6O3fu9NGMx5XDgNza4G4of1Ktfd/gL8EWjxdXRaVeEF2XxlMHNtN5dP/ImWL3L1xJZPHL6y5Gc8W
	4oBhgC7lJHq2mPYSAOXT/puBvj4+gqZqNZAIdviIoNh55TbQdn6ezGkWwlKntqTH4kdPiAnrRKhWz
	pKEdRa7hSzZ4Pmb1Yhiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1wz5-0007gl-Oo; Wed, 12 Feb 2020 18:43:39 +0000
Received: from mail-qt1-x849.google.com ([2607:f8b0:4864:20::849])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1wz1-0007ez-S7
 for linux-rpi-kernel@lists.infradead.org; Wed, 12 Feb 2020 18:43:37 +0000
Received: by mail-qt1-x849.google.com with SMTP id c10so1866420qtk.18
 for <linux-rpi-kernel@lists.infradead.org>;
 Wed, 12 Feb 2020 10:43:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=JVgBXiy5lEZpXJ3FQwlh3hjFj/B6MhF9Hdt9S92pl8k=;
 b=AceqmgzNM2Fc6AWH5hWhy/HhZrwTFRyU7IMErUN5vEhRfV03I+g3URuzV7cOubTCoL
 pAy1bw3YyPC8AvVSBXywtxnWFJSXel/xolv8l/AffLpWTug7wHN9ps5NXgNON8oEEh+V
 swuEGtP9B8bJ41TO8VwQIHblwXWdeFAnRdVFRwK+BMUXa8tWZLB53SCfassxVeJH7vvm
 +LBsfZ/Ar66l8YzHcc+xTu2uRejwLewcve1F1/zl24D7CVH6ZmrzMlwzlstQ4T4zjNOZ
 eTPJ/KsyvYdJBhzmch9pUpJKrXcoFhIZqvF60XiKH4PHyNYaLdl8c4P5MbAw7tumQAgj
 Z8ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=JVgBXiy5lEZpXJ3FQwlh3hjFj/B6MhF9Hdt9S92pl8k=;
 b=juXdxKhKZiKT8iwSQOM7o3Xu5ORKSBYnsAKrJDhK4QNLr1Z8JnR+HEEOBI1VA2XECn
 NbgwcDIQ8O2EwGIINfKzyAYR158bEgEtVFbkr1vD0kdor4fNnveFIcuylFsZ4FpCwvEo
 Xu63apshpcKTfn5iYEq3dQtpUxAhvgMAgi4pkOKT7DJ+PZBokHzUo+WShs4lfgQsH7E1
 +xHr/wLx00yXsLSfqA/om4XGwLd3RnzPJXL5h2xkgvm3ygbvwP5bFXSf4wovlLk1DBTc
 wdIBtX1r5bihtehtW8wD4qsu9jdaOd83kAUQ7Hu1naFxD1i9kiwzKr7XXfhnB9uDnj0w
 4VUw==
X-Gm-Message-State: APjAAAXI7bWhGgciNWdWpmnXOKMymnfoAqym+MMeus09z+DADWkJySv3
 4a5rxJloQRapSJT+CM3VGThzD5YJv7ykeg6s/Dg=
X-Google-Smtp-Source: APXvYqy3rFjAkYyNbNVI5/T4FZbfpQ/+4psD5kakBZk3n+KWReRyc5YVhYcmkzphG/BbZeTmgn65UcxbXDJQjS6l3JA=
X-Received: by 2002:a0c:e8c7:: with SMTP id m7mr20946591qvo.128.1581533013816; 
 Wed, 12 Feb 2020 10:43:33 -0800 (PST)
Date: Wed, 12 Feb 2020 13:43:28 -0500
Message-Id: <cover.1581532523.git.marcgonzalez@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.25.0.225.g125e21ebc7-goog
Subject: [PATCH 0/5] Fix a possible race condition when dereferencing services
From: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
To: nsaenzjulienne@suse.de, gregkh@linuxfoundation.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_104335_937433_C4AFBB8A 
X-CRM114-Status: GOOD (  13.53  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:849 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

When a service is removed from the state->services array in
unlock_service(), its spot in the array is set to NULL, and then it is
freed. And there is code in many places that does something like:

struct vchiq_service *service = state->services[i];
if (service && service->someting && service->something_else)
   ...

But the problem is that this could race with unlock_serivce(), where
we read a non-null value right before it gets set to NULL and
freed. This would be ok if the code above had an active ref_count on
the service, but that's often not the case. So this patch is a
proposal to reimplement the reference counting to use a struct kref,
and to use kfree_rcu() instead of kfree() when freeing the services,
so that the code above will not be buggy under rcu_read_lock(). It
seemed like the right choice because there are lots of places where
the above pattern exists and the caller doesn't have a reference, and
doesn't need to keep one. And in several places this is done in a loop
over all services.

I tested this with the vchiq_test program and also with a program that
spins creating/deleting services, but more help/advice is appreciated.

I think there's still a related race condition where a struct
vchiq_instance is dereferenced without a guarantee that it won't go
away. In vchiq_dump_platform_instances(), for example,
service->instance is dereferenced a bunch, but someone else could
close it in the middle. Also in vchiq_blocking_bulk_transfer() it
seems possible that someone else closes it after reading
service->instance? I might be missing something but after looking
around for a bit I couldn't see any reason the instance would wait for
this function to complete before being kfree'd.

Marcelo Diop-Gonzalez (5):
  staging: vc04_services: remove unused function
  staging: vc04_services: remove unneeded parentheses
  staging: vc04_services: fix indentation alignment in a few places
  staging: vc04_services: use kref + RCU to reference count services
  staging: vc04_services: don't increment service refcount when it's not
    needed

 .../interface/vchiq_arm/vchiq_arm.c           |  41 ++-
 .../interface/vchiq_arm/vchiq_core.c          | 286 +++++++++---------
 .../interface/vchiq_arm/vchiq_core.h          |  20 +-
 .../interface/vchiq_arm/vchiq_if.h            |   2 -
 4 files changed, 190 insertions(+), 159 deletions(-)

-- 
2.25.0.225.g125e21ebc7-goog


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
