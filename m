Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7927E15CE2C
	for <lists+linux-rpi-kernel@lfdr.de>; Thu, 13 Feb 2020 23:37:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5U6LmEzexpRyw7942JMPAucnPJ8WT0jS0yYDeyiHqlg=; b=m4rfYmKGfDzci5LWYiCJBbSTF
	0pA7SoV80vKJNZ15OWvsztbEzgDQyVnuvXAD/P9lTPJZOSL0+cYIuM67FpHj6ZXPAa+ej57XKPkmI
	ZkbBmNaMc02/EsB7uzQ5M3/BGeRAfl8exWIc16XIqzRsOOOwqYBN/E+mDNPQ1ftK6ZT62HVl2hIv5
	phd6gYb5XmIOTG3y8OwsQeMeV8sM/bu/pJvyUhIL8WLPsF9TU79kVT0Ighdr6UvXdxo6nbdGX3m2q
	tEOSOG1xgSsvfhgqZNgfppEee9JxBvgqI+Qh6NpGmRShXVLVrI/OPQgX+BRLUvX2Psmq6jIk1/kn+
	JQMAqRdGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2N7D-0004B8-7Q; Thu, 13 Feb 2020 22:37:47 +0000
Received: from smtpng1.m.smailru.net ([94.100.181.251])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2N7A-0004Ah-6c
 for linux-rpi-kernel@lists.infradead.org; Thu, 13 Feb 2020 22:37:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=orpaltech.com; s=mailru; 
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject;
 bh=HwkGwoCdP0otcDBq87q9CHRHkA2jhx3jHIVRiQZZJlU=; 
 b=Aj5FqJMAkGS2WswqMMQISlNMl9T7zLUGo0QgmqZeW9M5FYX+TtNf1+hDdQCgvGBDpAJaC2gzleb3RaElf0qXmL+HevfYzzKHXEXTKmngAOEvlfWX5Rk0h+34sLrSC0aQWwwvk2A3OH5P+AbTolgf4s4AltlRVVrpI6fly2lUMqY=;
Received: by smtpng1.m.smailru.net with esmtpa (envelope-from
 <ssuloev@orpaltech.com>)
 id 1j2N77-0002JL-IB; Fri, 14 Feb 2020 01:37:41 +0300
Subject: Re: bcm2835 SPI issue
To: Phil Elwell <phil@raspberrypi.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
References: <4172f542-71a8-0186-fe4c-29a8148b7844@orpaltech.com>
 <09f2d0fd-19bc-0884-2f78-b0143f3279ef@raspberrypi.com>
From: Sergey Suloev <ssuloev@orpaltech.com>
Message-ID: <e51f3e59-0915-27b7-05a1-e1a2fb8c10d0@orpaltech.com>
Date: Fri, 14 Feb 2020 01:37:41 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <09f2d0fd-19bc-0884-2f78-b0143f3279ef@raspberrypi.com>
Content-Language: en-US
Authentication-Results: smtpng1.m.smailru.net;
 auth=pass smtp.auth=ssuloev@orpaltech.com
 smtp.mailfrom=ssuloev@orpaltech.com
X-7564579A: B8F34718100C35BD
X-77F55803: 0A44E481635329DB0E1AA8A03B392317D32E5E48865217369CDB5185B45D02FA993422D5AC3DDFC3556F68EC540A45320552C4A888444B65BD97883E3C095115A5FED6F96208BD74EC6E823C508FF739
X-7FA49CB5: 0D63561A33F958A5813F3A32C2AD95BC6542155DF90D778F329EE1DA96BDF3BD8941B15DA834481FA18204E546F3947C21E93C0F2A571C7BF6B57BC7E64490618DEB871D839B7333395957E7521B51C2545D4CF71C94A83E9FA2833FD35BB23D27C277FBC8AE2E8BF1175FABE1C0F9B6A471835C12D1D977C4224003CC836476C0CAF46E325F83A522CA9DD8327EE4930A3850AC1BE2E7358CCB3ED2A1DE2304C4224003CC836476C0CAF46E325F83A50BF2EBBBDD9D6B0F5D41B9178041F3E72623479134186CDE6BA297DBC24807EABDAD6C7F3747799A
X-D57D3AED: Y8kq8+OzVoxvgW9Op3aR8Fxwo7H2ZNxGP5qz8aO2mjTJzjHGC4ogvVuzB3zfVUBtENeZ6b5av1fnCBE34JUDkaJinJwwHx5ysVv9/YfT9ufbOiL1jHaarw==
X-Mailru-Sender: 689FA8AB762F73930799C7A3FA23A270B4F2A7411F172B99E2234D18F2E3739A778B5FB1219D8779F6BCD4B1DE95BF653AE5922765F965CDF1D7D1B96E5495AE10FCEA6DFE3E0A150D4ABDE8C577C2ED
X-Mras: Ok
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_143744_426066_3DF15CB9 
X-CRM114-Status: GOOD (  12.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [94.100.181.251 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-rpi-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

aGksIFBoaWwsCgpPbiAyLzE0LzIwIDE6MjIgQU0sIFBoaWwgRWx3ZWxsIHdyb3RlOgo+IEhpIFNl
cmdleSwKPgo+IE9uIDEzLzAyLzIwMjAgMjI6MDksIFNlcmdleSBTdWxvZXYgd3JvdGU6Cj4+IGhp
LCBOaWNvbGFzLAo+Pgo+PiBJIG5vdGljZWQgdGhhdCBiY20yODM1wqAgU1BJIGRyaXZlcsKgIGlz
bid0IGZ1bmN0aW9uaW5nIGFueW1vcmUgaW4gCj4+IGtlcm5lbHMgNS41IC0gNS42LiBJIGtub3cg
dGhpcyBiZWNhdXNlIGl0IHdhcyB1c2VkIHN1Y2Nlc3NmdWxseSB3aXRoIAo+PiBwcmV2aW91cyB2
ZXJzaW9ucyAodmVyeSBsYXRlc3QgdjQueCBhbmQgZWFybGllciB2NS54KS4KPj4KPj4gSSBhbSB0
ZXN0aW5nIHJwaTNiIGFuZCBycGkzYSvCoCBhbmQgbXVsdGlwbGUgU1BJIHBlcmlwaGVyYWxzIAo+
PiAoZGlzcGxheXMsIHdpcmVsZXNzIHRyYW5zY2VpdmVyLCBldGMpIGFuZCBub25lIG9mIHRoZW0g
YXJlIHdvcmtpbmcgCj4+IGFueW1vcmUuIEhhcmR3YXJlIGNvbm5lY3Rpb25zIHN0YXkgdGhlIHNh
bWUgYXMgYmVmb3JlIHNvIEkgZG9uJ3QgCj4+IHRoaW5rIHRoaXMgaXMgYSBoYXJkd2FyZSBpc3N1
ZS4KPj4KPj4gSSBhbSB1c2luZyB0aGUgZm9sbG93aW5nIHBhdGNoIGluIG15IGJ1aWxkIHRvIGVu
YWJsZSBTUEkgcGluczoKPj4KPj4gaHR0cHM6Ly9naXRodWIuY29tL29ycGFsdGVjaC9hcm1saW51
eC9ibG9iL21hc3Rlci9wYXRjaC9rZXJuZWwvYXJtbGludXgvc3RhYmxlL3Y1LjUvcnBpLzAwMTct
c3BpLWJjbTI4MzUtQWRkLVNQSS1jb250cm9sbGVyLXBpbnMucGF0Y2ggCj4+Cj4+Cj4+IEl0IHdh
cyBlbm91Z2ggaW4gcHJldmlvdXMga2VybmVscyBmb3IgU1BJIHRvIHdvcmsuIElzIHRoZXJlIGFu
eXRoaW5nIAo+PiBlbHNlIEkgc2hvdWxkIGRvIG5vdyA/Cj4KPiBJIHRoaW5rIHlvdSBuZWVkIHRv
IGFkZDoKPgo+IMKgwqDCoCBzdGF0dXMgPSAib2theSI7Cj4KPiBPdGhlcndpc2UsIHRoZSBzcGkg
bm9kZSB3aWxsIHJlbWFpbiBkaXNhYmxlZC4KPgo+IFBoaWwKPgp0aGFua3MgZm9yIHJlcGx5LgoK
SXQgaXMgYWxyZWFkeSBkb25lIGJ5IHRoZSBkdC1vdmVybGF5cy4KCkFnYWluOiBpdCB3YXMgd29y
a2luZyBiZWZvcmUhIEl0IGp1c3Qgc3RvcHBlZCB3b3JraW5nIGFmdGVyIG1vdmluZyB0byA1LjUu
CgoKU2VyZ2V5CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtcnBpLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtcnBpLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcnBpLWtlcm5lbAo=
