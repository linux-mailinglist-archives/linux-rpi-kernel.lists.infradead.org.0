Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F9B0AFB06
	for <lists+linux-rpi-kernel@lfdr.de>; Wed, 11 Sep 2019 13:02:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:MIME-Version:Subject:Date:From:
	References:In-Reply-To:Message-Id:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+nTE8RsonXA/PBaT+T0sQBUKqRrD7VtOrIukEoikuCQ=; b=pQQG+PsNGPiPht
	Qzn7lKNCS/Mt2TWumdcvlukKp163HcVyDuOLz2SH7+dTH/D55EQ8cYbQUU6MLJWM4fKEZPSgvom4L
	Lwdu1albjCKF4GbU5fze0fh2YHmFPd9z2VTfVj6mjG0sQmgYyOkU4o7deGGRxzOiE6XPMLXE3Rs26
	DAfr/isF1RsRH5E/vgp+ESZKlVq4Q3H8uT8qRXhu5SFi3vUuK5oY582HqqZsfw+P8LmwPJIJYuOSo
	5kuZU/8leHmOTm4JsSy3jR766LrNLY0MScHivx52PvBXtsVSe/P0cifRp+DEUyeSI0fjj3aUeKwWC
	GlrU3NHx3KaQQrZDibbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i80O1-0002p1-7U; Wed, 11 Sep 2019 11:02:09 +0000
Received: from mailout1.hostsharing.net ([2a01:37:1000::53df:5fcc:0])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i80Nx-0002oR-L8
 for linux-rpi-kernel@lists.infradead.org; Wed, 11 Sep 2019 11:02:08 +0000
Received: from h08.hostsharing.net (h08.hostsharing.net [83.223.95.28])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client CN "*.hostsharing.net",
 Issuer "COMODO RSA Domain Validation Secure Server CA" (not verified))
 by mailout1.hostsharing.net (Postfix) with ESMTPS id 6D3BA101903B3;
 Wed, 11 Sep 2019 13:02:04 +0200 (CEST)
Received: from localhost (p57BD772B.dip0.t-ipconnect.de [87.189.119.43])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by h08.hostsharing.net (Postfix) with ESMTPSA id 2E5C86124A1A;
 Wed, 11 Sep 2019 13:02:04 +0200 (CEST)
X-Mailbox-Line: From b2286c904408745192e4beb3de3c88f73e4a7210 Mon Sep 17
 00:00:00 2001
Message-Id: <b2286c904408745192e4beb3de3c88f73e4a7210.1568187525.git.lukas@wunner.de>
In-Reply-To: <cover.1568187525.git.lukas@wunner.de>
References: <cover.1568187525.git.lukas@wunner.de>
From: Lukas Wunner <lukas@wunner.de>
Date: Wed, 11 Sep 2019 12:15:30 +0200
Subject: [PATCH v2 09/10] dmaengine: bcm2835: Avoid accessing memory when
 copying zeroes
MIME-Version: 1.0
To: Mark Brown <broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_040206_003279_F2F538CA 
X-CRM114-Status: GOOD (  13.69  )
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

VGhlIEJDTTI4MzUgRE1BIGNvbnRyb2xsZXIgaXMgY2FwYWJsZSBvZiBzeW50aGVzaXppbmcgemVy
b2VzIGluc3RlYWQgb2YKY29weWluZyB0aGVtIGZyb20gYSBzb3VyY2UgYWRkcmVzcy4gVGhlIGZl
YXR1cmUgaXMgZW5hYmxlZCBieSBzZXR0aW5nCnRoZSBTUkNfSUdOT1JFIGJpdCBpbiB0aGUgVHJh
bnNmZXIgSW5mb3JtYXRpb24gZmllbGQgb2YgYSBDb250cm9sIEJsb2NrOgoKIkRvIG5vdCBwZXJm
b3JtIHNvdXJjZSByZWFkcy4KIEluIGFkZGl0aW9uLCBkZXN0aW5hdGlvbiB3cml0ZXMgd2lsbCB6
ZXJvIGFsbCB0aGUgd3JpdGUgc3Ryb2Jlcy4KIFRoaXMgaXMgdXNlZCBmb3IgZmFzdCBjYWNoZSBm
aWxsIG9wZXJhdGlvbnMuIgpodHRwczovL3d3dy5yYXNwYmVycnlwaS5vcmcvYXBwL3VwbG9hZHMv
MjAxMi8wMi9CQ00yODM1LUFSTS1QZXJpcGhlcmFscy5wZGYKClRoZSBmZWF0dXJlIGlzIG9ubHkg
YXZhaWxhYmxlIG9uIDggb2YgdGhlIDE2IGNoYW5uZWxzLiBUaGUgb3RoZXJzIGFyZQpzby1jYWxs
ZWQgImxpdGUiIGNoYW5uZWxzIHdpdGggYSBsaW1pdGVkIGZlYXR1cmUgc2V0IGFuZCBwZXJmb3Jt
YW5jZS4KCkVuYWJsZSB0aGUgZmVhdHVyZSBpZiBhIGN5Y2xpYyB0cmFuc2FjdGlvbiBjb3BpZXMg
ZnJvbSB0aGUgemVybyBwYWdlLgpUaGlzIHJlZHVjZXMgdHJhZmZpYyBvbiB0aGUgbWVtb3J5IGJ1
cy4KCkEgZm9ydGhjb21pbmcgdXNlIGNhc2UgaXMgdGhlIEJDTTI4MzUgU1BJIGRyaXZlciwgd2hp
Y2ggd2lsbCBjeWNsaWNhbGx5CmNvcHkgZnJvbSB0aGUgemVybyBwYWdlIHRvIHRoZSBUWCBGSUZP
LiBUaGUgaWRlYSB0byB1c2UgU1JDX0lHTk9SRSB3YXMKdGFrZW4gZnJvbSBhbiBhbmNpZW50IEdp
dEh1YiBjb252ZXJzYXRpb24gYmV0d2VlbiBNYXJ0aW4gYW5kIE5vcmFsZjoKaHR0cHM6Ly9naXRo
dWIuY29tL21zcGVybC9zcGktYmNtMjgzNS9pc3N1ZXMvMTMjaXNzdWVjb21tZW50LTk4MTgwNDUx
CgpUZXN0ZWQtYnk6IE51bm8gU8OhIDxudW5vLnNhQGFuYWxvZy5jb20+ClRlc3RlZC1ieTogTm9y
YWxmIFRyw7hubmVzIDxub3JhbGZAdHJvbm5lcy5vcmc+ClNpZ25lZC1vZmYtYnk6IEx1a2FzIFd1
bm5lciA8bHVrYXNAd3VubmVyLmRlPgpBY2tlZC1ieTogVmlub2QgS291bCA8dmtvdWxAa2VybmVs
Lm9yZz4KQWNrZWQtYnk6IFN0ZWZhbiBXYWhyZW4gPHdhaHJlbnN0QGdteC5uZXQ+CkFja2VkLWJ5
OiBNYXJ0aW4gU3BlcmwgPGtlcm5lbEBtYXJ0aW4uc3Blcmwub3JnPgpDYzogRmxvcmlhbiBLYXVl
ciA8Zmxvcmlhbi5rYXVlckBrb2Fsby5kZT4KLS0tCiBkcml2ZXJzL2RtYS9iY20yODM1LWRtYS5j
IHwgMTkgKysrKysrKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDE5IGluc2VydGlvbnMo
KykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS9iY20yODM1LWRtYS5jIGIvZHJpdmVycy9kbWEv
YmNtMjgzNS1kbWEuYwppbmRleCAxNDM1OGZhZjNiZmYuLjY3MTAwZTRlMTA4MyAxMDA2NDQKLS0t
IGEvZHJpdmVycy9kbWEvYmNtMjgzNS1kbWEuYworKysgYi9kcml2ZXJzL2RtYS9iY20yODM1LWRt
YS5jCkBAIC00MiwxMSArNDIsMTQgQEAKICAqIEBkZGV2OiBETUEgZGV2aWNlCiAgKiBAYmFzZTog
YmFzZSBhZGRyZXNzIG9mIHJlZ2lzdGVyIG1hcAogICogQGRtYV9wYXJtczogRE1BIHBhcmFtZXRl
cnMgKHRvIGNvbnZleSAxIEdCeXRlIG1heCBzZWdtZW50IHNpemUgdG8gY2xpZW50cykKKyAqIEB6
ZXJvX3BhZ2U6IGJ1cyBhZGRyZXNzIG9mIHplcm8gcGFnZSAodG8gZGV0ZWN0IHRyYW5zYWN0aW9u
cyBjb3B5aW5nIGZyb20KKyAqCXplcm8gcGFnZSBhbmQgYXZvaWQgYWNjZXNzaW5nIG1lbW9yeSBp
ZiBzbykKICAqLwogc3RydWN0IGJjbTI4MzVfZG1hZGV2IHsKIAlzdHJ1Y3QgZG1hX2RldmljZSBk
ZGV2OwogCXZvaWQgX19pb21lbSAqYmFzZTsKIAlzdHJ1Y3QgZGV2aWNlX2RtYV9wYXJhbWV0ZXJz
IGRtYV9wYXJtczsKKwlkbWFfYWRkcl90IHplcm9fcGFnZTsKIH07CiAKIHN0cnVjdCBiY20yODM1
X2RtYV9jYiB7CkBAIC02OTMsNiArNjk2LDcgQEAgc3RhdGljIHN0cnVjdCBkbWFfYXN5bmNfdHhf
ZGVzY3JpcHRvciAqYmNtMjgzNV9kbWFfcHJlcF9kbWFfY3ljbGljKAogCXNpemVfdCBwZXJpb2Rf
bGVuLCBlbnVtIGRtYV90cmFuc2Zlcl9kaXJlY3Rpb24gZGlyZWN0aW9uLAogCXVuc2lnbmVkIGxv
bmcgZmxhZ3MpCiB7CisJc3RydWN0IGJjbTI4MzVfZG1hZGV2ICpvZCA9IHRvX2JjbTI4MzVfZG1h
X2RldihjaGFuLT5kZXZpY2UpOwogCXN0cnVjdCBiY20yODM1X2NoYW4gKmMgPSB0b19iY20yODM1
X2RtYV9jaGFuKGNoYW4pOwogCXN0cnVjdCBiY20yODM1X2Rlc2MgKmQ7CiAJZG1hX2FkZHJfdCBz
cmMsIGRzdDsKQEAgLTc0Myw2ICs3NDcsMTAgQEAgc3RhdGljIHN0cnVjdCBkbWFfYXN5bmNfdHhf
ZGVzY3JpcHRvciAqYmNtMjgzNV9kbWFfcHJlcF9kbWFfY3ljbGljKAogCQlkc3QgPSBjLT5jZmcu
ZHN0X2FkZHI7CiAJCXNyYyA9IGJ1Zl9hZGRyOwogCQlpbmZvIHw9IEJDTTI4MzVfRE1BX0RfRFJF
USB8IEJDTTI4MzVfRE1BX1NfSU5DOworCisJCS8qIG5vbi1saXRlIGNoYW5uZWxzIGNhbiB3cml0
ZSB6ZXJvZXMgdy9vIGFjY2Vzc2luZyBtZW1vcnkgKi8KKwkJaWYgKGJ1Zl9hZGRyID09IG9kLT56
ZXJvX3BhZ2UgJiYgIWMtPmlzX2xpdGVfY2hhbm5lbCkKKwkJCWluZm8gfD0gQkNNMjgzNV9ETUFf
U19JR05PUkU7CiAJfQogCiAJLyogY2FsY3VsYXRlIG51bWJlciBvZiBmcmFtZXMgKi8KQEAgLTg0
NSw2ICs4NTMsOSBAQCBzdGF0aWMgdm9pZCBiY20yODM1X2RtYV9mcmVlKHN0cnVjdCBiY20yODM1
X2RtYWRldiAqb2QpCiAJCWxpc3RfZGVsKCZjLT52Yy5jaGFuLmRldmljZV9ub2RlKTsKIAkJdGFz
a2xldF9raWxsKCZjLT52Yy50YXNrKTsKIAl9CisKKwlkbWFfdW5tYXBfcGFnZV9hdHRycyhvZC0+
ZGRldi5kZXYsIG9kLT56ZXJvX3BhZ2UsIFBBR0VfU0laRSwKKwkJCSAgICAgRE1BX1RPX0RFVklD
RSwgRE1BX0FUVFJfU0tJUF9DUFVfU1lOQyk7CiB9CiAKIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgb2Zf
ZGV2aWNlX2lkIGJjbTI4MzVfZG1hX29mX21hdGNoW10gPSB7CkBAIC05MjcsNiArOTM4LDE0IEBA
IHN0YXRpYyBpbnQgYmNtMjgzNV9kbWFfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRl
dikKIAogCXBsYXRmb3JtX3NldF9kcnZkYXRhKHBkZXYsIG9kKTsKIAorCW9kLT56ZXJvX3BhZ2Ug
PSBkbWFfbWFwX3BhZ2VfYXR0cnMob2QtPmRkZXYuZGV2LCBaRVJPX1BBR0UoMCksIDAsCisJCQkJ
CSAgIFBBR0VfU0laRSwgRE1BX1RPX0RFVklDRSwKKwkJCQkJICAgRE1BX0FUVFJfU0tJUF9DUFVf
U1lOQyk7CisJaWYgKGRtYV9tYXBwaW5nX2Vycm9yKG9kLT5kZGV2LmRldiwgb2QtPnplcm9fcGFn
ZSkpIHsKKwkJZGV2X2VycigmcGRldi0+ZGV2LCAiRmFpbGVkIHRvIG1hcCB6ZXJvIHBhZ2VcbiIp
OworCQlyZXR1cm4gLUVOT01FTTsKKwl9CisKIAkvKiBSZXF1ZXN0IERNQSBjaGFubmVsIG1hc2sg
ZnJvbSBkZXZpY2UgdHJlZSAqLwogCWlmIChvZl9wcm9wZXJ0eV9yZWFkX3UzMihwZGV2LT5kZXYu
b2Zfbm9kZSwKIAkJCSJicmNtLGRtYS1jaGFubmVsLW1hc2siLAotLSAKMi4yMy4wCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtcnBpLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtcnBpLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcnBpLWtlcm5lbAo=
