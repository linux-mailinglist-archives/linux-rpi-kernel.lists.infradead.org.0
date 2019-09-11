Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B358FAFAC2
	for <lists+linux-rpi-kernel@lfdr.de>; Wed, 11 Sep 2019 12:48:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:MIME-Version:Subject:Date:From:
	References:In-Reply-To:Message-Id:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+dlaO4OkMCjrRyLIWGo+OJF+bYK+Aid+y4UhkiT9rFI=; b=F7n2KIAK0vjFq4
	499xHbrSc9s8W0e0OLcwNARoXu/L2G5b1zrUtzrFu33+/Bfl+ruEOcssB20N3bTYgwHbc8HAIYm/K
	KNYeRg+OBaXtMqOPEnHeku3E51/hDJt9VEiczxmLVzX8bJSWCCVN5lL3IkCPaiqLcy9RywQvafPMb
	PSkot+1/VFzRYGBIvRoptjwqn+ZufRse6tsm3YlqEyrED+Oq0PcvHCeA6PMJOi6lywxDuRLNKCMzW
	0XhM3uv7OpglB7p3dNHQBiv/Lc94ikq3FL75Bu7MKpflt03CeX5IyYarNzKNtM/qUUVDQM8P04oLM
	hhK7eLruORwZFqA/xhIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i80AU-0004CJ-06; Wed, 11 Sep 2019 10:48:10 +0000
Received: from mailout2.hostsharing.net ([83.223.78.233])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i80AQ-0004Bs-2c
 for linux-rpi-kernel@lists.infradead.org; Wed, 11 Sep 2019 10:48:07 +0000
Received: from h08.hostsharing.net (h08.hostsharing.net
 [IPv6:2a01:37:1000::53df:5f1c:0])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client CN "*.hostsharing.net",
 Issuer "COMODO RSA Domain Validation Secure Server CA" (not verified))
 by mailout2.hostsharing.net (Postfix) with ESMTPS id D081410189D0E;
 Wed, 11 Sep 2019 12:48:02 +0200 (CEST)
Received: from localhost (p57BD772B.dip0.t-ipconnect.de [87.189.119.43])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by h08.hostsharing.net (Postfix) with ESMTPSA id 874156138D2F;
 Wed, 11 Sep 2019 12:48:02 +0200 (CEST)
X-Mailbox-Line: From 062b03b7f86af77a13ce0ec3b22e0bdbfcfba10d Mon Sep 17
 00:00:00 2001
Message-Id: <062b03b7f86af77a13ce0ec3b22e0bdbfcfba10d.1568187525.git.lukas@wunner.de>
In-Reply-To: <cover.1568187525.git.lukas@wunner.de>
References: <cover.1568187525.git.lukas@wunner.de>
From: Lukas Wunner <lukas@wunner.de>
Date: Wed, 11 Sep 2019 12:15:30 +0200
Subject: [PATCH v2 05/10] spi: bcm2835: Drop dma_pending flag
MIME-Version: 1.0
To: Mark Brown <broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_034806_428681_4CDAA7D9 
X-CRM114-Status: GOOD (  15.18  )
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

VGhlIEJDTTI4MzUgU1BJIGRyaXZlciB1c2VzIGEgZmxhZyB0byBrZWVwIHRyYWNrIG9mIHdoZXRo
ZXIgYSBETUEKdHJhbnNmZXIgaXMgaW4gcHJvZ3Jlc3MuCgpUaGUgZmxhZyBpcyB1c2VkIHRvIGF2
b2lkIHRlcm1pbmF0aW5nIERNQSBjaGFubmVscyBtdWx0aXBsZSB0aW1lcyBpZiBhCnRyYW5zZmVy
IGZpbmlzaGVzIG9yZGVybHkgd2hpbGUgc2ltdWx0YW5lb3VzbHkgdGhlIFNQSSBjb3JlIGludm9r
ZXMgdGhlCi0+aGFuZGxlX2VycigpIGNhbGxiYWNrIGJlY2F1c2UgdGhlIHRyYW5zZmVyIHRvb2sg
dG9vIGxvbmcuICBIb3dldmVyCnRlcm1pbmF0aW5nIERNQSBjaGFubmVscyBtdWx0aXBsZSB0aW1l
cyBpcyBwZXJmZWN0bHkgZmluZSwgc28gdGhlIGZsYWcKaXMgdW5uZWNlc3NhcnkgZm9yIHRoaXMg
cGFydGljdWxhciBwdXJwb3NlLgoKVGhlIGZsYWcgaXMgYWxzbyB1c2VkIHRvIGF2b2lkIGludm9r
aW5nIGJjbTI4MzVfc3BpX3VuZG9fcHJvbG9ndWUoKQptdWx0aXBsZSB0aW1lcyB1bmRlciB0aGlz
IHJhY2UgY29uZGl0aW9uLiAgSG93ZXZlciBtdWx0aXBsZSAqY29uY3VycmVudCoKaW52b2NhdGlv
bnMgY2FuIG5vIGxvbmdlciBoYXBwZW4gc2luY2UgY29tbWl0IDI1Mjc3MDRkODQxMSAoInNwaToK
YmNtMjgzNTogU3luY2hyb25pemUgd2l0aCBjYWxsYmFjayBvbiBETUEgdGVybWluYXRpb24iKSBi
ZWNhdXNlIHRoZQotPmhhbmRsZV9lcnIoKSBjYWxsYmFjayBub3cgdXNlcyB0aGUgX3N5bmMoKSB2
YXJpYW50IHdoZW4gdGVybWluYXRpbmcKRE1BIGNoYW5uZWxzLgoKVGhlIG9ubHkgcmFpc29uIGQn
w6p0cmUgb2YgdGhlIGZsYWcgaXMgdGhlcmVmb3JlIHRoYXQKYmNtMjgzNV9zcGlfdW5kb19wcm9s
b2d1ZSgpIGNhbm5vdCBjb3BlIHdpdGggbXVsdGlwbGUgKnNlcXVlbnRpYWwqCmludm9jYXRpb25z
LiAgQWNoaWV2ZSB0aGF0IGJ5IHNldHRpbmcgdHhfcHJvbG9ndWUgdG8gMCBhdCB0aGUgZW5kIG9m
CnRoZSBmdW5jdGlvbi4gIFN1YnNlcXVlbnQgaW52b2NhdGlvbnMgdGh1cyBiZWNvbWUgbm8tb3Bz
LgoKV2l0aCB0aGF0LCB0aGUgZG1hX3BlbmRpbmcgZmxhZyBiZWNvbWVzIHVubmVjZXNzYXJ5LCBz
byBkcm9wIGl0LgoKVGVzdGVkLWJ5OiBOdW5vIFPDoSA8bnVuby5zYUBhbmFsb2cuY29tPgpUZXN0
ZWQtYnk6IE5vcmFsZiBUcsO4bm5lcyA8bm9yYWxmQHRyb25uZXMub3JnPgpTaWduZWQtb2ZmLWJ5
OiBMdWthcyBXdW5uZXIgPGx1a2FzQHd1bm5lci5kZT4KQWNrZWQtYnk6IFN0ZWZhbiBXYWhyZW4g
PHdhaHJlbnN0QGdteC5uZXQ+CkFja2VkLWJ5OiBNYXJ0aW4gU3BlcmwgPGtlcm5lbEBtYXJ0aW4u
c3Blcmwub3JnPgotLS0KIGRyaXZlcnMvc3BpL3NwaS1iY20yODM1LmMgfCAyMyArKysrKysrKy0t
LS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwgMTUgZGVsZXRp
b25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9zcGkvc3BpLWJjbTI4MzUuYyBiL2RyaXZlcnMv
c3BpL3NwaS1iY20yODM1LmMKaW5kZXggZjc5ZjA0ZWE0MmU1Li41MzJjNThiY2ZkNDUgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvc3BpL3NwaS1iY20yODM1LmMKKysrIGIvZHJpdmVycy9zcGkvc3BpLWJj
bTI4MzUuYwpAQCAtOTQsNyArOTQsNiBAQCBNT0RVTEVfUEFSTV9ERVNDKHBvbGxpbmdfbGltaXRf
dXMsCiAgKiBAcnhfcHJvbG9ndWU6IGJ5dGVzIHJlY2VpdmVkIHdpdGhvdXQgRE1BIGlmIGZpcnN0
IFJYIHNnbGlzdCBlbnRyeSdzCiAgKglsZW5ndGggaXMgbm90IGEgbXVsdGlwbGUgb2YgNCAodG8g
b3ZlcmNvbWUgaGFyZHdhcmUgbGltaXRhdGlvbikKICAqIEB0eF9zcGlsbG92ZXI6IHdoZXRoZXIg
QHR4X3Byb2xvZ3VlIHNwaWxscyBvdmVyIHRvIHNlY29uZCBUWCBzZ2xpc3QgZW50cnkKLSAqIEBk
bWFfcGVuZGluZzogd2hldGhlciBhIERNQSB0cmFuc2ZlciBpcyBpbiBwcm9ncmVzcwogICogQGRl
YnVnZnNfZGlyOiB0aGUgZGVidWdmcyBkaXJlY3RvcnkgLSBuZWVkZSB0byByZW1vdmUgZGVidWdm
cyB3aGVuCiAgKiAgICAgIHVubG9hZGluZyB0aGUgbW9kdWxlCiAgKiBAY291bnRfdHJhbnNmZXJf
cG9sbGluZzogY291bnQgb2YgaG93IG9mdGVuIHBvbGxpbmcgbW9kZSBpcyB1c2VkCkBAIC0xMTcs
NyArMTE2LDYgQEAgc3RydWN0IGJjbTI4MzVfc3BpIHsKIAlpbnQgdHhfcHJvbG9ndWU7CiAJaW50
IHJ4X3Byb2xvZ3VlOwogCXVuc2lnbmVkIGludCB0eF9zcGlsbG92ZXI7Ci0JdW5zaWduZWQgaW50
IGRtYV9wZW5kaW5nOwogCiAJc3RydWN0IGRlbnRyeSAqZGVidWdmc19kaXI7CiAJdTY0IGNvdW50
X3RyYW5zZmVyX3BvbGxpbmc7CkBAIC01NTEsNiArNTQ5LDggQEAgc3RhdGljIHZvaWQgYmNtMjgz
NV9zcGlfdW5kb19wcm9sb2d1ZShzdHJ1Y3QgYmNtMjgzNV9zcGkgKmJzKQogCQlzZ19kbWFfYWRk
cmVzcygmdGZyLT50eF9zZy5zZ2xbMV0pIC09IDQ7CiAJCXNnX2RtYV9sZW4oJnRmci0+dHhfc2cu
c2dsWzFdKSAgICAgKz0gNDsKIAl9CisKKwlicy0+dHhfcHJvbG9ndWUgPSAwOwogfQogCiBzdGF0
aWMgdm9pZCBiY20yODM1X3NwaV9kbWFfZG9uZSh2b2lkICpkYXRhKQpAQCAtNTY2LDEwICs1NjYs
OCBAQCBzdGF0aWMgdm9pZCBiY20yODM1X3NwaV9kbWFfZG9uZSh2b2lkICpkYXRhKQogCSAqIGlz
IGNhbGxlZCB0aGUgdHgtZG1hIG11c3QgaGF2ZSBmaW5pc2hlZCAtIGNhbid0IGdldCB0byB0aGlz
CiAJICogc2l0dWF0aW9uIG90aGVyd2lzZS4uLgogCSAqLwotCWlmIChjbXB4Y2hnKCZicy0+ZG1h
X3BlbmRpbmcsIHRydWUsIGZhbHNlKSkgewotCQlkbWFlbmdpbmVfdGVybWluYXRlX2FzeW5jKGN0
bHItPmRtYV90eCk7Ci0JCWJjbTI4MzVfc3BpX3VuZG9fcHJvbG9ndWUoYnMpOwotCX0KKwlkbWFl
bmdpbmVfdGVybWluYXRlX2FzeW5jKGN0bHItPmRtYV90eCk7CisJYmNtMjgzNV9zcGlfdW5kb19w
cm9sb2d1ZShicyk7CiAKIAkvKiBhbmQgbWFyayBhcyBjb21wbGV0ZWQgKi87CiAJY29tcGxldGUo
JmN0bHItPnhmZXJfY29tcGxldGlvbik7CkBAIC02NDQsOSArNjQyLDYgQEAgc3RhdGljIGludCBi
Y20yODM1X3NwaV90cmFuc2Zlcl9vbmVfZG1hKHN0cnVjdCBzcGlfY29udHJvbGxlciAqY3RsciwK
IAkvKiBzdGFydCBUWCBlYXJseSAqLwogCWRtYV9hc3luY19pc3N1ZV9wZW5kaW5nKGN0bHItPmRt
YV90eCk7CiAKLQkvKiBtYXJrIGFzIGRtYSBwZW5kaW5nICovCi0JYnMtPmRtYV9wZW5kaW5nID0g
MTsKLQogCS8qIHNldCB0aGUgRE1BIGxlbmd0aCAqLwogCWJjbTI4MzVfd3IoYnMsIEJDTTI4MzVf
U1BJX0RMRU4sIGJzLT50eF9sZW4pOwogCkBAIC02NjIsNyArNjU3LDYgQEAgc3RhdGljIGludCBi
Y20yODM1X3NwaV90cmFuc2Zlcl9vbmVfZG1hKHN0cnVjdCBzcGlfY29udHJvbGxlciAqY3RsciwK
IAlpZiAocmV0KSB7CiAJCS8qIG5lZWQgdG8gcmVzZXQgb24gZXJyb3JzICovCiAJCWRtYWVuZ2lu
ZV90ZXJtaW5hdGVfc3luYyhjdGxyLT5kbWFfdHgpOwotCQlicy0+ZG1hX3BlbmRpbmcgPSBmYWxz
ZTsKIAkJZ290byBlcnJfcmVzZXRfaHc7CiAJfQogCkBAIC05MjcsMTEgKzkyMSwxMCBAQCBzdGF0
aWMgdm9pZCBiY20yODM1X3NwaV9oYW5kbGVfZXJyKHN0cnVjdCBzcGlfY29udHJvbGxlciAqY3Rs
ciwKIAlzdHJ1Y3QgYmNtMjgzNV9zcGkgKmJzID0gc3BpX2NvbnRyb2xsZXJfZ2V0X2RldmRhdGEo
Y3Rscik7CiAKIAkvKiBpZiBhbiBlcnJvciBvY2N1cnJlZCBhbmQgd2UgaGF2ZSBhbiBhY3RpdmUg
ZG1hLCB0aGVuIHRlcm1pbmF0ZSAqLwotCWlmIChjbXB4Y2hnKCZicy0+ZG1hX3BlbmRpbmcsIHRy
dWUsIGZhbHNlKSkgewotCQlkbWFlbmdpbmVfdGVybWluYXRlX3N5bmMoY3Rsci0+ZG1hX3R4KTsK
LQkJZG1hZW5naW5lX3Rlcm1pbmF0ZV9zeW5jKGN0bHItPmRtYV9yeCk7Ci0JCWJjbTI4MzVfc3Bp
X3VuZG9fcHJvbG9ndWUoYnMpOwotCX0KKwlkbWFlbmdpbmVfdGVybWluYXRlX3N5bmMoY3Rsci0+
ZG1hX3R4KTsKKwlkbWFlbmdpbmVfdGVybWluYXRlX3N5bmMoY3Rsci0+ZG1hX3J4KTsKKwliY20y
ODM1X3NwaV91bmRvX3Byb2xvZ3VlKGJzKTsKKwogCS8qIGFuZCByZXNldCAqLwogCWJjbTI4MzVf
c3BpX3Jlc2V0X2h3KGN0bHIpOwogfQotLSAKMi4yMy4wCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtcnBpLWtlcm5lbCBtYWlsaW5nIGxpc3QK
bGludXgtcnBpLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcnBpLWtlcm5lbAo=
