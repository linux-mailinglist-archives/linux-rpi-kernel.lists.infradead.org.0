Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 641131960B9
	for <lists+linux-rpi-kernel@lfdr.de>; Fri, 27 Mar 2020 22:51:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3BZMyHcyC5REkuRYzh3DQj6jwwbNeh+IT3CiKiGM4hw=; b=gXC2cp7Ttq32MEj5lUMr9jiqg
	ZtOWaGh7y0bmkqr/s6+2qa5gL3Tq02ZU/fRHitTzEHRaYqSnI+cYOiqqCatBzCtcW52Xa49x9uxX0
	q76b51ZXCpdl0s5xPly8JjYY7WWz0gIex2rGrVColWVhuj06TYmDRPm7F/9opO7njFmQraLskpHas
	oAuGaA/bUG1nNhgqKEI5rvFim3JorcPUnAlT7uamGDnuC06xxmxrP0fr0t6ld/gUeNujBLcpdSAGB
	S5+S72rnT9KTNhVMTV3QalyTEYePrKNMPUOBVnZdV4hzg7K0aD4IEtD6qitBVt9/fi+UuqsIsJYu8
	gQltl5TXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHwsZ-0006C1-4s; Fri, 27 Mar 2020 21:51:03 +0000
Received: from mx.flatmax.org ([13.55.16.222])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHwsW-0006BX-6M
 for linux-rpi-kernel@lists.infradead.org; Fri, 27 Mar 2020 21:51:01 +0000
Received: from 41.68.233.220.static.exetel.com.au ([220.233.68.41]
 helo=[192.168.1.50])
 by mx.flatmax.org with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <flatmax@flatmax.org>)
 id 1jHwsP-00088s-A0; Sat, 28 Mar 2020 08:50:53 +1100
Subject: Re: [PATCH] ASoC: bcm2835-i2s: substream alignment now independent in
 hwparams
To: Matthias Reichl <hias@horus.com>
References: <20200324090823.20754-1-flatmax@flatmax.org>
 <d0684926-3f7a-0b97-a298-4088925442a4@flatmax.org>
 <1dcf128a-4ad3-0efa-81e4-b3ccc7caa8f1@flatmax.org>
 <20200327132324.GA4523@lenny.lan>
From: Matt Flax <flatmax@flatmax.org>
Message-ID: <59b9ef4e-0067-593e-b4f9-49a5b271b432@flatmax.org>
Date: Sat, 28 Mar 2020 08:50:52 +1100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200327132324.GA4523@lenny.lan>
Content-Language: en-US
X-Spam-Score: -2.9 (--)
X-Spam-Report: Spam detection software, running on the system "mx.flatmax.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 @@CONTACT_ADDRESS@@ for details.
 Content preview:  On 28/3/20 12:23 am, Matthias Reichl wrote: > On Fri, Mar
 27, 2020 at 11:30:50AM +1100, Matt Flax wrote: >> On 27/3/20 10:56 am, Matt
 Flax wrote: >>> Should this patch be handled through the ALSA team [...] 
 Content analysis details:   (-2.9 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: flatmax.org]
 -1.0 ALL_TRUSTED            Passed through trusted hosts only via SMTP
 0.0 TVD_RCVD_IP            Message was received from an IP address
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_145100_376011_55EA2724 
X-CRM114-Status: GOOD (  18.15  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: alsa-devel@alsa-project.org, Mark Brown <broonie@kernel.org>,
 linux-rpi-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

Ck9uIDI4LzMvMjAgMTI6MjMgYW0sIE1hdHRoaWFzIFJlaWNobCB3cm90ZToKPiBPbiBGcmksIE1h
ciAyNywgMjAyMCBhdCAxMTozMDo1MEFNICsxMTAwLCBNYXR0IEZsYXggd3JvdGU6Cj4+IE9uIDI3
LzMvMjAgMTA6NTYgYW0sIE1hdHQgRmxheCB3cm90ZToKPj4+IFNob3VsZCB0aGlzIHBhdGNoIGJl
IGhhbmRsZWQgdGhyb3VnaCB0aGUgQUxTQSB0ZWFtIHRoZSBSLiBQaSB0ZWFtIG9yIHRoZQo+Pj4g
QkNNIHRlYW0gPwo+Pj4KPj4gUmVzZW5kaW5nIGFnYWluIHdpdGggcmVkdWNlZCByZWNpcGllbnRz
Lgo+Pgo+Pgo+Pj4gdGhhbmtzCj4+Pgo+Pj4gTWF0dAo+Pj4KPj4+IE9uIDI0LzMvMjAgODowOCBw
bSwgTWF0dCBGbGF4IHdyb3RlOgo+Pj4+IFN1YnN0cmVhbSBzYW1wbGUgYWxpZ25tZW50IHdhcyBi
ZWluZyBzZXQgaW4gaHdwYXJhbXMgZm9yIGJvdGgKPj4+PiBzdWJzdHJlYW1zIGF0IHRoZSBzYW1l
IHRpbWUuIFRoaXMgYmVjYW1lIGEgcHJvYmxlbSB3aGVuwqDCoMKgIHRoZSBBdWRpbwo+Pj4+IElu
amVjdG9yIGlzb2xhdGVkIHNvdW5kIGNhcmQgbmVlZGVkIHRvIG9mZnNldCBzYW1wbGUgYWxpZ25t
ZW50Cj4+Pj4gZm9yIGhpZ2ggc2FtcGxlwqDCoMKgIHJhdGVzLiBUaGUgbGF0ZW5jeSBkaWZmZXJl
bmNlIGJldHdlZW4gcGxheWJhY2sKPj4+PiBhbmQgY2FwdHVyZSBvY2N1cnMgYmVjYXVzZSBvZiB0
aGUgZGlnaXRhbCBpc29sYXRpb24gY2hpcAo+Pj4+IHByb3BhZ2F0aW9uIHRpbWUsIHBhcnRpY3Vs
YXJseSB3aGVuIHRoZSBjb2RlYyBpcyBtYXN0ZXIgYW5kCj4+Pj4gdGhlIERBQyByZXR1cm4gaXMg
dHdpY2UgZGVsYXllZC4KPj4+Pgo+Pj4+IFRoaXMgcGF0Y2ggc2V0cyBzYW1wbGUgYWxpZ25tZW50
IHJlZ2lzdGVyc8KgIGJhc2VkIG9uIHRoZSBzdWJzdHJlYW0KPj4+PiBkaXJlY3Rpb24gaW4gaHdw
YXJhbXMuIFRoaXMgZ2l2ZXMgdGhlIG1hY2hpbmUgZHJpdmVyIG1vcmUgY29udHJvbAo+Pj4+IG92
ZXIgc2FtcGxlIGFsaWdubWVudCBpbiB0aGUgYmNtMjgzNSBpMnMgZHJpdmVyLgo+Pj4+Cj4+Pj4g
U2lnbmVkLW9mZi1ieTogTWF0dCBGbGF4IDxmbGF0bWF4QGZsYXRtYXgub3JnPgo+Pj4+IC0tLQo+
Pj4+ICDCoCBzb3VuZC9zb2MvYmNtL2JjbTI4MzUtaTJzLmMgfCAzNiArKysrKysrKysrKysrKysr
KysrLS0tLS0tLS0tLS0tLS0tLS0KPj4+PiAgwqAgMSBmaWxlIGNoYW5nZWQsIDE5IGluc2VydGlv
bnMoKyksIDE3IGRlbGV0aW9ucygtKQo+Pj4+Cj4+Pj4gZGlmZiAtLWdpdCBhL3NvdW5kL3NvYy9i
Y20vYmNtMjgzNS1pMnMuYyBiL3NvdW5kL3NvYy9iY20vYmNtMjgzNS1pMnMuYwo+Pj4+IGluZGV4
IGU2YTEyZTI3MWIwNy4uOWRiNTQyNjk5YTEzIDEwMDY0NAo+Pj4+IC0tLSBhL3NvdW5kL3NvYy9i
Y20vYmNtMjgzNS1pMnMuYwo+Pj4+ICsrKyBiL3NvdW5kL3NvYy9iY20vYmNtMjgzNS1pMnMuYwo+
Pj4+IEBAIC00OTMsMTEgKzQ5Myw2IEBAIHN0YXRpYyBpbnQgYmNtMjgzNV9pMnNfaHdfcGFyYW1z
KHN0cnVjdAo+Pj4+IHNuZF9wY21fc3Vic3RyZWFtICpzdWJzdHJlYW0sCj4+Pj4gIMKgwqDCoMKg
wqDCoMKgwqDCoCByZXR1cm4gLUVJTlZBTDsKPj4+PiAgwqDCoMKgwqDCoCB9Cj4+Pj4gIMKgIC3C
oMKgwqAgYmNtMjgzNV9pMnNfY2FsY19jaGFubmVsX3BvcygmcnhfY2gxX3BvcywgJnJ4X2NoMl9w
b3MsCj4+Pj4gLcKgwqDCoMKgwqDCoMKgIHJ4X21hc2ssIHNsb3Rfd2lkdGgsIGRhdGFfZGVsYXks
IG9kZF9zbG90X29mZnNldCk7Cj4+Pj4gLcKgwqDCoCBiY20yODM1X2kyc19jYWxjX2NoYW5uZWxf
cG9zKCZ0eF9jaDFfcG9zLCAmdHhfY2gyX3BvcywKPj4+PiAtwqDCoMKgwqDCoMKgwqAgdHhfbWFz
aywgc2xvdF93aWR0aCwgZGF0YV9kZWxheSwgb2RkX3Nsb3Rfb2Zmc2V0KTsKPj4+PiAtCj4+Pj4g
IMKgwqDCoMKgwqAgLyoKPj4+PiAgwqDCoMKgwqDCoMKgICogVHJhbnNtaXR0aW5nIGRhdGEgaW1t
ZWRpYXRlbHkgYWZ0ZXIgZnJhbWUgc3RhcnQsIGVnCj4+Pj4gIMKgwqDCoMKgwqDCoCAqIGluIGxl
ZnQtanVzdGlmaWVkIG9yIERTUCBtb2RlIEEsIG9ubHkgd29ya3Mgc3RhYmxlCj4+Pj4gQEAgLTUw
OCwxOSArNTAzLDI2IEBAIHN0YXRpYyBpbnQgYmNtMjgzNV9pMnNfaHdfcGFyYW1zKHN0cnVjdAo+
Pj4+IHNuZF9wY21fc3Vic3RyZWFtICpzdWJzdHJlYW0sCj4+Pj4gIMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgICJVbnN0YWJsZSBzbGF2ZSBjb25maWcgZGV0ZWN0ZWQsIEwvUiBtYXkgYmUgc3dh
cHBlZCIpOwo+Pj4+ICDCoCDCoMKgwqDCoMKgIC8qCj4+Pj4gLcKgwqDCoMKgICogU2V0IGZvcm1h
dCBmb3IgYm90aCBzdHJlYW1zLgo+Pj4+IC3CoMKgwqDCoCAqIFdlIGNhbm5vdCBzZXQgYW5vdGhl
ciBmcmFtZSBsZW5ndGgKPj4+PiAtwqDCoMKgwqAgKiAoYW5kIHRoZXJlZm9yZSB3b3JkIGxlbmd0
aCkgYW55d2F5LAo+Pj4+IC3CoMKgwqDCoCAqIHNvIHRoZSBmb3JtYXQgd2lsbCBiZSB0aGUgc2Ft
ZS4KPj4+PiArwqDCoMKgwqAgKiBTZXQgZm9ybWF0IG9uIGEgcGVyIHN0cmVhbSBiYXNpcy4KPj4+
PiArwqDCoMKgwqAgKiBUaGUgYWxpZ25tZW50IGZvcm1hdCBjYW4gYmUgZGlmZmVyZW50IGRlcGVu
ZGluZyBvbiBkaXJlY3Rpb24uCj4+Pj4gIMKgwqDCoMKgwqDCoCAqLwo+Pj4+IC3CoMKgwqAgcmVn
bWFwX3dyaXRlKGRldi0+aTJzX3JlZ21hcCwgQkNNMjgzNV9JMlNfUlhDX0FfUkVHLAo+Pj4+IC3C
oMKgwqDCoMKgwqDCoMKgwqAgZm9ybWF0Cj4+Pj4gLcKgwqDCoMKgwqDCoMKgIHwgQkNNMjgzNV9J
MlNfQ0gxX1BPUyhyeF9jaDFfcG9zKQo+Pj4+IC3CoMKgwqDCoMKgwqDCoCB8IEJDTTI4MzVfSTJT
X0NIMl9QT1MocnhfY2gyX3BvcykpOwo+Pj4+IC3CoMKgwqAgcmVnbWFwX3dyaXRlKGRldi0+aTJz
X3JlZ21hcCwgQkNNMjgzNV9JMlNfVFhDX0FfUkVHLAo+Pj4+IC3CoMKgwqDCoMKgwqDCoMKgwqAg
Zm9ybWF0Cj4+Pj4gLcKgwqDCoMKgwqDCoMKgIHwgQkNNMjgzNV9JMlNfQ0gxX1BPUyh0eF9jaDFf
cG9zKQo+Pj4+IC3CoMKgwqDCoMKgwqDCoCB8IEJDTTI4MzVfSTJTX0NIMl9QT1ModHhfY2gyX3Bv
cykpOwo+Pj4+ICvCoMKgwqAgaWYgKHN1YnN0cmVhbS0+c3RyZWFtID09IFNORFJWX1BDTV9TVFJF
QU1fQ0FQVFVSRSkgewo+Pj4+ICvCoMKgwqDCoMKgwqDCoCBiY20yODM1X2kyc19jYWxjX2NoYW5u
ZWxfcG9zKCZyeF9jaDFfcG9zLCAmcnhfY2gyX3BvcywKPj4+PiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCByeF9tYXNrLCBzbG90X3dpZHRoLCBkYXRhX2RlbGF5LCBvZGRfc2xvdF9vZmZzZXQpOwo+
Pj4+ICvCoMKgwqDCoMKgwqDCoCByZWdtYXBfd3JpdGUoZGV2LT5pMnNfcmVnbWFwLCBCQ00yODM1
X0kyU19SWENfQV9SRUcsCj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGZvcm1hdAo+
Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHwgQkNNMjgzNV9JMlNfQ0gxX1BPUyhyeF9jaDFf
cG9zKQo+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHwgQkNNMjgzNV9JMlNfQ0gyX1BPUyhy
eF9jaDJfcG9zKSk7Cj4+Pj4gK8KgwqDCoCB9Cj4+Pj4gKwo+Pj4+ICvCoMKgwqAgaWYgKHN1YnN0
cmVhbS0+c3RyZWFtID09IFNORFJWX1BDTV9TVFJFQU1fUExBWUJBQ0spIHsKPj4+PiArwqDCoMKg
wqDCoMKgwqAgYmNtMjgzNV9pMnNfY2FsY19jaGFubmVsX3BvcygmdHhfY2gxX3BvcywgJnR4X2No
Ml9wb3MsCj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgdHhfbWFzaywgc2xvdF93aWR0aCwg
ZGF0YV9kZWxheSwgb2RkX3Nsb3Rfb2Zmc2V0KTsKPj4+PiArwqDCoMKgwqDCoMKgwqAgcmVnbWFw
X3dyaXRlKGRldi0+aTJzX3JlZ21hcCwgQkNNMjgzNV9JMlNfVFhDX0FfUkVHLAo+Pj4+ICvCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBmb3JtYXQKPj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCB8IEJDTTI4MzVfSTJTX0NIMV9QT1ModHhfY2gxX3BvcykKPj4+PiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCB8IEJDTTI4MzVfSTJTX0NIMl9QT1ModHhfY2gyX3BvcykpOwo+Pj4+ICvCoMKgwqAg
fQo+Pj4+ICDCoCDCoMKgwqDCoMKgIC8qIFNldHVwIHRoZSBJMlMgbW9kZSAqLwo+IFRoaXMgd2ls
bCBicmVhayBkdXBsZXggb3BlcmF0aW9uIGlmIGEgc2Vjb25kIHN0cmVhbSBpcyBvcGVuZWQgd2hl
bgo+IGEgc3RyZWFtIGlzIGFscmVhZHkgcnVubmluZyBhcyB0aGUgY2hhbm5lbCBwb3NpdGlvbiBy
ZWdpc3RlcnMgZm9yCj4gdGhlIHNlY29uZCBzdHJlYW0gaGF2ZW4ndCBiZWVuIHNldCB1cC4KPgo+
IE5vdGUgdGhpcyBjb2RlIGF0IHRoZSB2ZXJ5IGJlZ2lubmluZyBvZiBod19wYXJhbXM6Cj4KPiAg
ICAgICAgICAvKgo+ICAgICAgICAgICAqIElmIGEgc3RyZWFtIGlzIGFscmVhZHkgZW5hYmxlZCwK
PiAgICAgICAgICAgKiB0aGUgcmVnaXN0ZXJzIGFyZSBhbHJlYWR5IHNldCBwcm9wZXJseS4KPiAg
ICAgICAgICAgKi8KPiAgICAgICAgICByZWdtYXBfcmVhZChkZXYtPmkyc19yZWdtYXAsIEJDTTI4
MzVfSTJTX0NTX0FfUkVHLCAmY3NyZWcpOwo+Cj4gICAgICAgICAgaWYgKGNzcmVnICYgKEJDTTI4
MzVfSTJTX1RYT04gfCBCQ00yODM1X0kyU19SWE9OKSkKPiAgICAgICAgICAgICAgICAgIHJldHVy
biAwOwo+Cj4gVGhlIHJlYXNvbiBmb3IgdGhpcyBjaGVjayBpcyB0aGF0IHdlIGNhbid0IGNoYW5n
ZSBiY20yODM1IEkyUyByZWdpc3RlcnMKPiBhZnRlciBJMlMgUlgvVFggaGFzIGJlZW4gZW5hYmxl
ZCAtIHRoZSByZWFzb24gd2h5IGlzIGV4cGxhaW5lZCBpbiB0aGUKPiBkYXRhc2hlZXQ6Cj4KPj4g
VGhlIFBDTSBpbnRlcmZhY2UgcnVucyBhc3luY2hyb25vdXNseSBhdCB0aGUgUENNX0NMSyByYXRl
IGFuZAo+PiBhdXRvbWF0aWNhbGx5IHRyYW5zZmVycyB0cmFuc21pdCBhbmQgcmVjZWl2ZSBkYXRh
IGFjcm9zcyB0byB0aGUKPj4gaW50ZXJuYWwgQVBCIGNsb2NrIGRvbWFpbi4gVGhlIGNvbnRyb2wg
cmVnaXN0ZXJzIGFyZSBOT1QKPj4gc3luY2hyb25pc2VkIGFuZCBzaG91bGQgYmUgcHJvZ3JhbW1l
ZCBiZWZvcmUgdGhlIGRldmljZSBpcyBlbmFibGVkCj4+IGFuZCBzaG91bGQgTk9UIGJlIGNoYW5n
ZWQgd2hpbHN0IHRoZSBpbnRlcmZhY2UgaXMgcnVubmluZy4KPj4KPj4gT25seSB0aGUgRU4sIFJY
T04gYW5kIFRYT04gYml0cyBvZiB0aGUgUENNQ1MgcmVnaXN0ZXIgYXJlIHN5bmNocm9uaXNlZAo+
PiBhY3Jvc3MgdGhlIFBDTSAtIEFQQiBjbG9jayBkb21haW4gYW5kIGFyZSBhbGxvd2VkIHRvIGJl
IGNoYW5nZWQgd2hpbHN0Cj4+IHRoZSBpbnRlcmZhY2UgaXMgcnVubmluZy4KPiBUaGVyZWZvcmUg
d2UgbmVlZCB0byBzZXQgdXAgY2hhbm5lbCBtYXNrcyBmb3IgYm90aCBSWCBhbmQgVFggYmVmb3Jl
Cj4gYW55IHN0cmVhbSBpcyBzdGFydGVkLgoKCkkgc2VlIHdoYXQgeW91IG1lYW4uIFdlIGNhbid0
IGNoYW5nZSB0aGUgcmVnaXN0ZXJzIG9uY2UgdGhlIHN5c3RlbSBoYXMgCnN0YXJ0ZWQgaGFsZiBk
dXBsZXggYW5kIHRoZW4gc3Vic2VxdWVudGx5IGNoYW5nZWQgdG8gZnVsbCBkdXBsZXguCgpUaGVy
ZSBhcmUgY2FzZXMgaG93ZXZlciB3aGVyZSBwbGF5YmFjayBhbmQgY2FwdHVyZSBuZWVkIHRvIGJl
IHNldCAKaW5kZXBlbmRlbnRseS4gSW4gdGhlc2UgY2FzZXMgdGhlIG1hY2hpbmUgZHJpdmVyIHJl
cXVpcmVzIGRpZmZlcmVudCAKZm9ybWF0IHNldHRpbmdzIGJhc2VkIG9uIHRoZSBzdHJlYW0gZGly
ZWN0aW9uLgoKV2hhdCBpZiB3ZSBtYWtlIGEgY2hlY2sgZm9yIHdoZXRoZXIgdGhlIHN5c3RlbSBp
cyBhbHJlYWR5IHJ1bm5pbmcgYW5kIGluIAp0aGF0IGNhc2UgcmV0dXJuIGFuIGVycm9yIC0gZm9y
Y2luZyB0aGUgdXNlciB0byB1c2Ugc3BlY2lmeSB0aGUgc2FtZSAKZGFpX2ZtdCB3aGljaCBpcyBh
bHJlYWR5IGluIHVzZSBiZWZvcmUgY29udGludWluZyA/CgpXb3VsZCB0aGVyZSBiZSBhIGJldHRl
ciB3YXkgdG8gYWNoaWV2ZSBkaWZmZXJlbnQgaHdwYXJhbXMgYmFzZWQgb24gCnN0cmVhbSBkaXJl
Y3Rpb24gPwoKTWF0dAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LXJwaS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LXJwaS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJwaS1rZXJuZWwK
