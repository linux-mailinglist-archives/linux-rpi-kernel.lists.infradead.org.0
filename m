Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3820D15CE65
	for <lists+linux-rpi-kernel@lfdr.de>; Thu, 13 Feb 2020 23:58:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HTf96M/R4ZQX8BRY7/jtGUmajC2nhLuVbllqUk4r+So=; b=s8p3DDn50cdOktkMy1HzsuEBV
	pzxd73u7JkCFJvJy7QcB1iFf2q0cPJ+3vBAWXV2AFn8RMywBA28RMiLvfQuLKtX3QBELd69obZc8q
	QrrUIn1avIt42D/GOiZfa8AegqGvrXdLpoSjmUEFg0WPoxldfeEPHQKlMNkjZNlwDVvAi1FqP+Bnb
	z6i1sL4xVsL7pyp1sGQj5u7raKiEc75xb5X4m/YmLGHIgfEVZKArUAk4U2hPTlXzwIqjiVjMYn4Bl
	5oU5jTknj+kR5Wc4/ILck8uhmVbarmazXmf2NbxC2/Pf5ai0BRyaGsfPSceIgxBpCrOR9oz7UD4e8
	oKVI/xcyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2NR8-0002CS-Jo; Thu, 13 Feb 2020 22:58:22 +0000
Received: from smtpng2.m.smailru.net ([94.100.179.3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2NR5-0002Bp-EQ
 for linux-rpi-kernel@lists.infradead.org; Thu, 13 Feb 2020 22:58:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=orpaltech.com; s=mailru; 
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject;
 bh=soTPxmtIEMJsVOV2VAU49Ux3YkfwGUh07Pcc0E5K2p0=; 
 b=eOg6jBSlSdUT9tEzxlaGkTLD294Y9BMVGrdt938JDlKTizHfPanb1QLOMUyPVyjroHo+YypOpjgQscL21QF30xr6vBUmv6V9npIjumK7/pEMlwicctgkIBDo6tURbX6/9IVD7TJqUh9LED1WegwUtWKoMJmzZX/mf7zm8SM3/Xk=;
Received: by smtpng2.m.smailru.net with esmtpa (envelope-from
 <ssuloev@orpaltech.com>)
 id 1j2NR1-0005sD-6e; Fri, 14 Feb 2020 01:58:15 +0300
Subject: Re: bcm2835 SPI issue
To: Phil Elwell <phil@raspberrypi.com>
References: <4172f542-71a8-0186-fe4c-29a8148b7844@orpaltech.com>
 <09f2d0fd-19bc-0884-2f78-b0143f3279ef@raspberrypi.com>
 <e51f3e59-0915-27b7-05a1-e1a2fb8c10d0@orpaltech.com>
 <cf8c2169-7987-5b82-1533-d9a34cd09b41@raspberrypi.com>
From: Sergey Suloev <ssuloev@orpaltech.com>
Message-ID: <2b973c0c-08ec-8b6a-1a97-4d676fdb2dc6@orpaltech.com>
Date: Fri, 14 Feb 2020 01:58:14 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <cf8c2169-7987-5b82-1533-d9a34cd09b41@raspberrypi.com>
Content-Language: en-US
Authentication-Results: smtpng2.m.smailru.net;
 auth=pass smtp.auth=ssuloev@orpaltech.com
 smtp.mailfrom=ssuloev@orpaltech.com
X-7564579A: B8F34718100C35BD
X-77F55803: 0A44E481635329DB0E1AA8A03B392317D32E5E48865217369CDB5185B45D02FA993422D5AC3DDFC3556F68EC540A45328E0E727ED1CD7EFCB269636821986601478D4FB570D49342D13A8F1ABAE2A586
X-7FA49CB5: 0D63561A33F958A522E1A17A1D8F0401FFBF734393EFDF654A6275DE01DE06B18941B15DA834481FA18204E546F3947C093C2F12201C912AF6B57BC7E64490618DEB871D839B7333395957E7521B51C2545D4CF71C94A83E9FA2833FD35BB23D27C277FBC8AE2E8BE2CCD8F0CAA010FB389733CBF5DBD5E9B5C8C57E37DE458B4C7702A67D5C33162DBA43225CD8A89FB26E97DCB74E6252262FEC7FBD7D1F5BB5C8C57E37DE458B4C7702A67D5C3316FA3894348FB808DB48C21F01D89DB561574AF45C6390F7469DAA53EE0834AAEE
X-D57D3AED: Y8kq8+OzVoxvgW9Op3aR8Fxwo7H2ZNxGP5qz8aO2mjTJzjHGC4ogvVuzB3zfVUBtENeZ6b5av1fnCBE34JUDkaJinJwwHx5ysVv9/YfT9uccQVYwite5Tg==
X-Mailru-Sender: 689FA8AB762F73930799C7A3FA23A270E14777B4624677AA3813980B12F859C1778B5FB1219D8779F6BCD4B1DE95BF653AE5922765F965CDF1D7D1B96E5495AE10FCEA6DFE3E0A150D4ABDE8C577C2ED
X-Mras: Ok
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_145819_665889_3B17A67F 
X-CRM114-Status: GOOD (  16.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [94.100.179.3 listed in list.dnswl.org]
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

aGksIFBoaWwsCgpPbiAyLzE0LzIwIDE6NDUgQU0sIFBoaWwgRWx3ZWxsIHdyb3RlOgo+IEhpIFNl
cmdleSwKPgo+IE9uIDEzLzAyLzIwMjAgMjI6MzcsIFNlcmdleSBTdWxvZXYgd3JvdGU6Cj4+IGhp
LCBQaGlsLAo+Pgo+PiBPbiAyLzE0LzIwIDE6MjIgQU0sIFBoaWwgRWx3ZWxsIHdyb3RlOgo+Pj4g
SGkgU2VyZ2V5LAo+Pj4KPj4+IE9uIDEzLzAyLzIwMjAgMjI6MDksIFNlcmdleSBTdWxvZXYgd3Jv
dGU6Cj4+Pj4gaGksIE5pY29sYXMsCj4+Pj4KPj4+PiBJIG5vdGljZWQgdGhhdCBiY20yODM1wqAg
U1BJIGRyaXZlcsKgIGlzbid0IGZ1bmN0aW9uaW5nIGFueW1vcmUgaW4gCj4+Pj4ga2VybmVscyA1
LjUgLSA1LjYuIEkga25vdyB0aGlzIGJlY2F1c2UgaXQgd2FzIHVzZWQgc3VjY2Vzc2Z1bGx5IAo+
Pj4+IHdpdGggcHJldmlvdXMgdmVyc2lvbnMgKHZlcnkgbGF0ZXN0IHY0LnggYW5kIGVhcmxpZXIg
djUueCkuCj4+Pj4KPj4+PiBJIGFtIHRlc3RpbmcgcnBpM2IgYW5kIHJwaTNhK8KgIGFuZCBtdWx0
aXBsZSBTUEkgcGVyaXBoZXJhbHMgCj4+Pj4gKGRpc3BsYXlzLCB3aXJlbGVzcyB0cmFuc2NlaXZl
ciwgZXRjKSBhbmQgbm9uZSBvZiB0aGVtIGFyZSB3b3JraW5nIAo+Pj4+IGFueW1vcmUuIEhhcmR3
YXJlIGNvbm5lY3Rpb25zIHN0YXkgdGhlIHNhbWUgYXMgYmVmb3JlIHNvIEkgZG9uJ3QgCj4+Pj4g
dGhpbmsgdGhpcyBpcyBhIGhhcmR3YXJlIGlzc3VlLgo+Pj4+Cj4+Pj4gSSBhbSB1c2luZyB0aGUg
Zm9sbG93aW5nIHBhdGNoIGluIG15IGJ1aWxkIHRvIGVuYWJsZSBTUEkgcGluczoKPj4+Pgo+Pj4+
IGh0dHBzOi8vZ2l0aHViLmNvbS9vcnBhbHRlY2gvYXJtbGludXgvYmxvYi9tYXN0ZXIvcGF0Y2gv
a2VybmVsL2FybWxpbnV4L3N0YWJsZS92NS41L3JwaS8wMDE3LXNwaS1iY20yODM1LUFkZC1TUEkt
Y29udHJvbGxlci1waW5zLnBhdGNoIAo+Pj4+Cj4+Pj4KPj4+PiBJdCB3YXMgZW5vdWdoIGluIHBy
ZXZpb3VzIGtlcm5lbHMgZm9yIFNQSSB0byB3b3JrLiBJcyB0aGVyZSAKPj4+PiBhbnl0aGluZyBl
bHNlIEkgc2hvdWxkIGRvIG5vdyA/Cj4+Pgo+Pj4gSSB0aGluayB5b3UgbmVlZCB0byBhZGQ6Cj4+
Pgo+Pj4gwqDCoMKgIHN0YXR1cyA9ICJva2F5IjsKPj4+Cj4+PiBPdGhlcndpc2UsIHRoZSBzcGkg
bm9kZSB3aWxsIHJlbWFpbiBkaXNhYmxlZC4KPj4+Cj4+PiBQaGlsCj4+Pgo+PiB0aGFua3MgZm9y
IHJlcGx5Lgo+Pgo+PiBJdCBpcyBhbHJlYWR5IGRvbmUgYnkgdGhlIGR0LW92ZXJsYXlzLgo+Pgo+
PiBBZ2FpbjogaXQgd2FzIHdvcmtpbmcgYmVmb3JlISBJdCBqdXN0IHN0b3BwZWQgd29ya2luZyBh
ZnRlciBtb3ZpbmcgdG8gCj4+IDUuNS4KPgo+IEkgZG9uJ3QgdGhpbmsgdGhhdCBiY20yODM3LXJw
aS0zLWIuZHRiIGhhcyBjaGFuZ2VkIHNpZ25pZmljYW50bHkgCj4gYmV0d2VlbiA1LjQgYW5kIDUu
NS4KPiBIYXZlIHlvdSB0cmllZCB0aGUgNS41IERUQiB3aXRoIHRoZSA1LjQga2VybmVsPwo+Cj4g
UGhpbAo+Cm5vLCBub3QgeWV0LgoKCkkgZm9yZ290IHRvIGF0dGFjaCBsb2dzIGluIG15IHByZXZp
b3VzIGVtYWlsLCBoZXJlIGl0IGlzIApodHRwczovL3Bhc3RlYmluLmNvbS92NW1GcE4yRwoKIEZy
b20gdGhpcyBsb2cgeW91IGNhbiBzZWUgdGhhdCBTUEkgZGlzcGxheSAid29ya3MiIHdlbGw6Cgpy
b290QHJwaTMtYi1hcm0tc3RyZXRjaDp+IyBkbWVzZyB8IGdyZXAgc3BpClvCoMKgwqAgMy4wMTE1
NjddIHNwaSBzcGkwLjE6IHNldHRpbmcgdXAgbmF0aXZlLUNTMSB0byB1c2UgR1BJTwpbwqDCoMKg
IDMuMDE5NjIwXSBzcGkgc3BpMC4wOiBzZXR0aW5nIHVwIG5hdGl2ZS1DUzAgdG8gdXNlIEdQSU8K
W8KgwqDCoCAzLjM2NzYzN10gW2RybV0gSW5pdGlhbGl6ZWQgaWxpOTQ4NiAxLjAuMCAyMDE3MTIw
OCBmb3Igc3BpMC4wIG9uIAptaW5vciAxClvCoMKgwqAgMy4zOTAxMDldIGFkczc4NDYgc3BpMC4x
OiB0b3VjaHNjcmVlbiwgaXJxIDk0ClvCoMKgwqAgMy4zOTYzMDZdIGlucHV0OiBBRFM3ODQ2IFRv
dWNoc2NyZWVuIGFzIAovZGV2aWNlcy9wbGF0Zm9ybS9zb2MvM2YyMDQwMDAuc3BpL3NwaV9tYXN0
ZXIvc3BpMC9zcGkwLjEvaW5wdXQvaW5wdXQwClvCoMKgwqAgMy40MDg0ODZdIGlsaTk0ODYgc3Bp
MC4wOiB3YXZlc2hhcmUzNV9lbmFibGU6IGVudGVyClvCoMKgIDM3LjgyMTExMl0gaWxpOTQ4NiBz
cGkwLjA6IGZiMTogaWxpOTQ4NmRybWZiIGZyYW1lIGJ1ZmZlciBkZXZpY2UKCgpCdXQgdGhlIGRp
c3BsYXkgaXNuJ3Qgd29ya2luZy4gVGhlIHNhbWUgc2NlbmFyaW8gd2l0aCBhbnkgb3RoZXIgU1BJ
IApwZXJpcGhlcmFsIDogbm8gZXJyb3JzIGluIHRoZSBsb2cgYnV0IHRoZSBwZXJpcGhlcmFsIGlz
IG1hbGZ1bmN0aW9uaW5nLgoKSSBhbSBub3QgYSBiaWcgZXhwZXJ0IGluIFNQSSwgYnV0IEkgY29u
bmVjdGVkIG15IG9zY2lsbG9zY29wZSBhbmQgSSBjYW4gCnNlZSBzb21lIGFjdGl2aXR5IG9uIENM
SyBhbmQgTU9TSS4KCkFsbCB0aGlzIG1ha2VzIG1lIHRoaW5rIHRoYXQgY3VycmVudCBTUEkgZHJp
dmVyIGRvZXNuJ3QgcHJvZHVjZSB0aGUgCiJjb3JyZWN0IiBTUEkgcHJvdG9jb2wgbWVzc2FnZXMg
YW55bW9yZS4KCgpTZXJnZXkKCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LXJwaS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LXJwaS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJwaS1rZXJuZWwK
