Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B852712E8B2
	for <lists+linux-rpi-kernel@lfdr.de>; Thu,  2 Jan 2020 17:30:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=W/8571S5NBPzw1a4i1pcD+BNBJ9ajY+0yCn0zsnyXik=; b=lkjszAexHm6SSv
	/1agXeBqQeQKy/sq6KjR7bhduESRSMT3mFkKpiVYLDRDGPU2AqixJnyBOtb9H4F7A82Cs+gC4HMRF
	ncoDSk1+Izd7Vun4n3rXLUDNDRHXLB/WFbqGJE56Arngrph93dYVe2B7mbl5j9d+DLexk+xuF+WwY
	47goMFLlLOg6gibHBJLYn3M7qQXDwd5tybVzQ7diSFeRUzuTLaGgeZzlGt+Zxn8kkt33gQU+2oi2w
	Jhfb9+bP9jIvX+kiMG3Hm0sIvjB44L0Dj9mvI+5peuww3RUCZ4O5W6I+7ASSK26a0VjuzlWeMiA3+
	LNmwS2Hp6hBjMFegNX/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1in3Mz-000528-5A; Thu, 02 Jan 2020 16:30:45 +0000
Received: from mail-il1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1in3Mv-00051l-Oo
 for linux-rpi-kernel@lists.infradead.org; Thu, 02 Jan 2020 16:30:43 +0000
Received: by mail-il1-x142.google.com with SMTP id f10so34465152ils.8
 for <linux-rpi-kernel@lists.infradead.org>;
 Thu, 02 Jan 2020 08:30:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=mTdWJKn7dhTRmaSKDBtLyKhsLu/LRMgalAUdZ3CVkO0=;
 b=N3UISJxuO/7FxaCoicX6230NMqrn+LxlWds/3KX/+I9Mg04wnJFG8eMM4uutIE1HSs
 FIAZIk3t6BNS9ubC0XUR/U4oLeAB77ujrHQidHtRoDC4HT/wGWQQGacI9o4SdPfSFM2e
 cqfmR0ybk9Gckx7hn74vLMjD3Q+wYcD5xRFSzfw6B6qsWfNFm9DrctPABakDlPxzUgYt
 mnBfwJsNtMN1RDtifKsJiFzxqb/3C0+WJjJBnMfkRraJ8uFO8MCwFU8ly/8zc9FgVONg
 sWYWXr8fiY5G4EZRs5BfQRLe5kiq3gxcO/nL3W4ZUgC5vgOFCLQPtaS9NvgNP6xYtQow
 Cb+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=mTdWJKn7dhTRmaSKDBtLyKhsLu/LRMgalAUdZ3CVkO0=;
 b=E5gcME++3Z+qypyUGJ0Z2pZEpqewp0MZVTiVvTuoSZ2kyIG7vIIn9EbbpBVgfZ3nW0
 ccZrfsdLEgC697/Muxq7WucAOLSDDGAty3QzoMBJgI1p9dY5nVoIf4MU6yYJry85xyxo
 CJ2YlnLQzkXRoypUu373aTDGRcx2yROXhrhaH/VJZ1Wzwc/vRcZuNzHJwyrVmBmLy4im
 vJ2QMLebZuJr+dF3RCI71z/2S7q2ci8vl1krN6LyYzG6BA0lDLGnzxyIGckXM7WpHXgm
 OdgrlUNx7UXv8nziplPJpPew/OvwcfUP3qqLLJjdowIxa6jf6i7VIiLj0MQqPxKlvUCF
 kvZQ==
X-Gm-Message-State: APjAAAW68YSOY/drXy7+sKxr4iIeLeWbciZPMjdL100U3QZ3nwjfO4CW
 UEzX7uDkNWEbKsD7Q5bp7nDC9fICsEjJJEWjm+M=
X-Google-Smtp-Source: APXvYqwQqDUhEgV8r0pCVIwLT//Vr8JIij8/8y2kShyrRb2/qGhxsk1HoUlOjiRVDbLCoHhDgWmSrVHxgyTUNN9/CQw=
X-Received: by 2002:a92:5cda:: with SMTP id d87mr74014757ilg.100.1577982639538; 
 Thu, 02 Jan 2020 08:30:39 -0800 (PST)
MIME-Version: 1.0
From: Marcelo Diop-Gonzalez <marcelo827@gmail.com>
Date: Thu, 2 Jan 2020 11:30:29 -0500
Message-ID: <CA+saATVfYLH4Ej7t78_hvd_cvgeS_=sV56Ad4Qbq1SsYPnu4rw@mail.gmail.com>
Subject: [resend with no HTML] minor bug report in staging/vc04_services/
To: nsaenzjulienne@suse.de, gregkh@linuxfoundation.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_083041_832727_47A4AD0C 
X-CRM114-Status: UNSURE (   5.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
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

Hi, I noticed couple minor bugs while looking around in
drivers/staging/vc04_services/*:

1. When opening "/dev/vchiq", vchiq_debugfs_add_instance() adds a debugfs
directory named after the tgid of the process who opened the file. But
there are collisions if you try opening it multiple times from the same
process.

2. In vchiq_dump_platform_instances(), called from vchiq_read(), each
instance's ->mark member is used to track whether it's been printed
already, but two concurrent readers could stomp on each other (causing one
of them to see fewer instances than actually exist), since a field in the
vchiq_instance struct itself is being modified with no
locking/synchronization

I didn't want to send any patches out since I'm not sure if/how people
would want to fix these, but thought I'd point them out.

Thanks,

-Marcelo

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
