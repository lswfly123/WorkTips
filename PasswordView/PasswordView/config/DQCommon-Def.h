//
//  DQCommon-Def.h
//  DQSDKService
//
//  Created by MAC_DEV on 14-9-2.
//  Copyright (c) 2014年 DQ. All rights reserved.
//

#ifndef DQSDKService_DQCommon_Def_h
#define DQSDKService_DQCommon_Def_h



#define ScreenWIDTH  [UIScreen mainScreen].bounds.size.width
#define ScreenHEIGHT [UIScreen mainScreen].bounds.size.height
#define kRatioFromIphone6        (ScreenWIDTH/375)
#define kHeightFromIphone6       (ScreenHEIGHT/667)
#define kRatioW    (ScreenWIDTH/375)
#define kRatioH    (ScreenHEIGHT/667)

#define CurrentWIDTH  self.view.frame.size.width
#define CurrentHEIGHT self.view.frame.size.height

#define CurrentViewWIDTH  self.frame.size.width
#define CurrentVIewHEIGHT self.frame.size.height

#define DQ_VERSION_NUM                  @"1.0.0"
#define DQ_VERSION                      @"version"
#define DQ_IPHONE                       @"iPhone"
#define DQ_OS                           @"os"

//外网
//#define DQ_SERVER_ADDRESS                 @"https://t.aemoney.com:7443/cw/api.do"
//#define DQ_PICTUREDOWNLOWND_ADDRESS     @"https://t.aemoney.com:8443/pactp/downloadFile.htm?"
//#define DQ_PICTUREUPLOAD_ADDRESS        @"https://t.aemoney.com:8443/pactp/uploadFile.htm"

//内网开发
//#define DQ_SERVER_ADDRESS                @"http://192.168.100.106:11520/cw/api.do"
//#define DQ_PICTUREDOWNLOWND_ADDRESS     @"http://192.168.100.201:10220/pactp/downloadFile.htm?"
//#define DQ_PICTUREUPLOAD_ADDRESS        @"http://192.168.100.201:10220/pactp/uploadFile.htm"

//外网测试
//#define DQ_SERVER_ADDRESS               @"http://121.40.208.138:19920/cw/api.do"

//内网测试

#define DQ_SERVER_ADDRESS                 @"http://192.168.100.205:11520/cw/api.do"                                                                                                                                                                                                                                                                                                                     
//#define DQ_SERVER_ADDRESS                @"http://192.168.1.140:11520/cw/api.do"


#define BP_PRIVATE_KEY                  @"MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQClX5hW7BJY4rClV3pdWlrYa2uocXZT19/xDe/FOrJjIsAvSz8/w5dQPNYRtUEmaFUZIQGEn98ou+5K2LNTFmC+20VYG9irOEyEnxdPkdwpsi3qWErAoQDXT5ONoacLhnQN+YBwNSvrulQDyFkVYtsr9JOA3ETLusVlLcd6y13ypCps8KOFBkRw/x3L6JVv+j7Hy6S3zxhDEfzinSYImOiiQNemUqYvkgu7ZUVXA0Lm0bwkvPB4SUbaWDGbgd/UDO9Tr8NF27PcqBEtUwM7UzL99swJt/nyvx7ZQ4TRQkATelLSRnbnztVQJXtn92vX3R0iPwkN3Gkzw32NvMQ9RkRJAgMBAAECggEAAltYanS21jl01wZmIgp1nPv67s2fKBa9hEv0jNUHUc5e+s2RuzDoaSZUzq/Mm+WEwPTtdpxoq8Xx4XMxKw/4lP++/0B2WApXXNR/moyznIyDhwF3H0OsJWVm7u/M16c05DYYFIFNfPCM3fju/BUKlpfHumBpQpYI1iZO33sifaC/dEinWFgqdBoqCriWLcmdWdDBn6lDVJb1AlsNZXgZk/16chdomMja5HQT02wxGQbvFyphg9yqgJ6xjGF0U+pdS8ErYB/OrBT+68zKq0M0D/jN8YYGb/k6Bom00hbHvuFQpHeigDL7qDZ9h3Vy1KFwH3gRgsWlmn7BCP/3nt+fGQKBgQDSbXChTsTN9NtvasJ+VzFr3C/cTkgawNdRl8d1zrrJgLUoW34eOvHm2daitvmd3ZwrIKzaBEzu9BYW7xWuE7Yi/7/JCYcrVk4X6NMigds3tUttphjw7vU5FVgRs84Vp3SYRHU+ipQZOPkQMOYBu1sKEfyVvXFpyhB+VMEl7PFSiwKBgQDJMEIqgPE1ueoVMdVC2UCQMtewLYhc7rCjQgwGsg6fYWSk/qxTRwC2VpoSCu2LfFF9zWPFzdZrSA37IgGnPAm4j4+8fCSflCWfJeFTR3t0qF0Aj3v2YIXsaHJ6TCiP7aZ57aw6DeKEZYXXxMdUtezDVC5yiRyBSucz6lGDOPfC+wKBgFEyy9hi9cxnpNlMf/qSmM5/K7S+PFKegTfJ8rzB5g/la4JEM9lkc33aJ1moc4/4OM/njuud5zX52CBHZ71Be/HrcE0aMR+G8SGGxRo2s6m+enm4Mz2dZ+D8HHzQPkDa2kH7gKZ+gQFum6UkyUx3yHyNTkNV09K3lz+4YsPIt6JbAoGAU6stKS38omJR9kSGM0nUbuOmDY+yESv2675Q8AvmxuOjDncXRX7Wzf3QD0baKVMnNNFQ9/c1f+I0ZkdrNphiVo3lsfZS6MacqsX/IjotHoPSQaRqYjkcGQgK6892YvzrafOs12vk0zjBY81jNFiAQW9l7Z4V67Mx2cZN5euwJjcCgYEArR7axLag8QoCZXkc/ob9edvDjrqphg1/4lS4a08spozuJzDCHgZreEESXY7xMqrYn3XFhsvek9o4XtenPx0/GgKCQv8IjBpckISd5rp8lLmwpSFrwZFWPjQCDy2pQrFv7Sk0NrapzU4gin6sICwMb7jo+XtzlTMKAo2zaH6lFwg="
#define DQ_PUBLIC_KEY       @"MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAtMJNd/oPO6yjQxdHogt9JYR8iaIvOuYUgDPJfTk6kDCUYGGtEiZqamUvy/rmwGUBaOXHy+NAZHhccCpVbk6YV3M/pF/0xtojBbyStNzRtIqJAZexBddgnHPJbjBr8n2i9Jkw0hF6hJEZUsR4dfYbH4Rrk6ePaWTZzkE1od3f16GHndhNA3pN062FqjDCTfledfnPq1O+bE1ZPX5FBDzSJfohaOU+/DUitk028RE3rEgPJWvK8g1cLWKNKBiTew0oCMIlc114ZcwrraE67p2/1wgLWxA8djX21XyCNSBHcE3HkFECwqyYeYwoz3oQfnMGQS41veFlWL9iPvzTERNecQIDAQAB"



/*************************api_name Define **********************/
/** 下发短信 */
#define  send_sms_sec                   @"daqian.citizenwallet.send_sms_sec"
/** 验证注册验证码 */
#define  kconfirm_register_code_sec     @"daqian.citizenwallet.confirm_register_code_sec"
/** 注册身份验证 */
#define  kconfirm_register_info_sec     @"daqian.citizenwallet.confirm_register_info_sec"
/** 完成注册 */
#define kregister_sec                   @"daqian.citizenwallet.register_sec"
/** 注册协议 */
#define kprotocol_info                  @"daqian.citizenwallet.protocol_info"
/** 绑定市民卡 */
#define kbind_citizen_card_sec          @"daqian.citizenwallet.bind_citizen_card_sec"
/** 验证银行卡并发短信 */
#define KVERIFY_CARD_SEC                @"daqian.citizenwallet.verify_card_sec"
/** 绑定银行卡 */
#define kbind_bank_card_sec             @"daqian.citizenwallet.bind_bank_card_sec"
/** 登录 */
#define klogin_sec                      @"daqian.citizenwallet.login_sec"
/** 忘记登录密码 */
#define kreset_login_password_sec       @"daqian.citizenwallet.reset_login_password_sec"
/** 忘记交易密码 */
#define kconfirm_trade_pwd_code_sec     @"daqian.citizenwallet.confirm_trade_pwd_code_sec"
#define kreset_trade_password_sec       @"daqian.citizenwallet.reset_trade_password_sec"
/** 储值卡列表 */
#define kprepaid_cards_sec              @"daqian.citizenwallet.prepaid_cards_sec"
/** 储值卡详情 */
#define kprepaid_card_info_sec          @"daqian.citizenwallet.prepaid_card_info_sec"
//储值卡资金明细
#define kPrepaid_Card_Order_List_Sec     @"daqian.citizenwallet.prepaid_card_order_list_sec"

#define kquery_home_activities          @"daqian.citizenwallet.query_home_activities"
/** 查询个人信息 */
#define personal_info_sec             @"daqian.citizenwallet.personal_info_sec"
/** 退出登录 */
#define logout_sec                    @"daqian.citizenwallet.logout_sec"
/** 我的二维码 */
#define personal_qr_code_sec          @"daqian.citizenwallet.personal_qr_code_sec"
#define area_cascad                   @"daqian.citizenwallet.area_cascade"
#define bank_cards_quantity_sec       @"daqian.citizenwallet.bank_cards_quantity_sec"

/** 银行卡列表 */
#define bank_cards_sec                @"daqian.citizenwallet.bank_cards_sec"
/** 删除银行卡 */
#define del_bank_card_sec             @"daqian.citizenwallet.del_bank_card_sec"
#define prepaid_card_total_amount_sec @"daqian.citizenwallet.prepaid_card_total_amount_sec"
#define modify_trade_password_sec     @"daqian.citizenwallet.modify_trade_password_sec"
/** 修改手机号  */
#define kmodify_mobile_sec            @"daqian.citizenwallet.modify_mobile_sec"
/** 查询个人账户信息  */
#define kpersonal_account_detail      @"daqian.citizenwallet.personal_account_detail"
/** 查询免密额度  */
#define kexempt_pwd_limits            @"daqian.citizenwallet.exempt_pwd_limits"
/** 免密设置  */
#define kexempt_pwd_set_sec           @"daqian.citizenwallet.exempt_pwd_set_sec"
/** 修改支付方式顺序  */
#define kupdate_pay_way_order_sec     @"daqian.citizenwallet.update_pay_way_order_sec"

/** 查询个人账户信息  */
#define kpersonal_account_detail      @"daqian.citizenwallet.personal_account_detail"
/** 查询免密额度  */
#define kexempt_pwd_limits            @"daqian.citizenwallet.exempt_pwd_limits"
/** 验证支付密码  */
#define kverify_trade_pwd_sec         @"daqian.citizenwallet.verify_trade_pwd_sec"
/** 免密设置  */
#define kexempt_pwd_set_sec           @"daqian.citizenwallet.exempt_pwd_set_sec"

/** 未读消息数  */
#define kunread_msg_quantity          @"daqian.citizenwallet.unread_msg_quantity"
/** 消息列表  */
#define knotice_list_sec              @"daqian.citizenwallet.notice_list_sec"
/** 查询消息详情  */
#define kmsg_info_sec                 @"daqian.citizenwallet.msg_info_sec"
/** 修改消息状态  */
#define kupdate_notice_state_sec      @"daqian.citizenwallet.update_notice_state_sec"



//银行卡列表
#define BANK_CARD_SEC                 @"daqian.citizenwallet.bank_cards_sec"
#define del_bank_card_sec             @"daqian.citizenwallet.del_bank_card_sec"
#define prepaid_card_total_amount_sec @"daqian.citizenwallet.prepaid_card_total_amount_sec"
#define modify_trade_password_sec     @"daqian.citizenwallet.modify_trade_password_sec"
//确认支付密码
#define CONFIRM_TRADE_PWD_SEC         @"daqian.citizenwallet.confirm_trade_pwd_sec"


#define protocol_info                  @"daqian.citizenwallet.protocol_info"

// 商家列表
#define Merchant_Activities            @"daqian.citizenwallet.query_merchant_activities"
// merchant_category 商户分类信息
#define Merchant_category              @"daqian.citizenwallet.merchant_category"
// daqian.citizenwallet.hot_merchant
#define Hot_merchant                   @"daqian.citizenwallet.hot_merchant"

// 餐饮搜索
#define kMerchants                         @"daqian.citizenwallet.merchants"
// 查询该商户对应的储值卡介绍(商户详情的介绍)
#define Prepaid_Card_Introduce             @"daqian.citizenwallet.prepaid_card_introduce"
// 查询该商户对应的储值卡介绍 详情介绍
#define MERCHANT_PREPAID_CARD              @"daqian.citizenwallet.merchant_prepaid_card"
// 下单购买储值卡
#define BUY_PRODUCT_SEC                   @"daqian.citizenwallet.buy_product_sec"
// 订单支付接口
#define Order_Pay_Card                     @"daqian.citizenwallet.order_pay_sec"
// 支付方式
#define Pay_Ways_Card                      @"daqian.citizenwallet.pay_ways_sec"
// 请求商户详情(新的 传入 id)
#define BP_INFO_SEC                        @"daqian.citizenwallet.bp_info_sec"
// 3，请求订单编号
#define REQUEST_ORDERNO_SEC                @"daqian.citizenwallet.request_orderno_sec"
//忘记交易密码
#define kconfirmTradePswCode               @"daqian.citizenwallet.confirm_trade_pwd_code_sec"
//发送验证码
#define ksendSMSApi                        @"daqian.citizenwallet.send_sms_sec"
//解绑车牌
#define kunbindLicensePlateSec             @"daqian.citizenwallet.unbind_license_plate_sec"
//车牌列表
#define kcitizenwalletList                 @"daqian.citizenwallet.list_license_plate_sec"
//缴费信息
#define kcitizenwalletParkingLogsSec       @"daqian.citizenwallet.parking_logs_sec"
//修改支付密码
#define kresetTradePasswordSec             @"daqian.citizenwallet.reset_trade_password_sec"

//扫一扫
#define kscan_qr_code_sec                       @"daqian.citizenwallet.scan_qr_code_sec"

//用户扫描二维码接口
#define kGET_PREPAYCARDS_BY_QRCODE_SEC     @"daqian.citizenwallet.get_prepaycards_by_qrcode_sec"

//查询用户免密设置与额度
#define kGET_EXEMPTPWD_LIMIT                @"daqian.citizenwallet.get_exempt_pwd_limit"

//请求用户二维码
#define REQUEST_PAY_CODE_SEC                @"daqian.citizenwallet.request_pay_code_sec"
//查询用户二维码是否有支付订单
#define GET_USER_PAY_CODE_ORDER_SEC         @"daqian.citizenwallet.get_user_pay_code_order_sec"
//用户支付订单
#define kpay_User_Order_Sec                @"daqian.citizenwallet.pay_user_order_sec"

//商户关联店铺
#define ksellerOwnBpinfoSec                @"daqian.citizenwallet.seller.own_bpinfo_sec"

//切换商户
#define kSellerLoginBpSec                  @"daqian.citizenwallet.seller.login_bp_sec"
//查看二维码收款列表
#define ksellerQRcodeOrdersSec             @"daqian.citizenwallet.seller.qr_code_orders_sec"

//扫描用户付款二维码
#define SELLER_QR_PAY_SEC                 @"daqian.citizenwallet.seller.qr_pay_sec"
//商户扫描用户次卡付款二维码
#define kseller_qr_pay_by_couchers_sec      @"daqian.citizenwallet.seller.qr_pay_by_couchers_sec"

//请求用户次卡列表
#define kqr_couchers_list_sec               @"daqian.citizenwallet.seller.qr_couchers_list_sec"
//商户获取用户二维码付款结果
#define GET_USER_PAY_CODE_RESULT_SEC      @"daqian.citizenwallet.get_user_pay_code_result_sec"
// 查询区域列表
#define LIST_AREA_SEC                     @"daqian.citizenwallet.list_area_sec"
// 店员列表 (卖家版)
#define SELLER_ASSISTANTS_SEC              @"daqian.citizenwallet.seller.assistants_sec"
// 删除店员接口
#define DELETE_ASSISTANTS_SEC              @"daqian.citizenwallet.seller.delete_assistant_sec"
// 店主二维码
#define SELLER_QR_CODE_SEC                 @"daqian.citizenwallet.seller.qr_code_sec"
// 退款列表
#define  REFUND_LIST_SEC                   @"daqian.citizenwallet.seller.refund_list_sec"
// 退款审核
#define  REFUND_AUDIT_SEC                  @"daqian.citizenwallet.seller.refund_audit_sec"
// 可提现金额
#define  WITHDRAW_AMOUNT_SEC               @"daqian.citizenwallet.seller.withdraw_amount_sec"
// 提现
#define  SELLER_WITHDRAW_SEC               @"daqian.citizenwallet.seller.withdraw_sec"
// 所有营业额 账号管理
#define  SALES_STATISTIC_SEC               @"daqian.citizenwallet.seller.sales_statistic_sec"
// 店员登录
#define  LOGIN_BY_ADMIN_QRCODE_SEC         @"daqian.citizenwallet.login_by_admin_qrcode_sec"
// 4.1.2	用户当前关联商户
#define  SELLER_CUR_BPINFO_SEC            @"daqian.citizenwallet.seller.cur_bpinfo_sec"
//店小二退出关联
#define  LOGOUT_CUR_BP_SEC                 @"daqian.citizenwallet.seller.logout_cur_bp_sec"


//影片基本信息
#define  kfilm_info_sec                                 @"daqian.citizenwallet.film_info_sec"
//影院对应影片播放列表
#define  kfilm_relation_cinemas_show_list_sec           @"daqian.citizenwallet.film_relation_cinemas_show_list_sec"
//影院对应影片信息
#define  kcinema_relation_films_show_list_sec           @"daqian.citizenwallet.cinema_relation_films_show_list_sec"
//根据影院,影片,时间查找对应场次信息列表
#define  kcinema_film_showdate_relation_show_list_sec                        @"daqian.citizenwallet.cinema_film_showdate_relation_show_list_sec"

//查询静态信息接口
#define  kget_static_date                        @"daqian.citizenwallet.get_static_data"
//用户删除市民卡接口
#define  kdelete_citizen_card_sec                @"daqian.citizenwallet.delete_citizen_card_sec"
//用户查找市民卡接口
#define  kget_citizen_card                       @"daqian.citizenwallet.get_citizen_card"



#define kcancel_cinema_sec                     @"daqian.citizenwallet.cancel_cinema_sec"

#define kcancel_order_sec                      @"daqian.citizenwallet.cancel_order_sec"
//锁定座位
#define klock_order_seats @"daqian.citizenwallet.lock_order_seats"
//影片列表
#define kFilm_List_Sec                     @"daqian.citizenwallet.film_list_sec"
//我的电影票
#define kCinema_Orders_Sec                  @"daqian.citizenwallet.cinema_orders_sec"
//影院列表
#define kCinema_List_Sec                  @"daqian.citizenwallet.cinema_list_sec"
//购买电影票
#define kBuy_Cinema_Sec                   @"daqian.citizenwallet.buy_cinema_sec"
//购买电影票确认密码
#define kbuy_cinema_confirm_trade_pwd_sec    @"daqian.citizenwallet.buy_cinema_confirm_trade_pwd_sec"
//电影票历史订单
#define kget_lock_order_sec              @"daqian.citizenwallet.get_lock_order_sec"
//获取蜘蛛网id
#define kget_spider_bp_id                  @"daqian.citizenwallet.get_static_data"

#define kactive_page_sec                    @"daqian.citizenwallet.active_page_sec"

/** 活动权限 */
#define  kactive_auth                      @"daqian.citizenwallet.active_auth"
/** 获取活动时间 */
#define  kget_active_time                  @"daqian.citizenwallet.get_active_time"

/**************************key Define***************************/
#define kUserAgent                      @"user_agent"
#define kApiName                        @"api_name"
#define kDeviceToken                    @"device_token"
#define kSession_id                     @"session_id"
#define kDq_code                        @"dq_code"
#define kShow_msg                       @"show_msg"

#define VERSION                         @"1.0"
#define SIGN_TYPE                       @"RSA"

//DQCODE represent
#define SERVER_SUCCESS_CODE             @"10000"
#define Session_id_faild                @"96200"

#define kscene_type                     @"scene_type"
#define kServiceName                     @"DioMerchant"
#define kSession_id                      @"session_id"
#define kStatistics_type                 @"statistics_type"
#define kUser_Name                       @"user_name"
#define kQR_CODE                         @"qr_code"

#define kstore_name                     @"store_name"
#define klongitude                      @"longitude"
#define klatitude                       @"latitude"
#define kindex                          @"index"
#define kpage_size                      @"page_size"
#define ktotal                          @"total"
#define kstore_list                     @"store_list"
#define kstore_no                       @"store_no"
#define kstore_name                     @"store_name"
#define kvs_vip                         @"vs_vip"
#define kaddress                        @"address"
#define ktelephone_number               @"telephone_number"
#define kdistance                       @"distance"
/** 手机号 */
#define kmobile                         @"mobile"
/** 业务场景 */
#define kbiz_scenario                   @"biz_scenario"
#define kcard_no                        @"card_no"
#define kbank_card_no                   @"bank_card_no"
#define kSimple_Verify_Card             @"simple_verify_card"
#define kpage_type                      @"page_type"
#define kactivity_no                    @"activity_no"
#define kdevice_type                    @"device_type"

//二维码类型
#define kqr_code_type                   @"qr_code_type"

//新卡支付
#define KNEW_CARD_PAY                   @"new_card_pay"
//产品类型
#define PRODUCT_TYPE                    @"product_type"

#define kregister                       @"register"
#define kcitizen_card_no                @"citizen_card_no"
#define klogin                          @"login"
#define kreset_login_pwd                @"reset_login_pwd"
#define kreset_trade_pwd                @"reset_trade_pwd"
/** 短信验证码 */
#define ksms_valid_code                 @"sms_valid_code"
#define kget_token                      @"get_token"
#define kregister                       @"register"
#define kbind_bank_card                 @"bind_bank_card"
#define kupdate_mobile                  @"update_mobile"


#define ktoken                          @"token"
/** 登录密码 */
#define kpassword                       @"password"
#define kold_password                   @"old_password"

/** 交易密码 */
#define ktrade_pwd                      @"trade_pwd"
/** 身份证姓名 */
#define kidentity_name                  @"identity_name"
/** 身份证号 */
#define kidentity_no                    @"identity_no"
/** 绑定银行卡 */
#define kbind_bank_card                 @"bind_bank_card"
/** 简单验卡 */
#define ksimple_verify_card             @"simple_verify_card"
/** 银行卡数量 */
#define kcard_amount                 @"card_amount"
/** 银行卡索引 */
#define kcard_index                  @"card_index"
/** 免密支付快关是否开启 */
#define kexempt_pwd_open             @"exempt_pwd_open"
/** 免密金额 */
#define kexempt_limit                @"exempt_limit"
/** 是否免密 */
#define koperation                   @"operation"
/** 免密额度 */
#define kamount                      @"amount"
/** 免密支付快关是否开启 */
#define kexempt_pwd_limit            @"exempt_pwd_limits"
/** 支付顺序数组 */
#define kpay_ways                    @"pay_ways"

#define kbiz_type                    @"biz_type"

#define kshow_id                      @"show_id"
#define kseat_infos                   @"seat_infos"
#define kprice                          @"price"

#define kprepaid_card_no                 @"prepaid_card_no"

#define kdelivery_list                  @"delivery_list"
#define korder_no                       @"order_no"
#define kdesc                           @"desc"
#define kpay_code                       @"pay_code"

#define kdelivery_code                  @"delivery_code"
#define kcontent                        @"content"
#define kindex                          @"index"
#define kpromotion_list                 @"promotion_list"
#define kid                             @"id"
#define ktitle                          @"title"
#define kimage_url                      @"image_url"
#define kpromotion_url                  @"promotion_url"

#define kcategory_name                  @"category_name"
#define kcategory_no                  @"category_no"
#define kcategory_list                  @"category_list"
#define kproduct_list                  @"product_list"
#define kproduct_detail_list         @"product_detail_list"
#define kproduct_no                  @"product_no"
#define kproduct_name                  @"product_name"
#define kquantity                  @"quantity"
#define kunit_price                  @"unit_price"
#define ksell_price                  @"sell_price"
#define kimage_url                  @"image_url"
#define kis_outer                  @"is_outer"
#define kouter_url                  @"outer_url"
#define kin_shopping_cart                  @"in_shopping_cart"
#define khas_collect                 @"has_collect"
#define kproduct                 @"product"
#define ksales_list             @"sales_list"
#define ksales_amount           @"sales_amount"
#define kstatistics_date        @"statistics_date"
//支付金额
#define kamount                 @"amount"
//卡面额
#define kdenomination           @"denomination"
//商户号
#define kbp_id                  @"bp_id"
#define kPAYWAYID               @"pay_way_id"

//影片id
#define kfilm_id    @"film_id"
//影院id
#define kcinema_id    @"cinema_id"
//放映日期
#define kshow_date    @"show_date"
//经纬度
#define klatitude    @"latitude"
#define klongitude    @"longitude"



//删除密码
#define DeleteSessionIDValue [SFHFKeychainUtils deleteItemForUsername:kSession_id andServiceName:kServiceName error:nil]

//得到唯一标示
#define GetDeviceToken                     [SFHFKeychainUtils getPasswordForUsername:kDeviceToken andServiceName:kServiceName error:nil]
//得到SessionID
#define GetSessionIDValue                  [SFHFKeychainUtils getPasswordForUsername:kSession_id andServiceName:kServiceName error:nil]

#define DidLogin                       ((AppDelegate *)[UIApplication sharedApplication].delegate).didLogin
#define RootShopCart                  ((AppDelegate *)[UIApplication sharedApplication].delegate).rootShopCart

#define RootCollectionBox                  ((AppDelegate *)[UIApplication sharedApplication].delegate).rootCollectionBox

//得到账号
#define GetUserNameValue                  [SFHFKeychainUtils getPasswordForUsername:kUser_Name andServiceName:kServiceName error:nil]



#define PrepaidCardStateGet (___PrepaidCardState == nil ? ___PrepaidCardState = [[NSArray alloc] initWithObjects:\
@"normal",\
@"expired",\
@"near_expired", nil] : ___PrepaidCardState)

#define PrepaidCardStateString(type) ([PrepaidCardStateGet objectAtIndex:type])
#define PrepaidCardStateEnum(string) ([PrepaidCardStateGet indexOfObject:string])


#define TABLEBACKGROUNDCOLOR UIColorFromRGB(0xf4f4f6)
#define LINECOLOR UIColorFromRGB(0xebebeb)
#define TEXTCOLOR UIColorFromRGB(0x252525)

//取消
#define CANCELTEXT @"取消"
//提交
#define UPLOAD @"提交"
//拍照
#define PHONEGRAPHTEXT @"拍照"

//十进制颜色
#define RGBA(r,g,b,a) [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:a]

//十六进制颜色
#define UIColorFromRGB(rgbValue)    [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

//灰色（背景）
#define grayBackgroundColor [UIColor colorWithRed:238/255.0 green:238/255.0 blue:238/255.0 alpha:1]

//棕色
#define BrownColor 0x785130
//浅色
#define UndertoneColor 0xa69a92
//红色
#define RedColor 0xE45B50
//黑色
#define BlackColor 0x000000
//红字
#define RedTextColor 0xff5c5c
//白色
#define WhiteColor UIColorFromRGB(0xffffff)

#define Font_40 [UIFont systemFontOfSize:40]
#define Font_30 [UIFont systemFontOfSize:30]
#define Font_25 [UIFont systemFontOfSize:25]
#define Font_23 [UIFont systemFontOfSize:23]
#define Font_21 [UIFont systemFontOfSize:21]
#define Font_20 [UIFont systemFontOfSize:20]
#define Font_19 [UIFont systemFontOfSize:19]
#define Font_18 [UIFont systemFontOfSize:18]
#define Font_17 [UIFont systemFontOfSize:17]
#define Font_16 [UIFont systemFontOfSize:16]
#define Font_15 [UIFont systemFontOfSize:15]
#define Font_14 [UIFont systemFontOfSize:14]
#define Font_13 [UIFont systemFontOfSize:13]
#define Font_12 [UIFont systemFontOfSize:12]
#define Font_11 [UIFont systemFontOfSize:11]
#define Font_10 [UIFont systemFontOfSize:10]




#endif
