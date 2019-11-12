Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB3E2F9E33
	for <lists+linux-rpi-kernel@lfdr.de>; Wed, 13 Nov 2019 00:30:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ob8ofxGJW6ZT4CsLitsLf3ZS0XZ2AVwEel3Hc4ksyDg=; b=V1T4AG1cTeZ0KC
	tK19TsvPwHpE3ineRl7TL3cBSMf3KYKh536hm8XjwS+gat3fIaFiCvby5JkU1GbEeEMU7jaj60sMx
	5PivFDpNnp+viraLjtTcGtE+MLb38leiMfS/F2vbuyRpa1dlVWQPnCvCUmWWGvKCXwA+x9ASF+R3I
	Qc1waCfEta8F33ZhTTQWuDd4mLIHZgTZIr06CQdf77RvO+9dpsTAq2RRkKrWa2RvZn6e7DEp4nHUY
	O7d/y/z0QUz7yvSKLI6TWH6j3N9BvxvxhWpb02ItT3I5wvClbFwace7IxIxPb4UzuKiDMZkudGBg3
	hBkiqtxpG5PuSzzhJLtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUfby-0002DH-9S; Tue, 12 Nov 2019 23:30:14 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUfbv-00019h-A6
 for linux-rpi-kernel@lists.infradead.org; Tue, 12 Nov 2019 23:30:12 +0000
Received: by mail-pg1-x544.google.com with SMTP id z24so43154pgu.4
 for <linux-rpi-kernel@lists.infradead.org>;
 Tue, 12 Nov 2019 15:30:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=pVNrZKD9Z8WWf0+1ftmtKGoQQYjS4HXbdTudx8esSYQ=;
 b=aICqopTn7AxyggP0Zdm18mPxH22cTRgVrLrBGzv4X8tDBMqEqobBn6KRnC0ON7IyUW
 JgimYS71loa5PUZ6VW1tVpAN5N9b/JDlLaHqrzqm8R55tmpveasU15IKbl1stIO0Jvio
 jhSror101VFuhVeS7KDTYF+QW3j9KE34GaIL71cRX8lc4dwKC5tmbPuQCsFJNSZgKeyy
 AVVx6AsungaD4G3Q+37yckq+9PJvVaqsQgQ+oGfu1TtA+jgl2HsUjHKGM2F6E2OnnJhx
 bW006EPSQr8NmiYbR3pVCjdnCAijNs/WWtKIeqbgL2E/QlnDKgOk+Rtp3tALX/xVFfme
 YfLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=pVNrZKD9Z8WWf0+1ftmtKGoQQYjS4HXbdTudx8esSYQ=;
 b=SUr5/NVS8DS8IR4aPqs38ku6LlB0XOVGdWdA+z2ls6eNB0l8iiyC7yKBh6lSl5cKLl
 inZTkKhccJvSLu6AXUyLmOhzBJkyqpAWKvAa3grqpuS9keilQ1Rr4LDZrAcfuz1iexUb
 ojHQ9q6rHJqDAnReaXLDRQCDaBRqOv3aNDgZE8Gb+PNT0hIXB6goQgHbpwCBldvl7E1I
 U/mrnf33xrvt2mFQL2pMWEknRwRzEzaJwoieULjbTw939cfUpN++ZBvWZPeIsyzhn11v
 6AmjUQiTKBq6iCh5GMuo0SVTqMZRSSZLp444xndvPHm8NmehuDnknOHG7uFnW1HHYk8+
 WK1w==
X-Gm-Message-State: APjAAAWdOUWi1E3qsGs5t+D6TuxbdDsuJqBReG1oljA9GEYN/YlXwNEE
 vIEzvjofJ/FJODYz5f8eWkBytgQJVyJguV0dXhhgZA==
X-Google-Smtp-Source: APXvYqyJstxvO1R8RnLJJvsyWRzYsu4AfCEKenLKtChVknS6nFmoP/ZL31Uq4If2/SX52CXlqaTqyiG+E1UqfR5sdiQ=
X-Received: by 2002:a63:395:: with SMTP id 143mr94796pgd.93.1573601406044;
 Tue, 12 Nov 2019 15:30:06 -0800 (PST)
MIME-Version: 1.0
References: <cover.1573482698.git.marcgonzalez@google.com>
 <6054322775b30a90c1fed28a085e5fd578ed70fa.1573482698.git.marcgonzalez@google.com>
 <20191112230915.GA1931478@kroah.com>
In-Reply-To: <20191112230915.GA1931478@kroah.com>
From: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
Date: Tue, 12 Nov 2019 18:29:55 -0500
Message-ID: <CAKvFj6pA9aR5DP6L63252aWUmcAX_1tnwu6-O0dZTWXGYt8YLA@mail.gmail.com>
Subject: Re: [PATCH 1/2] staging: vchiq: Move retrieval of rpi_firmware to
 vchiq_platform_init()
To: Greg KH <gregkh@linuxfoundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_153011_417141_6D3F241B 
X-CRM114-Status: GOOD (  11.70  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
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
ICAgaGVhZF9ieXRlcyk7Cj4gICAgICAgfCAgICAgfn5+fn5+fn5+fn4KPgo+IFBsZWFzZSBiZSBt
b3JlIGNhcmVmdWwgYW5kIGF0IGxlYXN0IHRlc3QgeW91ciBjaGFuZ2VzIGJlZm9yZSBzZW5kaW5n
Cj4gdGhlbSBvdXQgOigKCkFoIHNvcnJ5IDooKCguIENvdWxkIHlvdSBsZXQgbWUga25vdyB3aGF0
IGNvbmZpZyB5b3Ugc2F3IHRoYXQgZXJyb3IKd2l0aD8gSSBzZWUgbm8gd2FybmluZ3MvZXJyb3Jz
IHdpdGggYmNtMjgzNV9kZWZjb25maWcuCj4KPiBncmVnIGstaAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtcnBpLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtcnBpLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcnBpLWtlcm5lbAo=
