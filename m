Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3E53FB236
	for <lists+linux-rpi-kernel@lfdr.de>; Wed, 13 Nov 2019 15:08:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lPyBPgJsC5SZZKxe2MYG9fzeGr0bEe1XZlPCBfR+Jp4=; b=L4x5Y5+Sqm/Ddm
	f9ITni/Uk+FAI1wLti5Sa1g9lhBuNQPICrof3Z6+FgcnqcYzIhl45pGFFfQXVDJ5bbwN61IeyXn/m
	N/octIDjPIWXtJTHOge1yAHm1YsbEuxzask+tmZYJK+sZDzRKTs88C6gw2RTSENF4UkZMcMv/VUgx
	uaFgajnhuInfZwFS3VWg/V1k4sfPCfXrV3zae0c+r3XZLxfY7FipznH8nISAPJZUylES/S9zueqh6
	Uo+QQy23xjTHKZva5B3kJbJnQeO4JKTL5iZQ+wNNv9uqYvlBhf9LgRL7L2YaatwHeLIkm9wcaAObQ
	vqbrgbSnhd69Qs+ITztA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUtKG-0005UY-K5; Wed, 13 Nov 2019 14:08:52 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUtKC-0005TN-Ej
 for linux-rpi-kernel@lists.infradead.org; Wed, 13 Nov 2019 14:08:50 +0000
Received: by mail-pf1-x442.google.com with SMTP id r4so1742809pfl.7
 for <linux-rpi-kernel@lists.infradead.org>;
 Wed, 13 Nov 2019 06:08:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=dNZaaSn6X7mo6e817hfGQHfO+XXp7FF6FSyhzWZwtV8=;
 b=hhlYmKkJW0yhCxUyfUXfYsAJjHwDoIxtAnaMxjFFEIU6bywhUr03A5jZ+X6zF4ToAR
 Mesz825iTzjajGpFK2R8OEXpiYSobeDqCjCKv3kNmdVJW/TRJ3A+v7oHwLQHAP0xy0Hb
 wlLJix90nYNMrfvpO1m+SZ2riGZ7wQc7nt/aq8vZvkxS4mwbI0cQeF1bpiWXNHxgDbhR
 2wY4JEBTVKIlYF1ktNDZweFr0JCKo8pVogkW6pS1mionwO9lAWYkEk6udbignv9JbUB1
 BqtciSEHW5J4s1zkigTY1UkaOD4UoZ1U5pUjXvrliPAjUZO0Fs6uKS5WHcbtYovJ8J5C
 hCaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=dNZaaSn6X7mo6e817hfGQHfO+XXp7FF6FSyhzWZwtV8=;
 b=hfCy+N/9eqeCY+UyMdgb2zxpJVR7qHTb9KHhylNYFK6OsAwBuPhvXyv6c6qkBkhn8L
 +Wi9nKyf1lu0Zg5g1ZOyZKmBHVHZsktdqBVaA+IxRxRongNi8mGPhiZ9iTsZ68FOVAT/
 68K66TACGSHYRJ36/aI88fARD3+22Ay2veQWlJ1Fvj/KpA5iiSxEqbMCny5R0leHKtyr
 vLJeOxtUWu9bw1YBD6fX222iAdziH3Ry9nLFDK5hGeEnD3ufAzNcrLgv36dQmjzOHHk2
 eJQjlv0sOUq6MPw2yRvhdcuOrRS8CYvi0m1uCHWF/Lo9RgFlL1OitaC8YeQwt1lZmhnZ
 GZXQ==
X-Gm-Message-State: APjAAAVUIXWe8CzAOtQqX5gHUJN/3nRgcnY46u+qPdbl2cbq4b27lq3M
 tHFrdBok1aUi5nOnHSBjBJfoYtrGL/lLPRXUul4hXryhPhJjTw==
X-Google-Smtp-Source: APXvYqxtpZ5veONp3+7eBYfcFSrOmpgN6Io0pjFSQP8EO8XhmVbKbDFqCWNh3DZdP1wiE1W0lUQdOBrFByQPDaQP0eE=
X-Received: by 2002:a17:90a:1b4d:: with SMTP id
 q71mr5224798pjq.120.1573654127473; 
 Wed, 13 Nov 2019 06:08:47 -0800 (PST)
MIME-Version: 1.0
References: <cover.1573482698.git.marcgonzalez@google.com>
 <6054322775b30a90c1fed28a085e5fd578ed70fa.1573482698.git.marcgonzalez@google.com>
 <20191112230915.GA1931478@kroah.com>
 <CAKvFj6pA9aR5DP6L63252aWUmcAX_1tnwu6-O0dZTWXGYt8YLA@mail.gmail.com>
 <20191113053232.GA2036664@kroah.com>
In-Reply-To: <20191113053232.GA2036664@kroah.com>
From: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
Date: Wed, 13 Nov 2019 09:08:37 -0500
Message-ID: <CAKvFj6qoumyWy_ineP7ms+QuhK=euTRCt0Vo60_wUp_+OTCicg@mail.gmail.com>
Subject: Re: [PATCH 1/2] staging: vchiq: Move retrieval of rpi_firmware to
 vchiq_platform_init()
To: Greg KH <gregkh@linuxfoundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_060848_529663_2C06C3E9 
X-CRM114-Status: GOOD (  13.38  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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

T24gV2VkLCBOb3YgMTMsIDIwMTkgYXQgMTI6MzIgQU0gR3JlZyBLSCA8Z3JlZ2toQGxpbnV4Zm91
bmRhdGlvbi5vcmc+IHdyb3RlOgo+Cj4gT24gVHVlLCBOb3YgMTIsIDIwMTkgYXQgMDY6Mjk6NTVQ
TSAtMDUwMCwgTWFyY2VsbyBEaW9wLUdvbnphbGV6IHdyb3RlOgo+ID4gT24gVHVlLCBOb3YgMTIs
IDIwMTkgYXQgNjowOSBQTSBHcmVnIEtIIDxncmVna2hAbGludXhmb3VuZGF0aW9uLm9yZz4gd3Jv
dGU6Cj4gPiA+Cj4gPiA+IE9uIE1vbiwgTm92IDExLCAyMDE5IGF0IDEyOjE0OjIzUE0gLTA1MDAs
IE1hcmNlbG8gRGlvcC1Hb256YWxleiB3cm90ZToKPiA+ID4gPiBUaGlzIGFsbG93cyB0aGUgcmVt
b3ZhbCBvZiB0aGUgc3RydWN0IHJwaV9maXJtd2FyZSogbWVtYmVyCj4gPiA+ID4gZnJvbSBzdHJ1
Y3QgdmNoaXFfZHJ2ZGF0YS4KPiA+ID4gPgo+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IE1hcmNlbG8g
RGlvcC1Hb256YWxleiA8bWFyY2dvbnphbGV6QGdvb2dsZS5jb20+Cj4gPiA+ID4gLS0tCj4gPiA+
ID4gIC4uLi9pbnRlcmZhY2UvdmNoaXFfYXJtL3ZjaGlxXzI4MzVfYXJtLmMgICAgICAgICAgIHwg
MTQgKysrKysrKysrKysrKy0KPiA+ID4gPiAgLi4uL3ZjMDRfc2VydmljZXMvaW50ZXJmYWNlL3Zj
aGlxX2FybS92Y2hpcV9hcm0uYyAgfCAxNCAtLS0tLS0tLS0tLS0tLQo+ID4gPiA+ICAuLi4vdmMw
NF9zZXJ2aWNlcy9pbnRlcmZhY2UvdmNoaXFfYXJtL3ZjaGlxX2FybS5oICB8ICAxIC0KPiA+ID4g
PiAgMyBmaWxlcyBjaGFuZ2VkLCAxMyBpbnNlcnRpb25zKCspLCAxNiBkZWxldGlvbnMoLSkKPiA+
ID4KPiA+ID4gVGhpcyBjb21taXQgYnJlYWtzIHRoZSBidWlsZDoKPiA+ID4KPiA+ID4gSW4gZnVu
Y3Rpb24g4oCYZnJlZV9wYWdlbGlzdOKAmSwKPiA+ID4gICAgIGlubGluZWQgZnJvbSDigJh2Y2hp
cV9jb21wbGV0ZV9idWxr4oCZIGF0IGRyaXZlcnMvc3RhZ2luZy92YzA0X3NlcnZpY2VzL2ludGVy
ZmFjZS92Y2hpcV9hcm0vdmNoaXFfMjgzNV9hcm0uYzoyNTg6MzoKPiA+ID4gZHJpdmVycy9zdGFn
aW5nL3ZjMDRfc2VydmljZXMvaW50ZXJmYWNlL3ZjaGlxX2FybS92Y2hpcV8yODM1X2FybS5jOjU4
ODo0OiB3YXJuaW5nOiBhcmd1bWVudCAyIG51bGwgd2hlcmUgbm9uLW51bGwgZXhwZWN0ZWQgWy1X
bm9ubnVsbF0KPiA+ID4gICA1ODggfCAgICBtZW1jcHkoKGNoYXIgKilrbWFwKHBhZ2VzWzBdKSAr
Cj4gPiA+ICAgICAgIHwgICAgXn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fgo+ID4gPiAg
IDU4OSB8ICAgICBwYWdlbGlzdC0+b2Zmc2V0LAo+ID4gPiAgICAgICB8ICAgICB+fn5+fn5+fn5+
fn5+fn5+fgo+ID4gPiAgIDU5MCB8ICAgICBmcmFnbWVudHMsCj4gPiA+ICAgICAgIHwgICAgIH5+
fn5+fn5+fn4KPiA+ID4gICA1OTEgfCAgICAgaGVhZF9ieXRlcyk7Cj4gPiA+ICAgICAgIHwgICAg
IH5+fn5+fn5+fn5+Cj4gPiA+Cj4gPiA+IFBsZWFzZSBiZSBtb3JlIGNhcmVmdWwgYW5kIGF0IGxl
YXN0IHRlc3QgeW91ciBjaGFuZ2VzIGJlZm9yZSBzZW5kaW5nCj4gPiA+IHRoZW0gb3V0IDooCj4g
Pgo+ID4gQWggc29ycnkgOigoKC4gQ291bGQgeW91IGxldCBtZSBrbm93IHdoYXQgY29uZmlnIHlv
dSBzYXcgdGhhdCBlcnJvcgo+ID4gd2l0aD8gSSBzZWUgbm8gd2FybmluZ3MvZXJyb3JzIHdpdGgg
YmNtMjgzNV9kZWZjb25maWcuCj4KPiBJJ20ganVzdCBidWlsZGluZyBvbiB4ODYtNjQsIHRyeSAn
YWxsbW9kY29uZmlnJyBvbiB5b3VyIGRlc2t0b3AgYW5kIHNlZQo+IHdoYXQgaGFwcGVucy4KPgo+
IGdyZWcgay1oCgpBaCB5ZWFoIEkgc2VlIG5vdywgd2lsbCBmaXguCgotTWFyY2VsbwoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtcnBpLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtcnBpLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcnBpLWtlcm5lbAo=
