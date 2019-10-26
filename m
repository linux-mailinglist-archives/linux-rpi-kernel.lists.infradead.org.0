Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9CB2E73D2
	for <lists+linux-rpi-kernel@lfdr.de>; Mon, 28 Oct 2019 15:40:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:
	Message-ID:To:From:Date:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ARAh81yn4RR5/Bm0bowuTqfJeRbE7W8uwZ0Ali/R/Dk=; b=NIh
	5o7XfCd2vKijzd6jCpw6I3AKUYWfrNgwvF7xn21HhtWBj3T/MMLJpnDWsFuzvNiQnh9byzP77MD4+
	ZZM39AK6P6+8PluioaIf/pZ+/tKokOoYaI5TjTufcTykQ0uiL/l4KG0g99Cks/B2AlX+yCyk7dYkA
	YeMMduJqvJSp5Vc+CaujWpVeIRf+/xO6MDxNVGtcUHj5z712tpqwcHZIJatcu2LjeZrEsyMfbFgMc
	viznE767+qc2bWmAOTLzXdxaMbzP7CLFHBxrkJzRKseuikkeQZ7p9pPopbP4zfZTxCx5/j5n2OHk/
	XNdYGllCslM1Cmc4GTjKHlUr345ILpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP6Bw-0003Lh-SW; Mon, 28 Oct 2019 14:40:20 +0000
Received: from mailserver.firstsoftwareprojects.nl ([79.99.25.138])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP6Bt-0003LN-3i
 for linux-rpi-kernel@lists.infradead.org; Mon, 28 Oct 2019 14:40:18 +0000
X-Spam-Checker-Version: SpamAssassin 3.4.1 (2015-04-28) on FIRSTSOFTWARE02
X-Spam-Flag: YES
X-Spam-Level: ******
X-Spam-Status: Yes, score=6.2 required=6.0 tests=FREEMAIL_FORGED_REPLYTO,
 FSL_HELO_BARE_IP_1,RDNS_NONE,TVD_RCVD_IP,TVD_RCVD_IP4 autolearn=no
 autolearn_force=no version=3.4.1
X-Spam-Report: *  0.0 TVD_RCVD_IP Message was received from an IP address
 *  0.0 TVD_RCVD_IP4 Message was received from an IPv4 address
 *  2.6 FSL_HELO_BARE_IP_1 No description available.
 *  2.4 RDNS_NONE Delivered to internal network by a host with no rDNS
 *  1.2 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
Received: from 192.168.1.88 ([217.217.179.17]) by
 mailserver.firstsoftwareprojects.nl with
 MailEnable ESMTPA; Sat, 26 Oct 2019 21:44:04 +0200
Date: Sat, 26 Oct 2019 21:44:04 +0200 (CEST)
From: Peter Wong <notificaciones2@creg.gov.co>
To: linux-rpi-kernel@lists.infradead.org
Message-ID: <18804554.387856.1572119045069.JavaMail.javamailuser@localhost>
Subject: Ihre Gelegenheit
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_074017_450222_DA75D69C 
X-CRM114-Status: UNSURE (  -2.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 5.2 (+++++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.9 SPF_FAIL               SPF: sender does not match SPF record (fail)
 [SPF failed: Please see http://www.openspf.org/Why?s=mfrom;
 id=notificaciones2%40creg.gov.co; ip=79.99.25.138; r=bombadil.infradead.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.5 DATE_IN_PAST_24_48     Date: is 24 to 48 hours before Received: date
 1.2 RCVD_IN_BL_SPAMCOP_NET RBL: Received via a relay in
 bl.spamcop.net
 [Blocked - see <https://www.spamcop.net/bl.shtml?79.99.25.138>]
 2.5 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
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
Reply-To: Peter Wong <peterwongpwhk@gmail.com>
Content-Type: text/plain; charset="cp1252"
Content-Transfer-Encoding: base64
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

U2No9m5lIEdy/N9lLAoKRmluZGUgZGllc2UgTWFpbCBzZWhyIHZlcnRyYXVsaWNoLiBhbnR3b3J0
ZW4gU2llIGb8ciB3ZWl0ZXJlIERldGFpbHMKClZpZWxlbiBEYW5rLgpQZXRlciBXb25nCgoKCgot
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tClRoaXMg
ZW1haWwgd2FzIHNlbnQgYnkgdGhlIHNoYXJld2FyZSB2ZXJzaW9uIG9mIFBvc3RtYW4gUHJvZmVz
c2lvbmFsLgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LXJwaS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LXJwaS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJwaS1rZXJuZWwK
