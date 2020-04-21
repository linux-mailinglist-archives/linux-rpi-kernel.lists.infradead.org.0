Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53D2B1B2FC5
	for <lists+linux-rpi-kernel@lfdr.de>; Tue, 21 Apr 2020 21:06:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=7NESfcpUkumgKBaQzHIvZin+pE1g4ugpNsdn+v2f5QA=; b=DHU
	7HDpjMv+R0KwESM2FDQ2wMgra0neIEcGn7gL71sH2HnwPxdcwqC8lw0tKD/dRtMsmBZ2VviSecLod
	RGUsJ2zyQYRjmNe2OalD6cs0jgywviJIFHzphZvO/fxPj+sM3/xxxpzBxv8Q6whL0DKnJmHy4QvPk
	sYMVwxybpMUiyddaTCOVrBDV3MYDKloVole2JHD1HPjGjgB5WGmRJvlcdAIBs6Q44UmsXjZM5iMUo
	iWqU66dZYueh2Kg/W0MQVaaUtx7P/cwXj2GVHCg1GdxNhr3h1EY3j6CKOWVL2a40BhtvYlpeCWwKF
	y7TfQOhAqzpuKKoiKXUPha95Qi6rikA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQyDU-00047i-Ti; Tue, 21 Apr 2020 19:05:56 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQyDR-00046r-Nu
 for linux-rpi-kernel@lists.infradead.org; Tue, 21 Apr 2020 19:05:54 +0000
Received: by mail-ot1-x343.google.com with SMTP id e20so1516099otk.12
 for <linux-rpi-kernel@lists.infradead.org>;
 Tue, 21 Apr 2020 12:05:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=uEgXocDW3DQveCaKivaTRXqFdztQEXQz3DJT/MB5iqY=;
 b=oT/sPAiEbziuxEfQG8s13XzKpfKjmnpAGXLK/9jFjMp2sDMWaQ3SZI0qkzthk80yJF
 M72L8T+CFCDD3cjh3+k0VyGg5V6haiYvCQLTvUWbQsySo6ix2FIwUG2vBUjKgRA9lKHt
 zC5LiukeUErbI5YymwT1jXCrWP2tdDaXQ0xgNtC7Uai+hn4W+UnpzjYf797kGb1Fx1qV
 0SvJWou1UXpGo7+TPZRPnbVnzMmyELUS0ycwkR3SLPU/0ghKfph1Dsa+pwq4OYC0KSPf
 T0YIyQSJxZ04aeyzZ2aA5lcv6pVq5BB+3c/pfU8Y5ft27/S4p5cs6JErUSsvQnJXJAmX
 +WMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=uEgXocDW3DQveCaKivaTRXqFdztQEXQz3DJT/MB5iqY=;
 b=D6yNSufaZ70cq6KAws0SFBJPwXi5S2Hp/99PFzDIFA0bJ/HPcAwVc511QqecybMsVs
 O2CGly1qfSiJ8QH11S6cViFUwfAf5yVRRqlAx8b0cB1OLyHMasr1qcuxVh1Ye8RzyJRZ
 W3O+3453FD/6XbZeDwJirHiVyJXOi283lZKDocRfHWM2q953jfa6mPfQWYG2agoruBwJ
 TUdMDAYpvQS3YXTpRID2x4u+jFVPVAMPA9FYIO/ELe83hvzN8z/t3X+ieB0wY2D2oPVN
 +o21N0YjY05iW+ar16fTsPn3qeP7T4lbW741FH9rS09HBOFddTsrCU2IupxRj3rC/q+i
 K3/A==
X-Gm-Message-State: AGi0PuaX4OgRc3IpDmsd5nFjGIxAiXEEKEGdfm/HIq5gzBGPSNNBI1Ek
 E0KdaXO9AEsJNkMA2RP9PVd7eE1M7OHzRmYwIA84gkDK
X-Google-Smtp-Source: APiQypIBzgcpG5U3DCKqQjQxXfyGrG/7WgoOb3s/H5nP1pTB0/Of9QhQRq9NcA7gb6wmFaXRtznB7nlNKk4WIYQIAfU=
X-Received: by 2002:a9d:634f:: with SMTP id y15mr13789610otk.41.1587495952165; 
 Tue, 21 Apr 2020 12:05:52 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a9d:434:0:0:0:0:0 with HTTP;
 Tue, 21 Apr 2020 12:05:51 -0700 (PDT)
From: Selina Bucur <selinabucur871@gmail.com>
Date: Tue, 21 Apr 2020 19:05:51 +0000
Message-ID: <CADg6b9oogR3JyX7b96ptRPcOkGONHPjT0y1Goa+h4bbpvF-y+w@mail.gmail.com>
Subject: message from mrs selina
To: linux-rpi-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_120553_802708_830E161A 
X-CRM114-Status: UNSURE (   1.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [selinabucur871[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [selinabucur871[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.0 FREEMAIL_REPLY         From and body contain different freemails
 0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal
 information
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

Dear, I picked interest on you after going through your profile on
google web and demand it necessary to write you immediately. I have
something very vital to disclose to you, Could you please get back to
me to my private email contact address ( bucurselina@yahoo.com ) so
that we can discuss privately. My regards, Selina.

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
