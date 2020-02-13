Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3938E15CE06
	for <lists+linux-rpi-kernel@lfdr.de>; Thu, 13 Feb 2020 23:23:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+HtOSyupnbEwJ9Be+1dzNXFZjcGukMfBPW3sATzZ54o=; b=C62+6rHELtuViIDgjogiAor0+
	iQSOseM8cStzzmIsFNPGKhBAUMT3O8Gxmk1Jw+uTrgvVNUydLQkDI9/K9hVgTYtWqriJmSdONAq61
	HEZVdzy9ICw0p/iJTN6WVAbI0VObfXcr1opQ8nfSgg0T5lPI693XIoIlov+6OTm7RF4e4RtNuaduG
	ZklNbhGuA31j8dtBEZnzXqsa+uC1oRokOlXzVS68puJLUrO7OR2hlt34SmNRZ5T8JU+U7NH57BUXX
	W2wZgyizHrAxdQN93yhH8a1yGNzKfRRlCAVz7C6bd6kht5emyuI0nTUcbIRCZyJ+TU6z7QznRdlUV
	i7oymYDdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2Msu-00080g-9K; Thu, 13 Feb 2020 22:23:00 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2Msr-00080M-83
 for linux-rpi-kernel@lists.infradead.org; Thu, 13 Feb 2020 22:22:58 +0000
Received: by mail-wr1-x42f.google.com with SMTP id y11so8666963wrt.6
 for <linux-rpi-kernel@lists.infradead.org>;
 Thu, 13 Feb 2020 14:22:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=raspberrypi.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding;
 bh=2o5JVaY89Z0uWFecmCwxIaOZk37af5hvt99AwQ+jfEU=;
 b=HRaV9ZRjG9IhOMHP5U/z8A5o9GNXr8Zn39LBOqrZENDYSHMyX5xLEU82qiDII672EK
 jRRA+klIHgjLm+rHTmZkCX26zvXy2zsXof/bxqQ2834Fw9eHNkQ3SksTV8MxhDCjvw2M
 TSMrdjGW0wLU1r3WsIDuOFJzs1vaGCT0RBBm8you8jw8dEmQzN3Hgguvz/TCVGs+UD3f
 p68Shs+LW8l+EQE9/tIpL/NX42UwtdK+FiEFYCQAl+lb2p3Mjy7/qKdKKCRaFWplUtDF
 xpG6WxToWyDWngDxa2gmio166kAI/c7zkwaX45rgUqRsRMKBJ2UJwNmtH9+11AzxSk3+
 DQVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding;
 bh=2o5JVaY89Z0uWFecmCwxIaOZk37af5hvt99AwQ+jfEU=;
 b=cCAwEoFu7qh3RgoVcQ71DQKfrK2viqLxjF0fKRt4DFu919xGu83cqNeDZjr9SO3gWx
 dXjBh9QarE8dXR62WoNlb3GB4Qr/w8ytT62N3zcCFyMZaZgk/ovCP/LAOxWlVJpx7OXO
 BpIrR03/iUdJ2tGeIv1TFCAQRqR7Krb272As24PMTmnWMXSlIUsd6WBG0HuO9OQRkfTM
 pdr4QHR05fQuuNho8EHN8yLSSmo+mk4aZVQv23qmimDorLp4u5pe1YQ/aKKsmLZpbPzl
 ReUQqpY4FxyV6odo/CAYFlP23LWx4h3QD6kosf7KbKNJYyehZAcEWDG/yVCZfaxhkpQW
 p8EA==
X-Gm-Message-State: APjAAAW5hEdJ63bzrEJTblLon/tg4mQ1e18w4EnF7KuIq+zGpWUEV0HO
 BB5UJWJZUbVSYvrwyRZdGtzK2cbvfJJ+hg==
X-Google-Smtp-Source: APXvYqzjdR5tPwPdXpzAFF5aYbxFBF3srRmtSvq9nAyNjohhY/j2SdnpLw1Ym8DhsFi+YCgg7uDMXg==
X-Received: by 2002:adf:e74a:: with SMTP id c10mr25276683wrn.254.1581632574654; 
 Thu, 13 Feb 2020 14:22:54 -0800 (PST)
Received: from PhilsPB.local ([86.12.207.65])
 by smtp.gmail.com with ESMTPSA id o77sm4987227wme.34.2020.02.13.14.22.53
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 13 Feb 2020 14:22:54 -0800 (PST)
Subject: Re: bcm2835 SPI issue
To: Sergey Suloev <ssuloev@orpaltech.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
References: <4172f542-71a8-0186-fe4c-29a8148b7844@orpaltech.com>
From: Phil Elwell <phil@raspberrypi.com>
Message-ID: <09f2d0fd-19bc-0884-2f78-b0143f3279ef@raspberrypi.com>
Date: Thu, 13 Feb 2020 22:22:52 +0000
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:68.0)
 Gecko/20100101 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <4172f542-71a8-0186-fe4c-29a8148b7844@orpaltech.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_142257_327271_08963F64 
X-CRM114-Status: GOOD (  10.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42f listed in]
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

SGkgU2VyZ2V5LAoKT24gMTMvMDIvMjAyMCAyMjowOSwgU2VyZ2V5IFN1bG9ldiB3cm90ZToKPiBo
aSwgTmljb2xhcywKPiAKPiBJIG5vdGljZWQgdGhhdCBiY20yODM1wqAgU1BJIGRyaXZlcsKgIGlz
bid0IGZ1bmN0aW9uaW5nIGFueW1vcmUgaW4ga2VybmVscyA1LjUgLSA1LjYuIEkga25vdyB0aGlz
IGJlY2F1c2UgaXQgd2FzIHVzZWQgc3VjY2Vzc2Z1bGx5IHdpdGggcHJldmlvdXMgdmVyc2lvbnMg
KHZlcnkgbGF0ZXN0IHY0LnggYW5kIGVhcmxpZXIgdjUueCkuCj4gCj4gSSBhbSB0ZXN0aW5nIHJw
aTNiIGFuZCBycGkzYSvCoCBhbmQgbXVsdGlwbGUgU1BJIHBlcmlwaGVyYWxzIChkaXNwbGF5cywg
d2lyZWxlc3MgdHJhbnNjZWl2ZXIsIGV0YykgYW5kIG5vbmUgb2YgdGhlbSBhcmUgd29ya2luZyBh
bnltb3JlLiBIYXJkd2FyZSBjb25uZWN0aW9ucyBzdGF5IHRoZSBzYW1lIGFzIGJlZm9yZSBzbyBJ
IGRvbid0IHRoaW5rIHRoaXMgaXMgYSBoYXJkd2FyZSBpc3N1ZS4KPiAKPiBJIGFtIHVzaW5nIHRo
ZSBmb2xsb3dpbmcgcGF0Y2ggaW4gbXkgYnVpbGQgdG8gZW5hYmxlIFNQSSBwaW5zOgo+IAo+IGh0
dHBzOi8vZ2l0aHViLmNvbS9vcnBhbHRlY2gvYXJtbGludXgvYmxvYi9tYXN0ZXIvcGF0Y2gva2Vy
bmVsL2FybWxpbnV4L3N0YWJsZS92NS41L3JwaS8wMDE3LXNwaS1iY20yODM1LUFkZC1TUEktY29u
dHJvbGxlci1waW5zLnBhdGNoCj4gCj4gSXQgd2FzIGVub3VnaCBpbiBwcmV2aW91cyBrZXJuZWxz
IGZvciBTUEkgdG8gd29yay4gSXMgdGhlcmUgYW55dGhpbmcgZWxzZSBJIHNob3VsZCBkbyBub3cg
PwoKSSB0aGluayB5b3UgbmVlZCB0byBhZGQ6CgogICAgIHN0YXR1cyA9ICJva2F5IjsKCk90aGVy
d2lzZSwgdGhlIHNwaSBub2RlIHdpbGwgcmVtYWluIGRpc2FibGVkLgoKUGhpbAoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LXJwaS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LXJwaS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJwaS1rZXJuZWwK
