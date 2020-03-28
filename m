Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29D6C1965EA
	for <lists+linux-rpi-kernel@lfdr.de>; Sat, 28 Mar 2020 12:59:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jvwlDyTi3ivHM9Ofg8CfMKIajwJZYO6doQvWAyrm9Mk=; b=SLLF4BRNP1NhIf
	E2WQAKemoUBVQWojUzAv6rWD2GMQvIGC06tPy0yg7FABjF/F4xWHgOX2MP/OyF3M2TKSQsZjV3Bs9
	L840J88aEaIpF0WkQ50Qhl2oPTnlqF3AjS0+6yLRQUBZ9P9as6h64VzcgTy0Yblk1tnTriZbu2Fgb
	/vzOCtTRKOYLVXFIAcHisi+1qWYJVfiF4PkqaHl9BGuCE9WKvxpOMAltSmV02oCBNEPwsF7ygIVG0
	dAWvNjFW0aUuwu/Umx/WbzEOhIl4ugFcXTtkl1IZJKjz30XSITZF9C0Ih6ANhVwKJ1WHufjxwYKa6
	5XzD5ClXyu8a3uhf/TZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIA7c-0007cl-K6; Sat, 28 Mar 2020 11:59:28 +0000
Received: from mail.horus.com ([78.46.148.228])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIA7Y-0007cN-A7
 for linux-rpi-kernel@lists.infradead.org; Sat, 28 Mar 2020 11:59:26 +0000
Received: from [192.168.1.20] (193-83-225-155.adsl.highway.telekom.at
 [193.83.225.155])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client CN "E-Mail Matthias Reichl", Issuer "HiassofT CA 2014" (not verified))
 by mail.horus.com (Postfix) with ESMTPSA id A437C6412F;
 Sat, 28 Mar 2020 12:59:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=horus.com;
 s=20180324; t=1585396752;
 bh=TNHYVUFCR6clz/R+eD1bmzTMCLkZjLvojGJzR0otF6A=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=LJxuGkSfrfeuM1g8unxtbFykkMbPU9XznwoYF6eaRgEpwrkzpk+6VB8EviKao//AA
 dDeLw8xah6fMrQUXKGZW4Buus4t3DX12FL9BPVsooDDicdw4puJNxH9zXo6KlQ7pX3
 kbwHeTb6jJXF2oKMeGvcnd09q9dMbiupEQZsiMvY=
Received: by camel2.lan (Postfix, from userid 1000)
 id 859AD1C72A8; Sat, 28 Mar 2020 12:59:11 +0100 (CET)
Date: Sat, 28 Mar 2020 12:59:11 +0100
From: Matthias Reichl <hias@horus.com>
To: Matt Flax <flatmax@flatmax.org>
Subject: Re: [PATCH] ASoC: bcm2835-i2s: substream alignment now independent
 in hwparams
Message-ID: <20200328115911.GA4997@camel2.lan>
References: <20200324090823.20754-1-flatmax@flatmax.org>
 <d0684926-3f7a-0b97-a298-4088925442a4@flatmax.org>
 <1dcf128a-4ad3-0efa-81e4-b3ccc7caa8f1@flatmax.org>
 <20200327132324.GA4523@lenny.lan>
 <59b9ef4e-0067-593e-b4f9-49a5b271b432@flatmax.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <59b9ef4e-0067-593e-b4f9-49a5b271b432@flatmax.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200328_045924_806986_0B025C24 
X-CRM114-Status: GOOD (  33.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Sat, Mar 28, 2020 at 08:50:52AM +1100, Matt Flax wrote:
> =

> On 28/3/20 12:23 am, Matthias Reichl wrote:
> > On Fri, Mar 27, 2020 at 11:30:50AM +1100, Matt Flax wrote:
> > > On 27/3/20 10:56 am, Matt Flax wrote:
> > > > Should this patch be handled through the ALSA team the R. Pi team o=
r the
> > > > BCM team ?
> > > > =

> > > Resending again with reduced recipients.
> > > =

> > > =

> > > > thanks
> > > > =

> > > > Matt
> > > > =

> > > > On 24/3/20 8:08 pm, Matt Flax wrote:
> > > > > Substream sample alignment was being set in hwparams for both
> > > > > substreams at the same time. This became a problem when=A0=A0=A0 =
the Audio
> > > > > Injector isolated sound card needed to offset sample alignment
> > > > > for high sample=A0=A0=A0 rates. The latency difference between pl=
ayback
> > > > > and capture occurs because of the digital isolation chip
> > > > > propagation time, particularly when the codec is master and
> > > > > the DAC return is twice delayed.
> > > > > =

> > > > > This patch sets sample alignment registers=A0 based on the substr=
eam
> > > > > direction in hwparams. This gives the machine driver more control
> > > > > over sample alignment in the bcm2835 i2s driver.
> > > > > =

> > > > > Signed-off-by: Matt Flax <flatmax@flatmax.org>
> > > > > ---
> > > > >  =A0 sound/soc/bcm/bcm2835-i2s.c | 36 +++++++++++++++++++--------=
---------
> > > > >  =A0 1 file changed, 19 insertions(+), 17 deletions(-)
> > > > > =

> > > > > diff --git a/sound/soc/bcm/bcm2835-i2s.c b/sound/soc/bcm/bcm2835-=
i2s.c
> > > > > index e6a12e271b07..9db542699a13 100644
> > > > > --- a/sound/soc/bcm/bcm2835-i2s.c
> > > > > +++ b/sound/soc/bcm/bcm2835-i2s.c
> > > > > @@ -493,11 +493,6 @@ static int bcm2835_i2s_hw_params(struct
> > > > > snd_pcm_substream *substream,
> > > > >  =A0=A0=A0=A0=A0=A0=A0=A0=A0 return -EINVAL;
> > > > >  =A0=A0=A0=A0=A0 }
> > > > >  =A0 -=A0=A0=A0 bcm2835_i2s_calc_channel_pos(&rx_ch1_pos, &rx_ch2=
_pos,
> > > > > -=A0=A0=A0=A0=A0=A0=A0 rx_mask, slot_width, data_delay, odd_slot_=
offset);
> > > > > -=A0=A0=A0 bcm2835_i2s_calc_channel_pos(&tx_ch1_pos, &tx_ch2_pos,
> > > > > -=A0=A0=A0=A0=A0=A0=A0 tx_mask, slot_width, data_delay, odd_slot_=
offset);
> > > > > -
> > > > >  =A0=A0=A0=A0=A0 /*
> > > > >  =A0=A0=A0=A0=A0=A0 * Transmitting data immediately after frame s=
tart, eg
> > > > >  =A0=A0=A0=A0=A0=A0 * in left-justified or DSP mode A, only works=
 stable
> > > > > @@ -508,19 +503,26 @@ static int bcm2835_i2s_hw_params(struct
> > > > > snd_pcm_substream *substream,
> > > > >  =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 "Unstable slave config d=
etected, L/R may be swapped");
> > > > >  =A0 =A0=A0=A0=A0=A0 /*
> > > > > -=A0=A0=A0=A0 * Set format for both streams.
> > > > > -=A0=A0=A0=A0 * We cannot set another frame length
> > > > > -=A0=A0=A0=A0 * (and therefore word length) anyway,
> > > > > -=A0=A0=A0=A0 * so the format will be the same.
> > > > > +=A0=A0=A0=A0 * Set format on a per stream basis.
> > > > > +=A0=A0=A0=A0 * The alignment format can be different depending o=
n direction.
> > > > >  =A0=A0=A0=A0=A0=A0 */
> > > > > -=A0=A0=A0 regmap_write(dev->i2s_regmap, BCM2835_I2S_RXC_A_REG,
> > > > > -=A0=A0=A0=A0=A0=A0=A0=A0=A0 format
> > > > > -=A0=A0=A0=A0=A0=A0=A0 | BCM2835_I2S_CH1_POS(rx_ch1_pos)
> > > > > -=A0=A0=A0=A0=A0=A0=A0 | BCM2835_I2S_CH2_POS(rx_ch2_pos));
> > > > > -=A0=A0=A0 regmap_write(dev->i2s_regmap, BCM2835_I2S_TXC_A_REG,
> > > > > -=A0=A0=A0=A0=A0=A0=A0=A0=A0 format
> > > > > -=A0=A0=A0=A0=A0=A0=A0 | BCM2835_I2S_CH1_POS(tx_ch1_pos)
> > > > > -=A0=A0=A0=A0=A0=A0=A0 | BCM2835_I2S_CH2_POS(tx_ch2_pos));
> > > > > +=A0=A0=A0 if (substream->stream =3D=3D SNDRV_PCM_STREAM_CAPTURE)=
 {
> > > > > +=A0=A0=A0=A0=A0=A0=A0 bcm2835_i2s_calc_channel_pos(&rx_ch1_pos, =
&rx_ch2_pos,
> > > > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 rx_mask, slot_width, data_dela=
y, odd_slot_offset);
> > > > > +=A0=A0=A0=A0=A0=A0=A0 regmap_write(dev->i2s_regmap, BCM2835_I2S_=
RXC_A_REG,
> > > > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 format
> > > > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 | BCM2835_I2S_CH1_POS(rx_ch1_p=
os)
> > > > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 | BCM2835_I2S_CH2_POS(rx_ch2_p=
os));
> > > > > +=A0=A0=A0 }
> > > > > +
> > > > > +=A0=A0=A0 if (substream->stream =3D=3D SNDRV_PCM_STREAM_PLAYBACK=
) {
> > > > > +=A0=A0=A0=A0=A0=A0=A0 bcm2835_i2s_calc_channel_pos(&tx_ch1_pos, =
&tx_ch2_pos,
> > > > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 tx_mask, slot_width, data_dela=
y, odd_slot_offset);
> > > > > +=A0=A0=A0=A0=A0=A0=A0 regmap_write(dev->i2s_regmap, BCM2835_I2S_=
TXC_A_REG,
> > > > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 format
> > > > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 | BCM2835_I2S_CH1_POS(tx_ch1_p=
os)
> > > > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 | BCM2835_I2S_CH2_POS(tx_ch2_p=
os));
> > > > > +=A0=A0=A0 }
> > > > >  =A0 =A0=A0=A0=A0=A0 /* Setup the I2S mode */
> > This will break duplex operation if a second stream is opened when
> > a stream is already running as the channel position registers for
> > the second stream haven't been set up.
> > =

> > Note this code at the very beginning of hw_params:
> > =

> >          /*
> >           * If a stream is already enabled,
> >           * the registers are already set properly.
> >           */
> >          regmap_read(dev->i2s_regmap, BCM2835_I2S_CS_A_REG, &csreg);
> > =

> >          if (csreg & (BCM2835_I2S_TXON | BCM2835_I2S_RXON))
> >                  return 0;
> > =

> > The reason for this check is that we can't change bcm2835 I2S registers
> > after I2S RX/TX has been enabled - the reason why is explained in the
> > datasheet:
> > =

> > > The PCM interface runs asynchronously at the PCM_CLK rate and
> > > automatically transfers transmit and receive data across to the
> > > internal APB clock domain. The control registers are NOT
> > > synchronised and should be programmed before the device is enabled
> > > and should NOT be changed whilst the interface is running.
> > > =

> > > Only the EN, RXON and TXON bits of the PCMCS register are synchronised
> > > across the PCM - APB clock domain and are allowed to be changed whilst
> > > the interface is running.
> > Therefore we need to set up channel masks for both RX and TX before
> > any stream is started.
> =

> =

> I see what you mean. We can't change the registers once the system has
> started half duplex and then subsequently changed to full duplex.
> =

> There are cases however where playback and capture need to be set
> independently. In these cases the machine driver requires different format
> settings based on the stream direction.
> =

> What if we make a check for whether the system is already running and in
> that case return an error - forcing the user to use specify the same dai_=
fmt
> which is already in use before continuing ?

I'm not sure if I can follow you. dai_fmt, as the name implies, sets
the format of the DAI - you can't have different DAI formats for
playback/capture active at the same time.

This sounds a bit like you may be trying to work around some hardware
or codec configuration issue by creative use of the API.

> Would there be a better way to achieve different hwparams based on stream
> direction ?

If you really need different DAI formats for playback/capture it's
best to disallow full-duplex mode and set the DAI format based on
stream direction in the machine driver.

so long,

Hias

> =

> Matt
> =


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
