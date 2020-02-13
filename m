Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1978515CE45
	for <lists+linux-rpi-kernel@lfdr.de>; Thu, 13 Feb 2020 23:45:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uSG7eRyJ+TrBnw+k2u8xJYvRGPldtntqiGyXMVvixKE=; b=s9RodirlO1xXrTq40JBLjBXc+
	SSlmZOqnPtLdixwyu2U3LJzaZ8sQq9hlZgUH2f1uq73BfkVcnKRGxIHHLB+h0neUyHDw6WDYFs+eE
	sMP9qlVuaPkmU4PwrJimIdR69ds3AGWf1HS2/2sa2RFaIkm3EmVx9HrLPSOHMH3jNIW+t26lQrT0W
	SetJTEp2A7ihjG5yxn92FI/HgnlKD8mfc5W0j0zXIUi2+g2ngjJS0M70efs/9CoQ6zcRVeBpf9kzU
	Xn1JuG3Sj4hpfENkYn/3V/DlxCMFYzeGG7r9rfZfQDBMUCyC5hwLjNahxkFEqnGmVBdL/XI151ro5
	l+KfbjuyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2NEa-0007DR-Ge; Thu, 13 Feb 2020 22:45:24 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2NEX-0007Cv-4h
 for linux-rpi-kernel@lists.infradead.org; Thu, 13 Feb 2020 22:45:22 +0000
Received: by mail-wm1-x341.google.com with SMTP id m10so741485wmc.0
 for <linux-rpi-kernel@lists.infradead.org>;
 Thu, 13 Feb 2020 14:45:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=raspberrypi.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding;
 bh=fWMpcZl6kGM/TnAXxmjF8vauEyCjGAjQ6rK+Uy0pN9o=;
 b=gWYaHPXGQJmK7tT20fS4ybpJC8Yi9tbT5moLWNlvJ6opDH1+JpRC+KI3ohxQaeeifs
 nthjnYMJrFVqXYDXF3N/wnUh3A9kVVtAs4NhZS6tBOfmHAtXPzLW2ELKaYp1IxXlYnNA
 8QKLvKC5DOA+G1Cjam2fgTWD2ZQL1/xzciTunjgCg2FdcTFvIzhWiomCN4zDM3NCuvS0
 ws2nu4T8QrF6kmzj/Mo3ZcFLdmG3im9wOGZPxkwFZG6qidSSvWXV13sJK0Td9w3di+WL
 oyXwJfcOugh5EThJjWXGS7sMOuovIrykpimhFtmfwx6xgMIklVr/Kv0ukGZoHbc1UiM0
 +ZSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding;
 bh=fWMpcZl6kGM/TnAXxmjF8vauEyCjGAjQ6rK+Uy0pN9o=;
 b=hub7AggcB2KWfsFmX+ECPmlfULdFGiDT2wwraktyKcwXB/ib8/fipjnlElni/Jkjk7
 yLuwaOVUaZpSXSNIXI5ak181YeSQZJr9AVpkbbzdp4F2ac+FY9LEur7fP8FXZpNPsCX9
 EN6+P9ze22TWUzcRG3vStXGIQFXMiLwxqLRQDIZ6J+YukuxRvRCT8/lIFOhQ/QMg8wIz
 n+d2ijcFNwR4q35CWPDBAvBISv/rXbi0H/vt85Jfr/Aw8mmfiV+PWk4uskBYXcpDGBd+
 qdfE9ui6BrnhOJDUn7PeU+m1U7X8CV9QuV8wFGQ/wPYKtFc1yeNGQbJhlBUxOlgUF5Rf
 Z9kg==
X-Gm-Message-State: APjAAAXVgUC+UNaSLNFzyFRUHVYewnVDMK2hDxXN5bdbuuH41U1lGt6s
 p0X4KSTCt5pIgspauyNKw52P9u9NPhc06Q==
X-Google-Smtp-Source: APXvYqxxtbqFHZxBSwnzdRHKb3IlLqzGvMTOeaWMN7TqUvM/zmZBHJGFNOUAtw9KeeQ0vV29imoqsg==
X-Received: by 2002:a1c:ddc3:: with SMTP id u186mr282141wmg.103.1581633918961; 
 Thu, 13 Feb 2020 14:45:18 -0800 (PST)
Received: from PhilsPB.local ([86.12.207.65])
 by smtp.gmail.com with ESMTPSA id y6sm4571804wrl.17.2020.02.13.14.45.18
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 13 Feb 2020 14:45:18 -0800 (PST)
Subject: Re: bcm2835 SPI issue
To: Sergey Suloev <ssuloev@orpaltech.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
References: <4172f542-71a8-0186-fe4c-29a8148b7844@orpaltech.com>
 <09f2d0fd-19bc-0884-2f78-b0143f3279ef@raspberrypi.com>
 <e51f3e59-0915-27b7-05a1-e1a2fb8c10d0@orpaltech.com>
From: Phil Elwell <phil@raspberrypi.com>
Message-ID: <cf8c2169-7987-5b82-1533-d9a34cd09b41@raspberrypi.com>
Date: Thu, 13 Feb 2020 22:45:17 +0000
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:68.0)
 Gecko/20100101 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <e51f3e59-0915-27b7-05a1-e1a2fb8c10d0@orpaltech.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_144521_223098_F08F7ABE 
X-CRM114-Status: GOOD (  13.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
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

SGkgU2VyZ2V5LAoKT24gMTMvMDIvMjAyMCAyMjozNywgU2VyZ2V5IFN1bG9ldiB3cm90ZToKPiBo
aSwgUGhpbCwKPiAKPiBPbiAyLzE0LzIwIDE6MjIgQU0sIFBoaWwgRWx3ZWxsIHdyb3RlOgo+PiBI
aSBTZXJnZXksCj4+Cj4+IE9uIDEzLzAyLzIwMjAgMjI6MDksIFNlcmdleSBTdWxvZXYgd3JvdGU6
Cj4+PiBoaSwgTmljb2xhcywKPj4+Cj4+PiBJIG5vdGljZWQgdGhhdCBiY20yODM1wqAgU1BJIGRy
aXZlcsKgIGlzbid0IGZ1bmN0aW9uaW5nIGFueW1vcmUgaW4ga2VybmVscyA1LjUgLSA1LjYuIEkg
a25vdyB0aGlzIGJlY2F1c2UgaXQgd2FzIHVzZWQgc3VjY2Vzc2Z1bGx5IHdpdGggcHJldmlvdXMg
dmVyc2lvbnMgKHZlcnkgbGF0ZXN0IHY0LnggYW5kIGVhcmxpZXIgdjUueCkuCj4+Pgo+Pj4gSSBh
bSB0ZXN0aW5nIHJwaTNiIGFuZCBycGkzYSvCoCBhbmQgbXVsdGlwbGUgU1BJIHBlcmlwaGVyYWxz
IChkaXNwbGF5cywgd2lyZWxlc3MgdHJhbnNjZWl2ZXIsIGV0YykgYW5kIG5vbmUgb2YgdGhlbSBh
cmUgd29ya2luZyBhbnltb3JlLiBIYXJkd2FyZSBjb25uZWN0aW9ucyBzdGF5IHRoZSBzYW1lIGFz
IGJlZm9yZSBzbyBJIGRvbid0IHRoaW5rIHRoaXMgaXMgYSBoYXJkd2FyZSBpc3N1ZS4KPj4+Cj4+
PiBJIGFtIHVzaW5nIHRoZSBmb2xsb3dpbmcgcGF0Y2ggaW4gbXkgYnVpbGQgdG8gZW5hYmxlIFNQ
SSBwaW5zOgo+Pj4KPj4+IGh0dHBzOi8vZ2l0aHViLmNvbS9vcnBhbHRlY2gvYXJtbGludXgvYmxv
Yi9tYXN0ZXIvcGF0Y2gva2VybmVsL2FybWxpbnV4L3N0YWJsZS92NS41L3JwaS8wMDE3LXNwaS1i
Y20yODM1LUFkZC1TUEktY29udHJvbGxlci1waW5zLnBhdGNoCj4+Pgo+Pj4gSXQgd2FzIGVub3Vn
aCBpbiBwcmV2aW91cyBrZXJuZWxzIGZvciBTUEkgdG8gd29yay4gSXMgdGhlcmUgYW55dGhpbmcg
ZWxzZSBJIHNob3VsZCBkbyBub3cgPwo+Pgo+PiBJIHRoaW5rIHlvdSBuZWVkIHRvIGFkZDoKPj4K
Pj4gwqDCoMKgIHN0YXR1cyA9ICJva2F5IjsKPj4KPj4gT3RoZXJ3aXNlLCB0aGUgc3BpIG5vZGUg
d2lsbCByZW1haW4gZGlzYWJsZWQuCj4+Cj4+IFBoaWwKPj4KPiB0aGFua3MgZm9yIHJlcGx5Lgo+
IAo+IEl0IGlzIGFscmVhZHkgZG9uZSBieSB0aGUgZHQtb3ZlcmxheXMuCj4gCj4gQWdhaW46IGl0
IHdhcyB3b3JraW5nIGJlZm9yZSEgSXQganVzdCBzdG9wcGVkIHdvcmtpbmcgYWZ0ZXIgbW92aW5n
IHRvIDUuNS4KCkkgZG9uJ3QgdGhpbmsgdGhhdCBiY20yODM3LXJwaS0zLWIuZHRiIGhhcyBjaGFu
Z2VkIHNpZ25pZmljYW50bHkgYmV0d2VlbiA1LjQgYW5kIDUuNS4KSGF2ZSB5b3UgdHJpZWQgdGhl
IDUuNSBEVEIgd2l0aCB0aGUgNS40IGtlcm5lbD8KClBoaWwKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1ycGkta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1ycGkta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1ycGkta2VybmVsCg==
