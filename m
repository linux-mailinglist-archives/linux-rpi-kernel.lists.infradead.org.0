Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BBBDF9DC9
	for <lists+linux-rpi-kernel@lfdr.de>; Wed, 13 Nov 2019 00:09:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9K1NRU3gqRnD75rrsUAB2Bfr7EI1Vs0XSL4XifqeOWc=; b=eNUcm/3pppB9Tj
	y8lIc8J1ffWZ9h/SHxFcr1NjnPKX/II11kHjavdyZ9GW3k8WlUJ6eSdlwg8CjaMHIbq+lyopcBrB/
	DXzSOcApcPqZeMPd9w8q9lbhTMt4Qv6a8Ync4pVuPckt1YE/4I76YzCR/HNBj/fhphge3zpuh0jW1
	A5gzD2aP3dRK0Mx7t/P09a6jgF0tj5ZYk2wz3NuyXCMNKtHWZLibaZtmtr6GW4LDB4UWFaluuMo5k
	65X6rGnCBbAZAE9xjbveYNLXJGSZjfZFDWvIuxozV0YL4bgNKTdd0eZZYW2FVq0EpA0anGfhmeO8G
	t8ffdC03UCmZqT7+Vqqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUfHr-0008HQ-0J; Tue, 12 Nov 2019 23:09:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUfHo-0008Gs-10
 for linux-rpi-kernel@lists.infradead.org; Tue, 12 Nov 2019 23:09:25 +0000
Received: from localhost (unknown [8.46.76.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A51CE21925;
 Tue, 12 Nov 2019 23:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573600163;
 bh=aRtyOqmha9ZZUYAuDDeC+sL+QifL115+qQu+v0y0imY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Q8W4zRq0cZ0HeA2OawMLcuxjH8dLbyJAgKQbkX9tgGKUJG5Un+Ekk961vwaUWBFAK
 Ud9BLnsFCBGKX8PoMMF1mlyhaUY0EfVI5wdRprKJgsizm5wMz315u0tmqAoeBnxY1g
 WkN7wpoEMWcm6V3/QWwBrJgKpqD654mN3FMRGBEk=
Date: Wed, 13 Nov 2019 00:09:15 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
Subject: Re: [PATCH 1/2] staging: vchiq: Move retrieval of rpi_firmware to
 vchiq_platform_init()
Message-ID: <20191112230915.GA1931478@kroah.com>
References: <cover.1573482698.git.marcgonzalez@google.com>
 <6054322775b30a90c1fed28a085e5fd578ed70fa.1573482698.git.marcgonzalez@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6054322775b30a90c1fed28a085e5fd578ed70fa.1573482698.git.marcgonzalez@google.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_150924_088213_604B6E5A 
X-CRM114-Status: UNSURE (   8.48  )
X-CRM114-Notice: Please train this message.
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

T24gTW9uLCBOb3YgMTEsIDIwMTkgYXQgMTI6MTQ6MjNQTSAtMDUwMCwgTWFyY2VsbyBEaW9wLUdv
bnphbGV6IHdyb3RlOgo+IFRoaXMgYWxsb3dzIHRoZSByZW1vdmFsIG9mIHRoZSBzdHJ1Y3QgcnBp
X2Zpcm13YXJlKiBtZW1iZXIKPiBmcm9tIHN0cnVjdCB2Y2hpcV9kcnZkYXRhLgo+IAo+IFNpZ25l
ZC1vZmYtYnk6IE1hcmNlbG8gRGlvcC1Hb256YWxleiA8bWFyY2dvbnphbGV6QGdvb2dsZS5jb20+
Cj4gLS0tCj4gIC4uLi9pbnRlcmZhY2UvdmNoaXFfYXJtL3ZjaGlxXzI4MzVfYXJtLmMgICAgICAg
ICAgIHwgMTQgKysrKysrKysrKysrKy0KPiAgLi4uL3ZjMDRfc2VydmljZXMvaW50ZXJmYWNlL3Zj
aGlxX2FybS92Y2hpcV9hcm0uYyAgfCAxNCAtLS0tLS0tLS0tLS0tLQo+ICAuLi4vdmMwNF9zZXJ2
aWNlcy9pbnRlcmZhY2UvdmNoaXFfYXJtL3ZjaGlxX2FybS5oICB8ICAxIC0KPiAgMyBmaWxlcyBj
aGFuZ2VkLCAxMyBpbnNlcnRpb25zKCspLCAxNiBkZWxldGlvbnMoLSkKClRoaXMgY29tbWl0IGJy
ZWFrcyB0aGUgYnVpbGQ6CgpJbiBmdW5jdGlvbiDigJhmcmVlX3BhZ2VsaXN04oCZLAogICAgaW5s
aW5lZCBmcm9tIOKAmHZjaGlxX2NvbXBsZXRlX2J1bGvigJkgYXQgZHJpdmVycy9zdGFnaW5nL3Zj
MDRfc2VydmljZXMvaW50ZXJmYWNlL3ZjaGlxX2FybS92Y2hpcV8yODM1X2FybS5jOjI1ODozOgpk
cml2ZXJzL3N0YWdpbmcvdmMwNF9zZXJ2aWNlcy9pbnRlcmZhY2UvdmNoaXFfYXJtL3ZjaGlxXzI4
MzVfYXJtLmM6NTg4OjQ6IHdhcm5pbmc6IGFyZ3VtZW50IDIgbnVsbCB3aGVyZSBub24tbnVsbCBl
eHBlY3RlZCBbLVdub25udWxsXQogIDU4OCB8ICAgIG1lbWNweSgoY2hhciAqKWttYXAocGFnZXNb
MF0pICsKICAgICAgfCAgICBefn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+CiAgNTg5IHwg
ICAgIHBhZ2VsaXN0LT5vZmZzZXQsCiAgICAgIHwgICAgIH5+fn5+fn5+fn5+fn5+fn5+CiAgNTkw
IHwgICAgIGZyYWdtZW50cywKICAgICAgfCAgICAgfn5+fn5+fn5+fgogIDU5MSB8ICAgICBoZWFk
X2J5dGVzKTsKICAgICAgfCAgICAgfn5+fn5+fn5+fn4KClBsZWFzZSBiZSBtb3JlIGNhcmVmdWwg
YW5kIGF0IGxlYXN0IHRlc3QgeW91ciBjaGFuZ2VzIGJlZm9yZSBzZW5kaW5nCnRoZW0gb3V0IDoo
CgpncmVnIGstaAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtcnBpLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtcnBpLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcnBpLWtlcm5lbAo=
