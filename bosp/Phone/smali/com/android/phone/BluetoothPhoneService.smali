.class public Lcom/android/phone/BluetoothPhoneService;
.super Landroid/app/Service;
.source "BluetoothPhoneService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/BluetoothPhoneService$4;,
        Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;,
        Lcom/android/phone/BluetoothPhoneService$CallNumber;,
        Lcom/android/phone/BluetoothPhoneService$CallInfo;
    }
.end annotation


# static fields
.field static final CALL_STATE_ACTIVE:I = 0x0

.field static final CALL_STATE_ALERTING:I = 0x3

.field static final CALL_STATE_DIALING:I = 0x2

.field static final CALL_STATE_HELD:I = 0x1

.field static final CALL_STATE_IDLE:I = 0x6

.field static final CALL_STATE_INCOMING:I = 0x4

.field static final CALL_STATE_WAITING:I = 0x5

.field private static final CDMA_MAX_CONNECTIONS:I = 0x2

.field private static final CDMA_SET_SECOND_CALL_STATE:I = 0x7

.field private static final CDMA_SWAP_SECOND_CALL_STATE:I = 0x6

.field static final CHLD_TYPE_ADDHELDTOCONF:I = 0x3

.field static final CHLD_TYPE_HOLDACTIVE_ACCEPTHELD:I = 0x2

.field static final CHLD_TYPE_RELEASEACTIVE_ACCEPTHELD:I = 0x1

.field static final CHLD_TYPE_RELEASEHELD:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final GEMINI_SIM_NUM:Ljava/lang/String; = "persist.gemini.sim_num"

.field private static final GSM_MAX_CONNECTIONS:I = 0x6

.field private static final LIST_CURRENT_CALLS:I = 0x4

.field private static final MODIFY_PHONE_STATE:Ljava/lang/String; = "android.permission.MODIFY_PHONE_STATE"

.field private static final PHONE_CDMA_CALL_WAITING:I = 0x3

.field private static final PHONE_DISCONNECT:I = 0x8

.field private static final PHONE_INCOMING_RING:I = 0x9

.field private static final PHONE_VT_RING_INFO:I = 0xd

.field private static final PRECISE_CALL_STATE_CHANGED:I = 0x2

.field private static final QUERY_PHONE_STATE:I = 0x5

.field private static final RESTRICT_MULTITLAKS:I = 0x10

.field private static final SERVICE_STATE_CHANGED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BluetoothPhoneService"

.field private static final VDBG:Z = true

.field private static final iTel:Lcom/android/internal/telephony/ITelephony;


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field mBgndEarliestConnectionTime:J

.field private final mBinder:Landroid/bluetooth/IBluetoothHeadsetPhone$Stub;

.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mBtDTUtil:Lcom/android/phone/BluetoothDualTalkUtils;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mCallStates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/telephony/Call;",
            "Lcom/android/internal/telephony/Call$State;",
            ">;"
        }
    .end annotation
.end field

.field private mCdmaCallsSwapped:Z

.field private mCdmaIsSecondCallActive:Z

.field private mCdmaPhoneState:Lcom/android/phone/CdmaPhoneCallState;

.field mCdmaThreeWayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

.field private mClccTimestamps:[J

.field private mClccUsed:[Z

.field private mForegroundCallState:Lcom/android/internal/telephony/Call$State;

.field private mHandler:Landroid/os/Handler;

.field private mHashCdmaHoldTime:Ljava/util/HashMap;

.field private mIsLimitDTCall:Z

.field private mMCM:Lcom/android/internal/telephony/gemini/MTKCallManager;

.field mNumActive:I

.field mNumHeld:I

.field mOldNumActive:I

.field mOldNumHeld:I

.field private mPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPrevInCallPhone:Lcom/android/internal/telephony/Phone;

.field private mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

.field private mRingingCallState:Lcom/android/internal/telephony/Call$State;

.field private mRoam:Z

.field private mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 84
    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/phone/BluetoothPhoneService;->DBG:Z

    .line 98
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    sput-object v0, Lcom/android/phone/BluetoothPhoneService;->iTel:Lcom/android/internal/telephony/ITelephony;

    return-void

    :cond_0
    move v0, v1

    .line 84
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 82
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 108
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 109
    sget-object v0, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->IDLE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    iput-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mCdmaThreeWayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    .line 124
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/phone/BluetoothPhoneService;->mBgndEarliestConnectionTime:J

    .line 126
    iput-boolean v2, p0, Lcom/android/phone/BluetoothPhoneService;->mRoam:Z

    .line 133
    iput-boolean v2, p0, Lcom/android/phone/BluetoothPhoneService;->mCdmaIsSecondCallActive:Z

    .line 134
    iput-boolean v2, p0, Lcom/android/phone/BluetoothPhoneService;->mCdmaCallsSwapped:Z

    .line 143
    iput-object v3, p0, Lcom/android/phone/BluetoothPhoneService;->mHashCdmaHoldTime:Ljava/util/HashMap;

    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/BluetoothPhoneService;->mIsLimitDTCall:Z

    .line 145
    iput-object v3, p0, Lcom/android/phone/BluetoothPhoneService;->mPrevInCallPhone:Lcom/android/internal/telephony/Phone;

    .line 146
    iput-object v3, p0, Lcom/android/phone/BluetoothPhoneService;->mBtDTUtil:Lcom/android/phone/BluetoothDualTalkUtils;

    .line 150
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mCallStates:Ljava/util/HashMap;

    .line 266
    new-instance v0, Lcom/android/phone/BluetoothPhoneService$1;

    invoke-direct {v0, p0}, Lcom/android/phone/BluetoothPhoneService$1;-><init>(Lcom/android/phone/BluetoothPhoneService;)V

    iput-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    .line 1496
    new-instance v0, Lcom/android/phone/BluetoothPhoneService$2;

    invoke-direct {v0, p0}, Lcom/android/phone/BluetoothPhoneService$2;-><init>(Lcom/android/phone/BluetoothPhoneService;)V

    iput-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 2758
    new-instance v0, Lcom/android/phone/BluetoothPhoneService$3;

    invoke-direct {v0, p0}, Lcom/android/phone/BluetoothPhoneService$3;-><init>(Lcom/android/phone/BluetoothPhoneService;)V

    iput-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mBinder:Landroid/bluetooth/IBluetoothHeadsetPhone$Stub;

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/BluetoothPhoneService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/phone/BluetoothPhoneService;->getDefaultSIMInternal()I

    move-result v0

    return v0
.end method

.method static synthetic access$1902(Lcom/android/phone/BluetoothPhoneService;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/phone/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/phone/BluetoothPhoneService;Landroid/telephony/ServiceState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothPhoneService;->updateServiceState(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/phone/BluetoothPhoneService;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothPhoneService;->handleNormalChld(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/gemini/MTKCallManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mMCM:Lcom/android/internal/telephony/gemini/MTKCallManager;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/phone/BluetoothPhoneService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/phone/BluetoothPhoneService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/phone/BluetoothPhoneService;->updateBtPhoneStateAfterRadioTechnologyChange()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/BluetoothPhoneService;Lcom/android/internal/telephony/Connection;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothPhoneService;->handlePreciseCallStateChange(Lcom/android/internal/telephony/Connection;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/BluetoothPhoneService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/phone/BluetoothPhoneService;->handleListCurrentCalls()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/BluetoothPhoneService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/phone/BluetoothPhoneService;->handleQueryPhoneState()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/BluetoothPhoneService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/phone/BluetoothPhoneService;->handleCdmaSwapSecondCallState()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/BluetoothPhoneService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothPhoneService;->handleCdmaSetSecondCallState(Z)V

    return-void
.end method

.method static synthetic access$800(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-static {p0}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    return-void
.end method

.method private canSwapInDiffSim()Z
    .locals 8

    .prologue
    .line 432
    const-string v6, "[canSwapInDiffSim]"

    invoke-static {v6}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 433
    const/4 v0, 0x0

    .line 435
    .local v0, bCanSwapInDiffSim:Z
    const/4 v5, 0x0

    .line 437
    .local v5, phone:Lcom/android/internal/telephony/Phone;
    invoke-virtual {p0}, Lcom/android/phone/BluetoothPhoneService;->dumpCurrentCallStatus()V

    .line 440
    const/4 v4, 0x0

    .line 441
    .local v4, listCall:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    iget-object v6, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getForegroundCalls()Ljava/util/List;

    move-result-object v4

    .line 442
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "canSwapInDiffSim: getForegroundCalls "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 443
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Call;

    .line 444
    .local v2, c:Lcom/android/internal/telephony/Call;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "canSwapInDiffSim: getForegroundCalls Call.State.ACTIVE="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " c.getState()="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 445
    const-string v6, "canSwapInDiffSim"

    invoke-virtual {p0, v6, v2}, Lcom/android/phone/BluetoothPhoneService;->dumpCallDetails(Ljava/lang/String;Lcom/android/internal/telephony/Call;)V

    .line 446
    sget-object v6, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    if-ne v6, v7, :cond_0

    .line 447
    if-nez v5, :cond_1

    .line 448
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    .line 449
    const-string v6, "canSwapInDiffSim: TalkState IDLE --> SINGLE"

    invoke-static {v6}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 450
    const-string v6, "getCurrentTalkState 1st call"

    invoke-virtual {p0, v6, v2}, Lcom/android/phone/BluetoothPhoneService;->dumpCallDetails(Ljava/lang/String;Lcom/android/internal/telephony/Call;)V

    goto :goto_0

    .line 451
    :cond_1
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    if-eq v5, v6, :cond_0

    .line 452
    const-string v6, "canSwapInDiffSim: TalkState SINGLE --> MULTI"

    invoke-static {v6}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 453
    const-string v6, "canSwapInDiffSim 2nd call"

    invoke-virtual {p0, v6, v2}, Lcom/android/phone/BluetoothPhoneService;->dumpCallDetails(Ljava/lang/String;Lcom/android/internal/telephony/Call;)V

    .line 454
    const/4 v0, 0x1

    .line 460
    .end local v2           #c:Lcom/android/internal/telephony/Call;
    :cond_2
    if-eqz v0, :cond_3

    .line 461
    const-string v6, "canSwapInDiffSim: return directly"

    invoke-static {v6}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 462
    const-string v6, "[[canSwapInDiffSim]]"

    invoke-static {v6}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    move v1, v0

    .line 486
    .end local v0           #bCanSwapInDiffSim:Z
    .local v1, bCanSwapInDiffSim:Z
    :goto_1
    return v1

    .line 466
    .end local v1           #bCanSwapInDiffSim:Z
    .restart local v0       #bCanSwapInDiffSim:Z
    :cond_3
    iget-object v6, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getBackgroundCalls()Ljava/util/List;

    move-result-object v4

    .line 467
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "canSwapInDiffSim: getBackgroundCalls "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 468
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Call;

    .line 469
    .restart local v2       #c:Lcom/android/internal/telephony/Call;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "canSwapInDiffSim: getBackgroundCalls Call.State.ACTIVE="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "c.getState()="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 470
    const-string v6, "canSwapInDiffSim"

    invoke-virtual {p0, v6, v2}, Lcom/android/phone/BluetoothPhoneService;->dumpCallDetails(Ljava/lang/String;Lcom/android/internal/telephony/Call;)V

    .line 471
    sget-object v6, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    if-ne v6, v7, :cond_4

    .line 472
    if-nez v5, :cond_5

    .line 473
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    .line 474
    const-string v6, "canSwapInDiffSim: TalkState IDLE --> SINGLE"

    invoke-static {v6}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 475
    const-string v6, "getCurrentTalkState 1st call"

    invoke-virtual {p0, v6, v2}, Lcom/android/phone/BluetoothPhoneService;->dumpCallDetails(Ljava/lang/String;Lcom/android/internal/telephony/Call;)V

    goto :goto_2

    .line 476
    :cond_5
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    if-eq v5, v6, :cond_4

    .line 477
    const-string v6, "canSwapInDiffSim: TalkState SINGLE --> MULTI"

    invoke-static {v6}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 478
    const-string v6, "canSwapInDiffSim 2nd call"

    invoke-virtual {p0, v6, v2}, Lcom/android/phone/BluetoothPhoneService;->dumpCallDetails(Ljava/lang/String;Lcom/android/internal/telephony/Call;)V

    .line 479
    const/4 v0, 0x1

    .line 484
    .end local v2           #c:Lcom/android/internal/telephony/Call;
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "canSwapInDiffSim: bCanSwapInDiffSim="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 485
    const-string v6, "[[canSwapInDiffSim]]"

    invoke-static {v6}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    move v1, v0

    .line 486
    .end local v0           #bCanSwapInDiffSim:Z
    .restart local v1       #bCanSwapInDiffSim:Z
    goto/16 :goto_1
.end method

.method private checkUnreasonableStates()Z
    .locals 8

    .prologue
    .line 819
    const-string v6, "[checkUnreasonableStates]"

    invoke-static {v6}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 821
    iget-object v6, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getForegroundCalls()Ljava/util/List;

    move-result-object v3

    .line 823
    .local v3, fgCalls:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    const/4 v0, 0x0

    .line 826
    .local v0, active_call:Lcom/android/internal/telephony/Call;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Call;

    .line 827
    .local v1, c1:Lcom/android/internal/telephony/Call;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v6, v7, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v6, v7, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v6, v7, :cond_0

    .line 828
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Call;

    .line 829
    .local v2, c2:Lcom/android/internal/telephony/Call;
    if-eq v2, v1, :cond_2

    .line 830
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v6, v7, :cond_3

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v6, v7, :cond_3

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v6, v7, :cond_2

    .line 831
    :cond_3
    const-string v6, "checkUnreasonableStates : two forground calls exist at the same time"

    invoke-static {v6}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 832
    const/4 v6, 0x1

    .line 841
    .end local v1           #c1:Lcom/android/internal/telephony/Call;
    .end local v2           #c2:Lcom/android/internal/telephony/Call;
    .end local v5           #i$:Ljava/util/Iterator;
    :goto_0
    return v6

    .line 840
    :cond_4
    const-string v6, "[[checkUnreasonableStates]]"

    invoke-static {v6}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 841
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private chooseTheEarlierHoldCall(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Call;
    .locals 6
    .parameter "c1"
    .parameter "c2"

    .prologue
    const/4 v5, 0x2

    .line 413
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v0

    .line 414
    .local v0, c1Time:J
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v2

    .line 416
    .local v2, c2Time:J
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    if-ne v5, v4, :cond_0

    .line 417
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothPhoneService;->getCdmaHoldTime(Lcom/android/internal/telephony/Call;)J

    move-result-wide v0

    .line 420
    :cond_0
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    if-ne v5, v4, :cond_1

    .line 421
    invoke-direct {p0, p2}, Lcom/android/phone/BluetoothPhoneService;->getCdmaHoldTime(Lcom/android/internal/telephony/Call;)J

    move-result-wide v2

    .line 424
    :cond_1
    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    .end local p2
    :goto_0
    return-object p2

    .restart local p2
    :cond_2
    move-object p2, p1

    goto :goto_0
.end method

.method static convertCallState(Lcom/android/internal/telephony/Call$State;)I
    .locals 4
    .parameter "callState"

    .prologue
    const/4 v0, 0x6

    .line 2906
    sget-object v1, Lcom/android/phone/BluetoothPhoneService$4;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 2924
    const-string v1, "BluetoothPhoneService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad call state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2925
    :goto_0
    :pswitch_0
    return v0

    .line 2912
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2914
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 2916
    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    .line 2918
    :pswitch_4
    const/4 v0, 0x3

    goto :goto_0

    .line 2920
    :pswitch_5
    const/4 v0, 0x4

    goto :goto_0

    .line 2922
    :pswitch_6
    const/4 v0, 0x5

    goto :goto_0

    .line 2906
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static convertCallState(Lcom/android/internal/telephony/Call$State;Lcom/android/internal/telephony/Call$State;)I
    .locals 1
    .parameter "ringingState"
    .parameter "foregroundState"

    .prologue
    .line 2894
    sget-object v0, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne p0, v0, :cond_1

    .line 2896
    :cond_0
    const/4 v0, 0x4

    .line 2902
    :goto_0
    return v0

    .line 2897
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne p1, v0, :cond_2

    .line 2898
    const/4 v0, 0x2

    goto :goto_0

    .line 2899
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne p1, v0, :cond_3

    .line 2900
    const/4 v0, 0x3

    goto :goto_0

    .line 2902
    :cond_3
    const/4 v0, 0x6

    goto :goto_0
.end method

.method private evdoAnalyzeDTScenario()Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;
    .locals 10

    .prologue
    .line 1980
    const-string v9, "evdoAnalyzeDTScenario"

    invoke-static {v9}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1982
    iget-object v9, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v9}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    .line 1983
    .local v7, ringingCall:Lcom/android/internal/telephony/Call;
    iget-object v9, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v9}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 1984
    .local v0, backgroundCall:Lcom/android/internal/telephony/Call;
    iget-object v9, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v9}, Lcom/android/internal/telephony/CallManager;->getForegroundCalls()Ljava/util/List;

    move-result-object v3

    .line 1986
    .local v3, fCalls:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    const/4 v6, 0x0

    .line 1987
    .local v6, gsmI:Z
    const/4 v4, 0x0

    .line 1988
    .local v4, gsmA:Z
    const/4 v5, 0x0

    .line 1989
    .local v5, gsmH:Z
    const/4 v2, 0x0

    .line 1990
    .local v2, cdmaI:Z
    const/4 v1, 0x0

    .line 1994
    .local v1, cdmaA:Z
    sget-object v8, Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;->DT_SCENARIO_N:Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;

    .line 1998
    .local v8, scenario:Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;
    const-string v9, "[Err] evdoAnalyzeDTScenario EVDO dualTalk not support"

    invoke-static {v9}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1999
    return-object v8
.end method

.method private evdoDTChldHandler0(Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;)Z
    .locals 11
    .parameter "scenario"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 2145
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "evdoDTChldHandler0 : scenario = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2149
    iget-object v9, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v9}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    .line 2150
    .local v6, ringingCall:Lcom/android/internal/telephony/Call;
    iget-object v9, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v9}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 2151
    .local v1, backgroundCall:Lcom/android/internal/telephony/Call;
    iget-object v9, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v9}, Lcom/android/internal/telephony/CallManager;->getForegroundCalls()Ljava/util/List;

    move-result-object v3

    .line 2153
    .local v3, fCalls:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    sget-object v9, Lcom/android/phone/BluetoothPhoneService$4;->$SwitchMap$com$android$phone$BluetoothPhoneService$DT_EVDO_SCENARIO:[I

    invoke-virtual {p1}, Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 2236
    const-string v7, "CHLD 0 : wrong scenario"

    invoke-static {v7}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    move v7, v8

    .line 2237
    :goto_0
    return v7

    .line 2166
    :pswitch_0
    const-string v9, "CHLD 0 : hangup incoming call 1"

    invoke-static {v9}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2168
    :try_start_0
    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2169
    :catch_0
    move-exception v2

    .line 2170
    .local v2, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v7, "CHLD 0 : catch CallStateException"

    invoke-static {v7}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    move v7, v8

    .line 2171
    goto :goto_0

    .line 2182
    .end local v2           #ex:Lcom/android/internal/telephony/CallStateException;
    :pswitch_1
    const-string v9, "CHLD 0 : hangup incoming call 2"

    invoke-static {v9}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2185
    :try_start_1
    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->hangup()V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2186
    :catch_1
    move-exception v2

    .line 2187
    .restart local v2       #ex:Lcom/android/internal/telephony/CallStateException;
    const-string v7, "CHLD 0 : catch CallStateException"

    invoke-static {v7}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    move v7, v8

    .line 2188
    goto :goto_0

    .line 2196
    .end local v2           #ex:Lcom/android/internal/telephony/CallStateException;
    :pswitch_2
    const-string v7, "CHLD 0 : N/A"

    invoke-static {v7}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    move v7, v8

    .line 2197
    goto :goto_0

    .line 2202
    :pswitch_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 2203
    .local v0, aCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v9, v10, :cond_0

    .line 2204
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    .line 2205
    .local v5, phoneType:I
    const/4 v9, 0x2

    if-ne v5, v9, :cond_0

    .line 2206
    const-string v9, "CHLD 0 : hangup CDMA Active Call (hold call or mute indeed)"

    invoke-static {v9}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2208
    :try_start_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_2
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 2209
    :catch_2
    move-exception v2

    .line 2210
    .restart local v2       #ex:Lcom/android/internal/telephony/CallStateException;
    const-string v7, "CHLD 0 : catch CallStateException"

    invoke-static {v7}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    move v7, v8

    .line 2211
    goto :goto_0

    .line 2217
    .end local v0           #aCall:Lcom/android/internal/telephony/Call;
    .end local v2           #ex:Lcom/android/internal/telephony/CallStateException;
    .end local v5           #phoneType:I
    :cond_1
    const-string v7, "CHLD 0 : N/A"

    invoke-static {v7}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    move v7, v8

    .line 2218
    goto :goto_0

    .line 2225
    .end local v4           #i$:Ljava/util/Iterator;
    :pswitch_4
    const-string v9, "CHLD 0 : hangup GSM Hold Call"

    invoke-static {v9}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2227
    :try_start_3
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_3
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 2228
    :catch_3
    move-exception v2

    .line 2229
    .restart local v2       #ex:Lcom/android/internal/telephony/CallStateException;
    const-string v7, "CHLD 0 : catch CallStateException"

    invoke-static {v7}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    move v7, v8

    .line 2230
    goto :goto_0

    .line 2153
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private evdoDTChldHandler1(Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;)Z
    .locals 13
    .parameter "scenario"

    .prologue
    const/4 v12, 0x7

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 2243
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "evdoDTChldHandler1 : scenario = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2247
    iget-object v10, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    .line 2248
    .local v7, ringingCall:Lcom/android/internal/telephony/Call;
    iget-object v10, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 2249
    .local v1, backgroundCall:Lcom/android/internal/telephony/Call;
    iget-object v10, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getForegroundCalls()Ljava/util/List;

    move-result-object v3

    .line 2251
    .local v3, fCalls:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    sget-object v10, Lcom/android/phone/BluetoothPhoneService$4;->$SwitchMap$com$android$phone$BluetoothPhoneService$DT_EVDO_SCENARIO:[I

    invoke-virtual {p1}, Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    .line 2403
    const-string v8, "CHLD 1 : wrong scenario"

    invoke-static {v8}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    move v8, v9

    .line 2404
    :cond_0
    :goto_0
    return v8

    .line 2258
    :pswitch_0
    const-string v9, "CHLD 1 : answer incoming call"

    invoke-static {v9}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2259
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v9

    iget-object v9, v9, Lcom/android/phone/PhoneApp;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v9}, Lcom/android/phone/PhoneInterfaceManager;->answerRingingCall()V

    .line 2261
    sget-object v9, Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;->DT_SCENARIO_N_IA:Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;

    if-ne p1, v9, :cond_0

    .line 2262
    iget-object v9, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v9, v12, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 2263
    .local v5, msg:Landroid/os/Message;
    iget-object v9, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 2272
    .end local v5           #msg:Landroid/os/Message;
    :pswitch_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 2273
    .local v0, aCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v10, v11, :cond_1

    .line 2274
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    .line 2275
    .local v6, phoneType:I
    const/4 v10, 0x2

    if-ne v6, v10, :cond_1

    .line 2276
    const-string v9, "CHLD 1 : hangup CDMA Active Call"

    invoke-static {v9}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2278
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    goto :goto_0

    .line 2283
    .end local v0           #aCall:Lcom/android/internal/telephony/Call;
    .end local v6           #phoneType:I
    :cond_2
    const-string v8, "CHLD 1 : N/A"

    invoke-static {v8}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    move v8, v9

    .line 2284
    goto :goto_0

    .line 2292
    .end local v4           #i$:Ljava/util/Iterator;
    :pswitch_2
    const-string v9, "CHLD 1 : answer ringing call and end active call"

    invoke-static {v9}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2293
    iget-object v9, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v9, v7}, Lcom/android/phone/PhoneUtils;->answerAndEndActive(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z

    goto :goto_0

    .line 2299
    :pswitch_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 2300
    .restart local v0       #aCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v10, v11, :cond_3

    .line 2301
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    .line 2302
    .restart local v6       #phoneType:I
    if-ne v6, v8, :cond_3

    .line 2303
    const-string v10, "CHLD 1 : hangup GSM Active Call"

    invoke-static {v10}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2305
    :try_start_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2306
    :catch_0
    move-exception v2

    .line 2307
    .local v2, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v8, "CHLD 1 : catch CallStateException"

    invoke-static {v8}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    move v8, v9

    .line 2308
    goto/16 :goto_0

    .line 2314
    .end local v0           #aCall:Lcom/android/internal/telephony/Call;
    .end local v2           #ex:Lcom/android/internal/telephony/CallStateException;
    .end local v6           #phoneType:I
    :cond_4
    const-string v8, "CHLD 1 : N/A"

    invoke-static {v8}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    move v8, v9

    .line 2315
    goto/16 :goto_0

    .line 2323
    .end local v4           #i$:Ljava/util/Iterator;
    :pswitch_4
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v9

    iget-object v9, v9, Lcom/android/phone/PhoneApp;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v9}, Lcom/android/phone/PhoneInterfaceManager;->answerRingingCall()V

    goto/16 :goto_0

    .line 2332
    :pswitch_5
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 2333
    .restart local v0       #aCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v10, v11, :cond_5

    .line 2334
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    .line 2335
    .restart local v6       #phoneType:I
    if-ne v6, v8, :cond_5

    .line 2336
    const-string v10, "CHLD 1 : hangup GSM Active Call and answer incoming call"

    invoke-static {v10}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2339
    :try_start_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2346
    sget-object v9, Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;->DT_SCENARIO_IA_H:Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;

    if-eq p1, v9, :cond_6

    .line 2347
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v9

    iget-object v9, v9, Lcom/android/phone/PhoneApp;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v9}, Lcom/android/phone/PhoneInterfaceManager;->answerRingingCall()V

    .line 2349
    :cond_6
    sget-object v9, Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;->DT_SCENARIO_A_IH:Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;

    if-ne p1, v9, :cond_0

    .line 2350
    iget-object v9, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v9, v12, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 2351
    .restart local v5       #msg:Landroid/os/Message;
    iget-object v9, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 2340
    .end local v5           #msg:Landroid/os/Message;
    :catch_1
    move-exception v2

    .line 2341
    .restart local v2       #ex:Lcom/android/internal/telephony/CallStateException;
    const-string v8, "CHLD 1 : catch CallStateException"

    invoke-static {v8}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    move v8, v9

    .line 2342
    goto/16 :goto_0

    .line 2357
    .end local v0           #aCall:Lcom/android/internal/telephony/Call;
    .end local v2           #ex:Lcom/android/internal/telephony/CallStateException;
    .end local v6           #phoneType:I
    :cond_7
    const-string v8, "CHLD 1 : N/A"

    invoke-static {v8}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    move v8, v9

    .line 2358
    goto/16 :goto_0

    .line 2364
    .end local v4           #i$:Ljava/util/Iterator;
    :pswitch_6
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 2365
    .restart local v0       #aCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v10, v11, :cond_8

    .line 2366
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    .line 2367
    .restart local v6       #phoneType:I
    if-ne v6, v8, :cond_8

    .line 2368
    const-string v9, "CHLD 1 : hangup GSM Active Call"

    invoke-static {v9}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2369
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupActiveCall(Lcom/android/internal/telephony/Call;)Z

    goto/16 :goto_0

    .line 2374
    .end local v0           #aCall:Lcom/android/internal/telephony/Call;
    .end local v6           #phoneType:I
    :cond_9
    const-string v8, "CHLD 1 : N/A"

    invoke-static {v8}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    move v8, v9

    .line 2375
    goto/16 :goto_0

    .line 2379
    .end local v4           #i$:Ljava/util/Iterator;
    :pswitch_7
    const-string v9, "CHLD 1 : switch GSM Hold call"

    invoke-static {v9}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2380
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_0

    .line 2386
    :pswitch_8
    const-string v10, "CHLD 1 : end GSM Hold call and answer incoming call"

    invoke-static {v10}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2389
    :try_start_2
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_2
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2395
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v9

    iget-object v9, v9, Lcom/android/phone/PhoneApp;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v9}, Lcom/android/phone/PhoneInterfaceManager;->answerRingingCall()V

    .line 2396
    iget-object v9, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v9, v12, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 2397
    .restart local v5       #msg:Landroid/os/Message;
    iget-object v9, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 2390
    .end local v5           #msg:Landroid/os/Message;
    :catch_2
    move-exception v2

    .line 2391
    .restart local v2       #ex:Lcom/android/internal/telephony/CallStateException;
    const-string v8, "CHLD 1 : catch CallStateException"

    invoke-static {v8}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    move v8, v9

    .line 2392
    goto/16 :goto_0

    .line 2251
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_5
        :pswitch_8
        :pswitch_1
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_1
        :pswitch_6
    .end packed-switch
.end method

.method private evdoDTChldHandler2(Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;)Z
    .locals 14
    .parameter "scenario"

    .prologue
    const/4 v13, 0x7

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 2410
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "evdoDTChldHandler2 : scenario ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2414
    iget-object v11, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    .line 2415
    .local v8, ringingCall:Lcom/android/internal/telephony/Call;
    iget-object v11, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 2416
    .local v1, backgroundCall:Lcom/android/internal/telephony/Call;
    iget-object v11, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    .line 2417
    .local v4, foregroundCall:Lcom/android/internal/telephony/Call;
    iget-object v11, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getForegroundCalls()Ljava/util/List;

    move-result-object v3

    .line 2419
    .local v3, fCalls:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    sget-object v11, Lcom/android/phone/BluetoothPhoneService$4;->$SwitchMap$com$android$phone$BluetoothPhoneService$DT_EVDO_SCENARIO:[I

    invoke-virtual {p1}, Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;->ordinal()I

    move-result v12

    aget v11, v11, v12

    packed-switch v11, :pswitch_data_0

    .line 2570
    const-string v9, "CHLD 1 : wrong scenario"

    invoke-static {v9}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    move v9, v10

    .line 2571
    :cond_0
    :goto_0
    return v9

    .line 2429
    :pswitch_0
    const-string v10, "CHLD 2 : answer incoming call"

    invoke-static {v10}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2430
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v10

    iget-object v10, v10, Lcom/android/phone/PhoneApp;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v10}, Lcom/android/phone/PhoneInterfaceManager;->answerRingingCall()V

    .line 2432
    sget-object v10, Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;->DT_SCENARIO_N_IA:Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;

    if-eq p1, v10, :cond_1

    sget-object v10, Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;->DT_SCENARIO_H_IA:Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;

    if-ne p1, v10, :cond_0

    .line 2433
    :cond_1
    iget-object v10, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v10, v13, v11}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 2434
    .local v6, msg:Landroid/os/Message;
    iget-object v10, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v10, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 2442
    .end local v6           #msg:Landroid/os/Message;
    :pswitch_1
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v11

    iget-object v11, v11, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v11}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v11

    sget-object v12, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v11, v12, :cond_2

    .line 2443
    const-string v10, "CHLD 2 : swap CDMA AH for it is in CONF_CALL state"

    invoke-static {v10}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2444
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    .line 2446
    iget-object v10, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x6

    invoke-static {v10, v11}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v6

    .line 2447
    .restart local v6       #msg:Landroid/os/Message;
    iget-object v10, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v10, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 2451
    .end local v6           #msg:Landroid/os/Message;
    :cond_2
    const-string v9, "CHLD 2 : N/A"

    invoke-static {v9}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    move v9, v10

    .line 2452
    goto :goto_0

    .line 2457
    :pswitch_2
    const-string v11, "CHLD 2 : switch GSM Active call to Hold"

    invoke-static {v11}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2459
    :try_start_0
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v11

    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2460
    :catch_0
    move-exception v2

    .line 2461
    .local v2, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v9, "CHLD 2 : catch CallStateException"

    invoke-static {v9}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    move v9, v10

    .line 2462
    goto :goto_0

    .line 2470
    .end local v2           #ex:Lcom/android/internal/telephony/CallStateException;
    :pswitch_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 2471
    .local v0, aCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v11, v12, :cond_3

    .line 2472
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v11

    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v7

    .line 2473
    .local v7, phoneType:I
    if-ne v7, v9, :cond_3

    .line 2474
    const-string v11, "CHLD 2 : switch GSM Active call to Hold and answer incoming call"

    invoke-static {v11}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2476
    :try_start_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v11

    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2481
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v10

    iget-object v10, v10, Lcom/android/phone/PhoneApp;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v10}, Lcom/android/phone/PhoneInterfaceManager;->answerRingingCall()V

    .line 2482
    sget-object v10, Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;->DT_SCENARIO_A_IH:Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;

    if-ne p1, v10, :cond_0

    .line 2483
    iget-object v10, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v10, v13, v11}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 2484
    .restart local v6       #msg:Landroid/os/Message;
    iget-object v10, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v10, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 2477
    .end local v6           #msg:Landroid/os/Message;
    :catch_1
    move-exception v2

    .line 2478
    .restart local v2       #ex:Lcom/android/internal/telephony/CallStateException;
    const-string v9, "CHLD 2 : catch CallStateException"

    invoke-static {v9}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    move v9, v10

    .line 2479
    goto/16 :goto_0

    .line 2490
    .end local v0           #aCall:Lcom/android/internal/telephony/Call;
    .end local v2           #ex:Lcom/android/internal/telephony/CallStateException;
    .end local v7           #phoneType:I
    :cond_4
    const-string v9, "CHLD 2 : N/A"

    invoke-static {v9}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    move v9, v10

    .line 2491
    goto/16 :goto_0

    .line 2496
    .end local v5           #i$:Ljava/util/Iterator;
    :pswitch_4
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5       #i$:Ljava/util/Iterator;
    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 2497
    .restart local v0       #aCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v11, v12, :cond_5

    .line 2498
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v11

    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v7

    .line 2499
    .restart local v7       #phoneType:I
    if-ne v7, v9, :cond_5

    .line 2500
    const-string v11, "CHLD 2 : switch GSM Active call to Hold"

    invoke-static {v11}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2502
    :try_start_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v11

    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V
    :try_end_2
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 2503
    :catch_2
    move-exception v2

    .line 2504
    .restart local v2       #ex:Lcom/android/internal/telephony/CallStateException;
    const-string v9, "CHLD 2 : catch CallStateException"

    invoke-static {v9}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    move v9, v10

    .line 2505
    goto/16 :goto_0

    .line 2511
    .end local v0           #aCall:Lcom/android/internal/telephony/Call;
    .end local v2           #ex:Lcom/android/internal/telephony/CallStateException;
    .end local v7           #phoneType:I
    :cond_6
    const-string v9, "CHLD 2 : N/A"

    invoke-static {v9}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    move v9, v10

    .line 2512
    goto/16 :goto_0

    .line 2517
    .end local v5           #i$:Ljava/util/Iterator;
    :pswitch_5
    const-string v10, "CHLD 2 : switch GSM Hold call to Active "

    invoke-static {v10}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2518
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_0

    .line 2525
    :pswitch_6
    const-string v10, "CHLD 2 : swap Hold and Active calls "

    invoke-static {v10}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2526
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_0

    .line 2533
    :pswitch_7
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5       #i$:Ljava/util/Iterator;
    :cond_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 2534
    .restart local v0       #aCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v11, v12, :cond_7

    .line 2535
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v11

    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v7

    .line 2536
    .restart local v7       #phoneType:I
    if-ne v7, v9, :cond_7

    .line 2537
    const-string v11, "CHLD 2 : hangup GSM Active Call and answer incoming call"

    invoke-static {v11}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2539
    :try_start_3
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_3
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_3 .. :try_end_3} :catch_3

    .line 2545
    sget-object v10, Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;->DT_SCENARIO_IA_H:Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;

    if-eq p1, v10, :cond_0

    .line 2546
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v10

    iget-object v10, v10, Lcom/android/phone/PhoneApp;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v10}, Lcom/android/phone/PhoneInterfaceManager;->answerRingingCall()V

    goto/16 :goto_0

    .line 2540
    :catch_3
    move-exception v2

    .line 2541
    .restart local v2       #ex:Lcom/android/internal/telephony/CallStateException;
    const-string v9, "CHLD 2 : catch CallStateException"

    invoke-static {v9}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    move v9, v10

    .line 2542
    goto/16 :goto_0

    .line 2552
    .end local v0           #aCall:Lcom/android/internal/telephony/Call;
    .end local v2           #ex:Lcom/android/internal/telephony/CallStateException;
    .end local v7           #phoneType:I
    :cond_8
    const-string v9, "CHLD 2 : N/A"

    invoke-static {v9}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    move v9, v10

    .line 2553
    goto/16 :goto_0

    .line 2558
    .end local v5           #i$:Ljava/util/Iterator;
    :pswitch_8
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v10

    iget-object v10, v10, Lcom/android/phone/PhoneApp;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v10}, Lcom/android/phone/PhoneInterfaceManager;->answerRingingCall()V

    goto/16 :goto_0

    .line 2564
    :pswitch_9
    const-string v10, "CHLD 1 : answer ringing call and end active call"

    invoke-static {v10}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2565
    iget-object v10, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v10, v8}, Lcom/android/phone/PhoneUtils;->answerAndEndActive(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z

    goto/16 :goto_0

    .line 2419
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method private evdoDTChldHandler3(Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;)Z
    .locals 5
    .parameter "scenario"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2577
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "evdoDTChldHandler3 : scenario ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2579
    sget-object v3, Lcom/android/phone/BluetoothPhoneService$4;->$SwitchMap$com$android$phone$BluetoothPhoneService$DT_EVDO_SCENARIO:[I

    invoke-virtual {p1}, Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;->ordinal()I

    move-result v4

    aget v3, v3, v4

    sparse-switch v3, :sswitch_data_0

    .line 2606
    const-string v1, "CHLD 3 : wrong scenario "

    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    move v1, v2

    .line 2607
    :goto_0
    return v1

    .line 2584
    :sswitch_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v3}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v0

    .line 2585
    .local v0, state:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    sget-object v3, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v3, :cond_0

    .line 2587
    const-string v2, "CHLD 3 : merge calls for CDMA THRWAY ACTIVE "

    invoke-static {v2}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2589
    invoke-static {}, Lcom/android/phone/PhoneUtils;->mergeCalls()V

    goto :goto_0

    .line 2592
    :cond_0
    const-string v1, "CHLD 3 : do not merge call for CDMA not in THRWAY ACTIVE"

    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    move v1, v2

    .line 2593
    goto :goto_0

    .line 2599
    .end local v0           #state:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :sswitch_1
    const-string v2, "CHLD 3 : merge calls "

    invoke-static {v2}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2601
    invoke-static {}, Lcom/android/phone/PhoneUtils;->mergeCalls()V

    goto :goto_0

    .line 2579
    nop

    :sswitch_data_0
    .sparse-switch
        0xf -> :sswitch_0
        0x14 -> :sswitch_1
    .end sparse-switch
.end method

.method private executeHHRestrictIfNeed(Z)Z
    .locals 14
    .parameter "bIsConnected"

    .prologue
    .line 695
    const-string v12, "[executeHHRestrictIfNeed]"

    invoke-static {v12}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 697
    const/4 v1, 0x0

    .line 698
    .local v1, bExecuted:Z
    iget-object v12, p0, Lcom/android/phone/BluetoothPhoneService;->mBtDTUtil:Lcom/android/phone/BluetoothDualTalkUtils;

    invoke-virtual {v12}, Lcom/android/phone/BluetoothDualTalkUtils;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 699
    .local v0, activeFgCall:Lcom/android/internal/telephony/Call;
    const/4 v8, 0x0

    .line 700
    .local v8, inCallPhone:Lcom/android/internal/telephony/Phone;
    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    .line 704
    .local v10, listHoldCall:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    sget-object v12, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v13

    if-eq v12, v13, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 705
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    .line 706
    const-string v12, "executeHHRestrictIfNeed active call"

    invoke-virtual {p0, v12, v0}, Lcom/android/phone/BluetoothPhoneService;->dumpCallDetails(Ljava/lang/String;Lcom/android/internal/telephony/Call;)V

    .line 709
    :cond_1
    const-string v12, "executeHHRestrictIfNeed traverse foreground call"

    invoke-static {v12}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 710
    iget-object v12, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v12}, Lcom/android/internal/telephony/CallManager;->getForegroundCalls()Ljava/util/List;

    move-result-object v9

    .line 711
    .local v9, listCall:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    if-eqz v8, :cond_3

    .line 712
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/Call;

    .line 713
    .local v3, c:Lcom/android/internal/telephony/Call;
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v12

    sget-object v13, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v12, v13, :cond_2

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v12

    if-eq v12, v8, :cond_2

    .line 714
    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 715
    const-string v12, "executeHHRestrictIfNeed add hold call"

    invoke-virtual {p0, v12, v3}, Lcom/android/phone/BluetoothPhoneService;->dumpCallDetails(Ljava/lang/String;Lcom/android/internal/telephony/Call;)V

    goto :goto_0

    .line 720
    .end local v3           #c:Lcom/android/internal/telephony/Call;
    .end local v7           #i$:Ljava/util/Iterator;
    :cond_3
    const-string v12, "executeHHRestrictIfNeed traverse background call"

    invoke-static {v12}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 721
    iget-object v12, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v12}, Lcom/android/internal/telephony/CallManager;->getBackgroundCalls()Ljava/util/List;

    move-result-object v9

    .line 722
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7       #i$:Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/Call;

    .line 723
    .restart local v3       #c:Lcom/android/internal/telephony/Call;
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v12

    sget-object v13, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v12, v13, :cond_4

    .line 724
    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 725
    const-string v12, "executeHHRestrictIfNeed add hold call"

    invoke-virtual {p0, v12, v3}, Lcom/android/phone/BluetoothPhoneService;->dumpCallDetails(Ljava/lang/String;Lcom/android/internal/telephony/Call;)V

    goto :goto_1

    .line 729
    .end local v3           #c:Lcom/android/internal/telephony/Call;
    :cond_5
    const/4 v5, 0x0

    .local v5, firstHoldCall:Lcom/android/internal/telephony/Call;
    const/4 v11, 0x0

    .line 730
    .local v11, secondHoldCall:Lcom/android/internal/telephony/Call;
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_6
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/Call;

    .line 731
    .restart local v3       #c:Lcom/android/internal/telephony/Call;
    const/4 v2, 0x1

    .line 733
    .local v2, bSkip:Z
    if-nez v5, :cond_7

    if-eqz v11, :cond_8

    .line 734
    :cond_7
    const/4 v2, 0x0

    .line 737
    :cond_8
    if-nez v5, :cond_9

    .line 738
    move-object v5, v3

    .line 739
    if-nez v2, :cond_6

    .line 743
    :cond_9
    if-nez v11, :cond_a

    .line 744
    move-object v11, v3

    .line 745
    if-nez v2, :cond_6

    .line 753
    :cond_a
    if-nez p1, :cond_d

    .line 755
    invoke-direct {p0, v5, v11}, Lcom/android/phone/BluetoothPhoneService;->chooseTheEarlierHoldCall(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Call;

    move-result-object v6

    .line 756
    .local v6, hangupCall:Lcom/android/internal/telephony/Call;
    const/4 v12, 0x2

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v13

    invoke-interface {v13}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v13

    if-eq v12, v13, :cond_b

    .line 757
    const-string v12, "executeHHRestrictIfNeed: PhoneUtils.hangupHoldingCall(hangupCall)[!CDMA Call]"

    invoke-static {v12}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 758
    iget-object v12, p0, Lcom/android/phone/BluetoothPhoneService;->mBtDTUtil:Lcom/android/phone/BluetoothDualTalkUtils;

    invoke-virtual {v12, v6}, Lcom/android/phone/BluetoothDualTalkUtils;->hangupHoldingCall(Lcom/android/internal/telephony/Call;)Z

    .line 768
    :goto_3
    if-ne v6, v5, :cond_c

    .line 769
    const/4 v5, 0x0

    .line 777
    .end local v6           #hangupCall:Lcom/android/internal/telephony/Call;
    :goto_4
    const/4 v1, 0x1

    .line 778
    goto :goto_2

    .line 760
    .restart local v6       #hangupCall:Lcom/android/internal/telephony/Call;
    :cond_b
    const-string v12, "executeHHRestrictIfNeed: hangupCall.hangup()[CDMA Call]"

    invoke-static {v12}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 762
    :try_start_0
    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 763
    :catch_0
    move-exception v4

    .line 764
    .local v4, e:Lcom/android/internal/telephony/CallStateException;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "executeHHRestrictIfNeed: exception occurs e="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallStateException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 771
    .end local v4           #e:Lcom/android/internal/telephony/CallStateException;
    :cond_c
    const/4 v11, 0x0

    goto :goto_4

    .line 775
    .end local v6           #hangupCall:Lcom/android/internal/telephony/Call;
    :cond_d
    const-string v12, "executeHHRestrictIfNeed: temp (H,H) occurred"

    invoke-static {v12}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    goto :goto_4

    .line 780
    .end local v2           #bSkip:Z
    .end local v3           #c:Lcom/android/internal/telephony/Call;
    :cond_e
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "executeHHRestrictIfNeed: bExecuted="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 781
    const-string v12, "[[executeHHRestrictIfNeed]]"

    invoke-static {v12}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 782
    return v1
.end method

.method private executeIIRestrictIfNeed(ZLcom/android/internal/telephony/Call;)Z
    .locals 9
    .parameter "bIsConnected"
    .parameter "ringingCall"

    .prologue
    .line 613
    const-string v7, "[executeIIRestrictIfNeed]"

    invoke-static {v7}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 615
    const/4 v0, 0x0

    .line 617
    .local v0, bExecuted:Z
    invoke-direct {p0}, Lcom/android/phone/BluetoothPhoneService;->isRelaxMultiTalksRestrict()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 618
    const-string v7, "executeIIRestrictIfNeed: return directly due to isRelaxMultiTalksRestrict() == true"

    invoke-static {v7}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 619
    const-string v7, "[[executeIIRestrictIfNeed]]"

    invoke-static {v7}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    move v1, v0

    .line 657
    .end local v0           #bExecuted:Z
    .local v1, bExecuted:I
    :goto_0
    return v1

    .line 624
    .end local v1           #bExecuted:I
    .restart local v0       #bExecuted:Z
    :cond_0
    iget-object v7, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getRingingCalls()Ljava/util/List;

    move-result-object v6

    .line 625
    .local v6, ringingCalls:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/Call;

    .line 626
    .local v5, rCall:Lcom/android/internal/telephony/Call;
    if-eq v5, p2, :cond_1

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 627
    const/4 v0, 0x1

    .line 628
    const-string v7, "executeIIRestrictIfNeed: (I,I) conflict occurs"

    invoke-static {v7}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 629
    const-string v7, "executeIIRestrictIfNeed 1st rCall"

    invoke-virtual {p0, v7, p2}, Lcom/android/phone/BluetoothPhoneService;->dumpCallDetails(Ljava/lang/String;Lcom/android/internal/telephony/Call;)V

    .line 630
    const-string v7, "executeIIRestrictIfNeed 2nd rCall"

    invoke-virtual {p0, v7, v5}, Lcom/android/phone/BluetoothPhoneService;->dumpCallDetails(Ljava/lang/String;Lcom/android/internal/telephony/Call;)V

    .line 631
    iget-object v7, p0, Lcom/android/phone/BluetoothPhoneService;->mBtDTUtil:Lcom/android/phone/BluetoothDualTalkUtils;

    if-eqz v7, :cond_4

    .line 632
    const/4 v3, 0x0

    .line 633
    .local v3, hangupCall:Lcom/android/internal/telephony/Call;
    if-nez p1, :cond_3

    .line 634
    iget-object v7, p0, Lcom/android/phone/BluetoothPhoneService;->mBtDTUtil:Lcom/android/phone/BluetoothDualTalkUtils;

    invoke-virtual {v7}, Lcom/android/phone/BluetoothDualTalkUtils;->getSecondActiveRingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 635
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "executeIIRestrictIfNeed: hangup call(background i)="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 641
    :goto_2
    const-string v7, "executeIIRestrictIfNeed hangupCall"

    invoke-virtual {p0, v7, v3}, Lcom/android/phone/BluetoothPhoneService;->dumpCallDetails(Ljava/lang/String;Lcom/android/internal/telephony/Call;)V

    .line 643
    :try_start_0
    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-virtual {v3, v7}, Lcom/android/internal/telephony/Call;->hangup(Lcom/android/internal/telephony/Connection$DisconnectCause;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 648
    :goto_3
    if-ne p2, v3, :cond_2

    move-object p2, v5

    .line 649
    :cond_2
    goto :goto_1

    .line 637
    :cond_3
    invoke-virtual {p0, p2, v5}, Lcom/android/phone/BluetoothPhoneService;->chooseTheLatterCall(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 638
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "executeIIRestrictIfNeed: hangup call(latter i)="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 644
    :catch_0
    move-exception v2

    .line 645
    .local v2, e:Lcom/android/internal/telephony/CallStateException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "executeIIRestrictIfNeed: exception occurs e="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallStateException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 650
    .end local v2           #e:Lcom/android/internal/telephony/CallStateException;
    .end local v3           #hangupCall:Lcom/android/internal/telephony/Call;
    :cond_4
    const-string v7, "executeIIRestrictIfNeed: fail to hangup background incoming call due to mBtDTUtil = null!"

    invoke-static {v7}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 655
    .end local v5           #rCall:Lcom/android/internal/telephony/Call;
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "executeIIRestrictIfNeed:bExecuted="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 656
    const-string v7, "[[executeIIRestrictIfNeed]]"

    invoke-static {v7}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    move v1, v0

    .line 657
    .restart local v1       #bExecuted:I
    goto/16 :goto_0
.end method

.method private executeIORestrictIfNeed(Lcom/android/internal/telephony/Call;)Z
    .locals 8
    .parameter "ringingCall"

    .prologue
    .line 661
    const-string v6, "[executeIORestrictIfNeed]"

    invoke-static {v6}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 663
    const/4 v0, 0x0

    .line 665
    .local v0, bExecuted:Z
    invoke-direct {p0}, Lcom/android/phone/BluetoothPhoneService;->isRelaxMultiTalksRestrict()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 666
    const-string v6, "executeIORestrictIfNeed: return directly due to isRelaxMultiTalksRestrict() == true"

    invoke-static {v6}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 667
    const-string v6, "[[executeIORestrictIfNeed]]"

    invoke-static {v6}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    move v1, v0

    .line 691
    .end local v0           #bExecuted:Z
    .local v1, bExecuted:I
    :goto_0
    return v1

    .line 671
    .end local v1           #bExecuted:I
    .restart local v0       #bExecuted:Z
    :cond_0
    iget-object v6, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getForegroundCalls()Ljava/util/List;

    move-result-object v4

    .line 672
    .local v4, foregroundCalls:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Call;

    .line 673
    .local v2, call:Lcom/android/internal/telephony/Call;
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 674
    const-string v6, "executeIORestrictIfNeed: (I,O) (O,I) conflict occurs"

    invoke-static {v6}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 675
    const-string v6, "executeIORestrictIfNeed iCall"

    invoke-virtual {p0, v6, p1}, Lcom/android/phone/BluetoothPhoneService;->dumpCallDetails(Ljava/lang/String;Lcom/android/internal/telephony/Call;)V

    .line 676
    const-string v6, "executeIORestrictIfNeed oCall"

    invoke-virtual {p0, v6, v2}, Lcom/android/phone/BluetoothPhoneService;->dumpCallDetails(Ljava/lang/String;Lcom/android/internal/telephony/Call;)V

    .line 678
    :try_start_0
    iget-object v6, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6, v2}, Lcom/android/internal/telephony/CallManager;->hangupActiveCall(Lcom/android/internal/telephony/Call;)V

    .line 679
    const-string v6, "executeIORestrictIfNeed hangupCall(Success)"

    invoke-virtual {p0, v6, v2}, Lcom/android/phone/BluetoothPhoneService;->dumpCallDetails(Ljava/lang/String;Lcom/android/internal/telephony/Call;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 684
    :goto_1
    const/4 v0, 0x1

    .line 689
    .end local v2           #call:Lcom/android/internal/telephony/Call;
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "executeIORestrictIfNeed: bExecuted="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 690
    const-string v6, "[[executeIORestrictIfNeed]]"

    invoke-static {v6}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    move v1, v0

    .line 691
    .restart local v1       #bExecuted:I
    goto :goto_0

    .line 680
    .end local v1           #bExecuted:I
    .restart local v2       #call:Lcom/android/internal/telephony/Call;
    :catch_0
    move-exception v3

    .line 681
    .local v3, e:Lcom/android/internal/telephony/CallStateException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "executeIORestrictIfNeed: exception occurs e="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallStateException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 682
    const-string v6, "executeIORestrictIfNeed hangupCall(Fail)"

    invoke-virtual {p0, v6, v2}, Lcom/android/phone/BluetoothPhoneService;->dumpCallDetails(Ljava/lang/String;Lcom/android/internal/telephony/Call;)V

    goto :goto_1
.end method

.method private generateCdmaHoldTime(Lcom/android/internal/telephony/Call;)J
    .locals 7
    .parameter "activeForegroundCall"

    .prologue
    .line 511
    const-string v5, "[generateCdmaHoldTime]"

    invoke-static {v5}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 512
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v3

    .line 513
    .local v3, maxHoldTime:J
    iget-object v5, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getBackgroundCalls()Ljava/util/List;

    move-result-object v2

    .line 514
    .local v2, listCall:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 515
    .local v0, c:Lcom/android/internal/telephony/Call;
    sget-object v5, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    if-ne v5, v6, :cond_0

    .line 516
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v5

    cmp-long v5, v3, v5

    if-gez v5, :cond_0

    .line 517
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v3

    .line 518
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "generateCdmaHoldTime: update hold time="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 522
    .end local v0           #c:Lcom/android/internal/telephony/Call;
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "generateCdmaHoldTime: maxHoldTime="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 523
    const-string v5, "[[generateCdmaHoldTime]]"

    invoke-static {v5}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 524
    const-wide/16 v5, 0x1

    add-long/2addr v5, v3

    return-wide v5
.end method

.method private getCallNumber(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call;)Lcom/android/phone/BluetoothPhoneService$CallNumber;
    .locals 5
    .parameter "connection"
    .parameter "call"

    .prologue
    .line 1449
    const/4 v0, 0x0

    .line 1450
    .local v0, number:Ljava/lang/String;
    const/16 v1, 0x80

    .line 1452
    .local v1, type:I
    if-nez p1, :cond_0

    .line 1453
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object p1

    .line 1454
    if-nez p1, :cond_0

    .line 1455
    const-string v2, "BluetoothPhoneService"

    const-string v3, "Could not get a handle on Connection object for the call"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    :cond_0
    if-eqz p1, :cond_1

    .line 1459
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 1460
    if-eqz v0, :cond_1

    .line 1461
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v1

    .line 1464
    :cond_1
    if-nez v0, :cond_2

    .line 1465
    const-string v0, ""

    .line 1469
    :cond_2
    const-string v2, "BluetoothPhoneService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCallNumber: number = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1472
    new-instance v2, Lcom/android/phone/BluetoothPhoneService$CallNumber;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v1, v3}, Lcom/android/phone/BluetoothPhoneService$CallNumber;-><init>(Lcom/android/phone/BluetoothPhoneService;Ljava/lang/String;ILcom/android/phone/BluetoothPhoneService$1;)V

    return-object v2
.end method

.method private getCdmaHoldTime(Lcom/android/internal/telephony/Call;)J
    .locals 4
    .parameter "c"

    .prologue
    .line 399
    const-string v2, "[getCdmaHoldTime]"

    invoke-static {v2}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 400
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v0

    .line 401
    .local v0, cdmaHoldTime:J
    iget-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mHashCdmaHoldTime:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 402
    iget-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mHashCdmaHoldTime:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 407
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCdmaHoldTime: cdmaHoldTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 408
    const-string v2, "[[getCdmaHoldTime]]"

    invoke-static {v2}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 409
    return-wide v0

    .line 404
    :cond_0
    const-string v2, "getCdmaHoldTime: no cdma hold time!"

    invoke-static {v2}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 405
    const-string v2, "c"

    invoke-virtual {p0, v2, p1}, Lcom/android/phone/BluetoothPhoneService;->dumpCallDetails(Ljava/lang/String;Lcom/android/internal/telephony/Call;)V

    goto :goto_0
.end method

.method private getDefaultSIMInternal()I
    .locals 10

    .prologue
    const-wide/16 v8, -0x5

    .line 2947
    const/4 v2, 0x0

    .line 2948
    .local v2, firstSim:I
    const/4 v0, 0x0

    .line 2949
    .local v0, defaultSim:I
    invoke-virtual {p0}, Lcom/android/phone/BluetoothPhoneService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "voice_call_sim_setting"

    invoke-static {v6, v7, v8, v9}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v6

    long-to-int v5, v6

    .line 2953
    .local v5, slotId:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getDefaultSIM : SIM ID="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2954
    int-to-long v6, v5

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    int-to-long v6, v5

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    .line 2956
    :cond_0
    const-string v6, "No default SIM, get first inserted SIM"

    invoke-static {v6}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2957
    invoke-static {}, Lcom/android/phone/BluetoothPhoneService;->getSimCount()I

    move-result v4

    .line 2960
    .local v4, simNum:I
    const/4 v3, 0x0

    .local v3, simID:I
    :goto_0
    add-int/lit8 v6, v4, 0x0

    if-ge v3, v6, :cond_1

    .line 2961
    :try_start_0
    sget-object v6, Lcom/android/phone/BluetoothPhoneService;->iTel:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v6, v3}, Lcom/android/internal/telephony/ITelephony;->isSimInsert(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2962
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getDefaultSim():first inserted SIM found ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2963
    move v0, v3

    .line 2967
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getDefaultSim():The default SIM is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2976
    .end local v3           #simID:I
    .end local v4           #simNum:I
    :goto_1
    return v0

    .line 2960
    .restart local v3       #simID:I
    .restart local v4       #simNum:I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2968
    :catch_0
    move-exception v1

    .line 2969
    .local v1, ex:Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getDefaultSim():exception thrown ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", default SIM set to GEMINI_SIM_1"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2970
    const/4 v0, 0x0

    goto :goto_1

    .line 2973
    .end local v1           #ex:Ljava/lang/Exception;
    .end local v3           #simID:I
    .end local v4           #simNum:I
    :cond_3
    int-to-long v6, v5

    invoke-static {p0, v6, v7}, Landroid/provider/Telephony$SIMInfo;->getSlotById(Landroid/content/Context;J)I

    move-result v0

    .line 2974
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getDefaultSIM : Sim Id in Settings.System.VOICE_CALL_SIM_SETTING="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getNumHeldCdma()I
    .locals 5

    .prologue
    .line 1421
    const/4 v1, 0x0

    .line 1423
    .local v1, numHeld:I
    iget-object v3, p0, Lcom/android/phone/BluetoothPhoneService;->mCdmaPhoneState:Lcom/android/phone/CdmaPhoneCallState;

    if-eqz v3, :cond_0

    .line 1424
    iget-object v3, p0, Lcom/android/phone/BluetoothPhoneService;->mCdmaPhoneState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v3}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v0

    .line 1426
    .local v0, curr3WayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    iget-object v3, p0, Lcom/android/phone/BluetoothPhoneService;->mCdmaPhoneState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v3}, Lcom/android/phone/CdmaPhoneCallState;->getPreviousCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v2

    .line 1429
    .local v2, prev3WayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CDMA call state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " prev state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1431
    sget-object v3, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v3, :cond_2

    .line 1432
    sget-object v3, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v2, v3, :cond_1

    .line 1433
    const/4 v1, 0x0

    .line 1445
    .end local v0           #curr3WayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    .end local v2           #prev3WayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :cond_0
    :goto_0
    return v1

    .line 1435
    .restart local v0       #curr3WayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    .restart local v2       #prev3WayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 1438
    :cond_2
    sget-object v3, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v3, :cond_3

    .line 1439
    const/4 v1, 0x1

    goto :goto_0

    .line 1442
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getNumHeldUmts()I
    .locals 6

    .prologue
    .line 1409
    const/4 v1, 0x0

    .line 1410
    .local v1, countHeld:I
    iget-object v4, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getBackgroundCalls()Ljava/util/List;

    move-result-object v2

    .line 1412
    .local v2, heldCalls:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 1413
    .local v0, call:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_0

    .line 1414
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1417
    .end local v0           #call:Lcom/android/internal/telephony/Call;
    :cond_1
    return v1
.end method

.method private getPrevCallState(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Call$State;
    .locals 3
    .parameter "callObj"

    .prologue
    .line 504
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService;->mCallStates:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call$State;

    .line 506
    .local v0, state:Lcom/android/internal/telephony/Call$State;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPrevCallState: PrevState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Current Call="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 507
    return-object v0
.end method

.method public static getSimCount()I
    .locals 4

    .prologue
    .line 2935
    const/4 v0, 0x1

    .line 2938
    .local v0, simCount:I
    const-string v2, "persist.gemini.sim_num"

    const-string v3, "2"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2939
    .local v1, value:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2943
    return v0
.end method

.method private handleCdmaSetSecondCallState(Z)V
    .locals 2
    .parameter "state"

    .prologue
    .line 1944
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cdmaSetSecondCallState: Setting mCdmaIsSecondCallActive to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1945
    iput-boolean p1, p0, Lcom/android/phone/BluetoothPhoneService;->mCdmaIsSecondCallActive:Z

    .line 1947
    iget-boolean v0, p0, Lcom/android/phone/BluetoothPhoneService;->mCdmaIsSecondCallActive:Z

    if-nez v0, :cond_0

    .line 1948
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/BluetoothPhoneService;->mCdmaCallsSwapped:Z

    .line 1950
    :cond_0
    return-void
.end method

.method private handleCdmaSwapSecondCallState()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1938
    const-string v0, "cdmaSwapSecondCallState: Toggling mCdmaIsSecondCallActive"

    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1939
    iget-boolean v0, p0, Lcom/android/phone/BluetoothPhoneService;->mCdmaIsSecondCallActive:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/phone/BluetoothPhoneService;->mCdmaIsSecondCallActive:Z

    .line 1940
    iput-boolean v1, p0, Lcom/android/phone/BluetoothPhoneService;->mCdmaCallsSwapped:Z

    .line 1941
    return-void

    .line 1939
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleEVDOChld(I)Z
    .locals 4
    .parameter "chld"

    .prologue
    .line 2614
    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/phone/BluetoothPhoneService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2617
    invoke-direct {p0}, Lcom/android/phone/BluetoothPhoneService;->evdoAnalyzeDTScenario()Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;

    move-result-object v1

    .line 2620
    .local v1, scenario:Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;
    if-nez p1, :cond_0

    .line 2621
    invoke-direct {p0, v1}, Lcom/android/phone/BluetoothPhoneService;->evdoDTChldHandler0(Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;)Z

    move-result v0

    .line 2633
    .local v0, result:Z
    :goto_0
    return v0

    .line 2622
    .end local v0           #result:Z
    :cond_0
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 2623
    invoke-direct {p0, v1}, Lcom/android/phone/BluetoothPhoneService;->evdoDTChldHandler1(Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;)Z

    move-result v0

    .restart local v0       #result:Z
    goto :goto_0

    .line 2624
    .end local v0           #result:Z
    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 2625
    invoke-direct {p0, v1}, Lcom/android/phone/BluetoothPhoneService;->evdoDTChldHandler2(Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;)Z

    move-result v0

    .restart local v0       #result:Z
    goto :goto_0

    .line 2626
    .end local v0           #result:Z
    :cond_2
    const/4 v2, 0x3

    if-ne p1, v2, :cond_3

    .line 2627
    invoke-direct {p0, v1}, Lcom/android/phone/BluetoothPhoneService;->evdoDTChldHandler3(Lcom/android/phone/BluetoothPhoneService$DT_EVDO_SCENARIO;)Z

    move-result v0

    .restart local v0       #result:Z
    goto :goto_0

    .line 2629
    .end local v0           #result:Z
    :cond_3
    const-string v2, "CHLD : wrong parameter"

    invoke-static {v2}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2630
    const/4 v0, 0x0

    .restart local v0       #result:Z
    goto :goto_0
.end method

.method private handleListCurrentCalls()V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 1377
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    .line 1378
    .local v8, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v9

    .line 1387
    .local v9, phoneType:I
    const/4 v0, 0x2

    if-ne v9, v0, :cond_0

    .line 1388
    invoke-direct {p0}, Lcom/android/phone/BluetoothPhoneService;->listCurrentCallsCdma()V

    .line 1397
    :goto_0
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    const-string v6, ""

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    move v7, v1

    invoke-virtual/range {v0 .. v7}, Landroid/bluetooth/BluetoothHeadset;->clccResponse(IIIIZLjava/lang/String;I)V

    .line 1398
    return-void

    .line 1389
    :cond_0
    const/4 v0, 0x1

    if-ne v9, v0, :cond_1

    .line 1390
    invoke-direct {p0}, Lcom/android/phone/BluetoothPhoneService;->listCurrentCallsGsm()V

    goto :goto_0

    .line 1392
    :cond_1
    const-string v0, "BluetoothPhoneService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected phone type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleNormalChld(I)Z
    .locals 11
    .parameter "chld"

    .prologue
    const/4 v10, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2638
    const-string v8, "android.permission.MODIFY_PHONE_STATE"

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Lcom/android/phone/BluetoothPhoneService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2639
    iget-object v8, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 2640
    .local v2, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    .line 2641
    .local v3, phoneType:I
    iget-object v8, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    .line 2642
    .local v4, ringingCall:Lcom/android/internal/telephony/Call;
    iget-object v8, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2644
    .local v0, backgroundCall:Lcom/android/internal/telephony/Call;
    if-nez p1, :cond_1

    .line 2645
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2646
    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    move-result v6

    .line 2751
    :goto_0
    return v6

    .line 2648
    :cond_0
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupHoldingCall(Lcom/android/internal/telephony/Call;)Z

    move-result v6

    goto :goto_0

    .line 2650
    :cond_1
    if-ne p1, v6, :cond_5

    .line 2651
    if-ne v3, v10, :cond_3

    .line 2652
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2654
    const-string v7, "CHLD:1 Callwaiting Answer call"

    invoke-static {v7}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2655
    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->hangupRingingAndActive(Lcom/android/internal/telephony/Phone;)Z

    goto :goto_0

    .line 2660
    :cond_2
    const-string v7, "CHLD:1 Hangup Call"

    invoke-static {v7}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2661
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v7

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    goto :goto_0

    .line 2664
    :cond_3
    if-ne v3, v6, :cond_4

    .line 2666
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v6

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v6, v4}, Lcom/android/phone/PhoneUtils;->answerAndEndActive(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z

    move-result v6

    goto :goto_0

    .line 2668
    :cond_4
    const-string v6, "BluetoothPhoneService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bad phone type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 2669
    goto :goto_0

    .line 2671
    :cond_5
    if-ne p1, v10, :cond_a

    .line 2672
    if-ne v3, v10, :cond_8

    .line 2678
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 2679
    const-string v8, "CHLD:2 Callwaiting Answer call"

    invoke-static {v8}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2680
    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    .line 2681
    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    .line 2683
    iget-object v7, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x7

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2684
    .local v1, msg:Landroid/os/Message;
    iget-object v7, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 2686
    .end local v1           #msg:Landroid/os/Message;
    :cond_6
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v8

    iget-object v8, v8, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v8}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v8

    sget-object v9, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v8, v9, :cond_7

    .line 2689
    const-string v7, "CHLD:2 Swap Calls"

    invoke-static {v7}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2690
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    .line 2692
    iget-object v7, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x6

    invoke-static {v7, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 2693
    .restart local v1       #msg:Landroid/os/Message;
    iget-object v7, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 2696
    .end local v1           #msg:Landroid/os/Message;
    :cond_7
    const-string v6, "BluetoothPhoneService"

    const-string v8, "CDMA fail to do hold active and accept held"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 2697
    goto/16 :goto_0

    .line 2698
    :cond_8
    if-ne v3, v6, :cond_9

    .line 2699
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_0

    .line 2702
    :cond_9
    const-string v6, "BluetoothPhoneService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unexpected phone type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 2703
    goto/16 :goto_0

    .line 2705
    :cond_a
    const/4 v8, 0x3

    if-ne p1, v8, :cond_10

    .line 2706
    if-ne v3, v10, :cond_d

    .line 2707
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v8

    iget-object v8, v8, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v8}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v5

    .line 2710
    .local v5, state:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    sget-object v8, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v5, v8, :cond_b

    .line 2711
    const-string v7, "CHLD:3 Merge Calls"

    invoke-static {v7}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 2712
    invoke-static {}, Lcom/android/phone/PhoneUtils;->mergeCalls()V

    goto/16 :goto_0

    .line 2714
    :cond_b
    sget-object v6, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v5, v6, :cond_c

    move v6, v7

    .line 2718
    goto/16 :goto_0

    .line 2720
    :cond_c
    const-string v6, "BluetoothPhoneService"

    const-string v8, "GSG no call to add conference"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 2721
    goto/16 :goto_0

    .line 2722
    .end local v5           #state:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :cond_d
    if-ne v3, v6, :cond_f

    .line 2723
    iget-object v8, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v8

    if-eqz v8, :cond_e

    iget-object v8, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v8

    if-eqz v8, :cond_e

    .line 2736
    invoke-static {}, Lcom/android/phone/PhoneUtils;->mergeCalls()V

    goto/16 :goto_0

    .line 2742
    :cond_e
    const-string v6, "BluetoothPhoneService"

    const-string v8, "GSG no call to merge"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 2743
    goto/16 :goto_0

    .line 2746
    :cond_f
    const-string v6, "BluetoothPhoneService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unexpected phone type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 2747
    goto/16 :goto_0

    .line 2750
    :cond_10
    const-string v6, "BluetoothPhoneService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bad CHLD value: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 2751
    goto/16 :goto_0
.end method

.method private handlePreciseCallStateChange(Lcom/android/internal/telephony/Connection;)V
    .locals 21
    .parameter "connection"

    .prologue
    .line 1252
    const-string v3, "[handlePreciseCallStateChange]"

    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1255
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/phone/BluetoothPhoneService;->mNumActive:I

    .line 1256
    .local v15, oldNumActive:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    move/from16 v16, v0

    .line 1257
    .local v16, oldNumHeld:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothPhoneService;->mRingingCallState:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v18, v0

    .line 1258
    .local v18, oldRingingCallState:Lcom/android/internal/telephony/Call$State;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/BluetoothPhoneService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    .line 1259
    .local v14, oldForegroundCallState:Lcom/android/internal/telephony/Call$State;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    move-object/from16 v17, v0

    .line 1261
    .local v17, oldRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v13

    .line 1263
    .local v13, foregroundCall:Lcom/android/internal/telephony/Call;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handlePreciseCallStateChange old: NumActive: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/BluetoothPhoneService;->mNumActive:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " NumHeld: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " RingingCallState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/BluetoothPhoneService;->mRingingCallState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ForegroundCallState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/BluetoothPhoneService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " RingNumber: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    #getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mNumber:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$1300(Lcom/android/phone/BluetoothPhoneService$CallNumber;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " RingType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    #getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mType:I
    invoke-static {v4}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$1400(Lcom/android/phone/BluetoothPhoneService$CallNumber;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1268
    const-string v3, "BluetoothPhoneService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " handlePreciseCallStateChange: foreground: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " background: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ringing: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    invoke-virtual {v13}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    .line 1274
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_0

    .line 1276
    const-string v3, "handlePreciseCallStateChange. Call disconnecting, wait before update"

    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1277
    const-string v3, "[[handlePreciseCallStateChange]]"

    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1374
    :goto_0
    return-void

    .line 1281
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v4, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_6

    const/4 v3, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/phone/BluetoothPhoneService;->mNumActive:I

    .line 1283
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v20

    .line 1284
    .local v20, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mRingingCallState:Lcom/android/internal/telephony/Call$State;

    .line 1285
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/phone/BluetoothPhoneService;->getCallNumber(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call;)Lcom/android/phone/BluetoothPhoneService$CallNumber;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    .line 1287
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_7

    .line 1288
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/BluetoothPhoneService;->getNumHeldCdma()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    .line 1289
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v9

    .line 1290
    .local v9, app:Lcom/android/phone/PhoneApp;
    iget-object v3, v9, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    if-eqz v3, :cond_3

    .line 1291
    iget-object v3, v9, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v3}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v12

    .line 1293
    .local v12, currCdmaThreeWayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    iget-object v3, v9, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v3}, Lcom/android/phone/CdmaPhoneCallState;->getPreviousCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v19

    .line 1296
    .local v19, prevCdmaThreeWayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CDMA call state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " prev state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1299
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mCdmaThreeWayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-eq v3, v12, :cond_2

    .line 1305
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CDMA 3way call state change. mNumActive: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/BluetoothPhoneService;->mNumActive:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mNumHeld: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " IsThreeWayCallOrigStateDialing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v9, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v4}, Lcom/android/phone/CdmaPhoneCallState;->IsThreeWayCallOrigStateDialing()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1308
    sget-object v3, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v12, v3, :cond_1

    iget-object v3, v9, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v3}, Lcom/android/phone/CdmaPhoneCallState;->IsThreeWayCallOrigStateDialing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1312
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    sget-object v6, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    invoke-static {v3, v6}, Lcom/android/phone/BluetoothPhoneService;->convertCallState(Lcom/android/internal/telephony/Call$State;Lcom/android/internal/telephony/Call$State;)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    #getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$1300(Lcom/android/phone/BluetoothPhoneService$CallNumber;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    #getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mType:I
    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$1400(Lcom/android/phone/BluetoothPhoneService$CallNumber;)I

    move-result v8

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/phone/BluetoothPhoneService;->updatePhoneStateChanged(IIILjava/lang/String;I)V

    .line 1316
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    sget-object v6, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    invoke-static {v3, v6}, Lcom/android/phone/BluetoothPhoneService;->convertCallState(Lcom/android/internal/telephony/Call$State;Lcom/android/internal/telephony/Call$State;)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    #getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$1300(Lcom/android/phone/BluetoothPhoneService$CallNumber;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    #getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mType:I
    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$1400(Lcom/android/phone/BluetoothPhoneService$CallNumber;)I

    move-result v8

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/phone/BluetoothPhoneService;->updatePhoneStateChanged(IIILjava/lang/String;I)V

    .line 1327
    :cond_1
    sget-object v3, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v12, v3, :cond_2

    sget-object v3, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-object/from16 v0, v19

    if-ne v0, v3, :cond_2

    .line 1331
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CDMA 3way conf call. mNumActive: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/BluetoothPhoneService;->mNumActive:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mNumHeld: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1333
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/BluetoothPhoneService;->mNumActive:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/phone/BluetoothPhoneService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    invoke-static {v3, v6}, Lcom/android/phone/BluetoothPhoneService;->convertCallState(Lcom/android/internal/telephony/Call$State;Lcom/android/internal/telephony/Call$State;)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    #getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$1300(Lcom/android/phone/BluetoothPhoneService$CallNumber;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    #getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mType:I
    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$1400(Lcom/android/phone/BluetoothPhoneService$CallNumber;)I

    move-result v8

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/phone/BluetoothPhoneService;->updatePhoneStateChanged(IIILjava/lang/String;I)V

    .line 1338
    :cond_2
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/phone/BluetoothPhoneService;->mCdmaThreeWayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    .line 1344
    .end local v9           #app:Lcom/android/phone/PhoneApp;
    .end local v12           #currCdmaThreeWayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    .end local v19           #prevCdmaThreeWayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :cond_3
    :goto_2
    const/4 v11, 0x0

    .line 1345
    .local v11, callsSwitched:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mCdmaThreeWayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    sget-object v4, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v3, v4, :cond_8

    .line 1347
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/phone/BluetoothPhoneService;->mCdmaCallsSwapped:Z

    .line 1355
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handlePreciseCallStateChange new: NumActive: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/BluetoothPhoneService;->mNumActive:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " NumHeld: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " RingingCallState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/BluetoothPhoneService;->mRingingCallState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ForegroundCallState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/BluetoothPhoneService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " RingNumber: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    #getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mNumber:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$1300(Lcom/android/phone/BluetoothPhoneService$CallNumber;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " RingType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    #getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mType:I
    invoke-static {v4}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$1400(Lcom/android/phone/BluetoothPhoneService$CallNumber;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " CallsSwitched: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1360
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/phone/BluetoothPhoneService;->mNumActive:I

    if-ne v3, v15, :cond_4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    move/from16 v0, v16

    if-ne v3, v0, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mRingingCallState:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v18

    if-ne v3, v0, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v14, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    move-object/from16 v0, v17

    #calls: Lcom/android/phone/BluetoothPhoneService$CallNumber;->equalTo(Lcom/android/phone/BluetoothPhoneService$CallNumber;)Z
    invoke-static {v3, v0}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$1800(Lcom/android/phone/BluetoothPhoneService$CallNumber;Lcom/android/phone/BluetoothPhoneService$CallNumber;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v11, :cond_5

    .line 1365
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v3, :cond_5

    .line 1366
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/BluetoothPhoneService;->mNumActive:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mRingingCallState:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/phone/BluetoothPhoneService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    invoke-static {v3, v6}, Lcom/android/phone/BluetoothPhoneService;->convertCallState(Lcom/android/internal/telephony/Call$State;Lcom/android/internal/telephony/Call$State;)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    #getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$1300(Lcom/android/phone/BluetoothPhoneService$CallNumber;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    #getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mType:I
    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$1400(Lcom/android/phone/BluetoothPhoneService$CallNumber;)I

    move-result v8

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/phone/BluetoothPhoneService;->updatePhoneStateChanged(IIILjava/lang/String;I)V

    .line 1372
    :cond_5
    const-string v3, "[[handlePreciseCallStateChange]]"

    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1281
    .end local v11           #callsSwitched:Z
    .end local v20           #ringingCall:Lcom/android/internal/telephony/Call;
    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 1341
    .restart local v20       #ringingCall:Lcom/android/internal/telephony/Call;
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/BluetoothPhoneService;->getNumHeldUmts()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    goto/16 :goto_2

    .line 1349
    .restart local v11       #callsSwitched:Z
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    .line 1350
    .local v10, backgroundCall:Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_9

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getEarliestConnectTime()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/phone/BluetoothPhoneService;->mBgndEarliestConnectionTime:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_9

    const/4 v11, 0x1

    .line 1353
    :goto_4
    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getEarliestConnectTime()J

    move-result-wide v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/android/phone/BluetoothPhoneService;->mBgndEarliestConnectionTime:J

    goto/16 :goto_3

    .line 1350
    :cond_9
    const/4 v11, 0x0

    goto :goto_4
.end method

.method private handlePreciseCallStateChangeDualTalk(Lcom/android/internal/telephony/Connection;)V
    .locals 29
    .parameter "connection"

    .prologue
    .line 1023
    const-string v3, "[handlePreciseCallStateChangeDualTalk]"

    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1028
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothPhoneService;->mRingingCallState:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v24, v0

    .line 1029
    .local v24, oldRingingCallState:Lcom/android/internal/telephony/Call$State;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothPhoneService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v22, v0

    .line 1030
    .local v22, oldForegroundCallState:Lcom/android/internal/telephony/Call$State;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    move-object/from16 v23, v0

    .line 1032
    .local v23, oldRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handlePreciseCallStateChangeDualTalk: NumActive: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/BluetoothPhoneService;->mNumActive:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " NumHeld: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " RingingCallState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/BluetoothPhoneService;->mRingingCallState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ForegroundCallState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/BluetoothPhoneService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " RingNumber: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    #getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mNumber:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$1300(Lcom/android/phone/BluetoothPhoneService$CallNumber;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " RingType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    #getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mType:I
    invoke-static {v4}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$1400(Lcom/android/phone/BluetoothPhoneService$CallNumber;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1036
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/BluetoothPhoneService;->canSwapInDiffSim()Z

    move-result v11

    .line 1038
    .local v11, bCanSwapInDiffSim:Z
    const/4 v10, 0x0

    .line 1044
    .local v10, activePhoneType:I
    if-nez v11, :cond_0

    .line 1045
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/BluetoothPhoneService;->resetMultiTalksSwapData()V

    .line 1048
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/BluetoothPhoneService;->isHFPConnected()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1050
    const/16 v26, 0x0

    .line 1052
    .local v26, return_directly:Z
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/BluetoothPhoneService;->checkUnreasonableStates()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1053
    const-string v3, "handlePreciseCallStateChangeDualTalk: return directly for unreasonable states"

    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1054
    const/16 v26, 0x1

    .line 1061
    :cond_1
    :goto_0
    if-eqz v26, :cond_3

    .line 1062
    const-string v3, "[[handlePreciseCallStateChangeDualTalk]]"

    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1247
    .end local v26           #return_directly:Z
    :goto_1
    return-void

    .line 1056
    .restart local v26       #return_directly:Z
    :cond_2
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/BluetoothPhoneService;->restrictMultiTalks(Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1057
    const-string v3, "handlePreciseCallStateChangeDualTalk: return directly for restriction"

    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1058
    const/16 v26, 0x1

    goto :goto_0

    .line 1068
    .end local v26           #return_directly:Z
    :cond_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/phone/BluetoothPhoneService;->mNumActive:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/phone/BluetoothPhoneService;->mOldNumActive:I

    .line 1069
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/phone/BluetoothPhoneService;->mOldNumHeld:I

    .line 1077
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mBtDTUtil:Lcom/android/phone/BluetoothDualTalkUtils;

    invoke-virtual {v3}, Lcom/android/phone/BluetoothDualTalkUtils;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v19

    .line 1078
    .local v19, foregroundCall:Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mBtDTUtil:Lcom/android/phone/BluetoothDualTalkUtils;

    invoke-virtual {v3}, Lcom/android/phone/BluetoothDualTalkUtils;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v12

    .line 1079
    .local v12, backgroundCall:Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mBtDTUtil:Lcom/android/phone/BluetoothDualTalkUtils;

    invoke-virtual {v3}, Lcom/android/phone/BluetoothDualTalkUtils;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v28

    .line 1082
    .local v28, ringingCall:Lcom/android/internal/telephony/Call;
    const-string v3, "BluetoothPhoneService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " handlePreciseCallStateChangeDualTalk: foreground: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " background: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ringing: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    .line 1087
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v4, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_a

    .line 1088
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/phone/BluetoothPhoneService;->mNumActive:I

    .line 1089
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v10

    .line 1097
    :goto_2
    const-string v3, "BluetoothPhoneService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " handlePreciseCallStateChangeDualTalk: mForegroundCallState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/BluetoothPhoneService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mNumActive: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/phone/BluetoothPhoneService;->mNumActive:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " activePhoneType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mRingingCallState:Lcom/android/internal/telephony/Call$State;

    .line 1100
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/phone/BluetoothPhoneService;->getCallNumber(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call;)Lcom/android/phone/BluetoothPhoneService$CallNumber;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    .line 1102
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getForegroundCalls()Ljava/util/List;

    move-result-object v18

    .line 1103
    .local v18, fgCalls:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getRingingCalls()Ljava/util/List;

    move-result-object v27

    .line 1105
    .local v27, ringCalls:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/BluetoothPhoneService;->getNumHeldUmts()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    .line 1108
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mBtDTUtil:Lcom/android/phone/BluetoothDualTalkUtils;

    invoke-virtual {v3}, Lcom/android/phone/BluetoothDualTalkUtils;->isCdmaActive()Z

    move-result v3

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    if-nez v3, :cond_4

    .line 1110
    const/4 v3, 0x1

    if-ne v10, v3, :cond_c

    .line 1111
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mCdmaPhoneState:Lcom/android/phone/CdmaPhoneCallState;

    if-eqz v3, :cond_4

    .line 1112
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mCdmaPhoneState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v3}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v16

    .line 1113
    .local v16, currCdmaCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    sget-object v3, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->IDLE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-object/from16 v0, v16

    if-eq v0, v3, :cond_4

    .line 1114
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mBtDTUtil:Lcom/android/phone/BluetoothDualTalkUtils;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/phone/BluetoothDualTalkUtils;->getFirstFgCall(I)Lcom/android/internal/telephony/Call;

    move-result-object v9

    .line 1115
    .local v9, CdmaFgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_4

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_4

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_4

    .line 1116
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    .line 1124
    .end local v9           #CdmaFgCall:Lcom/android/internal/telephony/Call;
    .end local v16           #currCdmaCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :cond_4
    :goto_3
    const-string v3, "BluetoothPhoneService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " handlePreciseCallStateChangeDualTalk: mNumHeld: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mRingingCallState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/BluetoothPhoneService;->mRingingCallState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    new-instance v21, Lcom/android/phone/BluetoothPhoneService$CallInfo;

    const/4 v3, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3}, Lcom/android/phone/BluetoothPhoneService$CallInfo;-><init>(Lcom/android/phone/BluetoothPhoneService;Lcom/android/phone/BluetoothPhoneService$1;)V

    .line 1127
    .local v21, info:Lcom/android/phone/BluetoothPhoneService$CallInfo;
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    #setter for: Lcom/android/phone/BluetoothPhoneService$CallInfo;->mForegroundCall:Lcom/android/internal/telephony/Call;
    invoke-static {v0, v1}, Lcom/android/phone/BluetoothPhoneService$CallInfo;->access$902(Lcom/android/phone/BluetoothPhoneService$CallInfo;Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Call;

    .line 1128
    invoke-virtual {v12}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    move-object/from16 v0, v21

    #setter for: Lcom/android/phone/BluetoothPhoneService$CallInfo;->mBackgroundCallState:Lcom/android/internal/telephony/Call$State;
    invoke-static {v0, v3}, Lcom/android/phone/BluetoothPhoneService$CallInfo;->access$1702(Lcom/android/phone/BluetoothPhoneService$CallInfo;Lcom/android/internal/telephony/Call$State;)Lcom/android/internal/telephony/Call$State;

    .line 1129
    #setter for: Lcom/android/phone/BluetoothPhoneService$CallInfo;->mOldForegroundCallState:Lcom/android/internal/telephony/Call$State;
    invoke-static/range {v21 .. v22}, Lcom/android/phone/BluetoothPhoneService$CallInfo;->access$1102(Lcom/android/phone/BluetoothPhoneService$CallInfo;Lcom/android/internal/telephony/Call$State;)Lcom/android/internal/telephony/Call$State;

    .line 1130
    move-object/from16 v0, v21

    move-object/from16 v1, v24

    #setter for: Lcom/android/phone/BluetoothPhoneService$CallInfo;->mOldRingingCallState:Lcom/android/internal/telephony/Call$State;
    invoke-static {v0, v1}, Lcom/android/phone/BluetoothPhoneService$CallInfo;->access$1002(Lcom/android/phone/BluetoothPhoneService$CallInfo;Lcom/android/internal/telephony/Call$State;)Lcom/android/internal/telephony/Call$State;

    .line 1131
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    #setter for: Lcom/android/phone/BluetoothPhoneService$CallInfo;->mOldRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;
    invoke-static {v0, v1}, Lcom/android/phone/BluetoothPhoneService$CallInfo;->access$1202(Lcom/android/phone/BluetoothPhoneService$CallInfo;Lcom/android/phone/BluetoothPhoneService$CallNumber;)Lcom/android/phone/BluetoothPhoneService$CallNumber;

    .line 1132
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    #setter for: Lcom/android/phone/BluetoothPhoneService$CallInfo;->mFgCalls:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/android/phone/BluetoothPhoneService$CallInfo;->access$1502(Lcom/android/phone/BluetoothPhoneService$CallInfo;Ljava/util/List;)Ljava/util/List;

    .line 1134
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/phone/BluetoothPhoneService;->handleSpecialCasesForDualTalk(Lcom/android/phone/BluetoothPhoneService$CallInfo;)V

    .line 1137
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mBtDTUtil:Lcom/android/phone/BluetoothDualTalkUtils;

    invoke-virtual {v3}, Lcom/android/phone/BluetoothDualTalkUtils;->isCdmaActive()Z

    move-result v3

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mCdmaPhoneState:Lcom/android/phone/CdmaPhoneCallState;

    if-eqz v3, :cond_7

    const/4 v3, 0x1

    if-eq v10, v3, :cond_7

    .line 1141
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mCdmaPhoneState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v3}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v17

    .line 1143
    .local v17, currCdmaThreeWayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mCdmaPhoneState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v3}, Lcom/android/phone/CdmaPhoneCallState;->getPreviousCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v25

    .line 1146
    .local v25, prevCdmaThreeWayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handlePreciseCallStateChangeDualTalk: CDMA call state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " prev state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mCdmaThreeWayCallState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/BluetoothPhoneService;->mCdmaThreeWayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1150
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mCdmaThreeWayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-object/from16 v0, v17

    if-eq v3, v0, :cond_6

    .line 1156
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handlePreciseCallStateChangeDualTalk : CDMA 3way call state change. mNumActive: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/BluetoothPhoneService;->mNumActive:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mNumHeld: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " IsThreeWayCallOrigStateDialing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/BluetoothPhoneService;->mCdmaPhoneState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v4}, Lcom/android/phone/CdmaPhoneCallState;->IsThreeWayCallOrigStateDialing()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1159
    sget-object v3, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-object/from16 v0, v17

    if-ne v0, v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mCdmaPhoneState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v3}, Lcom/android/phone/CdmaPhoneCallState;->IsThreeWayCallOrigStateDialing()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1163
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    sget-object v6, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    invoke-static {v3, v6}, Lcom/android/phone/BluetoothPhoneService;->convertCallState(Lcom/android/internal/telephony/Call$State;Lcom/android/internal/telephony/Call$State;)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    #getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$1300(Lcom/android/phone/BluetoothPhoneService$CallNumber;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    #getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mType:I
    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$1400(Lcom/android/phone/BluetoothPhoneService$CallNumber;)I

    move-result v8

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/phone/BluetoothPhoneService;->updatePhoneStateChanged(IIILjava/lang/String;I)V

    .line 1167
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    sget-object v6, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    invoke-static {v3, v6}, Lcom/android/phone/BluetoothPhoneService;->convertCallState(Lcom/android/internal/telephony/Call$State;Lcom/android/internal/telephony/Call$State;)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    #getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$1300(Lcom/android/phone/BluetoothPhoneService$CallNumber;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    #getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mType:I
    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$1400(Lcom/android/phone/BluetoothPhoneService$CallNumber;)I

    move-result v8

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/phone/BluetoothPhoneService;->updatePhoneStateChanged(IIILjava/lang/String;I)V

    .line 1178
    :cond_5
    sget-object v3, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-object/from16 v0, v17

    if-ne v0, v3, :cond_6

    sget-object v3, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-object/from16 v0, v25

    if-ne v0, v3, :cond_6

    .line 1182
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handlePreciseCallStateChangeDualTalk: CDMA 3way conf call. mNumActive: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/BluetoothPhoneService;->mNumActive:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mNumHeld: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1184
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/BluetoothPhoneService;->mNumActive:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/phone/BluetoothPhoneService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    invoke-static {v3, v6}, Lcom/android/phone/BluetoothPhoneService;->convertCallState(Lcom/android/internal/telephony/Call$State;Lcom/android/internal/telephony/Call$State;)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    #getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$1300(Lcom/android/phone/BluetoothPhoneService$CallNumber;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    #getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mType:I
    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$1400(Lcom/android/phone/BluetoothPhoneService$CallNumber;)I

    move-result v8

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/phone/BluetoothPhoneService;->updatePhoneStateChanged(IIILjava/lang/String;I)V

    .line 1189
    :cond_6
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/BluetoothPhoneService;->mCdmaThreeWayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    .line 1192
    .end local v17           #currCdmaThreeWayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    .end local v25           #prevCdmaThreeWayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :cond_7
    const/4 v15, 0x0

    .line 1193
    .local v15, callsSwitched:Z
    if-eqz v11, :cond_d

    .line 1195
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/BluetoothPhoneService;->isMultiTalksSwapped()Z

    move-result v15

    .line 1196
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handlePreciseCallStateChangeDualTalk: callsSwitched="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "swap call in MultiTalks Mode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1216
    :cond_8
    :goto_4
    const/4 v3, 0x2

    invoke-virtual {v12}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    if-eq v3, v4, :cond_9

    .line 1217
    invoke-virtual {v12}, Lcom/android/internal/telephony/Call;->getEarliestConnectTime()J

    move-result-wide v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/android/phone/BluetoothPhoneService;->mBgndEarliestConnectionTime:J

    .line 1218
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handlePreciseCallStateChangeDualTalk: callsSwitched="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " update connection create time="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/phone/BluetoothPhoneService;->mBgndEarliestConnectionTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1223
    :cond_9
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/Call;

    .line 1225
    .local v13, callObjF:Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/phone/BluetoothPhoneService;->setPrevCallState(Lcom/android/internal/telephony/Call;)V

    goto :goto_5

    .line 1090
    .end local v13           #callObjF:Lcom/android/internal/telephony/Call;
    .end local v15           #callsSwitched:Z
    .end local v18           #fgCalls:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    .end local v20           #i$:Ljava/util/Iterator;
    .end local v21           #info:Lcom/android/phone/BluetoothPhoneService$CallInfo;
    .end local v27           #ringCalls:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v4, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_b

    .line 1091
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/phone/BluetoothPhoneService;->mNumActive:I

    .line 1092
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v10

    goto/16 :goto_2

    .line 1094
    :cond_b
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/phone/BluetoothPhoneService;->mNumActive:I

    goto/16 :goto_2

    .line 1120
    .restart local v18       #fgCalls:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    .restart local v27       #ringCalls:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/BluetoothPhoneService;->getNumHeldCdma()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    goto/16 :goto_3

    .line 1198
    .restart local v15       #callsSwitched:Z
    .restart local v21       #info:Lcom/android/phone/BluetoothPhoneService$CallInfo;
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mBtDTUtil:Lcom/android/phone/BluetoothDualTalkUtils;

    invoke-virtual {v3}, Lcom/android/phone/BluetoothDualTalkUtils;->isCdmaActive()Z

    move-result v3

    if-eqz v3, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mCdmaThreeWayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    sget-object v4, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v3, v4, :cond_e

    .line 1199
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/phone/BluetoothPhoneService;->mCdmaCallsSwapped:Z

    .line 1200
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handlePreciseCallStateChangeDualTalk: callsSwitched="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in SingleTalk Mode (CDMA)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1205
    :cond_e
    const/4 v3, 0x2

    invoke-virtual {v12}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    if-eq v3, v4, :cond_8

    .line 1206
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_f

    invoke-virtual {v12}, Lcom/android/internal/telephony/Call;->getEarliestConnectTime()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/phone/BluetoothPhoneService;->mBgndEarliestConnectionTime:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_f

    const/4 v15, 0x1

    .line 1209
    :goto_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handlePreciseCallStateChangeDualTalk: callsSwitched="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in SingleTalk Mode (GSM)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1206
    :cond_f
    const/4 v15, 0x0

    goto :goto_6

    .line 1227
    .restart local v20       #i$:Ljava/util/Iterator;
    :cond_10
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_7
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/telephony/Call;

    .line 1229
    .local v14, callObjR:Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/phone/BluetoothPhoneService;->setPrevCallState(Lcom/android/internal/telephony/Call;)V

    goto :goto_7

    .line 1232
    .end local v14           #callObjR:Lcom/android/internal/telephony/Call;
    :cond_11
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/phone/BluetoothPhoneService;->mNumActive:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/BluetoothPhoneService;->mOldNumActive:I

    if-ne v3, v4, :cond_12

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/BluetoothPhoneService;->mOldNumHeld:I

    if-ne v3, v4, :cond_12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mRingingCallState:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v24

    if-ne v3, v0, :cond_12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v22

    if-ne v3, v0, :cond_12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    move-object/from16 v0, v23

    #calls: Lcom/android/phone/BluetoothPhoneService$CallNumber;->equalTo(Lcom/android/phone/BluetoothPhoneService$CallNumber;)Z
    invoke-static {v3, v0}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$1800(Lcom/android/phone/BluetoothPhoneService$CallNumber;Lcom/android/phone/BluetoothPhoneService$CallNumber;)Z

    move-result v3

    if-eqz v3, :cond_12

    if-eqz v15, :cond_13

    .line 1237
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v3, :cond_13

    .line 1238
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/BluetoothPhoneService;->mNumActive:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mRingingCallState:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/phone/BluetoothPhoneService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    invoke-static {v3, v6}, Lcom/android/phone/BluetoothPhoneService;->convertCallState(Lcom/android/internal/telephony/Call$State;Lcom/android/internal/telephony/Call$State;)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    #getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$1300(Lcom/android/phone/BluetoothPhoneService$CallNumber;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    #getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mType:I
    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$1400(Lcom/android/phone/BluetoothPhoneService$CallNumber;)I

    move-result v8

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/phone/BluetoothPhoneService;->updatePhoneStateChanged(IIILjava/lang/String;I)V

    .line 1245
    :cond_13
    const-string v3, "[[handlePreciseCallStateChangeDualTalk]]"

    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private handleQueryPhoneState()V
    .locals 6

    .prologue
    .line 1401
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_0

    .line 1402
    iget v1, p0, Lcom/android/phone/BluetoothPhoneService;->mNumActive:I

    iget v2, p0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mRingingCallState:Lcom/android/internal/telephony/Call$State;

    iget-object v3, p0, Lcom/android/phone/BluetoothPhoneService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    invoke-static {v0, v3}, Lcom/android/phone/BluetoothPhoneService;->convertCallState(Lcom/android/internal/telephony/Call$State;Lcom/android/internal/telephony/Call$State;)I

    move-result v3

    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    #getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mNumber:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$1300(Lcom/android/phone/BluetoothPhoneService$CallNumber;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    #getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mType:I
    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$1400(Lcom/android/phone/BluetoothPhoneService$CallNumber;)I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/BluetoothPhoneService;->updatePhoneStateChanged(IIILjava/lang/String;I)V

    .line 1406
    :cond_0
    return-void
.end method

.method private handleSpecialCasesForDualTalk(Lcom/android/phone/BluetoothPhoneService$CallInfo;)V
    .locals 17
    .parameter "info"

    .prologue
    .line 869
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/phone/BluetoothPhoneService;->mNumActive:I

    if-gtz v1, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    if-lez v1, :cond_7

    :cond_0
    const/4 v10, 0x1

    .line 870
    .local v10, callState:Z
    :goto_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/phone/BluetoothPhoneService;->mOldNumActive:I

    if-gtz v1, :cond_1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/phone/BluetoothPhoneService;->mOldNumHeld:I

    if-lez v1, :cond_8

    :cond_1
    const/4 v13, 0x1

    .line 873
    .local v13, prevCallState:Z
    :goto_1
    const/4 v1, 0x1

    if-ne v1, v10, :cond_d

    if-ne v10, v13, :cond_d

    .line 875
    #getter for: Lcom/android/phone/BluetoothPhoneService$CallInfo;->mForegroundCall:Lcom/android/internal/telephony/Call;
    invoke-static/range {p1 .. p1}, Lcom/android/phone/BluetoothPhoneService$CallInfo;->access$900(Lcom/android/phone/BluetoothPhoneService$CallInfo;)Lcom/android/internal/telephony/Call;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/phone/BluetoothPhoneService;->getPrevCallState(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Call$State;

    move-result-object v16

    .line 892
    .local v16, prevState:Lcom/android/internal/telephony/Call$State;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BluetoothPhoneService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_4

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    if-nez v1, :cond_4

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/phone/BluetoothPhoneService;->mOldNumHeld:I

    if-nez v1, :cond_4

    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v16

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v16

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v16

    if-ne v0, v1, :cond_4

    .line 896
    :cond_2
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/phone/BluetoothPhoneService;->mOldNumActive:I

    .line 898
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v1, :cond_3

    .line 900
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/phone/BluetoothPhoneService;->mOldNumActive:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/phone/BluetoothPhoneService;->mOldNumHeld:I

    #getter for: Lcom/android/phone/BluetoothPhoneService$CallInfo;->mOldRingingCallState:Lcom/android/internal/telephony/Call$State;
    invoke-static/range {p1 .. p1}, Lcom/android/phone/BluetoothPhoneService$CallInfo;->access$1000(Lcom/android/phone/BluetoothPhoneService$CallInfo;)Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    #getter for: Lcom/android/phone/BluetoothPhoneService$CallInfo;->mOldForegroundCallState:Lcom/android/internal/telephony/Call$State;
    invoke-static/range {p1 .. p1}, Lcom/android/phone/BluetoothPhoneService$CallInfo;->access$1100(Lcom/android/phone/BluetoothPhoneService$CallInfo;)Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/phone/BluetoothPhoneService;->convertCallState(Lcom/android/internal/telephony/Call$State;Lcom/android/internal/telephony/Call$State;)I

    move-result v4

    #getter for: Lcom/android/phone/BluetoothPhoneService$CallInfo;->mOldRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;
    invoke-static/range {p1 .. p1}, Lcom/android/phone/BluetoothPhoneService$CallInfo;->access$1200(Lcom/android/phone/BluetoothPhoneService$CallInfo;)Lcom/android/phone/BluetoothPhoneService$CallNumber;

    move-result-object v1

    #getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mNumber:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$1300(Lcom/android/phone/BluetoothPhoneService$CallNumber;)Ljava/lang/String;

    move-result-object v5

    #getter for: Lcom/android/phone/BluetoothPhoneService$CallInfo;->mOldRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;
    invoke-static/range {p1 .. p1}, Lcom/android/phone/BluetoothPhoneService$CallInfo;->access$1200(Lcom/android/phone/BluetoothPhoneService$CallInfo;)Lcom/android/phone/BluetoothPhoneService$CallNumber;

    move-result-object v1

    #getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mType:I
    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$1400(Lcom/android/phone/BluetoothPhoneService$CallNumber;)I

    move-result v6

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/phone/BluetoothPhoneService;->updatePhoneStateChanged(IIILjava/lang/String;I)V

    .line 905
    :cond_3
    const-string v1, "handleSpecialCasesForDualTalk: AW --> DW --> A occurs !"

    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 933
    :cond_4
    const/4 v11, 0x0

    .line 934
    .local v11, disCall:Lcom/android/internal/telephony/Call;
    const/4 v7, 0x0

    .line 936
    .local v7, activeCall:Lcom/android/internal/telephony/Call;
    #getter for: Lcom/android/phone/BluetoothPhoneService$CallInfo;->mFgCalls:Ljava/util/List;
    invoke-static/range {p1 .. p1}, Lcom/android/phone/BluetoothPhoneService$CallInfo;->access$1500(Lcom/android/phone/BluetoothPhoneService$CallInfo;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/Call;

    .line 937
    .local v9, c:Lcom/android/internal/telephony/Call;
    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v2, :cond_6

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_9

    .line 938
    :cond_6
    move-object v11, v9

    goto :goto_2

    .line 869
    .end local v7           #activeCall:Lcom/android/internal/telephony/Call;
    .end local v9           #c:Lcom/android/internal/telephony/Call;
    .end local v10           #callState:Z
    .end local v11           #disCall:Lcom/android/internal/telephony/Call;
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v13           #prevCallState:Z
    .end local v16           #prevState:Lcom/android/internal/telephony/Call$State;
    :cond_7
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 870
    .restart local v10       #callState:Z
    :cond_8
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 939
    .restart local v7       #activeCall:Lcom/android/internal/telephony/Call;
    .restart local v9       #c:Lcom/android/internal/telephony/Call;
    .restart local v11       #disCall:Lcom/android/internal/telephony/Call;
    .restart local v12       #i$:Ljava/util/Iterator;
    .restart local v13       #prevCallState:Z
    .restart local v16       #prevState:Lcom/android/internal/telephony/Call$State;
    :cond_9
    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_5

    .line 940
    move-object v7, v9

    goto :goto_2

    .line 944
    .end local v9           #c:Lcom/android/internal/telephony/Call;
    :cond_a
    if-eqz v11, :cond_d

    if-eqz v7, :cond_d

    .line 945
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/phone/BluetoothPhoneService;->getPrevCallState(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Call$State;

    move-result-object v14

    .line 946
    .local v14, prevDisState:Lcom/android/internal/telephony/Call$State;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSpecialCasesForDualTalk: prevDisState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 948
    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v14, v1, :cond_d

    .line 950
    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    .line 951
    .local v8, activePhone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/phone/BluetoothPhoneService;->getPrevCallState(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Call$State;

    move-result-object v15

    .line 953
    .local v15, prevRingState:Lcom/android/internal/telephony/Call$State;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSpecialCasesForDualTalk: prevRingState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 955
    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-eq v15, v1, :cond_b

    sget-object v1, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v15, v1, :cond_d

    .line 957
    :cond_b
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/phone/BluetoothPhoneService;->mOldNumHeld:I

    if-lez v1, :cond_d

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    if-lez v1, :cond_d

    .line 959
    const-string v1, "handleSpecialCasesForDualTalk: (I,AH) -> (A,DH) occurs"

    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 961
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v1, :cond_c

    .line 962
    const/4 v2, 0x0

    const/4 v3, 0x1

    #getter for: Lcom/android/phone/BluetoothPhoneService$CallInfo;->mOldRingingCallState:Lcom/android/internal/telephony/Call$State;
    invoke-static/range {p1 .. p1}, Lcom/android/phone/BluetoothPhoneService$CallInfo;->access$1000(Lcom/android/phone/BluetoothPhoneService$CallInfo;)Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    #getter for: Lcom/android/phone/BluetoothPhoneService$CallInfo;->mOldForegroundCallState:Lcom/android/internal/telephony/Call$State;
    invoke-static/range {p1 .. p1}, Lcom/android/phone/BluetoothPhoneService$CallInfo;->access$1100(Lcom/android/phone/BluetoothPhoneService$CallInfo;)Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/phone/BluetoothPhoneService;->convertCallState(Lcom/android/internal/telephony/Call$State;Lcom/android/internal/telephony/Call$State;)I

    move-result v4

    #getter for: Lcom/android/phone/BluetoothPhoneService$CallInfo;->mOldRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;
    invoke-static/range {p1 .. p1}, Lcom/android/phone/BluetoothPhoneService$CallInfo;->access$1200(Lcom/android/phone/BluetoothPhoneService$CallInfo;)Lcom/android/phone/BluetoothPhoneService$CallNumber;

    move-result-object v1

    #getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mNumber:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$1300(Lcom/android/phone/BluetoothPhoneService$CallNumber;)Ljava/lang/String;

    move-result-object v5

    #getter for: Lcom/android/phone/BluetoothPhoneService$CallInfo;->mOldRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;
    invoke-static/range {p1 .. p1}, Lcom/android/phone/BluetoothPhoneService$CallInfo;->access$1200(Lcom/android/phone/BluetoothPhoneService$CallInfo;)Lcom/android/phone/BluetoothPhoneService$CallNumber;

    move-result-object v1

    #getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mType:I
    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$1400(Lcom/android/phone/BluetoothPhoneService$CallNumber;)I

    move-result v6

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/phone/BluetoothPhoneService;->updatePhoneStateChanged(IIILjava/lang/String;I)V

    .line 967
    :cond_c
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/phone/BluetoothPhoneService;->mOldNumActive:I

    .line 984
    .end local v7           #activeCall:Lcom/android/internal/telephony/Call;
    .end local v8           #activePhone:Lcom/android/internal/telephony/Phone;
    .end local v11           #disCall:Lcom/android/internal/telephony/Call;
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v14           #prevDisState:Lcom/android/internal/telephony/Call$State;
    .end local v15           #prevRingState:Lcom/android/internal/telephony/Call$State;
    .end local v16           #prevState:Lcom/android/internal/telephony/Call$State;
    :cond_d
    #getter for: Lcom/android/phone/BluetoothPhoneService$CallInfo;->mOldRingingCallState:Lcom/android/internal/telephony/Call$State;
    invoke-static/range {p1 .. p1}, Lcom/android/phone/BluetoothPhoneService$CallInfo;->access$1000(Lcom/android/phone/BluetoothPhoneService$CallInfo;)Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_10

    #getter for: Lcom/android/phone/BluetoothPhoneService$CallInfo;->mOldForegroundCallState:Lcom/android/internal/telephony/Call$State;
    invoke-static/range {p1 .. p1}, Lcom/android/phone/BluetoothPhoneService$CallInfo;->access$1100(Lcom/android/phone/BluetoothPhoneService$CallInfo;)Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v2, :cond_e

    #getter for: Lcom/android/phone/BluetoothPhoneService$CallInfo;->mOldForegroundCallState:Lcom/android/internal/telephony/Call$State;
    invoke-static/range {p1 .. p1}, Lcom/android/phone/BluetoothPhoneService$CallInfo;->access$1100(Lcom/android/phone/BluetoothPhoneService$CallInfo;)Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_10

    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BluetoothPhoneService;->mRingingCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v2, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v2, :cond_f

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BluetoothPhoneService;->mRingingCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v2, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_10

    .line 988
    :cond_f
    const-string v1, "handleSpecialCasesForDualTalk: (I,O) restriction occurs"

    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 990
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v1, :cond_10

    .line 991
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/phone/BluetoothPhoneService;->mOldNumActive:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/phone/BluetoothPhoneService;->mOldNumHeld:I

    const/4 v4, 0x6

    #getter for: Lcom/android/phone/BluetoothPhoneService$CallInfo;->mOldRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;
    invoke-static/range {p1 .. p1}, Lcom/android/phone/BluetoothPhoneService$CallInfo;->access$1200(Lcom/android/phone/BluetoothPhoneService$CallInfo;)Lcom/android/phone/BluetoothPhoneService$CallNumber;

    move-result-object v1

    #getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mNumber:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$1300(Lcom/android/phone/BluetoothPhoneService$CallNumber;)Ljava/lang/String;

    move-result-object v5

    #getter for: Lcom/android/phone/BluetoothPhoneService$CallInfo;->mOldRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;
    invoke-static/range {p1 .. p1}, Lcom/android/phone/BluetoothPhoneService$CallInfo;->access$1200(Lcom/android/phone/BluetoothPhoneService$CallInfo;)Lcom/android/phone/BluetoothPhoneService$CallNumber;

    move-result-object v1

    #getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mType:I
    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$1400(Lcom/android/phone/BluetoothPhoneService$CallNumber;)I

    move-result v6

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/phone/BluetoothPhoneService;->updatePhoneStateChanged(IIILjava/lang/String;I)V

    .line 1006
    :cond_10
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BluetoothPhoneService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_11

    #getter for: Lcom/android/phone/BluetoothPhoneService$CallInfo;->mOldForegroundCallState:Lcom/android/internal/telephony/Call$State;
    invoke-static/range {p1 .. p1}, Lcom/android/phone/BluetoothPhoneService$CallInfo;->access$1100(Lcom/android/phone/BluetoothPhoneService$CallInfo;)Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v2, :cond_11

    .line 1008
    const-string v1, "handleSpecialCasesForDualTalk: Dilaing status is missed, add one for it"

    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1010
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v1, :cond_11

    .line 1011
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/phone/BluetoothPhoneService;->mNumActive:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    #getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mNumber:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$1300(Lcom/android/phone/BluetoothPhoneService$CallNumber;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    #getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mType:I
    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$1400(Lcom/android/phone/BluetoothPhoneService$CallNumber;)I

    move-result v6

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/phone/BluetoothPhoneService;->updatePhoneStateChanged(IIILjava/lang/String;I)V

    .line 1019
    :cond_11
    return-void
.end method

.method private isHFPConnected()Z
    .locals 3

    .prologue
    .line 593
    const/4 v1, 0x0

    .line 595
    .local v1, isConnected:Z
    iget-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v2, :cond_0

    .line 596
    iget-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 597
    .local v0, deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 598
    const/4 v1, 0x1

    .line 602
    .end local v0           #deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_0
    return v1
.end method

.method private isMultiTalksSwapped()Z
    .locals 5

    .prologue
    .line 568
    const-string v3, "[isMultiTalksSwapped]"

    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 569
    const/4 v0, 0x0

    .line 571
    .local v0, bCallSwapped:Z
    iget-object v3, p0, Lcom/android/phone/BluetoothPhoneService;->mBtDTUtil:Lcom/android/phone/BluetoothDualTalkUtils;

    invoke-virtual {v3}, Lcom/android/phone/BluetoothDualTalkUtils;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 572
    .local v1, call:Lcom/android/internal/telephony/Call;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 573
    .local v2, curInCallPhone:Lcom/android/internal/telephony/Phone;
    iget-object v3, p0, Lcom/android/phone/BluetoothPhoneService;->mPrevInCallPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v3, :cond_1

    .line 574
    iget-object v3, p0, Lcom/android/phone/BluetoothPhoneService;->mPrevInCallPhone:Lcom/android/internal/telephony/Phone;

    if-eq v3, v2, :cond_0

    const/4 v0, 0x1

    .line 575
    :goto_0
    iput-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mPrevInCallPhone:Lcom/android/internal/telephony/Phone;

    .line 581
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isMultiTalksSwapped: bCallSwapped="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 582
    const-string v3, "[[isMultiTalksSwapped]]"

    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 583
    return v0

    .line 574
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 578
    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/BluetoothPhoneService;->mPrevInCallPhone:Lcom/android/internal/telephony/Phone;

    goto :goto_1
.end method

.method private isRelaxMultiTalksRestrict()Z
    .locals 1

    .prologue
    .line 609
    iget-boolean v0, p0, Lcom/android/phone/BluetoothPhoneService;->mIsLimitDTCall:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized listCurrentCallsCdma()V
    .locals 9

    .prologue
    const/4 v7, 0x1

    .line 1618
    monitor-enter p0

    const/4 v6, 0x2

    :try_start_0
    new-array v0, v6, [Lcom/android/internal/telephony/Connection;

    .line 1619
    .local v0, clccConnections:[Lcom/android/internal/telephony/Connection;
    iget-object v6, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 1620
    .local v1, foregroundCall:Lcom/android/internal/telephony/Call;
    iget-object v6, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    .line 1622
    .local v4, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    .line 1625
    .local v5, ringingCallState:Lcom/android/internal/telephony/Call$State;
    sget-object v6, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_2

    .line 1626
    const-string v6, "Filling clccConnections[0] for INCOMING state"

    invoke-static {v6}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1627
    const/4 v6, 0x0

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    aput-object v7, v0, v6

    .line 1654
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v6

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v6}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v6

    sget-object v7, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->SINGLE_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v6, v7, :cond_5

    .line 1656
    iget-object v6, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x7

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 1657
    .local v3, msg:Landroid/os/Message;
    iget-object v6, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1665
    .end local v3           #msg:Landroid/os/Message;
    :cond_1
    :goto_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    array-length v6, v0

    if-ge v2, v6, :cond_6

    aget-object v6, v0, v2

    if-eqz v6, :cond_6

    .line 1666
    aget-object v6, v0, v2

    invoke-direct {p0, v2, v6}, Lcom/android/phone/BluetoothPhoneService;->sendClccResponseCdma(ILcom/android/internal/telephony/Connection;)V

    .line 1665
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1628
    .end local v2           #i:I
    :cond_2
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1630
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1631
    const-string v6, "Filling clccConnections[0] & [1] for CALL WAITING state"

    invoke-static {v6}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1632
    const/4 v6, 0x0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    aput-object v7, v0, v6

    .line 1633
    const/4 v6, 0x1

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    aput-object v7, v0, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1618
    .end local v0           #clccConnections:[Lcom/android/internal/telephony/Connection;
    .end local v1           #foregroundCall:Lcom/android/internal/telephony/Call;
    .end local v4           #ringingCall:Lcom/android/internal/telephony/Call;
    .end local v5           #ringingCallState:Lcom/android/internal/telephony/Call$State;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 1635
    .restart local v0       #clccConnections:[Lcom/android/internal/telephony/Connection;
    .restart local v1       #foregroundCall:Lcom/android/internal/telephony/Call;
    .restart local v4       #ringingCall:Lcom/android/internal/telephony/Call;
    .restart local v5       #ringingCallState:Lcom/android/internal/telephony/Call$State;
    :cond_3
    :try_start_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-gt v6, v7, :cond_4

    .line 1638
    const-string v6, "Filling clccConnections[0] with ForgroundCall latest connection"

    invoke-static {v6}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1640
    const/4 v6, 0x0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    aput-object v7, v0, v6

    goto :goto_0

    .line 1645
    :cond_4
    const-string v6, "Filling clccConnections[0] & [1] with ForgroundCall connections"

    invoke-static {v6}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1647
    const/4 v6, 0x0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    aput-object v7, v0, v6

    .line 1648
    const/4 v6, 0x1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    aput-object v7, v0, v6

    goto :goto_0

    .line 1658
    :cond_5
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v6

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v6}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v6

    sget-object v7, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v6, v7, :cond_1

    .line 1660
    iget-object v6, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x7

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 1661
    .restart local v3       #msg:Landroid/os/Message;
    iget-object v6, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 1668
    .end local v3           #msg:Landroid/os/Message;
    .restart local v2       #i:I
    :cond_6
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized listCurrentCallsEVDO()V
    .locals 14

    .prologue
    const/16 v12, 0x8

    .line 1749
    monitor-enter p0

    const/16 v11, 0x8

    :try_start_0
    new-array v3, v11, [Lcom/android/internal/telephony/Connection;

    .line 1750
    .local v3, clccConnections:[Lcom/android/internal/telephony/Connection;
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 1752
    .local v4, connections:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/internal/telephony/Connection;>;"
    iget-object v11, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    .line 1753
    .local v10, ringingCall:Lcom/android/internal/telephony/Call;
    iget-object v11, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getBackgroundCalls()Ljava/util/List;

    move-result-object v1

    .line 1754
    .local v1, bCalls:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    iget-object v11, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getForegroundCalls()Ljava/util/List;

    move-result-object v6

    .line 1756
    .local v6, fCalls:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1758
    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 1761
    :cond_0
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/Call;

    .line 1762
    .local v5, fCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1763
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1749
    .end local v1           #bCalls:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    .end local v3           #clccConnections:[Lcom/android/internal/telephony/Connection;
    .end local v4           #connections:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/internal/telephony/Connection;>;"
    .end local v5           #fCall:Lcom/android/internal/telephony/Call;
    .end local v6           #fCalls:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v10           #ringingCall:Lcom/android/internal/telephony/Call;
    :catchall_0
    move-exception v11

    monitor-exit p0

    throw v11

    .line 1767
    .restart local v1       #bCalls:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    .restart local v3       #clccConnections:[Lcom/android/internal/telephony/Connection;
    .restart local v4       #connections:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/internal/telephony/Connection;>;"
    .restart local v6       #fCalls:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    .restart local v8       #i$:Ljava/util/Iterator;
    .restart local v10       #ringingCall:Lcom/android/internal/telephony/Call;
    :cond_2
    :try_start_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 1768
    .local v0, bCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1769
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 1773
    .end local v0           #bCall:Lcom/android/internal/telephony/Call;
    :cond_4
    const/4 v7, 0x0

    .line 1774
    .local v7, i:I
    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Connection;

    .line 1775
    .local v2, c:Lcom/android/internal/telephony/Connection;
    if-ge v7, v12, :cond_5

    .line 1776
    aput-object v2, v3, v7

    .line 1777
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1780
    :cond_5
    const-string v11, "evdoGetClccResult : exceeds the connection number limit"

    invoke-static {v11}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 1785
    .end local v2           #c:Lcom/android/internal/telephony/Connection;
    :cond_6
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v11

    iget-object v11, v11, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v11}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v11

    sget-object v12, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->SINGLE_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v11, v12, :cond_8

    .line 1787
    iget-object v11, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    const/4 v12, 0x7

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 1788
    .local v9, msg:Landroid/os/Message;
    iget-object v11, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v11, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1796
    .end local v9           #msg:Landroid/os/Message;
    :cond_7
    :goto_3
    const/4 v7, 0x0

    :goto_4
    array-length v11, v3

    if-ge v7, v11, :cond_9

    aget-object v11, v3, v7

    if-eqz v11, :cond_9

    .line 1797
    aget-object v11, v3, v7

    invoke-direct {p0, v7, v11}, Lcom/android/phone/BluetoothPhoneService;->sendClccResponseEVDO(ILcom/android/internal/telephony/Connection;)V

    .line 1796
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 1789
    :cond_8
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v11

    iget-object v11, v11, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v11}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v11

    sget-object v12, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v11, v12, :cond_7

    .line 1791
    iget-object v11, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    const/4 v12, 0x7

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 1792
    .restart local v9       #msg:Landroid/os/Message;
    iget-object v11, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v11, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 1800
    .end local v9           #msg:Landroid/os/Message;
    :cond_9
    monitor-exit p0

    return-void
.end method

.method private listCurrentCallsGsm()V
    .locals 22

    .prologue
    .line 1516
    const/4 v2, 0x6

    .line 1519
    .local v2, MAX_CONNECTIONS:I
    new-array v5, v2, [Lcom/android/internal/telephony/Connection;

    .line 1521
    .local v5, clccConnections:[Lcom/android/internal/telephony/Connection;
    new-instance v16, Ljava/util/LinkedList;

    invoke-direct/range {v16 .. v16}, Ljava/util/LinkedList;-><init>()V

    .line 1522
    .local v16, newConnections:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/internal/telephony/Connection;>;"
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    .line 1524
    .local v7, connections:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/internal/telephony/Connection;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v11

    .line 1525
    .local v11, foregroundCall:Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 1526
    .local v3, backgroundCall:Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v17

    .line 1528
    .local v17, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v20

    if-eqz v20, :cond_0

    .line 1529
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 1531
    :cond_0
    invoke-virtual {v11}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v20

    if-eqz v20, :cond_1

    .line 1532
    invoke-virtual {v11}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 1534
    :cond_1
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v20

    if-eqz v20, :cond_2

    .line 1535
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 1540
    :cond_2
    new-array v6, v2, [Z

    .line 1541
    .local v6, clccUsed:[Z
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    if-ge v13, v2, :cond_3

    .line 1542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothPhoneService;->mClccUsed:[Z

    move-object/from16 v20, v0

    aget-boolean v20, v20, v13

    aput-boolean v20, v6, v13

    .line 1543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothPhoneService;->mClccUsed:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-boolean v21, v20, v13

    .line 1541
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 1545
    :cond_3
    invoke-virtual {v7}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_8

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/Connection;

    .line 1546
    .local v4, c:Lcom/android/internal/telephony/Connection;
    const/4 v12, 0x0

    .line 1547
    .local v12, found:Z
    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v18

    .line 1548
    .local v18, timestamp:J
    const/4 v13, 0x0

    :goto_2
    if-ge v13, v2, :cond_5

    .line 1549
    aget-boolean v20, v6, v13

    if-eqz v20, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothPhoneService;->mClccTimestamps:[J

    move-object/from16 v20, v0

    aget-wide v20, v20, v13

    cmp-long v20, v18, v20

    if-nez v20, :cond_6

    .line 1550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothPhoneService;->mClccUsed:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aput-boolean v21, v20, v13

    .line 1551
    const/4 v12, 0x1

    .line 1552
    aput-object v4, v5, v13

    .line 1556
    :cond_5
    if-nez v12, :cond_4

    .line 1557
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1548
    :cond_6
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 1579
    .end local v4           #c:Lcom/android/internal/telephony/Connection;
    .end local v12           #found:Z
    .end local v18           #timestamp:J
    .local v8, earliestConnection:Lcom/android/internal/telephony/Connection;
    .local v9, earliestTimestamp:J
    .local v15, j:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothPhoneService;->mClccUsed:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aput-boolean v21, v20, v13

    .line 1580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothPhoneService;->mClccTimestamps:[J

    move-object/from16 v20, v0

    aput-wide v9, v20, v13

    .line 1581
    aput-object v8, v5, v13

    .line 1582
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 1563
    .end local v8           #earliestConnection:Lcom/android/internal/telephony/Connection;
    .end local v9           #earliestTimestamp:J
    .end local v15           #j:I
    :cond_8
    invoke-virtual/range {v16 .. v16}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_b

    .line 1565
    const/4 v13, 0x0

    .line 1566
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothPhoneService;->mClccUsed:[Z

    move-object/from16 v20, v0

    aget-boolean v20, v20, v13

    if-eqz v20, :cond_9

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 1568
    :cond_9
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/internal/telephony/Connection;

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v9

    .line 1569
    .restart local v9       #earliestTimestamp:J
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/Connection;

    .line 1570
    .restart local v8       #earliestConnection:Lcom/android/internal/telephony/Connection;
    const/4 v15, 0x0

    .restart local v15       #j:I
    :goto_4
    invoke-virtual/range {v16 .. v16}, Ljava/util/LinkedList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v15, v0, :cond_7

    .line 1571
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/internal/telephony/Connection;

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v18

    .line 1572
    .restart local v18       #timestamp:J
    cmp-long v20, v18, v9

    if-gez v20, :cond_a

    .line 1573
    move-wide/from16 v9, v18

    .line 1574
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #earliestConnection:Lcom/android/internal/telephony/Connection;
    check-cast v8, Lcom/android/internal/telephony/Connection;

    .line 1570
    .restart local v8       #earliestConnection:Lcom/android/internal/telephony/Connection;
    :cond_a
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 1586
    .end local v8           #earliestConnection:Lcom/android/internal/telephony/Connection;
    .end local v9           #earliestTimestamp:J
    .end local v15           #j:I
    .end local v18           #timestamp:J
    :cond_b
    const/4 v13, 0x0

    :goto_5
    array-length v0, v5

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v13, v0, :cond_d

    .line 1587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothPhoneService;->mClccUsed:[Z

    move-object/from16 v20, v0

    aget-boolean v20, v20, v13

    if-eqz v20, :cond_c

    .line 1588
    aget-object v20, v5, v13

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v13, v1}, Lcom/android/phone/BluetoothPhoneService;->sendClccResponseGsm(ILcom/android/internal/telephony/Connection;)V

    .line 1586
    :cond_c
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 1591
    :cond_d
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 2930
    const-string v0, "BluetoothPhoneService"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2931
    return-void
.end method

.method private registerPhoneEvents(Z)V
    .locals 7
    .parameter "register"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2980
    const-string v2, "BluetoothPhoneService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerPhoneEvents:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Gemini:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2982
    if-eqz p1, :cond_0

    .line 2983
    invoke-static {}, Lcom/android/phone/BluetoothPhoneService;->getSimCount()I

    move-result v1

    .line 2984
    .local v1, simNum:I
    const/4 v0, 0x0

    .local v0, simID:I
    :goto_0
    add-int/lit8 v2, v1, 0x0

    if-ge v0, v2, :cond_1

    .line 2985
    iget-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mMCM:Lcom/android/internal/telephony/gemini/MTKCallManager;

    iget-object v3, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v6, v4, v0}, Lcom/android/internal/telephony/gemini/MTKCallManager;->registerForServiceStateChangedGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 2986
    iget-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mMCM:Lcom/android/internal/telephony/gemini/MTKCallManager;

    iget-object v3, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/internal/telephony/gemini/MTKCallManager;->registerForPreciseCallStateChangedGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 2987
    iget-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mMCM:Lcom/android/internal/telephony/gemini/MTKCallManager;

    iget-object v3, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/internal/telephony/gemini/MTKCallManager;->registerForCallWaitingGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 2988
    iget-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mMCM:Lcom/android/internal/telephony/gemini/MTKCallManager;

    iget-object v3, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x9

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/internal/telephony/gemini/MTKCallManager;->registerForIncomingRingGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 2996
    iget-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mMCM:Lcom/android/internal/telephony/gemini/MTKCallManager;

    iget-object v3, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x8

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/internal/telephony/gemini/MTKCallManager;->registerForDisconnectGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 3001
    iget-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mMCM:Lcom/android/internal/telephony/gemini/MTKCallManager;

    iget-object v3, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xd

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/internal/telephony/gemini/MTKCallManager;->registerForVtRingInfoGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 2984
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3006
    .end local v0           #simID:I
    .end local v1           #simNum:I
    :cond_0
    invoke-static {}, Lcom/android/phone/BluetoothPhoneService;->getSimCount()I

    move-result v1

    .line 3007
    .restart local v1       #simNum:I
    const/4 v0, 0x0

    .restart local v0       #simID:I
    :goto_1
    add-int/lit8 v2, v1, 0x0

    if-ge v0, v2, :cond_1

    .line 3008
    iget-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mMCM:Lcom/android/internal/telephony/gemini/MTKCallManager;

    iget-object v3, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForServiceStateChangedGemini(Landroid/os/Handler;I)V

    .line 3009
    iget-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mMCM:Lcom/android/internal/telephony/gemini/MTKCallManager;

    iget-object v3, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForPreciseCallStateChangedGemini(Landroid/os/Handler;I)V

    .line 3010
    iget-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mMCM:Lcom/android/internal/telephony/gemini/MTKCallManager;

    iget-object v3, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForIncomingRingGemini(Landroid/os/Handler;I)V

    .line 3011
    iget-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mMCM:Lcom/android/internal/telephony/gemini/MTKCallManager;

    iget-object v3, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForCallWaitingGemini(Landroid/os/Handler;I)V

    .line 3015
    iget-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mMCM:Lcom/android/internal/telephony/gemini/MTKCallManager;

    iget-object v3, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForDisconnectGemini(Landroid/os/Handler;I)V

    .line 3020
    iget-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mMCM:Lcom/android/internal/telephony/gemini/MTKCallManager;

    iget-object v3, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForVtRingInfoGemini(Landroid/os/Handler;I)V

    .line 3007
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3060
    :cond_1
    return-void
.end method

.method private resetCdmaHoldTime()V
    .locals 1

    .prologue
    .line 528
    const-string v0, "[resetCdmaHoldTime]"

    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 529
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mHashCdmaHoldTime:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mHashCdmaHoldTime:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 534
    :goto_0
    const-string v0, "[[resetCdmaHoldTime]]"

    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 535
    return-void

    .line 532
    :cond_0
    const-string v0, "updateCdmaHoldTime: mHashCdmaHoldTime = null"

    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private resetMultiTalksSwapData()V
    .locals 1

    .prologue
    .line 587
    const-string v0, "[resetMultiTalksSwapData]"

    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 588
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mPrevInCallPhone:Lcom/android/internal/telephony/Phone;

    .line 589
    const-string v0, "[[resetMultiTalksSwapData]]"

    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 590
    return-void
.end method

.method private restrictMultiTalks(Z)Z
    .locals 4
    .parameter "bIsConnected"

    .prologue
    .line 793
    const-string v2, "[restrictMultiTalks]"

    invoke-static {v2}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 794
    const/4 v0, 0x0

    .line 796
    .local v0, bHasRestrictOccurred:Z
    iget-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mBtDTUtil:Lcom/android/phone/BluetoothDualTalkUtils;

    invoke-virtual {v2}, Lcom/android/phone/BluetoothDualTalkUtils;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 797
    .local v1, ringingCall:Lcom/android/internal/telephony/Call;
    const-string v2, "restrictMultiTalks: ringingCall="

    invoke-virtual {p0, v2, v1}, Lcom/android/phone/BluetoothPhoneService;->dumpCallDetails(Ljava/lang/String;Lcom/android/internal/telephony/Call;)V

    .line 798
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 801
    invoke-direct {p0, v1}, Lcom/android/phone/BluetoothPhoneService;->executeIORestrictIfNeed(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 802
    const/4 v0, 0x1

    .line 804
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/android/phone/BluetoothPhoneService;->executeIIRestrictIfNeed(ZLcom/android/internal/telephony/Call;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 805
    const/4 v0, 0x1

    .line 809
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothPhoneService;->executeHHRestrictIfNeed(Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 810
    const/4 v0, 0x1

    .line 812
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restrictMultiTalks:bHasRestrictOccurred="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 813
    const-string v2, "[[restrictMultiTalks]]"

    invoke-static {v2}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 814
    return v0
.end method

.method private sendClccResponseCdma(ILcom/android/internal/telephony/Connection;)V
    .locals 13
    .parameter "index"
    .parameter "connection"

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 1673
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v8

    .line 1674
    .local v8, app:Lcom/android/phone/PhoneApp;
    iget-object v1, v8, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v1}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v10

    .line 1676
    .local v10, currCdmaCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    iget-object v1, v8, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v1}, Lcom/android/phone/CdmaPhoneCallState;->getPreviousCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v11

    .line 1679
    .local v11, prevCdmaCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v11, v1, :cond_1

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v10, v1, :cond_1

    .line 1683
    const/4 v3, 0x0

    .line 1719
    .local v3, state:I
    :goto_0
    const/4 v5, 0x0

    .line 1720
    .local v5, mpty:Z
    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v10, v1, :cond_0

    .line 1721
    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v11, v1, :cond_0

    .line 1724
    const/4 v5, 0x1

    .line 1733
    :cond_0
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v1

    if-eqz v1, :cond_5

    move v2, v0

    .line 1735
    .local v2, direction:I
    :goto_1
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v6

    .line 1736
    .local v6, number:Ljava/lang/String;
    const/4 v7, -0x1

    .line 1737
    .local v7, type:I
    if-eqz v6, :cond_6

    .line 1738
    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v7

    .line 1743
    :goto_2
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual/range {v0 .. v7}, Landroid/bluetooth/BluetoothHeadset;->clccResponse(IIIIZLjava/lang/String;I)V

    .line 1744
    .end local v2           #direction:I
    .end local v3           #state:I
    .end local v5           #mpty:Z
    .end local v6           #number:Ljava/lang/String;
    .end local v7           #type:I
    :goto_3
    return-void

    .line 1685
    :cond_1
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    .line 1686
    .local v9, callState:Lcom/android/internal/telephony/Call$State;
    sget-object v1, Lcom/android/phone/BluetoothPhoneService$4;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v12

    aget v1, v1, v12

    packed-switch v1, :pswitch_data_0

    .line 1714
    const-string v0, "BluetoothPhoneService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bad call state: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1692
    :pswitch_0
    if-nez p1, :cond_3

    .line 1693
    iget-boolean v1, p0, Lcom/android/phone/BluetoothPhoneService;->mCdmaIsSecondCallActive:Z

    if-eqz v1, :cond_2

    move v3, v0

    .restart local v3       #state:I
    :goto_4
    goto :goto_0

    .end local v3           #state:I
    :cond_2
    move v3, v4

    goto :goto_4

    .line 1695
    :cond_3
    iget-boolean v1, p0, Lcom/android/phone/BluetoothPhoneService;->mCdmaIsSecondCallActive:Z

    if-eqz v1, :cond_4

    move v3, v4

    .line 1697
    .restart local v3       #state:I
    :goto_5
    goto :goto_0

    .end local v3           #state:I
    :cond_4
    move v3, v0

    .line 1695
    goto :goto_5

    .line 1699
    :pswitch_1
    const/4 v3, 0x1

    .line 1700
    .restart local v3       #state:I
    goto :goto_0

    .line 1702
    .end local v3           #state:I
    :pswitch_2
    const/4 v3, 0x2

    .line 1703
    .restart local v3       #state:I
    goto :goto_0

    .line 1705
    .end local v3           #state:I
    :pswitch_3
    const/4 v3, 0x3

    .line 1706
    .restart local v3       #state:I
    goto :goto_0

    .line 1708
    .end local v3           #state:I
    :pswitch_4
    const/4 v3, 0x4

    .line 1709
    .restart local v3       #state:I
    goto :goto_0

    .line 1711
    .end local v3           #state:I
    :pswitch_5
    const/4 v3, 0x5

    .line 1712
    .restart local v3       #state:I
    goto :goto_0

    .end local v9           #callState:Lcom/android/internal/telephony/Call$State;
    .restart local v5       #mpty:Z
    :cond_5
    move v2, v4

    .line 1733
    goto :goto_1

    .line 1740
    .restart local v2       #direction:I
    .restart local v6       #number:Ljava/lang/String;
    .restart local v7       #type:I
    :cond_6
    const-string v6, ""

    goto :goto_2

    .line 1686
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private sendClccResponseEVDO(ILcom/android/internal/telephony/Connection;)V
    .locals 20
    .parameter "index"
    .parameter "c"

    .prologue
    .line 1806
    const/4 v4, 0x0

    .line 1807
    .local v4, state:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[API] evdoConnectionToClccEntry : index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1809
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v18

    .line 1811
    .local v18, phoneType:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    .line 1812
    .local v10, backgroundCall:Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v15

    .line 1813
    .local v15, foregroundCall:Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getForegroundCalls()Ljava/util/List;

    move-result-object v14

    .line 1815
    .local v14, fCalls:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v9

    .line 1816
    .local v9, app:Lcom/android/phone/PhoneApp;
    iget-object v1, v9, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v1}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v12

    .line 1818
    .local v12, currCdmaCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    iget-object v1, v9, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v1}, Lcom/android/phone/CdmaPhoneCallState;->getPreviousCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v19

    .line 1821
    .local v19, prevCdmaCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    const/4 v1, 0x2

    move/from16 v0, v18

    if-ne v0, v1, :cond_3

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-object/from16 v0, v19

    if-ne v0, v1, :cond_3

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v12, v1, :cond_3

    .line 1824
    const-string v1, "evdoConnectionToClccEntry : CDMA THRWAY to CONF CALL"

    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1825
    const/4 v4, 0x0

    .line 1896
    :cond_0
    :goto_0
    const/4 v6, 0x0

    .line 1897
    .local v6, mpty:Z
    const/4 v1, 0x2

    move/from16 v0, v18

    if-ne v0, v1, :cond_10

    .line 1898
    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v12, v1, :cond_f

    .line 1899
    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-object/from16 v0, v19

    if-ne v0, v1, :cond_e

    .line 1902
    const/4 v6, 0x1

    .line 1921
    :cond_1
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v3, 0x1

    .line 1923
    .local v3, direction:I
    :goto_2
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v7

    .line 1925
    .local v7, number:Ljava/lang/String;
    const/4 v8, -0x1

    .line 1926
    .local v8, type:I
    if-eqz v7, :cond_2

    .line 1927
    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v8

    .line 1930
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    add-int/lit8 v2, p1, 0x1

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/bluetooth/BluetoothHeadset;->clccResponse(IIIIZLjava/lang/String;I)V

    .line 1932
    .end local v3           #direction:I
    .end local v6           #mpty:Z
    .end local v7           #number:Ljava/lang/String;
    .end local v8           #type:I
    :goto_3
    return-void

    .line 1827
    :cond_3
    sget-object v1, Lcom/android/phone/BluetoothPhoneService$4;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_3

    .line 1830
    :pswitch_0
    const/4 v1, 0x2

    move/from16 v0, v18

    if-ne v0, v1, :cond_a

    .line 1831
    const/16 v16, 0x0

    .line 1832
    .local v16, found:Z
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/Call;

    .line 1833
    .local v13, fCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v13}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v18

    .line 1834
    const/4 v1, 0x2

    move/from16 v0, v18

    if-ne v0, v1, :cond_4

    .line 1835
    invoke-virtual {v13}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_6

    .line 1837
    const-string v1, "evdoConnectionToClccEntry : single CDMA call"

    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1838
    const/4 v4, 0x0

    .line 1851
    :goto_4
    const/16 v16, 0x1

    .line 1855
    .end local v13           #fCall:Lcom/android/internal/telephony/Call;
    :cond_5
    if-nez v16, :cond_0

    .line 1856
    const-string v1, "evdoConnectionToClccEntry : can\'t match CDMA call"

    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 1842
    .restart local v13       #fCall:Lcom/android/internal/telephony/Call;
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "evdoConnectionToClccEntry : multi CDMA call, mCdmaIsSecondCallActive ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/phone/BluetoothPhoneService;->mCdmaIsSecondCallActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1843
    invoke-virtual {v13}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    move-object/from16 v0, p2

    if-ne v0, v1, :cond_8

    .line 1844
    const-string v1, "evdoConnectionToClccEntry : earliest connection"

    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1845
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/phone/BluetoothPhoneService;->mCdmaIsSecondCallActive:Z

    if-eqz v1, :cond_7

    const/4 v4, 0x1

    :goto_5
    goto :goto_4

    :cond_7
    const/4 v4, 0x0

    goto :goto_5

    .line 1847
    :cond_8
    const-string v1, "evdoConnectionToClccEntry : last connection"

    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1848
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/phone/BluetoothPhoneService;->mCdmaIsSecondCallActive:Z

    if-eqz v1, :cond_9

    const/4 v4, 0x0

    :goto_6
    goto :goto_4

    :cond_9
    const/4 v4, 0x1

    goto :goto_6

    .line 1859
    .end local v13           #fCall:Lcom/android/internal/telephony/Call;
    .end local v16           #found:Z
    .end local v17           #i$:Ljava/util/Iterator;
    :cond_a
    const/4 v1, 0x1

    move/from16 v0, v18

    if-ne v0, v1, :cond_b

    .line 1860
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1863
    :cond_b
    const-string v1, "evdoConnectionToClccEntry : wrong phone type for ACTIVE connection"

    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1870
    :pswitch_1
    const/4 v4, 0x1

    .line 1871
    goto/16 :goto_0

    .line 1873
    :pswitch_2
    const/4 v4, 0x2

    .line 1874
    goto/16 :goto_0

    .line 1876
    :pswitch_3
    const/4 v4, 0x3

    .line 1877
    goto/16 :goto_0

    .line 1880
    :pswitch_4
    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {v15}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1881
    :cond_c
    const-string v1, "evdoConnectionToClccEntry : INCOMING with holding or active call, switch to WAITING"

    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 1882
    const/4 v4, 0x5

    goto/16 :goto_0

    .line 1884
    :cond_d
    const/4 v4, 0x4

    .line 1886
    goto/16 :goto_0

    .line 1889
    :pswitch_5
    const/4 v4, 0x4

    .line 1890
    goto/16 :goto_0

    .line 1909
    .restart local v6       #mpty:Z
    :cond_e
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 1912
    :cond_f
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 1914
    :cond_10
    const/4 v1, 0x1

    move/from16 v0, v18

    if-ne v0, v1, :cond_1

    .line 1915
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v11

    .line 1916
    .local v11, call:Lcom/android/internal/telephony/Call;
    if-eqz v11, :cond_1

    .line 1917
    invoke-virtual {v11}, Lcom/android/internal/telephony/Call;->isMultiparty()Z

    move-result v6

    goto/16 :goto_1

    .line 1921
    .end local v11           #call:Lcom/android/internal/telephony/Call;
    :cond_11
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 1827
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private sendClccResponseGsm(ILcom/android/internal/telephony/Connection;)V
    .locals 9
    .parameter "index"
    .parameter "connection"

    .prologue
    const/4 v4, 0x0

    .line 1595
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->convertCallState(Lcom/android/internal/telephony/Call$State;)I

    move-result v3

    .line 1596
    .local v3, state:I
    const/4 v5, 0x0

    .line 1597
    .local v5, mpty:Z
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    .line 1598
    .local v8, call:Lcom/android/internal/telephony/Call;
    if-eqz v8, :cond_0

    .line 1599
    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->isMultiparty()Z

    move-result v5

    .line 1602
    :cond_0
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    .line 1604
    .local v2, direction:I
    :goto_0
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v6

    .line 1605
    .local v6, number:Ljava/lang/String;
    const/4 v7, -0x1

    .line 1606
    .local v7, type:I
    if-eqz v6, :cond_1

    .line 1607
    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v7

    .line 1610
    :cond_1
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual/range {v0 .. v7}, Landroid/bluetooth/BluetoothHeadset;->clccResponse(IIIIZLjava/lang/String;I)V

    .line 1611
    return-void

    .end local v2           #direction:I
    .end local v6           #number:Ljava/lang/String;
    .end local v7           #type:I
    :cond_2
    move v2, v4

    .line 1602
    goto :goto_0
.end method

.method private setPrevCallState(Lcom/android/internal/telephony/Call;)V
    .locals 3
    .parameter "callObj"

    .prologue
    .line 491
    const/4 v0, 0x0

    .line 493
    .local v0, state:Lcom/android/internal/telephony/Call$State;
    if-nez p1, :cond_0

    .line 500
    :goto_0
    return-void

    .line 496
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 498
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPrevCallState: Call="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 499
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService;->mCallStates:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private updateBtPhoneStateAfterRadioTechnologyChange()V
    .locals 2

    .prologue
    .line 338
    const-string v0, "BluetoothPhoneService"

    const-string v1, "updateBtPhoneStateAfterRadioTechnologyChange..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/BluetoothPhoneService;->registerPhoneEvents(Z)V

    .line 340
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/BluetoothPhoneService;->registerPhoneEvents(Z)V

    .line 341
    return-void
.end method

.method private updateCdmaHoldTime(Z)V
    .locals 7
    .parameter "bCanSwapInDiffSim"

    .prologue
    .line 538
    const-string v5, "[updateCdmaHoldTime]"

    invoke-static {v5}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 539
    if-eqz p1, :cond_4

    .line 540
    iget-object v5, p0, Lcom/android/phone/BluetoothPhoneService;->mHashCdmaHoldTime:Ljava/util/HashMap;

    if-eqz v5, :cond_3

    .line 541
    iget-object v5, p0, Lcom/android/phone/BluetoothPhoneService;->mBtDTUtil:Lcom/android/phone/BluetoothDualTalkUtils;

    invoke-virtual {v5}, Lcom/android/phone/BluetoothDualTalkUtils;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 542
    .local v1, foregroundCall:Lcom/android/internal/telephony/Call;
    const/4 v5, 0x1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    if-ne v5, v6, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 543
    iget-object v5, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getForegroundCalls()Ljava/util/List;

    move-result-object v4

    .line 544
    .local v4, listCall:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 545
    .local v0, c:Lcom/android/internal/telephony/Call;
    const/4 v5, 0x2

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    if-ne v5, v6, :cond_0

    sget-object v5, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    if-ne v5, v6, :cond_0

    iget-object v5, p0, Lcom/android/phone/BluetoothPhoneService;->mHashCdmaHoldTime:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 547
    invoke-direct {p0, v0}, Lcom/android/phone/BluetoothPhoneService;->generateCdmaHoldTime(Lcom/android/internal/telephony/Call;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 548
    .local v3, l:Ljava/lang/Long;
    iget-object v5, p0, Lcom/android/phone/BluetoothPhoneService;->mHashCdmaHoldTime:Ljava/util/HashMap;

    invoke-virtual {v5, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 550
    .end local v3           #l:Ljava/lang/Long;
    :cond_0
    const-string v5, "updateCdmaHoldTime: c is already in hash"

    invoke-static {v5}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 551
    const-string v5, "call"

    invoke-virtual {p0, v5, v0}, Lcom/android/phone/BluetoothPhoneService;->dumpCallDetails(Ljava/lang/String;Lcom/android/internal/telephony/Call;)V

    goto :goto_0

    .line 555
    .end local v0           #c:Lcom/android/internal/telephony/Call;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #listCall:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/BluetoothPhoneService;->resetCdmaHoldTime()V

    .line 563
    .end local v1           #foregroundCall:Lcom/android/internal/telephony/Call;
    :cond_2
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateCdmaHoldTime: mHashCdmaHoldTime="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/BluetoothPhoneService;->mHashCdmaHoldTime:Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 564
    const-string v5, "[[updateCdmaHoldTime]]"

    invoke-static {v5}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 565
    return-void

    .line 558
    :cond_3
    const-string v5, "updateCdmaHoldTime: mHashCdmaHoldTime = null"

    invoke-static {v5}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 561
    :cond_4
    invoke-direct {p0}, Lcom/android/phone/BluetoothPhoneService;->resetCdmaHoldTime()V

    goto :goto_1
.end method

.method private updatePhoneStateChanged(IIILjava/lang/String;I)V
    .locals 6
    .parameter "numActive"
    .parameter "numHeld"
    .parameter "callState"
    .parameter "number"
    .parameter "type"

    .prologue
    .line 862
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePhoneStateChanged: numActive:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " numHeld:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " callState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " number:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 863
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/BluetoothHeadset;->phoneStateChanged(IIILjava/lang/String;I)V

    .line 865
    return-void
.end method

.method private updateServiceState(Landroid/telephony/ServiceState;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 344
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    .line 346
    .local v0, roam:Z
    iget-boolean v1, p0, Lcom/android/phone/BluetoothPhoneService;->mRoam:Z

    if-eq v0, v1, :cond_0

    .line 347
    iput-boolean v0, p0, Lcom/android/phone/BluetoothPhoneService;->mRoam:Z

    .line 348
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v1, :cond_0

    .line 349
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothHeadset;->roamChanged(Z)V

    .line 352
    :cond_0
    return-void
.end method


# virtual methods
.method chooseTheLatterCall(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Call;
    .locals 4
    .parameter "c1"
    .parameter "c2"

    .prologue
    .line 428
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_0
    move-object p1, p2

    goto :goto_0
.end method

.method dumpCallDetails(Ljava/lang/String;Lcom/android/internal/telephony/Call;)V
    .locals 2
    .parameter "callName"
    .parameter "call"

    .prologue
    .line 356
    const-string v0, "[dumpCallDetails]"

    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dumpCallDetails: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 358
    if-eqz p2, :cond_0

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dumpCallDetails: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".getConnections()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dumpCallDetails: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".getPhone()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 362
    :cond_0
    const-string v0, "[[dumpCallDetails]]"

    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 363
    return-void
.end method

.method dumpCurrentCallStatus()V
    .locals 6

    .prologue
    .line 366
    const-string v4, "[dumpCurrentCallStatus]"

    invoke-static {v4}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 368
    const/4 v2, 0x0

    .line 369
    .local v2, listCall:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    const/4 v3, 0x0

    .line 371
    .local v3, listConn:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    const-string v4, "dumpCurrentCallStatus: dump Foreground Calls"

    invoke-static {v4}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 372
    iget-object v4, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getForegroundCalls()Ljava/util/List;

    move-result-object v2

    .line 373
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dumpCurrentCallStatus: Foreground Calls ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 374
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 375
    .local v0, c:Lcom/android/internal/telephony/Call;
    const-string v4, "fg call="

    invoke-virtual {p0, v4, v0}, Lcom/android/phone/BluetoothPhoneService;->dumpCallDetails(Ljava/lang/String;Lcom/android/internal/telephony/Call;)V

    goto :goto_0

    .line 378
    .end local v0           #c:Lcom/android/internal/telephony/Call;
    :cond_0
    const-string v4, "dumpCurrentCallStatus: dump Background Calls"

    invoke-static {v4}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 379
    iget-object v4, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getBackgroundCalls()Ljava/util/List;

    move-result-object v2

    .line 380
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dumpCurrentCallStatus: Background Calls ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 381
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 382
    .restart local v0       #c:Lcom/android/internal/telephony/Call;
    const-string v4, "bg call="

    invoke-virtual {p0, v4, v0}, Lcom/android/phone/BluetoothPhoneService;->dumpCallDetails(Ljava/lang/String;Lcom/android/internal/telephony/Call;)V

    goto :goto_1

    .line 385
    .end local v0           #c:Lcom/android/internal/telephony/Call;
    :cond_1
    const-string v4, "dumpCurrentCallStatus: dump Ringing Calls"

    invoke-static {v4}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 386
    iget-object v4, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getRingingCalls()Ljava/util/List;

    move-result-object v2

    .line 387
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dumpCurrentCallStatus: Ringing Calls ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 388
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 389
    .restart local v0       #c:Lcom/android/internal/telephony/Call;
    const-string v4, "rg call="

    invoke-virtual {p0, v4, v0}, Lcom/android/phone/BluetoothPhoneService;->dumpCallDetails(Ljava/lang/String;Lcom/android/internal/telephony/Call;)V

    goto :goto_2

    .line 392
    .end local v0           #c:Lcom/android/internal/telephony/Call;
    :cond_2
    const-string v4, "[[dumpCurrentCallStatus]]"

    invoke-static {v4}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 393
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mBinder:Landroid/bluetooth/IBluetoothHeadsetPhone$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 156
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 157
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 159
    invoke-static {}, Lcom/android/internal/telephony/gemini/MTKCallManager;->getInstance()Lcom/android/internal/telephony/gemini/MTKCallManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mMCM:Lcom/android/internal/telephony/gemini/MTKCallManager;

    .line 161
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 162
    iget-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v2, :cond_1

    .line 163
    const-string v2, "BluetoothPhoneService"

    const-string v3, "mAdapter null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_0
    return-void

    .line 167
    :cond_1
    const-string v2, "power"

    invoke-virtual {p0, v2}, Lcom/android/phone/BluetoothPhoneService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mPowerManager:Landroid/os/PowerManager;

    .line 168
    iget-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mPowerManager:Landroid/os/PowerManager;

    const-string v3, "BluetoothPhoneService:StartCall"

    invoke-virtual {v2, v5, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 170
    iget-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 172
    iget-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v3, p0, Lcom/android/phone/BluetoothPhoneService;->mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    invoke-virtual {v2, p0, v3, v5}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 174
    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    .line 175
    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mRingingCallState:Lcom/android/internal/telephony/Call$State;

    .line 176
    iput v4, p0, Lcom/android/phone/BluetoothPhoneService;->mNumActive:I

    .line 177
    iput v4, p0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    .line 179
    iput v4, p0, Lcom/android/phone/BluetoothPhoneService;->mOldNumActive:I

    .line 180
    iput v4, p0, Lcom/android/phone/BluetoothPhoneService;->mOldNumHeld:I

    .line 183
    new-instance v2, Lcom/android/phone/BluetoothPhoneService$CallNumber;

    const-string v3, ""

    invoke-direct {v2, p0, v3, v4, v6}, Lcom/android/phone/BluetoothPhoneService$CallNumber;-><init>(Lcom/android/phone/BluetoothPhoneService;Ljava/lang/String;ILcom/android/phone/BluetoothPhoneService$1;)V

    iput-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    .line 184
    iput-boolean v4, p0, Lcom/android/phone/BluetoothPhoneService;->mRoam:Z

    .line 186
    iget-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/BluetoothPhoneService;->updateServiceState(Landroid/telephony/ServiceState;)V

    .line 201
    invoke-direct {p0, v6}, Lcom/android/phone/BluetoothPhoneService;->handlePreciseCallStateChange(Lcom/android/internal/telephony/Connection;)V

    .line 204
    invoke-direct {p0, v5}, Lcom/android/phone/BluetoothPhoneService;->registerPhoneEvents(Z)V

    .line 215
    const/4 v0, 0x6

    .line 217
    .local v0, MAX_CONNECTIONS:I
    new-array v2, v0, [J

    iput-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mClccTimestamps:[J

    .line 218
    new-array v2, v0, [Z

    iput-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mClccUsed:[Z

    .line 219
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 220
    iget-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mClccUsed:[Z

    aput-boolean v4, v2, v1

    .line 219
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 237
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 238
    sget-boolean v0, Lcom/android/phone/BluetoothPhoneService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "Stopping Bluetooth BluetoothPhoneService Service"

    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 239
    :cond_0
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    .line 229
    const-string v0, "BluetoothPhoneService"

    const-string v1, "Stopping Bluetooth BluetoothPhoneService Service: device does not have BT"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-virtual {p0}, Lcom/android/phone/BluetoothPhoneService;->stopSelf()V

    .line 232
    :cond_0
    const-string v0, "BluetoothPhoneService"

    const-string v1, "BluetoothPhoneService started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    return-void
.end method
