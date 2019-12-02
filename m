Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AD7110EB60
	for <lists+linux-rpi-kernel@lfdr.de>; Mon,  2 Dec 2019 15:12:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GTHsTndA9/GscT6PuLeTOzT0UuQrvFO9xamNEIv14Cs=; b=ZlZYWAUXVku72maiUrcNcKfAN
	wkQMcwzkGf1kzQXD/qynIb6xeXsIcItywRSxR1Wy6HVb5a+TpWo4JNZR0yb2a7ATLb1MerzrlFF18
	GCkwnmEBa7TesvtUgR3v2jGD9fwUAVetBULnCxtL2ZjEiBU9u20c9zOV+chQ9B873nUFJ9N4vZmMz
	6Y4APTyGFpPBSy7ETKL7A5m7GaSQKbkeox1dB4EFoW/NqZDqrtdGcuN/H4hbhvDzX7wwnhpRsmGjf
	m22ON9poZllh66iu2c+dzRkoPXbZMvdvakitMf8dITtWdv7lRnQeBrQ2ms0jC6oR/uc2ek6bSkigS
	7oPqKPZyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibmQh-0008OR-9h; Mon, 02 Dec 2019 14:11:59 +0000
Received: from mx08-00252a01.pphosted.com ([91.207.212.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibmQe-0008Nv-9s
 for linux-rpi-kernel@lists.infradead.org; Mon, 02 Dec 2019 14:11:58 +0000
Received: from pps.filterd (m0102629.ppops.net [127.0.0.1])
 by mx08-00252a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xB2E3Grn022655
 for <linux-rpi-kernel@lists.infradead.org>; Mon, 2 Dec 2019 14:11:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=raspberrypi.org;
 h=subject : to :
 cc : references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=pp;
 bh=woRdPn/gbXNQfL70W4cwc3iaZDjR7ANKYFA0UuxGCGU=;
 b=axUAq7PlhQyRb0WxbxDv7K0Us8EsPRJApRGGlpU5Yj7M9grNX0fxFjpstLe5UfCVWfXs
 N2rqRQImaQ8CjAeT9NhQzpmjId+y61D3RfuBWjfouhPeR80j78CvWtnTFsvJLW8SfufY
 96sE/ncfQzPTa569Yn8YvHxsW3rDJGJYs4UsYX2PLx2DIz9jLqbZx75hmwJnkeFQQkUE
 nGcbFVYpg0FnnXGBBH7rAQwO2axeLAY7j3HII47oJ+DraDlvSHTAc8mFGrh5lT+0EPm5
 wiNdWcMAoPg387XBdZXg2c0IGl3OqNceUZECLxiOsX8mluyX9s9LuWEid9VB93FJ/JHB /A== 
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72])
 by mx08-00252a01.pphosted.com with ESMTP id 2wkdsq91wj-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=OK)
 for <linux-rpi-kernel@lists.infradead.org>; Mon, 02 Dec 2019 14:11:54 +0000
Received: by mail-wm1-f72.google.com with SMTP id f21so5975586wmh.5
 for <linux-rpi-kernel@lists.infradead.org>;
 Mon, 02 Dec 2019 06:11:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=raspberrypi.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=woRdPn/gbXNQfL70W4cwc3iaZDjR7ANKYFA0UuxGCGU=;
 b=FHaTk3EkXng7NXHztyor5xuLFa2B0Kdc1NdBpHr+ByLiqP0dAkMMZT3Hfia+sQwmoh
 4RTQAil6Wq2eQJXVw3rvg6wecFoqhub4Xob0rK6eOdkS+fJvPd9BmGUV5wQyYdEbf5ge
 evbuPKZkZ1/rPHUhPO3CF5TM9ZrQUAfMF7Th34X6lQTtfuvfgr04FBUpK5/pxKGvyhUB
 2w5NmxrRxJ6/VBfotTN/8bGAXp0rpXbhUUYUrpaOMoho9mNa39Qc2rtOK/qszOI0V/2g
 AKyyPvne9SQf/re8LcKcLygTQCDiSi+/Dp4Ws0thPjDHkdU5xlA+xR0zMTZSFFTQU61B
 MhxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=woRdPn/gbXNQfL70W4cwc3iaZDjR7ANKYFA0UuxGCGU=;
 b=KPcI9UItoaYtmzdmROxK67ziWz1Y64eLboM7jFdJPmh4+Ebdd3g4leQUcrrei1J/JM
 nBPHT4qV5fGX429OhINKby/FvcIMp4P61XO02+2oGg3WJhUseWXXJZy/35kaSDeAtl6y
 MXN1BO7ovZsdD3mLDb0jkj7f+NkUNtjGufH4o3QkcxIwQw+RXN2Q1iRQsTKS+nEPKcOO
 Tbg8iAI22GARrg57vnvsnYDCbgkoMG5WQEI66DFyoYyeNuMbUDqr+AFU3xllnY0xmIDX
 lf4r4ssw70d2qSgJDdQ0s6Hc7Zt07slPaoCI8EqhHOTrh3Zl3YRyk4qT5zYRnxHSL4S4
 zgtw==
X-Gm-Message-State: APjAAAVm90F0nQUA9eDTso53akVDmCPdnSyXYexwXlJsCFjz3hiey7dk
 /89DwLURaBtHcSborbuPY77c7d+QNw/hQX2hV6FK5fF0iVgK0itA88AWF4LgRyGpKAkunUfLe3r
 MIuQ5rWMcm22jLrKlNoxm0jtZ6oTOrscCfnE=
X-Received: by 2002:a1c:2705:: with SMTP id n5mr6247161wmn.68.1575295913301;
 Mon, 02 Dec 2019 06:11:53 -0800 (PST)
X-Google-Smtp-Source: APXvYqxUFTPcBZ0EkZxphPHA1pYbf9j3gb/H0tC5Z5v1/0ItbNW5ig502Ags4u6rnzZhTJht0d3lNA==
X-Received: by 2002:a1c:2705:: with SMTP id n5mr6247123wmn.68.1575295912963;
 Mon, 02 Dec 2019 06:11:52 -0800 (PST)
Received: from ?IPv6:2a00:1098:3142:14:c5ae:b42a:dc72:b89c?
 ([2a00:1098:3142:14:c5ae:b42a:dc72:b89c])
 by smtp.gmail.com with ESMTPSA id z6sm27930688wrw.36.2019.12.02.06.11.51
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 02 Dec 2019 06:11:52 -0800 (PST)
Subject: Re: Side effect of SPI GPIO descriptor usage
To: Mark Brown <broonie@kernel.org>
References: <db6a1e17-49a3-e3ed-7713-56b7763713d6@raspberrypi.org>
 <20191202134344.GE1998@sirena.org.uk>
From: Phil Elwell <phil@raspberrypi.org>
Message-ID: <1e0b7cd6-cf9e-2b68-f875-8015c8ffc326@raspberrypi.org>
Date: Mon, 2 Dec 2019 14:11:51 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191202134344.GE1998@sirena.org.uk>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-12-02_02:2019-11-29,2019-12-02 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_061156_702312_C8D752CB 
X-CRM114-Status: GOOD (  24.01  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.211 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 linux-rpi-kernel@lists.infradead.org, linux-spi@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

Hi Mark,

On 02/12/2019 13:43, Mark Brown wrote:
> On Mon, Dec 02, 2019 at 12:10:11PM +0000, Phil Elwell wrote:
> 
>> A relatively recent patch [1] to the spi-bcm2835 driver modified it to use
>> GPIO descriptors for chip select handling. A side effect of this change is
>> to set the SPI_MODE_CS_HIGH flag for devices connected to the controller,
>> which seems strange since it happens for devices that require the usual
>> active-low chip select.
> 
> I take it you mean SPI_CS_HIGH rather than SPI_MODE_CS_HIGH?

Sorry, yes - SPI_CS_HIGH.

> I
> can't see anything in that change which sets the flag, can you be
> more specific?

bcm2835_spi_probe in spi-bcm2835.c sets ctrl->use_gpio_descriptors to 
true, and of_spi_parse_dt in spi.c includes the following:

/*
  * For descriptors associated with the device, polarity inversion is
  * handled in the gpiolib, so all gpio chip selects are "active high"
  * in the logical sense, the gpiolib will invert the line if need be.
  */
if ((ctlr->use_gpio_descriptors) && ctlr->cs_gpiods &&
     ctlr->cs_gpiods[spi->chip_select])
	spi->mode |= SPI_CS_HIGH;

>  The change no longer acts on SPI_CS_HIGH when
> requesting the GPIO but I can't see anything which *sets* the
> flag.  It does not visbily modify mode at all, nor did the
> original code.
> 
>> This change came to light when a user reported that the SPI-Py library
>> (a client of the spidev driver) wasn't working on 5.4, which was traced to
>> it overwriting the SPI mode flags when it was only trying to set the
>> CPHA and CPOL flags. This had the affect of inverting the chip select
>> line, with the obvious consequences. That corruption of the flags is clearly
>> an error, but what if the application and library were genuinely trying to
>> specify that the attached device required an active-high chip select? Would
>> it now require that they _clear_ the CS_HIGH flag?
> 
> I can't follow what you're saying here at all, sorry.  Can you
> please be more specific?  You appear to be saying that the issue
> is that the application modified the mode in some way and this
> was acted on apparently not in the expected way.

That's correct. Although the trampling of the mode flags was erroneous,
actually the resulting flags were correct - SPI_CS_HIGH was not set,
yet the chip select line was clearly being driven in an active-high
fashion.

> In general it's a bad idea to modify mode at runtime, and it's a
> bad idea to mix multiple means of configuring the polarity of the
> chip select (eg, mixing DT configuration with other means).

Applications using spidev to implement user-space drivers need to be 
able to set SPI mode, CS polarity etc. at run time. I agree that there
are many ways to set the polarity of a chip select, and it may be that
too many are being used with GPIO CSs declared by DT, but I don't think 
that completely explains the connection between use_gpio_descriptors
and the automatic setting of SPI_CS_HIGH.

Phil

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
