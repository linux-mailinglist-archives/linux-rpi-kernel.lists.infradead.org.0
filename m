Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C29E1725AF
	for <lists+linux-rpi-kernel@lfdr.de>; Thu, 27 Feb 2020 18:53:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=fKxe9ux6o6YXk3IMSSDFINaGAUrJn5b0BvReySOC8UM=; b=pZvvD7ooccKPKLcciu518weSi0
	gzBdJJL0LfmSfru0l4AeqzkZnAHDzbQH3qdTvq/2akp2dlIQHoEm1S/h67PCx80oKbmHjwQyT5b6t
	PeIUsLAzRKTi4Zmgf2mefZHeEsDRwBpk+ZXyReYGkfSQ+2hf/ies11Ix5yM6nIQX4DPjz50nMnS8R
	U9d1KmfZORP1jVfXw5TqDNWszxQRivIKQXp1b3yAwzTQIUP4hJC+A4wiCFwpU5eZGAUHef7NZGSCL
	fL4VSICsEBfA6S1+8IWMdoIwTWCw4pYXPbmgGBGLLAeYjkuuU7iJLh582yhH5Xoihxrd6baalZjsC
	EF9Jvtjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7NM2-0007vO-Ap; Thu, 27 Feb 2020 17:53:46 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7NLz-0007ux-29
 for linux-rpi-kernel@lists.infradead.org; Thu, 27 Feb 2020 17:53:44 +0000
Received: from [192.168.1.183] ([37.4.249.142]) by mrelayeu.kundenserver.de
 (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MWixU-1is6cT1CHo-00X7o3; Thu, 27 Feb 2020 18:53:37 +0100
Subject: Re: [PATCH] define rpi0w sdhci pinctrl state
To: Nick Hudson <nick.hudson@gmx.co.uk>,
 linux-rpi-kernel@lists.infradead.org, devicetree@vger.kernel.org
References: <c34db439-3539-88c0-99f1-308d75afd1aa@gmx.co.uk>
From: Stefan Wahren <stefan.wahren@i2se.com>
Openpgp: preference=signencrypt
Autocrypt: addr=stefan.wahren@i2se.com; keydata=
 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 AQ==
Message-ID: <23a936db-fc89-6259-3991-5791fa88beb7@i2se.com>
Date: Thu, 27 Feb 2020 18:53:36 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <c34db439-3539-88c0-99f1-308d75afd1aa@gmx.co.uk>
Content-Language: en-US
X-Provags-ID: V03:K1:7MaWU7lT5SHZv4XZBw8n5tGB108d1GP9s0OlAIgCwdQNVlWUqpp
 4HYyrH9YguLmeXFnd5J6crv3bFOSdMbzEXw3r4DZrNoUOo8R4JlQ/xyHisC9XGpl2hQH+Oq
 gYfv+30qfC9bXf7Gfv4ArmoWa6nqO0QseaX0qtBHTGTNQn2x7uk6ZfUNTcD9NWUvHEA3hNw
 iaW2EUyfov5EipQUVYhog==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:0hQ3T2OXq4c=:0GXybENl8hp/z+5jwQRXoG
 S9nmJEIST9VBPeUZqsEUYZkh26bHmUjuQDrLWDWURMFn7HZ9QeAy9sxtB//oSD3BH/Zo/OSQ8
 YwMLQOXTmeHqD1bYymZ1Ww0T2/N703nX0aUuMaK66hNNv4M085gF5cqk7EQWL4B6k63Ic+j+e
 1GBEhIoyGIG0kuyinVp0oqnNclH0q94zldgH8sRvUrlptfjpuIEnLenUUdqsLC51kZgN0ut4r
 +NP04LE8EiXJHdsyzJO3qsBMha0ysJB3FOi1Dtig4HnlbgRGvIfQpOhxM+NRowvqnhPJGw6uJ
 1OGsRB5mbEEugnZBWC5J0SLwdrPS56JRodt8Qx1Sjb1RPNF0JbcEnVerJn4IbkfWjpzhMVX4p
 9wj8728aFrjVvzMyyYL0G+woxRMFy2cwhpQ5QVcnONoFe9Mx+ddY+shU4jUqgci8tVOGj9C//
 ZI9Mfo86stssYpR5Alvb4lLP9mBcf2Arld5XEKG+OVaFJgo1z6dlR1sPF7XsKBAWK+QHEVNpq
 UmC7I9Umqu7CQdlPV0aJxy/Cwx3kRKWKoPXPnbq8YmRbU1f1g7gVtRLaU09RW/bDe+LePYs1a
 P+gmgbc9u7k4L7NnmzM7EXeTaVVcK/30+2DekzPstW4pGIzBY6u7130XeY6I/zJNsnQ1iU2P1
 9QskGcxzWywrRjO5n6Qc4lfi4Cm/ZjRlvUgYyW8SDUNWpPBmQyNB8G9cAOv1TldoMl48pj0q1
 56o84ecQbYIGW5DdEwcT+z37q6fzINQgFK0plb+2buZ2db/wftqSk8TwzwWcmXVc8OfVgRouV
 TOT058k2LUmqe1kLESjbD6lRJS39J+PEDAgE7TEu5XR8svmikPo9p+pWAO/4mk/ErSIxodc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_095343_397477_CCCEE454 
X-CRM114-Status: GOOD (  10.72  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.131 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

SGkgTmljaywKCkFtIDI3LjAyLjIwIHVtIDAwOjMzIHNjaHJpZWIgTmljayBIdWRzb246Cj4gSSdt
IHN0aWxsIG5vdCBzdXJlIHdoZXJlIEkgc2hvdWxkIGJlIHNlbmRpbmcgdGhpcywgYnV0IGhlcmUg
Z29lcy4KCnRoZSBhZGRyZXNzZXMgYXJlIHJpZ2h0LiBQbGVhc2UgcmViYXNlIHlvdXIgY2hhbmdl
IGFnYWluc3QgcmVjZW50IExpbnV4CmdpdCB0cmVlIGFuZCBnZW5lcmF0ZSBhIGdpdCBwYXRjaCwg
b3RoZXJ3aXNlIHdlIGNhbm5vdCBhcHBseSB5b3VyIGl0LgoKSSBzdWdnZXN0IHRoZSBmb2xsb3dp
bmcgc3ViamVjdDoKCkFSTTogYmNtMjgzNS1ycGktemVyby13OiBBZGQgbWlzc2luZyBwaW5jdHJs
IG5hbWUKClRoYW5rcwpTdGVmYW4KCj4KPiBEZWZpbmUgdGhlc2RoY2kgcGluY3RybCBzdGF0ZSBh
cyAiZGVmYXVsdCIgc28gaXQgZ2V0cyBhcHBsaWVkIGNvcnJlY3RseQo+IGFuZCB0byBtYXRjaCBh
bGwgb3RoZXIgUlBpcwo+Cj4gU2lnbmVkLW9mZi1ieTogTmljayBIdWRzb24gPHNrcmxsQG5ldGJz
ZC5vcmc+Cj4gLS0tCj4gSW5kZXg6IGJjbTI4MzUtcnBpLXplcm8tdy5kdHMKPiA9PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
Cj4gUkNTIGZpbGU6Cj4gL2N2c3Jvb3Qvc3JjL3N5cy9leHRlcm5hbC9ncGwyL2R0cy9kaXN0L2Fy
Y2gvYXJtL2Jvb3QvZHRzL2JjbTI4MzUtcnBpLXplcm8tdy5kdHMsdgo+Cj4gcmV0cmlldmluZyBy
ZXZpc2lvbiAxLjEuMS40Cj4gZGlmZiAtdSAtcCAtcjEuMS4xLjQgYmNtMjgzNS1ycGktemVyby13
LmR0cwo+IC0tLSBiY20yODM1LXJwaS16ZXJvLXcuZHRzwqDCoMKgIDMgSmFuIDIwMjAgMTQ6MzM6
MDkgLTAwMDDCoMKgwqAgMS4xLjEuNAo+ICsrKyBiY20yODM1LXJwaS16ZXJvLXcuZHRzwqDCoMKg
IDE5IEZlYiAyMDIwIDA3OjUzOjU0IC0wMDAwCj4gQEAgLTExMiw2ICsxMTIsNyBAQAo+IMKgJnNk
aGNpIHsKPiDCoMKgwqDCoCAjYWRkcmVzcy1jZWxscyA9IDwxPjsKPiDCoMKgwqDCoCAjc2l6ZS1j
ZWxscyA9IDwwPjsKPiArwqDCoMKgIHBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4gwqDCoMKg
wqAgcGluY3RybC0wID0gPCZlbW1jX2dwaW8zNCAmZ3BjbGsyX2dwaW80Mz47Cj4gwqDCoMKgwqAg
YnVzLXdpZHRoID0gPDQ+Owo+IMKgwqDCoMKgIG1tYy1wd3JzZXEgPSA8JndpZmlfcHdyc2VxPjsK
Pgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gbGlu
dXgtcnBpLWtlcm5lbCBtYWlsaW5nIGxpc3QKPiBsaW51eC1ycGkta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJwaS1rZXJuZWwKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1ycGkta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1ycGkta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1ycGkta2VybmVsCg==
