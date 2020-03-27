Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71B651957EF
	for <lists+linux-rpi-kernel@lfdr.de>; Fri, 27 Mar 2020 14:23:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iP8q0F8vRHOuJYNisnINb7eBFiaz90GqGkflU4y2KhA=; b=MkUcxWpWcc939H
	DViovj8VQyZqee8skhfjkn932KgJTT/9IlM0ryu9upmkBie6GB27DOHFtZLbIRudiMt7r4JL9SmTQ
	cPL0uhw7AubLXbgroLD/8DXaaN9rmXHha73hPvwosjnDDm/OLZJ4iUSYaAuM2b5w5jdrtaxs67TMz
	I1OwmVZABeelPgO2I1U6O/n4a68zFvoOGMEVW2I4QxVvI6ihMm09T4fbopOR6lj2gEe2EFENw6W46
	fdrV5neonTKJ8ObfALFoZ5aWEi8xAeMC+UeR+KmEUX58MZsLD3R4EbpoeRKx/a9LCz7RTxtejuLeu
	s0HXv85bsE2DzuSy7PnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHoxW-0006fo-Ib; Fri, 27 Mar 2020 13:23:38 +0000
Received: from mail.horus.com ([78.46.148.228])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHoxO-0006Lv-8A
 for linux-rpi-kernel@lists.infradead.org; Fri, 27 Mar 2020 13:23:32 +0000
Received: from lenny.lan (193-83-225-155.adsl.highway.telekom.at
 [193.83.225.155])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client CN "E-Mail Matthias Reichl Lenny",
 Issuer "HiassofT CA 2014" (verified OK))
 by mail.horus.com (Postfix) with ESMTPSA id 708AD640B1;
 Fri, 27 Mar 2020 14:23:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=horus.com;
 s=20180324; t=1585315405;
 bh=/n6T9fLywOrR10zOU4gzpxZ7YUS9qiXTWrX/0NVhq80=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=NaSOKIEm3VDtHUnmsHZEKmLBraRQSAMNMB/qnGzbDtl17Gw3WjIocrqWt6nCQKHb6
 snE2BrE+j8r4VHiIB3RyeJPrHlhMt3Tr6brEg+8syrJfunctEADCQPSUjd9G+uuA3v
 dlcIxwPJqltsWojnYHJIQN4PbutlEI9f05sMboBs=
Received: by lenny.lan (Postfix, from userid 1000)
 id EAC72203311; Fri, 27 Mar 2020 14:23:24 +0100 (CET)
Date: Fri, 27 Mar 2020 14:23:24 +0100
From: Matthias Reichl <hias@horus.com>
To: Matt Flax <flatmax@flatmax.org>
Subject: Re: [PATCH] ASoC: bcm2835-i2s: substream alignment now independent
 in hwparams
Message-ID: <20200327132324.GA4523@lenny.lan>
References: <20200324090823.20754-1-flatmax@flatmax.org>
 <d0684926-3f7a-0b97-a298-4088925442a4@flatmax.org>
 <1dcf128a-4ad3-0efa-81e4-b3ccc7caa8f1@flatmax.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1dcf128a-4ad3-0efa-81e4-b3ccc7caa8f1@flatmax.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_062330_797313_AEE816A3 
X-CRM114-Status: GOOD (  25.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: alsa-devel@alsa-project.org, Mark Brown <broonie@kernel.org>,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 27, 2020 at 11:30:50AM +1100, Matt Flax wrote:
> =

> On 27/3/20 10:56 am, Matt Flax wrote:
> > =

> > Should this patch be handled through the ALSA team the R. Pi team or the
> > BCM team ?
> > =

> =

> Resending again with reduced recipients.
> =

> =

> > =

> > thanks
> > =

> > Matt
> > =

> > On 24/3/20 8:08 pm, Matt Flax wrote:
> > > Substream sample alignment was being set in hwparams for both
> > > substreams at the same time. This became a problem when=A0=A0=A0 the =
Audio
> > > Injector isolated sound card needed to offset sample alignment
> > > for high sample=A0=A0=A0 rates. The latency difference between playba=
ck
> > > and capture occurs because of the digital isolation chip
> > > propagation time, particularly when the codec is master and
> > > the DAC return is twice delayed.
> > > =

> > > This patch sets sample alignment registers=A0 based on the substream
> > > direction in hwparams. This gives the machine driver more control
> > > over sample alignment in the bcm2835 i2s driver.
> > > =

> > > Signed-off-by: Matt Flax <flatmax@flatmax.org>
> > > ---
> > > =A0 sound/soc/bcm/bcm2835-i2s.c | 36 +++++++++++++++++++-------------=
----
> > > =A0 1 file changed, 19 insertions(+), 17 deletions(-)
> > > =

> > > diff --git a/sound/soc/bcm/bcm2835-i2s.c b/sound/soc/bcm/bcm2835-i2s.c
> > > index e6a12e271b07..9db542699a13 100644
> > > --- a/sound/soc/bcm/bcm2835-i2s.c
> > > +++ b/sound/soc/bcm/bcm2835-i2s.c
> > > @@ -493,11 +493,6 @@ static int bcm2835_i2s_hw_params(struct
> > > snd_pcm_substream *substream,
> > > =A0=A0=A0=A0=A0=A0=A0=A0=A0 return -EINVAL;
> > > =A0=A0=A0=A0=A0 }
> > > =A0 -=A0=A0=A0 bcm2835_i2s_calc_channel_pos(&rx_ch1_pos, &rx_ch2_pos,
> > > -=A0=A0=A0=A0=A0=A0=A0 rx_mask, slot_width, data_delay, odd_slot_offs=
et);
> > > -=A0=A0=A0 bcm2835_i2s_calc_channel_pos(&tx_ch1_pos, &tx_ch2_pos,
> > > -=A0=A0=A0=A0=A0=A0=A0 tx_mask, slot_width, data_delay, odd_slot_offs=
et);
> > > -
> > > =A0=A0=A0=A0=A0 /*
> > > =A0=A0=A0=A0=A0=A0 * Transmitting data immediately after frame start,=
 eg
> > > =A0=A0=A0=A0=A0=A0 * in left-justified or DSP mode A, only works stab=
le
> > > @@ -508,19 +503,26 @@ static int bcm2835_i2s_hw_params(struct
> > > snd_pcm_substream *substream,
> > > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 "Unstable slave config detect=
ed, L/R may be swapped");
> > > =A0 =A0=A0=A0=A0=A0 /*
> > > -=A0=A0=A0=A0 * Set format for both streams.
> > > -=A0=A0=A0=A0 * We cannot set another frame length
> > > -=A0=A0=A0=A0 * (and therefore word length) anyway,
> > > -=A0=A0=A0=A0 * so the format will be the same.
> > > +=A0=A0=A0=A0 * Set format on a per stream basis.
> > > +=A0=A0=A0=A0 * The alignment format can be different depending on di=
rection.
> > > =A0=A0=A0=A0=A0=A0 */
> > > -=A0=A0=A0 regmap_write(dev->i2s_regmap, BCM2835_I2S_RXC_A_REG,
> > > -=A0=A0=A0=A0=A0=A0=A0=A0=A0 format
> > > -=A0=A0=A0=A0=A0=A0=A0 | BCM2835_I2S_CH1_POS(rx_ch1_pos)
> > > -=A0=A0=A0=A0=A0=A0=A0 | BCM2835_I2S_CH2_POS(rx_ch2_pos));
> > > -=A0=A0=A0 regmap_write(dev->i2s_regmap, BCM2835_I2S_TXC_A_REG,
> > > -=A0=A0=A0=A0=A0=A0=A0=A0=A0 format
> > > -=A0=A0=A0=A0=A0=A0=A0 | BCM2835_I2S_CH1_POS(tx_ch1_pos)
> > > -=A0=A0=A0=A0=A0=A0=A0 | BCM2835_I2S_CH2_POS(tx_ch2_pos));
> > > +=A0=A0=A0 if (substream->stream =3D=3D SNDRV_PCM_STREAM_CAPTURE) {
> > > +=A0=A0=A0=A0=A0=A0=A0 bcm2835_i2s_calc_channel_pos(&rx_ch1_pos, &rx_=
ch2_pos,
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 rx_mask, slot_width, data_delay, o=
dd_slot_offset);
> > > +=A0=A0=A0=A0=A0=A0=A0 regmap_write(dev->i2s_regmap, BCM2835_I2S_RXC_=
A_REG,
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 format
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 | BCM2835_I2S_CH1_POS(rx_ch1_pos)
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 | BCM2835_I2S_CH2_POS(rx_ch2_pos));
> > > +=A0=A0=A0 }
> > > +
> > > +=A0=A0=A0 if (substream->stream =3D=3D SNDRV_PCM_STREAM_PLAYBACK) {
> > > +=A0=A0=A0=A0=A0=A0=A0 bcm2835_i2s_calc_channel_pos(&tx_ch1_pos, &tx_=
ch2_pos,
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 tx_mask, slot_width, data_delay, o=
dd_slot_offset);
> > > +=A0=A0=A0=A0=A0=A0=A0 regmap_write(dev->i2s_regmap, BCM2835_I2S_TXC_=
A_REG,
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 format
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 | BCM2835_I2S_CH1_POS(tx_ch1_pos)
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 | BCM2835_I2S_CH2_POS(tx_ch2_pos));
> > > +=A0=A0=A0 }
> > > =A0 =A0=A0=A0=A0=A0 /* Setup the I2S mode */

This will break duplex operation if a second stream is opened when
a stream is already running as the channel position registers for
the second stream haven't been set up.

Note this code at the very beginning of hw_params:

        /*
         * If a stream is already enabled,
         * the registers are already set properly.
         */
        regmap_read(dev->i2s_regmap, BCM2835_I2S_CS_A_REG, &csreg);

        if (csreg & (BCM2835_I2S_TXON | BCM2835_I2S_RXON))
                return 0;

The reason for this check is that we can't change bcm2835 I2S registers
after I2S RX/TX has been enabled - the reason why is explained in the
datasheet:

> The PCM interface runs asynchronously at the PCM_CLK rate and
> automatically transfers transmit and receive data across to the
> internal APB clock domain. The control registers are NOT
> synchronised and should be programmed before the device is enabled
> and should NOT be changed whilst the interface is running.
> =

> Only the EN, RXON and TXON bits of the PCMCS register are synchronised
> across the PCM - APB clock domain and are allowed to be changed whilst
> the interface is running.

Therefore we need to set up channel masks for both RX and TX before
any stream is started.

so long,

Hias

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
