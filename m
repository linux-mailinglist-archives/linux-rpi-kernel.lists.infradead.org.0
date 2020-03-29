Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28C6D196CBC
	for <lists+linux-rpi-kernel@lfdr.de>; Sun, 29 Mar 2020 13:01:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sbqVL+M5BJ4dQ+5lpXjqj+j/XfCg1rpqRkp+j93Ca/g=; b=NFE4YkLLF7Y/5P
	P9IK6qLLZX/H2UFvIuZOMCcRxC5Oeb6Jtpnz7dYHVJvfzc8ZVg+JIetQ30psSATCg7UGtlMPTGWJa
	yp1+BMA6pkKggQav0z/lUzY3Oizfw6YI83Wwx2SVkluNxfvwiI91aLZbeNR9gw/SfsV2pdnY69JBO
	2rRwqdsOuGyPC1+r1415br++2SX9iCeU8mrmwsvlX95yZxBWPM2I79ZT9M8k5oGvU9tS1dCA8VQyG
	D6qv2irqzAqJFpBj9UC8zS35jHvZCpFGjea+NBxpHF/kGWnS0T/KHejjrcYqR2LyMBDLK2D/6vY3h
	fGimHPcjPa8QKy+3cbgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIVh2-0000FN-Ez; Sun, 29 Mar 2020 11:01:28 +0000
Received: from mail.horus.com ([78.46.148.228])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIVgx-00009b-SD
 for linux-rpi-kernel@lists.infradead.org; Sun, 29 Mar 2020 11:01:26 +0000
Received: from lenny.lan (193-83-225-155.adsl.highway.telekom.at
 [193.83.225.155])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client CN "E-Mail Matthias Reichl Lenny",
 Issuer "HiassofT CA 2014" (verified OK))
 by mail.horus.com (Postfix) with ESMTPSA id C4490640AE;
 Sun, 29 Mar 2020 13:01:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=horus.com;
 s=20180324; t=1585479678;
 bh=yJ7jPR4BbCe9ThxwAqmkIslsQRfXedwL4VSPy5I9a2I=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=aMzWC7T1kCVoiLe1pP7ThZ6yVDTAwhotHaTcvsZONN4QDdTpuIUNw563SSbg12y9W
 Rgtm19dAA7f8CPSHO+/mSXb3elIN38MUpVd74NoySNAjpsKKVdXScEIOUz/uGiHWYK
 TC0Uq0xGuSEJ5eNoHsLbn6M9lGia1bTpZvFz855A=
Received: by lenny.lan (Postfix, from userid 1000)
 id 03E312036DB; Sun, 29 Mar 2020 13:01:17 +0200 (CEST)
Date: Sun, 29 Mar 2020 13:01:17 +0200
From: Matthias Reichl <hias@horus.com>
To: Matt Flax <flatmax@flatmax.org>
Subject: Re: [PATCH] ASoC: bcm2835-i2s: substream alignment now independent
 in hwparams
Message-ID: <20200329110117.GA24395@lenny.lan>
References: <20200324090823.20754-1-flatmax@flatmax.org>
 <d0684926-3f7a-0b97-a298-4088925442a4@flatmax.org>
 <1dcf128a-4ad3-0efa-81e4-b3ccc7caa8f1@flatmax.org>
 <20200327132324.GA4523@lenny.lan>
 <59b9ef4e-0067-593e-b4f9-49a5b271b432@flatmax.org>
 <20200328115911.GA4997@camel2.lan>
 <bc11b6e2-36bb-d021-f888-606d14eccb51@flatmax.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bc11b6e2-36bb-d021-f888-606d14eccb51@flatmax.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200329_040124_367298_EE46B844 
X-CRM114-Status: GOOD (  40.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

On Sun, Mar 29, 2020 at 10:47:47AM +1100, Matt Flax wrote:
> =

> On 28/3/20 10:59 pm, Matthias Reichl wrote:
> > On Sat, Mar 28, 2020 at 08:50:52AM +1100, Matt Flax wrote:
> > > On 28/3/20 12:23 am, Matthias Reichl wrote:
> > > > On Fri, Mar 27, 2020 at 11:30:50AM +1100, Matt Flax wrote:
> > > > > On 27/3/20 10:56 am, Matt Flax wrote:
> > > > > > Should this patch be handled through the ALSA team the R. Pi te=
am or the
> > > > > > BCM team ?
> > > > > > =

> > > > > Resending again with reduced recipients.
> > > > > =

> > > > > =

> > > > > > thanks
> > > > > > =

> > > > > > Matt
> > > > > > =

> > > > > > On 24/3/20 8:08 pm, Matt Flax wrote:
> > > > > > > Substream sample alignment was being set in hwparams for both
> > > > > > > substreams at the same time. This became a problem when=A0=A0=
=A0 the Audio
> > > > > > > Injector isolated sound card needed to offset sample alignment
> > > > > > > for high sample=A0=A0=A0 rates. The latency difference betwee=
n playback
> > > > > > > and capture occurs because of the digital isolation chip
> > > > > > > propagation time, particularly when the codec is master and
> > > > > > > the DAC return is twice delayed.
> > > > > > > =

> > > > > > > This patch sets sample alignment registers=A0 based on the su=
bstream
> > > > > > > direction in hwparams. This gives the machine driver more con=
trol
> > > > > > > over sample alignment in the bcm2835 i2s driver.
> > > > > > > =

> > > > > > > Signed-off-by: Matt Flax <flatmax@flatmax.org>
> > > > > > > ---
> > > > > > >   =A0 sound/soc/bcm/bcm2835-i2s.c | 36 +++++++++++++++++++---=
--------------
> > > > > > >   =A0 1 file changed, 19 insertions(+), 17 deletions(-)
> > > > > > > =

> > > > > > > diff --git a/sound/soc/bcm/bcm2835-i2s.c b/sound/soc/bcm/bcm2=
835-i2s.c
> > > > > > > index e6a12e271b07..9db542699a13 100644
> > > > > > > --- a/sound/soc/bcm/bcm2835-i2s.c
> > > > > > > +++ b/sound/soc/bcm/bcm2835-i2s.c
> > > > > > > @@ -493,11 +493,6 @@ static int bcm2835_i2s_hw_params(struct
> > > > > > > snd_pcm_substream *substream,
> > > > > > >   =A0=A0=A0=A0=A0=A0=A0=A0=A0 return -EINVAL;
> > > > > > >   =A0=A0=A0=A0=A0 }
> > > > > > >   =A0 -=A0=A0=A0 bcm2835_i2s_calc_channel_pos(&rx_ch1_pos, &r=
x_ch2_pos,
> > > > > > > -=A0=A0=A0=A0=A0=A0=A0 rx_mask, slot_width, data_delay, odd_s=
lot_offset);
> > > > > > > -=A0=A0=A0 bcm2835_i2s_calc_channel_pos(&tx_ch1_pos, &tx_ch2_=
pos,
> > > > > > > -=A0=A0=A0=A0=A0=A0=A0 tx_mask, slot_width, data_delay, odd_s=
lot_offset);
> > > > > > > -
> > > > > > >   =A0=A0=A0=A0=A0 /*
> > > > > > >   =A0=A0=A0=A0=A0=A0 * Transmitting data immediately after fr=
ame start, eg
> > > > > > >   =A0=A0=A0=A0=A0=A0 * in left-justified or DSP mode A, only =
works stable
> > > > > > > @@ -508,19 +503,26 @@ static int bcm2835_i2s_hw_params(struct
> > > > > > > snd_pcm_substream *substream,
> > > > > > >   =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 "Unstable slave con=
fig detected, L/R may be swapped");
> > > > > > >   =A0 =A0=A0=A0=A0=A0 /*
> > > > > > > -=A0=A0=A0=A0 * Set format for both streams.
> > > > > > > -=A0=A0=A0=A0 * We cannot set another frame length
> > > > > > > -=A0=A0=A0=A0 * (and therefore word length) anyway,
> > > > > > > -=A0=A0=A0=A0 * so the format will be the same.
> > > > > > > +=A0=A0=A0=A0 * Set format on a per stream basis.
> > > > > > > +=A0=A0=A0=A0 * The alignment format can be different dependi=
ng on direction.
> > > > > > >   =A0=A0=A0=A0=A0=A0 */
> > > > > > > -=A0=A0=A0 regmap_write(dev->i2s_regmap, BCM2835_I2S_RXC_A_RE=
G,
> > > > > > > -=A0=A0=A0=A0=A0=A0=A0=A0=A0 format
> > > > > > > -=A0=A0=A0=A0=A0=A0=A0 | BCM2835_I2S_CH1_POS(rx_ch1_pos)
> > > > > > > -=A0=A0=A0=A0=A0=A0=A0 | BCM2835_I2S_CH2_POS(rx_ch2_pos));
> > > > > > > -=A0=A0=A0 regmap_write(dev->i2s_regmap, BCM2835_I2S_TXC_A_RE=
G,
> > > > > > > -=A0=A0=A0=A0=A0=A0=A0=A0=A0 format
> > > > > > > -=A0=A0=A0=A0=A0=A0=A0 | BCM2835_I2S_CH1_POS(tx_ch1_pos)
> > > > > > > -=A0=A0=A0=A0=A0=A0=A0 | BCM2835_I2S_CH2_POS(tx_ch2_pos));
> > > > > > > +=A0=A0=A0 if (substream->stream =3D=3D SNDRV_PCM_STREAM_CAPT=
URE) {
> > > > > > > +=A0=A0=A0=A0=A0=A0=A0 bcm2835_i2s_calc_channel_pos(&rx_ch1_p=
os, &rx_ch2_pos,
> > > > > > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 rx_mask, slot_width, data_=
delay, odd_slot_offset);
> > > > > > > +=A0=A0=A0=A0=A0=A0=A0 regmap_write(dev->i2s_regmap, BCM2835_=
I2S_RXC_A_REG,
> > > > > > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 format
> > > > > > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 | BCM2835_I2S_CH1_POS(rx_c=
h1_pos)
> > > > > > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 | BCM2835_I2S_CH2_POS(rx_c=
h2_pos));
> > > > > > > +=A0=A0=A0 }
> > > > > > > +
> > > > > > > +=A0=A0=A0 if (substream->stream =3D=3D SNDRV_PCM_STREAM_PLAY=
BACK) {
> > > > > > > +=A0=A0=A0=A0=A0=A0=A0 bcm2835_i2s_calc_channel_pos(&tx_ch1_p=
os, &tx_ch2_pos,
> > > > > > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 tx_mask, slot_width, data_=
delay, odd_slot_offset);
> > > > > > > +=A0=A0=A0=A0=A0=A0=A0 regmap_write(dev->i2s_regmap, BCM2835_=
I2S_TXC_A_REG,
> > > > > > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 format
> > > > > > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 | BCM2835_I2S_CH1_POS(tx_c=
h1_pos)
> > > > > > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 | BCM2835_I2S_CH2_POS(tx_c=
h2_pos));
> > > > > > > +=A0=A0=A0 }
> > > > > > >   =A0 =A0=A0=A0=A0=A0 /* Setup the I2S mode */
> > > > This will break duplex operation if a second stream is opened when
> > > > a stream is already running as the channel position registers for
> > > > the second stream haven't been set up.
> > > > =

> > > > Note this code at the very beginning of hw_params:
> > > > =

> > > >           /*
> > > >            * If a stream is already enabled,
> > > >            * the registers are already set properly.
> > > >            */
> > > >           regmap_read(dev->i2s_regmap, BCM2835_I2S_CS_A_REG, &csreg=
);
> > > > =

> > > >           if (csreg & (BCM2835_I2S_TXON | BCM2835_I2S_RXON))
> > > >                   return 0;
> > > > =

> > > > The reason for this check is that we can't change bcm2835 I2S regis=
ters
> > > > after I2S RX/TX has been enabled - the reason why is explained in t=
he
> > > > datasheet:
> > > > =

> > > > > The PCM interface runs asynchronously at the PCM_CLK rate and
> > > > > automatically transfers transmit and receive data across to the
> > > > > internal APB clock domain. The control registers are NOT
> > > > > synchronised and should be programmed before the device is enabled
> > > > > and should NOT be changed whilst the interface is running.
> > > > > =

> > > > > Only the EN, RXON and TXON bits of the PCMCS register are synchro=
nised
> > > > > across the PCM - APB clock domain and are allowed to be changed w=
hilst
> > > > > the interface is running.
> > > > Therefore we need to set up channel masks for both RX and TX before
> > > > any stream is started.
> > > =

> > > I see what you mean. We can't change the registers once the system has
> > > started half duplex and then subsequently changed to full duplex.
> > > =

> > > There are cases however where playback and capture need to be set
> > > independently. In these cases the machine driver requires different f=
ormat
> > > settings based on the stream direction.
> > > =

> > > What if we make a check for whether the system is already running and=
 in
> > > that case return an error - forcing the user to use specify the same =
dai_fmt
> > > which is already in use before continuing ?
> > I'm not sure if I can follow you. dai_fmt, as the name implies, sets
> > the format of the DAI - you can't have different DAI formats for
> > playback/capture active at the same time.
> > =

> > This sounds a bit like you may be trying to work around some hardware
> > or codec configuration issue by creative use of the API.
> =

> =

> It is the nature of digital isolation chips. They have very significant
> latencies. If the codec is master, then the round trip latency which effe=
cts
> the DAC's I2S line is even more significant.

This is something you need to fix at the hardware level, you have to
make sure the signals adhere to the I2S timing requirements. Trying
to work around that with software is the wrong approach.

You probably need to use faster optocouplers or whatever you are using
for isolation.

> > > Would there be a better way to achieve different hwparams based on st=
ream
> > > direction ?
> > If you really need different DAI formats for playback/capture it's
> > best to disallow full-duplex mode and set the DAI format based on
> > stream direction in the machine driver.
> =

> =

> If we were to disallow full duplex mode in the machine driver, how would =
it
> look in the machine driver ? Would the user still be able to do full dupl=
ex
> capture/playback ?

No.

so long,

Hias

> =

> We could take that approach if the user could still perform full duplex
> operations. However it doesn't represent the hardware. The hardware is in
> full duplex mode and requires different word offsets for ADC and DAC I2S
> lines.
> =

> It seems that the ALSA core system can't handle this because the set_fmt
> functions don't specify the stream direction. This happens both for the C=
PU
> and the Codec drivers.
> =

> =

> Matt
> =


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
