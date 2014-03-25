.class public Landroid/telephony/BaiduTelephonyUtils;
.super Ljava/lang/Object;
.source "BaiduTelephonyUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/BaiduTelephonyUtils$Contacts;,
        Landroid/telephony/BaiduTelephonyUtils$CallLog;,
        Landroid/telephony/BaiduTelephonyUtils$PendingMessages;,
        Landroid/telephony/BaiduTelephonyUtils$Sms;,
        Landroid/telephony/BaiduTelephonyUtils$Mms;,
        Landroid/telephony/BaiduTelephonyUtils$DSDSBaseColumns;,
        Landroid/telephony/BaiduTelephonyUtils$SIMInfo;,
        Landroid/telephony/BaiduTelephonyUtils$SimInfo;
    }
.end annotation


# static fields
.field public static final ACTION_PHB_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.PHB_STATE_CHANGED"

.field public static final ACTION_SMS_DEFAULT_SIM_CHANGED:Ljava/lang/String; = "android.intent.action.SMS_DEFAULT_SIM"

.field public static final ACTION_UNLOCK_PINPUK_REQUEST:Ljava/lang/String; = "action.unlock.pinpuk.request"

.field private static final APN_PROJECTION:[Ljava/lang/String; = null

.field public static final BAIDU_DIAL_SLOT_KEY:Ljava/lang/String; = "com.android.phone.extra.slot"

.field public static final BAIDU_SIM_ID_KEY:Ljava/lang/String; = "sim_id"

.field public static final BAIDU_SIM_ID_KEY_NO_UNDERLINE:Ljava/lang/String; = "simid"

.field public static final BAIDU_SLOT_KEY:Ljava/lang/String; = "simId"

.field public static final Baidu_DATA_SIM_KEY:Ljava/lang/String; = "gprs_connection_sim_setting"

.field public static final Baidu_DEFAULT_SIM:I = 0x0

.field public static final Baidu_MAX_SIMCOUNT:I = 0x2

.field public static final Baidu_SIMSLOT_1:I = 0x0

.field public static final Baidu_SIMSLOT_2:I = 0x1

.field public static final Baidu_SIMSLOT_NONE:I = -0x1

.field public static final Baidu_SMS_SIM_KEY:Ljava/lang/String; = "sms_sim_setting"

.field public static final DEFAULT_SIM_SETTING_ALWAYS_ASK:J = -0x1L

.field static final LOG_TAG:Ljava/lang/String; = "BaiduTelephonyUtils"

.field public static final REQUEST_TYPE:Ljava/lang/String; = "REQUEST_TYPE"

.field public static final REQUEST_TYPE_FDN:I = 0x130

.field public static final REQUEST_TYPE_ROAMING:I = 0x132

.field public static final REQUEST_TYPE_SIMLOCK:I = 0x12e

.field public static final REQUEST_TYPE_UNKNOWN:I = 0x12c

.field public static final SIMBackgroundRes:[I = null

.field public static final SLOT_ID:Ljava/lang/String; = "SLOT_ID"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 47
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "mmsc"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "mmsproxy"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "mmsport"

    aput-object v2, v0, v1

    sput-object v0, Landroid/telephony/BaiduTelephonyUtils;->APN_PROJECTION:[Ljava/lang/String;

    .line 196
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/telephony/BaiduTelephonyUtils;->SIMBackgroundRes:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0xf0t 0x0t 0x2t 0x2t
        0xf3t 0x0t 0x2t 0x2t
        0xf1t 0x0t 0x2t 0x2t
        0xf4t 0x0t 0x2t 0x2t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 837
    return-void
.end method

.method public static baiduTelephonyUtilsTest()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    const-string v0, "BaiduTelephonyUtils"

    return-object v0
.end method

.method public static getCurrentCarriersCursor(Landroid/content/Context;Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 8
    .parameter "context"
    .parameter "apnName"
    .parameter "slotId"

    .prologue
    const/4 v5, 0x0

    .line 843
    if-eqz p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "apn=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 845
    .local v4, selection:Ljava/lang/String;
    :goto_0
    const/4 v7, 0x0

    .line 846
    .local v7, cursor:Landroid/database/Cursor;
    if-nez p2, :cond_2

    .line 847
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v0, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "current"

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Landroid/telephony/BaiduTelephonyUtils;->APN_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 857
    :cond_0
    :goto_1
    return-object v7

    .end local v4           #selection:Ljava/lang/String;
    .end local v7           #cursor:Landroid/database/Cursor;
    :cond_1
    move-object v4, v5

    .line 843
    goto :goto_0

    .line 850
    .restart local v4       #selection:Ljava/lang/String;
    .restart local v7       #cursor:Landroid/database/Cursor;
    :cond_2
    const/4 v0, 0x1

    if-ne v0, p2, :cond_0

    .line 851
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v0, Landroid/provider/Telephony$Carriers$GeminiCarriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "current"

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Landroid/telephony/BaiduTelephonyUtils;->APN_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    goto :goto_1
.end method

.method public static getMmsDataSlotId()I
    .locals 3

    .prologue
    .line 867
    invoke-static {}, Landroid/net/BaiduConnectivityManager;->getDefault()Landroid/net/BaiduConnectivityManager;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/net/BaiduConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 868
    .local v0, info:Landroid/net/NetworkInfo;
    if-nez v0, :cond_0

    .line 870
    const/4 v1, -0x1

    .line 872
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSimId()I

    move-result v1

    goto :goto_0
.end method

.method public static getPreferredDataSlot(Landroid/content/Context;)I
    .locals 8
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 966
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "gprs_connection_sim_setting"

    const-wide/16 v6, -0x5

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 969
    .local v0, dataconnectionID:J
    invoke-static {p0, v0, v1}, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->getSlotById(Landroid/content/Context;J)I

    move-result v2

    .line 970
    .local v2, predataSlotId:I
    if-nez v2, :cond_1

    .line 971
    const/4 v3, 0x0

    .line 977
    :cond_0
    :goto_0
    return v3

    .line 973
    :cond_1
    if-eq v2, v3, :cond_0

    .line 977
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public static getPreferredSmsSlot(Landroid/content/Context;)I
    .locals 8
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 948
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "sms_sim_setting"

    const-wide/16 v6, -0x5

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 950
    .local v0, preSmsSimId:J
    invoke-static {p0, v0, v1}, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->getSlotById(Landroid/content/Context;J)I

    move-result v2

    .line 951
    .local v2, preSmsSlotId:I
    if-nez v2, :cond_1

    .line 952
    const/4 v3, 0x0

    .line 958
    :cond_0
    :goto_0
    return v3

    .line 954
    :cond_1
    if-eq v2, v3, :cond_0

    .line 958
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public static getPreferredVoiceSlot(Landroid/content/Context;)I
    .locals 8
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 911
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "voice_call_sim_setting"

    const-wide/16 v6, -0x5

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 913
    .local v0, preVoiceSimId:J
    invoke-static {p0, v0, v1}, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->getSlotById(Landroid/content/Context;J)I

    move-result v2

    .line 914
    .local v2, preVoiceSlotId:I
    if-nez v2, :cond_1

    .line 915
    const/4 v3, 0x0

    .line 921
    :cond_0
    :goto_0
    return v3

    .line 917
    :cond_1
    if-eq v2, v3, :cond_0

    .line 921
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public static isDisableSlotForbidden()Z
    .locals 1

    .prologue
    .line 985
    const/4 v0, 0x0

    return v0
.end method

.method public static isSimIdValid(J)Z
    .locals 2
    .parameter "simId"

    .prologue
    .line 862
    const-wide/16 v0, -0x5

    cmp-long v0, v0, p0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSlotActive(Landroid/content/Context;I)Z
    .locals 5
    .parameter "context"
    .parameter "slotId"

    .prologue
    const/4 v1, 0x1

    .line 877
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dual_sim_mode_setting"

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 878
    .local v0, dualSimMode:I
    const/4 v2, 0x3

    if-ne v2, v0, :cond_1

    .line 885
    :cond_0
    :goto_0
    return v1

    .line 880
    :cond_1
    if-ne v1, v0, :cond_2

    if-eqz p1, :cond_0

    .line 882
    :cond_2
    const/4 v2, 0x2

    if-ne v2, v0, :cond_3

    if-eq v1, p1, :cond_0

    .line 885
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static requestUnlockPINPUK(Landroid/content/Context;II)V
    .locals 2
    .parameter "context"
    .parameter "slotId"
    .parameter "requestType"

    .prologue
    .line 80
    new-instance v0, Landroid/content/Intent;

    const-string v1, "action.unlock.pinpuk.request"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 81
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "SLOT_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 82
    const-string v1, "REQUEST_TYPE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 83
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 84
    return-void
.end method

.method public static setPreferredSmsSlot(Landroid/content/Context;I)V
    .locals 6
    .parameter "context"
    .parameter "slotId"

    .prologue
    .line 929
    invoke-static {p0, p1}, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/telephony/BaiduTelephonyUtils$SIMInfo;

    move-result-object v3

    .line 930
    .local v3, preSmsSimInfo:Landroid/telephony/BaiduTelephonyUtils$SIMInfo;
    const-wide/16 v1, -0x1

    .line 932
    .local v1, preSmsSimId:J
    if-eqz v3, :cond_0

    .line 933
    iget-wide v1, v3, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mSimId:J

    .line 936
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "sms_sim_setting"

    invoke-static {v4, v5, v1, v2}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 938
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.SMS_DEFAULT_SIM"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 939
    .local v0, intent:Landroid/content/Intent;
    const-string v4, "simid"

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 940
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 941
    return-void
.end method

.method public static setPreferredVoiceSlot(Landroid/content/Context;I)V
    .locals 6
    .parameter "context"
    .parameter "slotId"

    .prologue
    .line 894
    invoke-static {p0, p1}, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/telephony/BaiduTelephonyUtils$SIMInfo;

    move-result-object v3

    .line 895
    .local v3, preVoiceSimInfo:Landroid/telephony/BaiduTelephonyUtils$SIMInfo;
    const-wide/16 v1, -0x1

    .line 896
    .local v1, preVoiceSimId:J
    if-eqz v3, :cond_0

    .line 897
    iget-wide v1, v3, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mSimId:J

    .line 900
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "voice_call_sim_setting"

    invoke-static {v4, v5, v1, v2}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 902
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.VOICE_CALL_DEFAULT_SIM"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 903
    .local v0, intent:Landroid/content/Intent;
    const-string v4, "simid"

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 904
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 905
    return-void
.end method
