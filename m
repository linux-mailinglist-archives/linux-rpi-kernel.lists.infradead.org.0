Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36C4B166791
	for <lists+linux-rpi-kernel@lfdr.de>; Thu, 20 Feb 2020 20:52:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	Subject:To:From:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=m8/6/BRI9LgU4rQHhPm4wrsCkzfKVNqGb/AK+cWy84k=; b=tdqtTiclLfHYUS
	G0Vq8RUKgBcuE0J2WxDG6E5jMIXSq9OzL3kMtHDP/64/kjxkHJHYrurkgwyqP6udt7trFxn8hG80C
	cHtY0e2/1BdEkKj8aaBazrhS+iVmhP5qunAYsnN3PP9RR+YJc7bUB8RMdlFqcbcFWLk1nff0/mBxD
	aIxu0L8rKypDewr130ZdarWpxut/UMCCysmL4UiWNlEBqWeXbJT9JmhBRcyR1YdxwzuLV9U8IfMe1
	cajlQydxL4wqt+xC3gQrhS19g/vZtMXKEA1dg4msnooCPonpsyaSWjBd0MBDJ0tg3Fa2g0API+pRk
	aAttWmYHAF544TFDBlZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4rsC-0007d2-0m; Thu, 20 Feb 2020 19:52:36 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4rsA-0007ch-GS
 for linux-rpi-kernel@bombadil.infradead.org; Thu, 20 Feb 2020 19:52:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Sender:Cc:Content-ID:
 Content-Description:In-Reply-To:References;
 bh=8w7bKYTtADHLVIhvvrRu3AhNjWaymp5D5LUBvhQ1Lvs=; b=T9gF7uySztfudYNCKjkYppvh4b
 ZoKPWPcOQhXt8frUgqxiJNAYKPpRwpUsTSfXN+9OHEscEPo5P0VQmHoNaS2puahdHXzX30p25EOkb
 M8OXquNRQLEUlMzZ/SX5JDnRftoD8PZcdDPZmbh6gRScsKWJGeAY7Ml8An7YM+T9tlJxKxVFlOwyR
 EH92ampMqjf+Vhv3+Q6/e/SvUH9CQhrXBsi9cZF9bM+nCMTtCw+fbn3rM7Pm0EUdq2VI9/89mwA5o
 xhvw+h5rJLHFT9oX0RwdxSQog/VIPYNvgdKhtr2ItxcMiM0HkCiHcgqbeaQGSaHb2tTKNr38frHVq
 nlqJsSHA==;
Received: from rbpf.bs ([24.51.93.195] helo=mail2.rbpf.bs)
 by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4rs8-0003xW-1m
 for linux-rpi-kernel@lists.infradead.org; Thu, 20 Feb 2020 19:52:32 +0000
Received: from unknown (HELO corisbank.com) ([103.207.36.17])
 by mail2.rbpf.bs with ESMTP; 20 Feb 2020 14:46:19 -0500
From: Coris Bank <derek@corisbank.com>
To: linux-rpi-kernel@lists.infradead.org
Subject: Are you still alive? Urgent reply is needed
Date: 20 Feb 2020 11:46:16 -0800
Message-ID: <20200220114615.33CCA0719618A1C2@corisbank.com>
MIME-Version: 1.0
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: 9.4 (+++++++++)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (9.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 2.7 RCVD_IN_PSBL           RBL: Received via a relay in PSBL
 [24.51.93.195 listed in psbl.surriel.com]
 1.3 RCVD_IN_RP_RNBL        RBL: Relay in RNBL,
 https://senderscore.org/blacklistlookup/
 [24.51.93.195 listed in bl.score.senderscore.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 DEAR_BENEFICIARY       BODY: Dear Beneficiary:
 0.9 URG_BIZ                BODY: Contains urgent matter
 2.0 HK_SCAM                No description available.
 2.5 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
 0.0 ADVANCE_FEE_4_NEW      Appears to be advance fee fraud (Nigerian 419)
X-Spam-Flag: YES
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
Reply-To: kentpace@sina.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

RGVhciBCZW5lZmljaWFyeSwKCgpQbGVhc2UgY29uZmlybSBpZiB5b3UgYXJlIHN0aWxsIGFsaXZl
IGJlY2F1c2UgdHdvIGdlbnRsZSBtZW4gCndhbGtlZCBpbnRvIG15IG9mZmljZSB0aGlzIG1vcm5p
bmcgdG8gY2xhaW0geW91ciBpbmhlcml0YW5jZSAKZnVuZHMgd2l0aCBvdXIgYmFuay4gVGhleSBz
YWlkIHlvdSBhcmUgZGVhZCBhbmQgdGhhdCB0aGV5IGFyZSAKeW91ciByZXByZXNlbnRhdGl2ZXMu
IAoKT24gTm92ZW1iZXIgMjEsIDIwMDguIEEgYnVzaW5lc3MgbWFuIChuYW1lIHdpdGhoZWxkIGZv
ciBzZWN1cml0eSAKcmVhc29ucykgd2Fsa2VkIGludG8gb3VyIGJhbmsgdG8gb3BlbiBhIE5PTiBS
RVNJREVOQ0UgQUNDT1VOVCBhbmQgCm1hZGUgeW91IGhpcyBORVhUIE9GIEtJTi4KSSBnb3QgeW91
ciBlbWFpbCBhZGRyZXNzIGZyb20gdGhlIGZpbGUgb2YgeW91ciBiZW5lZmFjdG9yIGFzIGhpcyAK
TkVYVCBPRiBLSU4uCkl0J3MgYmVlbiB5ZWFycyB3ZSBjb25maXJtZWQgeW91ciBiZW5lZmFjdG9y
J3MgZGVhdGggYW5kIHlvdSBoYXZlIApub3QgY29udGFjdGVkIG91ciBiYW5rIHRvIGNsYWltIHlv
dXIgaW5oZXJpdGFuY2UuIFlvdSBoYXZlIGEgCnRvdGFsIGJhbGFuY2Ugb2Yg4oKsMjksMDcxLDk3
MC4wMC4KClRoZSBnZW50bGVtZW4gc3VibWl0dGVkIGFuIGFkZHJlc3Mgd2hlcmUgdGhleSB3YW50
IHlvdXIgVklTQSAKREVCSVQKQVRNIENBUkQgc2VudC4KCklmIHlvdSBhcmUgc3RpbGwgYWxpdmUs
IHBsZWFzZSBpbmRpY2F0ZSBieSBzZW5kaW5nIHlvdXIgZnVsbApjb250YWN0IGRldGFpbHMgd2l0
aGluIDcgZGF5IG9mIHJlY2VpdmluZyB0aGlzIG1lc3NhZ2UsIGZhaWx1cmUKdG8gZG8gc28sIEkg
d2lsbCBzZW5kIHRoZSBjYXJkIHRvIHRoZSBhZGRyZXNzIHN1Ym1pdHRlZCBieSB5b3VyCnJlcHJl
c2VudGF0aXZlcy4KCgpSZWdhcmRzCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1ycGkta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1ycGkta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1ycGkta2VybmVsCg==
