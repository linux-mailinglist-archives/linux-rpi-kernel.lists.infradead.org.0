Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 539C15A25E
	for <lists+linux-rpi-kernel@lfdr.de>; Fri, 28 Jun 2019 19:30:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GXUX6bYB22Uf9kDpOPPmSZMG4vrPSXoSQpNxvWyYF5o=; b=KZL/VI7fglTg4b
	w9tR3voR2TpHjqVw3ujOhnjjVYvLClt1swhdTXA+nnfOtEbZEMm16qH+bJBVWG9BIWNgxaUO/7oeP
	/JQoxB3f02yGZXIuhPBgpyIQ2JR1Zg1RVZHYTlL5YUzEZXF7ID39rCvXo+psR3BBaiXaTeP8RMDpD
	THvce8Hw4mhg9hxpOKDKg08TPP8zw3blxKw4bGNKS0d+rGKcvrxQXNm3++c9XdHr1La7yQG8Z7aI0
	NiTul++x6hIbUNnR5pVs1MyTArGapa42cNQGUm0fUp1XWQQJQ4ZgS3KcN4hKplu1kHqwc3Us8T/hT
	em63pWxDgaDfpW0xpn6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hguhd-0000Uh-9A; Fri, 28 Jun 2019 17:30:25 +0000
Received: from mx07-00252a01.pphosted.com ([62.209.51.214])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgugs-0007Ct-Gl
 for linux-rpi-kernel@lists.infradead.org; Fri, 28 Jun 2019 17:29:43 +0000
Received: from pps.filterd (m0102628.ppops.net [127.0.0.1])
 by mx07-00252a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x5SHOZON013472
 for <linux-rpi-kernel@lists.infradead.org>; Fri, 28 Jun 2019 18:29:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=raspberrypi.org;
 h=mime-version :
 references : in-reply-to : from : date : message-id : subject : to : cc :
 content-type; s=pp; bh=5A/VfVkhE6qIl4eRT93KR8wFOs8zFJlN2alhRZdo+JE=;
 b=K66qXHJv3U5W5L6KNhnfDwQ6hE50rPkHLiVIAPmh+44+6hoOe7GNVZpAIKXsslP5gYXb
 9U/BVeRJr5/2j3AShA+4KRaTdGSDooTWNntDeeFeaND/wP3NSdxVprOjM3mNWvmjZ7+a
 jjDOOEN+Af0uqsTR9ryXo3+d8YNLfvyWXpresb0kpoGpLKuBeGWgTvMAoJ8O/x/DCE5d
 on2CORV6bUG+MYxVwqXPyRCi9+z5AVNKXwk501lUlDQPzoIdXbI5h7CCTlT2Fla2e99O
 9pQFRo2YkEPFv7W/Xme3x63IHtw9djp55CWBTqbnTJZY2N7pJeGNFRTk8EBXLa2awhG1 RA== 
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com
 [209.85.210.198])
 by mx07-00252a01.pphosted.com with ESMTP id 2t9ehuu887-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=OK)
 for <linux-rpi-kernel@lists.infradead.org>; Fri, 28 Jun 2019 18:29:33 +0100
Received: by mail-pf1-f198.google.com with SMTP id i26so4285168pfo.22
 for <linux-rpi-kernel@lists.infradead.org>;
 Fri, 28 Jun 2019 10:29:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=raspberrypi.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5A/VfVkhE6qIl4eRT93KR8wFOs8zFJlN2alhRZdo+JE=;
 b=OAPk9+ubDKI83VdLk4VlY+96T+ZKRWRM9fJp8kiYYKYPD1kLTqhg1ANoN/KfI4JQjB
 8xYwfaEKe3Q7OHiyMSOqoPxLUS7U03U63azVsOca+Jtm/2Bz7bFYtbOs6SnedtMPqo6Y
 5Kei6D7KyFoih0SD1QhoHCJ9xjNNzKEodSjYRUo6t13JmPHnMkucywwEUtNOP8l99Zyr
 /v/Byh4aQCywCz98jbnEq5WKmJ9JZeGU0AB0uew6MsfHpF4/foYKk387R76C2xKwmyL7
 vveC11L9PUr1PZMncypBh1KesZqvqbyh2oXHbKhYxgT/SK/EFkvfO5ZI4lQ2v8sClhzc
 /6IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5A/VfVkhE6qIl4eRT93KR8wFOs8zFJlN2alhRZdo+JE=;
 b=nz5gb2FVie/aROPh9xBY/TJXzB8rtfPoMi6UPmvQire9YVvGQxHDUYiNr9SDVO4ybo
 Yo/jpO/2L00MUD7dfj3WPgp8b5koxGptNGb7iJA2A+3fYyvVxCzXv+0jMhZdQh2kaZ9N
 xFNLM2zy5jCnHDg9CxJT1hpHmtdy2q6Xsx2RkqiB3H8yiRx36j6k/pfqOcwSCRIl10w2
 gwd+PDY7iBLrNg7KAWIW/zzS/QvTUZlRz2wNSPDj5wnNkOOLXNCSEjlD6toW5+J1Rx11
 scMMMXHJKl0z8/syTJKjJNVOIu7CAtB+Gbhnfrs5yWUmxgtO858zS2smTUxISWv51Qx2
 aSng==
X-Gm-Message-State: APjAAAWjovvPtN4G0NtspMv+nADEZartunMzthO0HEyx0Yt3+GUABC90
 iUtcbzb57349KwFHAkC7RqCmhdll2oI94d531/IjCOOAfbtF4vTFwH7znnceDaD6+6p+XXT6xAW
 +fZav5yfydF06AP4DFyfLcT9pCpCidgf8LF6f6kRAvhWUX2HXzA==
X-Received: by 2002:a63:360d:: with SMTP id d13mr1127896pga.80.1561742971048; 
 Fri, 28 Jun 2019 10:29:31 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzkq0jbIc2lsZtHMp766UcnpA3ZUkcXoAFg0hqnzHMO6+WgWh5ZaubUuoeMnqSJwjf1QkjZBS6u1Qd9o+PjjOY=
X-Received: by 2002:a63:360d:: with SMTP id d13mr1127873pga.80.1561742970716; 
 Fri, 28 Jun 2019 10:29:30 -0700 (PDT)
MIME-Version: 1.0
References: <1561661788-22744-1-git-send-email-wahrenst@gmx.net>
 <f4492041-2587-eedb-8ae5-ae610e90fde2@xs4all.nl>
 <24265b85-a12a-7a46-91d1-f20f5a133f8b@gmx.net>
In-Reply-To: <24265b85-a12a-7a46-91d1-f20f5a133f8b@gmx.net>
From: Dave Stevenson <dave.stevenson@raspberrypi.org>
Date: Fri, 28 Jun 2019 18:29:17 +0100
Message-ID: <CAAoAYcM6-xBEZfzpxchwh5z21HbFbu57a=7PZNoLB5J2vef7QA@mail.gmail.com>
Subject: Re: [PATCH 00/31] staging: bcm2835-camera: Improvements
To: Stefan Wahren <wahrenst@gmx.net>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:5.22.84,1.0.8
 definitions=2019-06-28_08:2019-06-25,2019-06-28 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_102938_892357_2708C775 
X-CRM114-Status: GOOD (  27.90  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.214 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 KHOP_DYNAMIC           Relay looks like a dynamic address
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 "moderated list:BROADCOM BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, LMML <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

Hi Stefan

On Fri, 28 Jun 2019 at 17:57, Stefan Wahren <wahrenst@gmx.net> wrote:
>
> Hi Hans,
>
> Am 28.06.19 um 10:06 schrieb Hans Verkuil:
> > Hi Stefan,
> >
> > On 6/27/19 8:55 PM, Stefan Wahren wrote:
> >> This is an attempt to help Dave Stevenson to get all the fixes and
> >> improvements of the bcm2835-camera driver into mainline.
> >>
> >> Mostly i only polished the commit logs for upstream.
> >>
> >> The series based on the latest bugfix V2 of staging: bcm2835-camera: Resto=
> >> re
> >> return behavior of ctrl_set_bitrate().
> > Thank you for working on this.
> >
> > Three high-level questions:
> >
> > 1) Can you post the output of 'v4l2-compliance -s' using the latest v4l2-compliance
> >    from https://git.linuxtv.org/v4l-utils.git ?  I'm interested to see what the
> >    status is of this driver w.r.t. the compliance tests.
>
> Before this series (Raspberry Pi 3, Camera 1.3, Linux
> 5.2.0-rc3-next-20190607, multi_v7_defconfig):
>
> v4l2-compliance SHA: b16f9e945d74aa552abdd6f873821cb77faaf13a, 32 bits
>
> Compliance test for bm2835 mmal device /dev/video0:
>
> Driver Info:
>     Driver name      : bm2835 mmal
>     Card type        : mmal service 16.1
>     Bus info         : platform:bcm2835-v4l2
>     Driver version   : 5.2.0
>     Capabilities     : 0x85200005
>         Video Capture
>         Video Overlay
>         Read/Write
>         Streaming
>         Extended Pix Format
>         Device Capabilities
>     Device Caps      : 0x05200005
>         Video Capture
>         Video Overlay
>         Read/Write
>         Streaming
>         Extended Pix Format
>
> Required ioctls:
>     test VIDIOC_QUERYCAP: OK
>
> Allow for multiple opens:
>     test second /dev/video0 open: OK
>     test VIDIOC_QUERYCAP: OK
>     test VIDIOC_G/S_PRIORITY: OK
>     test for unlimited opens: OK
>
> Debug ioctls:
>     test VIDIOC_DBG_G/S_REGISTER: OK (Not Supported)
>     test VIDIOC_LOG_STATUS: OK
>
> Input ioctls:
>     test VIDIOC_G/S_TUNER/ENUM_FREQ_BANDS: OK (Not Supported)
>     test VIDIOC_G/S_FREQUENCY: OK (Not Supported)
>     test VIDIOC_S_HW_FREQ_SEEK: OK (Not Supported)
>     test VIDIOC_ENUMAUDIO: OK (Not Supported)
>     test VIDIOC_G/S/ENUMINPUT: OK
>     test VIDIOC_G/S_AUDIO: OK (Not Supported)
>     Inputs: 1 Audio Inputs: 0 Tuners: 0
>
> Output ioctls:
>     test VIDIOC_G/S_MODULATOR: OK (Not Supported)
>     test VIDIOC_G/S_FREQUENCY: OK (Not Supported)
>     test VIDIOC_ENUMAUDOUT: OK (Not Supported)
>     test VIDIOC_G/S/ENUMOUTPUT: OK (Not Supported)
>     test VIDIOC_G/S_AUDOUT: OK (Not Supported)
>     Outputs: 0 Audio Outputs: 0 Modulators: 0
>
> Input/Output configuration ioctls:
>     test VIDIOC_ENUM/G/S/QUERY_STD: OK (Not Supported)
>     test VIDIOC_ENUM/G/S/QUERY_DV_TIMINGS: OK (Not Supported)
>     test VIDIOC_DV_TIMINGS_CAP: OK (Not Supported)
>     test VIDIOC_G/S_EDID: OK (Not Supported)
>
> Control ioctls (Input 0):
>     test VIDIOC_QUERY_EXT_CTRL/QUERYMENU: OK
>     test VIDIOC_QUERYCTRL: OK
>     test VIDIOC_G/S_CTRL: OK
>     test VIDIOC_G/S/TRY_EXT_CTRLS: OK
>     test VIDIOC_(UN)SUBSCRIBE_EVENT/DQEVENT: OK
>     test VIDIOC_G/S_JPEGCOMP: OK (Not Supported)
>     Standard Controls: 33 Private Controls: 0
>
> Format ioctls (Input 0):
>     test VIDIOC_ENUM_FMT/FRAMESIZES/FRAMEINTERVALS: OK
>     test VIDIOC_G/S_PARM: OK
>     test VIDIOC_G_FBUF: OK
>     test VIDIOC_G_FMT: OK
>     test VIDIOC_TRY_FMT: OK
>     test VIDIOC_S_FMT: OK
>     test VIDIOC_G_SLICED_VBI_CAP: OK (Not Supported)
>     test Cropping: OK (Not Supported)
>     test Composing: OK (Not Supported)
>     test Scaling: OK
>
> Codec ioctls (Input 0):
>     test VIDIOC_(TRY_)ENCODER_CMD: OK (Not Supported)
>     test VIDIOC_G_ENC_INDEX: OK (Not Supported)
>     test VIDIOC_(TRY_)DECODER_CMD: OK (Not Supported)
>
> Buffer ioctls (Input 0):
>         fail: v4l2-test-buffers.cpp(715): q.create_bufs(node, 1, &fmt)
> != EINVAL
>     test VIDIOC_REQBUFS/CREATE_BUFS/QUERYBUF: FAIL
>     test VIDIOC_EXPBUF: OK (Not Supported)
>     test Requests: OK (Not Supported)
>
> Test input 0:
>
> Streaming ioctls:
>     test read/write: OK
>         fail: v4l2-test-buffers.cpp(2145): node->streamon(q.g_type())
>         fail: v4l2-test-buffers.cpp(2224): testBlockingDQBuf(node, q)
>     test blocking wait: FAIL
>         fail: v4l2-test-buffers.cpp(1294): q.create_bufs(node, 1, &fmt)
> != EINVAL
>     test MMAP (no poll): FAIL
>         fail: v4l2-test-buffers.cpp(1294): q.create_bufs(node, 1, &fmt)
> != EINVAL
>     test MMAP (select): FAIL
>         fail: v4l2-test-buffers.cpp(1294): q.create_bufs(node, 1, &fmt)
> != EINVAL
>     test MMAP (epoll): FAIL
>
> After this series:
>
> v4l2-compliance SHA: b16f9e945d74aa552abdd6f873821cb77faaf13a, 32 bits
>
> Compliance test for bm2835 mmal device /dev/video0:
>
> Driver Info:
>     Driver name      : bm2835 mmal
>     Card type        : mmal service 16.1
>     Bus info         : platform:bcm2835-v4l2
>     Driver version   : 5.2.0
>     Capabilities     : 0x85200005
>         Video Capture
>         Video Overlay
>         Read/Write
>         Streaming
>         Extended Pix Format
>         Device Capabilities
>     Device Caps      : 0x05200005
>         Video Capture
>         Video Overlay
>         Read/Write
>         Streaming
>         Extended Pix Format
>
> Required ioctls:
>     test VIDIOC_QUERYCAP: OK
>
> Allow for multiple opens:
>     test second /dev/video0 open: OK
>     test VIDIOC_QUERYCAP: OK
>     test VIDIOC_G/S_PRIORITY: OK
>     test for unlimited opens: OK
>
> Debug ioctls:
>     test VIDIOC_DBG_G/S_REGISTER: OK (Not Supported)
>     test VIDIOC_LOG_STATUS: OK
>
> Input ioctls:
>     test VIDIOC_G/S_TUNER/ENUM_FREQ_BANDS: OK (Not Supported)
>     test VIDIOC_G/S_FREQUENCY: OK (Not Supported)
>     test VIDIOC_S_HW_FREQ_SEEK: OK (Not Supported)
>     test VIDIOC_ENUMAUDIO: OK (Not Supported)
>     test VIDIOC_G/S/ENUMINPUT: OK
>     test VIDIOC_G/S_AUDIO: OK (Not Supported)
>     Inputs: 1 Audio Inputs: 0 Tuners: 0
>
> Output ioctls:
>     test VIDIOC_G/S_MODULATOR: OK (Not Supported)
>     test VIDIOC_G/S_FREQUENCY: OK (Not Supported)
>     test VIDIOC_ENUMAUDOUT: OK (Not Supported)
>     test VIDIOC_G/S/ENUMOUTPUT: OK (Not Supported)
>     test VIDIOC_G/S_AUDOUT: OK (Not Supported)
>     Outputs: 0 Audio Outputs: 0 Modulators: 0
>
> Input/Output configuration ioctls:
>     test VIDIOC_ENUM/G/S/QUERY_STD: OK (Not Supported)
>     test VIDIOC_ENUM/G/S/QUERY_DV_TIMINGS: OK (Not Supported)
>     test VIDIOC_DV_TIMINGS_CAP: OK (Not Supported)
>     test VIDIOC_G/S_EDID: OK (Not Supported)
>
> Control ioctls (Input 0):
>     test VIDIOC_QUERY_EXT_CTRL/QUERYMENU: OK
>     test VIDIOC_QUERYCTRL: OK
>     test VIDIOC_G/S_CTRL: OK
>     test VIDIOC_G/S/TRY_EXT_CTRLS: OK
>     test VIDIOC_(UN)SUBSCRIBE_EVENT/DQEVENT: OK
>     test VIDIOC_G/S_JPEGCOMP: OK (Not Supported)
>     Standard Controls: 33 Private Controls: 0
>
> Format ioctls (Input 0):
>     test VIDIOC_ENUM_FMT/FRAMESIZES/FRAMEINTERVALS: OK
>     test VIDIOC_G/S_PARM: OK
>     test VIDIOC_G_FBUF: OK
>     test VIDIOC_G_FMT: OK
>     test VIDIOC_TRY_FMT: OK
>     test VIDIOC_S_FMT: OK
>     test VIDIOC_G_SLICED_VBI_CAP: OK (Not Supported)
>     test Cropping: OK (Not Supported)
>     test Composing: OK (Not Supported)
>     test Scaling: OK
>
> Codec ioctls (Input 0):
>     test VIDIOC_(TRY_)ENCODER_CMD: OK (Not Supported)
>     test VIDIOC_G_ENC_INDEX: OK (Not Supported)
>     test VIDIOC_(TRY_)DECODER_CMD: OK (Not Supported)
>
> Buffer ioctls (Input 0):
>     test VIDIOC_REQBUFS/CREATE_BUFS/QUERYBUF: OK
>     test VIDIOC_EXPBUF: OK (Not Supported)
>     test Requests: OK (Not Supported)
>
> Test input 0:
>
> Streaming ioctls:
>     test read/write: OK
>     test blocking wait: OK
>
> Unfortunately in both cases the program hangs and never finish. This is
> the output of strace:
>
> ioctl(3, VIDIOC_DQBUF, {type=V4L2_BUF_TYPE_VIDEO_CAPTURE
>
> It is possible that this is a problem with the used linux-next version.
> Nevertheless the series is improvement.

Could you try running
v4l2-ctl -v width=640,height=480,pixelformat=YU12
before running v4l2-compliance? The default format is JPEG, and I just
wonder if there is an issue lurking in the compression side.

I'll get a Pi3 mainline build going when I get a chance.

> > 2) What is the status of this driver from your point of view?
> Sorry, i'm not a media expert. But i agree with Dan this needs
> improvement of error handling. For example mapping the MMAL error codes
> to Linux error codes would avoid confusion.
> > What is needed to get it out of staging?
>
> I think the driver needs more testing for 64 bit. Contrary to Raspbian a
> lot of the "mainline" distributions only concentrate on arm64. But
> currently i don't know of any 64 bit specific issues.

64 bit builds were working fine (currently broken downstream due to a
different change).
Whilst the VPU and IPC are only 32bit, there are idr lookups from any
64bit values in the kernel.
Once things have calmed down again a bit I will be resuming 64bit
kernel with 32bit userland work.

> I also can't say anything about the content of the TODO file.

I think some of the items were wishlist items from others rather than
requirements.

1) For dma-bufs to be useful in the rest of the system we need to
switch from the vmalloc allocator to dma-contig. Downstream I have
drivers in place that then allow the passing of the dma_addr to the
VPU for use as a buffer handle.
It also means a switch from allocating memory as gpu_mem to cma, so
requires some careful thought on our side for how heap allocation is
done.

2) Removing the extra copy isn't trivial on the firmware side.
Multi-planar also doesn't currently fall out easily as the VPU
requirements would be for a single contiguous allocation with offsets
for the planes. The current allocators allocate independent buffers
for each plane, and put page alignment requirements on each plane.
Other than SDRAM bandwidth, it has a minimal performance hit on the
system.

3) ARM64 works. Someone else may recall better on this, but I believe
vchi is now using the correct dma-ops for everything.

Thanks again for all your efforts on this.

  Dave

_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
