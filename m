Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DEEE194E09
	for <lists+linux-rpi-kernel@lfdr.de>; Fri, 27 Mar 2020 01:31:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	From:Subject:Reply-To:To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6YcFBKGdh007TieUvzth13s5aeQmlXI/avwzYjHDy/8=; b=kEw+gMWZRRKhLqbsRHSsnpgB+
	WwnFKm7DMhWQjA+36ifVBkkhBUGlud5Rprwt+91neajNVUfdsMlrxF2sFS0BDRtSMQhwNOzgoz+mj
	wgxRZQcSk36ohnhbxP9raTPKOeDUMQlaqPxJ7PwNZWTP/o/zD1b7u/ZTElaXsMnnaFevsx1V4oK2o
	DiQ+srPDvGubnVvlVQErOQDJXsnSGQUSNFBQZCc3mKanHslj99qrXMJbkJcWaxZhCQyS8STJQMl4k
	F4j7TeJsbmNCULbCURDrtWGsakhlJMWgvrfr6VsZMJPLrMWRe8O1KHAwseZMnWAbnerN3v7oWRoYl
	6al7335ZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHctn-0000M6-3X; Fri, 27 Mar 2020 00:30:59 +0000
Received: from mx.flatmax.org ([13.55.16.222])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHctj-0000Lf-NT
 for linux-rpi-kernel@lists.infradead.org; Fri, 27 Mar 2020 00:30:57 +0000
Received: from 41.68.233.220.static.exetel.com.au ([220.233.68.41]
 helo=[192.168.1.51])
 by mx.flatmax.org with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <flatmax@flatmax.org>)
 id 1jHcte-0007rg-U3; Fri, 27 Mar 2020 11:30:51 +1100
Subject: Re: [PATCH] ASoC: bcm2835-i2s: substream alignment now independent in
 hwparams
From: Matt Flax <flatmax@flatmax.org>
References: <20200324090823.20754-1-flatmax@flatmax.org>
 <d0684926-3f7a-0b97-a298-4088925442a4@flatmax.org>
Message-ID: <1dcf128a-4ad3-0efa-81e4-b3ccc7caa8f1@flatmax.org>
Date: Fri, 27 Mar 2020 11:30:50 +1100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <d0684926-3f7a-0b97-a298-4088925442a4@flatmax.org>
Content-Language: en-US
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "mx.flatmax.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 @@CONTACT_ADDRESS@@ for details.
 
 Content preview:  On 27/3/20 10:56 am, Matt Flax wrote: > > Should this patch
    be handled through the ALSA team the R. Pi team or > the BCM team ? > Resending
    again with reduced recipients. > > thanks > > Matt > > On 24/3/20 8:08 pm,
    Matt Flax wrote: >> Substream sample alignment was being set in hwparams
   for both >> substreams at the same time. This became a problem when   
   the Audio [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.0 ALL_TRUSTED            Passed through trusted hosts only via SMTP
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
                             blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URIs: flatmax.org]
  0.0 TVD_RCVD_IP            Message was received from an IP address
  1.0 MISSING_HEADERS        Missing To: header
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_173055_910298_44086AB6 
X-CRM114-Status: UNSURE (   8.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.2 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.2 MISSING_HEADERS        Missing To: header
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
Cc: alsa-devel@alsa-project.org, Mark Brown <broonie@kernel.org>,
 linux-rpi-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

Ck9uIDI3LzMvMjAgMTA6NTYgYW0sIE1hdHQgRmxheCB3cm90ZToKPgo+IFNob3VsZCB0aGlzIHBh
dGNoIGJlIGhhbmRsZWQgdGhyb3VnaCB0aGUgQUxTQSB0ZWFtIHRoZSBSLiBQaSB0ZWFtIG9yIAo+
IHRoZSBCQ00gdGVhbSA/Cj4KClJlc2VuZGluZyBhZ2FpbiB3aXRoIHJlZHVjZWQgcmVjaXBpZW50
cy4KCgo+Cj4gdGhhbmtzCj4KPiBNYXR0Cj4KPiBPbiAyNC8zLzIwIDg6MDggcG0sIE1hdHQgRmxh
eCB3cm90ZToKPj4gU3Vic3RyZWFtIHNhbXBsZSBhbGlnbm1lbnQgd2FzIGJlaW5nIHNldCBpbiBo
d3BhcmFtcyBmb3IgYm90aAo+PiBzdWJzdHJlYW1zIGF0IHRoZSBzYW1lIHRpbWUuIFRoaXMgYmVj
YW1lIGEgcHJvYmxlbSB3aGVuwqDCoMKgIHRoZSBBdWRpbwo+PiBJbmplY3RvciBpc29sYXRlZCBz
b3VuZCBjYXJkIG5lZWRlZCB0byBvZmZzZXQgc2FtcGxlIGFsaWdubWVudAo+PiBmb3IgaGlnaCBz
YW1wbGXCoMKgwqAgcmF0ZXMuIFRoZSBsYXRlbmN5IGRpZmZlcmVuY2UgYmV0d2VlbiBwbGF5YmFj
awo+PiBhbmQgY2FwdHVyZSBvY2N1cnMgYmVjYXVzZSBvZiB0aGUgZGlnaXRhbCBpc29sYXRpb24g
Y2hpcAo+PiBwcm9wYWdhdGlvbiB0aW1lLCBwYXJ0aWN1bGFybHkgd2hlbiB0aGUgY29kZWMgaXMg
bWFzdGVyIGFuZAo+PiB0aGUgREFDIHJldHVybiBpcyB0d2ljZSBkZWxheWVkLgo+Pgo+PiBUaGlz
IHBhdGNoIHNldHMgc2FtcGxlIGFsaWdubWVudCByZWdpc3RlcnPCoCBiYXNlZCBvbiB0aGUgc3Vi
c3RyZWFtCj4+IGRpcmVjdGlvbiBpbiBod3BhcmFtcy4gVGhpcyBnaXZlcyB0aGUgbWFjaGluZSBk
cml2ZXIgbW9yZSBjb250cm9sCj4+IG92ZXIgc2FtcGxlIGFsaWdubWVudCBpbiB0aGUgYmNtMjgz
NSBpMnMgZHJpdmVyLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBNYXR0IEZsYXggPGZsYXRtYXhAZmxh
dG1heC5vcmc+Cj4+IC0tLQo+PiDCoCBzb3VuZC9zb2MvYmNtL2JjbTI4MzUtaTJzLmMgfCAzNiAr
KysrKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0tLS0KPj4gwqAgMSBmaWxlIGNoYW5nZWQs
IDE5IGluc2VydGlvbnMoKyksIDE3IGRlbGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvc291
bmQvc29jL2JjbS9iY20yODM1LWkycy5jIGIvc291bmQvc29jL2JjbS9iY20yODM1LWkycy5jCj4+
IGluZGV4IGU2YTEyZTI3MWIwNy4uOWRiNTQyNjk5YTEzIDEwMDY0NAo+PiAtLS0gYS9zb3VuZC9z
b2MvYmNtL2JjbTI4MzUtaTJzLmMKPj4gKysrIGIvc291bmQvc29jL2JjbS9iY20yODM1LWkycy5j
Cj4+IEBAIC00OTMsMTEgKzQ5Myw2IEBAIHN0YXRpYyBpbnQgYmNtMjgzNV9pMnNfaHdfcGFyYW1z
KHN0cnVjdCAKPj4gc25kX3BjbV9zdWJzdHJlYW0gKnN1YnN0cmVhbSwKPj4gwqDCoMKgwqDCoMKg
wqDCoMKgIHJldHVybiAtRUlOVkFMOwo+PiDCoMKgwqDCoMKgIH0KPj4gwqAgLcKgwqDCoCBiY20y
ODM1X2kyc19jYWxjX2NoYW5uZWxfcG9zKCZyeF9jaDFfcG9zLCAmcnhfY2gyX3BvcywKPj4gLcKg
wqDCoMKgwqDCoMKgIHJ4X21hc2ssIHNsb3Rfd2lkdGgsIGRhdGFfZGVsYXksIG9kZF9zbG90X29m
ZnNldCk7Cj4+IC3CoMKgwqAgYmNtMjgzNV9pMnNfY2FsY19jaGFubmVsX3BvcygmdHhfY2gxX3Bv
cywgJnR4X2NoMl9wb3MsCj4+IC3CoMKgwqDCoMKgwqDCoCB0eF9tYXNrLCBzbG90X3dpZHRoLCBk
YXRhX2RlbGF5LCBvZGRfc2xvdF9vZmZzZXQpOwo+PiAtCj4+IMKgwqDCoMKgwqAgLyoKPj4gwqDC
oMKgwqDCoMKgICogVHJhbnNtaXR0aW5nIGRhdGEgaW1tZWRpYXRlbHkgYWZ0ZXIgZnJhbWUgc3Rh
cnQsIGVnCj4+IMKgwqDCoMKgwqDCoCAqIGluIGxlZnQtanVzdGlmaWVkIG9yIERTUCBtb2RlIEEs
IG9ubHkgd29ya3Mgc3RhYmxlCj4+IEBAIC01MDgsMTkgKzUwMywyNiBAQCBzdGF0aWMgaW50IGJj
bTI4MzVfaTJzX2h3X3BhcmFtcyhzdHJ1Y3QgCj4+IHNuZF9wY21fc3Vic3RyZWFtICpzdWJzdHJl
YW0sCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICJVbnN0YWJsZSBzbGF2ZSBjb25maWcg
ZGV0ZWN0ZWQsIEwvUiBtYXkgYmUgc3dhcHBlZCIpOwo+PiDCoCDCoMKgwqDCoMKgIC8qCj4+IC3C
oMKgwqDCoCAqIFNldCBmb3JtYXQgZm9yIGJvdGggc3RyZWFtcy4KPj4gLcKgwqDCoMKgICogV2Ug
Y2Fubm90IHNldCBhbm90aGVyIGZyYW1lIGxlbmd0aAo+PiAtwqDCoMKgwqAgKiAoYW5kIHRoZXJl
Zm9yZSB3b3JkIGxlbmd0aCkgYW55d2F5LAo+PiAtwqDCoMKgwqAgKiBzbyB0aGUgZm9ybWF0IHdp
bGwgYmUgdGhlIHNhbWUuCj4+ICvCoMKgwqDCoCAqIFNldCBmb3JtYXQgb24gYSBwZXIgc3RyZWFt
IGJhc2lzLgo+PiArwqDCoMKgwqAgKiBUaGUgYWxpZ25tZW50IGZvcm1hdCBjYW4gYmUgZGlmZmVy
ZW50IGRlcGVuZGluZyBvbiBkaXJlY3Rpb24uCj4+IMKgwqDCoMKgwqDCoCAqLwo+PiAtwqDCoMKg
IHJlZ21hcF93cml0ZShkZXYtPmkyc19yZWdtYXAsIEJDTTI4MzVfSTJTX1JYQ19BX1JFRywKPj4g
LcKgwqDCoMKgwqDCoMKgwqDCoCBmb3JtYXQKPj4gLcKgwqDCoMKgwqDCoMKgIHwgQkNNMjgzNV9J
MlNfQ0gxX1BPUyhyeF9jaDFfcG9zKQo+PiAtwqDCoMKgwqDCoMKgwqAgfCBCQ00yODM1X0kyU19D
SDJfUE9TKHJ4X2NoMl9wb3MpKTsKPj4gLcKgwqDCoCByZWdtYXBfd3JpdGUoZGV2LT5pMnNfcmVn
bWFwLCBCQ00yODM1X0kyU19UWENfQV9SRUcsCj4+IC3CoMKgwqDCoMKgwqDCoMKgwqAgZm9ybWF0
Cj4+IC3CoMKgwqDCoMKgwqDCoCB8IEJDTTI4MzVfSTJTX0NIMV9QT1ModHhfY2gxX3BvcykKPj4g
LcKgwqDCoMKgwqDCoMKgIHwgQkNNMjgzNV9JMlNfQ0gyX1BPUyh0eF9jaDJfcG9zKSk7Cj4+ICvC
oMKgwqAgaWYgKHN1YnN0cmVhbS0+c3RyZWFtID09IFNORFJWX1BDTV9TVFJFQU1fQ0FQVFVSRSkg
ewo+PiArwqDCoMKgwqDCoMKgwqAgYmNtMjgzNV9pMnNfY2FsY19jaGFubmVsX3BvcygmcnhfY2gx
X3BvcywgJnJ4X2NoMl9wb3MsCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJ4X21hc2ssIHNs
b3Rfd2lkdGgsIGRhdGFfZGVsYXksIG9kZF9zbG90X29mZnNldCk7Cj4+ICvCoMKgwqDCoMKgwqDC
oCByZWdtYXBfd3JpdGUoZGV2LT5pMnNfcmVnbWFwLCBCQ00yODM1X0kyU19SWENfQV9SRUcsCj4+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBmb3JtYXQKPj4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgfCBCQ00yODM1X0kyU19DSDFfUE9TKHJ4X2NoMV9wb3MpCj4+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIHwgQkNNMjgzNV9JMlNfQ0gyX1BPUyhyeF9jaDJfcG9zKSk7Cj4+ICvCoMKgwqAg
fQo+PiArCj4+ICvCoMKgwqAgaWYgKHN1YnN0cmVhbS0+c3RyZWFtID09IFNORFJWX1BDTV9TVFJF
QU1fUExBWUJBQ0spIHsKPj4gK8KgwqDCoMKgwqDCoMKgIGJjbTI4MzVfaTJzX2NhbGNfY2hhbm5l
bF9wb3MoJnR4X2NoMV9wb3MsICZ0eF9jaDJfcG9zLAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCB0eF9tYXNrLCBzbG90X3dpZHRoLCBkYXRhX2RlbGF5LCBvZGRfc2xvdF9vZmZzZXQpOwo+PiAr
wqDCoMKgwqDCoMKgwqAgcmVnbWFwX3dyaXRlKGRldi0+aTJzX3JlZ21hcCwgQkNNMjgzNV9JMlNf
VFhDX0FfUkVHLAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZm9ybWF0Cj4+ICvCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIHwgQkNNMjgzNV9JMlNfQ0gxX1BPUyh0eF9jaDFfcG9zKQo+PiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8IEJDTTI4MzVfSTJTX0NIMl9QT1ModHhfY2gyX3Bvcykp
Owo+PiArwqDCoMKgIH0KPj4gwqAgwqDCoMKgwqDCoCAvKiBTZXR1cCB0aGUgSTJTIG1vZGUgKi8K
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LXJw
aS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LXJwaS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJwaS1r
ZXJuZWwK
