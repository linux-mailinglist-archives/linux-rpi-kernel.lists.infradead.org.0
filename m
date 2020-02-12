Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0616515B00B
	for <lists+linux-rpi-kernel@lfdr.de>; Wed, 12 Feb 2020 19:43:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UkxV8kWmFDYXvhuZPBopwBwmysMVvp6v+etsXENResw=; b=Nxdb1sWLuCkLqe
	iX56n+EbIguqPY9GOE1oDegKSv6gQsSk8+5Vif2K0O1PcWuYTET2gYqGw02JOSknZEITYMmQcN0eX
	xSzlLK+3h35fMDwcEWyNUy6b/DqyQRxB483H2Zim/EV7h963lMVVeFpg7Y/AvNpDBeeM8PZlpFwx1
	H5MDUzSNsgAtybPaGDQMBrVLk26ankYiGtG0blNjsgAm6Ktf4l9972oSq6Lx4Ali/dmhOVOULkSdW
	QlBlz4YcnlYIO7reK4+bbeh/vgCXBzlZW8IT8dd3RuGvbE+/+5KH5VsPsMx7+fbGhTkP2dyDdwQof
	6CiA38AVbeQk4RUHLUFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1wz8-0007io-JH; Wed, 12 Feb 2020 18:43:42 +0000
Received: from mail-qk1-x749.google.com ([2607:f8b0:4864:20::749])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1wz3-0007fa-Bt
 for linux-rpi-kernel@lists.infradead.org; Wed, 12 Feb 2020 18:43:38 +0000
Received: by mail-qk1-x749.google.com with SMTP id y6so1964079qki.13
 for <linux-rpi-kernel@lists.infradead.org>;
 Wed, 12 Feb 2020 10:43:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=pcOBb9Gl/WRWA3Ymrm6bfzbSFQo1wkeo11JEJsz9YFw=;
 b=D3ou7JpmR3pG1c6H+B0wMM0E3ipQlaZdk8TRAH7nGnRbmW59z3+07T6Oc5ByShQ8Tp
 egnIEFAMoC75pPkFx0kHvXhmnH0mRO9KD1LuyooZWIKawPs0mpbAGXr1fwQ+zq9n2rdh
 NJepnwVK/kjy2RN31MrwqQcepOx55bQ/nyscDpf3O/Pe9s1VG1SBOnfGt/qAV1z7OxyJ
 VvjyaZMVwI6kZ9TJzv2/BtodAu5DoauUvfMWHWKJnoIC9u90Tx7fH+vQLai6nxOiwsQX
 K2h6QPLZUQGRG7UXOzlbg3JRAtqhULO39RMbOMXOKg5/AEvYf5aAEWaOl9Q4zqu8Tog4
 ElQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=pcOBb9Gl/WRWA3Ymrm6bfzbSFQo1wkeo11JEJsz9YFw=;
 b=EUqRvtULDxO3jJVxDe9/moO1/yFjIrSAebXmniBpaWI/t3+L2PhvyVyhc19odRDPVF
 ArXe9xGfL2FQ8CXmeSk2a25pak3x7vbXDwnVUgVdwjX19qg29VCByalOn1WJgjcpgOSe
 d4X23MNfkKQchDvD8sDtXmf/KInQ1Cfz1ZPlycAx5oBp++PAbu7xiyZ1nZT5xrk7WJsk
 TnFW4UCnuc3fiR4HMYXX4lBvla4lpl6Rio7eR/UHoH6N7mvH3WLMryERpcSV+SHcYbOz
 lmvBUDJVeunVzqWdOkFlbohnVqXQ7HE18BqGfpdZ6GRYcT2IKYx+XRRauA7ra2RqaUjq
 j0Hg==
X-Gm-Message-State: APjAAAUKDM5D4VLtNmFWrG+T1DWb+IzT5gEIQDOexm9FRyhLY7dNOWJd
 N+pciEyNap7Cm5MYjm3PQt4sH10I23pwk00yiv0=
X-Google-Smtp-Source: APXvYqxTlRbtQWoSwxLyGFEKlNpZxXyax/yz+qrvizf9iiNWI5pAkF1ufWWPAKOFkcANYBicZHjUrk3aM+ebqrqyNA4=
X-Received: by 2002:ac8:6759:: with SMTP id n25mr8536077qtp.226.1581533015831; 
 Wed, 12 Feb 2020 10:43:35 -0800 (PST)
Date: Wed, 12 Feb 2020 13:43:30 -0500
In-Reply-To: <cover.1581532523.git.marcgonzalez@google.com>
Message-Id: <41511abf64f73af62f21f8e0c7457edc289af905.1581532523.git.marcgonzalez@google.com>
Mime-Version: 1.0
References: <cover.1581532523.git.marcgonzalez@google.com>
X-Mailer: git-send-email 2.25.0.225.g125e21ebc7-goog
Subject: [PATCH 2/5] staging: vc04_services: remove unneeded parentheses
From: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
To: nsaenzjulienne@suse.de, gregkh@linuxfoundation.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_104337_412956_3577FA5E 
X-CRM114-Status: UNSURE (   8.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:749 listed in]
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

there are extra parentheses around many conditional statements
that make things a little harder to read

Signed-off-by: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
---
 .../interface/vchiq_arm/vchiq_core.c          | 36 +++++++++----------
 1 file changed, 18 insertions(+), 18 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
index 4f8b59deaec9..72bfa0f73958 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
@@ -138,8 +138,8 @@ find_service_by_handle(unsigned int handle)
 
 	spin_lock(&service_spinlock);
 	service = handle_to_service(handle);
-	if (service && (service->srvstate != VCHIQ_SRVSTATE_FREE) &&
-		(service->handle == handle)) {
+	if (service && service->srvstate != VCHIQ_SRVSTATE_FREE &&
+	    service->handle == handle) {
 		WARN_ON(service->ref_count == 0);
 		service->ref_count++;
 	} else
@@ -161,7 +161,7 @@ find_service_by_port(struct vchiq_state *state, int localport)
 	if ((unsigned int)localport <= VCHIQ_PORT_MAX) {
 		spin_lock(&service_spinlock);
 		service = state->services[localport];
-		if (service && (service->srvstate != VCHIQ_SRVSTATE_FREE)) {
+		if (service && service->srvstate != VCHIQ_SRVSTATE_FREE) {
 			WARN_ON(service->ref_count == 0);
 			service->ref_count++;
 		} else
@@ -184,9 +184,9 @@ find_service_for_instance(struct vchiq_instance *instance,
 
 	spin_lock(&service_spinlock);
 	service = handle_to_service(handle);
-	if (service && (service->srvstate != VCHIQ_SRVSTATE_FREE) &&
-		(service->handle == handle) &&
-		(service->instance == instance)) {
+	if (service && service->srvstate != VCHIQ_SRVSTATE_FREE &&
+	    service->handle == handle &&
+	    service->instance == instance) {
 		WARN_ON(service->ref_count == 0);
 		service->ref_count++;
 	} else
@@ -209,10 +209,10 @@ find_closed_service_for_instance(struct vchiq_instance *instance,
 	spin_lock(&service_spinlock);
 	service = handle_to_service(handle);
 	if (service &&
-		((service->srvstate == VCHIQ_SRVSTATE_FREE) ||
-		 (service->srvstate == VCHIQ_SRVSTATE_CLOSED)) &&
-		(service->handle == handle) &&
-		(service->instance == instance)) {
+	    (service->srvstate == VCHIQ_SRVSTATE_FREE ||
+	     service->srvstate == VCHIQ_SRVSTATE_CLOSED) &&
+	    service->handle == handle &&
+	    service->instance == instance) {
 		WARN_ON(service->ref_count == 0);
 		service->ref_count++;
 	} else
@@ -237,8 +237,8 @@ next_service_by_instance(struct vchiq_state *state, struct vchiq_instance *insta
 	while (idx < state->unused_service) {
 		struct vchiq_service *srv = state->services[idx++];
 
-		if (srv && (srv->srvstate != VCHIQ_SRVSTATE_FREE) &&
-			(srv->instance == instance)) {
+		if (srv && srv->srvstate != VCHIQ_SRVSTATE_FREE &&
+		    srv->instance == instance) {
 			service = srv;
 			WARN_ON(service->ref_count == 0);
 			service->ref_count++;
@@ -464,10 +464,10 @@ get_listening_service(struct vchiq_state *state, int fourcc)
 		struct vchiq_service *service = state->services[i];
 
 		if (service &&
-			(service->public_fourcc == fourcc) &&
-			((service->srvstate == VCHIQ_SRVSTATE_LISTENING) ||
-			((service->srvstate == VCHIQ_SRVSTATE_OPEN) &&
-			(service->remoteport == VCHIQ_PORT_FREE)))) {
+		    service->public_fourcc == fourcc &&
+		    (service->srvstate == VCHIQ_SRVSTATE_LISTENING ||
+		     (service->srvstate == VCHIQ_SRVSTATE_OPEN &&
+		      service->remoteport == VCHIQ_PORT_FREE))) {
 			lock_service(service);
 			return service;
 		}
@@ -485,8 +485,8 @@ get_connected_service(struct vchiq_state *state, unsigned int port)
 	for (i = 0; i < state->unused_service; i++) {
 		struct vchiq_service *service = state->services[i];
 
-		if (service && (service->srvstate == VCHIQ_SRVSTATE_OPEN)
-			&& (service->remoteport == port)) {
+		if (service && service->srvstate == VCHIQ_SRVSTATE_OPEN &&
+		    service->remoteport == port) {
 			lock_service(service);
 			return service;
 		}
-- 
2.25.0.225.g125e21ebc7-goog


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
