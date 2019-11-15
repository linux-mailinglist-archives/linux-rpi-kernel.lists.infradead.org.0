Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EA99FD9FA
	for <lists+linux-rpi-kernel@lfdr.de>; Fri, 15 Nov 2019 10:54:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:To:From:
	Subject:Date:In-Reply-To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=oag+7sRXd9OKQWflGGoclaO+ShgyrW/iTqRDk+p6Bpc=; b=oluX04Z1TSnJ6B
	xP4XKI9vezDe/Ck1JjMLZ4RMJQCzBgqM7XCm4rWuiVzJ8s3WDFFxfY8DIfqtEvuJsJs/04UrHfk1L
	eCT1V381e0a9FtjoHTFs773M+bdjg6W/0us7aGI6R6F+oobFan7xgKiJRmZLEZ44NYrcT6CqZ/ByC
	hbqrExWxex3mC8pRqwKqyphgL/F3FbwpnuISJlbSW9iHtgO/6DK8jLMqXzcJPTlvfFPJHhCo+3mrr
	9tJxL57K5gR4d+InxeeWcNUKaI+DYOWPEWT4u3TZAw2W+3T2xAp0JpQCE21MEtWgxciZgX0GU5okw
	e7F9zAYP+wLvrjYzx3wQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVYIh-0006er-3F; Fri, 15 Nov 2019 09:53:59 +0000
Received: from sender4-of-o54.zoho.com ([136.143.188.54])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVYId-0006e9-Fo
 for linux-rpi-kernel@lists.infradead.org; Fri, 15 Nov 2019 09:53:56 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1573811631; cv=none; 
 d=zohomail.com; s=zohoarc; 
 b=EhiCLXxoY69ZO1hkih8QLIXOsVlJwUJvRavtu3ZU1fb/0/XIjvDbp2d35IXY/UhWcA0VVxBFuqTZFUEgw1stFErOqgc2BLJ3eLlg2Nad1uOmqulwrmL/s1GLNTyYzfjRWMkD3CaL1nuOAJGqtAyV68RO9jTx9zeZ5J77LVtKZ6w=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com;
 s=zohoarc; t=1573811631;
 h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:Message-ID:Subject:To;
 bh=qpgaKXqykbD2FtDPFvoRMmvvbN6uocvAJ/a0STtFOaI=; 
 b=XAjkIXmXPIrMUks4HnmmAHoXa9KNBNV8bVJLcBHEHAzlb285+1QyAi56lyA5r4C+c7DmKExY65Nd7FM/ARz7P3yv9DthLALDUzkFYkUewNbzLiJqzTu9LjYSrj7YDHEliRz73XTKTj///imJRF2YEYPZjN9jEl/rt8GtBtbR0bM=
ARC-Authentication-Results: i=1; mx.zohomail.com;
 dkim=pass  header.i=brennan.io;
 spf=pass  smtp.mailfrom=stephen@brennan.io;
 dmarc=pass header.from=<stephen@brennan.io> header.from=<stephen@brennan.io>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1573811631; 
 s=selector01; d=brennan.io; i=stephen@brennan.io;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:Date:Cc:Subject:From:To:Message-Id;
 l=2167; bh=qpgaKXqykbD2FtDPFvoRMmvvbN6uocvAJ/a0STtFOaI=;
 b=Em3i1PMplhCbkdJLyRZGCtMaZwbGlm0z6hzXc2YPc7j8TRRJFP9JY/tdhcDguZ4A
 E4jr5lev/C+xiTWgw93K9LF3zzY+Uymrf06iQTo2j+eX9g0jP0ONFbYbnU3UzaU1gtn
 kAgcmol9Ji+NZVQSxosdnpzfJXYnEqWzVKF0v1K8=
Received: from localhost (195.173.24.136.in-addr.arpa [136.24.173.195]) by
 mx.zohomail.com with SMTPS id 1573811630459153.9148235133382;
 Fri, 15 Nov 2019 01:53:50 -0800 (PST)
Originalfrom: "Stefan Wahren" <wahrenst@gmx.net>
Original: =?utf-8?q?Hi_Stephen,
 =0A=0AAm_12.11.19_um_09:00_schrieb_Stephen_Brennan:?= =?utf-8?q?
 =0A>_Hello_everyone,=0A>=0A>_I'm_new_to_the_Raspberry_Pi_kernel?=
 =?utf-8?q?_project_and_I_wanted_to_learn_more_about_the=0A>_project_goals?=
 =?utf-8?q?_and_how_I_could_contribute.=0Athere_are_no_clearly_defined_pro?=
 =?utf-8?q?ject_goals,_but_my_personal_goal_would=0Abe_that_the_Raspberry_?=
 =?utf-8?q?Pi_become_a_popular_upstream_reference_SBC._All=0Akinds_of_cont?=
 =?utf-8?q?ributions_are_welcome_like_development,_testing_or=0Adocumentat?=
 =?utf-8?q?ion.=0A>__From_the_resources_I've_seen_(e.g._the=0A>_topic_of_#?=
 =?utf-8?q?raspberrypi-kernel_on_Freenode_[1]),_upstreaming_the_raspberryp?=
 =?utf-8?q?i/linux=0A>_tree_seems_to_be_a_goal.=0A=0ANot_exactly._I_see_th?=
 =?utf-8?q?e_priorities_for_the_mainline_support_differently.=0AIn_the_ven?=
 =?utf-8?q?dor_tree_everything_is_optimized_to_the_RPi_and_its_usability.?=
 =?utf-8?q?=0ASometimes_this_violates_portability_or_security_aspects._So_?=
 =?utf-8?q?in_upstream=0Awe_don't_want_performance_at_all_cost._This_is_th?=
 =?utf-8?q?e_reason_why_we_use_the=0Adwc2_USB_host_driver_and_not_dwc=5Fot?=
 =?utf-8?q?g.=0A=0AThe_RPi_should_be_integrated_to_the_other_ARM_platforms?=
 =?utf-8?q?_and_behave_like=0Athem._An_example_for_this_is_the_recommend_u?=
 =?utf-8?q?sage_of_GPIO_labels_instead=0Aof_the_deprecated_sysfs.=0A=0A>__?=
 =?utf-8?q?I_also_see_some_work_related_to_the_BCM2711_SOC_for_the=0A>_Ras?=
 =?utf-8?q?pberry_Pi_4,_which_I_doubt_I_know_enough_to_help_with._I_did_a_?=
 =?utf-8?q?diff_to_see=0A>_what_could_be_upstreamed:=0A>=0A>_____git_diff_?=
 =?utf-8?q?--numstat_v5.4-rc7..rpi/rpi-5.4.y=0AThe_better_source_for_upstr?=
 =?utf-8?q?eaming_of_RPi_4_is_here_[2]._A_lot_of=0Adownstream_patches_are_?=
 =?utf-8?q?hacks_and_not_suitable_for_mainline._So=0Aupstreaming_is_someti?=
 =?utf-8?q?mes_much_more_work_than_simply_a_resend_of_those=0Apatches._But?=
 =?utf-8?q?_there_still_a_lot_of_lower_fruits._A_good_example_is_the=0Ahwr?=
 =?utf-8?q?ng_support_for_the_bcm2711.=0A>=0A>_The_diff_is_quite_large,_fo?=
 =?utf-8?q?r_example_there_is_an_entire_RTL8192CU_driver_which=0A>_seems_s?=
 =?utf-8?q?eparate_from_the_mainline_one.=0APlease_forget_about_the_Realte?=
 =?utf-8?q?k_driver._There_are_already_4_Realtek_wifi=0Adriver_in_the_main?=
 =?utf-8?q?line_kernel._There_is_no_need_for_another_one.=0A>__I_did_see_a?=
 =?utf-8?q?_few_interesting,_smaller=0A>_looking_drivers_that_might_be_sui?=
 =?utf-8?q?table:=0A>=0A>___*_drivers/mmc/host/bcm2835-mmc.c=0AThis_has_be?=
 =?utf-8?q?en_dropped_in_favor_of_sdhci-iproc._It_only_lacks_DMA_support.?=
 =?utf-8?q?=0A>___*_drivers/clk/bcm/clk-bcm2835.c=0AYes,_there_are_some_ch?=
 =?utf-8?q?anges_missing_for_v3d_support.=0A>___*_drivers/video/backlight/?=
 =?utf-8?q?rpi=5Fbacklight.c=0AIn_general_we_try_to_avoid_to_upstream_driv?=
 =?utf-8?q?er_which_depends_on_the=0Afirmware_interface._But_i_agree_this_?=
 =?utf-8?q?is_missing.=0A>=0A>_Are_these_suitable_areas_to_try_to_upstream?=
 =?utf-8?q?=3F_If_so,_what_mailing_list_might_be=0A>_appropriate=3F=0A=0AT?=
 =?utf-8?q?his_is_the_right_mailing_list_for_discussions._But_please_send_?=
 =?utf-8?q?patches=0Aalso_to_linux-arm-kernel_for_a_wider_audience._Please?=
 =?utf-8?q?_have_also_a_look=0Aat_this_[3]_for_more_recent_information.=0A?=
 =?utf-8?q?=0ABest_regards=0AStefan=0A=0A[2]_-_https://github.com/lategood?=
 =?utf-8?q?bye/rpi-zero/issues/43=0A[3]_-_https://github.com/raspberrypi/l?=
 =?utf-8?q?inux/wiki/Upstreaming=0A=0A>__If_not,_what_are_some_good_qualit?=
 =?utf-8?q?ies_to_look_for_when_doing_this=0A>_sort_of_work=3F=0A>=0A>_Tha?=
 =?utf-8?q?nks,=0A>_Stephen_Brennan=0A>=0A>_[1]:_https://elinux.org/RPi=5F?=
 =?utf-8?q?Upstreaming=0A>=0A>_=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F?=
 =?utf-8?q?=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F?=
 =?utf-8?q?=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=0A>_linux-rpi-kernel_maili?=
 =?utf-8?q?ng_list=0A>_linux-rpi-kernel@lists.infradead.org=0A>_http://lis?=
 =?utf-8?q?ts.infradead.org/mailman/listinfo/linux-rpi-kernel=0A?=
In-Reply-To: <1e78280b-0ea5-5f14-4660-b9a204fb3c16@gmx.net>
Originaldate: Wed Nov 13, 2019 at 8:09 AM
Date: Fri, 15 Nov 2019 01:53:42 -0800
Subject: Re: Raspberry Pi Kernel Contributing
From: "Stephen Brennan" <stephen@brennan.io>
To: "Stefan Wahren" <wahrenst@gmx.net>
Message-Id: <BYGDNQDD7EAM.38INTCINFU0O8@pride>
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_015355_601450_8909DFEC 
X-CRM114-Status: GOOD (  17.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 BAD_ENC_HEADER         Message has bad MIME encoding in the header
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-rpi-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

Hi Stefan,

Thanks for taking the time to share your advice and thoughts on the
project, I really appreciate it!

> >  From the resources I've seen (e.g. the
> > topic of #raspberrypi-kernel on Freenode [1]), upstreaming the raspberrypi/linux
> > tree seems to be a goal.
>
> Not exactly. I see the priorities for the mainline support differently.
> In the vendor tree everything is optimized to the RPi and its usability.
> Sometimes this violates portability or security aspects. So in upstream
> we don't want performance at all cost. This is the reason why we use the
> dwc2 USB host driver and not dwc_otg.

That's a more nuanced approach which makes a lot more sense!

> 
> The RPi should be integrated to the other ARM platforms and behave like
> them. An example for this is the recommend usage of GPIO labels instead
> of the deprecated sysfs.
>
> 
> >  I also see some work related to the BCM2711 SOC for the
> > Raspberry Pi 4, which I doubt I know enough to help with. I did a diff to see
> > what could be upstreamed:
> >
> >     git diff --numstat v5.4-rc7..rpi/rpi-5.4.y
> The better source for upstreaming of RPi 4 is here [2]. A lot of
> downstream patches are hacks and not suitable for mainline. So
> upstreaming is sometimes much more work than simply a resend of those
> patches. But there still a lot of lower fruits. A good example is the
> hwrng support for the bcm2711.

I've started looking into this. I haven't found too many technical 
references on the iProc RNG200. That said, I've gotten my kernel dev setup 
for the Pi 4B and I'm going to try applying the diff to the upstream kernel 
and see what happens.

> >
> > The diff is quite large, for example there is an entire RTL8192CU driver which
> > seems separate from the mainline one.
> Please forget about the Realtek driver. There are already 4 Realtek wifi
> driver in the mainline kernel. There is no need for another one.

That's concerning, but to be honest I thought I saw more than 4 Realtek 
drivers in the staging/ directory alone :)

Thanks again for taking the time to give me some advice!

Stephen


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
