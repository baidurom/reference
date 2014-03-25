.class public Landroid/telephony/BaiduSubManager;
.super Landroid/os/Handler;
.source "BaiduSubManager.java"


# static fields
.field private static final CDMA_MODE:I = 0x0

.field private static final DBG:Z = true

.field private static final EVENT_DUAL_SIM_MODE_CHANGED_COMPLETE:I = 0x1

.field private static final EVENT_TIME_OUT:I = 0x7d1

.field private static final GET_SIM_RETRY_EMPTY:I = -0x64

.field private static final GSM_MODE:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "BaiduSubManager"

.field private static final MAX_SUBSCRIPTIONS:I = 0x2

.field private static final SLOT_0:I = 0x0

.field private static final SLOT_1:I = 0x1

.field private static final SUB_0:I = 0x0

.field private static final SUB_1:I = 0x1

.field private static final TIME_OUT_LENGTH:I = 0x7530

.field private static sBaiduSubManager:Landroid/telephony/BaiduSubManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataConnectionReceiver:Landroid/content/BroadcastReceiver;

.field private mDataSubscription:I

.field private mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mMessenger:Landroid/os/Messenger;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mSetDataSubscriptionMsg:Landroid/os/Message;

.field private mSetSlotActiveMsg:Landroid/os/Message;

.field private mSetSlotModeMsg:Landroid/os/Message;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 100
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 70
    iput-object v0, p0, Landroid/telephony/BaiduSubManager;->mSetSlotActiveMsg:Landroid/os/Message;

    .line 71
    iput-object v0, p0, Landroid/telephony/BaiduSubManager;->mSetSlotModeMsg:Landroid/os/Message;

    .line 72
    iput-object v0, p0, Landroid/telephony/BaiduSubManager;->mSetDataSubscriptionMsg:Landroid/os/Message;

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/BaiduSubManager;->mDataSubscription:I

    .line 126
    new-instance v0, Landroid/telephony/BaiduSubManager$1;

    invoke-direct {v0, p0}, Landroid/telephony/BaiduSubManager$1;-><init>(Landroid/telephony/BaiduSubManager;)V

    iput-object v0, p0, Landroid/telephony/BaiduSubManager;->mDataConnectionReceiver:Landroid/content/BroadcastReceiver;

    .line 102
    const-string v0, "BaiduSubManager"

    const-string v1, "Constructor - Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iput-object p1, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    .line 105
    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/telephony/BaiduSubManager;->mMessenger:Landroid/os/Messenger;

    .line 106
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/telephony/BaiduSubManager;->mIntentFilter:Landroid/content/IntentFilter;

    .line 107
    iget-object v0, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/telephony/BaiduSubManager;->mDataConnectionReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Landroid/telephony/BaiduSubManager;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 110
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iput-object v0, p0, Landroid/telephony/BaiduSubManager;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 111
    iget-object v0, p0, Landroid/telephony/BaiduSubManager;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    if-nez v0, :cond_0

    .line 112
    const-string v0, "BaiduSubManager"

    const-string v1, "mGeminiPhone == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_0
    const-string v0, "BaiduSubManager"

    const-string v1, "Constructor - Exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    return-void
.end method

.method static synthetic access$000(Landroid/telephony/BaiduSubManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Landroid/telephony/BaiduSubManager;->mDataSubscription:I

    return v0
.end method

.method static synthetic access$100(Landroid/telephony/BaiduSubManager;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Landroid/telephony/BaiduSubManager;->mSetDataSubscriptionMsg:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$102(Landroid/telephony/BaiduSubManager;Landroid/os/Message;)Landroid/os/Message;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Landroid/telephony/BaiduSubManager;->mSetDataSubscriptionMsg:Landroid/os/Message;

    return-object p1
.end method

.method private getITelephony()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    .prologue
    .line 205
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/telephony/BaiduSubManager;
    .locals 2
    .parameter "context"

    .prologue
    .line 84
    const-string v0, "BaiduSubManager"

    const-string v1, "getInstance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    sget-object v0, Landroid/telephony/BaiduSubManager;->sBaiduSubManager:Landroid/telephony/BaiduSubManager;

    if-nez v0, :cond_1

    .line 87
    if-nez p0, :cond_0

    .line 88
    const-string v0, "BaiduSubManager"

    const-string v1, "sBaiduSubManager == null, context == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const/4 v0, 0x0

    .line 93
    :goto_0
    return-object v0

    .line 91
    :cond_0
    new-instance v0, Landroid/telephony/BaiduSubManager;

    invoke-direct {v0, p0}, Landroid/telephony/BaiduSubManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/telephony/BaiduSubManager;->sBaiduSubManager:Landroid/telephony/BaiduSubManager;

    .line 93
    :cond_1
    sget-object v0, Landroid/telephony/BaiduSubManager;->sBaiduSubManager:Landroid/telephony/BaiduSubManager;

    goto :goto_0
.end method


# virtual methods
.method public changeIccLockPassword(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .parameter "subscription"
    .parameter "oldPassword"
    .parameter "newPassword"
    .parameter "onCompleteMsg"

    .prologue
    .line 961
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    if-ne v2, p1, :cond_4

    .line 963
    :cond_0
    const-string v2, "BaiduSubManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeIccLockPassword, subscription = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    iget-object v2, p0, Landroid/telephony/BaiduSubManager;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    if-nez v2, :cond_1

    .line 966
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iput-object v2, p0, Landroid/telephony/BaiduSubManager;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 968
    :cond_1
    iget-object v2, p0, Landroid/telephony/BaiduSubManager;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    if-nez v2, :cond_3

    .line 969
    const-string v2, "BaiduSubManager"

    const-string v3, "mGeminiPhone == null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    if-eqz p4, :cond_2

    .line 971
    const/4 v1, 0x0

    .line 972
    .local v1, result:Z
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "mGeminiPhone == null"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 973
    .local v0, exception:Ljava/lang/RuntimeException;
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p4, v2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 974
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    .line 989
    .end local v0           #exception:Ljava/lang/RuntimeException;
    .end local v1           #result:Z
    :cond_2
    :goto_0
    return-void

    .line 977
    :cond_3
    iget-object v2, p0, Landroid/telephony/BaiduSubManager;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-interface {v2, p2, p3, p4}, Lcom/android/internal/telephony/IccCard;->changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 980
    :cond_4
    const-string v2, "BaiduSubManager"

    const-string v3, "subscription error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    if-eqz p4, :cond_2

    .line 982
    const/4 v1, 0x0

    .line 983
    .restart local v1       #result:Z
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "subscription error"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 984
    .restart local v0       #exception:Ljava/lang/RuntimeException;
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p4, v2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 985
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public getDataRoamingEnabled(I)Z
    .locals 9
    .parameter "subscription"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 755
    if-eqz p1, :cond_1

    if-eq p1, v4, :cond_1

    .line 756
    const-string v4, "BaiduSubManager"

    const-string v6, "subscription error"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    :cond_0
    :goto_0
    return v5

    .line 760
    :cond_1
    :try_start_0
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 763
    .local v1, resolver:Landroid/content/ContentResolver;
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-static {v6, p1}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v2

    .line 764
    .local v2, simInfo:Landroid/provider/Telephony$SIMInfo;
    if-eqz v2, :cond_0

    .line 765
    iget v0, v2, Landroid/provider/Telephony$SIMInfo;->mDataRoaming:I

    .line 767
    .local v0, dataRoaming:I
    const-string v6, "BaiduSubManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dataRoaming = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 769
    if-ne v0, v4, :cond_2

    :goto_1
    move v5, v4

    goto :goto_0

    :cond_2
    move v4, v5

    goto :goto_1

    .line 782
    .end local v0           #dataRoaming:I
    .end local v1           #resolver:Landroid/content/ContentResolver;
    .end local v2           #simInfo:Landroid/provider/Telephony$SIMInfo;
    :catch_0
    move-exception v3

    .line 783
    .local v3, snfe:Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method public getMmsRoamingEnabled(I)Z
    .locals 9
    .parameter "subscription"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 807
    if-eqz p1, :cond_1

    if-eq p1, v4, :cond_1

    .line 808
    const-string v4, "BaiduSubManager"

    const-string v6, "subscription error"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    :cond_0
    :goto_0
    return v5

    .line 812
    :cond_1
    :try_start_0
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 815
    .local v1, resolver:Landroid/content/ContentResolver;
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-static {v6, p1}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v2

    .line 816
    .local v2, simInfo:Landroid/provider/Telephony$SIMInfo;
    if-eqz v2, :cond_0

    .line 817
    iget v0, v2, Landroid/provider/Telephony$SIMInfo;->mDataRoaming:I

    .line 819
    .local v0, dataRoaming:I
    const-string v6, "BaiduSubManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dataRoaming = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 821
    if-ne v0, v4, :cond_2

    :goto_1
    move v5, v4

    goto :goto_0

    :cond_2
    move v4, v5

    goto :goto_1

    .line 834
    .end local v0           #dataRoaming:I
    .end local v1           #resolver:Landroid/content/ContentResolver;
    .end local v2           #simInfo:Landroid/provider/Telephony$SIMInfo;
    :catch_0
    move-exception v3

    .line 835
    .local v3, snfe:Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method public getRetryPin1Count(I)I
    .locals 2
    .parameter "subscription"

    .prologue
    const/16 v1, -0x64

    .line 1001
    if-nez p1, :cond_0

    .line 1002
    const-string v0, "gsm.sim.retry.pin1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1007
    :goto_0
    return v0

    .line 1003
    :cond_0
    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    .line 1004
    const-string v0, "gsm.sim.retry.pin1.2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 1006
    :cond_1
    const-string v0, "BaiduSubManager"

    const-string v1, "getRetryPin1Count subscription error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getSlotActive(I)Z
    .locals 6
    .parameter "slot"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 570
    if-eqz p1, :cond_1

    if-eq p1, v2, :cond_1

    .line 571
    const-string v2, "BaiduSubManager"

    const-string v3, "slot error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    :cond_0
    :goto_0
    return v1

    .line 574
    :cond_1
    invoke-virtual {p0, p1}, Landroid/telephony/BaiduSubManager;->isCardInsert(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 575
    const-string v2, "BaiduSubManager"

    const-string v3, "no card in slot"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 578
    :cond_2
    iget-object v3, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "dual_sim_mode_setting"

    const/4 v5, -0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 579
    .local v0, dualSimMode:I
    const/4 v3, 0x3

    if-ne v3, v0, :cond_3

    move v1, v2

    .line 580
    goto :goto_0

    .line 581
    :cond_3
    if-ne v2, v0, :cond_4

    if-nez p1, :cond_4

    move v1, v2

    .line 582
    goto :goto_0

    .line 583
    :cond_4
    const/4 v3, 0x2

    if-ne v3, v0, :cond_0

    if-ne v2, p1, :cond_0

    move v1, v2

    .line 584
    goto :goto_0
.end method

.method public getSlotMode(I)I
    .locals 3
    .parameter "slot"

    .prologue
    const/4 v2, 0x1

    .line 643
    if-eqz p1, :cond_1

    if-eq p1, v2, :cond_1

    .line 644
    const-string v0, "BaiduSubManager"

    const-string v1, "slot error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    :cond_0
    :goto_0
    return v2

    .line 647
    :cond_1
    invoke-virtual {p0, p1}, Landroid/telephony/BaiduSubManager;->isCardInsert(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 648
    const-string v0, "BaiduSubManager"

    const-string v1, "no card in slot"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    .line 161
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 165
    :sswitch_0
    const-string v3, "BaiduSubManager"

    const-string v4, "EVENT_DUAL_SIM_MODE_CHANGED_COMPLETE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/BaiduSubManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    iget-object v4, p0, Landroid/telephony/BaiduSubManager;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v4}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/ITelephony;->unregisterForSimModeChange(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 178
    :goto_1
    iget-object v3, p0, Landroid/telephony/BaiduSubManager;->mSetSlotActiveMsg:Landroid/os/Message;

    if-eqz v3, :cond_0

    .line 179
    const/4 v2, 0x1

    .line 180
    .local v2, result:Z
    const/4 v1, 0x0

    .line 181
    .local v1, exception:Ljava/lang/RuntimeException;
    iget-object v3, p0, Landroid/telephony/BaiduSubManager;->mSetSlotActiveMsg:Landroid/os/Message;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 182
    iget-object v3, p0, Landroid/telephony/BaiduSubManager;->mSetSlotActiveMsg:Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 183
    iput-object v5, p0, Landroid/telephony/BaiduSubManager;->mSetSlotActiveMsg:Landroid/os/Message;

    goto :goto_0

    .line 169
    .end local v1           #exception:Ljava/lang/RuntimeException;
    .end local v2           #result:Z
    :catch_0
    move-exception v0

    .line 170
    .local v0, ex:Landroid/os/RemoteException;
    const-string v3, "BaiduSubManager"

    const-string v4, "RemoteException ex"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 171
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 172
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v3, "BaiduSubManager"

    const-string v4, "NullPointerException ex"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 190
    .end local v0           #ex:Ljava/lang/NullPointerException;
    :sswitch_1
    const-string v3, "BaiduSubManager"

    const-string v4, "setDataSubscription timeout"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v3, p0, Landroid/telephony/BaiduSubManager;->mSetDataSubscriptionMsg:Landroid/os/Message;

    if-eqz v3, :cond_0

    .line 193
    const/4 v2, 0x0

    .line 194
    .restart local v2       #result:Z
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "setDataSubscription timeout"

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 195
    .restart local v1       #exception:Ljava/lang/RuntimeException;
    iget-object v3, p0, Landroid/telephony/BaiduSubManager;->mSetDataSubscriptionMsg:Landroid/os/Message;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 196
    iget-object v3, p0, Landroid/telephony/BaiduSubManager;->mSetDataSubscriptionMsg:Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 197
    iput-object v5, p0, Landroid/telephony/BaiduSubManager;->mSetDataSubscriptionMsg:Landroid/os/Message;

    goto :goto_0

    .line 161
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x7d1 -> :sswitch_1
    .end sparse-switch
.end method

.method public isCardInsert(I)Z
    .locals 4
    .parameter "slot"

    .prologue
    const/4 v1, 0x0

    .line 215
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    .line 216
    const-string v2, "BaiduSubManager"

    const-string v3, "slot error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :goto_0
    return v1

    .line 221
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/BaiduSubManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->isSimInsert(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 222
    :catch_0
    move-exception v0

    .line 223
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "BaiduSubManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isIccLockEnabled(I)Z
    .locals 3
    .parameter "subscription"

    .prologue
    const/4 v1, 0x0

    .line 858
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-ne v0, p1, :cond_3

    .line 859
    :cond_0
    iget-object v0, p0, Landroid/telephony/BaiduSubManager;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    if-nez v0, :cond_1

    .line 860
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iput-object v0, p0, Landroid/telephony/BaiduSubManager;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 862
    :cond_1
    iget-object v0, p0, Landroid/telephony/BaiduSubManager;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    if-nez v0, :cond_2

    .line 863
    const-string v0, "BaiduSubManager"

    const-string v2, "mGeminiPhone == null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 870
    :goto_0
    return v0

    .line 866
    :cond_2
    iget-object v0, p0, Landroid/telephony/BaiduSubManager;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getIccLockEnabled()Z

    move-result v0

    goto :goto_0

    .line 869
    :cond_3
    const-string v0, "BaiduSubManager"

    const-string v2, "subscription error"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 870
    goto :goto_0
.end method

.method public setDataRoamingEnabled(IZ)V
    .locals 8
    .parameter "subscription"
    .parameter "enable"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 726
    if-eqz p1, :cond_1

    if-eq p1, v3, :cond_1

    .line 727
    const-string v2, "BaiduSubManager"

    const-string v3, "subscription error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    :cond_0
    :goto_0
    return-void

    .line 730
    :cond_1
    invoke-virtual {p0, p1}, Landroid/telephony/BaiduSubManager;->getDataRoamingEnabled(I)Z

    move-result v2

    if-eq v2, p2, :cond_0

    .line 732
    iget-object v2, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v1

    .line 733
    .local v1, simInfo:Landroid/provider/Telephony$SIMInfo;
    if-eqz v1, :cond_2

    .line 734
    iget-object v5, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_3

    move v2, v3

    :goto_1
    iget-wide v6, v1, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-static {v5, v2, v6, v7}, Landroid/provider/Telephony$SIMInfo;->setDataRoaming(Landroid/content/Context;IJ)I

    move-result v2

    if-gtz v2, :cond_2

    .line 735
    const-string v2, "BaiduSubManager"

    const-string v5, "Can\'t set data romaing in database"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    :cond_2
    iget-object v2, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 740
    .local v0, resolver:Landroid/content/ContentResolver;
    if-ne p1, v3, :cond_5

    .line 741
    const-string v2, "data_roaming_2"

    if-eqz p2, :cond_4

    :goto_2
    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .end local v0           #resolver:Landroid/content/ContentResolver;
    :cond_3
    move v2, v4

    .line 734
    goto :goto_1

    .restart local v0       #resolver:Landroid/content/ContentResolver;
    :cond_4
    move v3, v4

    .line 741
    goto :goto_2

    .line 743
    :cond_5
    const-string v2, "data_roaming"

    if-eqz p2, :cond_6

    :goto_3
    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_6
    move v3, v4

    goto :goto_3
.end method

.method public setDataSubscription(ILandroid/os/Message;)V
    .locals 12
    .parameter "subscription"
    .parameter "onCompleteMsg"

    .prologue
    .line 664
    const/4 v7, 0x1

    .line 667
    .local v7, result:Z
    if-eqz p1, :cond_1

    const/4 v8, 0x1

    if-eq p1, v8, :cond_1

    .line 668
    const-string v8, "BaiduSubManager"

    const-string v9, "subscription error"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    if-eqz p2, :cond_0

    .line 670
    const/4 v7, 0x0

    .line 671
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v8, "subscription error"

    invoke-direct {v2, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 672
    .local v2, exception:Ljava/lang/RuntimeException;
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {p2, v8, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 673
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 717
    .end local v2           #exception:Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void

    .line 678
    :cond_1
    invoke-virtual {p0, p1}, Landroid/telephony/BaiduSubManager;->isCardInsert(I)Z

    move-result v8

    if-nez v8, :cond_2

    .line 679
    const-string v8, "BaiduSubManager"

    const-string v9, "no card in slot"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    if-eqz p2, :cond_0

    .line 681
    const/4 v7, 0x0

    .line 682
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v8, "no card in slot"

    invoke-direct {v2, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 683
    .restart local v2       #exception:Ljava/lang/RuntimeException;
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {p2, v8, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 684
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 689
    .end local v2           #exception:Ljava/lang/RuntimeException;
    :cond_2
    const-wide/16 v5, -0x5

    .line 690
    .local v5, newGprsValue:J
    iget-object v8, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-static {v8, p1}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v3

    .line 691
    .local v3, gprsSimInfo:Landroid/provider/Telephony$SIMInfo;
    if-eqz v3, :cond_3

    .line 692
    iget-wide v5, v3, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    .line 694
    :cond_3
    iget-object v8, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "gprs_connection_sim_setting"

    const-wide/16 v10, -0x5

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 697
    .local v0, GprsValue:J
    cmp-long v8, v5, v0

    if-nez v8, :cond_4

    .line 699
    const-string v8, "BaiduSubManager"

    const-string v9, "newGprsvalue == GprsValue"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    if-eqz p2, :cond_0

    .line 702
    const/4 v7, 0x1

    .line 703
    const/4 v2, 0x0

    .line 704
    .restart local v2       #exception:Ljava/lang/RuntimeException;
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {p2, v8, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 705
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 710
    .end local v2           #exception:Ljava/lang/RuntimeException;
    :cond_4
    iput-object p2, p0, Landroid/telephony/BaiduSubManager;->mSetDataSubscriptionMsg:Landroid/os/Message;

    .line 711
    iput p1, p0, Landroid/telephony/BaiduSubManager;->mDataSubscription:I

    .line 713
    const/16 v8, 0x7d1

    const-wide/16 v9, 0x7530

    invoke-virtual {p0, v8, v9, v10}, Landroid/telephony/BaiduSubManager;->sendEmptyMessageDelayed(IJ)Z

    .line 714
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.intent.action.DATA_DEFAULT_SIM"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 715
    .local v4, intent:Landroid/content/Intent;
    const-string v8, "simid"

    invoke-virtual {v4, v8, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 716
    iget-object v8, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public setIccLockEnabled(IZLjava/lang/String;Landroid/os/Message;)V
    .locals 5
    .parameter "subscription"
    .parameter "enable"
    .parameter "password"
    .parameter "onCompleteMsg"

    .prologue
    .line 903
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    if-ne v2, p1, :cond_4

    .line 905
    :cond_0
    const-string v2, "BaiduSubManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setIccLockEnabled, subscription = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    iget-object v2, p0, Landroid/telephony/BaiduSubManager;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    if-nez v2, :cond_1

    .line 908
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iput-object v2, p0, Landroid/telephony/BaiduSubManager;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 910
    :cond_1
    iget-object v2, p0, Landroid/telephony/BaiduSubManager;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    if-nez v2, :cond_3

    .line 911
    const-string v2, "BaiduSubManager"

    const-string v3, "mGeminiPhone == null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    if-eqz p4, :cond_2

    .line 913
    const/4 v1, 0x0

    .line 914
    .local v1, result:Z
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "mGeminiPhone == null"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 915
    .local v0, exception:Ljava/lang/RuntimeException;
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p4, v2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 916
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    .line 931
    .end local v0           #exception:Ljava/lang/RuntimeException;
    .end local v1           #result:Z
    :cond_2
    :goto_0
    return-void

    .line 919
    :cond_3
    iget-object v2, p0, Landroid/telephony/BaiduSubManager;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-interface {v2, p2, p3, p4}, Lcom/android/internal/telephony/IccCard;->setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 922
    :cond_4
    const-string v2, "BaiduSubManager"

    const-string v3, "subscription error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    if-eqz p4, :cond_2

    .line 924
    const/4 v1, 0x0

    .line 925
    .restart local v1       #result:Z
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "subscription error"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 926
    .restart local v0       #exception:Ljava/lang/RuntimeException;
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p4, v2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 927
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public setMmsRoamingEnabled(IZ)V
    .locals 2
    .parameter "subscription"
    .parameter "enable"

    .prologue
    .line 795
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 796
    const-string v0, "BaiduSubManager"

    const-string v1, "subscription error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    :cond_0
    return-void
.end method

.method public setSlotActive(IZLandroid/os/Message;)V
    .locals 10
    .parameter "slot"
    .parameter "active"
    .parameter "onCompleteMsg"

    .prologue
    .line 240
    const/4 v5, 0x0

    .line 243
    .local v5, result:Z
    if-eqz p1, :cond_1

    const/4 v6, 0x1

    if-eq p1, v6, :cond_1

    .line 244
    const-string v6, "BaiduSubManager"

    const-string v7, "slot error"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    if-eqz p3, :cond_0

    .line 246
    const/4 v5, 0x0

    .line 247
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v6, "slot error"

    invoke-direct {v2, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 248
    .local v2, exception:Ljava/lang/RuntimeException;
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {p3, v6, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 249
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 561
    .end local v2           #exception:Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    invoke-virtual {p0, p1}, Landroid/telephony/BaiduSubManager;->isCardInsert(I)Z

    move-result v6

    if-nez v6, :cond_2

    .line 255
    const-string v6, "BaiduSubManager"

    const-string v7, "no card in slot"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    if-eqz p3, :cond_0

    .line 257
    const/4 v5, 0x0

    .line 258
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v6, "no card in slot"

    invoke-direct {v2, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 259
    .restart local v2       #exception:Ljava/lang/RuntimeException;
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {p3, v6, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 260
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 265
    .end local v2           #exception:Ljava/lang/RuntimeException;
    :cond_2
    if-nez p1, :cond_3

    const/4 v6, 0x1

    :goto_1
    invoke-virtual {p0, v6}, Landroid/telephony/BaiduSubManager;->isCardInsert(I)Z

    move-result v4

    .line 266
    .local v4, isOtherCardInsert:Z
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "dual_sim_mode_setting"

    const/4 v8, -0x1

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 268
    .local v0, dualSimMode:I
    const-string v6, "BaiduSubManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setSlotActive: slot = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", active = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", dualSimMode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", isOtherCardInsert = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iput-object p3, p0, Landroid/telephony/BaiduSubManager;->mSetSlotActiveMsg:Landroid/os/Message;

    .line 274
    if-eqz p2, :cond_b

    .line 275
    const/4 v6, 0x1

    iget-object v7, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "airplane_mode_on"

    const/4 v9, -0x1

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v6, v7, :cond_5

    .line 277
    const-string v6, "BaiduSubManager"

    const-string v7, "airplane mode on, turn off it"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/BaiduSubManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v6

    iget-object v7, p0, Landroid/telephony/BaiduSubManager;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v7}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v6, v7, v8}, Lcom/android/internal/telephony/ITelephony;->registerForSimModeChange(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 286
    :goto_2
    if-nez p1, :cond_4

    .line 287
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "airplane_mode_on"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 288
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "dual_sim_mode_setting"

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 289
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 290
    .local v3, intent:Landroid/content/Intent;
    const-string v6, "state"

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 291
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 265
    .end local v0           #dualSimMode:I
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #isOtherCardInsert:Z
    :cond_3
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 281
    .restart local v0       #dualSimMode:I
    .restart local v4       #isOtherCardInsert:Z
    :catch_0
    move-exception v1

    .line 282
    .local v1, ex:Landroid/os/RemoteException;
    const-string v6, "BaiduSubManager"

    const-string v7, "RemoteException ex"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 283
    .end local v1           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 284
    .local v1, ex:Ljava/lang/NullPointerException;
    const-string v6, "BaiduSubManager"

    const-string v7, "NullPointerException ex"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 293
    .end local v1           #ex:Ljava/lang/NullPointerException;
    :cond_4
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "airplane_mode_on"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 294
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "dual_sim_mode_setting"

    const/4 v8, 0x2

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 295
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 296
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v6, "state"

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 297
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 302
    .end local v3           #intent:Landroid/content/Intent;
    :cond_5
    packed-switch v0, :pswitch_data_0

    .line 412
    const-string v6, "BaiduSubManager"

    const-string v7, "unknown dual card mode"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    if-eqz p3, :cond_0

    .line 415
    const/4 v5, 0x0

    .line 416
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v6, "unknown dual card mode"

    invoke-direct {v2, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 417
    .restart local v2       #exception:Ljava/lang/RuntimeException;
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {p3, v6, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 418
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 419
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/telephony/BaiduSubManager;->mSetSlotActiveMsg:Landroid/os/Message;

    goto/16 :goto_0

    .line 306
    .end local v2           #exception:Ljava/lang/RuntimeException;
    :pswitch_0
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/BaiduSubManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v6

    iget-object v7, p0, Landroid/telephony/BaiduSubManager;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v7}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v6, v7, v8}, Lcom/android/internal/telephony/ITelephony;->registerForSimModeChange(Landroid/os/IBinder;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3

    .line 312
    :goto_3
    if-nez p1, :cond_6

    .line 313
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "dual_sim_mode_setting"

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 314
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.DUAL_SIM_MODE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 315
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v6, "mode"

    const/4 v7, 0x1

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 316
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 307
    .end local v3           #intent:Landroid/content/Intent;
    :catch_2
    move-exception v1

    .line 308
    .local v1, ex:Landroid/os/RemoteException;
    const-string v6, "BaiduSubManager"

    const-string v7, "RemoteException ex"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 309
    .end local v1           #ex:Landroid/os/RemoteException;
    :catch_3
    move-exception v1

    .line 310
    .local v1, ex:Ljava/lang/NullPointerException;
    const-string v6, "BaiduSubManager"

    const-string v7, "NullPointerException ex"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 318
    .end local v1           #ex:Ljava/lang/NullPointerException;
    :cond_6
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "dual_sim_mode_setting"

    const/4 v8, 0x2

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 319
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.DUAL_SIM_MODE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 320
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v6, "mode"

    const/4 v7, 0x2

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 321
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 327
    .end local v3           #intent:Landroid/content/Intent;
    :pswitch_1
    const/4 v6, 0x1

    if-ne p1, v6, :cond_8

    .line 329
    :try_start_2
    invoke-direct {p0}, Landroid/telephony/BaiduSubManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v6

    iget-object v7, p0, Landroid/telephony/BaiduSubManager;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v7}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v6, v7, v8}, Lcom/android/internal/telephony/ITelephony;->registerForSimModeChange(Landroid/os/IBinder;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_5

    .line 335
    :goto_4
    if-eqz v4, :cond_7

    .line 336
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "dual_sim_mode_setting"

    const/4 v8, 0x3

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 337
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.DUAL_SIM_MODE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 338
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v6, "mode"

    const/4 v7, 0x3

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 339
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 330
    .end local v3           #intent:Landroid/content/Intent;
    :catch_4
    move-exception v1

    .line 331
    .local v1, ex:Landroid/os/RemoteException;
    const-string v6, "BaiduSubManager"

    const-string v7, "RemoteException ex"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 332
    .end local v1           #ex:Landroid/os/RemoteException;
    :catch_5
    move-exception v1

    .line 333
    .local v1, ex:Ljava/lang/NullPointerException;
    const-string v6, "BaiduSubManager"

    const-string v7, "NullPointerException ex"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 341
    .end local v1           #ex:Ljava/lang/NullPointerException;
    :cond_7
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "dual_sim_mode_setting"

    const/4 v8, 0x2

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 342
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.DUAL_SIM_MODE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 343
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v6, "mode"

    const/4 v7, 0x2

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 344
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 348
    .end local v3           #intent:Landroid/content/Intent;
    :cond_8
    const-string v6, "BaiduSubManager"

    const-string v7, "slot already active"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    if-eqz p3, :cond_0

    .line 351
    const/4 v5, 0x1

    .line 352
    const/4 v2, 0x0

    .line 353
    .restart local v2       #exception:Ljava/lang/RuntimeException;
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {p3, v6, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 354
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 355
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/telephony/BaiduSubManager;->mSetSlotActiveMsg:Landroid/os/Message;

    goto/16 :goto_0

    .line 362
    .end local v2           #exception:Ljava/lang/RuntimeException;
    :pswitch_2
    if-nez p1, :cond_a

    .line 364
    :try_start_3
    invoke-direct {p0}, Landroid/telephony/BaiduSubManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v6

    iget-object v7, p0, Landroid/telephony/BaiduSubManager;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v7}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v6, v7, v8}, Lcom/android/internal/telephony/ITelephony;->registerForSimModeChange(Landroid/os/IBinder;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_7

    .line 370
    :goto_5
    if-eqz v4, :cond_9

    .line 371
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "dual_sim_mode_setting"

    const/4 v8, 0x3

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 372
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.DUAL_SIM_MODE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 373
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v6, "mode"

    const/4 v7, 0x3

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 374
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 365
    .end local v3           #intent:Landroid/content/Intent;
    :catch_6
    move-exception v1

    .line 366
    .local v1, ex:Landroid/os/RemoteException;
    const-string v6, "BaiduSubManager"

    const-string v7, "RemoteException ex"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 367
    .end local v1           #ex:Landroid/os/RemoteException;
    :catch_7
    move-exception v1

    .line 368
    .local v1, ex:Ljava/lang/NullPointerException;
    const-string v6, "BaiduSubManager"

    const-string v7, "NullPointerException ex"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 376
    .end local v1           #ex:Ljava/lang/NullPointerException;
    :cond_9
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "dual_sim_mode_setting"

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 377
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.DUAL_SIM_MODE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 378
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v6, "mode"

    const/4 v7, 0x1

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 379
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 383
    .end local v3           #intent:Landroid/content/Intent;
    :cond_a
    const-string v6, "BaiduSubManager"

    const-string v7, "slot already active"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    if-eqz p3, :cond_0

    .line 386
    const/4 v5, 0x1

    .line 387
    const/4 v2, 0x0

    .line 388
    .restart local v2       #exception:Ljava/lang/RuntimeException;
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {p3, v6, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 389
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 390
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/telephony/BaiduSubManager;->mSetSlotActiveMsg:Landroid/os/Message;

    goto/16 :goto_0

    .line 398
    .end local v2           #exception:Ljava/lang/RuntimeException;
    :pswitch_3
    const-string v6, "BaiduSubManager"

    const-string v7, "already in dual card mode, no need to active any"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    if-eqz p3, :cond_0

    .line 401
    const/4 v5, 0x1

    .line 402
    const/4 v2, 0x0

    .line 403
    .restart local v2       #exception:Ljava/lang/RuntimeException;
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {p3, v6, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 404
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 405
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/telephony/BaiduSubManager;->mSetSlotActiveMsg:Landroid/os/Message;

    goto/16 :goto_0

    .line 425
    .end local v2           #exception:Ljava/lang/RuntimeException;
    :cond_b
    const/4 v6, 0x1

    iget-object v7, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "airplane_mode_on"

    const/4 v9, -0x1

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v6, v7, :cond_c

    .line 427
    const-string v6, "BaiduSubManager"

    const-string v7, "airplane mode on, no need deactive any"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    if-eqz p3, :cond_0

    .line 430
    const/4 v5, 0x1

    .line 431
    const/4 v2, 0x0

    .line 432
    .restart local v2       #exception:Ljava/lang/RuntimeException;
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {p3, v6, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 433
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 434
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/telephony/BaiduSubManager;->mSetSlotActiveMsg:Landroid/os/Message;

    goto/16 :goto_0

    .line 438
    .end local v2           #exception:Ljava/lang/RuntimeException;
    :cond_c
    packed-switch v0, :pswitch_data_1

    .line 548
    const-string v6, "BaiduSubManager"

    const-string v7, "unknown dual card mode"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    if-eqz p3, :cond_0

    .line 551
    const/4 v5, 0x0

    .line 552
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v6, "unknown dual card mode"

    invoke-direct {v2, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 553
    .restart local v2       #exception:Ljava/lang/RuntimeException;
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {p3, v6, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 554
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 555
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/telephony/BaiduSubManager;->mSetSlotActiveMsg:Landroid/os/Message;

    goto/16 :goto_0

    .line 442
    .end local v2           #exception:Ljava/lang/RuntimeException;
    :pswitch_4
    const-string v6, "BaiduSubManager"

    const-string v7, "already in disable mode, no need to deactive any"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    if-eqz p3, :cond_0

    .line 445
    const/4 v5, 0x1

    .line 446
    const/4 v2, 0x0

    .line 447
    .restart local v2       #exception:Ljava/lang/RuntimeException;
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {p3, v6, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 448
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 449
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/telephony/BaiduSubManager;->mSetSlotActiveMsg:Landroid/os/Message;

    goto/16 :goto_0

    .line 455
    .end local v2           #exception:Ljava/lang/RuntimeException;
    :pswitch_5
    if-nez p1, :cond_d

    .line 457
    :try_start_4
    invoke-direct {p0}, Landroid/telephony/BaiduSubManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v6

    iget-object v7, p0, Landroid/telephony/BaiduSubManager;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v7}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v6, v7, v8}, Lcom/android/internal/telephony/ITelephony;->registerForSimModeChange(Landroid/os/IBinder;I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_9

    .line 463
    :goto_6
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "dual_sim_mode_setting"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 464
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.DUAL_SIM_MODE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 465
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v6, "mode"

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 466
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 458
    .end local v3           #intent:Landroid/content/Intent;
    :catch_8
    move-exception v1

    .line 459
    .local v1, ex:Landroid/os/RemoteException;
    const-string v6, "BaiduSubManager"

    const-string v7, "RemoteException ex"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 460
    .end local v1           #ex:Landroid/os/RemoteException;
    :catch_9
    move-exception v1

    .line 461
    .local v1, ex:Ljava/lang/NullPointerException;
    const-string v6, "BaiduSubManager"

    const-string v7, "NullPointerException ex"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 469
    .end local v1           #ex:Ljava/lang/NullPointerException;
    :cond_d
    const-string v6, "BaiduSubManager"

    const-string v7, "slot already deactive"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    if-eqz p3, :cond_0

    .line 472
    const/4 v5, 0x1

    .line 473
    const/4 v2, 0x0

    .line 474
    .restart local v2       #exception:Ljava/lang/RuntimeException;
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {p3, v6, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 475
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 476
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/telephony/BaiduSubManager;->mSetSlotActiveMsg:Landroid/os/Message;

    goto/16 :goto_0

    .line 483
    .end local v2           #exception:Ljava/lang/RuntimeException;
    :pswitch_6
    const/4 v6, 0x1

    if-ne p1, v6, :cond_e

    .line 485
    :try_start_5
    invoke-direct {p0}, Landroid/telephony/BaiduSubManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v6

    iget-object v7, p0, Landroid/telephony/BaiduSubManager;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v7}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v6, v7, v8}, Lcom/android/internal/telephony/ITelephony;->registerForSimModeChange(Landroid/os/IBinder;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_b

    .line 491
    :goto_7
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "dual_sim_mode_setting"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 492
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.DUAL_SIM_MODE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 493
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v6, "mode"

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 494
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 486
    .end local v3           #intent:Landroid/content/Intent;
    :catch_a
    move-exception v1

    .line 487
    .local v1, ex:Landroid/os/RemoteException;
    const-string v6, "BaiduSubManager"

    const-string v7, "RemoteException ex"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 488
    .end local v1           #ex:Landroid/os/RemoteException;
    :catch_b
    move-exception v1

    .line 489
    .local v1, ex:Ljava/lang/NullPointerException;
    const-string v6, "BaiduSubManager"

    const-string v7, "NullPointerException ex"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 497
    .end local v1           #ex:Ljava/lang/NullPointerException;
    :cond_e
    const-string v6, "BaiduSubManager"

    const-string v7, "slot already deactive"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    if-eqz p3, :cond_0

    .line 500
    const/4 v5, 0x1

    .line 501
    const/4 v2, 0x0

    .line 502
    .restart local v2       #exception:Ljava/lang/RuntimeException;
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {p3, v6, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 503
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 504
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/telephony/BaiduSubManager;->mSetSlotActiveMsg:Landroid/os/Message;

    goto/16 :goto_0

    .line 512
    .end local v2           #exception:Ljava/lang/RuntimeException;
    :pswitch_7
    :try_start_6
    invoke-direct {p0}, Landroid/telephony/BaiduSubManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v6

    iget-object v7, p0, Landroid/telephony/BaiduSubManager;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v7}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v6, v7, v8}, Lcom/android/internal/telephony/ITelephony;->registerForSimModeChange(Landroid/os/IBinder;I)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_c
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_d

    .line 518
    :goto_8
    if-nez p1, :cond_10

    .line 519
    if-eqz v4, :cond_f

    .line 520
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "dual_sim_mode_setting"

    const/4 v8, 0x2

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 521
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.DUAL_SIM_MODE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 522
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v6, "mode"

    const/4 v7, 0x2

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 523
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 513
    .end local v3           #intent:Landroid/content/Intent;
    :catch_c
    move-exception v1

    .line 514
    .local v1, ex:Landroid/os/RemoteException;
    const-string v6, "BaiduSubManager"

    const-string v7, "RemoteException ex"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 515
    .end local v1           #ex:Landroid/os/RemoteException;
    :catch_d
    move-exception v1

    .line 516
    .local v1, ex:Ljava/lang/NullPointerException;
    const-string v6, "BaiduSubManager"

    const-string v7, "NullPointerException ex"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 525
    .end local v1           #ex:Ljava/lang/NullPointerException;
    :cond_f
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "dual_sim_mode_setting"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 526
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.DUAL_SIM_MODE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 527
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v6, "mode"

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 528
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 531
    .end local v3           #intent:Landroid/content/Intent;
    :cond_10
    if-eqz v4, :cond_11

    .line 532
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "dual_sim_mode_setting"

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 533
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.DUAL_SIM_MODE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 534
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v6, "mode"

    const/4 v7, 0x1

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 535
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 537
    .end local v3           #intent:Landroid/content/Intent;
    :cond_11
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "dual_sim_mode_setting"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 538
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.DUAL_SIM_MODE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 539
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v6, "mode"

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 540
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 302
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 438
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public setSlotMode(IILandroid/os/Message;)V
    .locals 4
    .parameter "slot"
    .parameter "mode"
    .parameter "onCompleteMsg"

    .prologue
    .line 603
    const/4 v1, 0x0

    .line 606
    .local v1, result:Z
    if-eqz p1, :cond_1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    .line 607
    const-string v2, "BaiduSubManager"

    const-string v3, "slot error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    if-eqz p3, :cond_0

    .line 609
    const/4 v1, 0x0

    .line 610
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "slot error"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 611
    .local v0, exception:Ljava/lang/RuntimeException;
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p3, v2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 612
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 634
    .end local v0           #exception:Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void

    .line 617
    :cond_1
    invoke-virtual {p0, p1}, Landroid/telephony/BaiduSubManager;->isCardInsert(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 618
    const-string v2, "BaiduSubManager"

    const-string v3, "no card in slot"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    if-eqz p3, :cond_0

    .line 620
    const/4 v1, 0x0

    .line 621
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "no card in slot"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 622
    .restart local v0       #exception:Ljava/lang/RuntimeException;
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p3, v2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 623
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 628
    .end local v0           #exception:Ljava/lang/RuntimeException;
    :cond_2
    if-eqz p3, :cond_0

    .line 629
    const/4 v1, 0x1

    .line 630
    const/4 v0, 0x0

    .line 631
    .restart local v0       #exception:Ljava/lang/RuntimeException;
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p3, v2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 632
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
