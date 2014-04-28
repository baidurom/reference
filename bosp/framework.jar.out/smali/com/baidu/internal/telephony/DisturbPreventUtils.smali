.class public Lcom/baidu/internal/telephony/DisturbPreventUtils;
.super Ljava/lang/Object;
.source "DisturbPreventUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/internal/telephony/DisturbPreventUtils$PhoneLabel;,
        Lcom/baidu/internal/telephony/DisturbPreventUtils$BlockResult;
    }
.end annotation


# static fields
.field public static final ANTI_RULE:Ljava/lang/String; = "anti_rule"

.field public static final ANTI_RULE_URI:Landroid/net/Uri; = null

.field public static final ANTI_SETTING_PREFERENCE_NAME:Ljava/lang/String; = "anti_settings"

.field public static final ANTI_SWITCHER:Ljava/lang/String; = "anti_switcher"

.field public static final AUTHORITY:Ljava/lang/String; = "com.baidu.antidisturbance"

.field public static final BLACK_LIST:I = 0x1

.field public static final BLACK_LIST_MODE:I = 0x1

.field public static final BLACK_LIST_TYPE_URI:Landroid/net/Uri; = null

.field public static final BLACK_LIST_URI:Landroid/net/Uri; = null

.field public static final BLOCK_BOTH:I = 0x3

.field public static final BLOCK_CALL:I = 0x2

.field public static final BLOCK_NONE:I = 0x0

.field public static final BLOCK_SMS:I = 0x1

.field public static final BLOCK_TYPE_URI:Landroid/net/Uri; = null

.field public static final CALL_ACTION:Ljava/lang/String; = "com.baidu.antidisturbance.DISTURBANCE_CALL_RECEIVED"

.field private static final CITY_FIELD_INDEX:I = 0x1

.field private static final CODE_FIELD_INDEX:I = 0x0

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field private static final DEBUG:Z = true

.field public static final FIELD_BLOCK_RESULT:Ljava/lang/String; = "should_prevent"

.field public static final FILED_BLOCK_REASON:Ljava/lang/String; = "reason"

.field public static final FROM_CALL:I = 0x0

.field public static final FROM_MMS:I = 0x1

.field public static final FROM_MMS_WAP_PUSH:I = 0x2

.field public static final GET_ALL_CITY_NAME_CODES_URI:Landroid/net/Uri; = null

.field public static final GET_PHONE_LABEL_URI:Landroid/net/Uri; = null

.field public static final GET_PHONE_LOCATION_LABEL_URI:Landroid/net/Uri; = null

.field public static final GET_PHONE_LOCATION_URI:Landroid/net/Uri; = null

.field private static final INDEX_COMPANYNAME:I = 0x1

.field private static final INDEX_COUNT:I = 0x2

.field static INDEX_KEY_REASON:I = 0x0

.field static INDEX_KEY_RESULT:I = 0x0

.field static INDEX_KEY_SILENT:I = 0x0

.field private static final INDEX_LABEL:I = 0x0

.field private static final INDEX_LOCATION:I = 0x0

.field private static final INDEX_PHONE_LOCATION:I = 0x3

.field public static final IS_SAME_LOCATION_URI:Landroid/net/Uri; = null

.field public static final KEY_DISTURBANCE_ENABLE:Ljava/lang/String; = "disturbance_enable"

.field static KEY_REASON:Ljava/lang/String; = null

.field static KEY_RESULT:Ljava/lang/String; = null

.field static KEY_SILENT:Ljava/lang/String; = null

.field public static final MMS:Ljava/lang/String; = "mms"

.field public static final NON_CONTACTS_SILENCE:I = 0x2

.field public static final NON_VIP_SILENCE:I = 0x1

.field public static final NUMBER:Ljava/lang/String; = "number"

.field public static final PASS:I = 0x0

.field public static final PHONE:Ljava/lang/String; = "phone"

.field public static final PREVENT:I = 0x1

.field public static final PREVENT_BLACK_LIST:I = 0x0

.field public static final PREVENT_CALL_URI:Landroid/net/Uri; = null

.field public static final PREVENT_MMS_URI:Landroid/net/Uri; = null

.field private static final RESULT_LOCATION:I = 0x0

.field public static final SILENCE:I = 0x2

.field public static final SMS_ACTION:Ljava/lang/String; = "com.baidu.sms.DISTURBANCE_SMS_RECEIVED"

.field public static final SWITCHER_URI:Landroid/net/Uri; = null

.field private static final TAG:Ljava/lang/String; = "IPhoneNumberPreventService"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final TYPE_BLACK:I = 0x1

.field public static final TYPE_WHITE:I = 0x0

.field public static final VIP_MODE:I = 0x0

.field public static final WAPPUSH_ACTION:Ljava/lang/String; = "com.baidu.sms.DISTURBANCE_WAP_PUSH_RECEIVED"

.field public static final WHITE_LIST:I

.field private static final bProjection:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 54
    const-string/jumbo v0, "prevent_result"

    sput-object v0, Lcom/baidu/internal/telephony/DisturbPreventUtils;->KEY_RESULT:Ljava/lang/String;

    .line 55
    const-string/jumbo v0, "prevent_reason"

    sput-object v0, Lcom/baidu/internal/telephony/DisturbPreventUtils;->KEY_REASON:Ljava/lang/String;

    .line 56
    const-string/jumbo v0, "should_silent"

    sput-object v0, Lcom/baidu/internal/telephony/DisturbPreventUtils;->KEY_SILENT:Ljava/lang/String;

    .line 57
    sput v2, Lcom/baidu/internal/telephony/DisturbPreventUtils;->INDEX_KEY_RESULT:I

    .line 58
    sput v3, Lcom/baidu/internal/telephony/DisturbPreventUtils;->INDEX_KEY_REASON:I

    .line 59
    sput v4, Lcom/baidu/internal/telephony/DisturbPreventUtils;->INDEX_KEY_SILENT:I

    .line 296
    const-string v0, "content://com.baidu.antidisturbance/blacklist"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/baidu/internal/telephony/DisturbPreventUtils;->BLACK_LIST_URI:Landroid/net/Uri;

    .line 297
    const-string v0, "content://com.baidu.antidisturbance/blacklist/blacklisttype"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/baidu/internal/telephony/DisturbPreventUtils;->BLACK_LIST_TYPE_URI:Landroid/net/Uri;

    .line 298
    const-string v0, "content://com.baidu.antidisturbance/blacklist/blocktype"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/baidu/internal/telephony/DisturbPreventUtils;->BLOCK_TYPE_URI:Landroid/net/Uri;

    .line 300
    const-string v0, "content://com.baidu.antidisturbance/blacklist"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/baidu/internal/telephony/DisturbPreventUtils;->CONTENT_URI:Landroid/net/Uri;

    .line 301
    const-string v0, "content://com.baidu.antidisturbance/antisettings/antirule"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/baidu/internal/telephony/DisturbPreventUtils;->ANTI_RULE_URI:Landroid/net/Uri;

    .line 302
    const-string v0, "content://com.baidu.antidisturbance/antisettings/switcher"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/baidu/internal/telephony/DisturbPreventUtils;->SWITCHER_URI:Landroid/net/Uri;

    .line 303
    const-string v0, "content://com.baidu.antidisturbance/should_prevent/call"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/baidu/internal/telephony/DisturbPreventUtils;->PREVENT_CALL_URI:Landroid/net/Uri;

    .line 304
    const-string v0, "content://com.baidu.antidisturbance/should_prevent/mms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/baidu/internal/telephony/DisturbPreventUtils;->PREVENT_MMS_URI:Landroid/net/Uri;

    .line 305
    const-string v0, "content://com.baidu.antidisturbance/get/location"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/baidu/internal/telephony/DisturbPreventUtils;->GET_PHONE_LOCATION_URI:Landroid/net/Uri;

    .line 306
    const-string v0, "content://com.baidu.antidisturbance/get/locationAndLabel"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/baidu/internal/telephony/DisturbPreventUtils;->GET_PHONE_LOCATION_LABEL_URI:Landroid/net/Uri;

    .line 307
    const-string v0, "content://com.baidu.antidisturbance/issame/location"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/baidu/internal/telephony/DisturbPreventUtils;->IS_SAME_LOCATION_URI:Landroid/net/Uri;

    .line 308
    const-string v0, "content://com.baidu.antidisturbance/get/cities"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/baidu/internal/telephony/DisturbPreventUtils;->GET_ALL_CITY_NAME_CODES_URI:Landroid/net/Uri;

    .line 309
    const-string v0, "content://com.baidu.antidisturbance/get/phonelabel"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/baidu/internal/telephony/DisturbPreventUtils;->GET_PHONE_LABEL_URI:Landroid/net/Uri;

    .line 321
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "number"

    aput-object v1, v0, v2

    const-string/jumbo v1, "phone"

    aput-object v1, v0, v3

    const-string/jumbo v1, "mms"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string/jumbo v2, "type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/baidu/internal/telephony/DisturbPreventUtils;->bProjection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    return-void
.end method

.method public static addNumberToBlackList(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .parameter "context"
    .parameter "number"

    .prologue
    .line 371
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/baidu/internal/telephony/DisturbPreventUtils;->addNumberToList(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private static addNumberToList(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 5
    .parameter "context"
    .parameter "number"
    .parameter "type"

    .prologue
    .line 379
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 380
    .local v1, resolver:Landroid/content/ContentResolver;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 381
    .local v0, cv:Landroid/content/ContentValues;
    const-string/jumbo v3, "number"

    invoke-virtual {v0, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    const-string/jumbo v3, "type"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 383
    sget-object v3, Lcom/baidu/internal/telephony/DisturbPreventUtils;->BLACK_LIST_URI:Landroid/net/Uri;

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 384
    .local v2, result:Landroid/net/Uri;
    if-eqz v2, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static addNumberToWhiteList(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .parameter "context"
    .parameter "number"

    .prologue
    .line 375
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/baidu/internal/telephony/DisturbPreventUtils;->addNumberToList(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static getAllCitys(Landroid/content/Context;)Ljava/util/List;
    .locals 10
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 510
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 512
    .local v9, result:Ljava/util/List;,"Ljava/util/List<[Ljava/lang/String;>;"
    sget-object v1, Lcom/baidu/internal/telephony/DisturbPreventUtils;->GET_ALL_CITY_NAME_CODES_URI:Landroid/net/Uri;

    .line 513
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, resolver:Landroid/content/ContentResolver;
    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 514
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 516
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 517
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 518
    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 519
    .local v8, code:Ljava/lang/String;
    const/4 v2, 0x1

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 520
    .local v7, city:Ljava/lang/String;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v8, v2, v3

    const/4 v3, 0x1

    aput-object v7, v2, v3

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 526
    .end local v7           #city:Ljava/lang/String;
    .end local v8           #code:Ljava/lang/String;
    :catchall_0
    move-exception v2

    if-eqz v6, :cond_0

    .line 527
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 528
    const/4 v6, 0x0

    :cond_0
    throw v2

    .line 526
    :cond_1
    if-eqz v6, :cond_2

    .line 527
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 528
    const/4 v6, 0x0

    .line 532
    :cond_2
    return-object v9
.end method

.method public static getAntiRule(Landroid/content/Context;)I
    .locals 8
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 279
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 280
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/baidu/internal/telephony/DisturbPreventUtils;->ANTI_RULE_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 281
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 283
    .local v7, ret:I
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 284
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 287
    :cond_0
    if-eqz v6, :cond_1

    .line 288
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 292
    :cond_1
    return v7

    .line 287
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_2

    .line 288
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
.end method

.method public static getBlackListByNumber(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .parameter "context"
    .parameter "number"

    .prologue
    const/4 v2, 0x0

    .line 254
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 255
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v3, "PHONE_NUMBERS_EQUAL(number,?,0) AND type=1"

    .line 256
    .local v3, selection:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v4, v1

    .line 257
    .local v4, selectionArgs:[Ljava/lang/String;
    sget-object v1, Lcom/baidu/internal/telephony/DisturbPreventUtils;->CONTENT_URI:Landroid/net/Uri;

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 258
    .local v6, c:Landroid/database/Cursor;
    return-object v6
.end method

.method public static getNumberType(Landroid/content/Context;Ljava/lang/String;)I
    .locals 8
    .parameter "context"
    .parameter "number"

    .prologue
    const/4 v3, 0x0

    .line 331
    const/4 v7, 0x0

    .line 332
    .local v7, type:I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 333
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/telephony/DisturbPreventUtils;->BLOCK_TYPE_URI:Landroid/net/Uri;

    invoke-static {v1, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/baidu/internal/telephony/DisturbPreventUtils;->bProjection:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 335
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 337
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 341
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 346
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_1
    return v7

    .line 341
    .restart local v6       #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getPhoneLabel(Landroid/content/Context;Ljava/lang/String;)Lcom/baidu/internal/telephony/DisturbPreventUtils$PhoneLabel;
    .locals 9
    .parameter "context"
    .parameter "number"

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 426
    new-instance v7, Lcom/baidu/internal/telephony/DisturbPreventUtils$PhoneLabel;

    invoke-direct {v7, p1}, Lcom/baidu/internal/telephony/DisturbPreventUtils$PhoneLabel;-><init>(Ljava/lang/String;)V

    .line 428
    .local v7, phoneLabel:Lcom/baidu/internal/telephony/DisturbPreventUtils$PhoneLabel;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 429
    sget-object v1, Lcom/baidu/internal/telephony/DisturbPreventUtils;->GET_PHONE_LABEL_URI:Landroid/net/Uri;

    .line 430
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 431
    .local v0, resolver:Landroid/content/ContentResolver;
    new-array v2, v8, [Ljava/lang/String;

    aput-object p1, v2, v5

    .local v2, projection:[Ljava/lang/String;
    move-object v4, v3

    move-object v5, v3

    .line 434
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 436
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 437
    const/4 v3, 0x0

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v7, Lcom/baidu/internal/telephony/DisturbPreventUtils$PhoneLabel;->mLabel:Ljava/lang/String;

    .line 438
    const/4 v3, 0x1

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v7, Lcom/baidu/internal/telephony/DisturbPreventUtils$PhoneLabel;->mCompanyName:Ljava/lang/String;

    .line 439
    const/4 v3, 0x2

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v7, Lcom/baidu/internal/telephony/DisturbPreventUtils$PhoneLabel;->mCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 442
    :cond_0
    if-eqz v6, :cond_1

    .line 443
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 444
    const/4 v6, 0x0

    .line 449
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v1           #uri:Landroid/net/Uri;
    .end local v2           #projection:[Ljava/lang/String;
    .end local v6           #c:Landroid/database/Cursor;
    :cond_1
    return-object v7

    .line 442
    .restart local v0       #resolver:Landroid/content/ContentResolver;
    .restart local v1       #uri:Landroid/net/Uri;
    .restart local v2       #projection:[Ljava/lang/String;
    .restart local v6       #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v3

    if-eqz v6, :cond_2

    .line 443
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 444
    const/4 v6, 0x0

    :cond_2
    throw v3
.end method

.method public static getPhoneLocation(Landroid/content/Context;Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter "number"
    .parameter "showProvince"
    .parameter "showOperator"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 391
    const/4 v7, 0x0

    .line 392
    .local v7, result:Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 393
    sget-object v1, Lcom/baidu/internal/telephony/DisturbPreventUtils;->GET_PHONE_LOCATION_URI:Landroid/net/Uri;

    .line 394
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 395
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v4, 0x3

    new-array v2, v4, [Ljava/lang/String;

    aput-object p1, v2, v5

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x2

    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .local v2, projection:[Ljava/lang/String;
    move-object v4, v3

    move-object v5, v3

    .line 398
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 400
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 401
    const/4 v3, 0x0

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 404
    :cond_0
    if-eqz v6, :cond_1

    .line 405
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 406
    const/4 v6, 0x0

    .line 411
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v1           #uri:Landroid/net/Uri;
    .end local v2           #projection:[Ljava/lang/String;
    .end local v6           #c:Landroid/database/Cursor;
    :cond_1
    return-object v7

    .line 404
    .restart local v0       #resolver:Landroid/content/ContentResolver;
    .restart local v1       #uri:Landroid/net/Uri;
    .restart local v2       #projection:[Ljava/lang/String;
    .restart local v6       #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v3

    if-eqz v6, :cond_2

    .line 405
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 406
    const/4 v6, 0x0

    :cond_2
    throw v3
.end method

.method public static getPhoneLocationAndLabel(Landroid/content/Context;Ljava/lang/String;ZZ)Lcom/baidu/internal/telephony/DisturbPreventUtils$PhoneLabel;
    .locals 11
    .parameter "context"
    .parameter "number"
    .parameter "showProvince"
    .parameter "showOperator"

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 455
    new-instance v7, Lcom/baidu/internal/telephony/DisturbPreventUtils$PhoneLabel;

    invoke-direct {v7, p1}, Lcom/baidu/internal/telephony/DisturbPreventUtils$PhoneLabel;-><init>(Ljava/lang/String;)V

    .line 456
    .local v7, phoneLabel:Lcom/baidu/internal/telephony/DisturbPreventUtils$PhoneLabel;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 457
    sget-object v1, Lcom/baidu/internal/telephony/DisturbPreventUtils;->GET_PHONE_LOCATION_LABEL_URI:Landroid/net/Uri;

    .line 458
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 459
    .local v0, resolver:Landroid/content/ContentResolver;
    new-array v2, v10, [Ljava/lang/String;

    aput-object p1, v2, v5

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v8

    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v9

    .local v2, projection:[Ljava/lang/String;
    move-object v4, v3

    move-object v5, v3

    .line 462
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 464
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 465
    const/4 v3, 0x0

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v7, Lcom/baidu/internal/telephony/DisturbPreventUtils$PhoneLabel;->mLabel:Ljava/lang/String;

    .line 466
    const/4 v3, 0x1

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v7, Lcom/baidu/internal/telephony/DisturbPreventUtils$PhoneLabel;->mCompanyName:Ljava/lang/String;

    .line 467
    const/4 v3, 0x2

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v7, Lcom/baidu/internal/telephony/DisturbPreventUtils$PhoneLabel;->mCount:I

    .line 468
    const/4 v3, 0x3

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v7, Lcom/baidu/internal/telephony/DisturbPreventUtils$PhoneLabel;->mLocation:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 471
    :cond_0
    if-eqz v6, :cond_1

    .line 472
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 473
    const/4 v6, 0x0

    .line 478
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v1           #uri:Landroid/net/Uri;
    .end local v2           #projection:[Ljava/lang/String;
    .end local v6           #c:Landroid/database/Cursor;
    :cond_1
    return-object v7

    .line 471
    .restart local v0       #resolver:Landroid/content/ContentResolver;
    .restart local v1       #uri:Landroid/net/Uri;
    .restart local v2       #projection:[Ljava/lang/String;
    .restart local v6       #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v3

    if-eqz v6, :cond_2

    .line 472
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 473
    const/4 v6, 0x0

    :cond_2
    throw v3
.end method

.method public static getPhoneNumber(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter "uri"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 153
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 154
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "data1"

    aput-object v1, v2, v4

    .local v2, projection:[Ljava/lang/String;
    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    .line 155
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 156
    .local v6, c:Landroid/database/Cursor;
    const-string v7, ""

    .line 158
    .local v7, number:Ljava/lang/String;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 162
    :cond_0
    if-eqz v6, :cond_1

    .line 163
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 164
    const/4 v6, 0x0

    .line 167
    :cond_1
    return-object v7

    .line 162
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_2

    .line 163
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 164
    const/4 v6, 0x0

    :cond_2
    throw v1
.end method

.method public static isBlackNumber(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .parameter "context"
    .parameter "number"

    .prologue
    .line 357
    const/4 v0, 0x0

    return v0
.end method

.method public static isBlackNumber(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 1
    .parameter "context"
    .parameter "number"
    .parameter "type"

    .prologue
    .line 352
    const/4 v0, 0x0

    return v0
.end method

.method public static isExistInBlackList(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .parameter "context"
    .parameter "number"

    .prologue
    const/4 v2, 0x0

    .line 210
    const/4 v7, 0x0

    .line 211
    .local v7, result:Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 212
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v3, "PHONE_NUMBERS_EQUAL(number,?,0) AND type=1"

    .line 213
    .local v3, selection:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v4, v1

    .line 214
    .local v4, selectionArgs:[Ljava/lang/String;
    sget-object v1, Lcom/baidu/internal/telephony/DisturbPreventUtils;->CONTENT_URI:Landroid/net/Uri;

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 216
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-lez v1, :cond_0

    .line 217
    const/4 v7, 0x1

    .line 220
    :cond_0
    if-eqz v6, :cond_1

    .line 221
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 222
    const/4 v6, 0x0

    .line 225
    :cond_1
    return v7

    .line 220
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_2

    .line 221
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 222
    const/4 v6, 0x0

    :cond_2
    throw v1
.end method

.method public static isExistInContacts(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9
    .parameter "context"
    .parameter "phonenumber"

    .prologue
    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 230
    const/4 v7, 0x0

    .line 231
    .local v7, result:Z
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 232
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 233
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v3, "PHONE_NUMBERS_EQUAL(data1,?,0) AND (mimetype=\'vnd.android.cursor.item/phone_v2\' OR mimetype=\'vnd.android.cursor.item/sip_address\')"

    .line 237
    .local v3, selection:Ljava/lang/String;
    new-array v4, v5, [Ljava/lang/String;

    aput-object p1, v4, v8

    .line 238
    .local v4, selectionArgs:[Ljava/lang/String;
    new-array v2, v5, [Ljava/lang/String;

    const-string v5, "_id"

    aput-object v5, v2, v8

    .line 239
    .local v2, projection:[Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 241
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-lez v5, :cond_0

    .line 242
    const/4 v7, 0x1

    .line 245
    :cond_0
    if-eqz v6, :cond_1

    .line 246
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 247
    const/4 v6, 0x0

    .line 250
    :cond_1
    return v7

    .line 245
    :catchall_0
    move-exception v5

    if-eqz v6, :cond_2

    .line 246
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 247
    const/4 v6, 0x0

    :cond_2
    throw v5
.end method

.method public static isExistInList(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .parameter "context"
    .parameter "number"

    .prologue
    const/4 v2, 0x0

    .line 171
    const/4 v7, 0x0

    .line 172
    .local v7, result:Z
    sget-object v1, Lcom/baidu/internal/telephony/DisturbPreventUtils;->CONTENT_URI:Landroid/net/Uri;

    .line 173
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 174
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v3, "PHONE_NUMBERS_EQUAL(number,?,0)"

    .line 175
    .local v3, selection:Ljava/lang/String;
    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    .local v4, selectionArgs:[Ljava/lang/String;
    move-object v5, v2

    .line 176
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 178
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-lez v2, :cond_0

    .line 179
    const/4 v7, 0x1

    .line 182
    :cond_0
    if-eqz v6, :cond_1

    .line 183
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 184
    const/4 v6, 0x0

    .line 187
    :cond_1
    return v7

    .line 182
    :catchall_0
    move-exception v2

    if-eqz v6, :cond_2

    .line 183
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 184
    const/4 v6, 0x0

    :cond_2
    throw v2
.end method

.method public static isExistInWhiteList(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .parameter "context"
    .parameter "number"

    .prologue
    const/4 v2, 0x0

    .line 191
    const/4 v7, 0x0

    .line 192
    .local v7, result:Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 193
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v3, "PHONE_NUMBERS_EQUAL(number,?,0) AND type=0"

    .line 194
    .local v3, selection:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v4, v1

    .line 195
    .local v4, selectionArgs:[Ljava/lang/String;
    sget-object v1, Lcom/baidu/internal/telephony/DisturbPreventUtils;->CONTENT_URI:Landroid/net/Uri;

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 197
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-lez v1, :cond_0

    .line 198
    const/4 v7, 0x1

    .line 201
    :cond_0
    if-eqz v6, :cond_1

    .line 202
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 203
    const/4 v6, 0x0

    .line 206
    :cond_1
    return v7

    .line 201
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_2

    .line 202
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 203
    const/4 v6, 0x0

    :cond_2
    throw v1
.end method

.method public static isSameLocation(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .parameter "context"
    .parameter "selfNumber"
    .parameter "targetNumber"

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 483
    const/4 v7, 0x0

    .line 484
    .local v7, result:Z
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 485
    sget-object v1, Lcom/baidu/internal/telephony/DisturbPreventUtils;->IS_SAME_LOCATION_URI:Landroid/net/Uri;

    .line 486
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 487
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v4, 0x2

    new-array v2, v4, [Ljava/lang/String;

    aput-object p1, v2, v9

    aput-object p2, v2, v8

    .local v2, projection:[Ljava/lang/String;
    move-object v4, v3

    move-object v5, v3

    .line 490
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 492
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 493
    const/4 v3, 0x0

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-ne v3, v8, :cond_2

    move v7, v8

    .line 496
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 497
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 498
    const/4 v6, 0x0

    .line 503
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v1           #uri:Landroid/net/Uri;
    .end local v2           #projection:[Ljava/lang/String;
    .end local v6           #c:Landroid/database/Cursor;
    :cond_1
    return v7

    .restart local v0       #resolver:Landroid/content/ContentResolver;
    .restart local v1       #uri:Landroid/net/Uri;
    .restart local v2       #projection:[Ljava/lang/String;
    .restart local v6       #c:Landroid/database/Cursor;
    :cond_2
    move v7, v9

    .line 493
    goto :goto_0

    .line 496
    :catchall_0
    move-exception v3

    if-eqz v6, :cond_3

    .line 497
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 498
    const/4 v6, 0x0

    :cond_3
    throw v3
.end method

.method public static isSwitcherOpened(Landroid/content/Context;)Z
    .locals 10
    .parameter "context"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 262
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 263
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/baidu/internal/telephony/DisturbPreventUtils;->SWITCHER_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 264
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 266
    .local v7, ret:I
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 267
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 270
    :cond_0
    if-eqz v6, :cond_1

    .line 271
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 275
    :cond_1
    if-ne v7, v8, :cond_3

    move v1, v8

    :goto_0
    return v1

    .line 270
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_2

    .line 271
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1

    :cond_3
    move v1, v9

    .line 275
    goto :goto_0
.end method

.method public static isWhiteNumber(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .parameter "context"
    .parameter "number"

    .prologue
    .line 367
    const/4 v0, 0x1

    return v0
.end method

.method public static isWhiteNumber(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 1
    .parameter "context"
    .parameter "number"
    .parameter "type"

    .prologue
    .line 362
    const/4 v0, 0x1

    return v0
.end method

.method public static shouldPrevent(Landroid/content/Context;Ljava/lang/String;I)Lcom/baidu/internal/telephony/DisturbPreventUtils$BlockResult;
    .locals 8
    .parameter "context"
    .parameter "phonenumber"
    .parameter "app"

    .prologue
    const/4 v3, 0x0

    .line 98
    new-instance v7, Lcom/baidu/internal/telephony/DisturbPreventUtils$BlockResult;

    invoke-direct {v7}, Lcom/baidu/internal/telephony/DisturbPreventUtils$BlockResult;-><init>()V

    .line 100
    .local v7, result:Lcom/baidu/internal/telephony/DisturbPreventUtils$BlockResult;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 101
    sget-object v1, Lcom/baidu/internal/telephony/DisturbPreventUtils;->PREVENT_CALL_URI:Landroid/net/Uri;

    .line 102
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 103
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v4, 0x2

    new-array v2, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v2, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .local v2, projection:[Ljava/lang/String;
    move-object v4, v3

    move-object v5, v3

    .line 106
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 108
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 109
    sget v3, Lcom/baidu/internal/telephony/DisturbPreventUtils;->INDEX_KEY_RESULT:I

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v7, Lcom/baidu/internal/telephony/DisturbPreventUtils$BlockResult;->result:I

    .line 110
    sget v3, Lcom/baidu/internal/telephony/DisturbPreventUtils;->INDEX_KEY_REASON:I

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v7, Lcom/baidu/internal/telephony/DisturbPreventUtils$BlockResult;->reason:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    :cond_0
    if-eqz v6, :cond_1

    .line 114
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 115
    const/4 v6, 0x0

    .line 120
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v1           #uri:Landroid/net/Uri;
    .end local v2           #projection:[Ljava/lang/String;
    .end local v6           #c:Landroid/database/Cursor;
    :cond_1
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "shouldPrevent:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 121
    return-object v7

    .line 113
    .restart local v0       #resolver:Landroid/content/ContentResolver;
    .restart local v1       #uri:Landroid/net/Uri;
    .restart local v2       #projection:[Ljava/lang/String;
    .restart local v6       #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v3

    if-eqz v6, :cond_2

    .line 114
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 115
    const/4 v6, 0x0

    :cond_2
    throw v3
.end method

.method public static shouldPreventMMS(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/internal/telephony/DisturbPreventUtils$BlockResult;
    .locals 8
    .parameter "context"
    .parameter "phonenumber"
    .parameter "content"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 125
    new-instance v7, Lcom/baidu/internal/telephony/DisturbPreventUtils$BlockResult;

    invoke-direct {v7}, Lcom/baidu/internal/telephony/DisturbPreventUtils$BlockResult;-><init>()V

    .line 127
    .local v7, result:Lcom/baidu/internal/telephony/DisturbPreventUtils$BlockResult;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 128
    iput v5, v7, Lcom/baidu/internal/telephony/DisturbPreventUtils$BlockResult;->result:I

    .line 149
    :cond_0
    :goto_0
    return-object v7

    .line 130
    :cond_1
    sget-object v1, Lcom/baidu/internal/telephony/DisturbPreventUtils;->PREVENT_MMS_URI:Landroid/net/Uri;

    .line 131
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 132
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v4, 0x2

    new-array v2, v4, [Ljava/lang/String;

    aput-object p1, v2, v5

    const/4 v4, 0x1

    aput-object p2, v2, v4

    .local v2, projection:[Ljava/lang/String;
    move-object v4, v3

    move-object v5, v3

    .line 135
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 137
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 138
    sget v3, Lcom/baidu/internal/telephony/DisturbPreventUtils;->INDEX_KEY_RESULT:I

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v7, Lcom/baidu/internal/telephony/DisturbPreventUtils$BlockResult;->result:I

    .line 139
    sget v3, Lcom/baidu/internal/telephony/DisturbPreventUtils;->INDEX_KEY_REASON:I

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v7, Lcom/baidu/internal/telephony/DisturbPreventUtils$BlockResult;->reason:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    :cond_2
    if-eqz v6, :cond_0

    .line 143
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 144
    const/4 v6, 0x0

    goto :goto_0

    .line 142
    :catchall_0
    move-exception v3

    if-eqz v6, :cond_3

    .line 143
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 144
    const/4 v6, 0x0

    :cond_3
    throw v3
.end method
