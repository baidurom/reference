.class public final Landroid/bluetooth/BluetoothAudioGateway;
.super Ljava/lang/Object;
.source "BluetoothAudioGateway.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field public static final DEFAULT_HF_AG_CHANNEL:I = 0xa

.field public static final DEFAULT_HS_AG_CHANNEL:I = 0xb

.field public static final DIRECTION_INCOMING:I = 0x1

.field public static final DIRECTION_OUTGOING:I = 0x2

.field public static final EVENT_HF_SHUTDOWN:I = 0x2

.field public static final EVENT_HF_STARTED:I = 0x1

.field public static final MSG_INCOMING_HANDSFREE_CONNECTION:I = 0x65

.field public static final MSG_INCOMING_HEADSET_CONNECTION:I = 0x64

.field public static final RFCOMM_CONNECTED:I = 0x1

.field public static final RFCOMM_DISCONNECTED:I = 0x3

.field public static final RFCOMM_ERROR:I = 0x2

.field public static final SCO_ACCEPTED:I = 0x4

.field public static final SCO_CLOSED:I = 0x6

.field public static final SCO_CONNECTED:I = 0x5

.field private static final SELECT_WAIT_TIMEOUT:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "BT Audio Gateway"

.field private static sAtInputCount:I


# instance fields
.field private final mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mAtBuf:[Ljava/lang/String;

.field protected mAtParser:Landroid/bluetooth/AtParser;

.field mAtWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mBufCount:I

.field private mCallback:Landroid/os/Handler;

.field private mConnectThead:Ljava/lang/Thread;

.field private mConnectTimestamp:J

.field private mConnectingHandsfreeAddress:Ljava/lang/String;

.field private mConnectingHandsfreeRfcommChannel:I

.field private mConnectingHandsfreeSocketFd:I

.field private mConnectingHeadsetAddress:Ljava/lang/String;

.field private mConnectingHeadsetRfcommChannel:I

.field private mConnectingHeadsetSocketFd:I

.field private mDirection:I

.field private mHandsfreeAgRfcommChannel:I

.field private mHeadsetAgRfcommChannel:I

.field private mHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

.field private volatile mInterrupted:Z

.field private mIsConnected:Z

.field private mIsStartEvent:Z

.field private mNativeData:I

.field private mOutgoingSCO:Z

.field private mSCOConnected:Z

.field private mTimeoutRemainingMs:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 102
    invoke-static {}, Landroid/bluetooth/BluetoothAudioGateway;->classInitNative()V

    .line 123
    const/4 v0, 0x0

    sput v0, Landroid/bluetooth/BluetoothAudioGateway;->sAtInputCount:I

    return-void
.end method

.method public constructor <init>(Landroid/os/PowerManager;Landroid/bluetooth/BluetoothAdapter;)V
    .locals 2
    .parameter "pm"
    .parameter "adapter"

    .prologue
    .line 159
    const/16 v0, 0xa

    const/16 v1, 0xb

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/bluetooth/BluetoothAudioGateway;-><init>(Landroid/os/PowerManager;Landroid/bluetooth/BluetoothAdapter;II)V

    .line 160
    const-string v0, "BluetoothAudioGateway(1)"

    invoke-static {v0}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method public constructor <init>(Landroid/os/PowerManager;Landroid/bluetooth/BluetoothAdapter;II)V
    .locals 3
    .parameter "pm"
    .parameter "adapter"
    .parameter "handsfreeAgRfcommChannel"
    .parameter "headsetAgRfcommChannel"

    .prologue
    const/4 v2, 0x1

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mHandsfreeAgRfcommChannel:I

    .line 106
    iput v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mHeadsetAgRfcommChannel:I

    .line 137
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mAtBuf:[Ljava/lang/String;

    .line 165
    const-string v0, "BluetoothAudioGateway(2)"

    invoke-static {v0}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 166
    iput-object p2, p0, Landroid/bluetooth/BluetoothAudioGateway;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 167
    iput p3, p0, Landroid/bluetooth/BluetoothAudioGateway;->mHandsfreeAgRfcommChannel:I

    .line 168
    iput p4, p0, Landroid/bluetooth/BluetoothAudioGateway;->mHeadsetAgRfcommChannel:I

    .line 170
    new-instance v0, Landroid/bluetooth/AtParser;

    invoke-direct {v0}, Landroid/bluetooth/AtParser;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mAtParser:Landroid/bluetooth/AtParser;

    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 174
    iput v2, p0, Landroid/bluetooth/BluetoothAudioGateway;->mDirection:I

    .line 175
    iput-boolean v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mIsConnected:Z

    .line 176
    iput-boolean v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mIsStartEvent:Z

    .line 177
    iput-boolean v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mOutgoingSCO:Z

    .line 178
    iput-boolean v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mSCOConnected:Z

    .line 179
    iput v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mBufCount:I

    .line 181
    const-string v0, "AudioGateway"

    invoke-virtual {p1, v2, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mAtWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 182
    iget-object v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mAtWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 183
    invoke-direct {p0}, Landroid/bluetooth/BluetoothAudioGateway;->initializeNativeDataNative()V

    .line 184
    return-void
.end method

.method private native acceptConnectionNative()I
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-static {p0}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Landroid/bluetooth/BluetoothAudioGateway;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mInterrupted:Z

    return v0
.end method

.method static synthetic access$102(Landroid/bluetooth/BluetoothAudioGateway;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-boolean p1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mInterrupted:Z

    return p1
.end method

.method static synthetic access$202(Landroid/bluetooth/BluetoothAudioGateway;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput p1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mConnectingHeadsetRfcommChannel:I

    return p1
.end method

.method static synthetic access$302(Landroid/bluetooth/BluetoothAudioGateway;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput p1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mConnectingHandsfreeRfcommChannel:I

    return p1
.end method

.method static synthetic access$400(Landroid/bluetooth/BluetoothAudioGateway;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Landroid/bluetooth/BluetoothAudioGateway;->waitForHandsfreeIndicationNative()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-static {p0}, Landroid/bluetooth/BluetoothAudioGateway;->logInfo(Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized acquireWakeLock(Landroid/os/PowerManager$WakeLock;)V
    .locals 1
    .parameter "lock"

    .prologue
    .line 287
    monitor-enter p0

    :try_start_0
    const-string v0, "[API] acquireWakeLock"

    invoke-static {v0}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 288
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 289
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    :cond_0
    monitor-exit p0

    return-void

    .line 287
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupNativeDataNative()V
.end method

.method private native closeNative()V
.end method

.method private native connectNative()Z
.end method

.method private native disconnectNative()V
.end method

.method public static getAtInputCount()I
    .locals 2

    .prologue
    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[API] getAtInputCount : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/bluetooth/BluetoothAudioGateway;->sAtInputCount:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 380
    sget v0, Landroid/bluetooth/BluetoothAudioGateway;->sAtInputCount:I

    return v0
.end method

.method private native initializeNativeDataNative()V
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 598
    const-string v0, "BT Audio Gateway"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BT][HFG]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    return-void
.end method

.method private static logErr(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 607
    const-string v0, "BT Audio Gateway"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BT][HFG]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    return-void
.end method

.method private static logInfo(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 601
    const-string v0, "BT Audio Gateway"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BT][HFG]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    return-void
.end method

.method private static logWarn(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 604
    const-string v0, "BT Audio Gateway"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BT][HFG]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    return-void
.end method

.method private declared-synchronized onConnectRequest(Ljava/lang/String;I)V
    .locals 7
    .parameter "address"
    .parameter "type"

    .prologue
    const/4 v2, 0x1

    .line 443
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[API] onConnectRequest("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 444
    const/4 v0, 0x1

    iput v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mDirection:I

    .line 445
    iget-object v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 446
    if-ne p2, v2, :cond_0

    const/16 v0, 0x64

    move v6, v0

    :goto_0
    new-instance v0, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;

    iget-object v2, p0, Landroid/bluetooth/BluetoothAudioGateway;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v3, p0, Landroid/bluetooth/BluetoothAudioGateway;->mHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v5, 0x0

    move-object v1, p0

    move v4, p2

    invoke-direct/range {v0 .. v5}, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;-><init>(Landroid/bluetooth/BluetoothAudioGateway;Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothDevice;II)V

    invoke-direct {p0, v6, v0}, Landroid/bluetooth/BluetoothAudioGateway;->sendMsg(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 453
    monitor-exit p0

    return-void

    .line 446
    :cond_0
    const/16 v0, 0x65

    move v6, v0

    goto :goto_0

    .line 443
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized onConnected(Ljava/lang/String;I)V
    .locals 2
    .parameter "address"
    .parameter "type"

    .prologue
    .line 459
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[API] onConnected("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 461
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mConnectTimestamp:J

    .line 462
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mIsConnected:Z

    .line 464
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/bluetooth/BluetoothAudioGateway;->sendMsg(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 465
    monitor-exit p0

    return-void

    .line 459
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized onDisconnected(Ljava/lang/String;I)V
    .locals 4
    .parameter "address"
    .parameter "type"

    .prologue
    const/4 v3, 0x2

    .line 469
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mDirection:I

    .line 470
    .local v0, dir:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[API] onDisconnected("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 472
    const/4 v1, 0x1

    iput v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mDirection:I

    .line 473
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mIsStartEvent:Z

    .line 474
    const/4 v1, 0x0

    iput v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mBufCount:I

    .line 475
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 476
    iget-boolean v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mIsConnected:Z

    if-eqz v1, :cond_1

    .line 478
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mIsConnected:Z

    .line 479
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/bluetooth/BluetoothAudioGateway;->sendMsg(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 488
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 481
    :cond_1
    if-ne v0, v3, :cond_0

    .line 484
    const/4 v1, 0x2

    const/4 v2, 0x0

    :try_start_1
    invoke-direct {p0, v1, v2}, Landroid/bluetooth/BluetoothAudioGateway;->sendMsg(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 469
    .end local v0           #dir:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private onEvent(I)V
    .locals 2
    .parameter "event"

    .prologue
    .line 538
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[API] onEvent("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 539
    packed-switch p1, :pswitch_data_0

    .line 556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ERR] unknown event : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 559
    :cond_0
    :pswitch_0
    return-void

    .line 543
    :pswitch_1
    iget v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mBufCount:I

    if-lez v0, :cond_0

    .line 545
    :goto_0
    iget v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mBufCount:I

    if-lez v0, :cond_0

    .line 547
    iget-object v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mAtBuf:[Ljava/lang/String;

    iget v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mBufCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mBufCount:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothAudioGateway;->handleInput(Ljava/lang/String;)V

    goto :goto_0

    .line 539
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onPacketReceived(Ljava/lang/String;)V
    .locals 3
    .parameter "atCmd"

    .prologue
    .line 517
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[API] onPacketReceived("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") : mIsStartEvent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mIsStartEvent:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 518
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mBufCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mBufCount:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 519
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mIsStartEvent:Z

    if-nez v0, :cond_1

    .line 521
    iget v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mBufCount:I

    iget-object v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mAtBuf:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 523
    iget-object v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mAtBuf:[Ljava/lang/String;

    iget v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mBufCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/bluetooth/BluetoothAudioGateway;->mBufCount:I

    aput-object p1, v0, v1

    .line 534
    :goto_0
    return-void

    .line 527
    :cond_0
    const-string v0, "[ERR] Run out of AtBuf capacity"

    invoke-static {v0}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 532
    :cond_1
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothAudioGateway;->handleInput(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private declared-synchronized onSCOConnected()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 494
    monitor-enter p0

    :try_start_0
    const-string v0, "[API] onSCOConnected"

    invoke-static {v0}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 495
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mSCOConnected:Z

    .line 496
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mOutgoingSCO:Z

    if-ne v0, v1, :cond_0

    .line 498
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mOutgoingSCO:Z

    .line 499
    const/4 v0, 0x5

    iget-object v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v0, v1}, Landroid/bluetooth/BluetoothAudioGateway;->sendMsg(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 505
    :goto_0
    monitor-exit p0

    return-void

    .line 503
    :cond_0
    const/4 v0, 0x4

    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v0, v1}, Landroid/bluetooth/BluetoothAudioGateway;->sendMsg(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 494
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized onSCODisconnected()V
    .locals 2

    .prologue
    .line 509
    monitor-enter p0

    :try_start_0
    const-string v0, "[API] onSCODisconnected"

    invoke-static {v0}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 510
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mOutgoingSCO:Z

    .line 511
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mSCOConnected:Z

    .line 512
    const/4 v0, 0x6

    iget-object v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v0, v1}, Landroid/bluetooth/BluetoothAudioGateway;->sendMsg(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 513
    monitor-exit p0

    return-void

    .line 509
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private native rejectConnectionNative()V
.end method

.method private declared-synchronized releaseWakeLock(Landroid/os/PowerManager$WakeLock;)V
    .locals 1
    .parameter "lock"

    .prologue
    .line 294
    monitor-enter p0

    :try_start_0
    const-string v0, "[API] releaseWakeLock"

    invoke-static {v0}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    :cond_0
    monitor-exit p0

    return-void

    .line 294
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private sendMsg(ILjava/lang/Object;)V
    .locals 3
    .parameter "msgID"
    .parameter "obj"

    .prologue
    .line 430
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[API] sendMsg : msg_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 431
    iget-object v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mCallback:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 432
    .local v0, msg:Landroid/os/Message;
    if-eqz p2, :cond_0

    .line 434
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 436
    :cond_0
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 437
    return-void
.end method

.method private native sendURCNative(Ljava/lang/String;)Z
.end method

.method private native setEventNative(I)V
.end method

.method private native setUpListeningSocketsNative()Z
.end method

.method private native tearDownListeningSocketsNative()V
.end method

.method private native waitForAsyncConnectNative(Ljava/lang/String;II)I
.end method

.method private native waitForHandsfreeIndicationNative()Z
.end method


# virtual methods
.method public declared-synchronized accept()Z
    .locals 1

    .prologue
    .line 391
    monitor-enter p0

    :try_start_0
    const-string v0, "[API] accept"

    invoke-static {v0}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 392
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 391
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized acceptConnection()I
    .locals 1

    .prologue
    .line 416
    monitor-enter p0

    :try_start_0
    const-string v0, "[API] acceptConnection"

    invoke-static {v0}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 417
    invoke-direct {p0}, Landroid/bluetooth/BluetoothAudioGateway;->acceptConnectionNative()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 416
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized close()V
    .locals 1

    .prologue
    .line 407
    monitor-enter p0

    :try_start_0
    const-string v0, "[API] close"

    invoke-static {v0}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 408
    invoke-direct {p0}, Landroid/bluetooth/BluetoothAudioGateway;->closeNative()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 409
    monitor-exit p0

    return-void

    .line 407
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized connect()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 397
    monitor-enter p0

    :try_start_0
    const-string v1, "[API] connect"

    invoke-static {v1}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 398
    invoke-direct {p0}, Landroid/bluetooth/BluetoothAudioGateway;->connectNative()Z

    move-result v1

    if-ne v1, v0, :cond_0

    .line 400
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mOutgoingSCO:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 403
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 397
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized disconnect()V
    .locals 1

    .prologue
    .line 319
    monitor-enter p0

    :try_start_0
    const-string v0, "[API] disconnect"

    invoke-static {v0}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 320
    invoke-direct {p0}, Landroid/bluetooth/BluetoothAudioGateway;->disconnectNative()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    monitor-exit p0

    return-void

    .line 319
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 277
    :try_start_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothAudioGateway;->cleanupNativeDataNative()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 281
    return-void

    .line 279
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getAtParser()Landroid/bluetooth/AtParser;
    .locals 1

    .prologue
    .line 351
    const-string v0, "[API] getAtParser"

    invoke-static {v0}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mAtParser:Landroid/bluetooth/AtParser;

    return-object v0
.end method

.method public getConnectTimestamp()J
    .locals 2

    .prologue
    .line 374
    const-string v0, "[API] getConnectTimestamp"

    invoke-static {v0}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 375
    iget-wide v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mConnectTimestamp:J

    return-wide v0
.end method

.method public getDirection()I
    .locals 2

    .prologue
    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[API] getDirection : dir="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mDirection:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 357
    iget v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mDirection:I

    return v0
.end method

.method public getRemoteDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 346
    const-string v0, "[API] getRemoteDevice"

    invoke-static {v0}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 347
    iget-object v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method protected handleInput(Ljava/lang/String;)V
    .locals 3
    .parameter "input"

    .prologue
    .line 300
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[API] handleInput("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 301
    iget-object v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mAtWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {p0, v1}, Landroid/bluetooth/BluetoothAudioGateway;->acquireWakeLock(Landroid/os/PowerManager$WakeLock;)V

    .line 304
    sget v1, Landroid/bluetooth/BluetoothAudioGateway;->sAtInputCount:I

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_0

    .line 305
    const/4 v1, 0x0

    sput v1, Landroid/bluetooth/BluetoothAudioGateway;->sAtInputCount:I

    .line 311
    :goto_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mAtParser:Landroid/bluetooth/AtParser;

    invoke-virtual {v1, p1}, Landroid/bluetooth/AtParser;->process(Ljava/lang/String;)Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    .line 312
    .local v0, result:Landroid/bluetooth/AtCommandResult;
    invoke-virtual {v0}, Landroid/bluetooth/AtCommandResult;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/bluetooth/BluetoothAudioGateway;->sendURC(Ljava/lang/String;)Z

    .line 313
    iget-object v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mAtWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {p0, v1}, Landroid/bluetooth/BluetoothAudioGateway;->releaseWakeLock(Landroid/os/PowerManager$WakeLock;)V

    .line 314
    return-void

    .line 307
    .end local v0           #result:Landroid/bluetooth/AtCommandResult;
    :cond_0
    sget v1, Landroid/bluetooth/BluetoothAudioGateway;->sAtInputCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/bluetooth/BluetoothAudioGateway;->sAtInputCount:I

    goto :goto_0
.end method

.method public isConnected()Z
    .locals 2

    .prologue
    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[API] isConnected : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mIsConnected:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 362
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mIsConnected:Z

    return v0
.end method

.method public declared-synchronized isSCOConnected()Z
    .locals 1

    .prologue
    .line 387
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mSCOConnected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized rejectConnection()V
    .locals 1

    .prologue
    .line 421
    monitor-enter p0

    :try_start_0
    const-string v0, "[API] rejectConnection"

    invoke-static {v0}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 422
    invoke-direct {p0}, Landroid/bluetooth/BluetoothAudioGateway;->rejectConnectionNative()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 423
    monitor-exit p0

    return-void

    .line 421
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized sendURC(Ljava/lang/String;)Z
    .locals 2
    .parameter "urc"

    .prologue
    .line 366
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[API] sendURC("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 367
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 368
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothAudioGateway;->sendURCNative(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 370
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 366
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized start(Landroid/os/Handler;)Z
    .locals 3
    .parameter "callback"

    .prologue
    const/4 v0, 0x0

    .line 220
    monitor-enter p0

    :try_start_0
    const-string v1, "[API] start"

    invoke-static {v1}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 221
    iget-object v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mConnectThead:Ljava/lang/Thread;

    if-nez v1, :cond_1

    .line 222
    iput-object p1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mCallback:Landroid/os/Handler;

    .line 223
    new-instance v1, Landroid/bluetooth/BluetoothAudioGateway$1;

    const-string v2, "BT Audio Gateway"

    invoke-direct {v1, p0, v2}, Landroid/bluetooth/BluetoothAudioGateway$1;-><init>(Landroid/bluetooth/BluetoothAudioGateway;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mConnectThead:Ljava/lang/Thread;

    .line 238
    invoke-direct {p0}, Landroid/bluetooth/BluetoothAudioGateway;->setUpListeningSocketsNative()Z

    move-result v1

    if-nez v1, :cond_0

    .line 239
    const-string v1, "Could not set up listening socket, exiting"

    invoke-static {v1}, Landroid/bluetooth/BluetoothAudioGateway;->logErr(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    :goto_0
    monitor-exit p0

    return v0

    .line 243
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mInterrupted:Z

    .line 244
    iget-object v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mConnectThead:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 247
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 220
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startEventThread()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 340
    const-string v0, "[API] startEventThread"

    invoke-static {v0}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 341
    iput-boolean v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mIsStartEvent:Z

    .line 342
    invoke-direct {p0, v1}, Landroid/bluetooth/BluetoothAudioGateway;->setEventNative(I)V

    .line 343
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 251
    monitor-enter p0

    .line 252
    :try_start_0
    const-string v1, "[API] stop"

    invoke-static {v1}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 253
    iget-object v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mConnectThead:Ljava/lang/Thread;

    if-nez v1, :cond_0

    .line 254
    const-string/jumbo v1, "mConnectThead == null"

    invoke-static {v1}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 255
    monitor-exit p0

    .line 273
    :goto_0
    return-void

    .line 257
    :cond_0
    const-string/jumbo v1, "stopping Connect Thread"

    invoke-static {v1}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 258
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mInterrupted:Z

    .line 259
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Landroid/bluetooth/BluetoothAudioGateway;->setEventNative(I)V

    .line 260
    iget-object v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mConnectThead:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 261
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 262
    const-string/jumbo v1, "waiting for thread to terminate"

    invoke-static {v1}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 264
    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mConnectThead:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 268
    :goto_1
    monitor-enter p0

    .line 269
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mConnectThead:Ljava/lang/Thread;

    .line 270
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mCallback:Landroid/os/Handler;

    .line 271
    invoke-direct {p0}, Landroid/bluetooth/BluetoothAudioGateway;->tearDownListeningSocketsNative()V

    .line 272
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 261
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 265
    :catch_0
    move-exception v0

    .line 266
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "Interrupted waiting for Connect Thread to join"

    invoke-static {v1}, Landroid/bluetooth/BluetoothAudioGateway;->logWarn(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public declared-synchronized waitForAsyncConnect(Landroid/bluetooth/BluetoothDevice;II)I
    .locals 4
    .parameter "device"
    .parameter "timeout_ms"
    .parameter "type"

    .prologue
    .line 326
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 327
    .local v0, address:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[API] waitForAsyncConnect("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 328
    invoke-direct {p0, v0, p2, p3}, Landroid/bluetooth/BluetoothAudioGateway;->waitForAsyncConnectNative(Ljava/lang/String;II)I

    move-result v1

    .line 329
    .local v1, ret:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "waitForAsyncConnectNative returns "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V

    .line 330
    if-lez v1, :cond_0

    .line 333
    iput-object p1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 334
    const/4 v2, 0x2

    iput v2, p0, Landroid/bluetooth/BluetoothAudioGateway;->mDirection:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    :cond_0
    monitor-exit p0

    return v1

    .line 326
    .end local v0           #address:Ljava/lang/String;
    .end local v1           #ret:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
