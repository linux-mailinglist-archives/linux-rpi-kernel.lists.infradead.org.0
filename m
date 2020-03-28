Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDC01196A1A
	for <lists+linux-rpi-kernel@lfdr.de>; Sun, 29 Mar 2020 00:48:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5JuMLTM3cy1NxjffbBvQZjNIComoqclzCc00TLFxjOA=; b=A2/7EaRDtE4xchgD5+SjgrPgf
	FOBIKUwTjSLcRInBe5p9z2Ty/4TDVyYoCT23G99OVfG+uQe1ggwiiyW2b913TX0Qw63zwW4xdUokN
	risXkV/i4favd73fUmW0Ca23LPBSgyi498yNhWeYf2zVU7DKCzQr94SPOXuVycGLYVNKIvAbZsQ/D
	UgzaA7WODMFu9WpJWuu7++0jBTmnfKhCjXAEJKLNMyyCpadvb6xZKgy3UFMMvelPqBgNn1XFz+28X
	+ypAHOjJyrhM5YAiphOGKip6HJjnhE47MUUGC/rsIxjWQr/FQkWF/EnAzsoJVvfnSoHu+GBtM1ZIh
	qw/TlE2sA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jILBL-000449-3T; Sat, 28 Mar 2020 23:48:03 +0000
Received: from mx.flatmax.org ([13.55.16.222])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jILBH-00042w-3M
 for linux-rpi-kernel@lists.infradead.org; Sat, 28 Mar 2020 23:48:00 +0000
Received: from 41.68.233.220.static.exetel.com.au ([220.233.68.41]
 helo=[192.168.1.51])
 by mx.flatmax.org with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <flatmax@flatmax.org>)
 id 1jILB6-0008Lu-Gx; Sun, 29 Mar 2020 10:47:49 +1100
Subject: Re: [PATCH] ASoC: bcm2835-i2s: substream alignment now independent in
 hwparams
To: Matthias Reichl <hias@horus.com>
References: <20200324090823.20754-1-flatmax@flatmax.org>
 <d0684926-3f7a-0b97-a298-4088925442a4@flatmax.org>
 <1dcf128a-4ad3-0efa-81e4-b3ccc7caa8f1@flatmax.org>
 <20200327132324.GA4523@lenny.lan>
 <59b9ef4e-0067-593e-b4f9-49a5b271b432@flatmax.org>
 <20200328115911.GA4997@camel2.lan>
From: Matt Flax <flatmax@flatmax.org>
Message-ID: <bc11b6e2-36bb-d021-f888-606d14eccb51@flatmax.org>
Date: Sun, 29 Mar 2020 10:47:47 +1100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <20200328115911.GA4997@camel2.lan>
Content-Language: en-US
X-Spam-Score: -2.9 (--)
X-Spam-Report: Spam detection software, running on the system "mx.flatmax.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 @@CONTACT_ADDRESS@@ for details.
 Content preview:  On 28/3/20 10:59 pm, Matthias Reichl wrote: > On Sat, Mar
 28, 2020 at 08:50:52AM +1100, Matt Flax wrote: >> On 28/3/20 12:23 am, Matthias
 Reichl wrote: >>> On Fri, Mar 27, 2020 at 11:30:50AM +1100, Ma [...] 
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
X-CRM114-CacheID: sfid-20200328_164759_288975_969BFC73 
X-CRM114-Status: GOOD (  22.64  )
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

Ck9uIDI4LzMvMjAgMTA6NTkgcG0sIE1hdHRoaWFzIFJlaWNobCB3cm90ZToKPiBPbiBTYXQsIE1h
ciAyOCwgMjAyMCBhdCAwODo1MDo1MkFNICsxMTAwLCBNYXR0IEZsYXggd3JvdGU6Cj4+IE9uIDI4
LzMvMjAgMTI6MjMgYW0sIE1hdHRoaWFzIFJlaWNobCB3cm90ZToKPj4+IE9uIEZyaSwgTWFyIDI3
LCAyMDIwIGF0IDExOjMwOjUwQU0gKzExMDAsIE1hdHQgRmxheCB3cm90ZToKPj4+PiBPbiAyNy8z
LzIwIDEwOjU2IGFtLCBNYXR0IEZsYXggd3JvdGU6Cj4+Pj4+IFNob3VsZCB0aGlzIHBhdGNoIGJl
IGhhbmRsZWQgdGhyb3VnaCB0aGUgQUxTQSB0ZWFtIHRoZSBSLiBQaSB0ZWFtIG9yIHRoZQo+Pj4+
PiBCQ00gdGVhbSA/Cj4+Pj4+Cj4+Pj4gUmVzZW5kaW5nIGFnYWluIHdpdGggcmVkdWNlZCByZWNp
cGllbnRzLgo+Pj4+Cj4+Pj4KPj4+Pj4gdGhhbmtzCj4+Pj4+Cj4+Pj4+IE1hdHQKPj4+Pj4KPj4+
Pj4gT24gMjQvMy8yMCA4OjA4IHBtLCBNYXR0IEZsYXggd3JvdGU6Cj4+Pj4+PiBTdWJzdHJlYW0g
c2FtcGxlIGFsaWdubWVudCB3YXMgYmVpbmcgc2V0IGluIGh3cGFyYW1zIGZvciBib3RoCj4+Pj4+
PiBzdWJzdHJlYW1zIGF0IHRoZSBzYW1lIHRpbWUuIFRoaXMgYmVjYW1lIGEgcHJvYmxlbSB3aGVu
wqDCoMKgIHRoZSBBdWRpbwo+Pj4+Pj4gSW5qZWN0b3IgaXNvbGF0ZWQgc291bmQgY2FyZCBuZWVk
ZWQgdG8gb2Zmc2V0IHNhbXBsZSBhbGlnbm1lbnQKPj4+Pj4+IGZvciBoaWdoIHNhbXBsZcKgwqDC
oCByYXRlcy4gVGhlIGxhdGVuY3kgZGlmZmVyZW5jZSBiZXR3ZWVuIHBsYXliYWNrCj4+Pj4+PiBh
bmQgY2FwdHVyZSBvY2N1cnMgYmVjYXVzZSBvZiB0aGUgZGlnaXRhbCBpc29sYXRpb24gY2hpcAo+
Pj4+Pj4gcHJvcGFnYXRpb24gdGltZSwgcGFydGljdWxhcmx5IHdoZW4gdGhlIGNvZGVjIGlzIG1h
c3RlciBhbmQKPj4+Pj4+IHRoZSBEQUMgcmV0dXJuIGlzIHR3aWNlIGRlbGF5ZWQuCj4+Pj4+Pgo+
Pj4+Pj4gVGhpcyBwYXRjaCBzZXRzIHNhbXBsZSBhbGlnbm1lbnQgcmVnaXN0ZXJzwqAgYmFzZWQg
b24gdGhlIHN1YnN0cmVhbQo+Pj4+Pj4gZGlyZWN0aW9uIGluIGh3cGFyYW1zLiBUaGlzIGdpdmVz
IHRoZSBtYWNoaW5lIGRyaXZlciBtb3JlIGNvbnRyb2wKPj4+Pj4+IG92ZXIgc2FtcGxlIGFsaWdu
bWVudCBpbiB0aGUgYmNtMjgzNSBpMnMgZHJpdmVyLgo+Pj4+Pj4KPj4+Pj4+IFNpZ25lZC1vZmYt
Ynk6IE1hdHQgRmxheCA8ZmxhdG1heEBmbGF0bWF4Lm9yZz4KPj4+Pj4+IC0tLQo+Pj4+Pj4gICDC
oCBzb3VuZC9zb2MvYmNtL2JjbTI4MzUtaTJzLmMgfCAzNiArKysrKysrKysrKysrKysrKysrLS0t
LS0tLS0tLS0tLS0tLS0KPj4+Pj4+ICAgwqAgMSBmaWxlIGNoYW5nZWQsIDE5IGluc2VydGlvbnMo
KyksIDE3IGRlbGV0aW9ucygtKQo+Pj4+Pj4KPj4+Pj4+IGRpZmYgLS1naXQgYS9zb3VuZC9zb2Mv
YmNtL2JjbTI4MzUtaTJzLmMgYi9zb3VuZC9zb2MvYmNtL2JjbTI4MzUtaTJzLmMKPj4+Pj4+IGlu
ZGV4IGU2YTEyZTI3MWIwNy4uOWRiNTQyNjk5YTEzIDEwMDY0NAo+Pj4+Pj4gLS0tIGEvc291bmQv
c29jL2JjbS9iY20yODM1LWkycy5jCj4+Pj4+PiArKysgYi9zb3VuZC9zb2MvYmNtL2JjbTI4MzUt
aTJzLmMKPj4+Pj4+IEBAIC00OTMsMTEgKzQ5Myw2IEBAIHN0YXRpYyBpbnQgYmNtMjgzNV9pMnNf
aHdfcGFyYW1zKHN0cnVjdAo+Pj4+Pj4gc25kX3BjbV9zdWJzdHJlYW0gKnN1YnN0cmVhbSwKPj4+
Pj4+ICAgwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiAtRUlOVkFMOwo+Pj4+Pj4gICDCoMKgwqDC
oMKgIH0KPj4+Pj4+ICAgwqAgLcKgwqDCoCBiY20yODM1X2kyc19jYWxjX2NoYW5uZWxfcG9zKCZy
eF9jaDFfcG9zLCAmcnhfY2gyX3BvcywKPj4+Pj4+IC3CoMKgwqDCoMKgwqDCoCByeF9tYXNrLCBz
bG90X3dpZHRoLCBkYXRhX2RlbGF5LCBvZGRfc2xvdF9vZmZzZXQpOwo+Pj4+Pj4gLcKgwqDCoCBi
Y20yODM1X2kyc19jYWxjX2NoYW5uZWxfcG9zKCZ0eF9jaDFfcG9zLCAmdHhfY2gyX3BvcywKPj4+
Pj4+IC3CoMKgwqDCoMKgwqDCoCB0eF9tYXNrLCBzbG90X3dpZHRoLCBkYXRhX2RlbGF5LCBvZGRf
c2xvdF9vZmZzZXQpOwo+Pj4+Pj4gLQo+Pj4+Pj4gICDCoMKgwqDCoMKgIC8qCj4+Pj4+PiAgIMKg
wqDCoMKgwqDCoCAqIFRyYW5zbWl0dGluZyBkYXRhIGltbWVkaWF0ZWx5IGFmdGVyIGZyYW1lIHN0
YXJ0LCBlZwo+Pj4+Pj4gICDCoMKgwqDCoMKgwqAgKiBpbiBsZWZ0LWp1c3RpZmllZCBvciBEU1Ag
bW9kZSBBLCBvbmx5IHdvcmtzIHN0YWJsZQo+Pj4+Pj4gQEAgLTUwOCwxOSArNTAzLDI2IEBAIHN0
YXRpYyBpbnQgYmNtMjgzNV9pMnNfaHdfcGFyYW1zKHN0cnVjdAo+Pj4+Pj4gc25kX3BjbV9zdWJz
dHJlYW0gKnN1YnN0cmVhbSwKPj4+Pj4+ICAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgIlVu
c3RhYmxlIHNsYXZlIGNvbmZpZyBkZXRlY3RlZCwgTC9SIG1heSBiZSBzd2FwcGVkIik7Cj4+Pj4+
PiAgIMKgIMKgwqDCoMKgwqAgLyoKPj4+Pj4+IC3CoMKgwqDCoCAqIFNldCBmb3JtYXQgZm9yIGJv
dGggc3RyZWFtcy4KPj4+Pj4+IC3CoMKgwqDCoCAqIFdlIGNhbm5vdCBzZXQgYW5vdGhlciBmcmFt
ZSBsZW5ndGgKPj4+Pj4+IC3CoMKgwqDCoCAqIChhbmQgdGhlcmVmb3JlIHdvcmQgbGVuZ3RoKSBh
bnl3YXksCj4+Pj4+PiAtwqDCoMKgwqAgKiBzbyB0aGUgZm9ybWF0IHdpbGwgYmUgdGhlIHNhbWUu
Cj4+Pj4+PiArwqDCoMKgwqAgKiBTZXQgZm9ybWF0IG9uIGEgcGVyIHN0cmVhbSBiYXNpcy4KPj4+
Pj4+ICvCoMKgwqDCoCAqIFRoZSBhbGlnbm1lbnQgZm9ybWF0IGNhbiBiZSBkaWZmZXJlbnQgZGVw
ZW5kaW5nIG9uIGRpcmVjdGlvbi4KPj4+Pj4+ICAgwqDCoMKgwqDCoMKgICovCj4+Pj4+PiAtwqDC
oMKgIHJlZ21hcF93cml0ZShkZXYtPmkyc19yZWdtYXAsIEJDTTI4MzVfSTJTX1JYQ19BX1JFRywK
Pj4+Pj4+IC3CoMKgwqDCoMKgwqDCoMKgwqAgZm9ybWF0Cj4+Pj4+PiAtwqDCoMKgwqDCoMKgwqAg
fCBCQ00yODM1X0kyU19DSDFfUE9TKHJ4X2NoMV9wb3MpCj4+Pj4+PiAtwqDCoMKgwqDCoMKgwqAg
fCBCQ00yODM1X0kyU19DSDJfUE9TKHJ4X2NoMl9wb3MpKTsKPj4+Pj4+IC3CoMKgwqAgcmVnbWFw
X3dyaXRlKGRldi0+aTJzX3JlZ21hcCwgQkNNMjgzNV9JMlNfVFhDX0FfUkVHLAo+Pj4+Pj4gLcKg
wqDCoMKgwqDCoMKgwqDCoCBmb3JtYXQKPj4+Pj4+IC3CoMKgwqDCoMKgwqDCoCB8IEJDTTI4MzVf
STJTX0NIMV9QT1ModHhfY2gxX3BvcykKPj4+Pj4+IC3CoMKgwqDCoMKgwqDCoCB8IEJDTTI4MzVf
STJTX0NIMl9QT1ModHhfY2gyX3BvcykpOwo+Pj4+Pj4gK8KgwqDCoCBpZiAoc3Vic3RyZWFtLT5z
dHJlYW0gPT0gU05EUlZfUENNX1NUUkVBTV9DQVBUVVJFKSB7Cj4+Pj4+PiArwqDCoMKgwqDCoMKg
wqAgYmNtMjgzNV9pMnNfY2FsY19jaGFubmVsX3BvcygmcnhfY2gxX3BvcywgJnJ4X2NoMl9wb3Ms
Cj4+Pj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByeF9tYXNrLCBzbG90X3dpZHRoLCBkYXRh
X2RlbGF5LCBvZGRfc2xvdF9vZmZzZXQpOwo+Pj4+Pj4gK8KgwqDCoMKgwqDCoMKgIHJlZ21hcF93
cml0ZShkZXYtPmkyc19yZWdtYXAsIEJDTTI4MzVfSTJTX1JYQ19BX1JFRywKPj4+Pj4+ICvCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBmb3JtYXQKPj4+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIHwgQkNNMjgzNV9JMlNfQ0gxX1BPUyhyeF9jaDFfcG9zKQo+Pj4+Pj4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgfCBCQ00yODM1X0kyU19DSDJfUE9TKHJ4X2NoMl9wb3MpKTsKPj4+Pj4+ICvC
oMKgwqAgfQo+Pj4+Pj4gKwo+Pj4+Pj4gK8KgwqDCoCBpZiAoc3Vic3RyZWFtLT5zdHJlYW0gPT0g
U05EUlZfUENNX1NUUkVBTV9QTEFZQkFDSykgewo+Pj4+Pj4gK8KgwqDCoMKgwqDCoMKgIGJjbTI4
MzVfaTJzX2NhbGNfY2hhbm5lbF9wb3MoJnR4X2NoMV9wb3MsICZ0eF9jaDJfcG9zLAo+Pj4+Pj4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgdHhfbWFzaywgc2xvdF93aWR0aCwgZGF0YV9kZWxheSwg
b2RkX3Nsb3Rfb2Zmc2V0KTsKPj4+Pj4+ICvCoMKgwqDCoMKgwqDCoCByZWdtYXBfd3JpdGUoZGV2
LT5pMnNfcmVnbWFwLCBCQ00yODM1X0kyU19UWENfQV9SRUcsCj4+Pj4+PiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgZm9ybWF0Cj4+Pj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8IEJD
TTI4MzVfSTJTX0NIMV9QT1ModHhfY2gxX3BvcykKPj4+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIHwgQkNNMjgzNV9JMlNfQ0gyX1BPUyh0eF9jaDJfcG9zKSk7Cj4+Pj4+PiArwqDCoMKgIH0K
Pj4+Pj4+ICAgwqAgwqDCoMKgwqDCoCAvKiBTZXR1cCB0aGUgSTJTIG1vZGUgKi8KPj4+IFRoaXMg
d2lsbCBicmVhayBkdXBsZXggb3BlcmF0aW9uIGlmIGEgc2Vjb25kIHN0cmVhbSBpcyBvcGVuZWQg
d2hlbgo+Pj4gYSBzdHJlYW0gaXMgYWxyZWFkeSBydW5uaW5nIGFzIHRoZSBjaGFubmVsIHBvc2l0
aW9uIHJlZ2lzdGVycyBmb3IKPj4+IHRoZSBzZWNvbmQgc3RyZWFtIGhhdmVuJ3QgYmVlbiBzZXQg
dXAuCj4+Pgo+Pj4gTm90ZSB0aGlzIGNvZGUgYXQgdGhlIHZlcnkgYmVnaW5uaW5nIG9mIGh3X3Bh
cmFtczoKPj4+Cj4+PiAgICAgICAgICAgLyoKPj4+ICAgICAgICAgICAgKiBJZiBhIHN0cmVhbSBp
cyBhbHJlYWR5IGVuYWJsZWQsCj4+PiAgICAgICAgICAgICogdGhlIHJlZ2lzdGVycyBhcmUgYWxy
ZWFkeSBzZXQgcHJvcGVybHkuCj4+PiAgICAgICAgICAgICovCj4+PiAgICAgICAgICAgcmVnbWFw
X3JlYWQoZGV2LT5pMnNfcmVnbWFwLCBCQ00yODM1X0kyU19DU19BX1JFRywgJmNzcmVnKTsKPj4+
Cj4+PiAgICAgICAgICAgaWYgKGNzcmVnICYgKEJDTTI4MzVfSTJTX1RYT04gfCBCQ00yODM1X0ky
U19SWE9OKSkKPj4+ICAgICAgICAgICAgICAgICAgIHJldHVybiAwOwo+Pj4KPj4+IFRoZSByZWFz
b24gZm9yIHRoaXMgY2hlY2sgaXMgdGhhdCB3ZSBjYW4ndCBjaGFuZ2UgYmNtMjgzNSBJMlMgcmVn
aXN0ZXJzCj4+PiBhZnRlciBJMlMgUlgvVFggaGFzIGJlZW4gZW5hYmxlZCAtIHRoZSByZWFzb24g
d2h5IGlzIGV4cGxhaW5lZCBpbiB0aGUKPj4+IGRhdGFzaGVldDoKPj4+Cj4+Pj4gVGhlIFBDTSBp
bnRlcmZhY2UgcnVucyBhc3luY2hyb25vdXNseSBhdCB0aGUgUENNX0NMSyByYXRlIGFuZAo+Pj4+
IGF1dG9tYXRpY2FsbHkgdHJhbnNmZXJzIHRyYW5zbWl0IGFuZCByZWNlaXZlIGRhdGEgYWNyb3Nz
IHRvIHRoZQo+Pj4+IGludGVybmFsIEFQQiBjbG9jayBkb21haW4uIFRoZSBjb250cm9sIHJlZ2lz
dGVycyBhcmUgTk9UCj4+Pj4gc3luY2hyb25pc2VkIGFuZCBzaG91bGQgYmUgcHJvZ3JhbW1lZCBi
ZWZvcmUgdGhlIGRldmljZSBpcyBlbmFibGVkCj4+Pj4gYW5kIHNob3VsZCBOT1QgYmUgY2hhbmdl
ZCB3aGlsc3QgdGhlIGludGVyZmFjZSBpcyBydW5uaW5nLgo+Pj4+Cj4+Pj4gT25seSB0aGUgRU4s
IFJYT04gYW5kIFRYT04gYml0cyBvZiB0aGUgUENNQ1MgcmVnaXN0ZXIgYXJlIHN5bmNocm9uaXNl
ZAo+Pj4+IGFjcm9zcyB0aGUgUENNIC0gQVBCIGNsb2NrIGRvbWFpbiBhbmQgYXJlIGFsbG93ZWQg
dG8gYmUgY2hhbmdlZCB3aGlsc3QKPj4+PiB0aGUgaW50ZXJmYWNlIGlzIHJ1bm5pbmcuCj4+PiBU
aGVyZWZvcmUgd2UgbmVlZCB0byBzZXQgdXAgY2hhbm5lbCBtYXNrcyBmb3IgYm90aCBSWCBhbmQg
VFggYmVmb3JlCj4+PiBhbnkgc3RyZWFtIGlzIHN0YXJ0ZWQuCj4+Cj4+IEkgc2VlIHdoYXQgeW91
IG1lYW4uIFdlIGNhbid0IGNoYW5nZSB0aGUgcmVnaXN0ZXJzIG9uY2UgdGhlIHN5c3RlbSBoYXMK
Pj4gc3RhcnRlZCBoYWxmIGR1cGxleCBhbmQgdGhlbiBzdWJzZXF1ZW50bHkgY2hhbmdlZCB0byBm
dWxsIGR1cGxleC4KPj4KPj4gVGhlcmUgYXJlIGNhc2VzIGhvd2V2ZXIgd2hlcmUgcGxheWJhY2sg
YW5kIGNhcHR1cmUgbmVlZCB0byBiZSBzZXQKPj4gaW5kZXBlbmRlbnRseS4gSW4gdGhlc2UgY2Fz
ZXMgdGhlIG1hY2hpbmUgZHJpdmVyIHJlcXVpcmVzIGRpZmZlcmVudCBmb3JtYXQKPj4gc2V0dGlu
Z3MgYmFzZWQgb24gdGhlIHN0cmVhbSBkaXJlY3Rpb24uCj4+Cj4+IFdoYXQgaWYgd2UgbWFrZSBh
IGNoZWNrIGZvciB3aGV0aGVyIHRoZSBzeXN0ZW0gaXMgYWxyZWFkeSBydW5uaW5nIGFuZCBpbgo+
PiB0aGF0IGNhc2UgcmV0dXJuIGFuIGVycm9yIC0gZm9yY2luZyB0aGUgdXNlciB0byB1c2Ugc3Bl
Y2lmeSB0aGUgc2FtZSBkYWlfZm10Cj4+IHdoaWNoIGlzIGFscmVhZHkgaW4gdXNlIGJlZm9yZSBj
b250aW51aW5nID8KPiBJJ20gbm90IHN1cmUgaWYgSSBjYW4gZm9sbG93IHlvdS4gZGFpX2ZtdCwg
YXMgdGhlIG5hbWUgaW1wbGllcywgc2V0cwo+IHRoZSBmb3JtYXQgb2YgdGhlIERBSSAtIHlvdSBj
YW4ndCBoYXZlIGRpZmZlcmVudCBEQUkgZm9ybWF0cyBmb3IKPiBwbGF5YmFjay9jYXB0dXJlIGFj
dGl2ZSBhdCB0aGUgc2FtZSB0aW1lLgo+Cj4gVGhpcyBzb3VuZHMgYSBiaXQgbGlrZSB5b3UgbWF5
IGJlIHRyeWluZyB0byB3b3JrIGFyb3VuZCBzb21lIGhhcmR3YXJlCj4gb3IgY29kZWMgY29uZmln
dXJhdGlvbiBpc3N1ZSBieSBjcmVhdGl2ZSB1c2Ugb2YgdGhlIEFQSS4KCgpJdCBpcyB0aGUgbmF0
dXJlIG9mIGRpZ2l0YWwgaXNvbGF0aW9uIGNoaXBzLiBUaGV5IGhhdmUgdmVyeSBzaWduaWZpY2Fu
dCAKbGF0ZW5jaWVzLiBJZiB0aGUgY29kZWMgaXMgbWFzdGVyLCB0aGVuIHRoZSByb3VuZCB0cmlw
IGxhdGVuY3kgd2hpY2ggCmVmZmVjdHMgdGhlIERBQydzIEkyUyBsaW5lIGlzIGV2ZW4gbW9yZSBz
aWduaWZpY2FudC4KCgo+PiBXb3VsZCB0aGVyZSBiZSBhIGJldHRlciB3YXkgdG8gYWNoaWV2ZSBk
aWZmZXJlbnQgaHdwYXJhbXMgYmFzZWQgb24gc3RyZWFtCj4+IGRpcmVjdGlvbiA/Cj4gSWYgeW91
IHJlYWxseSBuZWVkIGRpZmZlcmVudCBEQUkgZm9ybWF0cyBmb3IgcGxheWJhY2svY2FwdHVyZSBp
dCdzCj4gYmVzdCB0byBkaXNhbGxvdyBmdWxsLWR1cGxleCBtb2RlIGFuZCBzZXQgdGhlIERBSSBm
b3JtYXQgYmFzZWQgb24KPiBzdHJlYW0gZGlyZWN0aW9uIGluIHRoZSBtYWNoaW5lIGRyaXZlci4K
CgpJZiB3ZSB3ZXJlIHRvIGRpc2FsbG93IGZ1bGwgZHVwbGV4IG1vZGUgaW4gdGhlIG1hY2hpbmUg
ZHJpdmVyLCBob3cgd291bGQgCml0IGxvb2sgaW4gdGhlIG1hY2hpbmUgZHJpdmVyID8gV291bGQg
dGhlIHVzZXIgc3RpbGwgYmUgYWJsZSB0byBkbyBmdWxsIApkdXBsZXggY2FwdHVyZS9wbGF5YmFj
ayA/CgpXZSBjb3VsZCB0YWtlIHRoYXQgYXBwcm9hY2ggaWYgdGhlIHVzZXIgY291bGQgc3RpbGwg
cGVyZm9ybSBmdWxsIGR1cGxleCAKb3BlcmF0aW9ucy4gSG93ZXZlciBpdCBkb2Vzbid0IHJlcHJl
c2VudCB0aGUgaGFyZHdhcmUuIFRoZSBoYXJkd2FyZSBpcyAKaW4gZnVsbCBkdXBsZXggbW9kZSBh
bmQgcmVxdWlyZXMgZGlmZmVyZW50IHdvcmQgb2Zmc2V0cyBmb3IgQURDIGFuZCBEQUMgCkkyUyBs
aW5lcy4KCkl0IHNlZW1zIHRoYXQgdGhlIEFMU0EgY29yZSBzeXN0ZW0gY2FuJ3QgaGFuZGxlIHRo
aXMgYmVjYXVzZSB0aGUgc2V0X2ZtdCAKZnVuY3Rpb25zIGRvbid0IHNwZWNpZnkgdGhlIHN0cmVh
bSBkaXJlY3Rpb24uIFRoaXMgaGFwcGVucyBib3RoIGZvciB0aGUgCkNQVSBhbmQgdGhlIENvZGVj
IGRyaXZlcnMuCgoKTWF0dAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LXJwaS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LXJwaS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJwaS1rZXJuZWwK
