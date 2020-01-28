Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD4DE14AFD2
	for <lists+linux-rpi-kernel@lfdr.de>; Tue, 28 Jan 2020 07:31:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o/ruNIv7jN7okQ4N6zVMOdEp26XzR82pSypqiAndZd0=; b=I3mkkGircidNnf
	u9oS9QaeQKsHAdKZS2FIBraZMXxRejXlRJDtPDAITapr+oVTADIVXUxoEbZ7liwukehwoV+hbixJm
	Vo1NfumFPUjEx+9EIveZ1So5Ln6Wc9tbE6pvhXPcpdyO8cW6/QYAINpdA3ep/eU5nXx3wFzCrsUZg
	6P6reZwP6adHAAqYe7sndjXYydO71CGG2A8jQ4ZfsDaIhkTiuPRmO3AXE6CTSfuA6zP413LtfSX+2
	4pHwbgEh8b6yHjbFkopt7qZcO22GRB3pSOpKmkFrX3wVlBBT2gBVszTrRuM2dWxrxnQK8xuHYYo7t
	lg2qrNdGYvvyG9Aj7mZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwKP3-0003nf-7Q; Tue, 28 Jan 2020 06:31:13 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwKOz-0003n7-2Z
 for linux-rpi-kernel@lists.infradead.org; Tue, 28 Jan 2020 06:31:11 +0000
Received: from [192.168.1.183] ([37.4.249.152]) by mrelayeu.kundenserver.de
 (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MDgtl-1ildQi0SiF-00ArPE; Tue, 28 Jan 2020 07:30:51 +0100
Subject: Re: RPi B+ USB support
To: =?UTF-8?Q?Valentin_Vidi=c4=87?= <vvidic@valentin-vidic.from.hr>
References: <20200125120933.GF3671@valentin-vidic.from.hr>
 <d374f6cd6692d088ffad15cb29085cd723903418.camel@suse.de>
 <20200125130737.GG3671@valentin-vidic.from.hr>
 <39e2b61e-6ccf-a222-2246-5a36a2042e2c@i2se.com>
 <20200127200248.GX3671@valentin-vidic.from.hr>
From: Stefan Wahren <stefan.wahren@i2se.com>
Openpgp: preference=signencrypt
Autocrypt: addr=stefan.wahren@i2se.com; keydata=
 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 AQ==
Message-ID: <20be4281-3806-8582-92c3-84e81d4024e3@i2se.com>
Date: Tue, 28 Jan 2020 07:30:47 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200127200248.GX3671@valentin-vidic.from.hr>
Content-Language: en-US
X-Provags-ID: V03:K1:0oWaCfjpvXZMUGxRrMgCSbUAxKl5kpehjxH/tW1AFK6A9ZL2Xbg
 Err4e+7u0+fdiwvspJKSkRyACepQlwYzIzz1QtHp6HrCuxt2wp5HnLRe64lZief/ICY/TiU
 gVC/WofawMnXYMtqrVmwAa579XHBIrwgyct1eRWhXfrcSmXLFHFao+zMtwL6hU+vUnehHKo
 xeVUWXDm6tLUxBPNvz/Pg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:55/nlnk9paI=:vIPXgJVSclt4FePIfC5K2z
 Q7khI8W7skALgdic2inYzeh5nrnu5ljURdupUmchCSgcubDHRRIvYypDrszfi5ACN1fpIdyb2
 el+4fiKPlZ2uHTfjYbN2szAhuBbPPWMrcCtt2BdGr0r3kb94mPFFm/U4YaFpY0ZF4pAaLS3RK
 bfCh/OCAcga1YAf2oVZle3KUU8b0tBGjZz1mg4/cJfi7e8UJ9dIdNuWCdbhROnSFjzPZNy4z9
 r+ZLXcxJ7HFvKCwugdmsF2MA12JuN09dtyqV8znFH8/XE2QyzuvGyBmuNbX1DQ3joGEPuerbx
 86xCkdF1qtmI4HHnnjCkxFRayhQezWVgIH79o6KAvDY/3o0hDmH+cfWwsl9+lDNnzYMDRZqxM
 l0A9+1MGTSJwM5Ipan6xo4YXWoQ0AvpF10RsEbWK+l3SAhLA/FOQqFwncuL//E7Eph3A6ByMA
 F8NVhw7I5Vlh9eeR8jKYVD2MgU352cA7Y8gD3q44Hvt5FuI3lUZx60BYOldWzE8oYp8DVbpZn
 S7ktaDUABEWlobK8sRQ+b7wxkEPu8VD2OwJPRVN5uP+tJLwqp+xe+najpr14OsScLzSggjl4z
 vpwB3cJ35uJU5pDBt3dBRgWWGmkwJFOtJAVoatesPrVJhn3fQp7lsvj8EZM2N3iLjFx1WuRVh
 VEx2zSF0Ju6AztIsiuC0O+gg93iNuN3M8GEXqmyIeu9zoLMXIn10X0ds8FgsfRjnngbK2wBKE
 AKhGOMT2AIr7hni3a2wOW2nJDEPJjx+Acu0/8N5Z1qZBm1730sVh0ujx4PVCSBtPRstzyusmN
 DZcLs/V5Hc841qW7pUeo3DDo9e9v18SL+P+BS+g+8LX/cYoWQoDOhDmcBN+keMMzpKFNOv2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_223109_412069_B7A80214 
X-CRM114-Status: GOOD (  10.98  )
X-Spam-Score: 2.5 (++)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 2.5 URIBL_DBL_ABUSE_MALW   Contains an abused malware URL listed in
 the Spamhaus DBL blocklist [URIs: infradead.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

SGkgVmFsZW50aW4sCgpbYWRkIExpbnVzXQoKQW0gMjcuMDEuMjAgdW0gMjE6MDIgc2NocmllYiBW
YWxlbnRpbiBWaWRpxIc6Cj4gT24gTW9uLCBKYW4gMjcsIDIwMjAgYXQgMDg6Mjk6MDZBTSArMDEw
MCwgU3RlZmFuIFdhaHJlbiB3cm90ZToKPj4gaXMgdGhpcyB3YXJuaW5nIGRpc2FwcGVhcmVkLCBh
ZnRlciBzd2FwcGluZyB1LWJvb3Q/Cj4gWWVzLCB0aGUgd2FybmluZyBpcyBnb25lIG5vdywgYnV0
IG5vdCBzdXJlIHdoYXQgdGhlIGNhdXNlIHdhcwo+IGV4YWN0bHkuIFByb2JhYmx5IHNvbWV0aGlu
ZyB3cm9uZyB3aXRoIGxvYWRpbmcgdGhlIGRldmljZSB0cmVlCj4gZnJvbSB0aGUgYm9vdC5zY3Is
IGFzIGJvdGggdGhlIGdpdCBhbmQgdGhlIHBhY2thZ2VkIHZlcnNpb24gb2YKPiB1LWJvb3QuYmlu
IHdvcmsgbm93IHdpdGhvdXQgcHJvYmxlbXMuCgppIHN1c3BlY3QgdGhpcyB3YXMgdGhlIHJvb3Qg
Y2F1c2UgdGhhdCBwcmV2ZW50IGR3YzIgZnJvbSBwcm9iaW5nLiBBRkFJSwp0aGUgZHJpdmVyIGhh
cyBhIGRlcGVuZGVuY3kgZm9yIEdQSU8gLyByZWd1bGF0b3IgYW5kIHRoZSB3YXJuaW5nIHdhcwpj
YXVzZWQgYnkgdGhlIHBpbmN0cmwgLyBncGlvIGRyaXZlci4KCkhlcmUgaXMgYSByZWxhdGVkIGlz
c3VlIGluIHRoZSBkb3duc3RyZWFtIHJlcG86CgpodHRwczovL2dpdGh1Yi5jb20vcmFzcGJlcnJ5
cGkvbGludXgvaXNzdWVzLzI1OTAKCldoaWNoIHBvaW50cyB0byB0aGlzIG9sZCBjaGFuZ2U6Cgpw
aW5jdHJsOiBiY20yODM1OiBzd2l0Y2ggdG8gR1BJT0xJQl9JUlFDSElQCgpNYXliZSB0aGlzIHdh
cm5pbmcgWzFdIGlzIG9ubHkgcmVwcm9kdWNpYmxlIHVuZGVyIHNwZWNpZmljIHRpbWluZwpjb25k
aXRpb25zLgoKWzFdIC0KaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvcGlwZXJtYWlsL2xpbnV4
LXJwaS1rZXJuZWwvMjAyMC1KYW51YXJ5LzAwOTA2NS5odG1sCgoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LXJwaS1rZXJuZWwgbWFpbGluZyBs
aXN0CmxpbnV4LXJwaS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJwaS1rZXJuZWwK
