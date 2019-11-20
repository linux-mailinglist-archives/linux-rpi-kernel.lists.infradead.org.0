Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75DE5103EDE
	for <lists+linux-rpi-kernel@lfdr.de>; Wed, 20 Nov 2019 16:37:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JkX3MDgAC7Eg6/kmAt0Sfp/bryJxzyDmNyJklgUVkLg=; b=ehPByQcl9zD7cq
	61p5W7hjkL5bl6hmfitXvx1DxnTvY26rol+2F7lfUcLeo2POMIlHplfDp5JUrI7aRSbLbwBV63x/Z
	8sGNwnqjqJ4z1q8EAQQJ6SMyX2Lq0io2YsaniafH1Yn3YtLwJ4vDqQYf7/h4+jgkuR2EwOVBIsqPg
	bbef5vOwFAOl9ONJnbYszBB+xk0ogb3tAQEZd5qoxN8i28LybQ0cQ3SObJxrqCbj79ZA5GbXXgn8b
	4p7UiSKzrgRAN/gi/waOI6d5HivTtKwJEU70tzWWP9n1CR40wUF+bxhGblRF6Tue5Me1GTEMDoNJF
	M5epG3GNYDplhdsozsWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXS2I-00073Z-RC; Wed, 20 Nov 2019 15:36:54 +0000
Received: from mail-qv1-xf49.google.com ([2607:f8b0:4864:20::f49])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXS2F-00072g-U4
 for linux-rpi-kernel@lists.infradead.org; Wed, 20 Nov 2019 15:36:53 +0000
Received: by mail-qv1-xf49.google.com with SMTP id w5so9137qvp.13
 for <linux-rpi-kernel@lists.infradead.org>;
 Wed, 20 Nov 2019 07:36:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=HsAuVMkx6t8O586c6Dyda7qXdoCpWt9vDvhXagARpNY=;
 b=GGjNV31FbiULaQpuXjSLyFVJ3Tzvw/7bcD44+ZHQjof6QAaJcxQMjIdmv3JITwiEhJ
 06KaiC28YM0dchxnl9hEaUv/SDrSBX+eBbY8+f5kZfuFVDsR6UXP83lySzDJ4sWvVZ5i
 MrlG6XJKzL13MsaqACnUuFYpXpuDsBjNokPpj7EzWXuq3Tirr6VbvYZK8YR7JvU7jCXp
 YhZJwHsCPhxI9NOVOirvsHICg1ROEMRPsefs3iXfeRKj2dHJhfYUEY41dkQdTMmfuXZp
 SroPQurkdvHFlnKMwN1UIeYHSpzryYSv9qjmUpJwTvxhYyTxfSzs6PBpyX8GzZ2HqBWz
 sC+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=HsAuVMkx6t8O586c6Dyda7qXdoCpWt9vDvhXagARpNY=;
 b=PIayXnLXl5kTx9uaI11SJkm3d761eH6CFVL1filSjVn4P4jI6PVfVwksTEB3C/u7Es
 teaRV7yzTEmxoWh6+OsIvHb8hinVVsFbHSII82hJnjXZuDD6LSZbY9628oKUQPS+HMG3
 D8EA22yGHa16A9Y/YdNWWfSypiGNi+tlJzFFLNQO4py2BHgTHyKRCNJj/iOmC6LptnoI
 dTAXhq6kfymLFXmuI/FNQHI9RjoHIlb2T7KWPwek9p9cuiwSW9sKTohUp/aXdvjDiTKZ
 sU70tgRGIC29otZQmI4n1zaCMfBbBLB7DB78XrciP17nydEiph82aJ85fkij2Y28M4jl
 HCfg==
X-Gm-Message-State: APjAAAVHTayNzxlUGnTBbn0DmSumu/0tQaZiMYiok0jC5dxzGewkGsoX
 lfCMnipjYlHH+ewdXFuApp5oLsM14QuLnFvwS9w=
X-Google-Smtp-Source: APXvYqwy0ZdudDLBOsWf58zkgsPYJeO8OXhQAaG8PCk2AQeICScoep5h2v/rvuiwBMGngacTvIzhJM7I7G0gjQimB8U=
X-Received: by 2002:a05:6214:13aa:: with SMTP id
 h10mr3238241qvz.142.1574264209677; 
 Wed, 20 Nov 2019 07:36:49 -0800 (PST)
Date: Wed, 20 Nov 2019 10:36:45 -0500
Message-Id: <cover.1574253964.git.marcgonzalez@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.24.0.432.g9d3f5f5b63-goog
Subject: [PATCH 0/3] staging: vchiq: Fix vchiq_read return value in case of
 error
From: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
To: gregkh@linuxfoundation.org, eric@anholt.net, wahrenst@gmx.net
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_073651_991775_766E542E 
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
problem is that this is never returned to the user, and instead the function
continues, adding the number of bytes that should have been copied
to context->actual.

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

Marcelo Diop-Gonzalez (3):
  staging: vchiq_dump: Replace min with min_t
  staging: vchiq: Refactor indentation in vchiq_dump_* functions
  staging: vchiq: Have vchiq_dump_* functions return an error code

 .../interface/vchiq_arm/vchiq_2835_arm.c      |   5 +-
 .../interface/vchiq_arm/vchiq_arm.c           | 129 ++++++++++--------
 .../interface/vchiq_arm/vchiq_core.c          | 104 ++++++++++----
 .../interface/vchiq_arm/vchiq_core.h          |  12 +-
 4 files changed, 153 insertions(+), 97 deletions(-)

-- 
2.20.1


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
