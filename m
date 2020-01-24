Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D96041482B6
	for <lists+linux-rpi-kernel@lfdr.de>; Fri, 24 Jan 2020 12:30:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d/3nLKXu4+LxRixUtmG3i9IExWKI6U4XzdhOL6Ez4JQ=; b=heJJN9XTDJB6tx
	adYixM7RleBrhUq1yxFgXutPlWpYkRRykus/sfjNOK5uUEddp/SD17RKBbfoh2npnlj30kJYH+W7K
	JSWvkPKclGgsYfJ9o3JuNXNaLolbIR/YjZQB4xE9SIr9rXI6aqmr6PdoyYT6FbBHglOqPHMujlXda
	YSGxyyswbWMoqVtdsoOwCGvOykiD66f9tTRRH2d+3Ik5ZvJldc9gVupWiliabeMs0x1ZvdnAXvIZD
	EcF3OyuqMYZE9eKSkRhkFdSY9tSXFPfm+6FA5DujubPa4CbFGzVFbjxr5k7uevkAgJNKynmFrDn2m
	nNikvDYJiyP4buPxRg9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuxAh-0007p7-9W; Fri, 24 Jan 2020 11:30:43 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuxAe-0007o3-6f; Fri, 24 Jan 2020 11:30:41 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 00OBUXrG093347;
 Fri, 24 Jan 2020 05:30:33 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1579865433;
 bh=TNVGZncj/emO7ZwPs/tDLiyy7EhUXZDgUQHos95Xw2g=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=HdNZ2xzlLG2ZNKD6hs0FQrdQDdrcseAZXh6kSYPbXceVuL7TwNRzaFXe7bIcRrCI0
 yNQfBhSqdmzkWrJHEo/ZGBoHvTYumV4RTHJOsHdyo/BjK9r1ECU7B4DQveL2I8jeO3
 AIUq+64yJcX/6KGC11vpzB90JADudPCM2horL+lc=
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 00OBUX7L051608
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 24 Jan 2020 05:30:33 -0600
Received: from DLEE114.ent.ti.com (157.170.170.25) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Fri, 24
 Jan 2020 05:30:32 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Fri, 24 Jan 2020 05:30:32 -0600
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 00OBUUUE088149;
 Fri, 24 Jan 2020 05:30:31 -0600
Subject: Re: [PATCH for-next] arm64: defconfig: Set bcm2835-dma as built-in
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, Ulf Hansson
 <ulf.hansson@linaro.org>
References: <20200124111700.29910-1-nsaenzjulienne@suse.de>
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
Message-ID: <adf69613-518f-db01-c1c1-8d3fda4b5182@ti.com>
Date: Fri, 24 Jan 2020 13:31:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200124111700.29910-1-nsaenzjulienne@suse.de>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_033040_325579_0421D5E1 
X-CRM114-Status: GOOD (  19.89  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 linux-rpi-kernel@lists.infradead.org, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

SGkgTmljb2xhcywKCk9uIDI0LzAxLzIwMjAgMTMuMTcsIE5pY29sYXMgU2FlbnogSnVsaWVubmUg
d3JvdGU6Cj4gV2l0aCB0aGUgaW50cm9kdWN0aW9uIG9mIDczODk4N2ExZDZmMSAoIm1tYzogYmNt
MjgzNTogVXNlCj4gZG1hX3JlcXVlc3RfY2hhbigpIGluc3RlYWQgZG1hX3JlcXVlc3Rfc2xhdmVf
Y2hhbm5lbCgpIikgc2Rob3N0LWJjbTI4MzUKPiBub3cgd2FpdHMgZm9yIGl0cyBETUEgY2hhbm5l
bCB0byBiZSBhdmFpbGFibGUgd2hlbiBkZWZpbmVkIGluIHRoZQo+IGRldmljZS10cmVlIChpdCB3
b3VsZCBwcmV2aW91c2x5IGRlZmF1bHQgdG8gUElPKS4gQWxiZWl0IHRoZSByaWdodAo+IGJlaGF2
aW91ciwgdGhlIE1NQyBob3N0IGlzIG5lZWRlZCBmb3IgYm9vdGluZy4gU28gdGhpcyBtYWtlcyBz
dXJlIHRoZQo+IERNQSBjaGFubmVsIHNob3dzIHVwIGluIHRpbWUuCj4gCj4gRml4ZXM6IDczODk4
N2ExZDZmMSAoIm1tYzogYmNtMjgzNTogVXNlIGRtYV9yZXF1ZXN0X2NoYW4oKSBpbnN0ZWFkIGRt
YV9yZXF1ZXN0X3NsYXZlX2NoYW5uZWwoKSIpCgppdCBpcyBub3QgYSBidWcsIGl0IGlzIGEgZmVh
dHVyZSA7KQoKWWVzLCBpZiBhIGRyaXZlciBoYXZlIERNQSBiaW5kaW5nIGFuZCBpdCBpcyBuZWVk
ZWQgZHVyaW5nIGJvb3QgdGhlbiB0aGUKRE1BIGRyaXZlciBhbHNvIG5lZWRzIHRvIGJlIGJ1aWx0
IGluLgpJIGJlbGlldmUgaXQgaXMgZGVzaXJlZCB0byB1c2UgRE1BIGluc3RlYWQgb2YgUElPIGlu
IGFueSBjYXNlIGZvciBNTUMKYW5kIGluIHRoZSBwYXN0IGJjbTI4MzUgZGlkIG5vdCB1c2VkIERN
QSBpZiBETUEgd2FzIG1vZHVsZSBhbmQgdGhlIE1NQwp3YXMgYnVpbHQgaW4uCgpTb3JyeSBmb3Ig
dGhlIGluY29udmVuaWVuY2UgdGhpcyBjaGFuZ2UgaGFzIGNhdXNlZCB0byBiY20yODM1IQoKUmV2
aWV3ZWQtYnk6IFBldGVyIFVqZmFsdXNpIDxwZXRlci51amZhbHVzaUB0aS5jb20+Cgo+IFNpZ25l
ZC1vZmYtYnk6IE5pY29sYXMgU2FlbnogSnVsaWVubmUgPG5zYWVuemp1bGllbm5lQHN1c2UuZGU+
Cj4gLS0tCj4gIGFyY2gvYXJtNjQvY29uZmlncy9kZWZjb25maWcgfCAyICstCj4gIDEgZmlsZSBj
aGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9h
cmNoL2FybTY0L2NvbmZpZ3MvZGVmY29uZmlnIGIvYXJjaC9hcm02NC9jb25maWdzL2RlZmNvbmZp
Zwo+IGluZGV4IDQ2MzFhMTE5MDcxOS4uOTA1MTA5ZjY4MTRmIDEwMDY0NAo+IC0tLSBhL2FyY2gv
YXJtNjQvY29uZmlncy9kZWZjb25maWcKPiArKysgYi9hcmNoL2FybTY0L2NvbmZpZ3MvZGVmY29u
ZmlnCj4gQEAgLTY4Myw3ICs2ODMsNyBAQCBDT05GSUdfUlRDX0RSVl9TTlZTPW0KPiAgQ09ORklH
X1JUQ19EUlZfSU1YX1NDPW0KPiAgQ09ORklHX1JUQ19EUlZfWEdFTkU9eQo+ICBDT05GSUdfRE1B
REVWSUNFUz15Cj4gLUNPTkZJR19ETUFfQkNNMjgzNT1tCj4gK0NPTkZJR19ETUFfQkNNMjgzNT15
Cj4gIENPTkZJR19ETUFfU1VONkk9bQo+ICBDT05GSUdfRlNMX0VETUE9eQo+ICBDT05GSUdfSU1Y
X1NETUE9eQo+IAoKLSBQw6l0ZXIKClRleGFzIEluc3RydW1lbnRzIEZpbmxhbmQgT3ksIFBvcmtr
YWxhbmthdHUgMjIsIDAwMTgwIEhlbHNpbmtpLgpZLXR1bm51cy9CdXNpbmVzcyBJRDogMDYxNTUy
MS00LiBLb3RpcGFpa2thL0RvbWljaWxlOiBIZWxzaW5raQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtcnBpLWtlcm5lbCBtYWlsaW5nIGxpc3QK
bGludXgtcnBpLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcnBpLWtlcm5lbAo=
