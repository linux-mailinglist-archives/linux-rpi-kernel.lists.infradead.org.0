Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03EDBEE7D
	for <lists+linux-rpi-kernel@lfdr.de>; Tue, 30 Apr 2019 03:42:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6AJt7wbA/PfRwXOLsBCtLoy3JUUEWIOOYQ7DXP2/ZBo=; b=Jjq3CnVmvytLNw
	GKnzhBIvuvvyeQK2dSvYc5ruwZRdtCQjRdhvGpy9yxcS+Gl7HhkiDo+HY//iOzh0++oNkmCIXCWBB
	Rr6cLdbOvAeLgdevo9O9Pzbub9f/tXwmFS1q2s3hXl4EtEGlVL86shfTg85n4erUmZqt1c8QyNsCk
	9V3eLnJKi/oMNY8PepHKFy60h1z5hdInYwWOvrC2pw+JsOrYyfvzKz4YIDT94bmhPscxZYuAGTLIO
	hiPf/6iFrzas3+iLqs+7SNrOWD16NAmxsi8yZhlj+/6Uw2vkydb7MCBKrF6iBCyNAGZF8IBKq/hY1
	5x1j0nu1tMXEVWZHJRqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLHmP-00012l-CE; Tue, 30 Apr 2019 01:41:57 +0000
Received: from rain.florz.de ([2a07:12c0:1c00:40::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLHmL-00012I-DE
 for linux-rpi-kernel@lists.infradead.org; Tue, 30 Apr 2019 01:41:55 +0000
Received: from [2a07:12c0:1c00:43::121] (port=56478 helo=florz.florz.de)
 by rain.florz.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-SHA256:256)
 (Exim 4.89) (envelope-from <florz@florz.de>)
 id 1hLHm9-0004NL-Ro; Tue, 30 Apr 2019 03:41:41 +0200
Received: from florz by florz.florz.de with local (Exim 4.80)
 (envelope-from <florz@florz.de>)
 id 1hLHm8-0001N1-CI; Tue, 30 Apr 2019 03:41:40 +0200
Date: Tue, 30 Apr 2019 03:41:40 +0200
From: Florian Zumbiehl <florz@florz.de>
To: linux-rpi-kernel@lists.infradead.org, popcornmix <popcornmix@gmail.com>
Subject: dwc_otg disconnect IRQ storm/starvation crash
Message-ID: <20190430014140.GI5152@florz.florz.de>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_184153_605852_C3269C68 
X-CRM114-Status: GOOD (  11.57  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-rpi-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-rpi-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rpi-kernel>, 
 <mailto:linux-rpi-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rpi-kernel/>
List-Post: <mailto:linux-rpi-kernel@lists.infradead.org>
List-Help: <mailto:linux-rpi-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel>, 
 <mailto:linux-rpi-kernel-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

Hi,

I have found that a Raspberry Pi 1 reliably crashes when I unplug an LTE
stick from it if two of its TTYs are open at the moment when I unplug it
(like, user space processes having open file descriptors for them).

After some debugging, I have found that the reason for this crash seems to
be an IRQ storm: The device driver (or whoever exactly, I didn't dig
further in that direction) issues read and interrupt transactions, which
fail with a transaction error (presumably because the unplugged device
doesn't respond?), which seems to cause the driver to immediately retry
them, causing another transaction error, causing another retry ...  leading
to ~ 30000 interrupts per second, keeping the CPU completely busy, and thus
preventing the hub disconnect message that would make the driver stop
issuing those failing transactions from being processed.

I have tried adding some code that heuristically detects the IRQ storm and
simply clears the host controller's global interrupt enable for a few
jiffies to give the kernel a chance to process the disconnect--and that
indeed prevents the Pi from crashing.

Now, that's obviously a terrible hack that also could fall over in various
ways, so I don't have a patch to submit (yet)--but as the dwc_otg driver is
pretty complex, I thought I'd rather ask those of you who do already know
it well what you think a sensible solution to this problem could look like.

One idea I did have was to maybe track per-device transaction errors, and
to throttle the submission of new transactions for a device when the last
50 (or whatever) have resulted in transaction errors? I would think that
that should not cause any problems during normal operation, but would stop
a disconnected device from thrashing the CPU for more than a millisecond or
so. I have no idea, though, how practical that would be to implement in the
driver ...

Regards, Florian

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
