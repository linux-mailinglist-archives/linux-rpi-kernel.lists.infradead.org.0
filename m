Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30B05158C14
	for <lists+linux-rpi-kernel@lfdr.de>; Tue, 11 Feb 2020 10:50:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z8/CS4qP9zQ/xJII9FJBTBQQu4vAuBzngFTALEKIH4Y=; b=k2oz9rl+s+UJ8E
	28TaOa6cCravwTvgyEQcuawsZE+gh7VvbqG6nG/kF+zLZF62WO9TzieITAy+95QDq8AZFYolN3lgd
	CWVjWV38+QRs7ikVFt51oFhcT4Ds0bVyceiSqMcHi7OBtFKQnbvHUhBfOiU6SxLJJkQJShfCxE/s/
	o+/HIXpAxwshgzjpQEd4V0IXeHd6AbN8blRso/BNsfrtveWW8qi3E1Som6bVuPlyQU4VRmidoJD3P
	cRtMAhMlPmuzBbTxwAZNXsJBREnw4mQeAXu3zAyU99FNO/ALsD3ybM/eRqHrqqop6a+M8URS3UPea
	NB3FRAgZUBrotfQknR2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1SBP-0001sL-Ti; Tue, 11 Feb 2020 09:50:19 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1SBM-0001rw-W7
 for linux-rpi-kernel@lists.infradead.org; Tue, 11 Feb 2020 09:50:18 +0000
Received: from [192.168.178.45] ([109.104.50.251]) by mrelayeu.kundenserver.de
 (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MhUDj-1jetne2AAF-00eh1y; Tue, 11 Feb 2020 10:49:53 +0100
Subject: Re: [PATCH] usb: xhci: Enable LPM for VIA LABS VL805
To: Mathias Nyman <mathias.nyman@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Mathias Nyman <mathias.nyman@intel.com>
References: <20200120142422.3907-1-nsaenzjulienne@suse.de>
 <20200210185921.GA1058087@kroah.com>
 <1478f170-f0ec-96df-79cf-f7c44bebc290@linux.intel.com>
From: Stefan Wahren <stefan.wahren@i2se.com>
Message-ID: <19e1d141-2033-782f-e5a3-dcba6bdc0a8a@i2se.com>
Date: Tue, 11 Feb 2020 10:49:51 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1478f170-f0ec-96df-79cf-f7c44bebc290@linux.intel.com>
Content-Language: en-US
X-Provags-ID: V03:K1:vFNXZBCZU7VbCH3VCVaG6cEIdOYsjm5lxPWe5ExHl9RFzxLd0EH
 hiihmd+vybwokNlPF11GZzswTL6jZo8A2sIz1QCS/Nd21A0h3YRm9GiN+Loyv8FWDd3nn9c
 asppO8H75BuwYsyLH36u0DTC8ZFAUQND6NIyaHS4QfuvJsOOWkbu+jVUMGjsgo3ebnb0baH
 Hn6WPfvDYMsGic6akve9g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:6KhvdXrvbRE=:fuOzy7NeVahmzRZT33W+Mo
 HuPkJEzfBuFUkJYKA0oWpIUe7LU9EXijU7/UTHFiqhjzJgA73HGg7v2UW++fuvuBCnGItPfN2
 MGjKOCq+WWI7QwNvJn53F/F0MPKU1nMSoNhKIBkRZ8uMOVPYXbDh0LJ95KrrVeaVE6bxpQkEd
 hCuTk61Cc/5B4mWchwn8oxAkJ8RKgDV6g0e+XcZ+DBEnJDsHWEjRBF6Eca8s5i8XrN2M5B/6P
 aS6fPwlV6+gia2Kj4rX4yPuW9dmn04w4O9h1Vh3xVsc4e4oVTwdY53NciHNfuV5A9Mm9TyK2k
 T4Jic4ujObzvZXjNNls5lWaHwrFMyif89JSTZhvuwxRgoFxvYJRNZAFhtVvkBGihIyhKRKGlq
 /Wqv3UlLKN2lizViYYyGSwCXPrKnpDG/hWwVDhpl6cnQqM06AXjaoNCAaoew6ddTDSN8kXnOG
 Ss1N+UIx6LzTf4A5ruddyrFEgsey26z6i+J5MvVMwO33zChm/F8D/LSm8Y0eVbgRFj6tEJrOq
 iVE6GfW47OzkhuDI1a9G7LDI79YlCjpFGAy3wfUI3WOCv0EwoYEo6EjNr41cB8dVdZ4CxY1wr
 Lk+Y6xDKy8QOfgP7feoFEbt2sd8d+EqKIMC9IkHaXwHFMiRmhU7skY1a/5lFmsA5gkVogpHrv
 b6jKlBlSp7yomgmyQpv/v+gaX4WZEGjyU0ASFoHuGbDE5Gz2Ah8Grb1+ej1UONRKL7NLAWlTC
 H/YZNNMRUmVFOa+AJR1zWfWLvKg9bnaaNpP81tkZ+5ToiUN2iOlgo1sZ1g3m+KUwmo14PsB9M
 Ob+qPQKBJoP/A7yMsRkHHgQ3M4sRmQ8pWw3pSeaEtecT9XPWTZgpIoOf8iAewQh+DX3SGF7
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_015017_327761_CE837E6B 
X-CRM114-Status: GOOD (  16.15  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.135 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-usb@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

Hi Mathias,

On 11.02.20 10:34, Mathias Nyman wrote:
> On 10.2.2020 20.59, Greg Kroah-Hartman wrote:
>> On Mon, Jan 20, 2020 at 03:24:22PM +0100, Nicolas Saenz Julienne wrote:
>>> This PCIe controller chip is used on the Raspberry Pi 4 and multiple
>>> adapter cards. There is no publicly available documentation for the
>>> chip, yet both the downstream RPi4 kernel and the controller cards
>>> support/advertise LPM support.
>>>
>>> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
>>> ---
>>>  drivers/usb/host/xhci-pci.c | 3 +++
>>>  1 file changed, 3 insertions(+)
>>>
>>> diff --git a/drivers/usb/host/xhci-pci.c b/drivers/usb/host/xhci-pci.c
>>> index 4917c5b033fa..c1976e98992b 100644
>>> --- a/drivers/usb/host/xhci-pci.c
>>> +++ b/drivers/usb/host/xhci-pci.c
>>> @@ -241,6 +241,9 @@ static void xhci_pci_quirks(struct device *dev, struct xhci_hcd *xhci)
>>>  			pdev->device == 0x3432)
>>>  		xhci->quirks |= XHCI_BROKEN_STREAMS;
>>>  
>>> +	if (pdev->vendor == PCI_VENDOR_ID_VIA && pdev->device == 0x3483)
>>> +		xhci->quirks |= XHCI_LPM_SUPPORT;
>>> +
>>>  	if (pdev->vendor == PCI_VENDOR_ID_ASMEDIA &&
>>>  			pdev->device == 0x1042)
>>>  		xhci->quirks |= XHCI_BROKEN_STREAMS;
>> Mathias, is this in your review queue?
>>
> Ah yes, before adding link power management support for this controller we
> should check that it has sane (or any) exit latency values set in its
> HCSPARAMS3 capability register.
>
> Nicolas, if you have this controller could you show the capability registers:
>
> cat /sys/kernel/debug/usb/xhci/*/reg-cap
sorry for the naive question, but do you need the dump with or without
this patch applied?
>
> -Mathias
>
> _______________________________________________
> linux-rpi-kernel mailing list
> linux-rpi-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
