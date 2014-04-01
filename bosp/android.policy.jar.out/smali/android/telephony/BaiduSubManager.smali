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

    .line 99
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 69
    iput-object v0, p0, Landroid/telephony/BaiduSubManager;->mSetSlotActiveMsg:Landroid/os/Message;

    .line 70
    iput-object v0, p0, Landroid/telephony/BaiduSubManager;->mSetSlotModeMsg:Landroid/os/Message;

    .line 71
    iput-object v0, p0, Landroid/telephony/BaiduSubManager;->mSetDataSubscriptionMsg:Landroid/os/Message;

    .line 72
    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/BaiduSubManager;->mDataSubscription:I

    .line 125
    new-instance v0, Landroid/telephony/BaiduSubManager$1;

    invoke-direct {v0, p0}, Landroid/telephony/BaiduSubManager$1;-><init>(Landroid/telephony/BaiduSubManager;)V

    iput-object v0, p0, Landroid/telephony/BaiduSubManager;->mDataConnectionReceiver:Landroid/content/BroadcastReceiver;

    .line 101
    const-string v0, "BaiduSubManager"

    const-string v1, "Constructor - Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iput-object p1, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    .line 104
    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/telephony/BaiduSubManager;->mMessenger:Landroid/os/Messenger;

    .line 105
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/telephony/BaiduSubManager;->mIntentFilter:Landroid/content/IntentFilter;

    .line 106
    iget-object v0, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/telephony/BaiduSubManager;->mDataConnectionReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Landroid/telephony/BaiduSubManager;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 109
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iput-object v0, p0, Landroid/telephony/BaiduSubManager;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 110
    iget-object v0, p0, Landroid/telephony/BaiduSubManager;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    if-nez v0, :cond_0

    .line 111
    const-string v0, "BaiduSubManager"

    const-string v1, "mGeminiPhone == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_0
    const-string v0, "BaiduSubManager"

    const-string v1, "Constructor - Exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return-void
.end method

.method static synthetic access$000(Landroid/telephony/BaiduSubManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Landroid/telephony/BaiduSubManager;->mDataSubscription:I

    return v0
.end method

.method static synthetic access$100(Landroid/telephony/BaiduSubManager;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Landroid/telephony/BaiduSubManager;->mSetDataSubscriptionMsg:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$102(Landroid/telephony/BaiduSubManager;Landroid/os/Message;)Landroid/os/Message;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Landroid/telephony/BaiduSubManager;->mSetDataSubscriptionMsg:Landroid/os/Message;

    return-object p1
.end method

.method private getITelephony()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    .prologue
    .line 204
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
    .line 83
    const-string v0, "BaiduSubManager"

    const-string v1, "getInstance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    sget-object v0, Landroid/telephony/BaiduSubManager;->sBaiduSubManager:Landroid/telephony/BaiduSubManager;

    if-nez v0, :cond_1

    .line 86
    if-nez p0, :cond_0

    .line 87
    const-string v0, "BaiduSubManager"

    const-string v1, "sBaiduSubManager == null, context == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const/4 v0, 0x0

    .line 92
    :goto_0
    return-object v0

    .line 90
    :cond_0
    new-instance v0, Landroid/telephony/BaiduSubManager;

    invoke-direct {v0, p0}, Landroid/telephony/BaiduSubManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/telephony/BaiduSubManager;->sBaiduSubManager:Landroid/telephony/BaiduSubManager;

    .line 92
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
    .line 962
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    if-ne v2, p1, :cond_4

    .line 964
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

    .line 966
    iget-object v2, p0, Landroid/telephony/BaiduSubManager;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    if-nez v2, :cond_1

    .line 967
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iput-object v2, p0, Landroid/telephony/BaiduSubManager;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 969
    :cond_1
    iget-object v2, p0, Landroid/telephony/BaiduSubManager;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    if-nez v2, :cond_3

    .line 970
    const-string v2, "BaiduSubManager"

    const-string v3, "mGeminiPhone == null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    if-eqz p4, :cond_2

    .line 972
    const/4 v1, 0x0

    .line 973
    .local v1, result:Z
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "mGeminiPhone == null"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 974
    .local v0, exception:Ljava/lang/RuntimeException;
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p4, v2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 975
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    .line 990
    .end local v0           #exception:Ljava/lang/RuntimeException;
    .end local v1           #result:Z
    :cond_2
    :goto_0
    return-void

    .line 978
    :cond_3
    iget-object v2, p0, Landroid/telephony/BaiduSubManager;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-virtual {v2, p2, p3, p4}, Lcom/android/internal/telephony/IccCard;->changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 981
    :cond_4
    const-string v2, "BaiduSubManager"

    const-string v3, "subscription error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    if-eqz p4, :cond_2

    .line 983
    const/4 v1, 0x0

    .line 984
    .restart local v1       #result:Z
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "subscription error"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 985
    .restart local v0       #exception:Ljava/lang/RuntimeException;
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p4, v2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 986
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public getDataRoamingEnabled(I)Z
    .locals 9
    .parameter "subscription"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 756
    if-eqz p1, :cond_1

    if-eq p1, v4, :cond_1

    .line 757
    const-string v4, "BaiduSubManager"

    const-string v6, "subscription error"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    :cond_0
    :goto_0
    return v5

    .line 761
    :cond_1
    :try_start_0
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 764
    .local v1, resolver:Landroid/content/ContentResolver;
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-static {v6, p1}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v2

    .line 765
    .local v2, simInfo:Landroid/provider/Telephony$SIMInfo;
    if-eqz v2, :cond_0

    .line 766
    iget v0, v2, Landroid/provider/Telephony$SIMInfo;->mDataRoaming:I

    .line 768
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

    .line 770
    if-ne v0, v4, :cond_2

    :goto_1
    move v5, v4

    goto :goto_0

    :cond_2
    move v4, v5

    goto :goto_1

    .line 783
    .end local v0           #dataRoaming:I
    .end local v1           #resolver:Landroid/content/ContentResolver;
    .end local v2           #simInfo:Landroid/provider/Telephony$SIMInfo;
    :catch_0
    move-exception v3

    .line 784
    .local v3, snfe:Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method public getMmsRoamingEnabled(I)Z
    .locals 9
    .parameter "subscription"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 808
    if-eqz p1, :cond_1

    if-eq p1, v4, :cond_1

    .line 809
    const-string v4, "BaiduSubManager"

    const-string v6, "subscription error"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    :cond_0
    :goto_0
    return v5

    .line 813
    :cond_1
    :try_start_0
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 816
    .local v1, resolver:Landroid/content/ContentResolver;
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-static {v6, p1}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v2

    .line 817
    .local v2, simInfo:Landroid/provider/Telephony$SIMInfo;
    if-eqz v2, :cond_0

    .line 818
    iget v0, v2, Landroid/provider/Telephony$SIMInfo;->mDataRoaming:I

    .line 820
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

    .line 822
    if-ne v0, v4, :cond_2

    :goto_1
    move v5, v4

    goto :goto_0

    :cond_2
    move v4, v5

    goto :goto_1

    .line 835
    .end local v0           #dataRoaming:I
    .end local v1           #resolver:Landroid/content/ContentResolver;
    .end local v2           #simInfo:Landroid/provider/Telephony$SIMInfo;
    :catch_0
    move-exception v3

    .line 836
    .local v3, snfe:Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method public getRetryPin1Count(I)I
    .locals 2
    .parameter "subscription"

    .prologue
    const/16 v1, -0x64

    .line 1002
    if-nez p1, :cond_0

    .line 1003
    const-string v0, "gsm.sim.retry.pin1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1008
    :goto_0
    return v0

    .line 1004
    :cond_0
    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    .line 1005
    const-string v0, "gsm.sim.retry.pin1.2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 1007
    :cond_1
    const-string v0, "BaiduSubManager"

    const-string v1, "getRetryPin1Count subscription error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getSlotActive(I)Z
    .locals 6
    .parameter "slot"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 571
    if-eqz p1, :cond_1

    if-eq p1, v2, :cond_1

    .line 572
    const-string v2, "BaiduSubManager"

    const-string v3, "slot error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    :cond_0
    :goto_0
    return v1

    .line 575
    :cond_1
    invoke-virtual {p0, p1}, Landroid/telephony/BaiduSubManager;->isCardInsert(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 576
    const-string v2, "BaiduSubManager"

    const-string v3, "no card in slot"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 579
    :cond_2
    iget-object v3, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "dual_sim_mode_setting"

    const/4 v5, -0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 580
    .local v0, dualSimMode:I
    const/4 v3, 0x3

    if-ne v3, v0, :cond_3

    move v1, v2

    .line 581
    goto :goto_0

    .line 582
    :cond_3
    if-ne v2, v0, :cond_4

    if-nez p1, :cond_4

    move v1, v2

    .line 583
    goto :goto_0

    .line 584
    :cond_4
    const/4 v3, 0x2

    if-ne v3, v0, :cond_0

    if-ne v2, p1, :cond_0

    move v1, v2

    .line 585
    goto :goto_0
.end method

.method public getSlotMode(I)I
    .locals 3
    .parameter "slot"

    .prologue
    const/4 v2, 0x1

    .line 644
    if-eqz p1, :cond_1

    if-eq p1, v2, :cond_1

    .line 645
    const-string v0, "BaiduSubManager"

    const-string v1, "slot error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    :cond_0
    :goto_0
    return v2

    .line 648
    :cond_1
    invoke-virtual {p0, p1}, Landroid/telephony/BaiduSubManager;->isCardInsert(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 649
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

    .line 160
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 164
    :sswitch_0
    const-string v3, "BaiduSubManager"

    const-string v4, "EVENT_DUAL_SIM_MODE_CHANGED_COMPLETE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
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

    .line 177
    :goto_1
    iget-object v3, p0, Landroid/telephony/BaiduSubManager;->mSetSlotActiveMsg:Landroid/os/Message;

    if-eqz v3, :cond_0

    .line 178
    const/4 v2, 0x1

    .line 179
    .local v2, result:Z
    const/4 v1, 0x0

    .line 180
    .local v1, exception:Ljava/lang/RuntimeException;
    iget-object v3, p0, Landroid/telephony/BaiduSubManager;->mSetSlotActiveMsg:Landroid/os/Message;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 181
    iget-object v3, p0, Landroid/telephony/BaiduSubManager;->mSetSlotActiveMsg:Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 182
    iput-object v5, p0, Landroid/telephony/BaiduSubManager;->mSetSlotActiveMsg:Landroid/os/Message;

    goto :goto_0

    .line 168
    .end local v1           #exception:Ljava/lang/RuntimeException;
    .end local v2           #result:Z
    :catch_0
    move-exception v0

    .line 169
    .local v0, ex:Landroid/os/RemoteException;
    const-string v3, "BaiduSubManager"

    const-string v4, "RemoteException ex"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 170
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 171
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v3, "BaiduSubManager"

    const-string v4, "NullPointerException ex"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 189
    .end local v0           #ex:Ljava/lang/NullPointerException;
    :sswitch_1
    const-string v3, "BaiduSubManager"

    const-string v4, "setDataSubscription timeout"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v3, p0, Landroid/telephony/BaiduSubManager;->mSetDataSubscriptionMsg:Landroid/os/Message;

    if-eqz v3, :cond_0

    .line 192
    const/4 v2, 0x0

    .line 193
    .restart local v2       #result:Z
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "setDataSubscription timeout"

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 194
    .restart local v1       #exception:Ljava/lang/RuntimeException;
    iget-object v3, p0, Landroid/telephony/BaiduSubManager;->mSetDataSubscriptionMsg:Landroid/os/Message;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 195
    iget-object v3, p0, Landroid/telephony/BaiduSubManager;->mSetDataSubscriptionMsg:Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 196
    iput-object v5, p0, Landroid/telephony/BaiduSubManager;->mSetDataSubscriptionMsg:Landroid/os/Message;

    goto :goto_0

    .line 160
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

    .line 224
    :goto_0
    return v1

    .line 220
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/BaiduSubManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->isSimInsert(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 222
    :catch_0
    move-exception v0

    .line 223
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public isIccLockEnabled(I)Z
    .locals 3
    .parameter "subscription"

    .prologue
    const/4 v1, 0x0

    .line 859
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-ne v0, p1, :cond_3

    .line 860
    :cond_0
    iget-object v0, p0, Landroid/telephony/BaiduSubManager;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    if-nez v0, :cond_1

    .line 861
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iput-object v0, p0, Landroid/telephony/BaiduSubManager;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 863
    :cond_1
    iget-object v0, p0, Landroid/telephony/BaiduSubManager;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    if-nez v0, :cond_2

    .line 864
    const-string v0, "BaiduSubManager"

    const-string v2, "mGeminiPhone == null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 871
    :goto_0
    return v0

    .line 867
    :cond_2
    iget-object v0, p0, Landroid/telephony/BaiduSubManager;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getIccLockEnabled()Z

    move-result v0

    goto :goto_0

    .line 870
    :cond_3
    const-string v0, "BaiduSubManager"

    const-string v2, "subscription error"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 871
    goto :goto_0
.end method

.method public setDataRoamingEnabled(IZ)V
    .locals 8
    .parameter "subscription"
    .parameter "enable"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 727
    if-eqz p1, :cond_1

    if-eq p1, v3, :cond_1

    .line 728
    const-string v2, "BaiduSubManager"

    const-string v3, "subscription error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    :cond_0
    :goto_0
    return-void

    .line 731
    :cond_1
    invoke-virtual {p0, p1}, Landroid/telephony/BaiduSubManager;->getDataRoamingEnabled(I)Z

    move-result v2

    if-eq v2, p2, :cond_0

    .line 733
    iget-object v2, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v1

    .line 734
    .local v1, simInfo:Landroid/provider/Telephony$SIMInfo;
    if-eqz v1, :cond_2

    .line 735
    iget-object v5, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_3

    move v2, v3

    :goto_1
    iget-wide v6, v1, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-static {v5, v2, v6, v7}, Landroid/provider/Telephony$SIMInfo;->setDataRoaming(Landroid/content/Context;IJ)I

    move-result v2

    if-gtz v2, :cond_2

    .line 736
    const-string v2, "BaiduSubManager"

    const-string v5, "Can\'t set data romaing in database"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    :cond_2
    iget-object v2, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 741
    .local v0, resolver:Landroid/content/ContentResolver;
    if-ne p1, v3, :cond_5

    .line 742
    const-string v2, "data_roaming_2"

    if-eqz p2, :cond_4

    :goto_2
    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .end local v0           #resolver:Landroid/content/ContentResolver;
    :cond_3
    move v2, v4

    .line 735
    goto :goto_1

    .restart local v0       #resolver:Landroid/content/ContentResolver;
    :cond_4
    move v3, v4

    .line 742
    goto :goto_2

    .line 744
    :cond_5
    const-string v2, "data_roaming"

    if-eqz p2, :cond_6

    :goto_3
    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

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
    .line 665
    const/4 v7, 0x1

    .line 668
    .local v7, result:Z
    if-eqz p1, :cond_1

    const/4 v8, 0x1

    if-eq p1, v8, :cond_1

    .line 669
    const-string v8, "BaiduSubManager"

    const-string v9, "subscription error"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    if-eqz p2, :cond_0

    .line 671
    const/4 v7, 0x0

    .line 672
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v8, "subscription error"

    invoke-direct {v2, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 673
    .local v2, exception:Ljava/lang/RuntimeException;
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {p2, v8, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 674
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 718
    .end local v2           #exception:Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void

    .line 679
    :cond_1
    invoke-virtual {p0, p1}, Landroid/telephony/BaiduSubManager;->isCardInsert(I)Z

    move-result v8

    if-nez v8, :cond_2

    .line 680
    const-string v8, "BaiduSubManager"

    const-string v9, "no card in slot"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    if-eqz p2, :cond_0

    .line 682
    const/4 v7, 0x0

    .line 683
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v8, "no card in slot"

    invoke-direct {v2, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 684
    .restart local v2       #exception:Ljava/lang/RuntimeException;
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {p2, v8, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 685
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 690
    .end local v2           #exception:Ljava/lang/RuntimeException;
    :cond_2
    const-wide/16 v5, -0x5

    .line 691
    .local v5, newGprsValue:J
    iget-object v8, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-static {v8, p1}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v3

    .line 692
    .local v3, gprsSimInfo:Landroid/provider/Telephony$SIMInfo;
    if-eqz v3, :cond_3

    .line 693
    iget-wide v5, v3, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    .line 695
    :cond_3
    iget-object v8, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "gprs_connection_sim_setting"

    const-wide/16 v10, -0x5

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 698
    .local v0, GprsValue:J
    cmp-long v8, v5, v0

    if-nez v8, :cond_4

    .line 700
    const-string v8, "BaiduSubManager"

    const-string v9, "newGprsvalue == GprsValue"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    if-eqz p2, :cond_0

    .line 703
    const/4 v7, 0x1

    .line 704
    const/4 v2, 0x0

    .line 705
    .restart local v2       #exception:Ljava/lang/RuntimeException;
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {p2, v8, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 706
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 711
    .end local v2           #exception:Ljava/lang/RuntimeException;
    :cond_4
    iput-object p2, p0, Landroid/telephony/BaiduSubManager;->mSetDataSubscriptionMsg:Landroid/os/Message;

    .line 712
    iput p1, p0, Landroid/telephony/BaiduSubManager;->mDataSubscription:I

    .line 714
    const/16 v8, 0x7d1

    const-wide/16 v9, 0x7530

    invoke-virtual {p0, v8, v9, v10}, Landroid/telephony/BaiduSubManager;->sendEmptyMessageDelayed(IJ)Z

    .line 715
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.intent.action.DATA_DEFAULT_SIM"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 716
    .local v4, intent:Landroid/content/Intent;
    const-string v8, "simid"

    invoke-virtual {v4, v8, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 717
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
    .line 904
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    if-ne v2, p1, :cond_4

    .line 906
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

    .line 908
    iget-object v2, p0, Landroid/telephony/BaiduSubManager;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    if-nez v2, :cond_1

    .line 909
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iput-object v2, p0, Landroid/telephony/BaiduSubManager;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 911
    :cond_1
    iget-object v2, p0, Landroid/telephony/BaiduSubManager;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    if-nez v2, :cond_3

    .line 912
    const-string v2, "BaiduSubManager"

    const-string v3, "mGeminiPhone == null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    if-eqz p4, :cond_2

    .line 914
    const/4 v1, 0x0

    .line 915
    .local v1, result:Z
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "mGeminiPhone == null"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 916
    .local v0, exception:Ljava/lang/RuntimeException;
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p4, v2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 917
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    .line 932
    .end local v0           #exception:Ljava/lang/RuntimeException;
    .end local v1           #result:Z
    :cond_2
    :goto_0
    return-void

    .line 920
    :cond_3
    iget-object v2, p0, Landroid/telephony/BaiduSubManager;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-virtual {v2, p2, p3, p4}, Lcom/android/internal/telephony/IccCard;->setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 923
    :cond_4
    const-string v2, "BaiduSubManager"

    const-string v3, "subscription error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    if-eqz p4, :cond_2

    .line 925
    const/4 v1, 0x0

    .line 926
    .restart local v1       #result:Z
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "subscription error"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 927
    .restart local v0       #exception:Ljava/lang/RuntimeException;
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p4, v2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 928
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public setMmsRoamingEnabled(IZ)V
    .locals 2
    .parameter "subscription"
    .parameter "enable"

    .prologue
    .line 796
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 797
    const-string v0, "BaiduSubManager"

    const-string v1, "subscription error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    :cond_0
    return-void
.end method

.method public setSlotActive(IZLandroid/os/Message;)V
    .locals 10
    .parameter "slot"
    .parameter "active"
    .parameter "onCompleteMsg"

    .prologue
    .line 241
    const/4 v5, 0x0

    .line 244
    .local v5, result:Z
    if-eqz p1, :cond_1

    const/4 v6, 0x1

    if-eq p1, v6, :cond_1

    .line 245
    const-string v6, "BaiduSubManager"

    const-string v7, "slot error"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    if-eqz p3, :cond_0

    .line 247
    const/4 v5, 0x0

    .line 248
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v6, "slot error"

    invoke-direct {v2, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 249
    .local v2, exception:Ljava/lang/RuntimeException;
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {p3, v6, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 250
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 562
    .end local v2           #exception:Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    invoke-virtual {p0, p1}, Landroid/telephony/BaiduSubManager;->isCardInsert(I)Z

    move-result v6

    if-nez v6, :cond_2

    .line 256
    const-string v6, "BaiduSubManager"

    const-string v7, "no card in slot"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    if-eqz p3, :cond_0

    .line 258
    const/4 v5, 0x0

    .line 259
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v6, "no card in slot"

    invoke-direct {v2, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 260
    .restart local v2       #exception:Ljava/lang/RuntimeException;
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {p3, v6, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 261
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 266
    .end local v2           #exception:Ljava/lang/RuntimeException;
    :cond_2
    if-nez p1, :cond_3

    const/4 v6, 0x1

    :goto_1
    invoke-virtual {p0, v6}, Landroid/telephony/BaiduSubManager;->isCardInsert(I)Z

    move-result v4

    .line 267
    .local v4, isOtherCardInsert:Z
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "dual_sim_mode_setting"

    const/4 v8, -0x1

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 269
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

    .line 273
    iput-object p3, p0, Landroid/telephony/BaiduSubManager;->mSetSlotActiveMsg:Landroid/os/Message;

    .line 275
    if-eqz p2, :cond_b

    .line 276
    const/4 v6, 0x1

    iget-object v7, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "airplane_mode_on"

    const/4 v9, -0x1

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v6, v7, :cond_5

    .line 278
    const-string v6, "BaiduSubManager"

    const-string v7, "airplane mode on, turn off it"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
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

    .line 287
    :goto_2
    if-nez p1, :cond_4

    .line 288
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "airplane_mode_on"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 289
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "dual_sim_mode_setting"

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 290
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 291
    .local v3, intent:Landroid/content/Intent;
    const-string v6, "state"

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 292
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 266
    .end local v0           #dualSimMode:I
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #isOtherCardInsert:Z
    :cond_3
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 282
    .restart local v0       #dualSimMode:I
    .restart local v4       #isOtherCardInsert:Z
    :catch_0
    move-exception v1

    .line 283
    .local v1, ex:Landroid/os/RemoteException;
    const-string v6, "BaiduSubManager"

    const-string v7, "RemoteException ex"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 284
    .end local v1           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 285
    .local v1, ex:Ljava/lang/NullPointerException;
    const-string v6, "BaiduSubManager"

    const-string v7, "NullPointerException ex"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 294
    .end local v1           #ex:Ljava/lang/NullPointerException;
    :cond_4
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "airplane_mode_on"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 295
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "dual_sim_mode_setting"

    const/4 v8, 0x2

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 296
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 297
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v6, "state"

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 298
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 303
    .end local v3           #intent:Landroid/content/Intent;
    :cond_5
    packed-switch v0, :pswitch_data_0

    .line 413
    const-string v6, "BaiduSubManager"

    const-string v7, "unknown dual card mode"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    if-eqz p3, :cond_0

    .line 416
    const/4 v5, 0x0

    .line 417
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v6, "unknown dual card mode"

    invoke-direct {v2, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 418
    .restart local v2       #exception:Ljava/lang/RuntimeException;
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {p3, v6, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 419
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 420
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/telephony/BaiduSubManager;->mSetSlotActiveMsg:Landroid/os/Message;

    goto/16 :goto_0

    .line 307
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

    .line 313
    :goto_3
    if-nez p1, :cond_6

    .line 314
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "dual_sim_mode_setting"

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 315
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.DUAL_SIM_MODE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 316
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v6, "mode"

    const/4 v7, 0x1

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 317
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 308
    .end local v3           #intent:Landroid/content/Intent;
    :catch_2
    move-exception v1

    .line 309
    .local v1, ex:Landroid/os/RemoteException;
    const-string v6, "BaiduSubManager"

    const-string v7, "RemoteException ex"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 310
    .end local v1           #ex:Landroid/os/RemoteException;
    :catch_3
    move-exception v1

    .line 311
    .local v1, ex:Ljava/lang/NullPointerException;
    const-string v6, "BaiduSubManager"

    const-string v7, "NullPointerException ex"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 319
    .end local v1           #ex:Ljava/lang/NullPointerException;
    :cond_6
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "dual_sim_mode_setting"

    const/4 v8, 0x2

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 320
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.DUAL_SIM_MODE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 321
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v6, "mode"

    const/4 v7, 0x2

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 322
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 328
    .end local v3           #intent:Landroid/content/Intent;
    :pswitch_1
    const/4 v6, 0x1

    if-ne p1, v6, :cond_8

    .line 330
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

    .line 336
    :goto_4
    if-eqz v4, :cond_7

    .line 337
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "dual_sim_mode_setting"

    const/4 v8, 0x3

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 338
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.DUAL_SIM_MODE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 339
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v6, "mode"

    const/4 v7, 0x3

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 340
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 331
    .end local v3           #intent:Landroid/content/Intent;
    :catch_4
    move-exception v1

    .line 332
    .local v1, ex:Landroid/os/RemoteException;
    const-string v6, "BaiduSubManager"

    const-string v7, "RemoteException ex"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 333
    .end local v1           #ex:Landroid/os/RemoteException;
    :catch_5
    move-exception v1

    .line 334
    .local v1, ex:Ljava/lang/NullPointerException;
    const-string v6, "BaiduSubManager"

    const-string v7, "NullPointerException ex"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 342
    .end local v1           #ex:Ljava/lang/NullPointerException;
    :cond_7
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "dual_sim_mode_setting"

    const/4 v8, 0x2

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 343
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.DUAL_SIM_MODE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 344
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v6, "mode"

    const/4 v7, 0x2

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 345
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 349
    .end local v3           #intent:Landroid/content/Intent;
    :cond_8
    const-string v6, "BaiduSubManager"

    const-string v7, "slot already active"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    if-eqz p3, :cond_0

    .line 352
    const/4 v5, 0x1

    .line 353
    const/4 v2, 0x0

    .line 354
    .restart local v2       #exception:Ljava/lang/RuntimeException;
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {p3, v6, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 355
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 356
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/telephony/BaiduSubManager;->mSetSlotActiveMsg:Landroid/os/Message;

    goto/16 :goto_0

    .line 363
    .end local v2           #exception:Ljava/lang/RuntimeException;
    :pswitch_2
    if-nez p1, :cond_a

    .line 365
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

    .line 371
    :goto_5
    if-eqz v4, :cond_9

    .line 372
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "dual_sim_mode_setting"

    const/4 v8, 0x3

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 373
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.DUAL_SIM_MODE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 374
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v6, "mode"

    const/4 v7, 0x3

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 375
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 366
    .end local v3           #intent:Landroid/content/Intent;
    :catch_6
    move-exception v1

    .line 367
    .local v1, ex:Landroid/os/RemoteException;
    const-string v6, "BaiduSubManager"

    const-string v7, "RemoteException ex"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 368
    .end local v1           #ex:Landroid/os/RemoteException;
    :catch_7
    move-exception v1

    .line 369
    .local v1, ex:Ljava/lang/NullPointerException;
    const-string v6, "BaiduSubManager"

    const-string v7, "NullPointerException ex"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 377
    .end local v1           #ex:Ljava/lang/NullPointerException;
    :cond_9
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "dual_sim_mode_setting"

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 378
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.DUAL_SIM_MODE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 379
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v6, "mode"

    const/4 v7, 0x1

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 380
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 384
    .end local v3           #intent:Landroid/content/Intent;
    :cond_a
    const-string v6, "BaiduSubManager"

    const-string v7, "slot already active"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    if-eqz p3, :cond_0

    .line 387
    const/4 v5, 0x1

    .line 388
    const/4 v2, 0x0

    .line 389
    .restart local v2       #exception:Ljava/lang/RuntimeException;
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {p3, v6, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 390
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 391
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/telephony/BaiduSubManager;->mSetSlotActiveMsg:Landroid/os/Message;

    goto/16 :goto_0

    .line 399
    .end local v2           #exception:Ljava/lang/RuntimeException;
    :pswitch_3
    const-string v6, "BaiduSubManager"

    const-string v7, "already in dual card mode, no need to active any"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    if-eqz p3, :cond_0

    .line 402
    const/4 v5, 0x1

    .line 403
    const/4 v2, 0x0

    .line 404
    .restart local v2       #exception:Ljava/lang/RuntimeException;
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {p3, v6, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 405
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 406
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/telephony/BaiduSubManager;->mSetSlotActiveMsg:Landroid/os/Message;

    goto/16 :goto_0

    .line 426
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

    .line 428
    const-string v6, "BaiduSubManager"

    const-string v7, "airplane mode on, no need deactive any"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    if-eqz p3, :cond_0

    .line 431
    const/4 v5, 0x1

    .line 432
    const/4 v2, 0x0

    .line 433
    .restart local v2       #exception:Ljava/lang/RuntimeException;
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {p3, v6, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 434
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 435
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/telephony/BaiduSubManager;->mSetSlotActiveMsg:Landroid/os/Message;

    goto/16 :goto_0

    .line 439
    .end local v2           #exception:Ljava/lang/RuntimeException;
    :cond_c
    packed-switch v0, :pswitch_data_1

    .line 549
    const-string v6, "BaiduSubManager"

    const-string v7, "unknown dual card mode"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    if-eqz p3, :cond_0

    .line 552
    const/4 v5, 0x0

    .line 553
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v6, "unknown dual card mode"

    invoke-direct {v2, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 554
    .restart local v2       #exception:Ljava/lang/RuntimeException;
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {p3, v6, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 555
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 556
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/telephony/BaiduSubManager;->mSetSlotActiveMsg:Landroid/os/Message;

    goto/16 :goto_0

    .line 443
    .end local v2           #exception:Ljava/lang/RuntimeException;
    :pswitch_4
    const-string v6, "BaiduSubManager"

    const-string v7, "already in disable mode, no need to deactive any"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    if-eqz p3, :cond_0

    .line 446
    const/4 v5, 0x1

    .line 447
    const/4 v2, 0x0

    .line 448
    .restart local v2       #exception:Ljava/lang/RuntimeException;
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {p3, v6, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 449
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 450
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/telephony/BaiduSubManager;->mSetSlotActiveMsg:Landroid/os/Message;

    goto/16 :goto_0

    .line 456
    .end local v2           #exception:Ljava/lang/RuntimeException;
    :pswitch_5
    if-nez p1, :cond_d

    .line 458
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

    .line 464
    :goto_6
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "dual_sim_mode_setting"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 465
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.DUAL_SIM_MODE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 466
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v6, "mode"

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 467
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 459
    .end local v3           #intent:Landroid/content/Intent;
    :catch_8
    move-exception v1

    .line 460
    .local v1, ex:Landroid/os/RemoteException;
    const-string v6, "BaiduSubManager"

    const-string v7, "RemoteException ex"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 461
    .end local v1           #ex:Landroid/os/RemoteException;
    :catch_9
    move-exception v1

    .line 462
    .local v1, ex:Ljava/lang/NullPointerException;
    const-string v6, "BaiduSubManager"

    const-string v7, "NullPointerException ex"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 470
    .end local v1           #ex:Ljava/lang/NullPointerException;
    :cond_d
    const-string v6, "BaiduSubManager"

    const-string v7, "slot already deactive"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    if-eqz p3, :cond_0

    .line 473
    const/4 v5, 0x1

    .line 474
    const/4 v2, 0x0

    .line 475
    .restart local v2       #exception:Ljava/lang/RuntimeException;
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {p3, v6, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 476
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 477
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/telephony/BaiduSubManager;->mSetSlotActiveMsg:Landroid/os/Message;

    goto/16 :goto_0

    .line 484
    .end local v2           #exception:Ljava/lang/RuntimeException;
    :pswitch_6
    const/4 v6, 0x1

    if-ne p1, v6, :cond_e

    .line 486
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

    .line 492
    :goto_7
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "dual_sim_mode_setting"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 493
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.DUAL_SIM_MODE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 494
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v6, "mode"

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 495
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 487
    .end local v3           #intent:Landroid/content/Intent;
    :catch_a
    move-exception v1

    .line 488
    .local v1, ex:Landroid/os/RemoteException;
    const-string v6, "BaiduSubManager"

    const-string v7, "RemoteException ex"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 489
    .end local v1           #ex:Landroid/os/RemoteException;
    :catch_b
    move-exception v1

    .line 490
    .local v1, ex:Ljava/lang/NullPointerException;
    const-string v6, "BaiduSubManager"

    const-string v7, "NullPointerException ex"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 498
    .end local v1           #ex:Ljava/lang/NullPointerException;
    :cond_e
    const-string v6, "BaiduSubManager"

    const-string v7, "slot already deactive"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    if-eqz p3, :cond_0

    .line 501
    const/4 v5, 0x1

    .line 502
    const/4 v2, 0x0

    .line 503
    .restart local v2       #exception:Ljava/lang/RuntimeException;
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {p3, v6, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 504
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 505
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/telephony/BaiduSubManager;->mSetSlotActiveMsg:Landroid/os/Message;

    goto/16 :goto_0

    .line 513
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

    .line 519
    :goto_8
    if-nez p1, :cond_10

    .line 520
    if-eqz v4, :cond_f

    .line 521
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "dual_sim_mode_setting"

    const/4 v8, 0x2

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 522
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.DUAL_SIM_MODE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 523
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v6, "mode"

    const/4 v7, 0x2

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 524
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 514
    .end local v3           #intent:Landroid/content/Intent;
    :catch_c
    move-exception v1

    .line 515
    .local v1, ex:Landroid/os/RemoteException;
    const-string v6, "BaiduSubManager"

    const-string v7, "RemoteException ex"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 516
    .end local v1           #ex:Landroid/os/RemoteException;
    :catch_d
    move-exception v1

    .line 517
    .local v1, ex:Ljava/lang/NullPointerException;
    const-string v6, "BaiduSubManager"

    const-string v7, "NullPointerException ex"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 526
    .end local v1           #ex:Ljava/lang/NullPointerException;
    :cond_f
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "dual_sim_mode_setting"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 527
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.DUAL_SIM_MODE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 528
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v6, "mode"

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 529
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 532
    .end local v3           #intent:Landroid/content/Intent;
    :cond_10
    if-eqz v4, :cond_11

    .line 533
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "dual_sim_mode_setting"

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 534
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.DUAL_SIM_MODE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 535
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v6, "mode"

    const/4 v7, 0x1

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 536
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 538
    .end local v3           #intent:Landroid/content/Intent;
    :cond_11
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "dual_sim_mode_setting"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 539
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.DUAL_SIM_MODE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 540
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v6, "mode"

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 541
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 303
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 439
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
    .line 604
    const/4 v1, 0x0

    .line 607
    .local v1, result:Z
    if-eqz p1, :cond_1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    .line 608
    const-string v2, "BaiduSubManager"

    const-string v3, "slot error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    if-eqz p3, :cond_0

    .line 610
    const/4 v1, 0x0

    .line 611
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "slot error"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 612
    .local v0, exception:Ljava/lang/RuntimeException;
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p3, v2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 613
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 635
    .end local v0           #exception:Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void

    .line 618
    :cond_1
    invoke-virtual {p0, p1}, Landroid/telephony/BaiduSubManager;->isCardInsert(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 619
    const-string v2, "BaiduSubManager"

    const-string v3, "no card in slot"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    if-eqz p3, :cond_0

    .line 621
    const/4 v1, 0x0

    .line 622
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "no card in slot"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 623
    .restart local v0       #exception:Ljava/lang/RuntimeException;
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p3, v2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 624
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 629
    .end local v0           #exception:Ljava/lang/RuntimeException;
    :cond_2
    if-eqz p3, :cond_0

    .line 630
    const/4 v1, 0x1

    .line 631
    const/4 v0, 0x0

    .line 632
    .restart local v0       #exception:Ljava/lang/RuntimeException;
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p3, v2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 633
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
