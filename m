Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D53A01495E3
	for <lists+linux-rpi-kernel@lfdr.de>; Sat, 25 Jan 2020 14:19:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Subject:
	To:From:Date:In-Reply-To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=j0TQA5C9C9KN1oUH0oLQn7n0gDb5kT8yLkw6lfFyQTQ=; b=MxzFS5sx77oZt2
	1rQ+tW6yVKLSC8o3J5snCqZlbRCxGXQIJ6Adg+W16sVoEDOSB+tNw0UPi38+E3MsINU/ew+EmOgtC
	yV/XtBETVEktXqAJy24JqhtN68cpydO/sxa5RZTbUTY2LgWtLslQZldWRZwh0mk7KSkmeXmY79q8N
	MCgxGWRpCqM3ab01SGo46Ceq0HJvXGHTBoDqhu7/cms7fhfqRt7zCYfY753COH/+7QRk16O8dfFsF
	8nyqPI5C5nBIwVp4nkVsV3frUipp/xHb2tYostRQMg9TUtPFHlxHcqYkhDuJEbn0K7D+0yKvTvPy0
	r6rXzTwZ8Qba4XiCoaTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ivLL8-0000hg-GC; Sat, 25 Jan 2020 13:19:06 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivLL5-0000hP-Bt
 for linux-rpi-kernel@lists.infradead.org; Sat, 25 Jan 2020 13:19:04 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 0CF9AAC84;
 Sat, 25 Jan 2020 13:19:02 +0000 (UTC)
In-Reply-To: <20200125130737.GG3671@valentin-vidic.from.hr>
Date: Sat, 25 Jan 2020 14:15:30 +0100
From: "Nicolas Saenz Julienne" <nsaenzjulienne@suse.de>
To: =?utf-8?q?Valentin_Vidi=C4=87?= <vvidic@valentin-vidic.from.hr>
Subject: Re: RPi B+ USB support
Message-Id: <C04WEWWXBXRL.28WZVXZ9OKU4B@linux-9qgx>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200125_051903_551193_0C10B5B3 
X-CRM114-Status: UNSURE (   8.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

SGkgVmFsZW50aW4sCgpPbiBTYXQgSmFuIDI1LCAyMDIwIGF0IDI6MDcgUE0sIFZhbGVudGluIFZp
ZGnEhyB3cm90ZToKPiBPbiBTYXQsIEphbiAyNSwgMjAyMCBhdCAwMToyNzowNFBNICswMTAwLCBO
aWNvbGFzIFNhZW56IEp1bGllbm5lIHdyb3RlOgo+ID4gVGhpcyBpcyBub3QgYSBrbm93biBwcm9i
bGVtLiBEbyB5b3Ugc2VlIGFueSBlcnJvcyBvbiB5b3VyIGxvZ3MgKGRtZXNnIC1sZXJyKT8KPgo+
IFRoZXJlIGlzIG9uZSBiYWNrdHJhY2UgZHVyaW5nIGJvb3QsIG5vdCBzdXJlIGlmIGl0IGlzIHJl
bGV2YW50Ogo+Cj4gWyAwLjAwMDAwMF0gQm9vdGluZyBMaW51eCBvbiBwaHlzaWNhbCBDUFUgMHgw
Cj4gWyAwLjAwMDAwMF0gTGludXggdmVyc2lvbiA1LjQuMC0zLXJwaSAoZGViaWFuLWtlcm5lbEBs
aXN0cy5kZWJpYW4ub3JnKQo+IChnY2MgdmVyc2lvbiA5LjIuMSAyMDIwMDExMCAoRGViaWFuIDku
Mi4xLTIzKSkgIzEgRGViaWFuIDUuNC4xMy0xCj4gKDIwMjAtMDEtMTkpCgpUaGlzIHNlZW1zIG9k
ZCwgY3VycmVudCBtYWlubGluZSB2ZXJzaW9uIGlzIHY1LjUtcmM3LgoKU2VlIHRoaXMgc3VjY2Vz
c2Z1bCB0ZXN0IGJ1aWxkIGZyb20geWVzdGVyZGF5OgpodHRwczovL2tlcm5lbGNpLm9yZy9ib290
L2lkLzVlMmIwZGZiMTVmODI4Mzk3Yjc0ZTk4OS8KCkRpZCB5b3UgYnVpbHQvaW5zdGFsbGVkIHRo
ZXIga2VybmVsIHlvdXJzZWxmPwoKUmVnYXJkcywKTmljb2xhcwoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtcnBpLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtcnBpLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcnBpLWtlcm5lbAo=
