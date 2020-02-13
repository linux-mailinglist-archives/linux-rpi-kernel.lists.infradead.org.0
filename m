Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1BE615CDD3
	for <lists+linux-rpi-kernel@lfdr.de>; Thu, 13 Feb 2020 23:09:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:From:To:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=spBek0VHNyHDHttmKnbnGrgWsgO96LO1Mq0xtMlzL9Y=; b=qIHmpj4SrPmDnMZnwS5AyFr8Dt
	gseqD4Rn07z7xdWxdvj6aY96vQNSZPp93IOLvjndFP/V6/riAxBJ+qaJ1CG4HCMO3pIVn//fpJ5ac
	lu5SQH8n8LVavqFVr3NwVBc6q6FG9UAX454BC2jTRDpeq2HgkFlRC9TzUBeCPRqoPdbeYql0f5Z74
	dkx+QRUPi4olzvBw+kd5SI3jUdAgx9HgIe1zNDE87wysAieKUEfSwE0fEvgzErg/zqQki2L4/NR1s
	0NwcQBJBF+jp4wUfgBMiB5OCU7R4Efjmyvl+RpvhmEkxdulCaWZpPm9Tpv0KUq7XYEoiRlRqk4Dit
	C3PQP4mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2Mfd-0002zj-0x; Thu, 13 Feb 2020 22:09:17 +0000
Received: from smtpng1.m.smailru.net ([94.100.181.251])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2MfY-0002yo-6O
 for linux-rpi-kernel@lists.infradead.org; Thu, 13 Feb 2020 22:09:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=orpaltech.com; s=mailru; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Date:Message-ID:Subject:From:Cc:To;
 bh=4PrvxSy17NHHxIZF7XpnEhPXbxsPXzRLsJCCDvzBowQ=; 
 b=nQUwwV6OAnT9t/JBJxQHAJMEGRHMvsY0G6n85INJYy+y3klGmovhNnB7S7mssbD+9prjhZwFniIEB48sgEu9yCJh+HAr4Y7dvxgn1M43cKxNAXtJinQ67/CSsANJ8tMQyPCkKMaGD2WefK9U/pbo8fMrU4OZL3BLRFXRORFwWUc=;
Received: by smtpng1.m.smailru.net with esmtpa (envelope-from
 <ssuloev@orpaltech.com>)
 id 1j2MfR-0002uf-RQ; Fri, 14 Feb 2020 01:09:06 +0300
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
From: Sergey Suloev <ssuloev@orpaltech.com>
Subject: bcm2835 SPI issue
Message-ID: <4172f542-71a8-0186-fe4c-29a8148b7844@orpaltech.com>
Date: Fri, 14 Feb 2020 01:09:04 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
Content-Language: en-US
Authentication-Results: smtpng1.m.smailru.net;
 auth=pass smtp.auth=ssuloev@orpaltech.com
 smtp.mailfrom=ssuloev@orpaltech.com
X-7564579A: 646B95376F6C166E
X-77F55803: 0A44E481635329DB0E1AA8A03B392317D32E5E48865217369CDB5185B45D02FAC8337D826685338A556F68EC540A45327BB77D369432C3AD1B39DCD752063FDF2D439E6A4C4D22CFBAB5C6F8DB4C0E25
X-7FA49CB5: FF5795518A3D127A4AD6D5ED66289B5278DA827A17800CE7811C3E343B302E2EEA1F7E6F0F101C67BD4B6F7A4D31EC0BCC500DACC3FED6E28638F802B75D45FF8AA50765F79006377C3D92CA109C2EC58638F802B75D45FF5571747095F342E8C7A0BC55FA0FE5FC7F7D2FA9C9AA73EB891210DC8AD7387C5C560491950EB7CB389733CBF5DBD5E913377AFFFEAFD269176DF2183F8FC7C0618001F51B5FD3F9D2E47CDBA5A96583BD4B6F7A4D31EC0BB23A54CFFDBC96A8389733CBF5DBD5E9D5E8D9A59859A8B6F459A8243F1D1D44CC7F00164DA146DA6F5DAA56C3B73B23E7DDDDC251EA7DABAAAE862A0553A39223F8577A6DFFEA7C289736CE4F78F08343847C11F186F3C5E7DDDDC251EA7DABCC89B49CDF41148FDCD13837A2BCF0203C9F3DD0FB1AF5EB4E70A05D1297E1BBCB5012B2E24CD356
X-D57D3AED: Y8kq8+OzVoxvgW9Op3aR8Fxwo7H2ZNxGP5qz8aO2mjTJzjHGC4ogvVuzB3zfVUBtENeZ6b5av1fnCBE34JUDkaJinJwwHx5ysVv9/YfT9ueLuDTdIlUrqw==
X-Mailru-Sender: 689FA8AB762F73930799C7A3FA23A270609489699B666E5F716605A43FEC81AE778B5FB1219D8779F6BCD4B1DE95BF653AE5922765F965CDF1D7D1B96E5495AE10FCEA6DFE3E0A150D4ABDE8C577C2ED
X-Mras: Ok
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_140912_425954_5B278747 
X-CRM114-Status: UNSURE (   6.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [94.100.181.251 listed in list.dnswl.org]
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

aGksIE5pY29sYXMsCgpJIG5vdGljZWQgdGhhdCBiY20yODM1wqAgU1BJIGRyaXZlcsKgIGlzbid0
IGZ1bmN0aW9uaW5nIGFueW1vcmUgaW4ga2VybmVscyAKNS41IC0gNS42LiBJIGtub3cgdGhpcyBi
ZWNhdXNlIGl0IHdhcyB1c2VkIHN1Y2Nlc3NmdWxseSB3aXRoIHByZXZpb3VzIAp2ZXJzaW9ucyAo
dmVyeSBsYXRlc3QgdjQueCBhbmQgZWFybGllciB2NS54KS4KCkkgYW0gdGVzdGluZyBycGkzYiBh
bmQgcnBpM2ErwqAgYW5kIG11bHRpcGxlIFNQSSBwZXJpcGhlcmFscyAoZGlzcGxheXMsIAp3aXJl
bGVzcyB0cmFuc2NlaXZlciwgZXRjKSBhbmQgbm9uZSBvZiB0aGVtIGFyZSB3b3JraW5nIGFueW1v
cmUuIApIYXJkd2FyZSBjb25uZWN0aW9ucyBzdGF5IHRoZSBzYW1lIGFzIGJlZm9yZSBzbyBJIGRv
bid0IHRoaW5rIHRoaXMgaXMgYSAKaGFyZHdhcmUgaXNzdWUuCgpJIGFtIHVzaW5nIHRoZSBmb2xs
b3dpbmcgcGF0Y2ggaW4gbXkgYnVpbGQgdG8gZW5hYmxlIFNQSSBwaW5zOgoKaHR0cHM6Ly9naXRo
dWIuY29tL29ycGFsdGVjaC9hcm1saW51eC9ibG9iL21hc3Rlci9wYXRjaC9rZXJuZWwvYXJtbGlu
dXgvc3RhYmxlL3Y1LjUvcnBpLzAwMTctc3BpLWJjbTI4MzUtQWRkLVNQSS1jb250cm9sbGVyLXBp
bnMucGF0Y2gKCkl0IHdhcyBlbm91Z2ggaW4gcHJldmlvdXMga2VybmVscyBmb3IgU1BJIHRvIHdv
cmsuIElzIHRoZXJlIGFueXRoaW5nIAplbHNlIEkgc2hvdWxkIGRvIG5vdyA/CgoKVGhhbmsgeW91
CgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LXJwaS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LXJwaS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJw
aS1rZXJuZWwK
