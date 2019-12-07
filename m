Return-Path: <linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rpi-kernel@lfdr.de
Delivered-To: lists+linux-rpi-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D706115F3C
	for <lists+linux-rpi-kernel@lfdr.de>; Sat,  7 Dec 2019 23:26:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:From:
	Subject:To:Date:In-Reply-To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=sfvSUJynNVhCemfc9mWGtqXiT4PVuejR+eXQggpFS4o=; b=fj2
	Fs3k2LfBpg4ajJO6NCc0breWvUb2UfTLAySoVVAALecVUxTRJIOYwzlgC+FAS/qNIbwF1137cBIxy
	OwKe0qtFR4AqkwYrdkylTvbBO1I6s7Y/4lDxkn07DjH82L5gIoSmzUX+UC2qET/Ii0mrS6UdbrWbw
	LDyc8htuFYactiQpGv9ifmA5yBQw0NLHTRO87Nud1O9BPc3MlXz3UMxot4yxTm1JEpE9C59dqBogZ
	JAGjnLJtunHkDT+alh/51fYo2ngU4FNyN4K2zvdrR9Nf+wafpXv4yM2cSJHuUNM5dvo7FjC1mSFKi
	cfsebKC8TFdAcoSH8N/2aYFpbemp/cQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idiWc-0001jY-Up; Sat, 07 Dec 2019 22:26:06 +0000
Received: from sender4-of-o50.zoho.com ([136.143.188.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idiVQ-0007l3-1U
 for linux-rpi-kernel@lists.infradead.org; Sat, 07 Dec 2019 22:24:53 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1575757484; cv=none; 
 d=zohomail.com; s=zohoarc; 
 b=XTHpdugxockySXgIgLyB68ekpfQcTjsrEVePz4IjQCvdHfBOMikC3lbq2AIMQp9owguAZjBJax91WLSElLJHHHW0URXGt0PDca7CcJ7AGIz1Vdf780qNPJcKDHhv7SltmXfXCowCwZmVtlCSw4IpUPw51w3JOw1rWgYW5WJAQRM=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com;
 s=zohoarc; t=1575757484;
 h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:Message-ID:Subject:To;
 bh=hIq4MM72nztw9pF6WJWV16BTW1P4YyZDDIe5JKRRMso=; 
 b=oB+XbYIAJKuywww5XzsUlRP+tJ2fR108qfSaQ6F7GKZH3oWJyPa1eZcw9ksiS4p9d6HVBri2ZSli9icUW0v1ORVH6BYi+Jqg/jGPMuKK/Yn6u3iRINPMdvWvTFTRpgT0ugjxsdra1j8CPlRzjxaf0yuoM8O8dyTouJstmgkOWWI=
ARC-Authentication-Results: i=1; mx.zohomail.com;
 dkim=pass  header.i=brennan.io;
 spf=pass  smtp.mailfrom=stephen@brennan.io;
 dmarc=pass header.from=<stephen@brennan.io> header.from=<stephen@brennan.io>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1575757484; 
 s=selector01; d=brennan.io; i=stephen@brennan.io;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:Date:To:Cc:Subject:From:Message-Id;
 bh=hIq4MM72nztw9pF6WJWV16BTW1P4YyZDDIe5JKRRMso=;
 b=Vkg3G7TOC7gwr1z9tJtoABiGgZv8O4kkJc72Jbe9m4rIUolKjY5ASuaB0xed46Uw
 bFEtmF0or6LwyGN/djVomxJ4F/mbEGmU4OWynCViAu4G3+VkQYibvbvJvYiVORVb7DG
 9uQQAF1om7M86uytSh6cNeYtnPP/LG7n6UfE5/3c=
Received: from localhost (195.173.24.136.in-addr.arpa [136.24.173.195]) by
 mx.zohomail.com with SMTPS id 1575757482823948.0546531274085;
 Sat, 7 Dec 2019 14:24:42 -0800 (PST)
Originaldate: Wed Dec 4, 2019 at 8:52 PM
Originalfrom: "Stefan Wahren" <wahrenst@gmx.net>
Original: =?utf-8?q?Hi_Stephen,
 =0D=0A=0D=0AAm_04.12.19_um_08:35_schrieb_Stephen_Bre?= =?utf-8?q?nnan:
 =0D=0A>_Hi_Stefan,_and_also_Florian_since_I_know_you've_ha?=
 =?utf-8?q?nded_off_maintainership,=0D=0Ai_want_to_mention_that_Nicolas_ta?=
 =?utf-8?q?ke_over_the_BCM2835_maintainership.=0D=0A>=0D=0A>_On_Wed_Nov_13?=
 =?utf-8?q?,_2019_at_8:09_AM,_Stefan_Wahren_wrote:=0D=0A>>_Am_12.11.19_um_?=
 =?utf-8?q?09:00_schrieb_Stephen_Brennan:=0D=0A>>>__I_also_see_some_work_r?=
 =?utf-8?q?elated_to_the_BCM2711_SOC_for_the=0D=0A>>>_Raspberry_Pi_4,_whic?=
 =?utf-8?q?h_I_doubt_I_know_enough_to_help_with._I_did_a_diff_to_see=0D=0A?=
 =?utf-8?q?>>>_what_could_be_upstreamed:=0D=0A>>>=0D=0A>>>_____git_diff_--?=
 =?utf-8?q?numstat_v5.4-rc7..rpi/rpi-5.4.y=0D=0A>>_The_better_source_for_u?=
 =?utf-8?q?pstreaming_of_RPi_4_is_here_[2]._A_lot_of=0D=0A>>_downstream_pa?=
 =?utf-8?q?tches_are_hacks_and_not_suitable_for_mainline._So=0D=0A>>_upstr?=
 =?utf-8?q?eaming_is_sometimes_much_more_work_than_simply_a_resend_of_thos?=
 =?utf-8?q?e=0D=0A>>_patches._But_there_still_a_lot_of_lower_fruits._A_goo?=
 =?utf-8?q?d_example_is_the=0D=0A>>_hwrng_support_for_the_bcm2711.=0D=0A>_?=
 =?utf-8?q?[snip]=0D=0A>>_[2]_-_https://github.com/lategoodbye/rpi-zero/is?=
 =?utf-8?q?sues/43=0D=0A>_I'm_looking_back_at_the_upstreaming_status_and_n?=
 =?utf-8?q?oticed_two_unclaimed=0D=0A>_components_-_spi_and_bcm2835-power.?=
 =?utf-8?q?=0D=0Athis_list_is_not_complete._So_these_two_are_not_the_only_?=
 =?utf-8?q?missing_ones._I=0D=0Atried_to_extend_it_based_on_current_rpi-5.?=
 =?utf-8?q?4.y.=0D=0A>__I_wonder_if_there_is_any_pointer_to=0D=0A>_what_ne?=
 =?utf-8?q?eds_to_be_done_for_these,_or_some_documentation_on_the_underlyi?=
 =?utf-8?q?ng=0D=0A>_hardware=3F=0D=0AYes,_we_all_are_still_waiting_for_th?=
 =?utf-8?q?e_BCM2711_datasheet_or_at_least_a=0D=0Amemory_map._This_would_b?=
 =?utf-8?q?e_a_nice_christmas_present_;-)=0D=0A>=0D=0A>_For_bcm2835-power_?=
 =?utf-8?q?the_main_relevant_commit_I_see_is_c1ee74bff379_("soc:=0D=0A>_bc?=
 =?utf-8?q?m:_bcm2835-pm:_Add_support_for_2711.").=0D=0ACorrect,_but_this_?=
 =?utf-8?q?one_not_ready_for_upstream_submission._I_think_this=0D=0Awas_mo?=
 =?utf-8?q?re_a_hack_to_get_V3D_running_on_RPi_4._A_proper_approach_needs_?=
 =?utf-8?q?a=0D=0Anew_compatible_like_brcm,bcm2711-pm|.|=0D=0A>__For_spi_I?=
 =?utf-8?q?'m_not_sure_where_to=0D=0A>_look,_I_see_a_few_commits_but_nothi?=
 =?utf-8?q?ng_particularly_relevant_to_Pi_4.=0D=0A=0D=0APlease_look_at_thi?=
 =?utf-8?q?s_patch_and_the_discussion:=0D=0A=0D=0Ahttps://patchwork.kernel?=
 =?utf-8?q?.org/patch/11048251/=0D=0A=0D=0A>=0D=0A>_I'm_happy_to_try_to_ta?=
 =?utf-8?q?ke_on_anything_which_you_may_not_have_time_for,_but=0D=0A>_I'm_?=
 =?utf-8?q?sorry_in_advance_that_I_may_need_a_few_pointers_to_get_me_start?=
 =?utf-8?q?ed.=0D=0A=0D=0AThanks_for_your_help!=0D=0A=0D=0AStefan=0D=0A=0D?=
 =?utf-8?q?=0A>=0D=0A>_Thanks_for_your_continued_help!=0D=0A>_Stephen=0D?=
 =?utf-8?q?=0A>=0D=0A?=
In-Reply-To: <56b727cd-d5f9-2ae5-ce21-0bc7834b2400@gmx.net>
Date: Sat, 07 Dec 2019 14:24:41 -0800
To: "Stefan Wahren" <wahrenst@gmx.net>
Subject: Re: Raspberry Pi Kernel Contributing
From: "Stephen Brennan" <stephen@brennan.io>
Message-Id: <BYZJEPKN5OJO.3L2DGL0LJD7AU@pride>
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191207_142452_127444_74E001AB 
X-CRM114-Status: GOOD (  20.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 BAD_ENC_HEADER         Message has bad MIME encoding in the header
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
Cc: linux-rpi-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-rpi-kernel" <linux-rpi-kernel-bounces@lists.infradead.org>
Errors-To: linux-rpi-kernel-bounces+lists+linux-rpi-kernel=lfdr.de@lists.infradead.org

On Wed Dec 4, 2019 at 8:52 PM, Stefan Wahren wrote:
> Hi Stephen,
>
> 
> Am 04.12.19 um 08:35 schrieb Stephen Brennan:
> > Hi Stefan, and also Florian since I know you've handed off maintainership,
> i want to mention that Nicolas take over the BCM2835 maintainership.

Oops, my mistake! I'm really sorry.

> >
> > On Wed Nov 13, 2019 at 8:09 AM, Stefan Wahren wrote:
> >> Am 12.11.19 um 09:00 schrieb Stephen Brennan:
> >>>  I also see some work related to the BCM2711 SOC for the
> >>> Raspberry Pi 4, which I doubt I know enough to help with. I did a diff to see
> >>> what could be upstreamed:
> >>>
> >>>     git diff --numstat v5.4-rc7..rpi/rpi-5.4.y
> >> The better source for upstreaming of RPi 4 is here [2]. A lot of
> >> downstream patches are hacks and not suitable for mainline. So
> >> upstreaming is sometimes much more work than simply a resend of those
> >> patches. But there still a lot of lower fruits. A good example is the
> >> hwrng support for the bcm2711.
> > [snip]
> >> [2] - https://github.com/lategoodbye/rpi-zero/issues/43
> > I'm looking back at the upstreaming status and noticed two unclaimed
> > components - spi and bcm2835-power.
> this list is not complete. So these two are not the only missing ones. I
> tried to extend it based on current rpi-5.4.y.

Looks great, I'm taking a look to see what I can help with. I may look into 
the performance improvements for the HWRNG that you and Nicolas have both 
mentioned.

> >  I wonder if there is any pointer to
> > what needs to be done for these, or some documentation on the underlying
> > hardware?
> Yes, we all are still waiting for the BCM2711 datasheet or at least a
> memory map. This would be a nice christmas present ;-)

It's really amazing to me what this group of people has been able to do 
*without* that datasheet.

> >
> > For bcm2835-power the main relevant commit I see is c1ee74bff379 ("soc:
> > bcm: bcm2835-pm: Add support for 2711.").
> Correct, but this one not ready for upstream submission. I think this
> was more a hack to get V3D running on RPi 4. A proper approach needs a
> new compatible like brcm,bcm2711-pm|.|
> >  For spi I'm not sure where to
> > look, I see a few commits but nothing particularly relevant to Pi 4.
>
> 
> Please look at this patch and the discussion:
>
> 
> https://patchwork.kernel.org/patch/11048251/
>

Thanks again,
Stephen


_______________________________________________
linux-rpi-kernel mailing list
linux-rpi-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel
