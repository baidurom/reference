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
.field public static final ACTION_PHB_STATE_CHANGED:Ljava/lang/String; = "action.phb.state.changed"

.field public static final ACTION_SMS_DEFAULT_SIM_CHANGED:Ljava/lang/String; = "android.intent.action.SMS_DEFAULT_SIM"

.field public static final ACTION_UNLOCK_PINPUK_REQUEST:Ljava/lang/String; = "action.unlock.pinpuk.request"

.field public static final BAIDU_DIAL_SLOT_KEY:Ljava/lang/String; = "subscription"

.field public static final BAIDU_SIM_ID_KEY:Ljava/lang/String; = "sim_id"

.field public static final BAIDU_SIM_ID_KEY_NO_UNDERLINE:Ljava/lang/String; = "simid"

.field public static final BAIDU_SLOT_KEY:Ljava/lang/String; = "simId"

.field public static final Baidu_DATA_SIM_KEY:Ljava/lang/String; = ""

.field public static final Baidu_DEFAULT_SIM:I = 0x0

.field public static final Baidu_MAX_SIMCOUNT:I = 0x2

.field public static final Baidu_SIMSLOT_1:I = 0x0

.field public static final Baidu_SIMSLOT_2:I = 0x1

.field public static final Baidu_SIMSLOT_NONE:I = -0x1

.field public static final Baidu_SMS_SIM_KEY:Ljava/lang/String; = ""

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
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/telephony/BaiduTelephonyUtils;->SIMBackgroundRes:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 825
    return-void
.end method

.method public static baiduTelephonyUtilsTest()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    const-string v0, "BaiduTelephonyUtils"

    return-object v0
.end method

.method public static getCurrentCarriersCursor(Landroid/content/Context;Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 1
    .parameter "context"
    .parameter "apnName"
    .parameter "slotId"

    .prologue
    .line 831
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getMessageSimId(Landroid/telephony/SmsMessage;)I
    .locals 1
    .parameter "sms"

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public static getMmsDataSlotId()I
    .locals 1

    .prologue
    .line 841
    const/4 v0, 0x0

    return v0
.end method

.method public static getPreferredDataSlot(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 882
    const/4 v0, -0x1

    return v0
.end method

.method public static getPreferredSmsSlot(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 875
    const/4 v0, -0x1

    return v0
.end method

.method public static getPreferredVoiceSlot(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 861
    const/4 v0, -0x1

    return v0
.end method

.method public static isDisableSlotForbidden()Z
    .locals 1

    .prologue
    .line 889
    const/4 v0, 0x0

    return v0
.end method

.method public static isSimIdValid(J)Z
    .locals 1
    .parameter "simId"

    .prologue
    .line 836
    const/4 v0, 0x0

    return v0
.end method

.method public static isSlotActive(Landroid/content/Context;I)Z
    .locals 1
    .parameter "context"
    .parameter "slotId"

    .prologue
    .line 846
    const/4 v0, 0x1

    return v0
.end method

.method public static requestUnlockPINPUK(Landroid/content/Context;II)V
    .locals 2
    .parameter "context"
    .parameter "slotId"
    .parameter "requestType"

    .prologue
    .line 64
    new-instance v0, Landroid/content/Intent;

    const-string v1, "action.unlock.pinpuk.request"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 65
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "SLOT_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 66
    const-string v1, "REQUEST_TYPE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 67
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 68
    return-void
.end method

.method public static setPreferredSmsSlot(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "slotId"

    .prologue
    .line 868
    return-void
.end method

.method public static setPreferredVoiceSlot(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "slotId"

    .prologue
    .line 854
    return-void
.end method
