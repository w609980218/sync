#### 每3天的23:50分清理一次日志(互助码不清理，proc_file.sh对该文件进行了去重)
50 23 */3 * * find /scripts/logs -name '*.log' | grep -v 'sharecodeCollection' | xargs rm -rf
#收集助力码
30 * * * * sh +x /scripts/docker/auto_help.sh collect >> /scripts/logs/auto_help_collect.log 2>&1

##############短期活动##############
# 她的节，享京豆(活动共8天)
#5 8,21 1-8/1 3 * node /scripts/jd_firecrackers.js >> /scripts/logs/jd_firecrackers.log 2>&1

#女装盲盒 活动时间：2021-04-1到2021-04-31
#35 1,23 * * * node /scripts/jd_nzmh.js >> /scripts/logs/jd_nzmh.log 2>&1
34 1,23 * * * node /scripts/jd_nzmh.js >> /scripts/logs/jd_nzmh.log 2>&1
#7 0,7,23 * * * node /scripts/jd_nzmh.js >> /scripts/logs/jd_nzmh.log 2>&1

#京东国际盲盒活动时间】2021年02月23日 起至 2021年03月31日 18:00:00
#6 7,12,23 * * * node /scripts/jd_global_mh.js >> /scripts/logs/jd_global_mh.log 2>&1
#京东极速版红包(活动时间：2021-5-5至2021-5-5)
#45 0,23 * * * node /scripts/jd_speed_redpocke.js >> /scripts/logs/jd_speed_redpocke.log 2>&1
44 0,23 * * * node /scripts/jd_speed_redpocke.js >> /scripts/logs/jd_speed_redpocke.log 2>&1
#12 0,23 * * * node /scripts/jd_speed_redpocke.js >> /scripts/logs/jd_speed_redpocke.log 2>&1
11 0,23 * * * node /scripts/jd_speed_redpocke.js >> /scripts/logs/jd_speed_redpocke.log 2>&1

#超级直播间红包雨(活动时间不定期，出现异常提示请忽略。红包雨期间会正常)
0,1,30,31 0-23/1 * * * node /scripts/jd_live_redrain.js >> /scripts/logs/jd_live_redrain.log 2>&1
#0,1,30,31 0-23/1 * * * node /scripts/jd_live_redrain.js >> /scripts/logs/jd_live_redrain.log 2>&1
#30,31 20-23/1 9,12 3 * node /scripts/jd_live_redrain.js >> /scripts/logs/jd_live_redrain.log 2>&1
1,31 0-23/1 * * * node /scripts/jd_live_redrain.js >> /scripts/logs/jd_live_redrain.log 2>&1
#0,30 0-23/1 * * * node /scripts/jd_live_redrain.js >> /scripts/logs/jd_live_redrain.log 2>&1
#30,31 20-23/1 * * * node /scripts/jd_live_redrain.js >> /scripts/logs/jd_live_redrain.log 2>&1
#29,32 20-23/1 * * * node /scripts/jd_live_redrain.js >> /scripts/logs/jd_live_redrain.log 2>&1
#京东国际盲盒活动时间】2021年02月23日 起至 2021年03月31日 18:00:00
#35 7,12,23 * * * node /scripts/jd_global_mh.js >> /scripts/logs/jd_global_mh.log 2>&1
#环球挑战赛 第二季(活动时间：2021-03-08 至 2021-03-31)
#5 6,22 * * * node /scripts/jd_global.js >> /scripts/logs/jd_global.log 2>&1
4 6,22 * * * node /scripts/jd_global.js >> /scripts/logs/jd_global.log 2>&1
#5G超级盲盒 活动时间：2021-03-19到2021-04-30
#10 0,1-23/4 * * * node /scripts/jd_mohe.js >> /scripts/logs/jd_mohe.log 2>&1
9 0,1-23/4 * * * node /scripts/jd_mohe.js >> /scripts/logs/jd_mohe.log 2>&1
#0 0-23/1 * * * node /scripts/jd_city.js >> /scripts/logs/jd_city.log 2>&1
#45 0-23/1 * * * node /scripts/jd_city.js >> /scripts/logs/jd_city.log 2>&1
#京东手机狂欢城活动，每日可获得30+以上京豆（其中20京豆是往期奖励，需第一天参加活动后，第二天才能拿到）活动时间: 2021-4-1至2021-4-20
0 0-18/6,19-23/1 * * * node /scripts/jd_carnivalcity.js >> /scripts/logs/jd_carnivalcity.log 2>&1
#手机尚学季 活动时间：2021年3月15日 00:00:00-2021年3月19日 23:59:59
#0 0 * * * node /scripts/jd_xtg.js >> /scripts/logs/jd_xtg.log 2>&1
##############长期活动##############
# 签到
#7 0,17 * * * cd /scripts && node jd_bean_sign.js >> /scripts/logs/jd_bean_sign.log 2>&1
6 0,17 * * * cd /scripts && node jd_bean_sign.js >> /scripts/logs/jd_bean_sign.log 2>&1
# 东东超市兑换奖品
0,30 0,15,20 * * * node /scripts/jd_blueCoin.js >> /scripts/logs/jd_blueCoin.log 2>&1
1,31 0,15,20 * * * node /scripts/jd_blueCoin.js >> /scripts/logs/jd_blueCoin.log 2>&1
#10,28 0,15,20 * * * node /scripts/jd_blueCoin1000.js >> /scripts/logs/jd_blueCoin1000.log 2>&1
# 摇京豆
#6 0,23 * * * node /scripts/jd_club_lottery.js >> /scripts/logs/jd_club_lottery.log 2>&1
5 0,23 * * * node /scripts/jd_club_lottery.js >> /scripts/logs/jd_club_lottery.log 2>&1
# 东东农场
#15 6-18/6 * * * node /scripts/jd_fruit.js >> /scripts/logs/jd_fruit.log 2>&1
14 6-18/6 * * * node /scripts/jd_fruit.js >> /scripts/logs/jd_fruit.log 2>&1
#2,30 0 * * * node /scripts/jd_fruit.js >> /scripts/logs/jd_fruit.log 2>&1
# 宠汪汪
#45 */2,23 * * * node /scripts/jd_joy.js >> /scripts/logs/jd_joy.log 2>&1
#15 */2 * * * node /scripts/jd_joy.js >> /scripts/logs/jd_joy.log 2>&1
#10 */2 * * * node /scripts/jd_joy.js >> /scripts/logs/jd_joy.log 2>&1
44 */2,23 * * * node /scripts/jd_joy.js >> /scripts/logs/jd_joytime.log 2>&1
# 宠汪汪积分兑换京豆
0 0-16/8 * * * node /scripts/jd_joy_reward.js >> /scripts/logs/jd_joy_reward.log 2>&1
#0 0-16/8 * * * node /scripts/jd_joy_reward500.js >> /scripts/logs/jd_joy_reward500.log 2>&1
#1 0-16/8 * * * node /scripts/jd_joy_reward.js >> /scripts/logs/jd_joy_reward.log 2>&1
# 宠汪汪偷好友积分与狗粮
#5 0-23/4 * * * node /scripts/jd_joy_steal.js >> /scripts/logs/jd_joy_steal.log 2>&1
#13 0-21/3 * * * node /scripts/jd_joy_steal.js >> /scripts/logs/jd_joy_steal.log 2>&1
4 0-21/3 * * * node /scripts/jd_joy_steal.js >> /scripts/logs/jd_joy_steal.log 2>&1
# 宠汪汪喂食
#35 */1 * * * node /scripts/jd_joy_feedPets.js >> /scripts/logs/jd_joy_feedPets.log 2>&1
34 */1 * * * node /scripts/jd_joy_feedPets.js >> /scripts/logs/jd_joy_feedPets.log 2>&1
32 */1 * * * node /scripts/jd_joy_feedPets.js >> /scripts/logs/jd_joy_feedPets.log 2>&1
30 */1 * * * node /scripts/jd_joy_feedPets.js >> /scripts/logs/jd_joy_feedPets.log 2>&1
#17 */1 * * * node /scripts/jd_joy_feedPets.js >> /scripts/logs/jd_joy_feedPets.log 2>&1
# 宠汪汪邀请助力
#10 13-20/1 * * * node /scripts/jd_joy_run.js >> /scripts/logs/jd_joy_run.log 2>&1
9 13-20/1 * * * node /scripts/jd_joy_run.js >> /scripts/logs/jd_joy_run.log 2>&1
# 摇钱树
#23 */2 * * * node /scripts/jd_moneyTree.js >> /scripts/logs/jd_moneyTree.log 2>&1
22 */2 * * * node /scripts/jd_moneyTree.js >> /scripts/logs/jd_moneyTree.log 2>&1
# 东东萌宠
#35 6-18/6 * * * node /scripts/jd_pet.js >> /scripts/logs/jd_pet.log 2>&1
34 6-18/6 * * * node /scripts/jd_pet.js >> /scripts/logs/jd_pet.log 2>&1
# 京东种豆得豆
#0 7-22/1 * * * node /scripts/jd_plantBean.js >> /scripts/logs/jd_plantBean.log 2>&1
0 7-22/1 * * * node /scripts/jd_plantBean.js >> /scripts/logs/jd_plantBean.log 2>&1
1 7-22/1 * * * node /scripts/jd_plantBean.js >> /scripts/logs/jd_plantBean.log 2>&1
2 7-22/1 * * * node /scripts/jd_plantBean.js >> /scripts/logs/jd_plantBean.log 2>&1
# 京东全民开红包
#12 0-23/4 * * * node /scripts/jd_redPacket.js >> /scripts/logs/jd_redPacket.log 2>&1
11 0-23/4 * * * node /scripts/jd_redPacket.js >> /scripts/logs/jd_redPacket.log 2>&1
#12 1,21,23 * * * node /scripts/jd_redPacket.js >> /scripts/logs/jd_redPacket.log 2>&1
#59 0,20,22 * * * node /scripts/jd_redPacket.js >> /scripts/logs/jd_redPacket.log 2>&1
# 进店领豆
#6 0 * * * node /scripts/jd_shop.js >> /scripts/logs/jd_shop.log 2>&1
5 0 * * * node /scripts/jd_shop.js >> /scripts/logs/jd_shop.log 2>&1
# 京东天天加速
#28 */3 * * * node /scripts/jd_speed.js >> /scripts/logs/jd_speed.log 2>&1
27 */3 * * * node /scripts/jd_speed.js >> /scripts/logs/jd_speed.log 2>&1
25 */3 * * * node /scripts/jd_speed.js >> /scripts/logs/jd_speed.log 2>&1
# 东东超市
#31 0,1-23/2 * * * node /scripts/jd_superMarket.js >> /scripts/logs/jd_superMarket.log 2>&1
30 0,1-23/5 * * * node /scripts/jd_superMarket.js >> /scripts/logs/jd_superMarket.log 2>&1
# 取关京东店铺商品
#45 23 * * * node /scripts/jd_unsubscribe.js >> /scripts/logs/jd_unsubscribe.log 2>&1
44 23 * * * node /scripts/jd_unsubscribe.js >> /scripts/logs/jd_unsubscribe.log 2>&1
# 京豆变动通知
#25 10 * * * node /scripts/jd_bean_change.js >> /scripts/logs/jd_bean_change.log 2>&1
24 10 * * * node /scripts/jd_bean_change.js >> /scripts/logs/jd_bean_change.log 2>&1
# 京东抽奖机
#0 0,12,23 * * * node /scripts/jd_lotteryMachine.js >> /scripts/logs/jd_lotteryMachine.log 2>&1
#31 0,12,23 * * * node /scripts/jd_lotteryMachine.js >> /scripts/logs/jd_lotteryMachine.log 2>&1
0 0,12,23 * * * node /scripts/jd_lotteryMachine.js >> /scripts/logs/jd_lotteryMachine.log 2>&1
# 京东排行榜
#21 9 * * * node /scripts/jd_rankingList.js >> /scripts/logs/jd_rankingList.log 2>&1
20 9 * * * node /scripts/jd_rankingList.js >> /scripts/logs/jd_rankingList.log 2>&1
# 天天提鹅
#28 * * * * node /scripts/jd_daily_egg.js >> /scripts/logs/jd_daily_egg.log 2>&1
27 * * * * node /scripts/jd_daily_egg.js >> /scripts/logs/jd_daily_egg.log 2>&1
# 金融养猪
#25 * * * * node /scripts/jd_pigPet.js >> /scripts/logs/jd_pigPet.log 2>&1
24 * * * * node /scripts/jd_pigPet.js >> /scripts/logs/jd_pigPet.log 2>&1
# 点点券
#40 0,20 * * * node /scripts/jd_necklace.js >> /scripts/logs/jd_necklace.log 2>&1
39 0,20 * * * node /scripts/jd_necklace.js >> /scripts/logs/jd_necklace.log 2>&1
# 京喜工厂
#50 * * * * node /scripts/jd_dreamFactory.js >> /scripts/logs/jd_dreamFactory.log 2>&1
49 * * * * node /scripts/jd_dreamFactory.js >> /scripts/logs/jd_dreamFactory.log 2>&1
# 东东小窝
#46 6,23 * * * node /scripts/jd_small_home.js >> /scripts/logs/jd_small_home.log 2>&1
45 6,23 * * * node /scripts/jd_small_home.js >> /scripts/logs/jd_small_home.log 2>&1
# 东东工厂
#26 * * * * node /scripts/jd_jdfactory.js >> /scripts/logs/jd_jdfactory.log 2>&1
25 * * * * node /scripts/jd_jdfactory.js >> /scripts/logs/jd_jdfactory.log 2>&1
# 赚京豆(微信小程序)
#12 8,18 * * * node /scripts/jd_syj.js >> /scripts/logs/jd_syj.log 2>&1
11 8,18 * * * node /scripts/jd_syj.js >> /scripts/logs/jd_syj.log 2>&1
8 8,18 * * * node /scripts/jd_syj1.js >> /scripts/logs/jd_syj1.log 2>&1
# 京东快递签到
#47 1 * * * node /scripts/jd_kd.js >> /scripts/logs/jd_kd.log 2>&1
46 1 * * * node /scripts/jd_kd.js >> /scripts/logs/jd_kd.log 2>&1
# 京东汽车(签到满500赛点可兑换500京豆)
#0 0 * * * node /scripts/jd_car.js >> /scripts/logs/jd_car.log 2>&1
#0 8 * * * node /scripts/jd_car.js >> /scripts/logs/jd_car.log 2>&1
0 0 * * * node /scripts/jd_car.js >> /scripts/logs/jd_car.log 2>&1
# 领京豆额外奖励(每日可获得3京豆)
#23 4 * * * node /scripts/jd_bean_home.js >> /scripts/logs/jd_bean_home.log 2>&1
22 4 * * * node /scripts/jd_bean_home.js >> /scripts/logs/jd_bean_home.log 2>&1
# 微信小程序京东赚赚
#6 0,1,2,11 * * * node /scripts/jd_jdzz.js >> /scripts/logs/jd_jdzz.log 2>&1
5 0,1,2,11 * * * node /scripts/jd_jdzz.js >> /scripts/logs/jd_jdzz.log 2>&1
# crazyJoy自动每日任务
#30 7,12,23 * * * node /scripts/jd_crazy_joy.js >> /scripts/logs/jd_crazy_joy.log 2>&1
29 7,12,23 * * * node /scripts/jd_crazy_joy.js >> /scripts/logs/jd_crazy_joy.log 2>&1
# 京东汽车旅程赛点兑换金豆
#0 0 * * * node /scripts/jd_car_exchange.js >> /scripts/logs/jd_car_exchange.log 2>&1
0 0 * * * node /scripts/jd_car_exchange.js >> /scripts/logs/jd_car_exchange.log 2>&1
# 导到所有互助码
#23 7 * * * node /scripts/jd_get_share_code.js >> /scripts/logs/jd_get_share_code.log 2>&1
22 7 * * * node /scripts/jd_get_share_code.js >> /scripts/logs/jd_get_share_code.log 2>&1
# 口袋书店
#38 8,12,18 * * * node /scripts/jd_bookshop.js >> /scripts/logs/jd_bookshop.log 2>&1
37 8,12,18 * * * node /scripts/jd_bookshop.js >> /scripts/logs/jd_bookshop.log 2>&1
# 京喜农场
#30 9,12,18 * * * node /scripts/jd_jxnc.js >> /scripts/logs/jd_jxnc.log 2>&1
29 9,11,17 * * * node /scripts/jd_jxnc.js >> /scripts/logs/jd_jxnc.log 2>&1
# 签到领现金
#10 */4 * * * node /scripts/jd_cash.js >> /scripts/logs/jd_cash.log 2>&1
9 */4 * * * node /scripts/jd_cash.js >> /scripts/logs/jd_cash.log 2>&1
# 京喜app签到
#29 7 * * * node /scripts/jx_sign.js >> /scripts/logs/jx_sign.log 2>&1
28 7 * * * node /scripts/jx_sign.js >> /scripts/logs/jx_sign.log 2>&1
# 闪购盲盒
#47 8 * * * node /scripts/jd_sgmh.js >> /scripts/logs/jd_sgmh.log 2>&1
46 8 * * * node /scripts/jd_sgmh.js >> /scripts/logs/jd_sgmh.log 2>&1
# 京东秒秒币
#10 6 * * * node /scripts/jd_ms.js >> /scripts/logs/jd_ms.log 2>&1
9 6 * * * node /scripts/jd_ms.js >> /scripts/logs/jd_ms.log 2>&1
#美丽研究院
#41 7,12,19 * * * node /scripts/jd_beauty.js >> /scripts/logs/jd_beauty.log 2>&1
40 7,12,19 * * * node /scripts/jd_beauty.js >> /scripts/logs/jd_beauty.log 2>&1
#京东保价
#41 0,23 * * * node /scripts/jd_price.js >> /scripts/logs/jd_price.log 2>&1
#4 0,23 * * * node /scripts/jd_price.js >> /scripts/logs/jd_price.log 2>&1
#京东极速版签到+赚现金任务
#21 1,6 * * * node /scripts/jd_speed_sign.js >> /scripts/logs/jd_speed_sign.log 2>&1
20 1,6 * * * node /scripts/jd_speed_sign.js >> /scripts/logs/jd_speed_sign.log 2>&1
#监控crazyJoy分红
#10 12 * * * node /scripts/jd_crazy_joy_bonus.js >> /scripts/logs/jd_crazy_joy_bonus.log 2>&1
9 12 * * * node /scripts/jd_crazy_joy_bonus.js >> /scripts/logs/jd_crazy_joy_bonus.log 2>&1
#京喜财富岛
#15 */2 * * * node /scripts/jd_cfd.js >> /scripts/logs/jd_cfd.log 2>&1
# 删除优惠券(默认注释，如需要自己开启，如有误删，已删除的券可以在回收站中还原，慎用)
#20 9 * * 6 node /scripts/jd_delCoupon.js >> /scripts/logs/jd_delCoupon.log 2>&1
#家庭号
#10 6,7 * * * node /scripts/jd_family.js >> /scripts/logs/jd_family.log 2>&1
9 6,7 * * * node /scripts/jd_family.js >> /scripts/logs/jd_family.log 2>&1
#京东直播（又回来了）
30-50/5 12,23 * * * node /scripts/jd_live.js >> /scripts/logs/jd_live.log 2>&1
10-30/5 12,23 * * * node /scripts/jd_live.js >> /scripts/logs/jd_live.log 2>&1
#京小兑
#13 8,16,20 * * * node /scripts/jd_jxd.js >> /scripts/logs/jd_jxd.log 2>&1
12 5,8,16,20,23 * * * node /scripts/jd_jxd.js >> /scripts/logs/jd_jxd.log 2>&1
#京东会员-摇京豆
#3 10 1 * * node /scripts/jd_shakeBean.js >> /scripts/logs/jd_shakeBean.log 2>&1
#50 9 1 * * node /scripts/jd_shakeBean.js >> /scripts/logs/jd_shakeBean.log 2>&1
2 10 1 * * node /scripts/jd_shakeBean.js >> /scripts/logs/jd_shakeBean.log 2>&1
#京喜工厂plus
#20 1,18 * * * node /scripts/jx_factory_component.js >> /scripts/logs/jx_factory_component.log 2>&1
19 1,18 * * * node /scripts/jx_factory_component.js >> /scripts/logs/jx_factory_component.log 2>&1
#个护爱消除
#40 * * * * https://raw.githubusercontent.com/shylocks/Loon/main/jd_xxl_gh.js, tag=个护爱消除, img-url=https://raw.githubusercontent.com/yogayyy/Scripts/master/Icon/shylocks/jd_xxl_gh.png, enabled=true
35 * * * * node /scripts/jd_xxl_gh.js >> /scripts/logs/jd_xxl_gh.log 2>&1
#东东爱消除
30 * * * * node /scripts/jd_axc.js >> /scripts/logs/jd_axc.log 2>&1
#百变大咖秀
#10 10,11 * * 2-5 https://raw.githubusercontent.com/i-chenzhe/qx/main/jd_entertainment.js, tag=百变大咖秀,  enabled=true
8 10,11 * * 2-5 node /scripts/jd_entertainment.js >> /scripts/logs/jd_entertainment.log 2>&1
#摇一摇
1 20 * * * node /scripts/jd_shake.js >> /scripts/logs/jd_shake.log 2>&1
#财富岛提现
0 0 * * * node /scripts/jx_cfdtx.js >> /scripts/logs/jx_cfdtx.log 2>&1
#京东小魔方
12 0 * * * node /scripts/jd_xmf.js >> /scripts/logs/jd_xmf.log 2>&1
16 10 * * * node /scripts/jd_xmf.js >> /scripts/logs/jd_xmf.log 2>&1
#京东超市-大转盘
#3 10 * * * https://raw.githubusercontent.com/i-chenzhe/qx/main/z_marketLottery.js, tag=京东超市-大转盘,  enabled=true
2 10 * * * node /scripts/z_marketLottery.js >> /scripts/logs/z_marketLottery.log 2>&1
#粉丝互动
#2 10 * * * https://raw.githubusercontent.com/i-chenzhe/qx/main/jd_fanslove.js, tag=粉丝互动,  enabled=true
1 10 * * * node /scripts/jd_fanslove.js >> /scripts/logs/jd_fanslove.log 2>&1
#超级品类日
#13 8,10 8-15 3 * https://raw.githubusercontent.com/i-chenzhe/qx/main/z_superDay.js, tag=超级品类日, enabled=true
9 8,10 * * * node /scripts/z_superDay.js >> /scripts/logs/z_superDay.log 2>&1
#粉丝互动活动获取
#3 10 * * * https://raw.githubusercontent.com/i-chenzhe/qx/main/jd_getFanslove.js
8 10 * * * node /scripts/jd_getFanslove.js >> /scripts/logs/jd_getFanslove.log 2>&1
#众筹许愿池
#10 10,15 13-20 3 * https://raw.githubusercontent.com/i-chenzhe/qx/main/z_wish.js, tag=众筹许愿池, enabled=true
7 10,15,22 * * * node /scripts/z_wish.js >> /scripts/logs/z_wish.log 2>&1
#联想集卡活动
#12 15 15-29 3 * https://raw.githubusercontent.com/i-chenzhe/qx/main/z_lenovo.js, tag=联想集卡活动, enabled=true
6 10 15-29 3 *  node /scripts/z_lenovo.js >> /scripts/logs/z_lenovo.log 2>&1
#金口碑奖投票
#5 10 * 3 * https://raw.githubusercontent.com/i-chenzhe/qx/main/z_mgold.js, tag=金口碑奖投票, enabled=true
11 10 * 3 * node /scripts/z_mgold.js >> /scripts/logs/z_mgold.log 2>&1
#母婴-跳一跳
#5 8,14,20 17-25 3 * https://raw.githubusercontent.com/i-chenzhe/qx/main/z_mother_jump.js, tag=母婴-跳一跳, enabled=true
13 8,14,20 17-25 3 * node /scripts/z_mother_jump.js >> /scripts/logs/z_mother_jump.log 2>&1
#一加盲盒
#11 12 17-30 3 * https://raw.githubusercontent.com/i-chenzhe/qx/main/z_oneplus.js, tag=一加盲盒, enabled=true
19 12 17-30 3 * node /scripts/z_oneplus.js >> /scripts/logs/z_oneplus.log 2>&1
#5G超级盲盒
#5 1,6,11,16,21 * 3-4 * https://raw.githubusercontent.com/i-chenzhe/qx/main/z_super5g.js, tag=5G超级盲盒, enabled=true
#4 1,6,11,16,21 * 3-4 * node /scripts/z_super5g.js >> /scripts/logs/z_super5g.log 2>&1
#美的家电节
#15 10 10-31 3 * https://raw.githubusercontent.com/i-chenzhe/qx/main/z_unionPoster.js, tag=美的家电节, enabled=true
59 10 10-31 3 * node /scripts/z_unionPoster.js >> /scripts/logs/z_unionPoster.log 2>&1

