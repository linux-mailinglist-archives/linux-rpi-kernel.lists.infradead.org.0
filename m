Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20FEBFA9A9
	for <lists+linux-rpi-kernel@lfdr.de>; Wed, 13 Nov 2019 06:32:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=biwoJaw/hge+Dv3dPt8nD6TELBU0xpfZzsOYL2irt24=; b=n/Tlr1yAupERt1
	PmPsT2G9DEIYhNqAii1xJPd2D+cUsHRtFJ+N0Vo2gUuWvhYFdEp6kCrRFl9kRAdo55SrWJBwmsfiw
	Xo+b6Dyfa+SybpjR5qXkxGXHhEb9PaUvw1e4SnIYi1OFQYh8NSXUrKkZTh8eTQXb1Tpc1ixkg8rjT
	05pcnNUdGkGsxWPrYAVQuvjFMvS/Mjq0AsVMarqOrSPwIKNaguzCYK7eDalKHlCYG21dAWJ8lI2qL
	VxIhZcG+nP3KR86UAje4NSHGXboqx0wlsYlbz+rmBwTOB03hg5bIyw/T4RGTjl7iZhOCUN0Nl5b7P
	cn91mmH957gEwWIGftrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUlGs-0004NT-Aa; Wed, 13 Nov 2019 05:32:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUlGp-0004Bw-M3
 for linux-rpi-kernel@lists.infradead.org; Wed, 13 Nov 2019 05:32:48 +0000
Received: from localhost (unknown [8.46.76.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 56C01222D0;
 Wed, 13 Nov 2019 05:32:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573623165;
 bh=C1q3nxJLFdJUiuG7WqulAT2rk8eFJT/0XIVbaVKi4qA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=f4h3ejptnWDHrNXduCQ1rGWFA0oid4R4gKqt97QrBLCYOvy4RbvDxK1AdBUXo/HAW
 gcFoDDIwBGkuQSTMQfxU+dLPOe5PULfmweiHY8Oupedhi+yKP/hetQg6OEQt192f2a
 zFon92cdHxZZ7pfU5bDEvv0Xx8kjhbr3Nd12NfC4=
Date: Wed, 13 Nov 2019 06:32:32 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
Subject: Re: [PATCH 1/2] staging: vchiq: Move retrieval of rpi_firmware to
 vchiq_platform_init()
Message-ID: <20191113053232.GA2036664@kroah.com>
References: <cover.1573482698.git.marcgonzalez@google.com>
 <6054322775b30a90c1fed28a085e5fd578ed70fa.1573482698.git.marcgonzalez@google.com>
 <20191112230915.GA1931478@kroah.com>
 <CAKvFj6pA9aR5DP6L63252aWUmcAX_1tnwu6-O0dZTWXGYt8YLA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKvFj6pA9aR5DP6L63252aWUmcAX_1tnwu6-O0dZTWXGYt8YLA@mail.gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_213247_746398_8D73D7A7 
X-CRM114-Status: GOOD (  13.22  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devel@driverdev.osuosl.org, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBOb3YgMTIsIDIwMTkgYXQgMDY6Mjk6NTVQTSAtMDUwMCwgTWFyY2VsbyBEaW9wLUdv
bnphbGV6IHdyb3RlOgo+IE9uIFR1ZSwgTm92IDEyLCAyMDE5IGF0IDY6MDkgUE0gR3JlZyBLSCA8
Z3JlZ2toQGxpbnV4Zm91bmRhdGlvbi5vcmc+IHdyb3RlOgo+ID4KPiA+IE9uIE1vbiwgTm92IDEx
LCAyMDE5IGF0IDEyOjE0OjIzUE0gLTA1MDAsIE1hcmNlbG8gRGlvcC1Hb256YWxleiB3cm90ZToK
PiA+ID4gVGhpcyBhbGxvd3MgdGhlIHJlbW92YWwgb2YgdGhlIHN0cnVjdCBycGlfZmlybXdhcmUq
IG1lbWJlcgo+ID4gPiBmcm9tIHN0cnVjdCB2Y2hpcV9kcnZkYXRhLgo+ID4gPgo+ID4gPiBTaWdu
ZWQtb2ZmLWJ5OiBNYXJjZWxvIERpb3AtR29uemFsZXogPG1hcmNnb256YWxlekBnb29nbGUuY29t
Pgo+ID4gPiAtLS0KPiA+ID4gIC4uLi9pbnRlcmZhY2UvdmNoaXFfYXJtL3ZjaGlxXzI4MzVfYXJt
LmMgICAgICAgICAgIHwgMTQgKysrKysrKysrKysrKy0KPiA+ID4gIC4uLi92YzA0X3NlcnZpY2Vz
L2ludGVyZmFjZS92Y2hpcV9hcm0vdmNoaXFfYXJtLmMgIHwgMTQgLS0tLS0tLS0tLS0tLS0KPiA+
ID4gIC4uLi92YzA0X3NlcnZpY2VzL2ludGVyZmFjZS92Y2hpcV9hcm0vdmNoaXFfYXJtLmggIHwg
IDEgLQo+ID4gPiAgMyBmaWxlcyBjaGFuZ2VkLCAxMyBpbnNlcnRpb25zKCspLCAxNiBkZWxldGlv
bnMoLSkKPiA+Cj4gPiBUaGlzIGNvbW1pdCBicmVha3MgdGhlIGJ1aWxkOgo+ID4KPiA+IEluIGZ1
bmN0aW9uIOKAmGZyZWVfcGFnZWxpc3TigJksCj4gPiAgICAgaW5saW5lZCBmcm9tIOKAmHZjaGlx
X2NvbXBsZXRlX2J1bGvigJkgYXQgZHJpdmVycy9zdGFnaW5nL3ZjMDRfc2VydmljZXMvaW50ZXJm
YWNlL3ZjaGlxX2FybS92Y2hpcV8yODM1X2FybS5jOjI1ODozOgo+ID4gZHJpdmVycy9zdGFnaW5n
L3ZjMDRfc2VydmljZXMvaW50ZXJmYWNlL3ZjaGlxX2FybS92Y2hpcV8yODM1X2FybS5jOjU4ODo0
OiB3YXJuaW5nOiBhcmd1bWVudCAyIG51bGwgd2hlcmUgbm9uLW51bGwgZXhwZWN0ZWQgWy1Xbm9u
bnVsbF0KPiA+ICAgNTg4IHwgICAgbWVtY3B5KChjaGFyICopa21hcChwYWdlc1swXSkgKwo+ID4g
ICAgICAgfCAgICBefn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+Cj4gPiAgIDU4OSB8ICAg
ICBwYWdlbGlzdC0+b2Zmc2V0LAo+ID4gICAgICAgfCAgICAgfn5+fn5+fn5+fn5+fn5+fn4KPiA+
ICAgNTkwIHwgICAgIGZyYWdtZW50cywKPiA+ICAgICAgIHwgICAgIH5+fn5+fn5+fn4KPiA+ICAg
NTkxIHwgICAgIGhlYWRfYnl0ZXMpOwo+ID4gICAgICAgfCAgICAgfn5+fn5+fn5+fn4KPiA+Cj4g
PiBQbGVhc2UgYmUgbW9yZSBjYXJlZnVsIGFuZCBhdCBsZWFzdCB0ZXN0IHlvdXIgY2hhbmdlcyBi
ZWZvcmUgc2VuZGluZwo+ID4gdGhlbSBvdXQgOigKPiAKPiBBaCBzb3JyeSA6KCgoLiBDb3VsZCB5
b3UgbGV0IG1lIGtub3cgd2hhdCBjb25maWcgeW91IHNhdyB0aGF0IGVycm9yCj4gd2l0aD8gSSBz
ZWUgbm8gd2FybmluZ3MvZXJyb3JzIHdpdGggYmNtMjgzNV9kZWZjb25maWcuCgpJJ20ganVzdCBi
dWlsZGluZyBvbiB4ODYtNjQsIHRyeSAnYWxsbW9kY29uZmlnJyBvbiB5b3VyIGRlc2t0b3AgYW5k
IHNlZQp3aGF0IGhhcHBlbnMuCgpncmVnIGstaAoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtcnBpLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
cnBpLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcnBpLWtlcm5lbAo=
