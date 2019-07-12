Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C929866C86
	for <lists+linux-rpi-kernel@lfdr.de>; Fri, 12 Jul 2019 14:20:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i5FeWZ48lHZ3LcpRvZYIq5aIlhiOsUr2AW1Tz1iwoBE=; b=rdSvPpxLL6bq0s
	JZwv4e5ebeq9RKVlCE7VfFjzGjVG9Z7vVRCg+bhCdC4x8GKkPaNAQhkT3ppb8MQetpIQ1zBshG5FX
	FGBFoqhXFCneWxJ6/l4Hl/pbzExfM8Q3mGQXlPAf4+osbRnYisL2azARzsnXcWwprttbH4tIo2p4O
	T1iNv9yO43UlgCa+pw/0vHhN0EwlUt86M123Z15pmxw/vPVNUxbfqKAQmhBGMFYhcQeaDxxfUUnQI
	AD1PBVxVCHE+1NE/Q1AF18+7q/zj0rUvJpC5BXniPfXTWNtteduYxyXxp8p7NZYNkbt7Obd/zJ7H8
	8HZolouPr/tk/NC/EseA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hluXk-0003Qz-Vs; Fri, 12 Jul 2019 12:20:52 +0000
Received: from mx07-00252a01.pphosted.com ([62.209.51.214])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hluXh-0003Ie-CT
 for linux-rpi-kernel@lists.infradead.org; Fri, 12 Jul 2019 12:20:51 +0000
Received: from pps.filterd (m0102628.ppops.net [127.0.0.1])
 by mx07-00252a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x6CC9L79005969
 for <linux-rpi-kernel@lists.infradead.org>; Fri, 12 Jul 2019 13:20:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=raspberrypi.org;
 h=subject : to :
 cc : references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=pp;
 bh=aYvRadL6yw0BOyQsAWmctpKAqep0lNQg7LKzEYkgp68=;
 b=X0/EeCNVGCx2yyWuvvn3LkdGbOr9KPiTlxdyR3E0+v5B1nOSKzMq6LGMnVP2gjBsJWCj
 gX+o8gyEe9rEhuYqzX2A41ZObSk0XFX5jtziXchzJD5U4jNACl2yJZDu/cdpeMS+ZmhH
 fGZ6agpByAwjFGxcLfL2pWaV4A/P8bTJgJZ9Xa3G8e1faX3WACWw3UysqcKBiext+Jb2
 Cx0enGru3H6xH5o++YNKiOsgvfvybM9gF7wdJsrG+HxsicvK6xZL2gKojjkRwb8LkK68
 Tb6KASf9bOr+x8YHiaGxI31oP+w5ZnKSsWLSLzRDFK/uf9/nEr/aYtjO2qOheRfrCnnf TQ== 
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69])
 by mx07-00252a01.pphosted.com with ESMTP id 2tmd5fsusd-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=OK)
 for <linux-rpi-kernel@lists.infradead.org>; Fri, 12 Jul 2019 13:20:44 +0100
Received: by mail-wm1-f69.google.com with SMTP id 17so2581188wmj.3
 for <linux-rpi-kernel@lists.infradead.org>;
 Fri, 12 Jul 2019 05:20:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=raspberrypi.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=aYvRadL6yw0BOyQsAWmctpKAqep0lNQg7LKzEYkgp68=;
 b=bG5Ya8kLRPKQnc0IcMH7KDpOAIKl/HryHVEWznwsV4N6m3Q4fAYqMGkytOPUtdpNnU
 RDmUN3EDhwNu9GzR+0TkJCHbjNq0Ezf3ADfEQ5rXPLaH2O0dQ4VhQWkyr+/23rdcgfAR
 fVOjisc6FWm7uAq6vaI5K9UQVVRUvbM6k90M18f09aniuIbkUMEJuq6q2c2CmN32dI15
 QbOxkV5S1xzrp7Tj4FSG7vwaRBiEUwBY4hvX8D7KxbfSus/CsrIouN47G1ZT1/hc3qwp
 BzW+O+OlHXY0uo/57Tv9ri4OU0v9y/ZZyddpZhkhGrO3jUBnWnBMRBgH7OS0RPcqSfqh
 7rNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=aYvRadL6yw0BOyQsAWmctpKAqep0lNQg7LKzEYkgp68=;
 b=qlgITcmi3H/7e7oTMOeJ0nADZ3+toRRAhRsODPVoxDs3/eOGhs2+8Gz5SNyIIhsa1s
 gIP70uajBUbIAGl7NWLhgxfum9mnwdbRo+xO77xsCFUIKGgANrzspV2I4rMkCLzfmive
 30t+XhWOXPoDM1hI+ZH2f7eaOPXXhxkKxV9/4uPurab1Lu1+d3x4Bm+XgqturZDhJTdB
 NLTTNdJJ90F3nqyhABVlCneOOJIlD0JeYLa+eANRLg8I+jn7Dzm07jnNftlDnhfSqYu2
 tD+9b8v65FjEcXnQoaAX5s7w6tHbeao9XOAd08jOyrfyZ2bl2qulOT5wF9WeuTogpyqy
 lppg==
X-Gm-Message-State: APjAAAUYP5A84PGJRJi/nh6TTpdBRtueE1flH/bsQTw93pzPKkz9LsYi
 MMo9ZDqPM9jnJBAkkDKaYETrQtbGWdv/DVOKIbKJWpWjHq9x+b4RhcHROchMg2HVBrveWi0iEpz
 wUtegWEvYaHUP0VYotMq2JQpjdwSIe1WLJXM=
X-Received: by 2002:a1c:c14b:: with SMTP id r72mr9642218wmf.166.1562934042978; 
 Fri, 12 Jul 2019 05:20:42 -0700 (PDT)
X-Google-Smtp-Source: APXvYqy0QMAasKV533r2hf9StmKuUCmGS/yGnfCIYPi04R0ntO5GVjUL0ujM4e8C6vp2r9XeajybuQ==
X-Received: by 2002:a1c:c14b:: with SMTP id r72mr9642203wmf.166.1562934042677; 
 Fri, 12 Jul 2019 05:20:42 -0700 (PDT)
Received: from ?IPv6:2a00:1098:3142:14:3df0:c4c3:bb86:e0f3?
 ([2a00:1098:3142:14:3df0:c4c3:bb86:e0f3])
 by smtp.gmail.com with ESMTPSA id k17sm5800070wrq.83.2019.07.12.05.20.41
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 12 Jul 2019 05:20:41 -0700 (PDT)
Subject: Re: [PATCH] tty: amba-pl011: Make TX optimisation conditional
To: Rogier Wolff <R.E.Wolff@BitWizard.nl>, Dave Martin <Dave.Martin@arm.com>
References: <1562852732-123411-1-git-send-email-phil@raspberrypi.org>
 <20190712112105.GH2790@e103592.cambridge.arm.com>
 <20190712121000.GK11350@BitWizard.nl>
From: Phil Elwell <phil@raspberrypi.org>
Message-ID: <5bf03345-6a36-1b87-ca0c-e918b6030a74@raspberrypi.org>
Date: Fri, 12 Jul 2019 13:20:42 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190712121000.GK11350@BitWizard.nl>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:5.22.84,1.0.8
 definitions=2019-07-12_04:2019-07-12,2019-07-12 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_052049_791206_908710D3 
X-CRM114-Status: GOOD (  22.18  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.214 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Russell King <linux@arm.linux.org.uk>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-rpi-kernel@lists.infradead.org" <linux-rpi-kernel@lists.infradead.org>,
 "linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>,
 Jiri Slaby <jslaby@suse.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

Hi Rogier,

On 12/07/2019 13:10, Rogier Wolff wrote:
> On Fri, Jul 12, 2019 at 12:21:05PM +0100, Dave Martin wrote:
>> diff --git a/drivers/tty/serial/amba-pl011.c b/drivers/tty/serial/amba-pl011.c
>> index 89ade21..1902071 100644
>> --- a/drivers/tty/serial/amba-pl011.c
>> +++ b/drivers/tty/serial/amba-pl011.c
>> @@ -1307,6 +1307,13 @@ static bool pl011_tx_chars(struct uart_amba_port *uap, bool from_irq);
>>  /* Start TX with programmed I/O only (no DMA) */
>>  static void pl011_start_tx_pio(struct uart_amba_port *uap)
>>  {
>> +	/*
>> +	 * Avoid FIFO overfills if the TX IRQ is active:
>> +	 * pl011_int() will comsume chars waiting in the xmit queue anyway.
>> +	 */
>> +	if (uap->im & UART011_TXIM)
>> +		return;
>> +
> 
> I'm no expert on PL011, have no knowledge of the current bug, but have
> programmed serial drivers in the past.
> 
> This looks "dangerous" to me.
> 
> The normal situation is that you push the first few characters into
> the FIFO with PIO and then the interrupt will trigger once the FIFO
> empties and then you can refil the FIFO until the buffer empties.
> 
> The danger in THIS fix is that you might have a race that causes those
> first few PIO-ed characters not to be put in the hardware resulting in
> the interrupt never triggering.... If you can software-trigger the
> interrupt just before the "return" here that'd be a way to fix things.

I'm also not a serial driver expert, but I think this simplified patch is safe.
The reason is that the UART011_TXIM flag is only set after the pio thread has failed
to write some data into the FIFO because it is full, which would guarantee that
an interrupt is generated once the fill level drops below the half-way mark.

> I'm ok with a reaction like "I've thought about this, it's not a
> problem, now shut up".

I don't think that reaction would be justified - these things are difficult, and having
many minds on the problem helps to avoid bugs like this.

Phil

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
