Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A09A1044E7
	for <lists+linux-rpi-kernel@lfdr.de>; Wed, 20 Nov 2019 21:21:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qo5hNwYAlxBA/SxRKIR72NvQtrdOkNJM6gJRGUe7A4U=; b=pF4UCdfP8ZQQpK
	IcgaRu20TEIEYZxkUVTVqRU3vgv4lJ1zThy6kS6yB13/Ul6kWOXzpvbHIYKd/B06mpkks8oyQ6jxh
	sVrPMjFj7TjEZeuhkybWHDoPXzd9XznXs/3TqQ5841pDct7GWYu4MLFVajv1hM6Id0hipqO21WVO2
	RYkFGoofj3dy87YenfxNeYveOO3UViddCdNAvmAg5o0osilznzX4jSa3Mq7+72o0m+OCE2v2h4NTM
	xUM47HU5aPeqEA7JsK/DOuAEF1bxITdz1wRWIhITSV/tSyFOMruFRw9xClH4bIkiCCEfPIY9Ps/bz
	l6GzfwXBS/2a4YeBa29Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXWTN-0000sU-EK; Wed, 20 Nov 2019 20:21:09 +0000
Received: from mail-qv1-xf49.google.com ([2607:f8b0:4864:20::f49])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXWTK-0000qx-9Q
 for linux-rpi-kernel@lists.infradead.org; Wed, 20 Nov 2019 20:21:07 +0000
Received: by mail-qv1-xf49.google.com with SMTP id bz8so605245qvb.9
 for <linux-rpi-kernel@lists.infradead.org>;
 Wed, 20 Nov 2019 12:21:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=ymAb/3FkIrD0ZHaNkHYugZ2pdI0MGgpm6zAVH7TwBy0=;
 b=QlWTRfAqfXD9o0DTSX7L+2mzKkJvTUAW1tt9Zq1k6C2+a/v+2566Poy28ZYXdh5J+M
 ampbxeI4MjnypYS7Ls8/tO1hbhxuf/w40GRp4pU9QDkq0xR2KqRLJGUTmLLYqFzNO+jp
 yqNN3HUerL2xGB5A9CWkPAFeYt165RysxgVcCuBTlryWlANKxb++1WDVLhREdpuqMjbB
 aoD3hIwpJPnoPxNGfaUGA8fAgwcMwvowDjBxO4PwJfkwrQGZa93vuP4DAR4fT2sIUsYf
 KIdirMp4LBxRAwqE21FejtHmnyo7sWBEyHW9jKnpu8eurAyH1NUEegKQImL10dmcavVy
 Eyug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=ymAb/3FkIrD0ZHaNkHYugZ2pdI0MGgpm6zAVH7TwBy0=;
 b=JmjxOMb2tYBnkTJGJZIYr//8/mxrEc3PQGIRIEz77oIKfiCkqocfS5wvipqM0kNL9M
 tcZc86ySyze5kWth0Vb+yyw6yrY9Ml8J/Eh+VY2kTGBoQQw1Z8IOEUerG0lNSFuADm3d
 Aub5urpHnw4K7YyCQA5o7D8IrlhhuJ6g5GTWkNaaj6NUNCcaW+LfT8qoYPjRukOvOFLk
 DaewsKjy+a45NrQRV1dqeLDbv5c2wmb1OnJraeMa8eYS556mTAqo+HaOb0iLPLCnqC6T
 Zl/0CJ4DCvnSFFLBIF5CFdHDfZOH08YXwB/bSC7PYlWzmu6DAFIZZAlrx1PbBx+zeJyd
 Ca4Q==
X-Gm-Message-State: APjAAAVRmSvfS2aLCHSetgIIY7TIEdRge3AMQefw28FcZs3D9kLgRF6Y
 qh/7q7OEC8bTVdXWa7Y0KAPmVDGt6emZHGLqPKg=
X-Google-Smtp-Source: APXvYqx+wsW3VsrA6qKf3LQshPe2grt4za913f8rG0jLRYs+i4N6qOOfg4DSwiqKNRIoDnaE3lKBTMQKY7TUIuWBU0c=
X-Received: by 2002:a0c:b062:: with SMTP id l31mr4621746qvc.43.1574281264073; 
 Wed, 20 Nov 2019 12:21:04 -0800 (PST)
Date: Wed, 20 Nov 2019 15:20:58 -0500
In-Reply-To: <cover.1574253964.git.marcgonzalez@google.com>
Message-Id: <20191120202102.249121-1-marcgonzalez@google.com>
Mime-Version: 1.0
References: <cover.1574253964.git.marcgonzalez@google.com>
X-Mailer: git-send-email 2.24.0.432.g9d3f5f5b63-goog
Subject: [PATCH v2 0/4] staging: vchiq: Fix vchiq_read return value in case of
 error
From: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
To: gregkh@linuxfoundation.org, eric@anholt.net, wahrenst@gmx.net
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_122106_351704_0AD1060F 
X-CRM114-Status: GOOD (  11.30  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: devel@driverdev.osuosl.org, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

This is a proposed fix of an issue regarding the handling of positive
return values from copy_to_user() in vchiq_read(). It looks like the
struct dump_context passed to the vchiq_dump() function keeps track
of the number of bytes written in the context->actual field. When
copy_to_user() returns a positive value, this is set to -EFAULT. The
problem is that this is never returned to the user, and instead the
function continues, adding the number of bytes that should have
been copied to context->actual.

Running the following program:

#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include <unistd.h>
#include <errno.h>

int main(int argc, char **argv) {
        int fd = open("/dev/vchiq", 0);
        if (fd < 0)
                exit(-1);
        sbrk(getpagesize());
        char *bad_buf = sbrk(0)-100;
        int x = read(fd, bad_buf, 2000);
        printf("%d %d\n", x, errno);
        puts(bad_buf);
}

gives this output:

-1 1
State 0: CONNECTED
  tx_po


  Remote: slots 2-32 tx_pos=578 recycle=1f
    Slots claimed:

Note the mangled output and incorrect errno value. Messing with the
constants in that toy program changes the results. Sometimes read()
returns with no error, sometimes it returns with a wrong error code,
sometimes with the right one. But it seems that it only ever returns an
error at all accidentally, due to the fact that the comparison between
context->actual and context->space in vchiq_dump() is unsigned, so that
that function won't do anything else if it ever sets context->actual
to a negative value.

After this patchset, the above program prints this:

-1 14
State 0: CONNECTED
  tx_pos=b4a218(@165de6b4), rx_pos=ae0668(@f02b54f4)
  Version: 8 (min 3)
  Stats

Help with testing would be appreciated. So far I've basically just
diffed the output of 'cat /dev/vchiq', run the program above with
a few different values, and run vchiq_test a few times.

These were applied to the staging-next branch of the tree
at git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git

v2:
separate first patch into different logical changes.

Marcelo Diop-Gonzalez (4):
  staging: vchiq: Fix block comment format in vchiq_dump()
  staging: vchiq_dump: Replace min with min_t
  staging: vchiq: Refactor indentation in vchiq_dump_* functions
  staging: vchiq: Have vchiq_dump_* functions return an error code

 .../interface/vchiq_arm/vchiq_2835_arm.c      |   5 +-
 .../interface/vchiq_arm/vchiq_arm.c           | 129 ++++++++++--------
 .../interface/vchiq_arm/vchiq_core.c          | 104 ++++++++++----
 .../interface/vchiq_arm/vchiq_core.h          |  12 +-
 4 files changed, 153 insertions(+), 97 deletions(-)

-- 
2.24.0.432.g9d3f5f5b63-goog


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
