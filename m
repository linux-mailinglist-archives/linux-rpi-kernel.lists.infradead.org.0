Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A09BFB9D2
	for <lists+linux-rpi-kernel@lfdr.de>; Wed, 13 Nov 2019 21:29:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TyR5jiaA3l9A492MTxYMNsz0vwL3gH349nvSbLWXwCM=; b=tI8vleQ2+oy8c5
	8hhE/3uRCfLuHiJ6RtHw+/ZTF8A6XKD0eqL8UuCKm2Dz+R1RI0AJEQY5iCXi4CqBxKxZDUZy/Z1xH
	/aEn/QMkN5vyGnqmsssU0+0LSLEqk3pKsPQSiw24LE7WIYI376VicN2n/gpFGiew9D/KCF1ixwH46
	a/YsNht6GxpnHkqI1wXI6eoo/FDqwMaQ067RRt2rPP6OIU+mnNKrKblFLdBtNKCGOXTEX7hCaV1I3
	BzD4+4wjaPaFUxz4y5xnF7+Oq1sNMeNTfJkJXWQroJ673TTPDaZI3lOo4xWE1nKMB2OOjvGQyl7qQ
	20RYVpUzL4CwlU71Dx8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUzGa-0005Eb-1c; Wed, 13 Nov 2019 20:29:28 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUzGX-0005E2-5n
 for linux-rpi-kernel@lists.infradead.org; Wed, 13 Nov 2019 20:29:26 +0000
Received: by mail-pl1-x642.google.com with SMTP id s10so1556617plp.2
 for <linux-rpi-kernel@lists.infradead.org>;
 Wed, 13 Nov 2019 12:29:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=BpI7rWMSHzFTGfHyMSN5R3kPLCqXyEPhKO3la4d16OQ=;
 b=eg+VJYItPetvKOSgCrq/sNW7WwTY3kxdH+YhR9fen9sve1aK3FtIbKcQTO0IQbMhfz
 xj2OVHt1jq5wv0W4aontCG7tgepWAzihx3AG0OA0OgytRGQaNyMwkfFjll/Cm/dOdu8+
 jFExGxtwV8upYbz/p/teTUtkKU1uf7JnPz6edZEGr5LmN+w0zhLcvIEKK1nAfkcXNRsv
 MoZ0kZrqmZgwDHLIUGBOEBVO+riffrAogFzzTOeEx0c81zbvUiSG6mSrDBr7z9BSoXuE
 OaO9hLJv/JQcCEVoCNx4u5sAyYVL+ewVqxHw1FS6E1FiOKvegXxjqre1afxcBOAogkIE
 F4Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=BpI7rWMSHzFTGfHyMSN5R3kPLCqXyEPhKO3la4d16OQ=;
 b=Yfzfvvbi8nmYe2NGor0ffYkeA0BM6EMGN12Eo3WsTolvQldyqI0vtSC1WmvN0UbdYP
 9QsGlpnLsqn8Yc4mLXzIOAGrQTvbFkqo1t380zpwLZ2nEahuwE8RgfnC2ex5M524CiS8
 lrH5lmud3ydwoBenwxThP/OK3bIpyj8NlKOKFLSb3vOuqcqrLGBKW6IBEQ3RcWIiw8In
 ItLZHfSZIPZSMLpYnBywJTsLFlUjhCFHelSR6I4O1dm6ijbI4yBSFefD7xz6qXFut+9v
 yhQ/WLiJFYDluEX5eaLmqziC6UJL3YkGzRRvQha3uUdmy1a6anZzFzbNembWKT3ngwdf
 uh2Q==
X-Gm-Message-State: APjAAAX336M+tPoesDWcG+PT0ShiigZ6DoVwYbHlciZ1djeqITri8A5C
 YhMOREv/WgiscS6QJR62c2Lzw8Ds5Gp6nFTBVJBCVyYuUWfbrw==
X-Google-Smtp-Source: APXvYqzAIMKqT7jzeP7js7yPTsjzObT7zKZaDEjX/MnkO6bOeTBEn5u5NiaMDIpov9WFUYg3QAyjMlhXV3OEC47rLig=
X-Received: by 2002:a17:902:8c90:: with SMTP id
 t16mr5982398plo.56.1573676964025; 
 Wed, 13 Nov 2019 12:29:24 -0800 (PST)
MIME-Version: 1.0
References: <cover.1573482698.git.marcgonzalez@google.com>
 <6054322775b30a90c1fed28a085e5fd578ed70fa.1573482698.git.marcgonzalez@google.com>
 <20191112230915.GA1931478@kroah.com>
In-Reply-To: <20191112230915.GA1931478@kroah.com>
From: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
Date: Wed, 13 Nov 2019 15:29:12 -0500
Message-ID: <CAKvFj6o=tCxUahS614ZePo7r_z=ZVrjGtnVJ9+=t0Je-y0UdNg@mail.gmail.com>
Subject: Re: [PATCH 1/2] staging: vchiq: Move retrieval of rpi_firmware to
 vchiq_platform_init()
To: Greg KH <gregkh@linuxfoundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_122925_240995_97851752 
X-CRM114-Status: GOOD (  13.62  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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

T24gVHVlLCBOb3YgMTIsIDIwMTkgYXQgNjowOSBQTSBHcmVnIEtIIDxncmVna2hAbGludXhmb3Vu
ZGF0aW9uLm9yZz4gd3JvdGU6Cj4KPiBPbiBNb24sIE5vdiAxMSwgMjAxOSBhdCAxMjoxNDoyM1BN
IC0wNTAwLCBNYXJjZWxvIERpb3AtR29uemFsZXogd3JvdGU6Cj4gPiBUaGlzIGFsbG93cyB0aGUg
cmVtb3ZhbCBvZiB0aGUgc3RydWN0IHJwaV9maXJtd2FyZSogbWVtYmVyCj4gPiBmcm9tIHN0cnVj
dCB2Y2hpcV9kcnZkYXRhLgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IE1hcmNlbG8gRGlvcC1Hb256
YWxleiA8bWFyY2dvbnphbGV6QGdvb2dsZS5jb20+Cj4gPiAtLS0KPiA+ICAuLi4vaW50ZXJmYWNl
L3ZjaGlxX2FybS92Y2hpcV8yODM1X2FybS5jICAgICAgICAgICB8IDE0ICsrKysrKysrKysrKyst
Cj4gPiAgLi4uL3ZjMDRfc2VydmljZXMvaW50ZXJmYWNlL3ZjaGlxX2FybS92Y2hpcV9hcm0uYyAg
fCAxNCAtLS0tLS0tLS0tLS0tLQo+ID4gIC4uLi92YzA0X3NlcnZpY2VzL2ludGVyZmFjZS92Y2hp
cV9hcm0vdmNoaXFfYXJtLmggIHwgIDEgLQo+ID4gIDMgZmlsZXMgY2hhbmdlZCwgMTMgaW5zZXJ0
aW9ucygrKSwgMTYgZGVsZXRpb25zKC0pCj4KPiBUaGlzIGNvbW1pdCBicmVha3MgdGhlIGJ1aWxk
Ogo+Cj4gSW4gZnVuY3Rpb24g4oCYZnJlZV9wYWdlbGlzdOKAmSwKPiAgICAgaW5saW5lZCBmcm9t
IOKAmHZjaGlxX2NvbXBsZXRlX2J1bGvigJkgYXQgZHJpdmVycy9zdGFnaW5nL3ZjMDRfc2Vydmlj
ZXMvaW50ZXJmYWNlL3ZjaGlxX2FybS92Y2hpcV8yODM1X2FybS5jOjI1ODozOgo+IGRyaXZlcnMv
c3RhZ2luZy92YzA0X3NlcnZpY2VzL2ludGVyZmFjZS92Y2hpcV9hcm0vdmNoaXFfMjgzNV9hcm0u
Yzo1ODg6NDogd2FybmluZzogYXJndW1lbnQgMiBudWxsIHdoZXJlIG5vbi1udWxsIGV4cGVjdGVk
IFstV25vbm51bGxdCj4gICA1ODggfCAgICBtZW1jcHkoKGNoYXIgKilrbWFwKHBhZ2VzWzBdKSAr
Cj4gICAgICAgfCAgICBefn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+Cj4gICA1ODkgfCAg
ICAgcGFnZWxpc3QtPm9mZnNldCwKPiAgICAgICB8ICAgICB+fn5+fn5+fn5+fn5+fn5+fgo+ICAg
NTkwIHwgICAgIGZyYWdtZW50cywKPiAgICAgICB8ICAgICB+fn5+fn5+fn5+Cj4gICA1OTEgfCAg
ICAgaGVhZF9ieXRlcyk7Cj4gICAgICAgfCAgICAgfn5+fn5+fn5+fn4KPgoKSSB0aGluayB0aGlz
IG1heSBiZSBhbiBpc3N1ZSB0aGF0IHdpbGwgc2hvdyB1cCBpZiBhbnlvbmUgaW4gdGhlIGZ1dHVy
ZQp0cmllcyBhZGRpbmcgY29kZSB0byB2Y2hpcV9wbGF0Zm9ybV9pbml0KCkgYmVmb3JlIGdfZnJh
Z21lbnRzX2Jhc2UgYW5kCmdfZnJhZ21lbnRzX3NpemUgYXJlIGFzc2lnbmVkLXRvIHRoYXQgaXMg
Z3VhcmFudGVlZCB0byByZXR1cm4gd2hlbgpDT05GSUdfUkFTUEJFUlJZUElfRklSTVdBUkUgaXMg
bm90IHNldCwgc2luY2UgdGhlc2UgbWFrZSB1cCB0aGUKZnJhZ21lbnRzIGFyZ3VtZW50IHRvIHRo
ZSBjYWxsIHRvIG1lbWNweSgpIGluIGZyZWVfcGFnZWxpc3QoKToKICAgICAgIGNoYXIgKmZyYWdt
ZW50cyA9IGdfZnJhZ21lbnRzX2Jhc2UgKwogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgKHBhZ2VsaXN0LT50eXBlIC0KUEFHRUxJU1RfUkVBRF9XSVRIX0ZSQUdNRU5U
UykgKgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZ19mcmFnbWVu
dHNfc2l6ZTsKCkFkZGluZyB0aGUgbGluZSAicmV0dXJuIC0xOyIgdG8gdGhlIGJlZ2lubmluZyBv
ZiB2Y2hpcV9wbGF0Zm9ybV9pbml0KCkKcmVwcm9kdWNlcyB0aGUgd2FybmluZywgYnV0IGFkZGlu
ZyBpdCBqdXN0IGFmdGVyIGdfZnJhZ21lbnRzX3NpemUgaXMKYXNzaWduZWQtdG8gZG9lc24ndC4g
TWF5YmUgd29ydGggZml4aW5nIGluIGEgc2VwYXJhdGUgcGF0Y2guCgo+IFBsZWFzZSBiZSBtb3Jl
IGNhcmVmdWwgYW5kIGF0IGxlYXN0IHRlc3QgeW91ciBjaGFuZ2VzIGJlZm9yZSBzZW5kaW5nCj4g
dGhlbSBvdXQgOigKPgo+IGdyZWcgay1oCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1ycGkta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1ycGkt
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1ycGkta2VybmVsCg==
