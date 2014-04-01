.class public final Landroid/provider/Telephony$Sms$Intents;
.super Ljava/lang/Object;
.source "Telephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony$Sms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Intents"
.end annotation


# static fields
.field public static final DATA_SMS_RECEIVED_ACTION:Ljava/lang/String; = "android.intent.action.DATA_SMS_RECEIVED"

.field public static final DM_REGISTER_SMS_RECEIVED_ACTION:Ljava/lang/String; = "android.intent.action.DM_REGISTER_SMS_RECEIVED"

.field public static final MWI_SMS_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.MWI_SMS_RECEIVED"

.field public static final RESULT_SMS_GENERIC_ERROR:I = 0x2

.field public static final RESULT_SMS_HANDLED:I = 0x1

.field public static final RESULT_SMS_OUT_OF_MEMORY:I = 0x3

.field public static final RESULT_SMS_UNSUPPORTED:I = 0x4

.field public static final SIM_FULL_ACTION:Ljava/lang/String; = "android.provider.Telephony.SIM_FULL"

.field public static final SMS_CB_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_CB_RECEIVED"

.field public static final SMS_EMERGENCY_CB_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_EMERGENCY_CB_RECEIVED"

.field public static final SMS_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"

.field public static final SMS_REJECTED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_REJECTED"

.field public static final SMS_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_STATE_CHANGED"

.field public static final WAP_PUSH_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.WAP_PUSH_RECEIVED"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 677
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;
    .locals 11
    .parameter "intent"

    .prologue
    .line 894
    const-string/jumbo v8, "pdus"

    invoke-virtual {p0, v8}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v8

    check-cast v8, [Ljava/lang/Object;

    move-object v2, v8

    check-cast v2, [Ljava/lang/Object;

    .line 895
    .local v2, messages:[Ljava/lang/Object;
    const-string v8, "format"

    invoke-virtual {p0, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 898
    .local v0, format:Ljava/lang/String;
    if-nez v2, :cond_1

    .line 899
    const/4 v3, 0x0

    .line 922
    :cond_0
    return-object v3

    .line 902
    :cond_1
    array-length v8, v2

    new-array v5, v8, [[B

    .line 904
    .local v5, pduObjs:[[B
    const-string/jumbo v8, "simId"

    const/4 v9, -0x1

    invoke-virtual {p0, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 905
    .local v7, simId:I
    const-string v8, "Telephony"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Get SmeMessage ID: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v8, v2

    if-ge v1, v8, :cond_2

    .line 910
    aget-object v8, v2, v1

    check-cast v8, [B

    check-cast v8, [B

    aput-object v8, v5, v1

    .line 909
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 912
    :cond_2
    array-length v8, v5

    new-array v6, v8, [[B

    .line 913
    .local v6, pdus:[[B
    array-length v4, v6

    .line 914
    .local v4, pduCount:I
    new-array v3, v4, [Landroid/telephony/SmsMessage;

    .line 915
    .local v3, msgs:[Landroid/telephony/SmsMessage;
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_0

    .line 916
    aget-object v8, v5, v1

    aput-object v8, v6, v1

    .line 919
    aget-object v8, v6, v1

    invoke-static {v8, v7}, Landroid/telephony/gemini/GeminiSmsMessage;->createFromPdu([BI)Landroid/telephony/gemini/GeminiSmsMessage;

    move-result-object v8

    aput-object v8, v3, v1

    .line 915
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
