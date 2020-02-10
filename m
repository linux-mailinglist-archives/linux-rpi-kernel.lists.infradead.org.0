Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31CED15831F
	for <lists+linux-rpi-kernel@lfdr.de>; Mon, 10 Feb 2020 19:59:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zywX//dtL9qDebt3YVXxiTW6RNswGVqkkahJOLA4Uyc=; b=gLMXydFVIA0Pry
	EEPRryUGy0fod5U3VO8gg8+l/21xtQwSqdrWSiixB+nya8tC5z82J+6B3ELZDV4ycH5ovu8X5R95U
	YQWnoC6tsGDE6XruxViE+A4ykxMr7L6PObTZFGLna4BxLeb0kOQcswnvMt+VmIR1SmLDexucEq4BZ
	lbrLU3Ku/icWibO880EGp768jjNbNQuDqPoPHbMbuO64OyrORRI0UnPus62lXLlTpdPoYoCms1sAr
	BlmlYFHUSD7QI9O17b7jlTAzDdDe9ze1m8sWcitXfe87l/S9xMm6anzfVNOV8xbNYtUpxKczDxw5n
	Wtq8MIjbB8QHzZlRDesw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1EHG-0008Lh-ER; Mon, 10 Feb 2020 18:59:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1EHC-0008KK-QX
 for linux-rpi-kernel@lists.infradead.org; Mon, 10 Feb 2020 18:59:24 +0000
Received: from localhost (unknown [104.132.1.111])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id ED63E2085B;
 Mon, 10 Feb 2020 18:59:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581361162;
 bh=dV/9pypPR+5LSujojchvrgFxxYVcyddDIPtQmTd6EPY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=q9QOfyJW/DgVkDJQKfWyyLP9n5gkpS18hB2rZtUPWUvVhuHJZEqkHWEyFkKnFcYcN
 14BhDANDwaxllNUjwFiHBl3y0OgKngSv82tCYLGXoxEiyLS4/zUJS6eVnPPj7XjUHS
 3wDbtqT2pn0Sc1NNUaZoMg+OtGhJ1YvwDJjuZzUU=
Date: Mon, 10 Feb 2020 10:59:21 -0800
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Mathias Nyman <mathias.nyman@intel.com>
Subject: Re: [PATCH] usb: xhci: Enable LPM for VIA LABS VL805
Message-ID: <20200210185921.GA1058087@kroah.com>
References: <20200120142422.3907-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200120142422.3907-1-nsaenzjulienne@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_105922_879524_9EEF0479 
X-CRM114-Status: GOOD (  13.34  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-usb@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

On Mon, Jan 20, 2020 at 03:24:22PM +0100, Nicolas Saenz Julienne wrote:
> This PCIe controller chip is used on the Raspberry Pi 4 and multiple
> adapter cards. There is no publicly available documentation for the
> chip, yet both the downstream RPi4 kernel and the controller cards
> support/advertise LPM support.
> 
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> ---
>  drivers/usb/host/xhci-pci.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/usb/host/xhci-pci.c b/drivers/usb/host/xhci-pci.c
> index 4917c5b033fa..c1976e98992b 100644
> --- a/drivers/usb/host/xhci-pci.c
> +++ b/drivers/usb/host/xhci-pci.c
> @@ -241,6 +241,9 @@ static void xhci_pci_quirks(struct device *dev, struct xhci_hcd *xhci)
>  			pdev->device == 0x3432)
>  		xhci->quirks |= XHCI_BROKEN_STREAMS;
>  
> +	if (pdev->vendor == PCI_VENDOR_ID_VIA && pdev->device == 0x3483)
> +		xhci->quirks |= XHCI_LPM_SUPPORT;
> +
>  	if (pdev->vendor == PCI_VENDOR_ID_ASMEDIA &&
>  			pdev->device == 0x1042)
>  		xhci->quirks |= XHCI_BROKEN_STREAMS;

Mathias, is this in your review queue?

thanks,

greg k-h

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
