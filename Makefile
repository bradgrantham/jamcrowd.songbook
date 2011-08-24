KC_SONGS = \
    amie.chopro.html \
    and_she_was.chopro.html \
    big_yellow_taxi.chopro.html \
    clocks.chopro.html \
    comfortably_numb.chopro.html \
    cruel_to_be_kind.chopro.html \
    down_under.chopro.html \
    eight_days_a_week.chopro.html \
    folsom_prison_blues.chopro.html \
    heart_of_gold.chopro.html \
    horse_with_no_name.chopro.html \
    hotel_california.chopro.html \
    im_in.chopro.html \
    jumper.chopro.html \
    last_train_to_clarksville.chopro.html \
    learning_to_fly.chopro.html \
    let_her_cry.chopro.html \
    lola.chopro.html \
    need_you_now.chopro.html \
    no_rain.chopro.html \
    one.chopro.html \
    patience.chopro.html \
    peaceful_easy_feeling.chopro.html \
    ring_of_fire.chopro.html \
    soul_meets_body.chopro.html \
    southern_cross.chopro.html \
    stuck_in_the_middle_with_you.chopro.html \
    summer_of_69.chopro.html \
    sundown.chopro.html \
    wasted_on_the_way.chopro.html \
    we_can_work_it_out.chopro.html \
    wish_you_were_here.chopro.html \
    with_a_little_help_from_my_friends.chopro.html \
    yer_so_bad.chopro.html \
    $(NULL)


    # give_a_little_bit.chopro.html \
#     more_than_words.chopro.html \
    # burning_for_you.chopro.html \

JC_SONGS = \
    and_she_was.chopro.html \
    anyone_else_but_you.chopro.html \
    christians_and_pagans.chopro.html \
    clocks.chopro.html \
    comfortably_numb.chopro.html \
    coming_up_close.chopro.html \
    crazy_on_you.chopro.html \
    cruel_to_be_kind.chopro.html \
    dead_flowers.chopro.html \
    donald_wheres_your_trousers.chopro.html \
    down_by_the_river.chopro.html \
    down_under.chopro.html \
    flagpole_sitta.chopro.html \
    folsom_prison_blues.chopro.html \
    gold_dust_woman.chopro.html \
    heart_of_gold.chopro.html \
    hey_there_delilah.chopro.html \
    high_and_dry.chopro.html \
    horse.chopro.html \
    horse_with_no_name.chopro.html \
    hotel_california.chopro.html \
    in_between_days.chopro.html \
    island_in_the_sun.chopro.html \
    last_train_to_clarksville.chopro.html \
    learning_to_fly.chopro.html \
    let_her_cry.chopro.html \
    lithium.chopro.html \
    lola.chopro.html \
    man_of_constant_sorrow.chopro.html \
    mary_janes_last_dance.chopro.html \
    my_sweet_annette.chopro.html \
    need_you_now.chopro.html \
    no_rain.chopro.html \
    norwegian_wood.chopro.html \
    one.chopro.html \
    patience.chopro.html \
    peaceful_easy_feeling.chopro.html \
    ring_of_fire.chopro.html \
    service_and_repair.chopro.html \
    stuck_in_the_middle_with_you.chopro.html \
    soul_meets_body.chopro.html \
    southern_cross.chopro.html \
    sundown.chopro.html \
    sweet_child_of_mine.chopro.html \
    too_late_for_love.chopro.html \
    walk_on_the_ocean.chopro.html \
    wasted_on_the_way.chopro.html \
    wish_it_would_rain.chopro.html \
    wish_you_were_here.chopro.html \
    wonderwall.chopro.html \
    yer_so_bad.chopro.html \
    zombie_cranberries.chopro.html \
    $(NULL)

all: jc_songbook.pdf kc_songbook.pdf

jc_songbook.pdf: $(JC_SONGS)
	for i in $^ ; do echo "$$i" ; done | tools/html2guitartex "Jamcrowd Songbook" jc_songbook.chopro
	gtx2tex --output=pdf jc_songbook.chopro

kc_songbook.pdf: $(KC_SONGS)
	for i in $^ ; do echo "$$i" ; done | tools/html2guitartex "Jamcrowd Songbook, Karma Chickens Edition" kc_songbook.chopro
	gtx2tex --output=pdf kc_songbook.chopro
