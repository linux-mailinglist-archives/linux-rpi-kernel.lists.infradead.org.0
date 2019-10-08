Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B09DCFC48
	for <lists+linux-rpi-kernel@lfdr.de>; Tue,  8 Oct 2019 16:22:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u8rIHxSft1+AK51RgNjmbGO43XUVFWVy+HMT0JVLSrg=; b=Dbe/35/eHl1G/i
	4qiSR9bduQeU/QHWKuXsKqIkunKt5LmX3TECIn5bc9pZa4VHeiliFM9wg57q5ggyxGvj+o/1+ypW2
	Z2GM+EGucS7u+r4JHepV5ZdSBf/TrQ32KeNasGwkeQCjdG3ZjmgG3b8jgifTGHwlQZaGQdCZm61TF
	VwSmF4FBpNHigSWQ7z9JkAgmN2f5iG83hguIGeFSQkj1bGpXwtWBsFhcTIli1nAiXaEy4JIuiwpFW
	JWmONLPnGjbuYdf84ppaA9C4q57B5qOcLFEI/fLB4FlGISAwIp5oF74TGmRLfQ46D8pGA2sAE5rRq
	LXJQFT+WWm3nsDp6L5kQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHqNs-00007A-OJ; Tue, 08 Oct 2019 14:22:40 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHqNp-00006M-7w
 for linux-rpi-kernel@lists.infradead.org; Tue, 08 Oct 2019 14:22:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1570544555;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=jMpWj4uOPxcgbjJ4IsWoC4M5sQShlFz4NNLvVWf/x6o=;
 b=Cszw21RsBE2P8aVTe7ByjPE3OXu768c33Lf6s+jGwrRzqcpeyfCrvF2LWtAwhKPMXC2Adn
 bgOw/C2La2SEtla0gcAz0opspVDHhce8gpXBtDZapr5/0wAGPM6rnDM2ZfMpJBOA9WCUm8
 D5gRbMyHefonYwdNtpH5wDc8KSBWIq4=
Received: from mail-lf1-f69.google.com (mail-lf1-f69.google.com
 [209.85.167.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-299-tUVVhh3NMMOD15NGz_9h5Q-1; Tue, 08 Oct 2019 10:22:33 -0400
Received: by mail-lf1-f69.google.com with SMTP id c7so2275784lfh.9
 for <linux-rpi-kernel@lists.infradead.org>;
 Tue, 08 Oct 2019 07:22:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=izWGXNhra/3fh2DCf3llnwEjW05viNBlyod0b16IslA=;
 b=Ua2Vd1aurj3jcJDtFhKrsqDmsbOVKgRMeecxEzzlFgDb5GwTUURlltoWodRT9UCcis
 SQrxlmAE9b9PkfZyG76RhYZS3zhs+Fo5j0O136zQqWeiLYAyIwExOVW8DYYNx+jP/2aI
 J87DTIdUVuCZToEGooSFZnx5fdLpIeJvL0pZLJlIpzpnYwKK4jCCA7ICKHA67EcuhGxf
 FBHdk1KGYo1DOa2qfSrzQ/l0Nzp3kGY29uL4miz1iTk5CgN6LMuDZWDsTj9N8hzyXeZp
 2l0mzMDi0l+bZQ3C+piUNx5hUJyhKCciUBdHeBKGVKkKTVXjTHc7Vwh83DlN0EWPCzuc
 wmTw==
X-Gm-Message-State: APjAAAWOGhCyPYDdvbxHEiAfhY8Usb2ujDFxsJvVjctFyJ0fraMDp7L5
 4est/UgrZSweYL2QZfq4KTxVsgPmBuneCernHxZzd/E5e2zcHDbze4HlFsxgOekSmK7N133mmrv
 w74SNdZhW2/dONAzPsJE+Ks7iKByTJKCpsMLjwn44SxeyywZXaxY=
X-Received: by 2002:a19:f617:: with SMTP id x23mr20131660lfe.97.1570544551421; 
 Tue, 08 Oct 2019 07:22:31 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwQ5BIwFckGkZoqMa3dajoTZI5b2H0V7PwZ9+q73PFB53Spl/+fGoimtc5lTyv7g1Hv5kaHN9PjZmq2Rci2J+I=
X-Received: by 2002:a19:f617:: with SMTP id x23mr20131648lfe.97.1570544551211; 
 Tue, 08 Oct 2019 07:22:31 -0700 (PDT)
MIME-Version: 1.0
References: <20191008123346.3931-1-mcroce@redhat.com>
 <20191008131518.GH25098@kadam>
In-Reply-To: <20191008131518.GH25098@kadam>
From: Matteo Croce <mcroce@redhat.com>
Date: Tue, 8 Oct 2019 16:21:54 +0200
Message-ID: <CAGnkfhxefH+3YKDWQMCOYoj1skcq6rUmHuiHZQ-76YixFqbQjg@mail.gmail.com>
Subject: Re: [PATCH] staging: vchiq: don't leak kernel address
To: Dan Carpenter <dan.carpenter@oracle.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
X-MC-Unique: tUVVhh3NMMOD15NGz_9h5Q-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_072237_523673_5E733FD4 
X-CRM114-Status: UNSURE (   7.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.81 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devel@driverdev.osuosl.org, LKML <linux-kernel@vger.kernel.org>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 8, 2019 at 3:16 PM Dan Carpenter <dan.carpenter@oracle.com> wrote:
>
> The subject doesn't match the patch.  It should just be "remove useless
> printk".
>
> regards,
> dan carpenter
>

Well, it avoids leaking an address by removing an useless printk.
It seems that GKH already picked the patch in his staging tree, but
I'm fine with both subjects, really,

Greg?

-- 
Matteo Croce
per aspera ad upstream


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
