Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93408AFAF9
	for <lists+linux-rpi-kernel@lfdr.de>; Wed, 11 Sep 2019 12:59:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:MIME-Version:Subject:Date:From:
	References:In-Reply-To:Message-Id:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tUYiBSRGYWOC6EEWME9syei5BYgHy05zB31Or2uxZfw=; b=e9aggUVvD/3nZc
	7ZI6uUkcXLRi8Q4Lsp9oszwLpfTaQk3QK3kpCx8xy7ap3US8xIeSvTZ7aF7W0YELzkyE/z7953wQt
	kvOKRBZMkccpbZX8I9QeJ/94rkgTHfWeEdKXDkMPPuTC49BN8y14kBWQAbMbicK6hUenhEpvgYG6a
	FIaDwiP3L3ErRo/Nk9Kghz/2uX7VvN0Szss9JXfxHCTCF4X1CHoBWY/oETkCBUw2jFg0DWxyirE4Y
	o7XSWbztqZw+0mVZf8VvLoo7lFd+w+FpyHbh5MGSm6Zf/FAXSNa0sVZtj9UqDxN4AzkvtKklBFkbN
	TER9vQ0jkoqVtbGC2LsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i80LN-0000rS-HK; Wed, 11 Sep 2019 10:59:25 +0000
Received: from mailout1.hostsharing.net ([2a01:37:1000::53df:5fcc:0])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i80LD-0000oh-VH
 for linux-rpi-kernel@lists.infradead.org; Wed, 11 Sep 2019 10:59:18 +0000
Received: from h08.hostsharing.net (h08.hostsharing.net
 [IPv6:2a01:37:1000::53df:5f1c:0])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client CN "*.hostsharing.net",
 Issuer "COMODO RSA Domain Validation Secure Server CA" (not verified))
 by mailout1.hostsharing.net (Postfix) with ESMTPS id 89F5610190FA9;
 Wed, 11 Sep 2019 12:59:14 +0200 (CEST)
Received: from localhost (p57BD772B.dip0.t-ipconnect.de [87.189.119.43])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by h08.hostsharing.net (Postfix) with ESMTPSA id 475516124A1A;
 Wed, 11 Sep 2019 12:59:14 +0200 (CEST)
X-Mailbox-Line: From 78648f80f67d97bb7beecc1b9be6b6e4a45bc1d8 Mon Sep 17
 00:00:00 2001
Message-Id: <78648f80f67d97bb7beecc1b9be6b6e4a45bc1d8.1568187525.git.lukas@wunner.de>
In-Reply-To: <cover.1568187525.git.lukas@wunner.de>
References: <cover.1568187525.git.lukas@wunner.de>
From: Lukas Wunner <lukas@wunner.de>
Date: Wed, 11 Sep 2019 12:15:30 +0200
Subject: [PATCH v2 08/10] dmaengine: bcm2835: Document struct bcm2835_dmadev
MIME-Version: 1.0
To: Mark Brown <broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_035916_461195_6567204E 
X-CRM114-Status: UNSURE (   7.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-rpi-kernel@lists.infradead.org, linux-spi@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

RG9jdW1lbnQgdGhlIEJDTTI4MzUgRE1BIGRyaXZlcidzIGRldmljZSBkYXRhIHN0cnVjdHVyZSBz
byB0aGF0IHVwY29taW5nCmNvbW1pdHMgbWF5IGFkZCBmdXJ0aGVyIG1lbWJlcnMgd2l0aCBwcm9w
ZXIga2VybmVsZG9jLgoKVGVzdGVkLWJ5OiBOdW5vIFPDoSA8bnVuby5zYUBhbmFsb2cuY29tPgpU
ZXN0ZWQtYnk6IE5vcmFsZiBUcsO4bm5lcyA8bm9yYWxmQHRyb25uZXMub3JnPgpTaWduZWQtb2Zm
LWJ5OiBMdWthcyBXdW5uZXIgPGx1a2FzQHd1bm5lci5kZT4KQWNrZWQtYnk6IFZpbm9kIEtvdWwg
PHZrb3VsQGtlcm5lbC5vcmc+CkFja2VkLWJ5OiBTdGVmYW4gV2FocmVuIDx3YWhyZW5zdEBnbXgu
bmV0PgpBY2tlZC1ieTogTWFydGluIFNwZXJsIDxrZXJuZWxAbWFydGluLnNwZXJsLm9yZz4KQ2M6
IEZsb3JpYW4gS2F1ZXIgPGZsb3JpYW4ua2F1ZXJAa29hbG8uZGU+Ci0tLQogZHJpdmVycy9kbWEv
YmNtMjgzNS1kbWEuYyB8IDYgKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCsp
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEvYmNtMjgzNS1kbWEuYyBiL2RyaXZlcnMvZG1hL2Jj
bTI4MzUtZG1hLmMKaW5kZXggYTY1NTE0ZmNiN2YyLi4xNDM1OGZhZjNiZmYgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZG1hL2JjbTI4MzUtZG1hLmMKKysrIGIvZHJpdmVycy9kbWEvYmNtMjgzNS1kbWEu
YwpAQCAtMzcsNiArMzcsMTIgQEAKICNkZWZpbmUgQkNNMjgzNV9ETUFfTUFYX0RNQV9DSEFOX1NV
UFBPUlRFRCAxNAogI2RlZmluZSBCQ00yODM1X0RNQV9DSEFOX05BTUVfU0laRSA4CiAKKy8qKgor
ICogc3RydWN0IGJjbTI4MzVfZG1hZGV2IC0gQkNNMjgzNSBETUEgY29udHJvbGxlcgorICogQGRk
ZXY6IERNQSBkZXZpY2UKKyAqIEBiYXNlOiBiYXNlIGFkZHJlc3Mgb2YgcmVnaXN0ZXIgbWFwCisg
KiBAZG1hX3Bhcm1zOiBETUEgcGFyYW1ldGVycyAodG8gY29udmV5IDEgR0J5dGUgbWF4IHNlZ21l
bnQgc2l6ZSB0byBjbGllbnRzKQorICovCiBzdHJ1Y3QgYmNtMjgzNV9kbWFkZXYgewogCXN0cnVj
dCBkbWFfZGV2aWNlIGRkZXY7CiAJdm9pZCBfX2lvbWVtICpiYXNlOwotLSAKMi4yMy4wCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtcnBpLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtcnBpLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcnBpLWtlcm5l
bAo=
