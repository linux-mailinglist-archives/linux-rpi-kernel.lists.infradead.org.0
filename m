Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFE4812E922
	for <lists+linux-rpi-kernel@lfdr.de>; Thu,  2 Jan 2020 18:11:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G7R5dYOwod9yc8jyL6UWvSyBYj7+79GuPyGhqA07IAo=; b=RdNau+WRJwYvKg
	hcqFJYV+FKjIwdxp+KhIOh26Hb0nJ8YiLF2VbR/scL3beOJ+2MsyKoJwxv6lRu2MX5PPJXJki0lTT
	uNu9pU5zkLUR4dGWY6PyI1epI1CioxIu7usBxTilxxE7D+u64rLsnY8VSx6aNxOkKCC8y4aNB+TrN
	c8JNdFvgWhbVzvjfeSywHrQBG6YJAnhNjO8oN2/8JDwiXNAGoNoezpxSAxi9Oo0+x3g+m5no5eWxc
	mKN0+uX5alSt9qA736LUfSVW3+JyZjqPmrM7qcXXqTo6c38bVRqPT/i8GWj1e0z7lbHDFG+4OCMMC
	OoT7/Z6Qgx7jIUBQQVYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1in40O-0002hS-1F; Thu, 02 Jan 2020 17:11:28 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1in40L-0002h6-2a
 for linux-rpi-kernel@lists.infradead.org; Thu, 02 Jan 2020 17:11:26 +0000
Received: by mail-io1-xd43.google.com with SMTP id x1so38894819iop.7
 for <linux-rpi-kernel@lists.infradead.org>;
 Thu, 02 Jan 2020 09:11:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=d1MMlXuq3htz7xQ7iWdmoGeEmSyRhu55W8/gq9KRHHQ=;
 b=Ad5QPvBT+bhMSMl/yhQTiCs2ZfIFZSGj5torhMKJp3+K+RkfmFtOrEs+8tItSspEmJ
 E3Zcwl2KczWTRj3JTSUl9yarp0OrSjosI+jBI/+QpeI49GKVE4R0KL0iGmCeiGOKHrRj
 bsYpr3OqVBJCO2iuhLq9yJf+m8Niqw0QoNI5OptderZ/nB89QJTdmg7f8HJcykVEX8OJ
 nzkIuh81A97DC7+tNsKTjw3fB8tBMb5Y1rIfQsNTmonzOblJU/CbYgxrQ5vc8RLyjMng
 mdVuZGvxHSLB7XCQsKtph1OPW9gbcjKZaeelU3zSWdEwSk353E0onX7EvTR2BbPBmo4d
 FLzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=d1MMlXuq3htz7xQ7iWdmoGeEmSyRhu55W8/gq9KRHHQ=;
 b=Z08QpjeWg9vgq0eCc9j1DvtP/FByTZKGIYFF86DJkCKIUT420Fyxd4+XT2yn67G1Yz
 mn9u/093FKoP2MFZT8Mk0gmQzoOGHRDn7JGj2V5JPay1frwzNnnC4cYEvOI1Vbok4eg6
 i42wiZQb4rVllph2aODDYex+7fAytehmpxoHJq1NCV8+APo5fU8V5c4bzkDX2u8+An5O
 epkcSR8B1upYeRtofqjlNQDxOtz3Wg+J+xqp6zQ2JZEn4u0k/owKEffoiwcRA0LEVARd
 fzCe3P+ZOrDBFpf587ye1i1zem1CvGWcSLo4Ew0Mfd6FVbt0oPVqW5fqbwjxMtRax2fb
 P1LQ==
X-Gm-Message-State: APjAAAW/IkX9J9/ycOGjrgdjVhEb1adY4JokH4xPWp2oXxIBVpj8Ao+G
 zhve9Q1czUvqJ1WdXl6BRRsgMRqkvt/T76fTcyY=
X-Google-Smtp-Source: APXvYqxfrZWMOqia5VgSeOJillPR5wML1uUsHwwzCrWJ/X5ZYOyWJ8czTmgr2ANtFO9iYhPJ55EbU3PR0uPFFa05dlg=
X-Received: by 2002:a5d:9499:: with SMTP id v25mr36156978ioj.66.1577985084454; 
 Thu, 02 Jan 2020 09:11:24 -0800 (PST)
MIME-Version: 1.0
References: <CA+saATVwyungoYC2WTZf7j=kp8YXbDGJ44DOWNePiK9VeLOETQ@mail.gmail.com>
 <20200102163442.GA177909@kroah.com>
In-Reply-To: <20200102163442.GA177909@kroah.com>
From: Marcelo Diop-Gonzalez <marcelo827@gmail.com>
Date: Thu, 2 Jan 2020 12:11:13 -0500
Message-ID: <CA+saATX2vahe_Jx7NEQy+mq4mg4r_vooOvsKf2GNjJK=VErsbQ@mail.gmail.com>
Subject: Re: minor bug report in staging/vc04_services/
To: Greg KH <gregkh@linuxfoundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_091125_117141_8DBBB7E6 
X-CRM114-Status: GOOD (  11.37  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (marcelo827[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marcelo827[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Thu, Jan 2, 2020 at 11:34 AM Greg KH <gregkh@linuxfoundation.org> wrote:
>
> On Thu, Jan 02, 2020 at 11:24:09AM -0500, Marcelo Diop-Gonzalez wrote:
> > Hi, I noticed couple minor bugs while looking around in
> > drivers/staging/vc04_services/*:
> >
> > 1. When opening "/dev/vchiq", vchiq_debugfs_add_instance() adds a debugfs
> > directory named after the tgid of the process who opened the file. But
> > there will be collisions if you try opening it multiple times from the same
> > process.
>
> Odd, but shouldn't cause any problems as no code paths should care if
> debugfs works or not, it's only for debugging :)
>
> > 2. In vchiq_dump_platform_instances(), called from vchiq_read(), each
> > instance's ->mark member is used to track whether it's been printed
> > already, but two concurrent readers could stomp on each other (causing one
> > of them to see fewer instances than actually exist), since a field in the
> > vchiq_instance struct itself is being modified with no
> > locking/synchronization
> >
> > I didn't want to send any patches out since I'm not sure if/how people
> > would want to fix these, but thought I'd point them out.
>
> Patches are always best, please feel free to submit to help resolve
> these.
>
sounds good!
> thanks,
>
> greg k-h

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
