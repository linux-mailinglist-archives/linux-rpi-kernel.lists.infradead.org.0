Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE7802BB00
	for <lists+linux-rpi-kernel@lfdr.de>; Mon, 27 May 2019 22:00:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s+tUe5qT8Eee3GkaRJ9pHg0eZz3fEEdBD+MA3mvdMWk=; b=nJ8EmrguA1xEmD
	aF6uSvljUQxS0SeWFbWITa4+ScjfikC7+YuQlKp2bz6j0VlOVjnAJVgc6c2JhW+Uf5sYJFFloSBEs
	mCDtAuXbcv9f7C8QCml55s/3HMhVviYB+dSIRRPAgzgBgKaj1BFITDpO/v55bngqZDHoBM7S/AZal
	V+sEfuhBK8/AmhUVD2ezfGg6Nr4eCOfMWJaKqhpX9dKSKnNipGvodb/7cIxihgzE0gPBv7cKOJwm5
	Hvtq3Enfnji9UtcAoDCr2lttDPhiLSmsUYK6Zf9UjQS4PHka6qZFUkN2tJDd+exCCTFp6xTy1Tdse
	2gWApR1WR3JmMOdzulDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVLn5-00088P-BI; Mon, 27 May 2019 20:00:15 +0000
Received: from smtp89.iad3a.emailsrvr.com ([173.203.187.89])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVLmv-0006xu-Gf; Mon, 27 May 2019 20:00:07 +0000
Received: from smtp4.relay.iad3a.emailsrvr.com (localhost [127.0.0.1])
 by smtp4.relay.iad3a.emailsrvr.com (SMTP Server) with ESMTP id 01D8C3C3A;
 Mon, 27 May 2019 16:00:03 -0400 (EDT)
X-SMTPDoctor-Processed: csmtpprox beta
Received: from smtp4.relay.iad3a.emailsrvr.com (localhost [127.0.0.1])
 by smtp4.relay.iad3a.emailsrvr.com (SMTP Server) with ESMTP id E8623420B;
 Mon, 27 May 2019 16:00:02 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=g001.emailsrvr.com;
 s=20190322-9u7zjiwi; t=1558987202;
 bh=/XOoX/rWzqcLA8aPWxXXz/oJ+7rFLohE7GTNeNJ0x1s=;
 h=Subject:From:Date:To:From;
 b=n2BybzT6KSn8h69JdlPZSpgCrOdrkeo7dph1jDg70beokQSAWIX+mQ0R27DSH+Tna
 Gv/thHMFx5JcsYA60e26LMeMIGmz9vrNlzEIc+YKDYpf+Nx3+uJ+2Qrau8FsJsoCfH
 MSAoWqlAzynxpggIxEX6oK5zpKS5EOWvdRIyuP1w=
X-Auth-ID: mcdermj@xenotropic.com
Received: by smtp4.relay.iad3a.emailsrvr.com (Authenticated sender:
 mcdermj-AT-xenotropic.com) with ESMTPSA id C4F063C3A; 
 Mon, 27 May 2019 16:00:01 -0400 (EDT)
X-Sender-Id: mcdermj@xenotropic.com
Received: from [10.0.3.33] (c-73-96-52-102.hsd1.or.comcast.net [73.96.52.102])
 (using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384)
 by 0.0.0.0:465 (trex/5.7.12); Mon, 27 May 2019 16:00:02 -0400
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Subject: Re: [PATCH v2] i2c: bcm2835: Model Divider in CCF
From: Annaliese McDermond <nh6z@nh6z.net>
In-Reply-To: <20190527191534.GD8808@kunai>
Date: Mon, 27 May 2019 13:00:00 -0700
Message-Id: <E711B8C3-85B8-435C-97FD-E62BCB88B679@nh6z.net>
References: <20190508071227.18609-1-nh6z@nh6z.net>
 <4174B26B-4E3A-4CCA-A5ED-BE62A3B5E66A@nh6z.net> <20190516075848.GA1033@kunai>
 <2E6EDCD1-E0B1-4859-BD75-EF411D3D4C6B@nh6z.net> <20190527191534.GD8808@kunai>
To: Wolfram Sang <wsa@the-dreams.de>
X-Mailer: Apple Mail (2.3445.104.11)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_130005_646989_66ADB342 
X-CRM114-Status: UNSURE (   9.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [173.203.187.89 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-rpi-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-rpi-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rpi-kernel>, 
 <mailto:linux-rpi-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rpi-kernel/>
List-Post: <mailto:linux-rpi-kernel@lists.infradead.org>
List-Help: <mailto:linux-rpi-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel>, 
 <mailto:linux-rpi-kernel-request@lists.infradead.org?subject=subscribe>
Cc: NWDR Team <team@nwdigitalradio.com>, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-i2c@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

Cj4gT24gTWF5IDI3LCAyMDE5LCBhdCAxMjoxNSBQTSwgV29sZnJhbSBTYW5nIDx3c2FAdGhlLWRy
ZWFtcy5kZT4gd3JvdGU6Cj4gCj4gUmVnYXJkbGVzcyB3aGljaCBzb2x1dGlvbiBpcyBmYXZvdXJl
ZCwgSSBhbSBnb2luZyB0byBhcHBseSB0aGlzIHBhdGNoIGluCj4gYSBtaW51dGU6Cj4gCj4gaHR0
cDovL3BhdGNod29yay5vemxhYnMub3JnL3BhdGNoLzEwOTc2ODgvCj4gCj4gSXQgZW5hYmxlcyB0
aGlzIGRyaXZlciBmb3IgQVJDSF9CUkNNU1RCLiBTbywgdGhlIHNvbHV0aW9uIHNob3VsZCB3b3Jr
Cj4gZm9yIHRoaXMgYXMgd2VsbC4gKEkgZG9uJ3Qga25vdyBhbnkgb2YgdGhlc2UgcGxhdGZvcm1z
IHdlbGwpCgpJIGRpZCBzb21lIGxvb2tpbmcgdGhlIG90aGVyIGRheSwgYW5kIEkgaGFkIGZvcmdv
dHRlbiB0aGF0IHRoZSBSUGkgaGFzIDMKb2YgdGhlIGkyYy1iY20yODM1IGRldmljZXMgZWFjaCB3
aXRoIHRoZWlyIG93biBkaXZpZGVyIHRoYXQgc2l0cyBpbiB0aGVpcgpyZWdpc3RlciBzcGFjZS4g
IFRoaXMgbWFrZXMgbWUgdGhpbmsgdGhlIGNvcnJlY3Qgc29sdXRpb24gd291bGQgYmUgZm9yCnRo
ZSBkaXZpZGVyIHRvIGJlIGNvbnRyb2xsZWQgaW4gdGhlIGRyaXZlciBhcyB3YXMgaW4gbXkgb3Jp
Z2luYWwgcGF0Y2guCk90aGVyd2lzZSB3ZeKAmWQgaGF2ZSB0byBtYWtlIHRocmVlIGRpZmZlcmVu
dCBkaXZpZGVycyBpbiB0aGUgYmNtMjgzNS1jbGsKZHJpdmVyLCBhbmQgdGhlIGkyYyBkcml2ZXIg
d291bGQgbm8gbG9uZ2VyIHdvcmsgZm9yIG90aGVyIHBsYXRmb3Jtcy4KCkkgaGF2ZW7igJl0IGhl
YXJkIGFueSBjb21tZW50cyBmcm9tIGFueSBvZiB0aGUgY2xvY2sgZm9sa3MuICBJIHdhcyBwZXJ1
c2luZwp0aGUgY29kZSBhbmQgSSBzZWUgdGhlcmXigJlzIGEgU1BJIGRyaXZlciB0aGF0IHJlZ2lz
dGVycyBpdHMgb3duIGNsb2NrIGFuZApzb21lIHZhcmlvdXMgZXRoZXJuZXQgYW5kIE1NQyBkcml2
ZXJzIHRoYXQgZG8gdGhlIHNhbWUgdGhpbmcuCgo+IFJlZ2FyZHMsCj4gCj4gICBXb2xmcmFtCgot
LQpBbm5hbGllc2UgTWNEZXJtb25kCm5oNnpAbmg2ei5uZXQKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtcnBpLWtlcm5lbCBtYWlsaW5nIGxpc3QK
bGludXgtcnBpLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcnBpLWtlcm5lbAo=
