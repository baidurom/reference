.class public Lcom/android/internal/telephony/IccCardProxy;
.super Landroid/os/Handler;
.source "IccCardProxy.java"

# interfaces
.implements Lcom/android/internal/telephony/IccCard;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IccCardProxy$1;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_APP_READY:I = 0x6

.field private static final EVENT_CDMA_SUBSCRIPTION_SOURCE_CHANGED:I = 0xb

.field private static final EVENT_ICC_ABSENT:I = 0x4

.field private static final EVENT_ICC_CHANGED:I = 0x3

.field private static final EVENT_ICC_LOCKED:I = 0x5

.field private static final EVENT_ICC_RECOVERY:I = 0x64

.field private static final EVENT_IMSI_READY:I = 0x8

.field private static final EVENT_NETWORK_LOCKED:I = 0x9

.field private static final EVENT_RADIO_OFF_OR_UNAVAILABLE:I = 0x1

.field private static final EVENT_RADIO_ON:I = 0x2

.field private static final EVENT_RECORDS_LOADED:I = 0x7

.field private static final LOG_TAG:Ljava/lang/String; = "RIL_IccCardProxy"


# instance fields
.field private ICCCARDPROXY_PROPERTY_SIM_STATE:[Ljava/lang/String;

.field private mAbsentRegistrants:Landroid/os/RegistrantList;

.field private mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

.field private mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mCurrentAppType:I

.field private mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

.field private mIccRecords:Lcom/android/internal/telephony/IccRecords;

.field private mInitialized:Z

.field private final mLock:Ljava/lang/Object;

.field private mNetworkLockState:I

.field private mNetworkLockedRegistrants:Landroid/os/RegistrantList;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPinLockedRegistrants:Landroid/os/RegistrantList;

.field private mQuietMode:Z

.field private mRadioOn:Z

.field private mRecoveryRegistrants:Landroid/os/RegistrantList;

.field private mSimId:I

.field private mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

.field private mUiccCard:Lcom/android/internal/telephony/UiccCard;

.field private mUiccController:Lcom/android/internal/telephony/uicc/UiccController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 7
    .parameter "context"
    .parameter "ci"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 120
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 73
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "gsm.sim.state"

    aput-object v1, v0, v3

    const-string v1, "gsm.sim.state.2"

    aput-object v1, v0, v4

    const-string v1, "gsm.sim.state.3"

    aput-object v1, v0, v5

    const-string v1, "gsm.sim.state.4"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->ICCCARDPROXY_PROPERTY_SIM_STATE:[Ljava/lang/String;

    .line 96
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mLock:Ljava/lang/Object;

    .line 100
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mAbsentRegistrants:Landroid/os/RegistrantList;

    .line 101
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mRecoveryRegistrants:Landroid/os/RegistrantList;

    .line 102
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    .line 103
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    .line 105
    iput v4, p0, Lcom/android/internal/telephony/IccCardProxy;->mCurrentAppType:I

    .line 106
    iput-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 107
    iput-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    .line 108
    iput-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    .line 109
    iput-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    .line 110
    iput-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    .line 111
    iput-boolean v3, p0, Lcom/android/internal/telephony/IccCardProxy;->mRadioOn:Z

    .line 112
    iput-boolean v3, p0, Lcom/android/internal/telephony/IccCardProxy;->mQuietMode:Z

    .line 114
    iput-boolean v3, p0, Lcom/android/internal/telephony/IccCardProxy;->mInitialized:Z

    .line 115
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 116
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mNetworkLockState:I

    .line 121
    const-string v0, "Creating"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCardProxy;->log(Ljava/lang/String;)V

    .line 122
    iput-object p1, p0, Lcom/android/internal/telephony/IccCardProxy;->mContext:Landroid/content/Context;

    .line 123
    iput-object p2, p0, Lcom/android/internal/telephony/IccCardProxy;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 124
    const/16 v0, 0xb

    invoke-static {p1, p2, p0, v0, v2}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getInstance(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Landroid/os/Handler;ILjava/lang/Object;)Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    .line 126
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 127
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v0, p0, v6, v2}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 128
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccRecovery(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 129
    invoke-interface {p2, p0, v5, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 130
    invoke-interface {p2, p0, v4, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 131
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    .line 132
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;I)V
    .locals 7
    .parameter "context"
    .parameter "ci"
    .parameter "simId"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 134
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 73
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "gsm.sim.state"

    aput-object v1, v0, v3

    const-string v1, "gsm.sim.state.2"

    aput-object v1, v0, v4

    const-string v1, "gsm.sim.state.3"

    aput-object v1, v0, v5

    const-string v1, "gsm.sim.state.4"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->ICCCARDPROXY_PROPERTY_SIM_STATE:[Ljava/lang/String;

    .line 96
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mLock:Ljava/lang/Object;

    .line 100
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mAbsentRegistrants:Landroid/os/RegistrantList;

    .line 101
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mRecoveryRegistrants:Landroid/os/RegistrantList;

    .line 102
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    .line 103
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    .line 105
    iput v4, p0, Lcom/android/internal/telephony/IccCardProxy;->mCurrentAppType:I

    .line 106
    iput-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 107
    iput-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    .line 108
    iput-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    .line 109
    iput-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    .line 110
    iput-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    .line 111
    iput-boolean v3, p0, Lcom/android/internal/telephony/IccCardProxy;->mRadioOn:Z

    .line 112
    iput-boolean v3, p0, Lcom/android/internal/telephony/IccCardProxy;->mQuietMode:Z

    .line 114
    iput-boolean v3, p0, Lcom/android/internal/telephony/IccCardProxy;->mInitialized:Z

    .line 115
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 116
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mNetworkLockState:I

    .line 135
    const-string v0, "Creating"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCardProxy;->log(Ljava/lang/String;)V

    .line 136
    iput-object p1, p0, Lcom/android/internal/telephony/IccCardProxy;->mContext:Landroid/content/Context;

    .line 137
    iput-object p2, p0, Lcom/android/internal/telephony/IccCardProxy;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 138
    iput p3, p0, Lcom/android/internal/telephony/IccCardProxy;->mSimId:I

    .line 139
    const/16 v0, 0xb

    invoke-static {p1, p2, p0, v0, v2}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getInstance(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Landroid/os/Handler;ILjava/lang/Object;)Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    .line 141
    iget v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mSimId:I

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance(I)Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 142
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v0, p0, v6, v2}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 143
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccRecovery(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 144
    invoke-interface {p2, p0, v5, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 145
    invoke-interface {p2, p0, v4, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 146
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    .line 147
    return-void
.end method

.method private broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "value"
    .parameter "reason"

    .prologue
    .line 407
    iget-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 408
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mQuietMode:Z

    if-eqz v1, :cond_0

    .line 409
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QuietMode: NOT Broadcasting intent ACTION_SIM_STATE_CHANGED "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " reason "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccCardProxy;->log(Ljava/lang/String;)V

    .line 411
    monitor-exit v2

    .line 425
    :goto_0
    return-void

    .line 414
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 416
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "phoneName"

    const-string v3, "Phone"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 417
    const-string v1, "ss"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 418
    const-string v1, "reason"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 419
    const-string v1, "simId"

    iget v3, p0, Lcom/android/internal/telephony/IccCardProxy;->mSimId:I

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 420
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broadcasting intent ACTION_SIM_STATE_CHANGED "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " reason "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " sim id "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/internal/telephony/IccCardProxy;->mSimId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccCardProxy;->log(Ljava/lang/String;)V

    .line 422
    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v3, -0x1

    invoke-static {v0, v1, v3}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 424
    monitor-exit v2

    goto :goto_0

    .end local v0           #intent:Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private broadcastRadioOffIntent()V
    .locals 3

    .prologue
    .line 900
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.RADIO_OFF"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 901
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "phoneName"

    const-string v2, "Phone"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 902
    const-string v1, "slotId"

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardProxy;->getMySimId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 903
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Broadcasting intent ACTION_RADIO_OFF  sim id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardProxy;->getMySimId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccCardProxy;->log(Ljava/lang/String;)V

    .line 905
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 906
    return-void
.end method

.method private getIccStateIntentString(Lcom/android/internal/telephony/IccCardConstants$State;)Ljava/lang/String;
    .locals 2
    .parameter "state"

    .prologue
    .line 525
    sget-object v0, Lcom/android/internal/telephony/IccCardProxy$1;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 533
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 526
    :pswitch_0
    const-string v0, "ABSENT"

    goto :goto_0

    .line 527
    :pswitch_1
    const-string v0, "LOCKED"

    goto :goto_0

    .line 528
    :pswitch_2
    const-string v0, "LOCKED"

    goto :goto_0

    .line 529
    :pswitch_3
    const-string v0, "LOCKED"

    goto :goto_0

    .line 530
    :pswitch_4
    const-string v0, "READY"

    goto :goto_0

    .line 531
    :pswitch_5
    const-string v0, "NOT_READY"

    goto :goto_0

    .line 532
    :pswitch_6
    const-string v0, "LOCKED"

    goto :goto_0

    .line 525
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private getIccStateReason(Lcom/android/internal/telephony/IccCardConstants$State;)Ljava/lang/String;
    .locals 3
    .parameter "state"

    .prologue
    const/4 v0, 0x0

    .line 542
    sget-object v1, Lcom/android/internal/telephony/IccCardProxy$1;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 555
    :goto_0
    :pswitch_0
    return-object v0

    .line 543
    :pswitch_1
    const-string v0, "PIN"

    goto :goto_0

    .line 544
    :pswitch_2
    const-string v0, "PUK"

    goto :goto_0

    .line 546
    :pswitch_3
    sget-object v1, Lcom/android/internal/telephony/IccCardProxy$1;->$SwitchMap$com$android$internal$telephony$IccCardApplicationStatus$PersoSubState:[I

    iget-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/UiccCardApplication;->getPersoSubState()Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 547
    :pswitch_4
    const-string v0, "NETWORK"

    goto :goto_0

    .line 548
    :pswitch_5
    const-string v0, "NETWORK_SUBSET"

    goto :goto_0

    .line 549
    :pswitch_6
    const-string v0, "CORPORATE"

    goto :goto_0

    .line 550
    :pswitch_7
    const-string v0, "SERVICE_PROVIDER"

    goto :goto_0

    .line 551
    :pswitch_8
    const-string v0, "SIM"

    goto :goto_0

    .line 554
    :pswitch_9
    const-string v0, "PERM_DISABLED"

    goto :goto_0

    .line 542
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_9
    .end packed-switch

    .line 546
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1020
    const-string v0, "RIL_IccCardProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IccCard][SIM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardProxy;->getMySimId()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1024
    const-string v0, "RIL_IccCardProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IccCard][SIM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardProxy;->getMySimId()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    return-void
.end method

.method private processLockedState()V
    .locals 5

    .prologue
    .line 449
    iget-object v3, p0, Lcom/android/internal/telephony/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 450
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-nez v2, :cond_0

    .line 452
    monitor-exit v3

    .line 471
    :goto_0
    return-void

    .line 454
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/UiccCardApplication;->getPin1State()Lcom/android/internal/telephony/IccCardStatus$PinState;

    move-result-object v1

    .line 455
    .local v1, pin1State:Lcom/android/internal/telephony/IccCardStatus$PinState;
    sget-object v2, Lcom/android/internal/telephony/IccCardStatus$PinState;->PINSTATE_ENABLED_PERM_BLOCKED:Lcom/android/internal/telephony/IccCardStatus$PinState;

    if-ne v1, v2, :cond_1

    .line 456
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    .line 457
    monitor-exit v3

    goto :goto_0

    .line 470
    .end local v1           #pin1State:Lcom/android/internal/telephony/IccCardStatus$PinState;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 460
    .restart local v1       #pin1State:Lcom/android/internal/telephony/IccCardStatus$PinState;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/UiccCardApplication;->getState()Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    move-result-object v0

    .line 461
    .local v0, appState:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;
    sget-object v2, Lcom/android/internal/telephony/IccCardProxy$1;->$SwitchMap$com$android$internal$telephony$IccCardApplicationStatus$AppState:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_0

    .line 470
    :goto_1
    monitor-exit v3

    goto :goto_0

    .line 463
    :pswitch_0
    iget-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 464
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto :goto_1

    .line 467
    :pswitch_1
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 461
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private registerUiccCardEvents()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 385
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    const/4 v1, 0x4

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/UiccCard;->registerForAbsent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v0, :cond_1

    .line 387
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    const/4 v1, 0x6

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 388
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    const/4 v1, 0x5

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/UiccCardApplication;->registerForLocked(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 389
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    const/16 v1, 0x9

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/UiccCardApplication;->registerForNetworkLocked(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 391
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v0, :cond_2

    .line 392
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    const/16 v1, 0x8

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/IccRecords;->registerForImsiReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 393
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    const/4 v1, 0x7

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 395
    :cond_2
    return-void
.end method

.method private setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 2
    .parameter "newState"

    .prologue
    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setExternalState(): newState =  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCardProxy;->log(Ljava/lang/String;)V

    .line 512
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;Z)V

    .line 513
    return-void
.end method

.method private setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;Z)V
    .locals 3
    .parameter "newState"
    .parameter "override"

    .prologue
    .line 474
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 475
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setExternalState(): mExternalState = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " newState =  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " override = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCardProxy;->log(Ljava/lang/String;)V

    .line 478
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p1, v0, :cond_0

    .line 479
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p1, v0, :cond_2

    iget v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mNetworkLockState:I

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardProxy;->getNetworkPersoType()I

    move-result v2

    if-eq v0, v2, :cond_2

    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetworkLockState =  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mNetworkLockState:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCardProxy;->log(Ljava/lang/String;)V

    .line 486
    :cond_0
    iput-object p1, p0, Lcom/android/internal/telephony/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 487
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardProxy;->getNetworkPersoType()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mNetworkLockState:I

    .line 489
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->ICCCARDPROXY_PROPERTY_SIM_STATE:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardProxy;->getMySimId()I

    move-result v2

    aget-object v0, v0, v2

    iget-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCardConstants$State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mInitialized:Z

    if-eqz v0, :cond_1

    .line 496
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mSimId:I

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 501
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->updateSimIndicateState()V

    .line 503
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCardProxy;->getIccStateIntentString(Lcom/android/internal/telephony/IccCardConstants$State;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccCardProxy;->getIccStateReason(Lcom/android/internal/telephony/IccCardConstants$State;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCardProxy;->getIccStateIntentString(Lcom/android/internal/telephony/IccCardConstants$State;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccCardProxy;->getIccStateReason(Lcom/android/internal/telephony/IccCardConstants$State;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedExtendIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    monitor-exit v1

    .line 508
    :goto_0
    return-void

    .line 483
    :cond_2
    monitor-exit v1

    goto :goto_0

    .line 507
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private unregisterUiccCardEvents()V
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/UiccCard;->unregisterForAbsent(Landroid/os/Handler;)V

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 400
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/UiccCardApplication;->unregisterForLocked(Landroid/os/Handler;)V

    .line 401
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/UiccCardApplication;->unregisterForNetworkLocked(Landroid/os/Handler;)V

    .line 402
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/IccRecords;->unregisterForImsiReady(Landroid/os/Handler;)V

    .line 403
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 404
    :cond_5
    return-void
.end method

.method private updateExternalState()V
    .locals 2

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    if-nez v0, :cond_0

    .line 326
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    .line 382
    :goto_0
    return-void

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCard;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/IccCardStatus$CardState;

    if-ne v0, v1, :cond_1

    .line 329
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto :goto_0

    .line 344
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCard;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_ERROR:Lcom/android/internal/telephony/IccCardStatus$CardState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-nez v0, :cond_3

    .line 346
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mUiccCard.getCardState() is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCard;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCardProxy;->log(Ljava/lang/String;)V

    .line 347
    const-string v0, "mUiccApplication == null"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCardProxy;->log(Ljava/lang/String;)V

    .line 348
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto :goto_0

    .line 352
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/IccCardProxy$1;->$SwitchMap$com$android$internal$telephony$IccCardApplicationStatus$AppState:[I

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCardApplication;->getState()Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 355
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto :goto_0

    .line 358
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto :goto_0

    .line 361
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto :goto_0

    .line 368
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto :goto_0

    .line 379
    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto :goto_0

    .line 352
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private updateIccAvailability()V
    .locals 7

    .prologue
    .line 290
    iget-object v5, p0, Lcom/android/internal/telephony/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 291
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard()Lcom/android/internal/telephony/UiccCard;

    move-result-object v1

    .line 292
    .local v1, newCard:Lcom/android/internal/telephony/UiccCard;
    sget-object v3, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/IccCardStatus$CardState;

    .line 293
    .local v3, state:Lcom/android/internal/telephony/IccCardStatus$CardState;
    const/4 v0, 0x0

    .line 294
    .local v0, newApp:Lcom/android/internal/telephony/UiccCardApplication;
    const/4 v2, 0x0

    .line 295
    .local v2, newRecords:Lcom/android/internal/telephony/IccRecords;
    if-eqz v1, :cond_0

    .line 296
    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCard;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v3

    .line 297
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCurrentAppType is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lcom/android/internal/telephony/IccCardProxy;->mCurrentAppType:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/IccCardProxy;->log(Ljava/lang/String;)V

    .line 298
    iget v4, p0, Lcom/android/internal/telephony/IccCardProxy;->mCurrentAppType:I

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/UiccCard;->getApplication(I)Lcom/android/internal/telephony/UiccCardApplication;

    move-result-object v0

    .line 299
    if-eqz v0, :cond_0

    .line 300
    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/IccRecords;

    move-result-object v2

    .line 304
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-ne v4, v2, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-ne v4, v0, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    if-eq v4, v1, :cond_2

    .line 305
    :cond_1
    const-string v4, "Icc changed. Reregestering."

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/IccCardProxy;->log(Ljava/lang/String;)V

    .line 306
    invoke-direct {p0}, Lcom/android/internal/telephony/IccCardProxy;->unregisterUiccCardEvents()V

    .line 307
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "old mUiccCard is"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/IccCardProxy;->log(Ljava/lang/String;)V

    .line 308
    iput-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    .line 309
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "new mUiccCard is"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/IccCardProxy;->log(Ljava/lang/String;)V

    .line 310
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "old mUiccApplication is"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/IccCardProxy;->log(Ljava/lang/String;)V

    .line 311
    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    .line 312
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "new mUiccApplication is"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/IccCardProxy;->log(Ljava/lang/String;)V

    .line 313
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "old mIccRecords is"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/IccCardProxy;->log(Ljava/lang/String;)V

    .line 314
    iput-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    .line 315
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "new mIccRecords is"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/IccCardProxy;->log(Ljava/lang/String;)V

    .line 316
    invoke-direct {p0}, Lcom/android/internal/telephony/IccCardProxy;->registerUiccCardEvents()V

    .line 319
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/IccCardProxy;->updateExternalState()V

    .line 320
    monitor-exit v5

    .line 321
    return-void

    .line 320
    .end local v0           #newApp:Lcom/android/internal/telephony/UiccCardApplication;
    .end local v1           #newCard:Lcom/android/internal/telephony/UiccCard;
    .end local v2           #newRecords:Lcom/android/internal/telephony/IccRecords;
    .end local v3           #state:Lcom/android/internal/telephony/IccCardStatus$CardState;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private updateQuietMode()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 185
    iget-object v5, p0, Lcom/android/internal/telephony/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 186
    :try_start_0
    iget-boolean v3, p0, Lcom/android/internal/telephony/IccCardProxy;->mQuietMode:Z

    .line 188
    .local v3, oldQuietMode:Z
    const/4 v0, -0x1

    .line 189
    .local v0, cdmaSource:I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getLteOnCdmaModeStatic()I

    move-result v6

    if-ne v6, v4, :cond_1

    move v1, v4

    .line 191
    .local v1, isLteOnCdmaMode:Z
    :goto_0
    iget v6, p0, Lcom/android/internal/telephony/IccCardProxy;->mCurrentAppType:I

    if-ne v6, v4, :cond_2

    .line 192
    const/4 v2, 0x0

    .line 193
    .local v2, newQuietMode:Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateQuietMode: 3GPP subscription -> newQuietMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/IccCardProxy;->log(Ljava/lang/String;)V

    .line 207
    :goto_1
    iget-boolean v6, p0, Lcom/android/internal/telephony/IccCardProxy;->mQuietMode:Z

    if-nez v6, :cond_6

    if-ne v2, v4, :cond_6

    .line 210
    const-string v4, "Switching to QuietMode."

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/IccCardProxy;->log(Ljava/lang/String;)V

    .line 211
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    .line 212
    iput-boolean v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mQuietMode:Z

    .line 222
    :cond_0
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateQuietMode: QuietMode is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v6, p0, Lcom/android/internal/telephony/IccCardProxy;->mQuietMode:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " (app_type="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lcom/android/internal/telephony/IccCardProxy;->mCurrentAppType:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " isLteOnCdmaMode="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " cdmaSource="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/IccCardProxy;->log(Ljava/lang/String;)V

    .line 226
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/telephony/IccCardProxy;->mInitialized:Z

    .line 227
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/IccCardProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/IccCardProxy;->sendMessage(Landroid/os/Message;)Z

    .line 228
    monitor-exit v5

    .line 229
    return-void

    .end local v1           #isLteOnCdmaMode:Z
    .end local v2           #newQuietMode:Z
    :cond_1
    move v1, v2

    .line 189
    goto :goto_0

    .line 195
    .restart local v1       #isLteOnCdmaMode:Z
    :cond_2
    if-eqz v1, :cond_3

    .line 196
    const-string v6, "updateQuietMode: is cdma/lte device, force IccCardProxy into 3gpp mode"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/IccCardProxy;->log(Ljava/lang/String;)V

    .line 197
    const/4 v6, 0x1

    iput v6, p0, Lcom/android/internal/telephony/IccCardProxy;->mCurrentAppType:I

    .line 199
    :cond_3
    iget-object v6, p0, Lcom/android/internal/telephony/IccCardProxy;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/internal/telephony/IccCardProxy;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    move-result v0

    .line 202
    :goto_3
    if-ne v0, v4, :cond_4

    iget v6, p0, Lcom/android/internal/telephony/IccCardProxy;->mCurrentAppType:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    if-nez v1, :cond_4

    move v2, v4

    .restart local v2       #newQuietMode:Z
    :cond_4
    goto :goto_1

    .line 199
    .end local v2           #newQuietMode:Z
    :cond_5
    const/4 v0, -0x1

    goto :goto_3

    .line 213
    .restart local v2       #newQuietMode:Z
    :cond_6
    iget-boolean v6, p0, Lcom/android/internal/telephony/IccCardProxy;->mQuietMode:Z

    if-ne v6, v4, :cond_0

    if-nez v2, :cond_0

    .line 215
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateQuietMode: Switching out from QuietMode. Force broadcast of current state="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/internal/telephony/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/IccCardProxy;->log(Ljava/lang/String;)V

    .line 218
    iput-boolean v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mQuietMode:Z

    .line 219
    iget-object v4, p0, Lcom/android/internal/telephony/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    const/4 v6, 0x1

    invoke-direct {p0, v4, v6}, Lcom/android/internal/telephony/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;Z)V

    goto/16 :goto_2

    .line 228
    .end local v0           #cdmaSource:I
    .end local v1           #isLteOnCdmaMode:Z
    .end local v2           #newQuietMode:Z
    .end local v3           #oldQuietMode:Z
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method


# virtual methods
.method public QueryIccNetworkLock(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 10
    .parameter "category"
    .parameter "lockop"
    .parameter "password"
    .parameter "data_imsi"
    .parameter "gid1"
    .parameter "gid2"
    .parameter "onComplete"

    .prologue
    .line 864
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QueryIccNetworkLock(): category =  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCardProxy;->log(Ljava/lang/String;)V

    .line 865
    iget-object v9, p0, Lcom/android/internal/telephony/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 866
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v0, :cond_1

    .line 867
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/UiccCardApplication;->QueryIccNetworkLock(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 874
    :cond_0
    monitor-exit v9

    .line 875
    :goto_0
    return-void

    .line 868
    :cond_1
    if-eqz p7, :cond_0

    .line 869
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v0, "ICC card is absent."

    invoke-direct {v8, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 870
    .local v8, e:Ljava/lang/Exception;
    invoke-static/range {p7 .. p7}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    iput-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 871
    invoke-virtual/range {p7 .. p7}, Landroid/os/Message;->sendToTarget()V

    .line 872
    monitor-exit v9

    goto :goto_0

    .line 874
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public broadcastIccStateChangedExtendIntent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "value"
    .parameter "reason"

    .prologue
    .line 428
    iget-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 429
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mQuietMode:Z

    if-eqz v1, :cond_0

    .line 430
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QuietMode: NOT Broadcasting extend intent ACTION_SIM_STATE_CHANGED "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " reason "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccCardProxy;->log(Ljava/lang/String;)V

    .line 432
    monitor-exit v2

    .line 446
    :goto_0
    return-void

    .line 435
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED_EXTEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 437
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "phoneName"

    const-string v3, "Phone"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 438
    const-string v1, "ss"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 439
    const-string v1, "reason"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 440
    const-string v1, "simId"

    iget v3, p0, Lcom/android/internal/telephony/IccCardProxy;->mSimId:I

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 441
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broadcasting intent ACTION_SIM_STATE_CHANGED_EXTEND "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " reason "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " sim id "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/internal/telephony/IccCardProxy;->mSimId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccCardProxy;->log(Ljava/lang/String;)V

    .line 443
    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v3, -0x1

    invoke-static {v0, v1, v3}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 445
    monitor-exit v2

    goto :goto_0

    .end local v0           #intent:Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public changeIccFdnPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "oldPassword"
    .parameter "newPassword"
    .parameter "onComplete"

    .prologue
    .line 803
    iget-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 804
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_1

    .line 805
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/UiccCardApplication;->changeIccFdnPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 812
    :cond_0
    monitor-exit v2

    .line 813
    :goto_0
    return-void

    .line 806
    :cond_1
    if-eqz p3, :cond_0

    .line 807
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 808
    .local v0, e:Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 809
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 810
    monitor-exit v2

    goto :goto_0

    .line 812
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "oldPassword"
    .parameter "newPassword"
    .parameter "onComplete"

    .prologue
    .line 789
    iget-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 790
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_1

    .line 791
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/UiccCardApplication;->changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 798
    :cond_0
    monitor-exit v2

    .line 799
    :goto_0
    return-void

    .line 792
    :cond_1
    if-eqz p3, :cond_0

    .line 793
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 794
    .local v0, e:Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 795
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 796
    monitor-exit v2

    goto :goto_0

    .line 798
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public closeLogicalChannel(ILandroid/os/Message;)V
    .locals 2
    .parameter "channel"
    .parameter "onComplete"

    .prologue
    .line 981
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCard;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/IccCardStatus$CardState;

    if-eq v0, v1, :cond_0

    .line 982
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/UiccCard;->closeLogicalChannel(ILandroid/os/Message;)V

    .line 984
    :cond_0
    return-void
.end method

.method public disableSimMissingNotification()V
    .locals 0

    .prologue
    .line 959
    return-void
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 150
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 151
    :try_start_0
    const-string v0, "Disposing"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCardProxy;->log(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccController;->unregisterForIccChanged(Landroid/os/Handler;)V

    .line 154
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccController;->unregisterForIccRecovery(Landroid/os/Handler;)V

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 156
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 157
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 158
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->dispose(Landroid/os/Handler;)V

    .line 159
    monitor-exit v1

    .line 160
    return-void

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public exchangeAPDU(IIIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 9
    .parameter "cla"
    .parameter "command"
    .parameter "channel"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"
    .parameter "onComplete"

    .prologue
    .line 969
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCard;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/IccCardStatus$CardState;

    if-eq v0, v1, :cond_0

    .line 970
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/telephony/UiccCard;->exchangeAPDU(IIIIIILjava/lang/String;Landroid/os/Message;)V

    .line 972
    :cond_0
    return-void
.end method

.method public exchangeSimIO(IIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 8
    .parameter "fileID"
    .parameter "command"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "pathID"
    .parameter "onComplete"

    .prologue
    .line 988
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCard;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/IccCardStatus$CardState;

    if-eq v0, v1, :cond_0

    .line 989
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/UiccCard;->exchangeSimIO(IIIIILjava/lang/String;Landroid/os/Message;)V

    .line 991
    :cond_0
    return-void
.end method

.method public exchangeSimIO(IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 10
    .parameter "fileID"
    .parameter "command"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "pathID"
    .parameter "data"
    .parameter "pin2"
    .parameter "onComplete"

    .prologue
    .line 995
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCard;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/IccCardStatus$CardState;

    if-eq v0, v1, :cond_0

    .line 996
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/telephony/UiccCard;->exchangeSimIO(IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 998
    :cond_0
    return-void
.end method

.method public getIccCardType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 916
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCard;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/IccCardStatus$CardState;

    if-eq v0, v1, :cond_0

    .line 917
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCard;->getIccCardType()Ljava/lang/String;

    move-result-object v0

    .line 919
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getIccFdnEnabled()Z
    .locals 3

    .prologue
    .line 753
    iget-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 754
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCardApplication;->getIccFdnEnabled()Z

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 755
    .local v0, retValue:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    monitor-exit v2

    return v1

    .line 754
    .end local v0           #retValue:Ljava/lang/Boolean;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 756
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;
    .locals 2

    .prologue
    .line 577
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 578
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    monitor-exit v1

    .line 581
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 582
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getIccLockEnabled()Z
    .locals 3

    .prologue
    .line 744
    iget-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 746
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCardApplication;->getIccLockEnabled()Z

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 747
    .local v0, retValue:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    monitor-exit v2

    return v1

    .line 746
    .end local v0           #retValue:Ljava/lang/Boolean;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 748
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getIccRecords()Lcom/android/internal/telephony/IccRecords;
    .locals 2

    .prologue
    .line 570
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 571
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    monitor-exit v1

    return-object v0

    .line 572
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getIccRecordsLoaded()Z
    .locals 2

    .prologue
    .line 516
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 517
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccRecords;->getRecordsLoaded()Z

    move-result v0

    monitor-exit v1

    .line 520
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 521
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getInternationalCardType()I
    .locals 2

    .prologue
    .line 1012
    const/4 v0, -0x1

    .line 1013
    .local v0, cardType:I
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    if-eqz v1, :cond_0

    .line 1014
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCard;->getInternationalCardType()I

    move-result v0

    .line 1016
    :cond_0
    return v0
.end method

.method public getMySimId()I
    .locals 1

    .prologue
    .line 963
    iget v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mSimId:I

    return v0
.end method

.method public getNetworkPersoType()I
    .locals 2

    .prologue
    .line 924
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v0, :cond_0

    .line 925
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCardApplication;->getPersoSubState()Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->parsePersoType(Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;)I

    move-result v0

    .line 927
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getServiceProviderName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 817
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 818
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v0, :cond_0

    .line 819
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    .line 821
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 822
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getState()Lcom/android/internal/telephony/IccCardConstants$State;
    .locals 2

    .prologue
    .line 563
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 564
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    monitor-exit v1

    return-object v0

    .line 565
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "receive message "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCardProxy;->log(Ljava/lang/String;)V

    .line 235
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhandled message with number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCardProxy;->loge(Ljava/lang/String;)V

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 237
    :sswitch_0
    const-string v0, "handleMessage (EVENT_RADIO_OFF_OR_UNAVAILABLE)"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCardProxy;->log(Ljava/lang/String;)V

    .line 238
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mRadioOn:Z

    .line 239
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    .line 240
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v0, v1, :cond_0

    .line 241
    invoke-direct {p0}, Lcom/android/internal/telephony/IccCardProxy;->broadcastRadioOffIntent()V

    goto :goto_0

    .line 245
    :sswitch_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mRadioOn:Z

    .line 246
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mInitialized:Z

    if-nez v0, :cond_0

    .line 247
    invoke-direct {p0}, Lcom/android/internal/telephony/IccCardProxy;->updateQuietMode()V

    goto :goto_0

    .line 251
    :sswitch_2
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 252
    invoke-direct {p0}, Lcom/android/internal/telephony/IccCardProxy;->updateIccAvailability()V

    goto :goto_0

    .line 256
    :sswitch_3
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mRecoveryRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto :goto_0

    .line 259
    :sswitch_4
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 260
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto :goto_0

    .line 263
    :sswitch_5
    invoke-direct {p0}, Lcom/android/internal/telephony/IccCardProxy;->processLockedState()V

    goto :goto_0

    .line 266
    :sswitch_6
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto :goto_0

    .line 269
    :sswitch_7
    const-string v0, "LOADED"

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const-string v0, "LOADED"

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedExtendIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 273
    :sswitch_8
    const-string v0, "IMSI"

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const-string v0, "IMSI"

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedExtendIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 277
    :sswitch_9
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 278
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto :goto_0

    .line 281
    :sswitch_a
    invoke-direct {p0}, Lcom/android/internal/telephony/IccCardProxy;->updateQuietMode()V

    goto :goto_0

    .line 235
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xb -> :sswitch_a
        0x64 -> :sswitch_3
    .end sparse-switch
.end method

.method public hasIccCard()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 835
    iget-object v5, p0, Lcom/android/internal/telephony/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 836
    const/4 v1, 0x0

    .line 837
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    const/4 v0, 0x0

    .line 839
    .local v0, isSimInsert:Z
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v6, p0, Lcom/android/internal/telephony/IccCardProxy;->mSimId:I

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 843
    if-nez v1, :cond_0

    move v0, v4

    .line 844
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hasIccCard(): isSimInsert =  "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccCardProxy;->log(Ljava/lang/String;)V

    .line 845
    if-eqz v0, :cond_1

    .line 846
    monitor-exit v5

    move v2, v3

    .line 852
    :goto_1
    return v2

    .line 843
    :cond_0
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->isSimInsert()Z

    move-result v0

    goto :goto_0

    .line 849
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    invoke-virtual {v2}, Lcom/android/internal/telephony/UiccCard;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v2

    sget-object v6, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/IccCardStatus$CardState;

    if-eq v2, v6, :cond_2

    .line 850
    monitor-exit v5

    move v2, v3

    goto :goto_1

    .line 852
    :cond_2
    monitor-exit v5

    move v2, v4

    goto :goto_1

    .line 853
    :catchall_0
    move-exception v2

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public iccGetATR(Landroid/os/Message;)V
    .locals 2
    .parameter "onComplete"

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCard;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/IccCardStatus$CardState;

    if-eq v0, v1, :cond_0

    .line 1002
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/UiccCard;->iccGetATR(Landroid/os/Message;)V

    .line 1004
    :cond_0
    return-void
.end method

.method public isApplicationOnIcc(Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;)Z
    .locals 3
    .parameter "type"

    .prologue
    .line 827
    iget-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 828
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/UiccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;)Z

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 829
    .local v0, retValue:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    monitor-exit v2

    return v1

    .line 828
    .end local v0           #retValue:Ljava/lang/Boolean;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 830
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isFDNExist()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 931
    iget-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-nez v2, :cond_0

    .line 932
    const-string v2, "isFDNExist mIccRecords == null"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccCardProxy;->log(Ljava/lang/String;)V

    .line 945
    :goto_0
    return v1

    .line 936
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccRecords;->getUsimServiceTable()Lcom/android/internal/telephony/gsm/UsimServiceTable;

    move-result-object v0

    .line 937
    .local v0, ust:Lcom/android/internal/telephony/gsm/UsimServiceTable;
    if-eqz v0, :cond_1

    sget-object v2, Lcom/android/internal/telephony/gsm/UsimServiceTable$UsimService;->FDN:Lcom/android/internal/telephony/gsm/UsimServiceTable$UsimService;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/UsimServiceTable;->isAvailable(Lcom/android/internal/telephony/gsm/UsimServiceTable$UsimService;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 939
    const-string v1, "isFDNExist return true"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccCardProxy;->log(Ljava/lang/String;)V

    .line 940
    const/4 v1, 0x1

    goto :goto_0

    .line 944
    :cond_1
    const-string v2, "isFDNExist return false"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccCardProxy;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isPhbReady()Z
    .locals 3

    .prologue
    .line 909
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardProxy;->getIccRecords()Lcom/android/internal/telephony/IccRecords;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 910
    .local v0, isPhbReady:Z
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPhbReady() isPhbReady = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_1

    const-string v1, "true"

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccCardProxy;->log(Ljava/lang/String;)V

    .line 911
    return v0

    .line 909
    .end local v0           #isPhbReady:Z
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardProxy;->getIccRecords()Lcom/android/internal/telephony/IccRecords;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccRecords;->isPhbReady()Z

    move-result v0

    goto :goto_0

    .line 910
    .restart local v0       #isPhbReady:Z
    :cond_1
    const-string v1, "false"

    goto :goto_1
.end method

.method public openLogicalChannel(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "AID"
    .parameter "onComplete"

    .prologue
    .line 975
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCard;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/IccCardStatus$CardState;

    if-eq v0, v1, :cond_0

    .line 976
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/UiccCard;->openLogicalChannel(Ljava/lang/String;Landroid/os/Message;)V

    .line 978
    :cond_0
    return-void
.end method

.method public openLogicalChannelWithSw(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "AID"
    .parameter "onComplete"

    .prologue
    .line 1006
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCard;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/IccCardStatus$CardState;

    if-eq v0, v1, :cond_0

    .line 1007
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/UiccCard;->iccOpenChannelWithSw(Ljava/lang/String;Landroid/os/Message;)V

    .line 1009
    :cond_0
    return-void
.end method

.method public registerForAbsent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 590
    iget-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 591
    :try_start_0
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 593
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 595
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardProxy;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v1, v3, :cond_0

    .line 596
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 598
    :cond_0
    monitor-exit v2

    .line 599
    return-void

    .line 598
    .end local v0           #r:Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForLocked(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 654
    iget-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 655
    :try_start_0
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 657
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 659
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardProxy;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardConstants$State;->isPinLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 660
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 662
    :cond_0
    monitor-exit v2

    .line 663
    return-void

    .line 662
    .end local v0           #r:Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForNetworkLocked(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 631
    iget-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 632
    :try_start_0
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 634
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 636
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardProxy;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v1, v3, :cond_0

    .line 637
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 639
    :cond_0
    monitor-exit v2

    .line 640
    return-void

    .line 639
    .end local v0           #r:Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForRecovery(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 609
    iget-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 610
    :try_start_0
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 612
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mRecoveryRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 614
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardProxy;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v1, v3, :cond_0

    .line 615
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 617
    :cond_0
    monitor-exit v2

    .line 618
    return-void

    .line 617
    .end local v0           #r:Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public repollIccStateForModemSmlChangeFeatrue(Z)V
    .locals 2
    .parameter "needIntent"

    .prologue
    .line 951
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "repollIccStateForModemSmlChangeFeatrue, needIntent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCardProxy;->log(Ljava/lang/String;)V

    .line 952
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 953
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->repollIccStateForModemSmlChangeFeatrue(Z)V

    .line 954
    monitor-exit v1

    .line 955
    return-void

    .line 954
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setIccFdnEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "enabled"
    .parameter "password"
    .parameter "onComplete"

    .prologue
    .line 775
    iget-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 776
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_1

    .line 777
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/UiccCardApplication;->setIccFdnEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    .line 784
    :cond_0
    monitor-exit v2

    .line 785
    :goto_0
    return-void

    .line 778
    :cond_1
    if-eqz p3, :cond_0

    .line 779
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 780
    .local v0, e:Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 781
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 782
    monitor-exit v2

    goto :goto_0

    .line 784
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "enabled"
    .parameter "password"
    .parameter "onComplete"

    .prologue
    .line 761
    iget-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 762
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_1

    .line 763
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/UiccCardApplication;->setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    .line 770
    :cond_0
    monitor-exit v2

    .line 771
    :goto_0
    return-void

    .line 764
    :cond_1
    if-eqz p3, :cond_0

    .line 765
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 766
    .local v0, e:Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 767
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 768
    monitor-exit v2

    goto :goto_0

    .line 770
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setIccNetworkLockEnabled(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 11
    .parameter "category"
    .parameter "lockop"
    .parameter "password"
    .parameter "data_imsi"
    .parameter "gid1"
    .parameter "gid2"
    .parameter "onComplete"

    .prologue
    .line 883
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetIccNetworkEnabled(): category = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " lockop = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " password = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " data_imsi = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " gid1 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " gid2 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccCardProxy;->log(Ljava/lang/String;)V

    .line 886
    iget-object v10, p0, Lcom/android/internal/telephony/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 887
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_1

    .line 888
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/telephony/UiccCardApplication;->setIccNetworkLockEnabled(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 895
    :cond_0
    monitor-exit v10

    .line 896
    :goto_0
    return-void

    .line 889
    :cond_1
    if-eqz p7, :cond_0

    .line 890
    new-instance v9, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v9, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 891
    .local v9, e:Ljava/lang/Exception;
    invoke-static/range {p7 .. p7}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v9, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 892
    invoke-virtual/range {p7 .. p7}, Landroid/os/Message;->sendToTarget()V

    .line 893
    monitor-exit v10

    goto :goto_0

    .line 895
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setVoiceRadioTech(I)V
    .locals 3
    .parameter "radioTech"

    .prologue
    .line 167
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 169
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting radio tech "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCardProxy;->log(Ljava/lang/String;)V

    .line 171
    invoke-static {p1}, Landroid/telephony/ServiceState;->isGsm(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mCurrentAppType:I

    .line 176
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/telephony/IccCardProxy;->updateQuietMode()V

    .line 177
    monitor-exit v1

    .line 178
    return-void

    .line 174
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mCurrentAppType:I

    goto :goto_0

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "pin"
    .parameter "onComplete"

    .prologue
    .line 730
    iget-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 731
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_1

    .line 732
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/UiccCardApplication;->supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V

    .line 739
    :cond_0
    monitor-exit v2

    .line 740
    :goto_0
    return-void

    .line 733
    :cond_1
    if-eqz p2, :cond_0

    .line 734
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "CommandsInterface is not set."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 735
    .local v0, e:Ljava/lang/Exception;
    invoke-static {p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 736
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 737
    monitor-exit v2

    goto :goto_0

    .line 739
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public supplyPin(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "pin"
    .parameter "onComplete"

    .prologue
    .line 674
    iget-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 675
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_1

    .line 676
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/UiccCardApplication;->supplyPin(Ljava/lang/String;Landroid/os/Message;)V

    .line 683
    :cond_0
    monitor-exit v2

    .line 684
    :goto_0
    return-void

    .line 677
    :cond_1
    if-eqz p2, :cond_0

    .line 678
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 679
    .local v0, e:Ljava/lang/Exception;
    invoke-static {p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 680
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 681
    monitor-exit v2

    goto :goto_0

    .line 683
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public supplyPin2(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "pin2"
    .parameter "onComplete"

    .prologue
    .line 702
    iget-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 703
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_1

    .line 704
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/UiccCardApplication;->supplyPin2(Ljava/lang/String;Landroid/os/Message;)V

    .line 711
    :cond_0
    monitor-exit v2

    .line 712
    :goto_0
    return-void

    .line 705
    :cond_1
    if-eqz p2, :cond_0

    .line 706
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 707
    .local v0, e:Ljava/lang/Exception;
    invoke-static {p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 708
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 709
    monitor-exit v2

    goto :goto_0

    .line 711
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "puk"
    .parameter "newPin"
    .parameter "onComplete"

    .prologue
    .line 688
    iget-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 689
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_1

    .line 690
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/UiccCardApplication;->supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 697
    :cond_0
    monitor-exit v2

    .line 698
    :goto_0
    return-void

    .line 691
    :cond_1
    if-eqz p3, :cond_0

    .line 692
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 693
    .local v0, e:Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 694
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 695
    monitor-exit v2

    goto :goto_0

    .line 697
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "puk2"
    .parameter "newPin2"
    .parameter "onComplete"

    .prologue
    .line 716
    iget-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 717
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_1

    .line 718
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/UiccCardApplication;->supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 725
    :cond_0
    monitor-exit v2

    .line 726
    :goto_0
    return-void

    .line 719
    :cond_1
    if-eqz p3, :cond_0

    .line 720
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 721
    .local v0, e:Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 722
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 723
    monitor-exit v2

    goto :goto_0

    .line 725
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterForAbsent(Landroid/os/Handler;)V
    .locals 2
    .parameter "h"

    .prologue
    .line 603
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 604
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 605
    monitor-exit v1

    .line 606
    return-void

    .line 605
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterForLocked(Landroid/os/Handler;)V
    .locals 2
    .parameter "h"

    .prologue
    .line 667
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 668
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 669
    monitor-exit v1

    .line 670
    return-void

    .line 669
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterForNetworkLocked(Landroid/os/Handler;)V
    .locals 2
    .parameter "h"

    .prologue
    .line 644
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 645
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 646
    monitor-exit v1

    .line 647
    return-void

    .line 646
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterForRecovery(Landroid/os/Handler;)V
    .locals 2
    .parameter "h"

    .prologue
    .line 621
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 622
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mRecoveryRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 623
    monitor-exit v1

    .line 624
    return-void

    .line 623
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
