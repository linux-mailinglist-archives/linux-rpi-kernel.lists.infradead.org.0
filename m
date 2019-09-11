Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59EF6AFABC
	for <lists+linux-rpi-kernel@lfdr.de>; Wed, 11 Sep 2019 12:46:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:MIME-Version:Subject:Date:From:
	References:In-Reply-To:Message-Id:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0gXk12239EMxAJxL4buzCdMXOPHdM+gEUEcyx7RxAao=; b=mndQ43w8GdjAHe
	y06TPYkKQZBBcLys8BhDspTTTw0LbjdDOVPNb4UKAgG2lLZQPZ3FQkmr4Vs26HelnKnsJDTUKIt+c
	TJgkKtDfK17R39+LHZyOGE/o5yC6hd89TgS2Te6KFOlqANgtDZdE85Al65NexA37nIEsGLZq+BWjx
	6T1oMwY2DqFlvu8qkY/RST7BJM33utuwR30rvBny5ElGq1ORvCd7QdRngZ25Owhg/Gjru5sT/S9eu
	e59BKHDoIz9PahIUNTG/1CEDatsMmGyvgx0AemI9sJ9Rum/jws8L6+C3Gz3kzRbfRIPV+i8vdGHEw
	+EKs1y2TohZf8N2wOOfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i808m-0003s4-JI; Wed, 11 Sep 2019 10:46:24 +0000
Received: from mailout2.hostsharing.net ([2a01:37:3000::53df:4ee9:0])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i808i-0003rF-RH
 for linux-rpi-kernel@lists.infradead.org; Wed, 11 Sep 2019 10:46:22 +0000
Received: from h08.hostsharing.net (h08.hostsharing.net
 [IPv6:2a01:37:1000::53df:5f1c:0])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client CN "*.hostsharing.net",
 Issuer "COMODO RSA Domain Validation Secure Server CA" (not verified))
 by mailout2.hostsharing.net (Postfix) with ESMTPS id 879E610189E05;
 Wed, 11 Sep 2019 12:46:19 +0200 (CEST)
Received: from localhost (p57BD772B.dip0.t-ipconnect.de [87.189.119.43])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by h08.hostsharing.net (Postfix) with ESMTPSA id 46F696138D2F;
 Wed, 11 Sep 2019 12:46:19 +0200 (CEST)
X-Mailbox-Line: From 7ceb98f154cdcf72c577615fa312df41adea5f47 Mon Sep 17
 00:00:00 2001
Message-Id: <7ceb98f154cdcf72c577615fa312df41adea5f47.1568187525.git.lukas@wunner.de>
In-Reply-To: <cover.1568187525.git.lukas@wunner.de>
References: <cover.1568187525.git.lukas@wunner.de>
From: Lukas Wunner <lukas@wunner.de>
Date: Wed, 11 Sep 2019 12:15:30 +0200
Subject: [PATCH v2 04/10] spi: bcm2835: Work around DONE bit erratum
MIME-Version: 1.0
To: Mark Brown <broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_034621_599424_DC7EA835 
X-CRM114-Status: GOOD (  13.19  )
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

Q29tbWl0IDNiZDdmNjU4OWY2NyAoInNwaTogYmNtMjgzNTogT3ZlcmNvbWUgc2dsaXN0IGVudHJ5
IGxlbmd0aApsaW1pdGF0aW9uIikgYW1lbmRlZCB0aGUgQkNNMjgzNSBTUEkgZHJpdmVyIHdpdGgg
c3VwcG9ydCBmb3IgRE1BCnRyYW5zZmVycyB3aG9zZSBidWZmZXJzIGFyZSBub3QgYWxpZ25lZCB0
byA0IGJ5dGVzIGFuZCByZXF1aXJlIG1vcmUgdGhhbgpvbmUgc2dsaXN0IGVudHJ5LgoKV2hlbiB0
ZXN0aW5nIHRoaXMgZmVhdHVyZSB3aXRoIHVwY29taW5nIGNvbW1pdHMgdG8gc3BlZWQgdXAgVFgt
b25seSBhbmQKUlgtb25seSB0cmFuc2ZlcnMsIEkgbm90aWNlZCB0aGF0IFNQSSB0cmFuc21pc3Np
b24gc29tZXRpbWVzIGJyZWFrcy4KQSBmdW5jdGlvbiBpbnRyb2R1Y2VkIGJ5IHRoZSBjb21taXQs
IGJjbTI4MzVfc3BpX3RyYW5zZmVyX3Byb2xvZ3VlKCksCnBlcmZvcm1zIG9uZSBvciB0d28gUElP
IHRyYW5zbWlzc2lvbnMgYXMgYSBwcm9sb2d1ZSB0byB0aGUgYWN0dWFsIERNQQp0cmFuc21pc3Np
b24uICBJdCB0dXJucyBvdXQgdGhhdCB0aGUgYnJlYWthZ2UgZ29lcyBhd2F5IGlmIHRoZSBET05F
IGJpdAppbiB0aGUgQ1MgcmVnaXN0ZXIgaXMgc2V0IHdoZW4gZW5kaW5nIHN1Y2ggYSBQSU8gdHJh
bnNtaXNzaW9uLgoKVGhlIERPTkUgYml0IHNpZ25pZmllcyBlbXB0aW5lc3Mgb2YgdGhlIFRYIEZJ
Rk8uICBBY2NvcmRpbmcgdG8gdGhlIHNwZWMsCnRoZSBiaXQgaXMgb2YgdHlwZSBSTywgc28gd3Jp
dGluZyBpdCBzaG91bGQgbmV2ZXIgaGF2ZSBhbnkgZWZmZWN0LgpQZXJoYXBzIHRoZSBzcGVjIGlz
IHdyb25nIGFuZCB0aGUgYml0IGlzIGFjdHVhbGx5IG9mIHR5cGUgUlcxQy4KRS5nLiB0aGUgSTJD
IGNvbnRyb2xsZXIgb24gdGhlIEJDTTI4MzUgZG9lcyBoYXZlIGFuIFJXMUMgRE9ORSBiaXQgd2hp
Y2gKbmVlZHMgdG8gYmUgY2xlYXJlZCBieSB0aGUgZHJpdmVyLiAgQW5vdGhlciwgcG9zc2libHkg
bW9yZSBsaWtlbHkKZXhwbGFuYXRpb24gaXMgdGhhdCBpdCdzIGEgaGFyZHdhcmUgZXJyYXR1bSBz
aW5jZSB0aGUgaXNzdWUgZG9lcyBub3QKb2NjdXIgY29uc2lzdGVudGx5LgoKRWl0aGVyIHdheSwg
YW1lbmQgYmNtMjgzNV9zcGlfdHJhbnNmZXJfcHJvbG9ndWUoKSB0byBhbHdheXMgd3JpdGUgdGhl
CkRPTkUgYml0LgoKVXN1YWxseSBhIHRyYW5zbWlzc2lvbiBpcyBlbmRlZCBieSBiY20yODM1X3Nw
aV9yZXNldF9odygpLiAgSWYgdGhlCnRyYW5zbWlzc2lvbiB3YXMgc3VjY2Vzc2Z1bCwgdGhlIFRY
IEZJRk8gaXMgZW1wdHkgYW5kIHRodXMgdGhlIERPTkUgYml0CmlzIHNldCB3aGVuIGJjbTI4MzVf
c3BpX3Jlc2V0X2h3KCkgcmVhZHMgdGhlIENTIHJlZ2lzdGVyLiAgVGhlIGJpdCBpcwp0aGVuIHdy
aXR0ZW4gYmFjayB0byB0aGUgcmVnaXN0ZXIsIHNvIHdlIGhhcHBlbiB0byBkbyB0aGUgcmlnaHQg
dGhpbmcuCgpIb3dldmVyIGlmIERPTkUgaXMgbm90IHNldCwgZS5nLiBiZWNhdXNlIHRyYW5zbWlz
c2lvbiBpcyBhYm9ydGVkIHdpdGgKYSBub24tZW1wdHkgVFggRklGTywgdGhlIGJpdCB3b24ndCBi
ZSB3cml0dGVuIGJ5IGJjbTI4MzVfc3BpX3Jlc2V0X2h3KCkKYW5kIGl0IHNlZW1zIHBvc3NpYmxl
IHRoYXQgdHJhbnNtaXNzaW9uIG1pZ2h0IHN1YnNlcXVlbnRseSBicmVhay4gIFRvIGJlCm9uIHRo
ZSBzYWZlIHNpZGUsIGxpa2V3aXNlIGFtZW5kIGJjbTI4MzVfc3BpX3Jlc2V0X2h3KCkgdG8gYWx3
YXlzIHdyaXRlCnRoZSBiaXQuCgpUZXN0ZWQtYnk6IE51bm8gU8OhIDxudW5vLnNhQGFuYWxvZy5j
b20+ClRlc3RlZC1ieTogTm9yYWxmIFRyw7hubmVzIDxub3JhbGZAdHJvbm5lcy5vcmc+ClNpZ25l
ZC1vZmYtYnk6IEx1a2FzIFd1bm5lciA8bHVrYXNAd3VubmVyLmRlPgpBY2tlZC1ieTogU3RlZmFu
IFdhaHJlbiA8d2FocmVuc3RAZ214Lm5ldD4KQWNrZWQtYnk6IE1hcnRpbiBTcGVybCA8a2VybmVs
QG1hcnRpbi5zcGVybC5vcmc+Ci0tLQogZHJpdmVycy9zcGkvc3BpLWJjbTI4MzUuYyB8IDE0ICsr
KysrKysrKysrKy0tCiAxIGZpbGUgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlv
bnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3NwaS9zcGktYmNtMjgzNS5jIGIvZHJpdmVycy9z
cGkvc3BpLWJjbTI4MzUuYwppbmRleCBmYmQ2ZDFhZTRjNWUuLmY3OWYwNGVhNDJlNSAxMDA2NDQK
LS0tIGEvZHJpdmVycy9zcGkvc3BpLWJjbTI4MzUuYworKysgYi9kcml2ZXJzL3NwaS9zcGktYmNt
MjgzNS5jCkBAIC0zMjEsNiArMzIxLDEzIEBAIHN0YXRpYyB2b2lkIGJjbTI4MzVfc3BpX3Jlc2V0
X2h3KHN0cnVjdCBzcGlfY29udHJvbGxlciAqY3RscikKIAkJQkNNMjgzNV9TUElfQ1NfSU5URCB8
CiAJCUJDTTI4MzVfU1BJX0NTX0RNQUVOIHwKIAkJQkNNMjgzNV9TUElfQ1NfVEEpOworCS8qCisJ
ICogVHJhbnNtaXNzaW9uIHNvbWV0aW1lcyBicmVha3MgdW5sZXNzIHRoZSBET05FIGJpdCBpcyB3
cml0dGVuIGF0IHRoZQorCSAqIGVuZCBvZiBldmVyeSB0cmFuc2Zlci4gIFRoZSBzcGVjIHNheXMg
aXQncyBhIFJPIGJpdC4gIEVpdGhlciB0aGUKKwkgKiBzcGVjIGlzIHdyb25nIGFuZCB0aGUgYml0
IGlzIGFjdHVhbGx5IG9mIHR5cGUgUlcxQywgb3IgaXQncyBhCisJICogaGFyZHdhcmUgZXJyYXR1
bS4KKwkgKi8KKwljcyB8PSBCQ00yODM1X1NQSV9DU19ET05FOwogCS8qIGFuZCByZXNldCBSWC9U
WCBGSUZPUyAqLwogCWNzIHw9IEJDTTI4MzVfU1BJX0NTX0NMRUFSX1JYIHwgQkNNMjgzNV9TUElf
Q1NfQ0xFQVJfVFg7CiAKQEAgLTQ3OSw3ICs0ODYsOSBAQCBzdGF0aWMgdm9pZCBiY20yODM1X3Nw
aV90cmFuc2Zlcl9wcm9sb2d1ZShzdHJ1Y3Qgc3BpX2NvbnRyb2xsZXIgKmN0bHIsCiAJCWJjbTI4
MzVfd3JfZmlmb19jb3VudChicywgYnMtPnJ4X3Byb2xvZ3VlKTsKIAkJYmNtMjgzNV93YWl0X3R4
X2ZpZm9fZW1wdHkoYnMpOwogCQliY20yODM1X3JkX2ZpZm9fY291bnQoYnMsIGJzLT5yeF9wcm9s
b2d1ZSk7Ci0JCWJjbTI4MzVfc3BpX3Jlc2V0X2h3KGN0bHIpOworCQliY20yODM1X3dyKGJzLCBC
Q00yODM1X1NQSV9DUywgY3MgfCBCQ00yODM1X1NQSV9DU19DTEVBUl9SWAorCQkJCQkJICB8IEJD
TTI4MzVfU1BJX0NTX0NMRUFSX1RYCisJCQkJCQkgIHwgQkNNMjgzNV9TUElfQ1NfRE9ORSk7CiAK
IAkJZG1hX3N5bmNfc2luZ2xlX2Zvcl9kZXZpY2UoY3Rsci0+ZG1hX3J4LT5kZXZpY2UtPmRldiwK
IAkJCQkJICAgc2dfZG1hX2FkZHJlc3MoJnRmci0+cnhfc2cuc2dsWzBdKSwKQEAgLTUwMCw3ICs1
MDksOCBAQCBzdGF0aWMgdm9pZCBiY20yODM1X3NwaV90cmFuc2Zlcl9wcm9sb2d1ZShzdHJ1Y3Qg
c3BpX2NvbnRyb2xsZXIgKmN0bHIsCiAJCQkJCQkgIHwgQkNNMjgzNV9TUElfQ1NfRE1BRU4pOwog
CQliY20yODM1X3dyX2ZpZm9fY291bnQoYnMsIHR4X3JlbWFpbmluZyk7CiAJCWJjbTI4MzVfd2Fp
dF90eF9maWZvX2VtcHR5KGJzKTsKLQkJYmNtMjgzNV93cihicywgQkNNMjgzNV9TUElfQ1MsIGNz
IHwgQkNNMjgzNV9TUElfQ1NfQ0xFQVJfVFgpOworCQliY20yODM1X3dyKGJzLCBCQ00yODM1X1NQ
SV9DUywgY3MgfCBCQ00yODM1X1NQSV9DU19DTEVBUl9UWAorCQkJCQkJICB8IEJDTTI4MzVfU1BJ
X0NTX0RPTkUpOwogCX0KIAogCWlmIChsaWtlbHkoIWJzLT50eF9zcGlsbG92ZXIpKSB7Ci0tIAoy
LjIzLjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1ycGkta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1ycGkta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1ycGkta2VybmVsCg==
