.class public final Lcom/android/internal/telephony/gsm/GsmCallTracker;
.super Lcom/android/internal/telephony/CallTracker;
.source "GsmCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/GsmCallTracker$1;,
        Lcom/android/internal/telephony/gsm/GsmCallTracker$GsmCallTrackerReceiver;,
        Lcom/android/internal/telephony/gsm/GsmCallTracker$CrssAction;
    }
.end annotation


# static fields
.field private static final DBG_POLL:Z = true

.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field static final MAX_CONNECTIONS:I = 0x7

.field static final MAX_CONNECTIONS_PER_CALL:I = 0x5

.field private static final REPEAT_POLLING:Z

.field private static mPhoneNumberExt:Lcom/mediatek/common/telephony/IPhoneNumberExt;


# instance fields
.field backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

.field causeCode:I

.field connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

.field crssAction:Lcom/android/internal/telephony/gsm/GsmCallTracker$CrssAction;

.field delayedClirMode:I

.field delayedDialString:Ljava/lang/String;

.field delayedUUSInfo:Lcom/android/internal/telephony/UUSInfo;

.field desiredMute:Z

.field private dmAgent:Lcom/mediatek/common/dm/DmAgent;

.field droppedDuringPoll:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/GsmConnection;",
            ">;"
        }
    .end annotation
.end field

.field foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

.field hangupPendingMO:Z

.field hasPendingHangupRequest:Z

.field hasPendingReplaceRequest:Z

.field private hasSendAgpsStartIntent:Z

.field private isFullLock:Z

.field private isInLock:Z

.field isPendingSwap:Z

.field isSwitchBeforeDial:Z

.field protected mContext:Landroid/content/Context;

.field private mIsRejectedByMoms:Z

.field private mMobileManagerService:Lcom/mediatek/common/mom/IMobileManagerService;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private needHangupMOCall:Z

.field private needHangupMTCall:Z

.field pendingHangupRequest:I

.field pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

.field private pendingMTCallId:I

.field private pendingMTSeqNum:I

.field phone:Lcom/android/internal/telephony/gsm/GSMPhone;

.field ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

.field state:Lcom/android/internal/telephony/PhoneConstants$State;

.field voiceCallEndedRegistrants:Landroid/os/RegistrantList;

.field voiceCallIncomingIndicationRegistrants:Landroid/os/RegistrantList;

.field voiceCallStartedRegistrants:Landroid/os/RegistrantList;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 187
    :try_start_0
    const-class v1, Lcom/mediatek/common/telephony/IPhoneNumberExt;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/common/telephony/IPhoneNumberExt;

    sput-object v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhoneNumberExt:Lcom/mediatek/common/telephony/IPhoneNumberExt;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    .local v0, e:Ljava/lang/Exception;
    :goto_0
    return-void

    .line 188
    .end local v0           #e:Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 189
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 8
    .parameter "phone"

    .prologue
    const/4 v6, 0x7

    const/4 v3, 0x1

    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 200
    invoke-direct {p0}, Lcom/android/internal/telephony/CallTracker;-><init>()V

    .line 115
    new-array v5, v6, [Lcom/android/internal/telephony/gsm/GsmConnection;

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 116
    new-instance v5, Landroid/os/RegistrantList;

    invoke-direct {v5}, Landroid/os/RegistrantList;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->voiceCallEndedRegistrants:Landroid/os/RegistrantList;

    .line 117
    new-instance v5, Landroid/os/RegistrantList;

    invoke-direct {v5}, Landroid/os/RegistrantList;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->voiceCallStartedRegistrants:Landroid/os/RegistrantList;

    .line 118
    new-instance v5, Landroid/os/RegistrantList;

    invoke-direct {v5}, Landroid/os/RegistrantList;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->voiceCallIncomingIndicationRegistrants:Landroid/os/RegistrantList;

    .line 121
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    .line 125
    new-instance v5, Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-direct {v5, p0}, Lcom/android/internal/telephony/gsm/GsmCall;-><init>(Lcom/android/internal/telephony/gsm/GsmCallTracker;)V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    .line 127
    new-instance v5, Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-direct {v5, p0}, Lcom/android/internal/telephony/gsm/GsmCall;-><init>(Lcom/android/internal/telephony/gsm/GsmCallTracker;)V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    .line 129
    new-instance v5, Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-direct {v5, p0}, Lcom/android/internal/telephony/gsm/GsmCall;-><init>(Lcom/android/internal/telephony/gsm/GsmCallTracker;)V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    .line 136
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->desiredMute:Z

    .line 138
    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 141
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->isSwitchBeforeDial:Z

    .line 142
    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->delayedDialString:Ljava/lang/String;

    .line 143
    iput v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->delayedClirMode:I

    .line 144
    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->delayedUUSInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 145
    sget-object v5, Lcom/android/internal/telephony/gsm/GsmCallTracker$CrssAction;->NONE:Lcom/android/internal/telephony/gsm/GsmCallTracker$CrssAction;

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->crssAction:Lcom/android/internal/telephony/gsm/GsmCallTracker$CrssAction;

    .line 147
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->isPendingSwap:Z

    .line 149
    iput v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->causeCode:I

    .line 152
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hasPendingHangupRequest:Z

    .line 153
    iput v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingHangupRequest:I

    .line 156
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hasPendingReplaceRequest:Z

    .line 160
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hasSendAgpsStartIntent:Z

    .line 165
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->isInLock:Z

    .line 166
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->isFullLock:Z

    .line 167
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->needHangupMOCall:Z

    .line 168
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->needHangupMTCall:Z

    .line 174
    iput v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMTCallId:I

    .line 175
    iput v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMTSeqNum:I

    .line 180
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mIsRejectedByMoms:Z

    .line 201
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 202
    iget-object v5, p1, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    .line 204
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x2

    invoke-interface {v5, p0, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 206
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0x9

    invoke-interface {v5, p0, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 207
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0xa

    invoke-interface {v5, p0, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 208
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0x17

    invoke-interface {v5, p0, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 212
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mContext:Landroid/content/Context;

    .line 215
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0x11

    invoke-interface {v5, p0, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForCallProgressInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 217
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0x14

    invoke-interface {v5, p0, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->setOnIncomingCallIndication(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 221
    const-string v5, "DmAgent"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 222
    .local v0, binder:Landroid/os/IBinder;
    invoke-static {v0}, Lcom/mediatek/common/dm/DmAgent$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/dm/DmAgent;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dmAgent:Lcom/mediatek/common/dm/DmAgent;

    .line 224
    new-instance v1, Landroid/content/IntentFilter;

    const-string v5, "com.mediatek.dm.LAWMO_LOCK"

    invoke-direct {v1, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 225
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v5, "com.mediatek.dm.LAWMO_UNLOCK"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 227
    new-instance v5, Lcom/android/internal/telephony/gsm/GsmCallTracker$GsmCallTrackerReceiver;

    invoke-direct {v5, p0, v7}, Lcom/android/internal/telephony/gsm/GsmCallTracker$GsmCallTrackerReceiver;-><init>(Lcom/android/internal/telephony/gsm/GsmCallTracker;Lcom/android/internal/telephony/gsm/GsmCallTracker$1;)V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 228
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    .line 230
    .local v2, intent:Landroid/content/Intent;
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dmAgent:Lcom/mediatek/common/dm/DmAgent;

    if-eqz v5, :cond_0

    .line 231
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dmAgent:Lcom/mediatek/common/dm/DmAgent;

    invoke-interface {v5}, Lcom/mediatek/common/dm/DmAgent;->isLockFlagSet()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->isInLock:Z

    .line 232
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dmAgent:Lcom/mediatek/common/dm/DmAgent;

    invoke-interface {v5}, Lcom/mediatek/common/dm/DmAgent;->getLockType()I

    move-result v5

    if-ne v5, v3, :cond_1

    :goto_0
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->isFullLock:Z

    .line 233
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isInLock = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->isInLock:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isFullLock = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->isFullLock:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 234
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dmAgent:Lcom/mediatek/common/dm/DmAgent;

    invoke-interface {v3}, Lcom/mediatek/common/dm/DmAgent;->isHangMoCallLocking()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->needHangupMOCall:Z

    .line 235
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dmAgent:Lcom/mediatek/common/dm/DmAgent;

    invoke-interface {v3}, Lcom/mediatek/common/dm/DmAgent;->isHangMtCallLocking()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->needHangupMTCall:Z

    .line 236
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "needHangupMOCall = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->needHangupMOCall:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", needHangupMTCall = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->needHangupMTCall:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v3, v4

    .line 232
    goto :goto_0

    .line 238
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/gsm/GsmCallTracker;)Lcom/mediatek/common/dm/DmAgent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dmAgent:Lcom/mediatek/common/dm/DmAgent;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/gsm/GsmCallTracker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->isInLock:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/internal/telephony/gsm/GsmCallTracker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->isInLock:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/gsm/GsmCallTracker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->isFullLock:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/internal/telephony/gsm/GsmCallTracker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->isFullLock:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/gsm/GsmCallTracker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->needHangupMOCall:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/internal/telephony/gsm/GsmCallTracker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->needHangupMOCall:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/gsm/GsmCallTracker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->needHangupMTCall:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/internal/telephony/gsm/GsmCallTracker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->needHangupMTCall:Z

    return p1
.end method

.method private dumpState()V
    .locals 7

    .prologue
    .line 901
    const/4 v0, 0x0

    .line 902
    .local v0, callId:I
    const/4 v1, 0x0

    .line 904
    .local v1, count:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "* Phone State: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 906
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "* Ringing call: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GsmCall;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 908
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GsmCall;->getConnections()Ljava/util/List;

    move-result-object v3

    .line 909
    .local v3, l:Ljava/util/List;
    const/4 v2, 0x0

    .local v2, i:I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .local v4, s:I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 910
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 909
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 913
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "* Foreground call: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GsmCall;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", MPTY: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-boolean v6, v6, Lcom/android/internal/telephony/gsm/GsmCall;->isMptyCall:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 915
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GsmCall;->getConnections()Ljava/util/List;

    move-result-object v3

    .line 916
    const/4 v2, 0x0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    :goto_1
    if-ge v2, v4, :cond_1

    .line 917
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 916
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 920
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "* Background call: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GsmCall;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", MPTY: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-boolean v6, v6, Lcom/android/internal/telephony/gsm/GsmCall;->isMptyCall:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 922
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GsmCall;->getConnections()Ljava/util/List;

    move-result-object v3

    .line 923
    const/4 v2, 0x0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    :goto_2
    if-ge v2, v4, :cond_2

    .line 924
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 923
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 927
    :cond_2
    const/4 v2, 0x0

    const/4 v4, 0x7

    :goto_3
    if-ge v2, v4, :cond_4

    .line 928
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v5, v5, v2

    if-eqz v5, :cond_3

    .line 929
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v5, v5, v2

    iget v5, v5, Lcom/android/internal/telephony/gsm/GsmConnection;->index:I

    add-int/lit8 v0, v5, 0x1

    .line 930
    add-int/lit8 v1, v1, 0x1

    .line 931
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "* conn id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " existed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 927
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 934
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "* GsmCT has "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " connection"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 936
    return-void
.end method

.method private fakeHoldForegroundBeforeDial()V
    .locals 5

    .prologue
    .line 325
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 327
    .local v1, connCopy:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    const/4 v2, 0x0

    .local v2, i:I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .local v3, s:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 328
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 330
    .local v0, conn:Lcom/android/internal/telephony/gsm/GsmConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->fakeHoldBeforeDial()V

    .line 327
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 332
    .end local v0           #conn:Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_0
    return-void
.end method

.method private getCurrentTotalConnections()I
    .locals 4

    .prologue
    .line 2359
    const/4 v0, 0x0

    .line 2360
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    const/4 v2, 0x7

    .local v2, s:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 2361
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v3, v3, v1

    if-eqz v3, :cond_0

    .line 2362
    add-int/lit8 v0, v0, 0x1

    .line 2360
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2365
    :cond_1
    return v0
.end method

.method private getFailedService(I)Lcom/android/internal/telephony/Phone$SuppService;
    .locals 1
    .parameter "what"

    .prologue
    .line 1210
    packed-switch p1, :pswitch_data_0

    .line 1220
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/Phone$SuppService;->UNKNOWN:Lcom/android/internal/telephony/Phone$SuppService;

    :goto_0
    return-object v0

    .line 1212
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/Phone$SuppService;->SWITCH:Lcom/android/internal/telephony/Phone$SuppService;

    goto :goto_0

    .line 1214
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/Phone$SuppService;->CONFERENCE:Lcom/android/internal/telephony/Phone$SuppService;

    goto :goto_0

    .line 1216
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/Phone$SuppService;->SEPARATE:Lcom/android/internal/telephony/Phone$SuppService;

    goto :goto_0

    .line 1218
    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/Phone$SuppService;->TRANSFER:Lcom/android/internal/telephony/Phone$SuppService;

    goto :goto_0

    .line 1210
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private handleIncomingCallIndication(Landroid/os/AsyncResult;)V
    .locals 14
    .parameter "ar"

    .prologue
    .line 2159
    const/4 v7, 0x0

    .line 2160
    .local v7, mode:I
    iget-object v11, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v11, [Ljava/lang/String;

    move-object v6, v11

    check-cast v6, [Ljava/lang/String;

    .line 2161
    .local v6, incomingCallInfo:[Ljava/lang/String;
    const/4 v11, 0x0

    aget-object v11, v6, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2162
    .local v0, callId:I
    const/4 v11, 0x3

    aget-object v11, v6, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2163
    .local v1, callMode:I
    const/4 v11, 0x4

    aget-object v11, v6, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 2165
    .local v10, seqNumber:I
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mIsRejectedByMoms:Z

    .line 2167
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v12, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v11, v12, :cond_5

    .line 2168
    const/4 v7, 0x1

    .line 2194
    :cond_0
    :goto_0
    if-nez v7, :cond_2

    .line 2196
    :try_start_0
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mMobileManagerService:Lcom/mediatek/common/mom/IMobileManagerService;

    if-nez v11, :cond_1

    .line 2197
    const-string v11, "mobile"

    invoke-static {v11}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/mom/IMobileManagerService;

    move-result-object v11

    iput-object v11, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mMobileManagerService:Lcom/mediatek/common/mom/IMobileManagerService;

    .line 2200
    :cond_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getInterceptionEnabledSetting = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mMobileManagerService:Lcom/mediatek/common/mom/IMobileManagerService;

    invoke-interface {v12}, Lcom/mediatek/common/mom/IMobileManagerService;->getInterceptionEnabledSetting()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2201
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mMobileManagerService:Lcom/mediatek/common/mom/IMobileManagerService;

    invoke-interface {v11}, Lcom/mediatek/common/mom/IMobileManagerService;->getInterceptionEnabledSetting()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 2202
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 2203
    .local v8, parameter:Landroid/os/Bundle;
    const-string v11, "phoneNumber"

    const/4 v12, 0x1

    aget-object v12, v6, v12

    invoke-virtual {v8, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2204
    const-string v11, "callType"

    invoke-virtual {v8, v11, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2205
    const-string v11, "slotId"

    iget-object v12, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v12}, Lcom/android/internal/telephony/gsm/GSMPhone;->getMySimId()I

    move-result v12

    invoke-virtual {v8, v11, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2206
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mMobileManagerService:Lcom/mediatek/common/mom/IMobileManagerService;

    const/4 v12, 0x6

    const/4 v13, 0x0

    invoke-interface {v11, v12, v8, v13}, Lcom/mediatek/common/mom/IMobileManagerService;->triggerManagerApListener(ILandroid/os/Bundle;I)I

    move-result v9

    .line 2207
    .local v9, result:I
    if-nez v9, :cond_a

    const/4 v7, 0x0

    .line 2208
    :goto_1
    const/4 v11, 0x1

    if-ne v7, v11, :cond_b

    const/4 v11, 0x1

    :goto_2
    iput-boolean v11, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mIsRejectedByMoms:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2217
    .end local v8           #parameter:Landroid/os/Bundle;
    .end local v9           #result:I
    :cond_2
    :goto_3
    if-nez v7, :cond_3

    .line 2218
    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMTCallId:I

    .line 2219
    iput v10, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMTSeqNum:I

    .line 2220
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->voiceCallIncomingIndicationRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v11}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 2221
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "notify voiceCallIncomingIndicationRegistrants "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMTCallId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMTSeqNum:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2224
    :cond_3
    const/4 v11, 0x1

    if-ne v7, v11, :cond_4

    .line 2225
    new-instance v3, Lcom/android/internal/telephony/DriverCall;

    invoke-direct {v3}, Lcom/android/internal/telephony/DriverCall;-><init>()V

    .line 2226
    .local v3, dc:Lcom/android/internal/telephony/DriverCall;
    const/4 v11, 0x1

    iput-boolean v11, v3, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    .line 2227
    iput v0, v3, Lcom/android/internal/telephony/DriverCall;->index:I

    .line 2228
    sget-object v11, Lcom/android/internal/telephony/DriverCall$State;->WAITING:Lcom/android/internal/telephony/DriverCall$State;

    iput-object v11, v3, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    .line 2230
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v12

    invoke-interface {v11, v7, v0, v10, v12}, Lcom/android/internal/telephony/CommandsInterface;->setCallIndication(IIILandroid/os/Message;)V

    .line 2232
    if-nez v1, :cond_c

    .line 2233
    const/4 v11, 0x1

    iput-boolean v11, v3, Lcom/android/internal/telephony/DriverCall;->isVoice:Z

    .line 2234
    const/4 v11, 0x0

    iput-boolean v11, v3, Lcom/android/internal/telephony/DriverCall;->isVideo:Z

    .line 2244
    :goto_4
    const/4 v11, 0x1

    aget-object v11, v6, v11

    iput-object v11, v3, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 2245
    sget v11, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    iput v11, v3, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    .line 2246
    const/4 v11, 0x2

    aget-object v11, v6, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v3, Lcom/android/internal/telephony/DriverCall;->TOA:I

    .line 2247
    iget-object v11, v3, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iget v12, v3, Lcom/android/internal/telephony/DriverCall;->TOA:I

    invoke-static {v11, v12}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v3, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 2249
    new-instance v2, Lcom/android/internal/telephony/gsm/GsmConnection;

    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v11}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v2, v11, v3, p0, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/gsm/GsmCallTracker;I)V

    .line 2250
    .local v2, cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    sget-object v11, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-virtual {v2, v11}, Lcom/android/internal/telephony/gsm/GsmConnection;->onReplaceDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    .line 2252
    .end local v2           #cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    .end local v3           #dc:Lcom/android/internal/telephony/DriverCall;
    :cond_4
    return-void

    .line 2169
    :cond_5
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v12, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v11, v12, :cond_0

    .line 2170
    const/16 v11, 0xa

    if-ne v1, v11, :cond_7

    .line 2172
    const/4 v5, 0x0

    .local v5, i:I
    :goto_5
    const/4 v11, 0x7

    if-ge v5, v11, :cond_0

    .line 2173
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v2, v11, v5

    .line 2174
    .local v2, cn:Lcom/android/internal/telephony/Connection;
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->isVideo()Z

    move-result v11

    if-nez v11, :cond_6

    .line 2175
    const/4 v7, 0x1

    .line 2176
    goto/16 :goto_0

    .line 2172
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 2179
    .end local v2           #cn:Lcom/android/internal/telephony/Connection;
    .end local v5           #i:I
    :cond_7
    if-nez v1, :cond_9

    .line 2181
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_6
    const/4 v11, 0x7

    if-ge v5, v11, :cond_0

    .line 2182
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v2, v11, v5

    .line 2183
    .restart local v2       #cn:Lcom/android/internal/telephony/Connection;
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->isVideo()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 2184
    const/4 v7, 0x1

    .line 2185
    goto/16 :goto_0

    .line 2181
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 2189
    .end local v2           #cn:Lcom/android/internal/telephony/Connection;
    .end local v5           #i:I
    :cond_9
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 2207
    .restart local v8       #parameter:Landroid/os/Bundle;
    .restart local v9       #result:I
    :cond_a
    const/4 v7, 0x1

    goto/16 :goto_1

    .line 2208
    :cond_b
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 2210
    .end local v8           #parameter:Landroid/os/Bundle;
    .end local v9           #result:I
    :catch_0
    move-exception v4

    .line 2211
    .local v4, e:Landroid/os/RemoteException;
    const-string v11, "MoMS, Suppressing notification faild!"

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2236
    .end local v4           #e:Landroid/os/RemoteException;
    .restart local v3       #dc:Lcom/android/internal/telephony/DriverCall;
    :cond_c
    const/16 v11, 0xa

    if-ne v1, v11, :cond_d

    .line 2237
    const/4 v11, 0x0

    iput-boolean v11, v3, Lcom/android/internal/telephony/DriverCall;->isVoice:Z

    .line 2238
    const/4 v11, 0x1

    iput-boolean v11, v3, Lcom/android/internal/telephony/DriverCall;->isVideo:Z

    goto :goto_4

    .line 2241
    :cond_d
    const/4 v11, 0x0

    iput-boolean v11, v3, Lcom/android/internal/telephony/DriverCall;->isVoice:Z

    .line 2242
    const/4 v11, 0x0

    iput-boolean v11, v3, Lcom/android/internal/telephony/DriverCall;->isVideo:Z

    goto/16 :goto_4
.end method

.method private handleRadioNotAvailable()V
    .locals 2

    .prologue
    .line 892
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->lastRelevantPoll:Landroid/os/Message;

    .line 893
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->lastRelevantPoll:Landroid/os/Message;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCurrentCalls(Landroid/os/Message;)V

    .line 895
    return-void
.end method

.method private internalClearDisconnected()V
    .locals 1

    .prologue
    .line 591
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->clearDisconnected()V

    .line 592
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->clearDisconnected()V

    .line 593
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->clearDisconnected()V

    .line 594
    return-void
.end method

.method private obtainCompleteMessage()Landroid/os/Message;
    .locals 1

    .prologue
    .line 602
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method private obtainCompleteMessage(I)Landroid/os/Message;
    .locals 2
    .parameter "what"

    .prologue
    .line 611
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingOperations:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingOperations:I

    .line 612
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->lastRelevantPoll:Landroid/os/Message;

    .line 613
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->needsPoll:Z

    .line 615
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "obtainCompleteMessage: pendingOperations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingOperations:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", needsPoll="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->needsPoll:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 618
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method private operationComplete()V
    .locals 2

    .prologue
    .line 623
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingOperations:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingOperations:I

    .line 625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "operationComplete: pendingOperations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingOperations:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", needsPoll="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->needsPoll:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hasPendingReplaceRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hasPendingReplaceRequest:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 628
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingOperations:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->needsPoll:Z

    if-eqz v0, :cond_1

    .line 638
    :cond_0
    :goto_0
    return-void

    .line 633
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingOperations:I

    if-gez v0, :cond_0

    .line 635
    const-string v0, "GSM"

    const-string v1, "GsmCallTracker.pendingOperations < 0"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingOperations:I

    goto :goto_0
.end method

.method private resumeBackgroundAfterDialFailed()V
    .locals 5

    .prologue
    .line 1492
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1494
    .local v1, connCopy:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    const/4 v2, 0x0

    .local v2, i:I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .local v3, s:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 1495
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 1497
    .local v0, conn:Lcom/android/internal/telephony/gsm/GsmConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->resumeHoldAfterDialFailed()V

    .line 1494
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1499
    .end local v0           #conn:Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_0
    return-void
.end method

.method private updateMptyState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1592
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v2, :cond_1

    .line 1593
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_0

    .line 1594
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/GsmCall;->isMptyCall:Z

    .line 1599
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v2, :cond_2

    .line 1600
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/GsmCall;->isMptyCall:Z

    .line 1604
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FG call is MPTY? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-boolean v1, v1, Lcom/android/internal/telephony/gsm/GsmCall;->isMptyCall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", BG call is MPTY? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-boolean v1, v1, Lcom/android/internal/telephony/gsm/GsmCall;->isMptyCall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1606
    return-void

    .line 1597
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iput-boolean v3, v0, Lcom/android/internal/telephony/gsm/GsmCall;->isMptyCall:Z

    goto :goto_0

    .line 1602
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iput-boolean v3, v0, Lcom/android/internal/telephony/gsm/GsmCall;->isMptyCall:Z

    goto :goto_1
.end method

.method private updatePhoneState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 642
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 644
    .local v0, oldState:Lcom/android/internal/telephony/PhoneConstants$State;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCall;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 645
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 653
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_5

    .line 654
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->voiceCallEndedRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v3, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 660
    :cond_0
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePhoneState: old: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , new: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 661
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v1, v0, :cond_1

    .line 662
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyPhoneStateChanged()V

    .line 664
    :cond_1
    return-void

    .line 646
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCall;->isIdle()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCall;->isIdle()Z

    move-result v1

    if-nez v1, :cond_4

    .line 648
    :cond_3
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_0

    .line 650
    :cond_4
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_0

    .line 656
    :cond_5
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_0

    .line 657
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->voiceCallStartedRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v3, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_1
.end method


# virtual methods
.method acceptCall()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 475
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_0

    .line 476
    const-string v2, "acceptCall: incoming..."

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 478
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->setMute(Z)V

    .line 479
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->acceptCall(Landroid/os/Message;)V

    .line 502
    :goto_0
    return-void

    .line 480
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_2

    .line 481
    const-string v2, "acceptCall: waiting..."

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 482
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->setMute(Z)V

    .line 485
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 486
    .local v0, cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->isVideo()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 487
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 488
    .local v1, fgCn:Lcom/android/internal/telephony/gsm/GsmConnection;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmConnection;->isVideo()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 489
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hasPendingReplaceRequest:Z

    .line 490
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    iget v3, v1, Lcom/android/internal/telephony/gsm/GsmConnection;->index:I

    add-int/lit8 v3, v3, 0x1

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->replaceVtCall(ILandroid/os/Message;)V

    .line 491
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmConnection;->onHangupLocal()V

    goto :goto_0

    .line 497
    .end local v1           #fgCn:Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->switchWaitingOrHoldingAndActive()V

    goto :goto_0

    .line 499
    .end local v0           #cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_2
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    const-string v3, "phone not ringing"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method canConference()Z
    .locals 2

    .prologue
    .line 558
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->isFull()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->isFull()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method canDial()Z
    .locals 5

    .prologue
    .line 567
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    .line 568
    .local v2, serviceState:I
    const-string v3, "ro.telephony.disable-call"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 571
    .local v0, disableCall:Ljava/lang/String;
    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->isRinging()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 578
    .local v1, ret:Z
    :goto_0
    return v1

    .line 571
    .end local v1           #ret:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method canTransfer()Z
    .locals 2

    .prologue
    .line 583
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method clearDisconnected()V
    .locals 1

    .prologue
    .line 548
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->internalClearDisconnected()V

    .line 551
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updateMptyState()V

    .line 552
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updatePhoneState()V

    .line 553
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyPreciseCallStateChanged()V

    .line 554
    return-void
.end method

.method conference()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 538
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xb

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->conference(Landroid/os/Message;)V

    .line 539
    return-void
.end method

.method dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 2
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 455
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method dial(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;
    .locals 1
    .parameter "dialString"
    .parameter "clirMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 465
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;
    .locals 16
    .parameter "dialString"
    .parameter "clirMode"
    .parameter "uusInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 340
    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->clearDisconnected()V

    .line 342
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->canDial()Z

    move-result v11

    if-nez v11, :cond_0

    .line 343
    new-instance v11, Lcom/android/internal/telephony/CallStateException;

    const-string v12, "cannot dial in current state"

    invoke-direct {v11, v12}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    :catchall_0
    move-exception v11

    monitor-exit p0

    throw v11

    .line 349
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v11}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v11, v12, :cond_1

    .line 355
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->isSwitchBeforeDial:Z

    .line 356
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->switchWaitingOrHoldingAndActive()V

    .line 362
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->fakeHoldForegroundBeforeDial()V

    .line 365
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v11}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v11, v12, :cond_2

    .line 367
    new-instance v11, Lcom/android/internal/telephony/CallStateException;

    const-string v12, "cannot dial in current state"

    invoke-direct {v11, v12}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 370
    :cond_2
    new-instance v11, Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v12}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->checkForTestEmergencyNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v0, p0

    invoke-direct {v11, v12, v13, v0, v14}, Lcom/android/internal/telephony/gsm/GsmConnection;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/gsm/GsmCallTracker;Lcom/android/internal/telephony/gsm/GsmCall;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 372
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupPendingMO:Z

    .line 375
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    iget-object v11, v11, Lcom/android/internal/telephony/gsm/GsmConnection;->address:Ljava/lang/String;

    if-eqz v11, :cond_3

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    iget-object v11, v11, Lcom/android/internal/telephony/gsm/GsmConnection;->address:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_3

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    iget-object v11, v11, Lcom/android/internal/telephony/gsm/GsmConnection;->address:Ljava/lang/String;

    const/16 v12, 0x4e

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    if-ltz v11, :cond_5

    .line 379
    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    sget-object v12, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    iput-object v12, v11, Lcom/android/internal/telephony/gsm/GsmConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 381
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->isSwitchBeforeDial:Z

    if-eqz v11, :cond_4

    .line 382
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->isSwitchBeforeDial:Z

    .line 384
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainMessage()Landroid/os/Message;

    move-result-object v8

    .line 385
    .local v8, msg:Landroid/os/Message;
    const/16 v11, 0x12

    iput v11, v8, Landroid/os/Message;->what:I

    .line 386
    new-instance v11, Landroid/os/AsyncResult;

    const/4 v12, 0x0

    const/4 v13, 0x0

    new-instance v14, Lcom/android/internal/telephony/CommandException;

    sget-object v15, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v14, v15}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    invoke-direct {v11, v12, v13, v14}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    iput-object v11, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 387
    const-wide/16 v11, 0x64

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v11, v12}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 447
    .end local v8           #msg:Landroid/os/Message;
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updatePhoneState()V

    .line 448
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v11}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyPreciseCallStateChanged()V

    .line 450
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v11

    .line 393
    :cond_5
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    .line 394
    .local v6, len:I
    const/4 v4, 0x0

    .line 395
    .local v4, i:I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 396
    .local v9, ret:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 398
    .local v3, firstCharAdded:Z
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v6, :cond_a

    .line 399
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 401
    .local v2, c:C
    const/16 v11, 0x2c

    if-ne v2, v11, :cond_7

    .line 402
    const/16 v11, 0x70

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 398
    :cond_6
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 403
    :cond_7
    const/16 v11, 0x3b

    if-ne v2, v11, :cond_8

    .line 404
    const/16 v11, 0x77

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 406
    :cond_8
    const/16 v11, 0x2b

    if-ne v2, v11, :cond_9

    if-nez v3, :cond_6

    .line 407
    :cond_9
    const/4 v3, 0x1

    .line 408
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 414
    .end local v2           #c:C
    :cond_a
    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->setMute(Z)V

    .line 418
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 419
    .local v10, string:Ljava/lang/String;
    invoke-static {v10}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_b

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hasSendAgpsStartIntent:Z

    if-nez v11, :cond_b

    .line 420
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 421
    .local v7, mbundle:Landroid/os/Bundle;
    const-string v11, "EM_Call_State"

    const/4 v12, 0x1

    invoke-virtual {v7, v11, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 422
    const-string v11, "Call_Number"

    invoke-virtual {v7, v11, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    new-instance v5, Landroid/content/Intent;

    const-string v11, "android.location.agps.EMERGENCY_CALL"

    invoke-direct {v5, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 424
    .local v5, intent:Landroid/content/Intent;
    invoke-virtual {v5, v7}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 425
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 426
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hasSendAgpsStartIntent:Z

    .line 427
    const-string v11, "Broadcast ecc start intent for AGPS"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 432
    .end local v5           #intent:Landroid/content/Intent;
    .end local v7           #mbundle:Landroid/os/Bundle;
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->isSwitchBeforeDial:Z

    if-nez v11, :cond_d

    .line 433
    invoke-static/range {p1 .. p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-static/range {p1 .. p1}, Landroid/telephony/PhoneNumberUtils;->isSpecialEmergencyNumber(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_c

    .line 435
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x12

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v13

    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-interface {v11, v12, v0, v1, v13}, Lcom/android/internal/telephony/CommandsInterface;->emergencyDial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 437
    :cond_c
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x12

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v13

    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-interface {v11, v12, v0, v1, v13}, Lcom/android/internal/telephony/CommandsInterface;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 440
    :cond_d
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->delayedDialString:Ljava/lang/String;

    .line 441
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->delayedClirMode:I

    .line 442
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->delayedUUSInfo:Lcom/android/internal/telephony/UUSInfo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .parameter "dialString"
    .parameter "uusInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 460
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public dispose()V
    .locals 7

    .prologue
    .line 247
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCallStateChanged(Landroid/os/Handler;)V

    .line 248
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 249
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForNotAvailable(Landroid/os/Handler;)V

    .line 250
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 253
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCallProgressInfo(Landroid/os/Handler;)V

    .line 254
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, p0}, Lcom/android/internal/telephony/CommandsInterface;->unsetOnIncomingCallIndication(Landroid/os/Handler;)V

    .line 257
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    .local v0, arr$:[Lcom/android/internal/telephony/gsm/GsmConnection;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 259
    .local v1, c:Lcom/android/internal/telephony/gsm/GsmConnection;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangup(Lcom/android/internal/telephony/gsm/GsmConnection;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 260
    :catch_0
    move-exception v2

    .line 261
    .local v2, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v5, "GSM"

    const-string v6, "unexpected error on hangup during dispose"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 266
    .end local v1           #c:Lcom/android/internal/telephony/gsm/GsmConnection;
    .end local v2           #ex:Lcom/android/internal/telephony/CallStateException;
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangup(Lcom/android/internal/telephony/gsm/GsmConnection;)V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 271
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->clearDisconnected()V

    .line 272
    return-void

    .line 267
    :catch_1
    move-exception v2

    .line 268
    .restart local v2       #ex:Lcom/android/internal/telephony/CallStateException;
    const-string v5, "GSM"

    const-string v6, "unexpected error on hangup during dispose"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1465
    const-string v1, "GsmCallTracker extends:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1466
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/CallTracker;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1467
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connections: length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1468
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1469
    const-string v1, "  connections[%d]=%s\n"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v3, v3, v0

    aput-object v3, v2, v5

    invoke-virtual {p2, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1468
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1471
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " voiceCallEndedRegistrants="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->voiceCallEndedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1472
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " voiceCallStartedRegistrants="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->voiceCallStartedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1473
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " droppedDuringPoll: size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1474
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1475
    const-string v1, "  droppedDuringPoll[%d]=%s\n"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p2, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1474
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1477
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ringingCall="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1478
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " foregroundCall="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1479
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " backgroundCall="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1480
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " pendingMO="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1481
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " hangupPendingMO="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupPendingMO:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1482
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " phone="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1483
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " desiredMute="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->desiredMute:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1484
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1485
    return-void
.end method

.method explicitCallTransfer()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 543
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xd

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->explicitCallTransfer(Landroid/os/Message;)V

    .line 544
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 275
    const-string v0, "GSM"

    const-string v1, "GsmCallTracker finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    return-void
.end method

.method getAccumulatedCallMeter(Landroid/os/Message;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 2286
    const-string v0, "getAccumulatedCallMeter"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2287
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getAccumulatedCallMeter(Landroid/os/Message;)V

    .line 2288
    return-void
.end method

.method getAccumulatedCallMeterMaximum(Landroid/os/Message;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 2291
    const-string v0, "getAccumulatedCallMeterMaximum"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2292
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getAccumulatedCallMeterMaximum(Landroid/os/Message;)V

    .line 2293
    return-void
.end method

.method getConnectionByIndex(Lcom/android/internal/telephony/gsm/GsmCall;I)Lcom/android/internal/telephony/gsm/GsmConnection;
    .locals 4
    .parameter "call"
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1198
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1199
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1200
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 1201
    .local v0, cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getGSMIndex()I

    move-result v3

    if-ne v3, p2, :cond_0

    .line 1206
    .end local v0           #cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    :goto_1
    return-object v0

    .line 1199
    .restart local v0       #cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1206
    .end local v0           #cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method getCurrentCallMeter(Landroid/os/Message;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 2281
    const-string v0, "getCurrentCallMeter"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2282
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getCurrentCallMeter(Landroid/os/Message;)V

    .line 2283
    return-void
.end method

.method getMute()Z
    .locals 1

    .prologue
    .line 1005
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->desiredMute:Z

    return v0
.end method

.method getPpuAndCurrency(Landroid/os/Message;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 2296
    const-string v0, "getPpuAndCurrency"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2297
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getPpuAndCurrency(Landroid/os/Message;)V

    .line 2298
    return-void
.end method

.method protected handleCallProgressInfo(Landroid/os/AsyncResult;)V
    .locals 36
    .parameter "ar"

    .prologue
    .line 1611
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, [Ljava/lang/String;

    move-object/from16 v4, v32

    check-cast v4, [Ljava/lang/String;

    .line 1612
    .local v4, CallProgressInfo:[Ljava/lang/String;
    const/16 v32, 0x0

    aget-object v32, v4, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1613
    .local v5, callId:I
    const/16 v32, 0x1

    aget-object v32, v4, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 1614
    .local v23, msgType:I
    const/16 v12, 0xff

    .line 1615
    .local v12, dir:I
    const/16 v6, 0xff

    .line 1616
    .local v6, callMode:I
    const/16 v26, 0x0

    .line 1617
    .local v26, number:Ljava/lang/String;
    const/16 v30, 0xff

    .line 1618
    .local v30, toa:I
    const/16 v27, 0x0

    .line 1620
    .local v27, oldParent:Lcom/android/internal/telephony/gsm/GsmCall;
    const/16 v25, 0x0

    .line 1621
    .local v25, newRinging:Lcom/android/internal/telephony/Connection;
    const/16 v16, 0x0

    .line 1622
    .local v16, hasNonHangupStateChanged:Z
    const/16 v31, 0x0

    .line 1623
    .local v31, unknownConnectionAppeared:Z
    const/16 v20, 0x0

    .line 1652
    .local v20, localHangup:Z
    if-eqz v23, :cond_1

    const/16 v32, 0x2

    move/from16 v0, v23

    move/from16 v1, v32

    if-eq v0, v1, :cond_1

    const/16 v32, 0x6

    move/from16 v0, v23

    move/from16 v1, v32

    if-eq v0, v1, :cond_1

    const/16 v32, 0x82

    move/from16 v0, v23

    move/from16 v1, v32

    if-ne v0, v1, :cond_0

    const/16 v32, 0xfe

    move/from16 v0, v32

    if-ne v5, v0, :cond_1

    :cond_0
    const/16 v32, 0x83

    move/from16 v0, v23

    move/from16 v1, v32

    if-eq v0, v1, :cond_1

    const/16 v32, 0x84

    move/from16 v0, v23

    move/from16 v1, v32

    if-eq v0, v1, :cond_1

    const/16 v32, 0x85

    move/from16 v0, v23

    move/from16 v1, v32

    if-ne v0, v1, :cond_3e

    .line 1655
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->isSwitchBeforeDial:Z

    move/from16 v32, v0

    if-eqz v32, :cond_3

    const/16 v32, 0x83

    move/from16 v0, v23

    move/from16 v1, v32

    if-eq v0, v1, :cond_2

    const/16 v32, 0x84

    move/from16 v0, v23

    move/from16 v1, v32

    if-ne v0, v1, :cond_3

    .line 2069
    :cond_2
    :goto_0
    return-void

    .line 1659
    :cond_3
    add-int/lit8 v17, v5, -0x1

    .line 1660
    .local v17, i:I
    if-ltz v17, :cond_4

    const/16 v32, 0x6

    move/from16 v0, v17

    move/from16 v1, v32

    if-le v0, v1, :cond_5

    .line 1661
    :cond_4
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Error caller id. i = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1664
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v32, v0

    aget-object v9, v32, v17

    .line 1665
    .local v9, conn:Lcom/android/internal/telephony/gsm/GsmConnection;
    new-instance v11, Lcom/android/internal/telephony/DriverCall;

    invoke-direct {v11}, Lcom/android/internal/telephony/DriverCall;-><init>()V

    .line 1666
    .local v11, dc:Lcom/android/internal/telephony/DriverCall;
    const/4 v10, 0x0

    .line 1667
    .local v10, count:I
    const/16 v19, 0x0

    .line 1669
    .local v19, j:I
    if-eqz v23, :cond_6

    const/16 v32, 0x2

    move/from16 v0, v23

    move/from16 v1, v32

    if-eq v0, v1, :cond_6

    const/16 v32, 0x6

    move/from16 v0, v23

    move/from16 v1, v32

    if-eq v0, v1, :cond_6

    const/16 v32, 0x82

    move/from16 v0, v23

    move/from16 v1, v32

    if-ne v0, v1, :cond_7

    .line 1671
    :cond_6
    const/16 v32, 0x4

    aget-object v32, v4, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 1672
    const/16 v32, 0x5

    aget-object v32, v4, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 1674
    const/16 v32, 0x6

    aget-object v32, v4, v32

    if-eqz v32, :cond_7

    const/16 v32, 0x6

    aget-object v32, v4, v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v32

    if-eqz v32, :cond_7

    .line 1676
    const/16 v32, 0x6

    aget-object v26, v4, v32

    .line 1678
    const/16 v32, 0x7

    aget-object v32, v4, v32

    if-eqz v32, :cond_7

    const/16 v32, 0x7

    aget-object v32, v4, v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v32

    if-eqz v32, :cond_7

    .line 1679
    const/16 v32, 0x7

    aget-object v32, v4, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v30

    .line 1683
    :cond_7
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "id="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ", msg="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ", dir="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ", mode="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ", number=\""

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "\", toa="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1686
    const-string v32, "========dump start========"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1687
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dumpState()V

    .line 1688
    const-string v32, "========dump start========"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1691
    iput v5, v11, Lcom/android/internal/telephony/DriverCall;->index:I

    .line 1693
    if-eqz v12, :cond_b

    const/16 v32, 0x1

    :goto_1
    move/from16 v0, v32

    iput-boolean v0, v11, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    .line 1695
    const/16 v32, 0x84

    move/from16 v0, v23

    move/from16 v1, v32

    if-eq v0, v1, :cond_8

    const/16 v32, 0x6

    move/from16 v0, v23

    move/from16 v1, v32

    if-ne v0, v1, :cond_c

    .line 1696
    :cond_8
    sget-object v32, Lcom/android/internal/telephony/DriverCall$State;->ACTIVE:Lcom/android/internal/telephony/DriverCall$State;

    move-object/from16 v0, v32

    iput-object v0, v11, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    .line 1726
    :cond_9
    :goto_2
    const/16 v32, 0x83

    move/from16 v0, v23

    move/from16 v1, v32

    if-eq v0, v1, :cond_a

    const/16 v32, 0x84

    move/from16 v0, v23

    move/from16 v1, v32

    if-eq v0, v1, :cond_a

    const/16 v32, 0x85

    move/from16 v0, v23

    move/from16 v1, v32

    if-eq v0, v1, :cond_a

    .line 1727
    if-nez v6, :cond_15

    .line 1728
    const/16 v32, 0x1

    move/from16 v0, v32

    iput-boolean v0, v11, Lcom/android/internal/telephony/DriverCall;->isVoice:Z

    .line 1729
    const/16 v32, 0x0

    move/from16 v0, v32

    iput-boolean v0, v11, Lcom/android/internal/telephony/DriverCall;->isVideo:Z

    .line 1742
    :cond_a
    :goto_3
    move-object/from16 v0, v26

    iput-object v0, v11, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 1743
    sget v32, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    move/from16 v0, v32

    iput v0, v11, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    .line 1744
    move/from16 v0, v30

    iput v0, v11, Lcom/android/internal/telephony/DriverCall;->TOA:I

    .line 1745
    iget-object v0, v11, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    move-object/from16 v32, v0

    iget v0, v11, Lcom/android/internal/telephony/DriverCall;->TOA:I

    move/from16 v33, v0

    invoke-static/range {v32 .. v33}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v11, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 1748
    if-nez v9, :cond_22

    .line 1750
    const-string v32, "1. new connection appeared!!"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1752
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v32, v0

    if-eqz v32, :cond_1d

    .line 1754
    const/16 v32, 0x82

    move/from16 v0, v23

    move/from16 v1, v32

    if-ne v0, v1, :cond_17

    .line 1756
    const-string v32, "1.1. it is a MO call"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1758
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v33, v0

    aput-object v33, v32, v17

    .line 1759
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v32, v0

    move/from16 v0, v17

    move-object/from16 v1, v32

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmConnection;->index:I

    .line 1760
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/gsm/GsmConnection;->update(Lcom/android/internal/telephony/DriverCall;)Z

    .line 1761
    const/16 v32, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 1764
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupPendingMO:Z

    move/from16 v32, v0

    if-eqz v32, :cond_18

    .line 1765
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupPendingMO:Z

    .line 1767
    :try_start_0
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "poll: hangupPendingMO, hangup conn "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1768
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v32, v0

    aget-object v32, v32, v17

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangup(Lcom/android/internal/telephony/gsm/GsmConnection;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1769
    :catch_0
    move-exception v15

    .line 1770
    .local v15, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v32, "unexpected error on hangup"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1693
    .end local v15           #ex:Lcom/android/internal/telephony/CallStateException;
    :cond_b
    const/16 v32, 0x0

    goto/16 :goto_1

    .line 1697
    :cond_c
    const/16 v32, 0x83

    move/from16 v0, v23

    move/from16 v1, v32

    if-ne v0, v1, :cond_d

    .line 1698
    sget-object v32, Lcom/android/internal/telephony/DriverCall$State;->HOLDING:Lcom/android/internal/telephony/DriverCall$State;

    move-object/from16 v0, v32

    iput-object v0, v11, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    goto/16 :goto_2

    .line 1699
    :cond_d
    const/16 v32, 0x82

    move/from16 v0, v23

    move/from16 v1, v32

    if-ne v0, v1, :cond_e

    const/16 v32, 0xfe

    move/from16 v0, v32

    if-eq v5, v0, :cond_e

    .line 1700
    sget-object v32, Lcom/android/internal/telephony/DriverCall$State;->DIALING:Lcom/android/internal/telephony/DriverCall$State;

    move-object/from16 v0, v32

    iput-object v0, v11, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    goto/16 :goto_2

    .line 1701
    :cond_e
    const/16 v32, 0x2

    move/from16 v0, v23

    move/from16 v1, v32

    if-ne v0, v1, :cond_f

    .line 1702
    sget-object v32, Lcom/android/internal/telephony/DriverCall$State;->ALERTING:Lcom/android/internal/telephony/DriverCall$State;

    move-object/from16 v0, v32

    iput-object v0, v11, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    goto/16 :goto_2

    .line 1703
    :cond_f
    if-nez v23, :cond_9

    .line 1705
    const/16 v19, 0x0

    :goto_4
    const/16 v32, 0x7

    move/from16 v0, v19

    move/from16 v1, v32

    if-ge v0, v1, :cond_11

    .line 1706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v32, v0

    aget-object v32, v32, v19

    if-eqz v32, :cond_10

    .line 1707
    add-int/lit8 v10, v10, 0x1

    .line 1705
    :cond_10
    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    .line 1711
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v32, v0

    sget-object v33, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-eq v0, v1, :cond_12

    if-nez v10, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v32

    sget-object v33, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_14

    .line 1716
    :cond_12
    if-nez v10, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v32

    sget-object v33, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_13

    .line 1717
    const-string v32, "MO/MT conflict!!"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1719
    :cond_13
    sget-object v32, Lcom/android/internal/telephony/DriverCall$State;->INCOMING:Lcom/android/internal/telephony/DriverCall$State;

    move-object/from16 v0, v32

    iput-object v0, v11, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    goto/16 :goto_2

    .line 1722
    :cond_14
    sget-object v32, Lcom/android/internal/telephony/DriverCall$State;->WAITING:Lcom/android/internal/telephony/DriverCall$State;

    move-object/from16 v0, v32

    iput-object v0, v11, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    goto/16 :goto_2

    .line 1731
    :cond_15
    const/16 v32, 0xa

    move/from16 v0, v32

    if-ne v6, v0, :cond_16

    .line 1732
    const/16 v32, 0x0

    move/from16 v0, v32

    iput-boolean v0, v11, Lcom/android/internal/telephony/DriverCall;->isVoice:Z

    .line 1733
    const/16 v32, 0x1

    move/from16 v0, v32

    iput-boolean v0, v11, Lcom/android/internal/telephony/DriverCall;->isVideo:Z

    goto/16 :goto_3

    .line 1736
    :cond_16
    const/16 v32, 0x0

    move/from16 v0, v32

    iput-boolean v0, v11, Lcom/android/internal/telephony/DriverCall;->isVoice:Z

    .line 1737
    const/16 v32, 0x0

    move/from16 v0, v32

    iput-boolean v0, v11, Lcom/android/internal/telephony/DriverCall;->isVideo:Z

    goto/16 :goto_3

    .line 1778
    :cond_17
    const/16 v32, 0x85

    move/from16 v0, v23

    move/from16 v1, v32

    if-ne v0, v1, :cond_1c

    .line 1780
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Pending MO dropped before call id assigned!! fg state:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1782
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1783
    const/16 v32, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 1784
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupPendingMO:Z

    .line 1861
    :cond_18
    :goto_5
    const/16 v16, 0x1

    .line 1917
    :cond_19
    :goto_6
    if-eqz v25, :cond_1a

    .line 1918
    const-string v32, "notify CallNotifier for New Ringing connection"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1919
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyNewRingingConnection(Lcom/android/internal/telephony/Connection;)V

    .line 1925
    :cond_1a
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "dropped during poll size = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1926
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v32

    add-int/lit8 v24, v32, -0x1

    .local v24, n:I
    :goto_7
    if-ltz v24, :cond_2f

    .line 1927
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 1929
    .local v13, dropConn:Lcom/android/internal/telephony/gsm/GsmConnection;
    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/GsmConnection;->isIncoming()Z

    move-result v32

    if-eqz v32, :cond_2c

    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/GsmConnection;->getConnectTime()J

    move-result-wide v32

    const-wide/16 v34, 0x0

    cmp-long v32, v32, v34

    if-nez v32, :cond_2c

    .line 1932
    iget-object v0, v13, Lcom/android/internal/telephony/gsm/GsmConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v32, v0

    sget-object v33, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_2b

    .line 1933
    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 1938
    .local v7, cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    :goto_8
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "1. missed/rejected call, conn.cause="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    iget-object v0, v13, Lcom/android/internal/telephony/gsm/GsmConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1939
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "1. setting cause to "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1941
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1942
    invoke-virtual {v13, v7}, Lcom/android/internal/telephony/gsm/GsmConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    .line 1943
    const/16 v20, 0x1

    .line 1958
    .end local v7           #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    :cond_1b
    :goto_9
    const/16 v32, 0x10

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->causeCode:I

    .line 1926
    add-int/lit8 v24, v24, -0x1

    goto/16 :goto_7

    .line 1786
    .end local v13           #dropConn:Lcom/android/internal/telephony/gsm/GsmConnection;
    .end local v24           #n:I
    :cond_1c
    if-nez v23, :cond_18

    .line 1788
    const-string v32, "MO/MT conflict! Hang up MT call to prevent abnormal behavior."

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1792
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v32, v0

    new-instance v33, Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-object/from16 v2, p0

    move/from16 v3, v17

    invoke-direct {v0, v1, v11, v2, v3}, Lcom/android/internal/telephony/gsm/GsmConnection;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/gsm/GsmCallTracker;I)V

    aput-object v33, v32, v17

    .line 1794
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v32, v0

    aget-object v32, v32, v17

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangup(Lcom/android/internal/telephony/gsm/GsmConnection;)V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_5

    .line 1795
    :catch_1
    move-exception v15

    .line 1796
    .restart local v15       #ex:Lcom/android/internal/telephony/CallStateException;
    const-string v32, "GSM"

    const-string v33, "unexpected error on hangup"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 1807
    .end local v15           #ex:Lcom/android/internal/telephony/CallStateException;
    :cond_1d
    if-nez v23, :cond_21

    .line 1809
    const-string v32, "1.2 it is a MT call"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1811
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v32, v0

    new-instance v33, Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-object/from16 v2, p0

    move/from16 v3, v17

    invoke-direct {v0, v1, v11, v2, v3}, Lcom/android/internal/telephony/gsm/GsmConnection;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/gsm/GsmCallTracker;I)V

    aput-object v33, v32, v17

    .line 1815
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "isInLock = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->isInLock:Z

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ", isFullLock = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->isFullLock:Z

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1816
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->isInLock:Z

    move/from16 v32, v0

    if-eqz v32, :cond_1e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->isFullLock:Z

    move/from16 v32, v0

    if-eqz v32, :cond_1e

    .line 1817
    const-string v32, "hang up MT call because of in DM lock state"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1819
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v32, v0

    aget-object v32, v32, v17

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangup(Lcom/android/internal/telephony/gsm/GsmConnection;)V
    :try_end_2
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_5

    .line 1820
    :catch_2
    move-exception v15

    .line 1821
    .restart local v15       #ex:Lcom/android/internal/telephony/CallStateException;
    const-string v32, "GSM"

    const-string v33, "unexpected error on hangup"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 1826
    .end local v15           #ex:Lcom/android/internal/telephony/CallStateException;
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v32, v0

    aget-object v32, v32, v17

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/telephony/gsm/GsmConnection;->getCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v33, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_1f

    .line 1827
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v32, v0

    aget-object v25, v32, v17

    goto/16 :goto_5

    .line 1833
    :cond_1f
    const-string v32, "Phantom call appeared!!"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1838
    iget-object v0, v11, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    move-object/from16 v32, v0

    sget-object v33, Lcom/android/internal/telephony/DriverCall$State;->ALERTING:Lcom/android/internal/telephony/DriverCall$State;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-eq v0, v1, :cond_20

    iget-object v0, v11, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    move-object/from16 v32, v0

    sget-object v33, Lcom/android/internal/telephony/DriverCall$State;->DIALING:Lcom/android/internal/telephony/DriverCall$State;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-eq v0, v1, :cond_20

    .line 1840
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v32, v0

    aget-object v32, v32, v17

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v33

    move-wide/from16 v0, v33

    move-object/from16 v2, v32

    iput-wide v0, v2, Lcom/android/internal/telephony/gsm/GsmConnection;->connectTime:J

    .line 1843
    :cond_20
    const/16 v31, 0x1

    goto/16 :goto_5

    .line 1853
    :cond_21
    const/16 v32, 0x82

    move/from16 v0, v23

    move/from16 v1, v32

    if-ne v0, v1, :cond_18

    .line 1855
    const-string v32, "1.3 Phantom call appeared!!"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1857
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v32, v0

    new-instance v33, Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-object/from16 v2, p0

    move/from16 v3, v17

    invoke-direct {v0, v1, v11, v2, v3}, Lcom/android/internal/telephony/gsm/GsmConnection;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/gsm/GsmCallTracker;I)V

    aput-object v33, v32, v17

    .line 1858
    const/16 v31, 0x1

    goto/16 :goto_5

    .line 1865
    :cond_22
    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/GsmConnection;->getCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v27

    .line 1866
    const/16 v32, 0x85

    move/from16 v0, v23

    move/from16 v1, v32

    if-ne v0, v1, :cond_26

    .line 1868
    const-string v32, "2. connection disconnected"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1870
    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/GsmConnection;->getCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v33, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/telephony/gsm/GsmCall;->isIdle()Z

    move-result v32

    if-nez v32, :cond_24

    :cond_23
    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/GsmConnection;->getCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v33, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/telephony/gsm/GsmCall;->isIdle()Z

    move-result v32

    if-eqz v32, :cond_25

    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v32

    sget-object v33, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_25

    .line 1873
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v32, v0

    sget-object v33, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmCall;->state:Lcom/android/internal/telephony/Call$State;

    .line 1875
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1878
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aput-object v33, v32, v17

    .line 1882
    iget-object v0, v9, Lcom/android/internal/telephony/gsm/GsmConnection;->address:Ljava/lang/String;

    move-object/from16 v29, v0

    .line 1883
    .local v29, string:Ljava/lang/String;
    invoke-static/range {v29 .. v29}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hasSendAgpsStartIntent:Z

    move/from16 v32, v0

    if-eqz v32, :cond_19

    .line 1884
    new-instance v22, Landroid/os/Bundle;

    invoke-direct/range {v22 .. v22}, Landroid/os/Bundle;-><init>()V

    .line 1885
    .local v22, mbundle:Landroid/os/Bundle;
    const-string v32, "EM_Call_State"

    const/16 v33, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1886
    const-string v32, "Call_Number"

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1887
    new-instance v18, Landroid/content/Intent;

    const-string v32, "android.location.agps.EMERGENCY_CALL"

    move-object/from16 v0, v18

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1888
    .local v18, intent:Landroid/content/Intent;
    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1889
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1890
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hasSendAgpsStartIntent:Z

    .line 1891
    const-string v32, "Broadcast ecc end intent for AGPS"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1900
    .end local v18           #intent:Landroid/content/Intent;
    .end local v22           #mbundle:Landroid/os/Bundle;
    .end local v29           #string:Ljava/lang/String;
    :cond_26
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "3. update current connection[i="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "]"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1901
    iget-object v0, v11, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    move-object/from16 v32, v0

    if-nez v32, :cond_27

    .line 1902
    iget-object v0, v9, Lcom/android/internal/telephony/gsm/GsmConnection;->address:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iput-object v0, v11, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 1907
    :cond_27
    const/16 v32, 0xff

    move/from16 v0, v32

    if-ne v6, v0, :cond_28

    .line 1908
    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/GsmConnection;->isVideo()Z

    move-result v32

    move/from16 v0, v32

    iput-boolean v0, v11, Lcom/android/internal/telephony/DriverCall;->isVideo:Z

    .line 1912
    :cond_28
    invoke-virtual {v9, v11}, Lcom/android/internal/telephony/gsm/GsmConnection;->update(Lcom/android/internal/telephony/DriverCall;)Z

    move-result v8

    .line 1913
    .local v8, changed:Z
    if-nez v16, :cond_29

    if-eqz v8, :cond_2a

    :cond_29
    const/16 v16, 0x1

    :goto_a
    goto/16 :goto_6

    :cond_2a
    const/16 v16, 0x0

    goto :goto_a

    .line 1935
    .end local v8           #changed:Z
    .restart local v13       #dropConn:Lcom/android/internal/telephony/gsm/GsmConnection;
    .restart local v24       #n:I
    :cond_2b
    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .restart local v7       #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    goto/16 :goto_8

    .line 1944
    .end local v7           #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    :cond_2c
    iget-object v0, v13, Lcom/android/internal/telephony/gsm/GsmConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v32, v0

    sget-object v33, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_2e

    .line 1946
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hasPendingReplaceRequest:Z

    move/from16 v32, v0

    if-eqz v32, :cond_2d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hasPendingReplaceRequest:Z

    move/from16 v32, v0

    if-eqz v32, :cond_1b

    const/16 v32, 0x85

    move/from16 v0, v23

    move/from16 v1, v32

    if-eq v0, v1, :cond_1b

    .line 1947
    :cond_2d
    const-string v32, "2. local hangup"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1948
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1949
    sget-object v32, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v32

    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    .line 1950
    const/16 v20, 0x1

    goto/16 :goto_9

    .line 1952
    :cond_2e
    iget-object v0, v13, Lcom/android/internal/telephony/gsm/GsmConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v32, v0

    sget-object v33, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_1b

    .line 1953
    const-string v32, "3. invalid number"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1954
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1955
    sget-object v32, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v32

    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    .line 1956
    const/16 v20, 0x1

    goto/16 :goto_9

    .line 1962
    .end local v13           #dropConn:Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v32

    if-lez v32, :cond_31

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hasPendingReplaceRequest:Z

    move/from16 v32, v0

    if-nez v32, :cond_31

    .line 1963
    const-string v32, "get last call failed cause"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1964
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v32, v0

    const/16 v33, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainNoPollCompleteMessage(I)Landroid/os/Message;

    move-result-object v33

    invoke-interface/range {v32 .. v33}, Lcom/android/internal/telephony/CommandsInterface;->getLastCallFailCause(Landroid/os/Message;)V

    .line 1976
    :cond_30
    :goto_b
    const/16 v32, 0x85

    move/from16 v0, v23

    move/from16 v1, v32

    if-ne v0, v1, :cond_32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v32

    if-lez v32, :cond_32

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hasPendingReplaceRequest:Z

    move/from16 v32, v0

    if-eqz v32, :cond_32

    if-nez v20, :cond_32

    .line 1977
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v32

    add-int/lit8 v21, v32, -0x1

    .local v21, m:I
    :goto_c
    if-ltz v21, :cond_32

    .line 1978
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 1979
    .local v14, dropConnX:Lcom/android/internal/telephony/gsm/GsmConnection;
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "4. Force to invoke onDisconnect() of GsmConnection with callID="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ", with cause="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    iget-object v0, v14, Lcom/android/internal/telephony/gsm/GsmConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1980
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1981
    iget-object v0, v14, Lcom/android/internal/telephony/gsm/GsmConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v14, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    .line 1977
    add-int/lit8 v21, v21, -0x1

    goto :goto_c

    .line 1966
    .end local v14           #dropConnX:Lcom/android/internal/telephony/gsm/GsmConnection;
    .end local v21           #m:I
    :cond_31
    if-nez v20, :cond_30

    const/16 v32, 0x85

    move/from16 v0, v23

    move/from16 v1, v32

    if-ne v0, v1, :cond_30

    .line 1969
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "msgType=133:Other case:CallId="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " ,but not ivoke onDisconnect() of GsmConnection"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 2000
    :cond_32
    if-nez v25, :cond_33

    if-eqz v16, :cond_34

    .line 2001
    :cond_33
    const-string v32, "internal clear disconnected"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2002
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->internalClearDisconnected()V

    .line 2005
    :cond_34
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updatePhoneState()V

    .line 2007
    const/16 v32, 0x85

    move/from16 v0, v23

    move/from16 v1, v32

    if-ne v0, v1, :cond_36

    .line 2010
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v32, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    if-ne v0, v1, :cond_3d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-gt v0, v1, :cond_3d

    .line 2012
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmCall;->isMptyCall:Z

    .line 2020
    :cond_35
    :goto_d
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v28

    .line 2021
    .local v28, pid:I
    invoke-static/range {v28 .. v28}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v32

    if-eqz v32, :cond_36

    .line 2022
    const/16 v32, 0x0

    move/from16 v0, v28

    move/from16 v1, v32

    invoke-static {v0, v1}, Landroid/os/Process;->setThreadPriority(II)V

    .line 2023
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Current priority = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-static/range {v28 .. v28}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2027
    .end local v28           #pid:I
    :cond_36
    const/16 v32, 0x83

    move/from16 v0, v23

    move/from16 v1, v32

    if-ne v0, v1, :cond_37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->crssAction:Lcom/android/internal/telephony/gsm/GsmCallTracker$CrssAction;

    move-object/from16 v32, v0

    sget-object v33, Lcom/android/internal/telephony/gsm/GsmCallTracker$CrssAction;->SEPERATE:Lcom/android/internal/telephony/gsm/GsmCallTracker$CrssAction;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-gt v0, v1, :cond_37

    .line 2029
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmCall;->isMptyCall:Z

    .line 2032
    :cond_37
    if-eqz v31, :cond_38

    .line 2033
    const-string v32, "notity unknown connection"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2034
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyUnknownConnection()V

    .line 2037
    :cond_38
    if-nez v16, :cond_39

    if-eqz v25, :cond_3b

    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->crssAction:Lcom/android/internal/telephony/gsm/GsmCallTracker$CrssAction;

    move-object/from16 v32, v0

    sget-object v33, Lcom/android/internal/telephony/gsm/GsmCallTracker$CrssAction;->SWAP:Lcom/android/internal/telephony/gsm/GsmCallTracker$CrssAction;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-eq v0, v1, :cond_3b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hasPendingReplaceRequest:Z

    move/from16 v32, v0

    if-eqz v32, :cond_3a

    const/16 v32, 0x85

    move/from16 v0, v23

    move/from16 v1, v32

    if-eq v0, v1, :cond_3b

    .line 2038
    :cond_3a
    const-string v32, "notify precise call state changed"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2039
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyPreciseCallStateChanged()V

    .line 2043
    :cond_3b
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->getCurrentTotalConnections()I

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_3c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v32

    sget-object v33, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_3c

    .line 2045
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v32, v0

    sget-object v33, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmCall;->state:Lcom/android/internal/telephony/Call$State;

    .line 2048
    :cond_3c
    const-string v32, "=========dump end========="

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2049
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dumpState()V

    .line 2050
    const-string v32, "=========dump end========="

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2014
    :cond_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v32, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    if-ne v0, v1, :cond_35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-gt v0, v1, :cond_35

    .line 2016
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmCall;->isMptyCall:Z

    goto/16 :goto_d

    .line 2052
    .end local v9           #conn:Lcom/android/internal/telephony/gsm/GsmConnection;
    .end local v10           #count:I
    .end local v11           #dc:Lcom/android/internal/telephony/DriverCall;
    .end local v17           #i:I
    .end local v19           #j:I
    .end local v24           #n:I
    :cond_3e
    const/16 v32, 0x82

    move/from16 v0, v23

    move/from16 v1, v32

    if-ne v0, v1, :cond_2

    const/16 v32, 0xfe

    move/from16 v0, v32

    if-ne v5, v0, :cond_2

    .line 2053
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v32, v0

    if-eqz v32, :cond_2

    .line 2054
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "id="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ", msg="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2055
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v32, v0

    sget-object v33, Lcom/android/internal/telephony/Connection$DisconnectCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-virtual/range {v32 .. v33}, Lcom/android/internal/telephony/gsm/GsmConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    .line 2056
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updatePhoneState()V

    .line 2057
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updateMptyState()V

    .line 2059
    const-string v32, "notify precise call state changed"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2060
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyPreciseCallStateChanged()V

    .line 2062
    const-string v32, "========dump start========"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2063
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dumpState()V

    .line 2064
    const-string v32, "========dump stop========"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2066
    const/16 v32, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    goto/16 :goto_0
.end method

.method protected handleDialCallFailed()V
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 2074
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dumpState()V

    .line 2078
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    if-eqz v6, :cond_3

    .line 2079
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    iget-object v5, v6, Lcom/android/internal/telephony/gsm/GsmConnection;->address:Ljava/lang/String;

    .line 2080
    .local v5, string:Ljava/lang/String;
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hasSendAgpsStartIntent:Z

    if-eqz v6, :cond_0

    .line 2081
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 2082
    .local v3, mbundle:Landroid/os/Bundle;
    const-string v6, "EM_Call_State"

    invoke-virtual {v3, v6, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2083
    const-string v6, "Call_Number"

    invoke-virtual {v3, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2084
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.location.agps.EMERGENCY_CALL"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2085
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2086
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2087
    iput-boolean v8, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hasSendAgpsStartIntent:Z

    .line 2088
    const-string v6, "Broadcast ecc end intent for AGPS"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2099
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #mbundle:Landroid/os/Bundle;
    .end local v5           #string:Ljava/lang/String;
    :cond_0
    :goto_0
    const-string v6, "handleDialCallFailed - updatePendingHangupRequest"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2100
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updatePendingHangupRequest()V

    .line 2102
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    if-eqz v6, :cond_1

    .line 2103
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2104
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 2106
    :cond_1
    iput-boolean v8, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupPendingMO:Z

    .line 2111
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dropped during poll size = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2112
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    .local v4, n:I
    :goto_1
    if-ltz v4, :cond_7

    .line 2113
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 2115
    .local v1, dropConn:Lcom/android/internal/telephony/gsm/GsmConnection;
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmConnection;->isIncoming()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmConnection;->getConnectTime()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_5

    .line 2118
    iget-object v6, v1, Lcom/android/internal/telephony/gsm/GsmConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v6, v7, :cond_4

    .line 2119
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 2124
    .local v0, cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "1. missed/rejected call, conn.cause="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/android/internal/telephony/gsm/GsmConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2125
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "1. setting cause to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2127
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2128
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    .line 2112
    .end local v0           #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    :cond_2
    :goto_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 2092
    .end local v1           #dropConn:Lcom/android/internal/telephony/gsm/GsmConnection;
    .end local v4           #n:I
    :cond_3
    iput-boolean v8, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hasSendAgpsStartIntent:Z

    goto/16 :goto_0

    .line 2121
    .restart local v1       #dropConn:Lcom/android/internal/telephony/gsm/GsmConnection;
    .restart local v4       #n:I
    :cond_4
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .restart local v0       #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    goto :goto_2

    .line 2129
    .end local v0           #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    :cond_5
    iget-object v6, v1, Lcom/android/internal/telephony/gsm/GsmConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v6, v7, :cond_6

    .line 2131
    const-string v6, "2. local hangup"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2132
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2133
    sget-object v6, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-virtual {v1, v6}, Lcom/android/internal/telephony/gsm/GsmConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    goto :goto_3

    .line 2134
    :cond_6
    iget-object v6, v1, Lcom/android/internal/telephony/gsm/GsmConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v6, v7, :cond_2

    .line 2136
    const-string v6, "3. invalid number"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2137
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2138
    sget-object v6, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-virtual {v1, v6}, Lcom/android/internal/telephony/gsm/GsmConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    goto :goto_3

    .line 2143
    .end local v1           #dropConn:Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_7
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_8

    .line 2144
    const-string v6, "non-local disconnect"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2145
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v7, 0x5

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainNoPollCompleteMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->getLastCallFailCause(Landroid/os/Message;)V

    .line 2149
    :cond_8
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updatePhoneState()V

    .line 2153
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dumpState()V

    .line 2155
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 16
    .parameter "msg"

    .prologue
    .line 1229
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->what:I

    packed-switch v11, :pswitch_data_0

    .line 1456
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1231
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 1233
    .local v3, ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->lastRelevantPoll:Landroid/os/Message;

    move-object/from16 v0, p1

    if-ne v0, v11, :cond_0

    .line 1234
    const-string v11, "handle EVENT_POLL_CALL_RESULT: set needsPoll=F"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1236
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->needsPoll:Z

    .line 1237
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->lastRelevantPoll:Landroid/os/Message;

    .line 1238
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->handlePollCalls(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 1244
    .end local v3           #ar:Landroid/os/AsyncResult;
    :pswitch_2
    const-string v11, "handle EVENT_CALL_PROGRESS_INFO"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1245
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->handleCallProgressInfo(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 1249
    :pswitch_3
    const-string v11, "handle EVENT_OPERATION_COMPLETE"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1250
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 1251
    .restart local v3       #ar:Landroid/os/AsyncResult;
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updateMptyState()V

    .line 1252
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->operationComplete()V

    .line 1253
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hasPendingReplaceRequest:Z

    if-eqz v11, :cond_1

    .line 1254
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hasPendingReplaceRequest:Z

    .line 1263
    :cond_1
    iget-object v11, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->isCommandExceptionRadioNotAvailable(Ljava/lang/Throwable;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1264
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->handleRadioNotAvailable()V

    goto :goto_0

    .line 1270
    .end local v3           #ar:Landroid/os/AsyncResult;
    :pswitch_4
    const-string v11, "handle EVENT_SWITCH_RESULT"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1271
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 1272
    .restart local v3       #ar:Landroid/os/AsyncResult;
    iget-object v11, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v11, :cond_4

    .line 1273
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->isSwitchBeforeDial:Z

    if-eqz v11, :cond_2

    .line 1279
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updatePendingHangupRequest()V

    .line 1280
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    sget-object v12, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    iput-object v12, v11, Lcom/android/internal/telephony/gsm/GsmConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 1281
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->handleDialCallFailed()V

    .line 1282
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->internalClearDisconnected()V

    .line 1283
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->resumeBackgroundAfterDialFailed()V

    .line 1284
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->isSwitchBeforeDial:Z

    .line 1286
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->getFailedService(I)Lcom/android/internal/telephony/Phone$SuppService;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    .line 1302
    :cond_3
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updateMptyState()V

    .line 1303
    sget-object v11, Lcom/android/internal/telephony/gsm/GsmCallTracker$CrssAction;->NONE:Lcom/android/internal/telephony/gsm/GsmCallTracker$CrssAction;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->crssAction:Lcom/android/internal/telephony/gsm/GsmCallTracker$CrssAction;

    .line 1304
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->isPendingSwap:Z

    .line 1305
    const-string v11, "notify precise call state changed"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1306
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v11}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyPreciseCallStateChanged()V

    .line 1307
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->operationComplete()V

    goto/16 :goto_0

    .line 1288
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->isSwitchBeforeDial:Z

    if-eqz v11, :cond_3

    .line 1289
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->delayedDialString:Ljava/lang/String;

    invoke-static {v11}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->delayedDialString:Ljava/lang/String;

    invoke-static {v11}, Landroid/telephony/PhoneNumberUtils;->isSpecialEmergencyNumber(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 1291
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->delayedDialString:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->delayedClirMode:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->delayedUUSInfo:Lcom/android/internal/telephony/UUSInfo;

    const/16 v15, 0x12

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v15

    invoke-interface {v11, v12, v13, v14, v15}, Lcom/android/internal/telephony/CommandsInterface;->emergencyDial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    .line 1295
    :goto_2
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->isSwitchBeforeDial:Z

    .line 1296
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->delayedDialString:Ljava/lang/String;

    .line 1297
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->delayedClirMode:I

    .line 1298
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->delayedUUSInfo:Lcom/android/internal/telephony/UUSInfo;

    goto :goto_1

    .line 1293
    :cond_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->delayedDialString:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->delayedClirMode:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->delayedUUSInfo:Lcom/android/internal/telephony/UUSInfo;

    const/16 v15, 0x12

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v15

    invoke-interface {v11, v12, v13, v14, v15}, Lcom/android/internal/telephony/CommandsInterface;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    goto :goto_2

    .line 1311
    .end local v3           #ar:Landroid/os/AsyncResult;
    :pswitch_5
    const-string v11, "handle EVENT_CONFERENCE_RESULT"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1312
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updateMptyState()V

    .line 1313
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 1314
    .restart local v3       #ar:Landroid/os/AsyncResult;
    iget-object v11, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v11, :cond_6

    .line 1315
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->getFailedService(I)Lcom/android/internal/telephony/Phone$SuppService;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    .line 1318
    :cond_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v11}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyPreciseCallStateChanged()V

    .line 1319
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->operationComplete()V

    goto/16 :goto_0

    .line 1323
    .end local v3           #ar:Landroid/os/AsyncResult;
    :pswitch_6
    const-string v11, "handle EVENT_SEPARATE_RESULT"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1324
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updateMptyState()V

    .line 1325
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 1326
    .restart local v3       #ar:Landroid/os/AsyncResult;
    iget-object v11, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v11, :cond_7

    .line 1327
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->getFailedService(I)Lcom/android/internal/telephony/Phone$SuppService;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    .line 1329
    :cond_7
    sget-object v11, Lcom/android/internal/telephony/gsm/GsmCallTracker$CrssAction;->NONE:Lcom/android/internal/telephony/gsm/GsmCallTracker$CrssAction;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->crssAction:Lcom/android/internal/telephony/gsm/GsmCallTracker$CrssAction;

    .line 1330
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->operationComplete()V

    goto/16 :goto_0

    .line 1334
    .end local v3           #ar:Landroid/os/AsyncResult;
    :pswitch_7
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 1335
    .restart local v3       #ar:Landroid/os/AsyncResult;
    iget-object v11, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v11, :cond_8

    .line 1336
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->getFailedService(I)Lcom/android/internal/telephony/Phone$SuppService;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    .line 1338
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->operationComplete()V

    goto/16 :goto_0

    .line 1342
    .end local v3           #ar:Landroid/os/AsyncResult;
    :pswitch_8
    const-string v11, "handle EVENT_DIAL_CALL_RESULT"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1343
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 1344
    .restart local v3       #ar:Landroid/os/AsyncResult;
    iget-object v11, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v11, :cond_9

    .line 1345
    const-string v11, "dial call failed!!"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1346
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->handleDialCallFailed()V

    .line 1348
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->operationComplete()V

    goto/16 :goto_0

    .line 1352
    .end local v3           #ar:Landroid/os/AsyncResult;
    :pswitch_9
    const-string v11, "handle EVENT_GET_LAST_CALL_FAIL_CAUSE"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1353
    const/4 v2, 0x0

    .line 1354
    .local v2, FgDiscConn:I
    const/4 v1, 0x0

    .line 1356
    .local v1, BgDiscConn:I
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 1358
    .restart local v3       #ar:Landroid/os/AsyncResult;
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->operationComplete()V

    .line 1360
    iget-object v11, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v11, :cond_c

    .line 1363
    const/16 v11, 0x10

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->causeCode:I

    .line 1364
    const-string v11, "GSM"

    const-string v12, "Exception during getLastCallFailCause, assuming normal disconnect"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    :goto_3
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->causeCode:I

    const/16 v12, 0x22

    if-eq v11, v12, :cond_a

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->causeCode:I

    const/16 v12, 0x29

    if-eq v11, v12, :cond_a

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->causeCode:I

    const/16 v12, 0x2a

    if-eq v11, v12, :cond_a

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->causeCode:I

    const/16 v12, 0x2c

    if-eq v11, v12, :cond_a

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->causeCode:I

    const/16 v12, 0x31

    if-eq v11, v12, :cond_a

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->causeCode:I

    const/16 v12, 0x3a

    if-eq v11, v12, :cond_a

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->causeCode:I

    const v12, 0xffff

    if-ne v11, v12, :cond_b

    .line 1377
    :cond_a
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v11}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v9

    check-cast v9, Landroid/telephony/gsm/GsmCellLocation;

    .line 1378
    .local v9, loc:Landroid/telephony/gsm/GsmCellLocation;
    const v12, 0xc3ba

    const/4 v11, 0x3

    new-array v13, v11, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->causeCode:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v11

    const/4 v14, 0x1

    if-eqz v9, :cond_d

    invoke-virtual {v9}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v11

    :goto_4
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v13, v14

    const/4 v11, 0x2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v14

    invoke-virtual {v14}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v11

    invoke-static {v12, v13}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1383
    .end local v9           #loc:Landroid/telephony/gsm/GsmCellLocation;
    :cond_b
    const/4 v6, 0x0

    .local v6, i:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v10

    .local v10, s:I
    :goto_5
    if-ge v6, v10, :cond_e

    .line 1384
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 1385
    .local v5, conn:Lcom/android/internal/telephony/gsm/GsmConnection;
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->causeCode:I

    invoke-virtual {v5, v11}, Lcom/android/internal/telephony/gsm/GsmConnection;->onRemoteDisconnect(I)V

    .line 1383
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 1367
    .end local v5           #conn:Lcom/android/internal/telephony/gsm/GsmConnection;
    .end local v6           #i:I
    .end local v10           #s:I
    :cond_c
    iget-object v11, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v11, [I

    check-cast v11, [I

    const/4 v12, 0x0

    aget v11, v11, v12

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->causeCode:I

    goto/16 :goto_3

    .line 1378
    .restart local v9       #loc:Landroid/telephony/gsm/GsmCellLocation;
    :cond_d
    const/4 v11, -0x1

    goto :goto_4

    .line 1388
    .end local v9           #loc:Landroid/telephony/gsm/GsmCellLocation;
    .restart local v6       #i:I
    .restart local v10       #s:I
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updatePhoneState()V

    .line 1390
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v11, v11, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v7, v11, -0x1

    .local v7, j:I
    :goto_6
    if-ltz v7, :cond_10

    .line 1391
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v11, v11, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object v4, v11

    check-cast v4, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 1393
    .local v4, cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GsmConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v11, v12, :cond_f

    .line 1394
    add-int/lit8 v2, v2, 0x1

    .line 1390
    :cond_f
    add-int/lit8 v7, v7, -0x1

    goto :goto_6

    .line 1398
    .end local v4           #cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_10
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v11, v11, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x1

    if-le v11, v12, :cond_11

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v11, v11, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x1

    if-le v11, v12, :cond_12

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v11, v11, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    sub-int/2addr v11, v2

    const/4 v12, 0x1

    if-gt v11, v12, :cond_12

    .line 1401
    :cond_11
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    const/4 v12, 0x0

    iput-boolean v12, v11, Lcom/android/internal/telephony/gsm/GsmCall;->isMptyCall:Z

    .line 1404
    :cond_12
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v11, v11, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v8, v11, -0x1

    .local v8, k:I
    :goto_7
    if-ltz v8, :cond_14

    .line 1405
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v11, v11, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object v4, v11

    check-cast v4, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 1407
    .restart local v4       #cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GsmConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v11, v12, :cond_13

    .line 1408
    add-int/lit8 v1, v1, 0x1

    .line 1404
    :cond_13
    add-int/lit8 v8, v8, -0x1

    goto :goto_7

    .line 1412
    .end local v4           #cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_14
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v11, v11, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x1

    if-le v11, v12, :cond_15

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v11, v11, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x1

    if-le v11, v12, :cond_16

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v11, v11, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    sub-int/2addr v11, v1

    const/4 v12, 0x1

    if-gt v11, v12, :cond_16

    .line 1415
    :cond_15
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    const/4 v12, 0x0

    iput-boolean v12, v11, Lcom/android/internal/telephony/gsm/GsmCall;->isMptyCall:Z

    .line 1418
    :cond_16
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v11}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyPreciseCallStateChanged()V

    .line 1419
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    .line 1423
    .end local v1           #BgDiscConn:I
    .end local v2           #FgDiscConn:I
    .end local v3           #ar:Landroid/os/AsyncResult;
    .end local v6           #i:I
    .end local v7           #j:I
    .end local v8           #k:I
    .end local v10           #s:I
    :pswitch_a
    const-string v11, "handle EVENT_HANG_UP_RESULT"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1424
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hasPendingHangupRequest:Z

    if-eqz v11, :cond_17

    .line 1425
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingHangupRequest:I

    add-int/lit8 v11, v11, -0x1

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingHangupRequest:I

    .line 1426
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingHangupRequest:I

    if-nez v11, :cond_17

    .line 1427
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hasPendingHangupRequest:Z

    .line 1430
    :cond_17
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updateMptyState()V

    .line 1431
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->operationComplete()V

    goto/16 :goto_0

    .line 1435
    :pswitch_b
    const-string v11, "handle EVENT_INCOMING_CALL_INDICATION"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1436
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->handleIncomingCallIndication(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1440
    :pswitch_c
    const-string v11, "handle EVENT_RADIO_NOT_AVAILABLE"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1441
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->handleRadioNotAvailable()V

    goto/16 :goto_0

    .line 1445
    :pswitch_d
    const-string v11, "handle EVENT_RADIO_OFF_OR_NOT_AVAILABLE"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1447
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v11}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v11, v12, :cond_0

    .line 1448
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->handleRadioNotAvailable()V

    goto/16 :goto_0

    .line 1229
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_c
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_8
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_d
    .end packed-switch
.end method

.method protected declared-synchronized handlePollCalls(Landroid/os/AsyncResult;)V
    .locals 20
    .parameter "ar"

    .prologue
    .line 670
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v16, v0

    if-nez v16, :cond_2

    .line 671
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v14, Ljava/util/List;

    .line 683
    .local v14, polledCalls:Ljava/util/List;
    :goto_0
    const/4 v13, 0x0

    .line 684
    .local v13, newRinging:Lcom/android/internal/telephony/Connection;
    const/4 v10, 0x0

    .line 686
    .local v10, hasNonHangupStateChanged:Z
    const/4 v12, 0x0

    .line 687
    .local v12, needsPollDelay:Z
    const/4 v15, 0x0

    .line 689
    .local v15, unknownConnectionAppeared:Z
    const/4 v11, 0x0

    .local v11, i:I
    const/4 v6, 0x0

    .local v6, curDC:I
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v8

    .line 690
    .local v8, dcSize:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v11, v0, :cond_10

    .line 691
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v16, v0

    aget-object v5, v16, v11

    .line 692
    .local v5, conn:Lcom/android/internal/telephony/gsm/GsmConnection;
    const/4 v7, 0x0

    .line 695
    .local v7, dc:Lcom/android/internal/telephony/DriverCall;
    if-ge v6, v8, :cond_0

    .line 696
    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #dc:Lcom/android/internal/telephony/DriverCall;
    check-cast v7, Lcom/android/internal/telephony/DriverCall;

    .line 698
    .restart local v7       #dc:Lcom/android/internal/telephony/DriverCall;
    iget v0, v7, Lcom/android/internal/telephony/DriverCall;->index:I

    move/from16 v16, v0

    add-int/lit8 v17, v11, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_4

    .line 699
    add-int/lit8 v6, v6, 0x1

    .line 705
    :cond_0
    :goto_2
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "poll: conn[i="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "]="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", dc="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 708
    if-nez v5, :cond_a

    if-eqz v7, :cond_a

    .line 710
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v16, v0

    if-eqz v16, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/gsm/GsmConnection;->compareTo(Lcom/android/internal/telephony/DriverCall;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 712
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "poll: pendingMO="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 715
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v17, v0

    aput-object v17, v16, v11

    .line 716
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput v11, v0, Lcom/android/internal/telephony/gsm/GsmConnection;->index:I

    .line 717
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/gsm/GsmConnection;->update(Lcom/android/internal/telephony/DriverCall;)Z

    .line 718
    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 721
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupPendingMO:Z

    move/from16 v16, v0

    if-eqz v16, :cond_6

    .line 722
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupPendingMO:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 724
    :try_start_1
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "poll: hangupPendingMO, hangup conn "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 726
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v16, v0

    aget-object v16, v16, v11

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangup(Lcom/android/internal/telephony/gsm/GsmConnection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 883
    .end local v5           #conn:Lcom/android/internal/telephony/gsm/GsmConnection;
    .end local v6           #curDC:I
    .end local v7           #dc:Lcom/android/internal/telephony/DriverCall;
    .end local v8           #dcSize:I
    .end local v10           #hasNonHangupStateChanged:Z
    .end local v11           #i:I
    .end local v12           #needsPollDelay:Z
    .end local v13           #newRinging:Lcom/android/internal/telephony/Connection;
    .end local v14           #polledCalls:Ljava/util/List;
    .end local v15           #unknownConnectionAppeared:Z
    :cond_1
    :goto_3
    monitor-exit p0

    return-void

    .line 672
    :cond_2
    :try_start_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->isCommandExceptionRadioNotAvailable(Ljava/lang/Throwable;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 675
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .restart local v14       #polledCalls:Ljava/util/List;
    goto/16 :goto_0

    .line 679
    .end local v14           #polledCalls:Ljava/util/List;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pollCallsAfterDelay()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 670
    :catchall_0
    move-exception v16

    monitor-exit p0

    throw v16

    .line 701
    .restart local v5       #conn:Lcom/android/internal/telephony/gsm/GsmConnection;
    .restart local v6       #curDC:I
    .restart local v7       #dc:Lcom/android/internal/telephony/DriverCall;
    .restart local v8       #dcSize:I
    .restart local v10       #hasNonHangupStateChanged:Z
    .restart local v11       #i:I
    .restart local v12       #needsPollDelay:Z
    .restart local v13       #newRinging:Lcom/android/internal/telephony/Connection;
    .restart local v14       #polledCalls:Ljava/util/List;
    .restart local v15       #unknownConnectionAppeared:Z
    :cond_4
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 727
    :catch_0
    move-exception v9

    .line 728
    .local v9, ex:Lcom/android/internal/telephony/CallStateException;
    :try_start_3
    const-string v16, "GSM"

    const-string v17, "unexpected error on hangup"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 736
    .end local v9           #ex:Lcom/android/internal/telephony/CallStateException;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v16, v0

    new-instance v17, Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v7, v2, v11}, Lcom/android/internal/telephony/gsm/GsmConnection;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/gsm/GsmCallTracker;I)V

    aput-object v17, v16, v11

    .line 739
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v16, v0

    aget-object v16, v16, v11

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/gsm/GsmConnection;->getCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_8

    .line 740
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v16, v0

    aget-object v13, v16, v11

    .line 760
    :cond_6
    :goto_4
    const/4 v10, 0x1

    .line 690
    :cond_7
    :goto_5
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 747
    :cond_8
    const-string v16, "GSM"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Phantom call appeared "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    iget-object v0, v7, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    move-object/from16 v16, v0

    sget-object v17, Lcom/android/internal/telephony/DriverCall$State;->ALERTING:Lcom/android/internal/telephony/DriverCall$State;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_9

    iget-object v0, v7, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    move-object/from16 v16, v0

    sget-object v17, Lcom/android/internal/telephony/DriverCall$State;->DIALING:Lcom/android/internal/telephony/DriverCall$State;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_9

    .line 754
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v16, v0

    aget-object v16, v16, v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    move-wide/from16 v0, v17

    move-object/from16 v2, v16

    iput-wide v0, v2, Lcom/android/internal/telephony/gsm/GsmConnection;->connectTime:J

    .line 757
    :cond_9
    const/4 v15, 0x1

    goto :goto_4

    .line 761
    :cond_a
    if-eqz v5, :cond_b

    if-nez v7, :cond_b

    .line 764
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 767
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v17, v16, v11

    goto :goto_5

    .line 768
    :cond_b
    if-eqz v5, :cond_d

    if-eqz v7, :cond_d

    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/gsm/GsmConnection;->compareTo(Lcom/android/internal/telephony/DriverCall;)Z

    move-result v16

    if-nez v16, :cond_d

    .line 772
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 773
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v16, v0

    new-instance v17, Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v7, v2, v11}, Lcom/android/internal/telephony/gsm/GsmConnection;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/gsm/GsmCallTracker;I)V

    aput-object v17, v16, v11

    .line 775
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v16, v0

    aget-object v16, v16, v11

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/gsm/GsmConnection;->getCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_c

    .line 776
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v16, v0

    aget-object v13, v16, v11

    .line 778
    :cond_c
    const/4 v10, 0x1

    goto/16 :goto_5

    .line 779
    :cond_d
    if-eqz v5, :cond_7

    if-eqz v7, :cond_7

    .line 781
    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/gsm/GsmConnection;->update(Lcom/android/internal/telephony/DriverCall;)Z

    move-result v4

    .line 782
    .local v4, changed:Z
    if-nez v10, :cond_e

    if-eqz v4, :cond_f

    :cond_e
    const/4 v10, 0x1

    :goto_6
    goto/16 :goto_5

    :cond_f
    const/4 v10, 0x0

    goto :goto_6

    .line 808
    .end local v4           #changed:Z
    .end local v5           #conn:Lcom/android/internal/telephony/gsm/GsmConnection;
    .end local v7           #dc:Lcom/android/internal/telephony/DriverCall;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v16, v0

    if-eqz v16, :cond_11

    .line 809
    const-string v16, "GSM"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Pending MO dropped before poll fg state:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 813
    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 814
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupPendingMO:Z

    .line 817
    :cond_11
    if-eqz v13, :cond_12

    .line 818
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyNewRingingConnection(Lcom/android/internal/telephony/Connection;)V

    .line 824
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    add-int/lit8 v11, v16, -0x1

    :goto_7
    if-ltz v11, :cond_17

    .line 825
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 827
    .restart local v5       #conn:Lcom/android/internal/telephony/gsm/GsmConnection;
    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GsmConnection;->isIncoming()Z

    move-result v16

    if-eqz v16, :cond_15

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GsmConnection;->getConnectTime()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-nez v16, :cond_15

    .line 830
    iget-object v0, v5, Lcom/android/internal/telephony/gsm/GsmConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v16, v0

    sget-object v17, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_14

    .line 831
    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 837
    .local v3, cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    :goto_8
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "missed/rejected call, conn.cause="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v5, Lcom/android/internal/telephony/gsm/GsmConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 838
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "setting cause to "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 840
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 841
    invoke-virtual {v5, v3}, Lcom/android/internal/telephony/gsm/GsmConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    .line 824
    .end local v3           #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    :cond_13
    :goto_9
    add-int/lit8 v11, v11, -0x1

    goto :goto_7

    .line 833
    :cond_14
    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .restart local v3       #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    goto :goto_8

    .line 842
    .end local v3           #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    :cond_15
    iget-object v0, v5, Lcom/android/internal/telephony/gsm/GsmConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v16, v0

    sget-object v17, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_16

    .line 844
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 845
    sget-object v16, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    goto :goto_9

    .line 846
    :cond_16
    iget-object v0, v5, Lcom/android/internal/telephony/gsm/GsmConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v16, v0

    sget-object v17, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_13

    .line 848
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 849
    sget-object v16, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    goto :goto_9

    .line 854
    .end local v5           #conn:Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    if-lez v16, :cond_18

    .line 855
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v16, v0

    const/16 v17, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainNoPollCompleteMessage(I)Landroid/os/Message;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Lcom/android/internal/telephony/CommandsInterface;->getLastCallFailCause(Landroid/os/Message;)V

    .line 859
    :cond_18
    if-eqz v12, :cond_19

    .line 860
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pollCallsAfterDelay()V

    .line 868
    :cond_19
    if-nez v13, :cond_1a

    if-eqz v10, :cond_1b

    .line 869
    :cond_1a
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->internalClearDisconnected()V

    .line 872
    :cond_1b
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updatePhoneState()V

    .line 874
    if-eqz v15, :cond_1c

    .line 875
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyUnknownConnection()V

    .line 878
    :cond_1c
    if-nez v10, :cond_1d

    if-eqz v13, :cond_1

    .line 879
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyPreciseCallStateChanged()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_3
.end method

.method hangup(Lcom/android/internal/telephony/gsm/GsmCall;)V
    .locals 5
    .parameter "call"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1014
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmCall;->getConnections()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 1015
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    const-string v3, "no connections in call"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1018
    :cond_0
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hasPendingHangupRequest:Z

    if-eqz v2, :cond_3

    .line 1019
    const-string v2, "GSM"

    const-string v3, "hangup(GsmCall) hasPendingHangupRequest = true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmCall;->state:Lcom/android/internal/telephony/Call$State;

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_1

    .line 1022
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1023
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 1024
    .local v0, cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    iget v3, v0, Lcom/android/internal/telephony/gsm/GsmConnection;->index:I

    add-int/lit8 v3, v3, 0x1

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->forceReleaseCall(ILandroid/os/Message;)V

    .line 1022
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1027
    .end local v0           #cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    .end local v1           #i:I
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmCall;->state:Lcom/android/internal/telephony/Call$State;

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_2

    .line 1028
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1029
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 1030
    .restart local v0       #cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    iget v3, v0, Lcom/android/internal/telephony/gsm/GsmConnection;->index:I

    add-int/lit8 v3, v3, 0x1

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->forceReleaseCall(ILandroid/os/Message;)V

    .line 1028
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1033
    .end local v0           #cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    .end local v1           #i:I
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmCall;->state:Lcom/android/internal/telephony/Call$State;

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_4

    .line 1034
    const-string v2, "[Not hang up]hangup(GsmCall call)"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1035
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 1036
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 1037
    .restart local v0       #cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    iget v3, v0, Lcom/android/internal/telephony/gsm/GsmConnection;->index:I

    add-int/lit8 v3, v3, 0x1

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->forceReleaseCall(ILandroid/os/Message;)V

    .line 1035
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1043
    .end local v0           #cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    .end local v1           #i:I
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    if-ne p1, v2, :cond_5

    .line 1044
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hasPendingHangupRequest:Z

    .line 1045
    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingHangupRequest:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingHangupRequest:I

    .line 1046
    const-string v2, "(ringing) hangup incoming/waiting"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1047
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmCall;->getConnections()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gsm/GsmConnection;

    check-cast v2, Lcom/android/internal/telephony/gsm/GsmConnection;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangup(Lcom/android/internal/telephony/gsm/GsmConnection;)V

    .line 1078
    :goto_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmCall;->onHangupLocal()V

    .line 1079
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyPreciseCallStateChanged()V

    .line 1081
    :cond_4
    return-void

    .line 1053
    :cond_5
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    if-ne p1, v2, :cond_7

    .line 1054
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hasPendingHangupRequest:Z

    .line 1055
    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingHangupRequest:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingHangupRequest:I

    .line 1056
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmCall;->isDialingOrAlerting()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1057
    const-string v2, "(foregnd) hangup dialing/alerting"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1058
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmCall;->getConnections()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gsm/GsmConnection;

    check-cast v2, Lcom/android/internal/telephony/gsm/GsmConnection;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangup(Lcom/android/internal/telephony/gsm/GsmConnection;)V

    goto :goto_3

    .line 1060
    :cond_6
    const-string v2, "(foregnd) hangup active"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1061
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupForegroundResumeBackground()V

    goto :goto_3

    .line 1063
    :cond_7
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    if-ne p1, v2, :cond_9

    .line 1064
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmCall;->isRinging()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1065
    const-string v2, "(backgnd) hangup all connections"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1066
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupAllConnections(Lcom/android/internal/telephony/gsm/GsmCall;)V

    goto :goto_3

    .line 1068
    :cond_8
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hasPendingHangupRequest:Z

    .line 1069
    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingHangupRequest:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingHangupRequest:I

    .line 1070
    const-string v2, "(backgnd) hangup waiting/background"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1071
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupWaitingOrBackground()V

    goto :goto_3

    .line 1074
    :cond_9
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GsmCall "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "does not belong to GsmCallTracker "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method hangup(Lcom/android/internal/telephony/gsm/GsmCall;Lcom/android/internal/telephony/Connection$DisconnectCause;)V
    .locals 8
    .parameter "call"
    .parameter "discRingingCallCause"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1087
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmCall;->getConnections()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 1088
    new-instance v4, Lcom/android/internal/telephony/CallStateException;

    const-string v5, "no connections in call"

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1091
    :cond_0
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hasPendingHangupRequest:Z

    if-eqz v4, :cond_2

    .line 1092
    const-string v4, "GSM"

    const-string v5, "hangup(GsmCall) hasPendingHangupRequest = true"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GsmCall;->state:Lcom/android/internal/telephony/Call$State;

    sget-object v5, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_1

    .line 1095
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 1096
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 1097
    .local v0, cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    iget v5, v0, Lcom/android/internal/telephony/gsm/GsmConnection;->index:I

    add-int/lit8 v5, v5, 0x1

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->forceReleaseCall(ILandroid/os/Message;)V

    .line 1095
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1100
    .end local v0           #cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    .end local v2           #i:I
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GsmCall;->state:Lcom/android/internal/telephony/Call$State;

    sget-object v5, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_4

    .line 1101
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 1102
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 1103
    .restart local v0       #cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    iget v5, v0, Lcom/android/internal/telephony/gsm/GsmConnection;->index:I

    add-int/lit8 v5, v5, 0x1

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->forceReleaseCall(ILandroid/os/Message;)V

    .line 1101
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1109
    .end local v0           #cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    .end local v2           #i:I
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    if-ne p1, v4, :cond_5

    .line 1110
    const-string v4, "(ringing) hangup waiting or background"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1112
    const-string v4, "Hang up waiting or background call by connection index."

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1113
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmCall;->getConnections()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object v1, v4

    check-cast v1, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 1114
    .local v1, conn:Lcom/android/internal/telephony/gsm/GsmConnection;
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmConnection;->getGSMIndex()I

    move-result v5

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->hangupConnection(ILandroid/os/Message;)V

    .line 1122
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmCall;->onHangupLocal()V

    .line 1126
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    if-ne p1, v4, :cond_3

    .line 1127
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmCall;->getConnections()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object v3, v4

    check-cast v3, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 1128
    .local v3, ringingConn:Lcom/android/internal/telephony/gsm/GsmConnection;
    iput-object p2, v3, Lcom/android/internal/telephony/gsm/GsmConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 1130
    .end local v3           #ringingConn:Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyPreciseCallStateChanged()V

    .line 1132
    .end local v1           #conn:Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_4
    return-void

    .line 1118
    :cond_5
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GsmCall "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "does not belong to GsmCallTracker "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method hangup(Lcom/android/internal/telephony/gsm/GsmConnection;)V
    .locals 5
    .parameter "conn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 942
    iget-object v1, p1, Lcom/android/internal/telephony/gsm/GsmConnection;->owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    if-eq v1, p0, :cond_0

    .line 943
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GsmConnection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "does not belong to GsmCallTracker "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 947
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    if-ne p1, v1, :cond_1

    .line 951
    const-string v1, "hangup: set hangupPendingMO to true"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 952
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupPendingMO:Z

    .line 953
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hasPendingHangupRequest:Z

    .line 954
    iput v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingHangupRequest:I

    .line 972
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmConnection;->onHangupLocal()V

    .line 973
    return-void

    .line 958
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmConnection;->getGSMIndex()I

    move-result v2

    const/16 v3, 0x13

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->hangupConnection(ILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 959
    :catch_0
    move-exception v0

    .line 964
    .local v0, ex:Lcom/android/internal/telephony/CallStateException;
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hasPendingHangupRequest:Z

    .line 965
    iput v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingHangupRequest:I

    .line 967
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GsmCallTracker WARN: hangup() on absent connection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method hangupActiveCall()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 2265
    const-string v0, "hangupActiveCall"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2267
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->getConnections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2268
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "no connections in call"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2271
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    if-eqz v0, :cond_1

    .line 2272
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupPendingMO:Z

    .line 2277
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->onHangupLocal()V

    .line 2278
    return-void

    .line 2274
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupAllConnections(Lcom/android/internal/telephony/gsm/GsmCall;)V

    goto :goto_0
.end method

.method hangupAll()V
    .locals 2

    .prologue
    .line 2255
    const-string v0, "hangupAll"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2256
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->hangupAll(Landroid/os/Message;)V

    .line 2257
    return-void
.end method

.method hangupAllConnections(Lcom/android/internal/telephony/gsm/GsmCall;)V
    .locals 7
    .parameter "call"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1185
    :try_start_0
    iget-object v4, p1, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1186
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 1187
    iget-object v4, p1, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 1188
    .local v0, cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getGSMIndex()I

    move-result v5

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->hangupConnection(ILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1186
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1190
    .end local v0           #cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    .end local v1           #count:I
    .end local v3           #i:I
    :catch_0
    move-exception v2

    .line 1191
    .local v2, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hangupConnectionByIndex caught "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    .end local v2           #ex:Lcom/android/internal/telephony/CallStateException;
    :cond_0
    return-void
.end method

.method hangupAllEx()V
    .locals 2

    .prologue
    .line 2260
    const-string v0, "hangupAllEx"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2261
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->hangupAllEx(Landroid/os/Message;)V

    .line 2262
    return-void
.end method

.method hangupConnectionByIndex(Lcom/android/internal/telephony/gsm/GsmCall;I)V
    .locals 5
    .parameter "call"
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1151
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1152
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1153
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 1154
    .local v0, cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getGSMIndex()I

    move-result v3

    if-ne v3, p2, :cond_0

    .line 1155
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, p2, v4}, Lcom/android/internal/telephony/CommandsInterface;->hangupConnection(ILandroid/os/Message;)V

    .line 1175
    :goto_1
    return-void

    .line 1152
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1161
    .end local v0           #cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1162
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_3

    .line 1163
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 1164
    .restart local v0       #cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getGSMIndex()I

    move-result v3

    if-ne v3, p2, :cond_2

    .line 1165
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, p2, v4}, Lcom/android/internal/telephony/CommandsInterface;->hangupConnection(ILandroid/os/Message;)V

    goto :goto_1

    .line 1162
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1170
    .end local v0           #cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1171
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_5

    .line 1172
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 1173
    .restart local v0       #cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getGSMIndex()I

    move-result v3

    if-ne v3, p2, :cond_4

    .line 1174
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, p2, v4}, Lcom/android/internal/telephony/CommandsInterface;->hangupConnection(ILandroid/os/Message;)V

    goto :goto_1

    .line 1171
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1180
    .end local v0           #cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_5
    new-instance v3, Lcom/android/internal/telephony/CallStateException;

    const-string v4, "no gsm index found"

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method hangupForegroundResumeBackground()V
    .locals 2

    .prologue
    .line 1144
    const-string v0, "hangupForegroundResumeBackground"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1146
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x13

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->hangupForegroundResumeBackground(Landroid/os/Message;)V

    .line 1147
    return-void
.end method

.method hangupWaitingOrBackground()V
    .locals 2

    .prologue
    .line 1137
    const-string v0, "hangupWaitingOrBackground"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1139
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x13

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->hangupWaitingOrBackground(Landroid/os/Message;)V

    .line 1140
    return-void
.end method

.method public isRejectedByMoms()Z
    .locals 1

    .prologue
    .line 2373
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mIsRejectedByMoms:Z

    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1460
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CC][GsmCT][SIM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getMySimId()I

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

    .line 1461
    return-void
.end method

.method public registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 310
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 311
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->voiceCallEndedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 312
    return-void
.end method

.method public registerForVoiceCallIncomingIndication(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 296
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 297
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->voiceCallIncomingIndicationRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 298
    return-void
.end method

.method public registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 286
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 287
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->voiceCallStartedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 288
    return-void
.end method

.method rejectCall()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 508
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->rejectCall(Landroid/os/Message;)V

    .line 513
    return-void

    .line 511
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "phone not ringing"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method resetAccumulatedCallMeter(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "pin2"
    .parameter "result"

    .prologue
    .line 2306
    const-string v0, "resetAccumulatedCallMeter"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2307
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->resetAccumulatedCallMeter(Ljava/lang/String;Landroid/os/Message;)V

    .line 2308
    return-void
.end method

.method separate(Lcom/android/internal/telephony/gsm/GsmConnection;)V
    .locals 4
    .parameter "conn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 977
    iget-object v1, p1, Lcom/android/internal/telephony/gsm/GsmConnection;->owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    if-eq v1, p0, :cond_0

    .line 978
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GsmConnection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "does not belong to GsmCallTracker "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 982
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmConnection;->getGSMIndex()I

    move-result v2

    const/16 v3, 0xc

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->separateConnection(ILandroid/os/Message;)V

    .line 985
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmCallTracker$CrssAction;->SEPERATE:Lcom/android/internal/telephony/gsm/GsmCallTracker$CrssAction;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->crssAction:Lcom/android/internal/telephony/gsm/GsmCallTracker$CrssAction;
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 992
    :goto_0
    return-void

    .line 986
    :catch_0
    move-exception v0

    .line 989
    .local v0, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GsmCallTracker WARN: separate() on absent connection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method setAccumulatedCallMeterMaximum(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "acmmax"
    .parameter "pin2"
    .parameter "result"

    .prologue
    .line 2301
    const-string v0, "setAccumulatedCallMeterMaximum"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2302
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->setAccumulatedCallMeterMaximum(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 2303
    return-void
.end method

.method public setIncomingCallIndicationResponse(Z)V
    .locals 7
    .parameter "accept"

    .prologue
    const/4 v6, 0x0

    .line 2320
    const/4 v0, 0x0

    .line 2322
    .local v0, mode:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setIncomingCallIndicationResponse "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pendingMTCallId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMTCallId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pendingMTSeqNum "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMTSeqNum:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2324
    if-eqz p1, :cond_0

    .line 2325
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 2327
    .local v1, pid:I
    const/4 v0, 0x0

    .line 2328
    const/16 v2, -0xa

    invoke-static {v1, v2}, Landroid/os/Process;->setThreadPriority(II)V

    .line 2329
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adjust the priority of process - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2333
    .end local v1           #pid:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    iget v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMTCallId:I

    iget v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMTSeqNum:I

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v5

    invoke-interface {v2, v0, v3, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->setCallIndication(IIILandroid/os/Message;)V

    .line 2334
    iput v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMTCallId:I

    .line 2335
    iput v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMTSeqNum:I

    .line 2336
    return-void

    .line 2331
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method setMute(Z)V
    .locals 0
    .parameter "mute"

    .prologue
    .line 998
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->desiredMute:Z

    .line 1001
    return-void
.end method

.method setPpuAndCurrency(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .parameter "currency"
    .parameter "ppu"
    .parameter "pin2"
    .parameter "result"

    .prologue
    .line 2311
    const-string v2, "setPpuAndCurrency"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2312
    const-string v0, ""

    .line 2313
    .local v0, cur:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2314
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "00"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2313
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2316
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, v0, p2, p3, p4}, Lcom/android/internal/telephony/CommandsInterface;->setPpuAndCurrency(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 2317
    return-void
.end method

.method switchWaitingOrHoldingAndActive()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 518
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    .line 519
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "cannot be in the incoming state"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 522
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->isPendingSwap:Z

    if-nez v0, :cond_1

    .line 524
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->switchWaitingOrHoldingAndActive(Landroid/os/Message;)V

    .line 527
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmCallTracker$CrssAction;->SWAP:Lcom/android/internal/telephony/gsm/GsmCallTracker$CrssAction;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->crssAction:Lcom/android/internal/telephony/gsm/GsmCallTracker$CrssAction;

    .line 528
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->isPendingSwap:Z

    .line 529
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-boolean v1, v1, Lcom/android/internal/telephony/gsm/GsmCall;->isMptyCall:Z

    iput-boolean v1, v0, Lcom/android/internal/telephony/gsm/GsmCall;->lastMptyState:Z

    .line 530
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-boolean v1, v1, Lcom/android/internal/telephony/gsm/GsmCall;->isMptyCall:Z

    iput-boolean v1, v0, Lcom/android/internal/telephony/gsm/GsmCall;->lastMptyState:Z

    .line 534
    :cond_1
    return-void
.end method

.method public unregisterForVoiceCallEnded(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->voiceCallEndedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 317
    return-void
.end method

.method public unregisterForVoiceCallIncomingIndication(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->voiceCallIncomingIndicationRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 303
    return-void
.end method

.method public unregisterForVoiceCallStarted(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->voiceCallStartedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 293
    return-void
.end method

.method updatePendingHangupRequest()V
    .locals 2

    .prologue
    .line 2343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePendingHangupRequest - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupPendingMO:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hasPendingHangupRequest:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingHangupRequest:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2344
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupPendingMO:Z

    if-eqz v0, :cond_0

    .line 2345
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hasPendingHangupRequest:Z

    if-eqz v0, :cond_0

    .line 2346
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingHangupRequest:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingHangupRequest:I

    .line 2347
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingHangupRequest:I

    if-nez v0, :cond_0

    .line 2348
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hasPendingHangupRequest:Z

    .line 2352
    :cond_0
    return-void
.end method

.method voiceAccept()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1582
    const-string v1, "voiceAccept"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1583
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCall;->isIdle()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1584
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 1585
    .local v0, cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getGSMIndex()I

    move-result v2

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->voiceAccept(ILandroid/os/Message;)V

    .line 1587
    .end local v0           #cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_0
    return-void
.end method

.method vtDial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 2
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1568
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->vtDial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method vtDial(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;
    .locals 1
    .parameter "dialString"
    .parameter "clirMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1578
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->vtDial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method vtDial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;
    .locals 9
    .parameter "dialString"
    .parameter "clirMode"
    .parameter "uusInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x12

    .line 1508
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->clearDisconnected()V

    .line 1510
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->canDial()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1511
    new-instance v5, Lcom/android/internal/telephony/CallStateException;

    const-string v6, "cannot dial VT call in current state"

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1514
    :cond_0
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v6, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v5, v6, :cond_1

    .line 1515
    new-instance v5, Lcom/android/internal/telephony/CallStateException;

    const-string v6, "can only dial VT call in idle state"

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1518
    :cond_1
    new-instance v5, Lcom/android/internal/telephony/gsm/GsmConnection;

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-direct {v5, v6, p1, p0, v7}, Lcom/android/internal/telephony/gsm/GsmConnection;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/gsm/GsmCallTracker;Lcom/android/internal/telephony/gsm/GsmCall;)V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 1519
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/internal/telephony/gsm/GsmConnection;->isVideo:Z

    .line 1520
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupPendingMO:Z

    .line 1522
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/GsmConnection;->address:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/GsmConnection;->address:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/GsmConnection;->address:Ljava/lang/String;

    const/16 v6, 0x4e

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_3

    .line 1526
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    sget-object v6, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    iput-object v6, v5, Lcom/android/internal/telephony/gsm/GsmConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 1560
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updatePhoneState()V

    .line 1561
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyPreciseCallStateChanged()V

    .line 1563
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    return-object v5

    .line 1532
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 1533
    .local v3, len:I
    const/4 v2, 0x0

    .line 1534
    .local v2, i:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1535
    .local v4, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 1537
    .local v1, firstCharAdded:Z
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_8

    .line 1538
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1540
    .local v0, c:C
    const/16 v5, 0x2c

    if-ne v0, v5, :cond_5

    .line 1541
    const/16 v5, 0x70

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1537
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1542
    :cond_5
    const/16 v5, 0x3b

    if-ne v0, v5, :cond_6

    .line 1543
    const/16 v5, 0x77

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1545
    :cond_6
    const/16 v5, 0x2b

    if-ne v0, v5, :cond_7

    if-nez v1, :cond_4

    .line 1546
    :cond_7
    const/4 v1, 0x1

    .line 1547
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1552
    .end local v0           #c:C
    :cond_8
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isSpecialEmergencyNumber(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 1554
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-interface {v5, v6, p2, p3, v7}, Lcom/android/internal/telephony/CommandsInterface;->emergencyDial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    goto :goto_0

    .line 1556
    :cond_9
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-interface {v5, v6, p2, p3, v7}, Lcom/android/internal/telephony/CommandsInterface;->vtDial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    goto :goto_0
.end method

.method vtDial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .parameter "dialString"
    .parameter "uusInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1573
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->vtDial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method
