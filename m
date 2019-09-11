Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70780AFA76
	for <lists+linux-rpi-kernel@lfdr.de>; Wed, 11 Sep 2019 12:34:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:MIME-Version:Subject:Date:From:
	References:In-Reply-To:Message-Id:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/JGSqZMs0mN1LO87upt4lJVzHfcpoPRX0E8JdHIaBrI=; b=IIOEgiaMgI610/
	qsIh49Jtr/TsGLIuG+5skPOHELACC/yQ571WwCQz/0JuoFRUHGW7/dum+qZVSCAOl9A9GaOBptpuv
	BAjFcKfMsyd2F2VVcRxIq1ZGNA5iUF2D8hdPfHYUleQMNEnVFpt7uWgMqEBmeBsxGETAj4mJ49dzb
	bbD4l7uOE/vEyUAs+Hzx+VyMrJkKP6N9TIlKFgpdkfQ3YIDSrKLBsi3k/3QMYqNV6EydGw3AKI27h
	5M342tpKF5l7ibrH8sxl0xhJB3Q+zX1DkqAaiUDxthaJEojw7N6tHDYWQrT4+gclR4WwSxCrsd2DC
	GaThdOxJuFgVpW8RHYWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7zx4-0007EK-J7; Wed, 11 Sep 2019 10:34:18 +0000
Received: from mailout2.hostsharing.net ([2a01:37:3000::53df:4ee9:0])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7zx1-0007Dp-9T
 for linux-rpi-kernel@lists.infradead.org; Wed, 11 Sep 2019 10:34:16 +0000
Received: from h08.hostsharing.net (h08.hostsharing.net [83.223.95.28])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client CN "*.hostsharing.net",
 Issuer "COMODO RSA Domain Validation Secure Server CA" (not verified))
 by mailout2.hostsharing.net (Postfix) with ESMTPS id CE39D10189CE9;
 Wed, 11 Sep 2019 12:34:12 +0200 (CEST)
Received: from localhost (p57BD772B.dip0.t-ipconnect.de [87.189.119.43])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by h08.hostsharing.net (Postfix) with ESMTPSA id 80D8261255CE;
 Wed, 11 Sep 2019 12:34:12 +0200 (CEST)
X-Mailbox-Line: From bfc98a38225bbec4158440ad06cb9eee675e3e6f Mon Sep 17
 00:00:00 2001
Message-Id: <bfc98a38225bbec4158440ad06cb9eee675e3e6f.1568187525.git.lukas@wunner.de>
In-Reply-To: <cover.1568187525.git.lukas@wunner.de>
References: <cover.1568187525.git.lukas@wunner.de>
From: Lukas Wunner <lukas@wunner.de>
Date: Wed, 11 Sep 2019 12:15:30 +0200
Subject: [PATCH v2 01/10] dmaengine: bcm2835: Allow reusable descriptors
MIME-Version: 1.0
To: Mark Brown <broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_033415_481544_F20FB718 
X-CRM114-Status: GOOD (  10.11  )
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

VGhlIERNQSBlbmdpbmUgQVBJIHJlcXVpcmVzIERNQSBkcml2ZXJzIHRvIGV4cGxpY2l0bHkgYWxs
b3cgdGhhdApkZXNjcmlwdG9ycyBhcmUgcHJlcGFyZWQgb25jZSBhbmQgcmV1c2VkIG11bHRpcGxl
IHRpbWVzLiBPbmx5IGEKc2luZ2xlIGRyaXZlciBtYWtlcyB1c2Ugb2YgdGhpcyBmdW5jdGlvbmFs
aXR5IHNvIGZhciAocHhhX2RtYS5jLAp0byBzcGVlZCB1cCBweGFfY2FtZXJhLmMpLgoKV2UncmUg
YWJvdXQgdG8gYWRkIGFub3RoZXIgdXNlIGNhc2UgZm9yIHJldXNhYmxlIGRlc2NyaXB0b3JzIGlu
CnRoZSBCQ00yODM1IFNQSSBkcml2ZXIsIHNvIGFsbG93IHRoYXQgaW4gdGhlIEJDTTI4MzUgRE1B
IGRyaXZlci4KClRlc3RlZC1ieTogTnVubyBTw6EgPG51bm8uc2FAYW5hbG9nLmNvbT4KVGVzdGVk
LWJ5OiBOb3JhbGYgVHLDuG5uZXMgPG5vcmFsZkB0cm9ubmVzLm9yZz4KU2lnbmVkLW9mZi1ieTog
THVrYXMgV3VubmVyIDxsdWthc0B3dW5uZXIuZGU+CkFja2VkLWJ5OiBWaW5vZCBLb3VsIDx2a291
bEBrZXJuZWwub3JnPgpBY2tlZC1ieTogU3RlZmFuIFdhaHJlbiA8d2FocmVuc3RAZ214Lm5ldD4K
QWNrZWQtYnk6IE1hcnRpbiBTcGVybCA8a2VybmVsQG1hcnRpbi5zcGVybC5vcmc+CkNjOiBGbG9y
aWFuIEthdWVyIDxmbG9yaWFuLmthdWVyQGtvYWxvLmRlPgpDYzogUm9iZXJ0IEphcnptaWsgPHJv
YmVydC5qYXJ6bWlrQGZyZWUuZnI+Ci0tLQogZHJpdmVycy9kbWEvYmNtMjgzNS1kbWEuYyB8IDEg
KwogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9k
bWEvYmNtMjgzNS1kbWEuYyBiL2RyaXZlcnMvZG1hL2JjbTI4MzUtZG1hLmMKaW5kZXggODEwMWZm
MmYwNWMxLi41MjNjNTA3YWQ2OWUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZG1hL2JjbTI4MzUtZG1h
LmMKKysrIGIvZHJpdmVycy9kbWEvYmNtMjgzNS1kbWEuYwpAQCAtOTA3LDYgKzkwNyw3IEBAIHN0
YXRpYyBpbnQgYmNtMjgzNV9kbWFfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikK
IAlvZC0+ZGRldi5kaXJlY3Rpb25zID0gQklUKERNQV9ERVZfVE9fTUVNKSB8IEJJVChETUFfTUVN
X1RPX0RFVikgfAogCQkJICAgICAgQklUKERNQV9NRU1fVE9fTUVNKTsKIAlvZC0+ZGRldi5yZXNp
ZHVlX2dyYW51bGFyaXR5ID0gRE1BX1JFU0lEVUVfR1JBTlVMQVJJVFlfQlVSU1Q7CisJb2QtPmRk
ZXYuZGVzY3JpcHRvcl9yZXVzZSA9IHRydWU7CiAJb2QtPmRkZXYuZGV2ID0gJnBkZXYtPmRldjsK
IAlJTklUX0xJU1RfSEVBRCgmb2QtPmRkZXYuY2hhbm5lbHMpOwogCi0tIAoyLjIzLjAKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1ycGkta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1ycGkta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1ycGkta2VybmVs
Cg==
