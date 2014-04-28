.class public Landroid/telephony/BaiduTelephonyUtils$SIMInfo;
.super Ljava/lang/Object;
.source "BaiduTelephonyUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/BaiduTelephonyUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SIMInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/BaiduTelephonyUtils$SIMInfo$ErrorCode;
    }
.end annotation


# instance fields
.field public mCallRingTone:Ljava/lang/String;

.field public mColor:I

.field public mDataRoaming:I

.field public mDispalyNumberFormat:I

.field public mDisplayName:Ljava/lang/String;

.field public mICCId:Ljava/lang/String;

.field public mIpAutoEnable:I

.field public mIpCustomPrefix:Ljava/lang/String;

.field public mIpEnable:I

.field public mIpFirstEnable:I

.field public mIpPrefix:Ljava/lang/String;

.field public mIpSelfLocation:Ljava/lang/String;

.field public mNumber:Ljava/lang/String;

.field public mSimBackgroundRes:I

.field public mSimId:J

.field public mSlot:I

.field public mSmsRingTone:Ljava/lang/String;

.field public mWapPush:I


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    const-string v0, ""

    iput-object v0, p0, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mDisplayName:Ljava/lang/String;

    .line 192
    const-string v0, ""

    iput-object v0, p0, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mNumber:Ljava/lang/String;

    .line 193
    iput v2, p0, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mDispalyNumberFormat:I

    .line 195
    iput v3, p0, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mDataRoaming:I

    .line 196
    iput v1, p0, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mSlot:I

    .line 197
    sget-object v0, Landroid/telephony/BaiduTelephonyUtils;->SIMBackgroundRes:[I

    aget v0, v0, v3

    iput v0, p0, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mSimBackgroundRes:I

    .line 198
    iput v1, p0, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mWapPush:I

    .line 200
    iput v1, p0, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mIpEnable:I

    .line 201
    const-string v0, ""

    iput-object v0, p0, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mIpPrefix:Ljava/lang/String;

    .line 202
    const-string v0, ""

    iput-object v0, p0, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mIpSelfLocation:Ljava/lang/String;

    .line 203
    iput v2, p0, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mIpAutoEnable:I

    .line 204
    const-string v0, ""

    iput-object v0, p0, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mIpCustomPrefix:Ljava/lang/String;

    .line 205
    iput v2, p0, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mIpFirstEnable:I

    .line 207
    const-string v0, ""

    iput-object v0, p0, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mCallRingTone:Ljava/lang/String;

    .line 208
    const-string v0, ""

    iput-object v0, p0, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mSmsRingTone:Ljava/lang/String;

    .line 211
    return-void
.end method

.method private static fromCursor(Landroid/database/Cursor;)Landroid/telephony/BaiduTelephonyUtils$SIMInfo;
    .locals 4
    .parameter "cursor"

    .prologue
    .line 218
    new-instance v0, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;

    invoke-direct {v0}, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;-><init>()V

    .line 219
    .local v0, info:Landroid/telephony/BaiduTelephonyUtils$SIMInfo;
    const-string v2, "_id"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mSimId:J

    .line 220
    const-string v2, "icc_id"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mICCId:Ljava/lang/String;

    .line 221
    const-string v2, "display_name"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mDisplayName:Ljava/lang/String;

    .line 222
    const-string v2, "number"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mNumber:Ljava/lang/String;

    .line 223
    const-string v2, "display_number_format"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mDispalyNumberFormat:I

    .line 224
    const-string v2, "color"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mColor:I

    .line 225
    const-string v2, "data_roaming"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mDataRoaming:I

    .line 226
    const-string v2, "slot"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mSlot:I

    .line 227
    sget-object v2, Landroid/telephony/BaiduTelephonyUtils;->SIMBackgroundRes:[I

    array-length v1, v2

    .line 228
    .local v1, size:I
    iget v2, v0, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mColor:I

    if-ltz v2, :cond_0

    iget v2, v0, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mColor:I

    if-ge v2, v1, :cond_0

    .line 229
    sget-object v2, Landroid/telephony/BaiduTelephonyUtils;->SIMBackgroundRes:[I

    iget v3, v0, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mColor:I

    aget v2, v2, v3

    iput v2, v0, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mSimBackgroundRes:I

    .line 231
    :cond_0
    const-string v2, "wap_push"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mWapPush:I

    .line 233
    const-string v2, "ip_enable"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mIpEnable:I

    .line 234
    const-string v2, "ip_prefix"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mIpPrefix:Ljava/lang/String;

    .line 235
    const-string v2, "ip_self_location"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mIpSelfLocation:Ljava/lang/String;

    .line 236
    const-string v2, "ip_auto_enable"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mIpAutoEnable:I

    .line 237
    const-string v2, "ip_custom_prefix"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mIpCustomPrefix:Ljava/lang/String;

    .line 238
    const-string v2, "ip_first_enable"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mIpFirstEnable:I

    .line 240
    const-string v2, "call_ringtone"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mCallRingTone:Ljava/lang/String;

    .line 241
    const-string v2, "sms_ringtone"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mSmsRingTone:Ljava/lang/String;

    .line 243
    return-object v0
.end method

.method public static getAllSIMCount(Landroid/content/Context;)I
    .locals 7
    .parameter "ctx"

    .prologue
    const/4 v2, 0x0

    .line 456
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/telephony/BaiduTelephonyUtils$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 459
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 460
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 463
    if-eqz v6, :cond_0

    .line 464
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 467
    :cond_0
    :goto_0
    return v0

    .line 463
    :cond_1
    if-eqz v6, :cond_2

    .line 464
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 467
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 463
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 464
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static getAllSIMList(Landroid/content/Context;)Ljava/util/List;
    .locals 8
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/BaiduTelephonyUtils$SIMInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 275
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 276
    .local v7, simList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/telephony/BaiduTelephonyUtils$SIMInfo;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/telephony/BaiduTelephonyUtils$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 279
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 280
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 281
    invoke-static {v6}, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->fromCursor(Landroid/database/Cursor;)Landroid/telephony/BaiduTelephonyUtils$SIMInfo;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 285
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_0

    .line 286
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .line 285
    :cond_1
    if-eqz v6, :cond_2

    .line 286
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 289
    :cond_2
    return-object v7
.end method

.method private static getAppropriateIndex(Landroid/content/Context;JLjava/lang/String;)I
    .locals 19
    .parameter "ctx"
    .parameter "simId"
    .parameter "name"

    .prologue
    .line 644
    const-string v10, "SIM"

    .line 645
    .local v10, default_name:Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v2, "display_name LIKE "

    invoke-direct {v15, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 646
    .local v15, sb:Ljava/lang/StringBuilder;
    if-nez p3, :cond_1

    .line 647
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x25

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 651
    :goto_0
    const-string v2, " AND ("

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id!="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 653
    const-string v2, ")"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/telephony/BaiduTelephonyUtils$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "display_name"

    aput-object v6, v4, v5

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "display_name"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 657
    .local v9, cursor:Landroid/database/Cursor;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 658
    .local v8, array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v13, 0x1

    .line 659
    .local v13, index:I
    if-eqz v9, :cond_3

    .line 660
    :cond_0
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 661
    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 663
    .local v11, display_name:Ljava/lang/String;
    if-eqz v11, :cond_0

    .line 664
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    .line 665
    .local v14, length:I
    const/4 v2, 0x2

    if-lt v14, v2, :cond_0

    .line 666
    add-int/lit8 v2, v14, -0x2

    invoke-virtual {v11, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 667
    .local v16, sub:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 668
    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    .line 669
    .local v17, value:J
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 649
    .end local v8           #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v9           #cursor:Landroid/database/Cursor;
    .end local v11           #display_name:Ljava/lang/String;
    .end local v13           #index:I
    .end local v14           #length:I
    .end local v16           #sub:Ljava/lang/String;
    .end local v17           #value:J
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x25

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 674
    .restart local v8       #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v9       #cursor:Landroid/database/Cursor;
    .restart local v13       #index:I
    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 676
    :cond_3
    const/4 v12, 0x1

    .local v12, i:I
    :goto_2
    const/16 v2, 0x63

    if-gt v12, v2, :cond_5

    .line 677
    int-to-long v2, v12

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 676
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 680
    :cond_4
    move v13, v12

    .line 684
    :cond_5
    return v13
.end method

.method public static getInsertedSIMCount(Landroid/content/Context;)I
    .locals 7
    .parameter "ctx"

    .prologue
    const/4 v2, 0x0

    .line 437
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/telephony/BaiduTelephonyUtils$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "slot!=-1"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 440
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 441
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 444
    if-eqz v6, :cond_0

    .line 445
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 448
    :cond_0
    :goto_0
    return v0

    .line 444
    :cond_1
    if-eqz v6, :cond_2

    .line 445
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 448
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 444
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 445
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;
    .locals 8
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/BaiduTelephonyUtils$SIMInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 252
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 253
    .local v7, simList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/telephony/BaiduTelephonyUtils$SIMInfo;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/telephony/BaiduTelephonyUtils$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "slot!=-1"

    const-string v5, "slot ASC"

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 256
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 257
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 258
    invoke-static {v6}, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->fromCursor(Landroid/database/Cursor;)Landroid/telephony/BaiduTelephonyUtils$SIMInfo;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 262
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_0

    .line 263
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .line 262
    :cond_1
    if-eqz v6, :cond_2

    .line 263
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 266
    :cond_2
    return-object v7
.end method

.method public static getSIMInfoByICCId(Landroid/content/Context;Ljava/lang/String;)Landroid/telephony/BaiduTelephonyUtils$SIMInfo;
    .locals 7
    .parameter "ctx"
    .parameter "iccid"

    .prologue
    const/4 v2, 0x0

    .line 369
    if-nez p1, :cond_1

    .line 383
    :cond_0
    :goto_0
    return-object v2

    .line 370
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/telephony/BaiduTelephonyUtils$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "icc_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 373
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 374
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 375
    invoke-static {v6}, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->fromCursor(Landroid/database/Cursor;)Landroid/telephony/BaiduTelephonyUtils$SIMInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 379
    if-eqz v6, :cond_0

    .line 380
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 379
    :cond_2
    if-eqz v6, :cond_0

    .line 380
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 379
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 380
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static getSIMInfoById(Landroid/content/Context;J)Landroid/telephony/BaiduTelephonyUtils$SIMInfo;
    .locals 7
    .parameter "ctx"
    .parameter "SIMId"

    .prologue
    const/4 v2, 0x0

    .line 299
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    .line 313
    :cond_0
    :goto_0
    return-object v2

    .line 300
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/telephony/BaiduTelephonyUtils$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 303
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 304
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 305
    invoke-static {v6}, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->fromCursor(Landroid/database/Cursor;)Landroid/telephony/BaiduTelephonyUtils$SIMInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 309
    if-eqz v6, :cond_0

    .line 310
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 309
    :cond_2
    if-eqz v6, :cond_0

    .line 310
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 309
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 310
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static getSIMInfoByName(Landroid/content/Context;Ljava/lang/String;)Landroid/telephony/BaiduTelephonyUtils$SIMInfo;
    .locals 7
    .parameter "ctx"
    .parameter "SIMName"

    .prologue
    const/4 v2, 0x0

    .line 323
    if-nez p1, :cond_1

    .line 337
    :cond_0
    :goto_0
    return-object v2

    .line 324
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/telephony/BaiduTelephonyUtils$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "display_name=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 327
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 328
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 329
    invoke-static {v6}, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->fromCursor(Landroid/database/Cursor;)Landroid/telephony/BaiduTelephonyUtils$SIMInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 333
    if-eqz v6, :cond_0

    .line 334
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 333
    :cond_2
    if-eqz v6, :cond_0

    .line 334
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 333
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 334
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static getSIMInfoBySlot(Landroid/content/Context;I)Landroid/telephony/BaiduTelephonyUtils$SIMInfo;
    .locals 8
    .parameter "ctx"
    .parameter "cardSlot"

    .prologue
    const/4 v2, 0x0

    .line 346
    if-gez p1, :cond_1

    .line 360
    :cond_0
    :goto_0
    return-object v2

    .line 347
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/telephony/BaiduTelephonyUtils$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "slot=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 350
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 351
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 352
    invoke-static {v6}, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->fromCursor(Landroid/database/Cursor;)Landroid/telephony/BaiduTelephonyUtils$SIMInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 356
    if-eqz v6, :cond_0

    .line 357
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 356
    :cond_2
    if-eqz v6, :cond_0

    .line 357
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 356
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 357
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static getSlotById(Landroid/content/Context;J)I
    .locals 8
    .parameter "ctx"
    .parameter "SIMId"

    .prologue
    const/4 v5, 0x0

    const/4 v7, -0x1

    const/4 v3, 0x0

    .line 392
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    move v0, v7

    .line 406
    :cond_0
    :goto_0
    return v0

    .line 393
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/telephony/BaiduTelephonyUtils$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "slot"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 396
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 397
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 398
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 402
    if-eqz v6, :cond_0

    .line 403
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 402
    :cond_2
    if-eqz v6, :cond_3

    .line 403
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move v0, v7

    .line 406
    goto :goto_0

    .line 402
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 403
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public static getSlotByName(Landroid/content/Context;Ljava/lang/String;)I
    .locals 8
    .parameter "ctx"
    .parameter "SIMName"

    .prologue
    const/4 v4, 0x1

    const/4 v7, -0x1

    const/4 v5, 0x0

    .line 415
    if-nez p1, :cond_1

    move v0, v7

    .line 429
    :cond_0
    :goto_0
    return v0

    .line 416
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/telephony/BaiduTelephonyUtils$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "slot"

    aput-object v3, v2, v5

    const-string v3, "display_name=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 419
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 420
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 421
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 425
    if-eqz v6, :cond_0

    .line 426
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 425
    :cond_2
    if-eqz v6, :cond_3

    .line 426
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move v0, v7

    .line 429
    goto :goto_0

    .line 425
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 426
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method private static getSuffixFromIndex(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 635
    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    .line 636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 638
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static insertICCId(Landroid/content/Context;Ljava/lang/String;I)Landroid/net/Uri;
    .locals 12
    .parameter "ctx"
    .parameter "ICCId"
    .parameter "slot"

    .prologue
    .line 579
    if-nez p1, :cond_0

    .line 580
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ICCId should not null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 583
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 584
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v3, "icc_id=?"

    .line 585
    .local v3, selection:Ljava/lang/String;
    sget-object v1, Landroid/telephony/BaiduTelephonyUtils$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "slot"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 587
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_4

    .line 588
    :cond_1
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 589
    .local v11, values:Landroid/content/ContentValues;
    const-string v1, "icc_id"

    invoke-virtual {v11, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    const-string v1, "color"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 591
    const-string v1, "slot"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 592
    sget-object v1, Landroid/telephony/BaiduTelephonyUtils$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 605
    .end local v11           #values:Landroid/content/ContentValues;
    .local v10, uri:Landroid/net/Uri;
    :cond_2
    :goto_0
    if-eqz v6, :cond_3

    .line 606
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 610
    :cond_3
    return-object v10

    .line 595
    .end local v10           #uri:Landroid/net/Uri;
    :cond_4
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 596
    .local v8, simId:J
    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 597
    .local v7, oldSlot:I
    sget-object v1, Landroid/telephony/BaiduTelephonyUtils$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 598
    .restart local v10       #uri:Landroid/net/Uri;
    if-eq p2, v7, :cond_2

    .line 599
    new-instance v11, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v11, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 600
    .restart local v11       #values:Landroid/content/ContentValues;
    const-string v1, "slot"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 601
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v10, v11, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 605
    .end local v7           #oldSlot:I
    .end local v8           #simId:J
    .end local v10           #uri:Landroid/net/Uri;
    .end local v11           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_5

    .line 606
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v1
.end method

.method public static setCallRingTone(Landroid/content/Context;Ljava/lang/String;J)I
    .locals 4
    .parameter "ctx"
    .parameter "ringtone"
    .parameter "SIMId"

    .prologue
    const/4 v3, 0x0

    .line 766
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-gtz v1, :cond_0

    .line 767
    const/4 v1, -0x1

    .line 771
    :goto_0
    return v1

    .line 769
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 770
    .local v0, value:Landroid/content/ContentValues;
    const-string v1, "call_ringtone"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/telephony/BaiduTelephonyUtils$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public static setColor(Landroid/content/Context;IJ)I
    .locals 5
    .parameter "ctx"
    .parameter "color"
    .parameter "SIMId"

    .prologue
    const/4 v4, 0x0

    .line 520
    sget-object v2, Landroid/telephony/BaiduTelephonyUtils;->SIMBackgroundRes:[I

    array-length v0, v2

    .line 521
    .local v0, size:I
    if-ltz p1, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-lez v2, :cond_0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v2, -0x1

    .line 524
    :goto_0
    return v2

    .line 522
    :cond_1
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 523
    .local v1, value:Landroid/content/ContentValues;
    const-string v2, "color"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 524
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/telephony/BaiduTelephonyUtils$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public static setDataRoaming(Landroid/content/Context;IJ)I
    .locals 4
    .parameter "ctx"
    .parameter "roaming"
    .parameter "SIMId"

    .prologue
    const/4 v3, 0x0

    .line 551
    if-ltz p1, :cond_0

    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-gtz v1, :cond_1

    :cond_0
    const/4 v1, -0x1

    .line 554
    :goto_0
    return v1

    .line 552
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 553
    .local v0, value:Landroid/content/ContentValues;
    const-string v1, "data_roaming"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 554
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/telephony/BaiduTelephonyUtils$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public static setDefaultName(Landroid/content/Context;JLjava/lang/String;)I
    .locals 11
    .parameter "ctx"
    .parameter "simId"
    .parameter "name"

    .prologue
    const/4 v10, 0x0

    .line 614
    const-wide/16 v8, 0x0

    cmp-long v8, p1, v8

    if-gtz v8, :cond_1

    .line 615
    const/4 v4, -0x1

    .line 631
    :cond_0
    :goto_0
    return v4

    .line 617
    :cond_1
    const-string v0, "SIM"

    .line 618
    .local v0, default_name:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 619
    .local v3, resolver:Landroid/content/ContentResolver;
    sget-object v8, Landroid/telephony/BaiduTelephonyUtils$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 620
    .local v6, uri:Landroid/net/Uri;
    if-eqz p3, :cond_2

    .line 621
    invoke-static {p0, p3, p1, p2}, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->setDisplayName(Landroid/content/Context;Ljava/lang/String;J)I

    move-result v4

    .line 622
    .local v4, result:I
    if-gtz v4, :cond_0

    .line 626
    .end local v4           #result:I
    :cond_2
    invoke-static {p0, p1, p2, p3}, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->getAppropriateIndex(Landroid/content/Context;JLjava/lang/String;)I

    move-result v2

    .line 627
    .local v2, index:I
    invoke-static {v2}, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->getSuffixFromIndex(I)Ljava/lang/String;

    move-result-object v5

    .line 628
    .local v5, suffix:Ljava/lang/String;
    new-instance v7, Landroid/content/ContentValues;

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Landroid/content/ContentValues;-><init>(I)V

    .line 629
    .local v7, value:Landroid/content/ContentValues;
    if-nez p3, :cond_3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 630
    .local v1, display_name:Ljava/lang/String;
    :goto_1
    const-string v8, "display_name"

    invoke-virtual {v7, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v8, v6, v7, v10, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    .line 629
    .end local v1           #display_name:Ljava/lang/String;
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public static setDispalyNumberFormat(Landroid/content/Context;IJ)I
    .locals 4
    .parameter "ctx"
    .parameter "format"
    .parameter "SIMId"

    .prologue
    const/4 v3, 0x0

    .line 536
    if-ltz p1, :cond_0

    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-gtz v1, :cond_1

    :cond_0
    const/4 v1, -0x1

    .line 539
    :goto_0
    return v1

    .line 537
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 538
    .local v0, value:Landroid/content/ContentValues;
    const-string v1, "display_number_format"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 539
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/telephony/BaiduTelephonyUtils$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public static setDisplayName(Landroid/content/Context;Ljava/lang/String;J)I
    .locals 10
    .parameter "ctx"
    .parameter "displayName"
    .parameter "SIMId"

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x1

    .line 478
    if-eqz p1, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_2

    :cond_0
    const/4 v0, -0x1

    .line 494
    :cond_1
    :goto_0
    return v0

    .line 479
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/telephony/BaiduTelephonyUtils$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v9

    const-string v3, "display_name=?"

    new-array v4, v8, [Ljava/lang/String;

    aput-object p1, v4, v9

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 482
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 483
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_3

    .line 484
    const/4 v0, -0x2

    .line 488
    if-eqz v6, :cond_1

    .line 489
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 488
    :cond_3
    if-eqz v6, :cond_4

    .line 489
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 492
    :cond_4
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7, v8}, Landroid/content/ContentValues;-><init>(I)V

    .line 493
    .local v7, value:Landroid/content/ContentValues;
    const-string v0, "display_name"

    invoke-virtual {v7, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/telephony/BaiduTelephonyUtils$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v7, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 488
    .end local v7           #value:Landroid/content/ContentValues;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 489
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method public static setIpAutoEnable(Landroid/content/Context;IJ)I
    .locals 5
    .parameter "ctx"
    .parameter "ipAutoEnable"
    .parameter "SIMId"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 731
    if-gt p1, v3, :cond_0

    if-ltz p1, :cond_0

    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-gtz v1, :cond_1

    :cond_0
    const/4 v1, -0x1

    .line 734
    :goto_0
    return v1

    .line 732
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 733
    .local v0, value:Landroid/content/ContentValues;
    const-string v1, "ip_auto_enable"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 734
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/telephony/BaiduTelephonyUtils$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public static setIpCustomPrefix(Landroid/content/Context;Ljava/lang/String;J)I
    .locals 4
    .parameter "ctx"
    .parameter "ipCustomPrefix"
    .parameter "SIMId"

    .prologue
    const/4 v3, 0x0

    .line 742
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-gtz v1, :cond_0

    const/4 v1, -0x1

    .line 745
    :goto_0
    return v1

    .line 743
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 744
    .local v0, value:Landroid/content/ContentValues;
    const-string v1, "ip_custom_prefix"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/telephony/BaiduTelephonyUtils$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public static setIpEnable(Landroid/content/Context;IJ)I
    .locals 6
    .parameter "ctx"
    .parameter "enable"
    .parameter "SIMId"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v1, -0x1

    .line 693
    if-gt p1, v4, :cond_0

    if-lt p1, v1, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-gtz v2, :cond_1

    .line 698
    :cond_0
    :goto_0
    return v1

    .line 696
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 697
    .local v0, value:Landroid/content/ContentValues;
    const-string v1, "ip_enable"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 698
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/telephony/BaiduTelephonyUtils$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public static setIpFirstEnable(Landroid/content/Context;IJ)I
    .locals 4
    .parameter "ctx"
    .parameter "ipFirstEnable"
    .parameter "SIMId"

    .prologue
    const/4 v3, 0x0

    .line 753
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-gtz v1, :cond_0

    const/4 v1, -0x1

    .line 756
    :goto_0
    return v1

    .line 754
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 755
    .local v0, value:Landroid/content/ContentValues;
    const-string v1, "ip_first_enable"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 756
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/telephony/BaiduTelephonyUtils$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public static setIpPrefix(Landroid/content/Context;Ljava/lang/String;J)I
    .locals 4
    .parameter "ctx"
    .parameter "ipPrefix"
    .parameter "SIMId"

    .prologue
    const/4 v3, 0x0

    .line 709
    if-eqz p1, :cond_0

    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-gtz v1, :cond_1

    :cond_0
    const/4 v1, -0x1

    .line 712
    :goto_0
    return v1

    .line 710
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 711
    .local v0, value:Landroid/content/ContentValues;
    const-string v1, "ip_prefix"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/telephony/BaiduTelephonyUtils$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public static setIpSelfLocation(Landroid/content/Context;Ljava/lang/String;J)I
    .locals 4
    .parameter "ctx"
    .parameter "location"
    .parameter "SIMId"

    .prologue
    const/4 v3, 0x0

    .line 720
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-gtz v1, :cond_0

    const/4 v1, -0x1

    .line 723
    :goto_0
    return v1

    .line 721
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 722
    .local v0, value:Landroid/content/ContentValues;
    const-string v1, "ip_self_location"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/telephony/BaiduTelephonyUtils$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public static setNumber(Landroid/content/Context;Ljava/lang/String;J)I
    .locals 4
    .parameter "ctx"
    .parameter "number"
    .parameter "SIMId"

    .prologue
    const/4 v3, 0x0

    .line 505
    if-eqz p1, :cond_0

    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-gtz v1, :cond_1

    :cond_0
    const/4 v1, -0x1

    .line 508
    :goto_0
    return v1

    .line 506
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 507
    .local v0, value:Landroid/content/ContentValues;
    const-string v1, "number"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/telephony/BaiduTelephonyUtils$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public static setSMSRingTone(Landroid/content/Context;Ljava/lang/String;J)I
    .locals 4
    .parameter "ctx"
    .parameter "ringtone"
    .parameter "SIMId"

    .prologue
    const/4 v3, 0x0

    .line 780
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-gtz v1, :cond_0

    .line 781
    const/4 v1, -0x1

    .line 785
    :goto_0
    return v1

    .line 783
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 784
    .local v0, value:Landroid/content/ContentValues;
    const-string v1, "sms_ringtone"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/telephony/BaiduTelephonyUtils$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public static setWAPPush(Landroid/content/Context;IJ)I
    .locals 6
    .parameter "ctx"
    .parameter "enable"
    .parameter "SIMId"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v1, -0x1

    .line 563
    if-gt p1, v4, :cond_0

    if-lt p1, v1, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-gtz v2, :cond_1

    .line 568
    :cond_0
    :goto_0
    return v1

    .line 566
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 567
    .local v0, value:Landroid/content/ContentValues;
    const-string v1, "wap_push"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 568
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/telephony/BaiduTelephonyUtils$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method
