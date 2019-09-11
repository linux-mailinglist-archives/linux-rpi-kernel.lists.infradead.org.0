Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA9E1AFA9A
	for <lists+linux-rpi-kernel@lfdr.de>; Wed, 11 Sep 2019 12:39:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:MIME-Version:Subject:Date:From:
	References:In-Reply-To:Message-Id:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vaSkhMBfbE8nYO5qPGH7/KDL3nXjUjcwqfVNaWYMqJc=; b=rthNViTnRRWgAx
	yI2ziOJkcKtmbta1aDTe+G19ExBH4XqbhlstGHmoSPTflcrj+A7JKMyjgZrY8oVxA1iuLiTPUt2mP
	k9qqwQ1fIfjPiMXL32mum4IzHhSjokuLXSDh3EWD1Ir5tQQPWzBE6H2kYz9MW5fMQQT27T/mEWhI6
	BcYCJrp1iCtTx5DWPW2YHQCTk1CANxs90GIG/DOcUJx/d027/KcW7vUTO87BqydU2xmWwcOn2+ko+
	g4zXGQDUYjg145G8nDNRUQ8PrTbnEiPXcKjB08+HoZHJM6AvqR7PMmpTlZa1gR7ucx2mfpFDSWMmI
	5V4xOA4YrHDlMyGoQUAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i802H-0000sA-ON; Wed, 11 Sep 2019 10:39:41 +0000
Received: from mailout2.hostsharing.net ([2a01:37:3000::53df:4ee9:0])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i802E-0000rn-N3
 for linux-rpi-kernel@lists.infradead.org; Wed, 11 Sep 2019 10:39:40 +0000
Received: from h08.hostsharing.net (h08.hostsharing.net
 [IPv6:2a01:37:1000::53df:5f1c:0])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client CN "*.hostsharing.net",
 Issuer "COMODO RSA Domain Validation Secure Server CA" (not verified))
 by mailout2.hostsharing.net (Postfix) with ESMTPS id 7D40610189D0E;
 Wed, 11 Sep 2019 12:39:37 +0200 (CEST)
Received: from localhost (p57BD772B.dip0.t-ipconnect.de [87.189.119.43])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by h08.hostsharing.net (Postfix) with ESMTPSA id 3DA656124A10;
 Wed, 11 Sep 2019 12:39:37 +0200 (CEST)
X-Mailbox-Line: From 73cf37be56eb4cbe6f696057c719f3a38cbaf26e Mon Sep 17
 00:00:00 2001
Message-Id: <73cf37be56eb4cbe6f696057c719f3a38cbaf26e.1568187525.git.lukas@wunner.de>
In-Reply-To: <cover.1568187525.git.lukas@wunner.de>
References: <cover.1568187525.git.lukas@wunner.de>
From: Lukas Wunner <lukas@wunner.de>
Date: Wed, 11 Sep 2019 12:15:30 +0200
Subject: [PATCH v2 02/10] dmaengine: bcm2835: Allow cyclic transactions
 without interrupt
MIME-Version: 1.0
To: Mark Brown <broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_033938_907338_843BCF75 
X-CRM114-Status: GOOD (  13.80  )
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

VGhlIEJDTTI4MzUgRE1BIGRyaXZlciBjdXJyZW50bHkgcmVxdWVzdHMgYW4gaW50ZXJydXB0IGZy
b20gdGhlCmNvbnRyb2xsZXIgcmVnYXJkbGVzcyB3aGV0aGVyIG9yIG5vdCB0aGUgY2xpZW50IGhh
cyBwYXNzZWQgaW4gdGhlCkRNQV9QUkVQX0lOVEVSUlVQVCBmbGFnLiBUaGlzIGNhdXNlcyB1bm5l
Y2Vzc2FyeSBvdmVyaGVhZCBmb3IgY3ljbGljCnRyYW5zYWN0aW9ucyB3aGljaCBkbyBub3QgbmVl
ZCBhbiBpbnRlcnJ1cHQgYWZ0ZXIgZWFjaCBwZXJpb2QuCgpXZSdyZSBhYm91dCB0byBhZGQgc3Vj
aCBhIHVzZSBjYXNlLCBuYW1lbHkgY3ljbGljIGNsZWFyaW5nIG9mIHRoZSBTUEkKY29udHJvbGxl
cidzIFJYIEZJRk8sIHNvIGFtZW5kIHRoZSBETUEgZHJpdmVyIHRvIHJlcXVlc3QgYW4gaW50ZXJy
dXB0Cm9ubHkgaWYgRE1BX1BSRVBfSU5URVJSVVBUIHdhcyBwYXNzZWQgaW4uIElnbm9yZSB0aGUg
cGVyaW9kX2xlbiBmb3IKc3VjaCB0cmFuc2FjdGlvbnMgYW5kIHNldCBpdCB0byB0aGUgYnVmZmVy
IGxlbmd0aCB0byBtYWtlIHRoZSBkcml2ZXIncwpjYWxjdWxhdGlvbnMgd29yay4KClRlc3RlZC1i
eTogTnVubyBTw6EgPG51bm8uc2FAYW5hbG9nLmNvbT4KVGVzdGVkLWJ5OiBOb3JhbGYgVHLDuG5u
ZXMgPG5vcmFsZkB0cm9ubmVzLm9yZz4KU2lnbmVkLW9mZi1ieTogTHVrYXMgV3VubmVyIDxsdWth
c0B3dW5uZXIuZGU+CkFja2VkLWJ5OiBWaW5vZCBLb3VsIDx2a291bEBrZXJuZWwub3JnPgpBY2tl
ZC1ieTogU3RlZmFuIFdhaHJlbiA8d2FocmVuc3RAZ214Lm5ldD4KQWNrZWQtYnk6IE1hcnRpbiBT
cGVybCA8a2VybmVsQG1hcnRpbi5zcGVybC5vcmc+CkNjOiBGbG9yaWFuIEthdWVyIDxmbG9yaWFu
LmthdWVyQGtvYWxvLmRlPgotLS0KIGRyaXZlcnMvZG1hL2JjbTI4MzUtZG1hLmMgfCAxMiArKysr
KysrKysrLS0KIDEgZmlsZSBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygt
KQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hL2JjbTI4MzUtZG1hLmMgYi9kcml2ZXJzL2RtYS9i
Y20yODM1LWRtYS5jCmluZGV4IDUyM2M1MDdhZDY5ZS4uYTY1NTE0ZmNiN2YyIDEwMDY0NAotLS0g
YS9kcml2ZXJzL2RtYS9iY20yODM1LWRtYS5jCisrKyBiL2RyaXZlcnMvZG1hL2JjbTI4MzUtZG1h
LmMKQEAgLTY5MSw3ICs2OTEsNyBAQCBzdGF0aWMgc3RydWN0IGRtYV9hc3luY190eF9kZXNjcmlw
dG9yICpiY20yODM1X2RtYV9wcmVwX2RtYV9jeWNsaWMoCiAJc3RydWN0IGJjbTI4MzVfZGVzYyAq
ZDsKIAlkbWFfYWRkcl90IHNyYywgZHN0OwogCXUzMiBpbmZvID0gQkNNMjgzNV9ETUFfV0FJVF9S
RVNQOwotCXUzMiBleHRyYSA9IEJDTTI4MzVfRE1BX0lOVF9FTjsKKwl1MzIgZXh0cmEgPSAwOwog
CXNpemVfdCBtYXhfbGVuID0gYmNtMjgzNV9kbWFfbWF4X2ZyYW1lX2xlbmd0aChjKTsKIAlzaXpl
X3QgZnJhbWVzOwogCkBAIC03MDcsNiArNzA3LDExIEBAIHN0YXRpYyBzdHJ1Y3QgZG1hX2FzeW5j
X3R4X2Rlc2NyaXB0b3IgKmJjbTI4MzVfZG1hX3ByZXBfZG1hX2N5Y2xpYygKIAkJcmV0dXJuIE5V
TEw7CiAJfQogCisJaWYgKGZsYWdzICYgRE1BX1BSRVBfSU5URVJSVVBUKQorCQlleHRyYSB8PSBC
Q00yODM1X0RNQV9JTlRfRU47CisJZWxzZQorCQlwZXJpb2RfbGVuID0gYnVmX2xlbjsKKwogCS8q
CiAJICogd2FybiBpZiBidWZfbGVuIGlzIG5vdCBhIG11bHRpcGxlIG9mIHBlcmlvZF9sZW4gLSB0
aGlzIG1heSBsZWVkCiAJICogdG8gdW5leHBlY3RlZCBsYXRlbmNpZXMgZm9yIGludGVycnVwdHMg
YW5kIHRodXMgYXVkaWFibGUgY2xpY2tzCkBAIC03NzgsNyArNzgzLDEwIEBAIHN0YXRpYyBpbnQg
YmNtMjgzNV9kbWFfdGVybWluYXRlX2FsbChzdHJ1Y3QgZG1hX2NoYW4gKmNoYW4pCiAKIAkvKiBz
dG9wIERNQSBhY3Rpdml0eSAqLwogCWlmIChjLT5kZXNjKSB7Ci0JCXZjaGFuX3Rlcm1pbmF0ZV92
ZGVzYygmYy0+ZGVzYy0+dmQpOworCQlpZiAoYy0+ZGVzYy0+dmQudHguZmxhZ3MgJiBETUFfUFJF
UF9JTlRFUlJVUFQpCisJCQl2Y2hhbl90ZXJtaW5hdGVfdmRlc2MoJmMtPmRlc2MtPnZkKTsKKwkJ
ZWxzZQorCQkJdmNoYW5fdmRlc2NfZmluaSgmYy0+ZGVzYy0+dmQpOwogCQljLT5kZXNjID0gTlVM
TDsKIAkJYmNtMjgzNV9kbWFfYWJvcnQoYyk7CiAJfQotLSAKMi4yMy4wCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtcnBpLWtlcm5lbCBtYWls
aW5nIGxpc3QKbGludXgtcnBpLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcnBpLWtlcm5lbAo=
