.class public final Lcom/baidu/server/sip/SipService;
.super Lbaidu/net/sip/ISipService$Stub;
.source "SipService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/server/sip/SipService$1;,
        Lcom/baidu/server/sip/SipService$MyExecutor;,
        Lcom/baidu/server/sip/SipService$ConnectivityReceiver;,
        Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;,
        Lcom/baidu/server/sip/SipService$IntervalMeasurementProcess;,
        Lcom/baidu/server/sip/SipService$SipSessionGroupExt;
    }
.end annotation


# static fields
.field public static final CONTENT:Ljava/lang/String; = "content"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field static final DEBUG:Z = false

.field private static final DEFAULT_KEEPALIVE_INTERVAL:I = 0xa

.field private static final DEFAULT_MAX_KEEPALIVE_INTERVAL:I = 0x78

.field private static final EXPIRY_TIME:I = 0xe10

.field private static final MIN_EXPIRY_TIME:I = 0x3c

.field private static final SHORT_EXPIRY_TIME:I = 0xa

.field public static final SIP_ACCOUNT:Ljava/lang/String; = "sip_account"

.field private static final START_KEEPALIVE_INTERVAL:I = 0x32

.field static final TAG:Ljava/lang/String; = "com.baidu.server.sip"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final TYPE_BAIDU_ACCOUNT:I = 0x1

.field public static final TYPE_EMAIL:I = 0x2

.field public static final TYPE_PHONE:I = 0x3

.field public static final _ID:Ljava/lang/String; = "_id"


# instance fields
.field private mConnected:Z

.field private mConnectivityReceiver:Lcom/baidu/server/sip/SipService$ConnectivityReceiver;

.field private mContext:Landroid/content/Context;

.field private mExecutor:Lcom/baidu/server/sip/SipService$MyExecutor;

.field private mFirstMeasurement:Z

.field private mIntervalMeasurementProcess:Lcom/baidu/server/sip/SipService$IntervalMeasurementProcess;

.field private mKeepAliveInterval:I

.field private mLastGoodKeepAliveInterval:I

.field private mLocalIp:Ljava/lang/String;

.field private mMyWakeLock:Lcom/baidu/server/sip/SipWakeLock;

.field private mNetworkType:Ljava/lang/String;

.field private mPendingSessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lbaidu/net/sip/ISipSession;",
            ">;"
        }
    .end annotation
.end field

.field private mSipGroups:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/server/sip/SipService$SipSessionGroupExt;",
            ">;"
        }
    .end annotation
.end field

.field private mSipOnWifiOnly:Z

.field private mTimer:Lcom/baidu/server/sip/SipWakeupTimer;

.field private mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1338
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "baidu_sip"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/baidu/server/sip/SipService;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 131
    invoke-direct {p0}, Lbaidu/net/sip/ISipService$Stub;-><init>()V

    .line 99
    iput-boolean v2, p0, Lcom/baidu/server/sip/SipService;->mFirstMeasurement:Z

    .line 103
    new-instance v0, Lcom/baidu/server/sip/SipService$MyExecutor;

    invoke-direct {v0, p0}, Lcom/baidu/server/sip/SipService$MyExecutor;-><init>(Lcom/baidu/server/sip/SipService;)V

    iput-object v0, p0, Lcom/baidu/server/sip/SipService;->mExecutor:Lcom/baidu/server/sip/SipService$MyExecutor;

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/server/sip/SipService;->mPendingSessions:Ljava/util/Map;

    .line 116
    const/16 v0, 0x32

    iput v0, p0, Lcom/baidu/server/sip/SipService;->mLastGoodKeepAliveInterval:I

    .line 133
    iput-object p1, p0, Lcom/baidu/server/sip/SipService;->mContext:Landroid/content/Context;

    .line 134
    new-instance v0, Lcom/baidu/server/sip/SipService$ConnectivityReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/baidu/server/sip/SipService$ConnectivityReceiver;-><init>(Lcom/baidu/server/sip/SipService;Lcom/baidu/server/sip/SipService$1;)V

    iput-object v0, p0, Lcom/baidu/server/sip/SipService;->mConnectivityReceiver:Lcom/baidu/server/sip/SipService$ConnectivityReceiver;

    .line 136
    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    const-string v1, "com.baidu.server.sip"

    invoke-virtual {v0, v2, v1}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/server/sip/SipService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 139
    iget-object v0, p0, Lcom/baidu/server/sip/SipService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager$WifiLock;->setReferenceCounted(Z)V

    .line 140
    invoke-static {p1}, Lbaidu/net/sip/SipManager;->isSipWifiOnly(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/baidu/server/sip/SipService;->mSipOnWifiOnly:Z

    .line 142
    new-instance v1, Lcom/baidu/server/sip/SipWakeLock;

    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-direct {v1, v0}, Lcom/baidu/server/sip/SipWakeLock;-><init>(Landroid/os/PowerManager;)V

    iput-object v1, p0, Lcom/baidu/server/sip/SipService;->mMyWakeLock:Lcom/baidu/server/sip/SipWakeLock;

    .line 145
    new-instance v0, Lcom/baidu/server/sip/SipWakeupTimer;

    iget-object v1, p0, Lcom/baidu/server/sip/SipService;->mExecutor:Lcom/baidu/server/sip/SipService$MyExecutor;

    invoke-direct {v0, p1, v1}, Lcom/baidu/server/sip/SipWakeupTimer;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/baidu/server/sip/SipService;->mTimer:Lcom/baidu/server/sip/SipWakeupTimer;

    .line 146
    return-void
.end method

.method static synthetic access$1000(Lcom/baidu/server/sip/SipService;)Lcom/baidu/server/sip/SipService$MyExecutor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/baidu/server/sip/SipService;->mExecutor:Lcom/baidu/server/sip/SipService$MyExecutor;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/baidu/server/sip/SipService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/baidu/server/sip/SipService;->mKeepAliveInterval:I

    return v0
.end method

.method static synthetic access$1102(Lcom/baidu/server/sip/SipService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput p1, p0, Lcom/baidu/server/sip/SipService;->mKeepAliveInterval:I

    return p1
.end method

.method static synthetic access$1202(Lcom/baidu/server/sip/SipService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput p1, p0, Lcom/baidu/server/sip/SipService;->mLastGoodKeepAliveInterval:I

    return p1
.end method

.method static synthetic access$1302(Lcom/baidu/server/sip/SipService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/baidu/server/sip/SipService;->mFirstMeasurement:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/baidu/server/sip/SipService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/baidu/server/sip/SipService;->getKeepAliveInterval()I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/baidu/server/sip/SipService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/baidu/server/sip/SipService;->onKeepAliveIntervalChanged()V

    return-void
.end method

.method static synthetic access$1600(Lcom/baidu/server/sip/SipService;Lbaidu/net/sip/SipProfile;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/baidu/server/sip/SipService;->restartPortMappingLifetimeMeasurement(Lbaidu/net/sip/SipProfile;I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/baidu/server/sip/SipService;Lbaidu/net/sip/SipProfile;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/baidu/server/sip/SipService;->startPortMappingLifetimeMeasurement(Lbaidu/net/sip/SipProfile;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/baidu/server/sip/SipService;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/baidu/server/sip/SipService;->isBehindNAT(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/baidu/server/sip/SipService;Landroid/net/NetworkInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/baidu/server/sip/SipService;->onConnectivityChanged(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$200(Lcom/baidu/server/sip/SipService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/baidu/server/sip/SipService;->mLocalIp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 82
    invoke-static {}, Lcom/baidu/server/sip/SipService;->createLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/baidu/server/sip/SipService;)Lcom/baidu/server/sip/SipWakeupTimer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/baidu/server/sip/SipService;->mTimer:Lcom/baidu/server/sip/SipWakeupTimer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/baidu/server/sip/SipService;)Lcom/baidu/server/sip/SipWakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/baidu/server/sip/SipService;->mMyWakeLock:Lcom/baidu/server/sip/SipWakeLock;

    return-object v0
.end method

.method static synthetic access$500(Lcom/baidu/server/sip/SipService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/baidu/server/sip/SipService;->mConnected:Z

    return v0
.end method

.method static synthetic access$600(Lcom/baidu/server/sip/SipService;Lcom/baidu/server/sip/SipService$SipSessionGroupExt;Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/baidu/server/sip/SipService;->callingSelf(Lcom/baidu/server/sip/SipService$SipSessionGroupExt;Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/baidu/server/sip/SipService;Lbaidu/net/sip/SipProfile;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/baidu/server/sip/SipService;->udpateSipAccountInfo(Lbaidu/net/sip/SipProfile;)V

    return-void
.end method

.method static synthetic access$800(Lcom/baidu/server/sip/SipService;Lbaidu/net/sip/ISipSession;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/baidu/server/sip/SipService;->addPendingSession(Lbaidu/net/sip/ISipSession;)V

    return-void
.end method

.method static synthetic access$900(Lcom/baidu/server/sip/SipService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/baidu/server/sip/SipService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private declared-synchronized addPendingSession(Lbaidu/net/sip/ISipSession;)V
    .locals 3
    .parameter "session"

    .prologue
    .line 426
    monitor-enter p0

    :try_start_0
    const-string v1, "com.baidu.server.sip"

    const-string v2, "<====> SipService::addPendingSession()"

    invoke-static {v1, v2}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 428
    :try_start_1
    invoke-direct {p0}, Lcom/baidu/server/sip/SipService;->cleanUpPendingSessions()V

    .line 429
    iget-object v1, p0, Lcom/baidu/server/sip/SipService;->mPendingSessions:Ljava/util/Map;

    invoke-interface {p1}, Lbaidu/net/sip/ISipSession;->getCallId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 435
    :goto_0
    monitor-exit p0

    return-void

    .line 431
    :catch_0
    move-exception v0

    .line 433
    .local v0, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v1, "com.baidu.server.sip"

    const-string v2, "addPendingSession()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 426
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private anyOpenedToReceiveCalls()Z
    .locals 3

    .prologue
    .line 369
    iget-object v2, p0, Lcom/baidu/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/server/sip/SipService$SipSessionGroupExt;

    .line 370
    .local v0, group:Lcom/baidu/server/sip/SipService$SipSessionGroupExt;
    invoke-virtual {v0}, Lcom/baidu/server/sip/SipService$SipSessionGroupExt;->isOpenedToReceiveCalls()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 372
    .end local v0           #group:Lcom/baidu/server/sip/SipService$SipSessionGroupExt;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private declared-synchronized callingSelf(Lcom/baidu/server/sip/SipService$SipSessionGroupExt;Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;)Z
    .locals 5
    .parameter "ringingGroup"
    .parameter "ringingSession"

    .prologue
    .line 451
    monitor-enter p0

    :try_start_0
    const-string v3, "com.baidu.server.sip"

    const-string v4, "<====> SipService::callingSelf()"

    invoke-static {v3, v4}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    invoke-virtual {p2}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v0

    .line 453
    .local v0, callId:Ljava/lang/String;
    iget-object v3, p0, Lcom/baidu/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/server/sip/SipService$SipSessionGroupExt;

    .line 454
    .local v1, group:Lcom/baidu/server/sip/SipService$SipSessionGroupExt;
    if-eq v1, p1, :cond_0

    invoke-virtual {v1, v0}, Lcom/baidu/server/sip/SipService$SipSessionGroupExt;->containsSession(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 458
    const/4 v3, 0x1

    .line 461
    .end local v1           #group:Lcom/baidu/server/sip/SipService$SipSessionGroupExt;
    :goto_0
    monitor-exit p0

    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 451
    .end local v0           #callId:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private cleanUpPendingSessions()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 438
    const-string v5, "com.baidu.server.sip"

    const-string v6, "<====> SipService::cleanUpPendingSessions()"

    invoke-static {v5, v6}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    iget-object v5, p0, Lcom/baidu/server/sip/SipService;->mPendingSessions:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    iget-object v6, p0, Lcom/baidu/server/sip/SipService;->mPendingSessions:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    new-array v6, v6, [Ljava/util/Map$Entry;

    invoke-interface {v5, v6}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/util/Map$Entry;

    .line 442
    .local v1, entries:[Ljava/util/Map$Entry;,"[Ljava/util/Map$Entry<Ljava/lang/String;Lbaidu/net/sip/ISipSession;>;"
    move-object v0, v1

    .local v0, arr$:[Ljava/util/Map$Entry;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v0, v3

    .line 443
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lbaidu/net/sip/ISipSession;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lbaidu/net/sip/ISipSession;

    invoke-interface {v5}, Lbaidu/net/sip/ISipSession;->getState()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_0

    .line 444
    iget-object v5, p0, Lcom/baidu/server/sip/SipService;->mPendingSessions:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 447
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lbaidu/net/sip/ISipSession;>;"
    :cond_1
    return-void
.end method

.method private createGroup(Lbaidu/net/sip/SipProfile;)Lcom/baidu/server/sip/SipService$SipSessionGroupExt;
    .locals 5
    .parameter "localProfile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 320
    const-string v2, "com.baidu.server.sip"

    const-string v3, "<====> SipService::createGroup()"

    invoke-static {v2, v3}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    invoke-virtual {p1}, Lbaidu/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v1

    .line 322
    .local v1, key:Ljava/lang/String;
    iget-object v2, p0, Lcom/baidu/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/server/sip/SipService$SipSessionGroupExt;

    .line 323
    .local v0, group:Lcom/baidu/server/sip/SipService$SipSessionGroupExt;
    if-nez v0, :cond_1

    .line 324
    new-instance v0, Lcom/baidu/server/sip/SipService$SipSessionGroupExt;

    .end local v0           #group:Lcom/baidu/server/sip/SipService$SipSessionGroupExt;
    invoke-direct {v0, p0, p1, v4, v4}, Lcom/baidu/server/sip/SipService$SipSessionGroupExt;-><init>(Lcom/baidu/server/sip/SipService;Lbaidu/net/sip/SipProfile;Landroid/app/PendingIntent;Lbaidu/net/sip/ISipSessionListener;)V

    .line 325
    .restart local v0       #group:Lcom/baidu/server/sip/SipService$SipSessionGroupExt;
    iget-object v2, p0, Lcom/baidu/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    invoke-direct {p0, p1}, Lcom/baidu/server/sip/SipService;->notifyProfileAdded(Lbaidu/net/sip/SipProfile;)V

    .line 330
    :cond_0
    return-object v0

    .line 327
    :cond_1
    invoke-direct {p0, v0}, Lcom/baidu/server/sip/SipService;->isCallerCreator(Lcom/baidu/server/sip/SipService$SipSessionGroupExt;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 328
    new-instance v2, Ljavax/sip/SipException;

    const-string/jumbo v3, "only creator can access the profile"

    invoke-direct {v2, v3}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private createGroup(Lbaidu/net/sip/SipProfile;Landroid/app/PendingIntent;Lbaidu/net/sip/ISipSessionListener;)Lcom/baidu/server/sip/SipService$SipSessionGroupExt;
    .locals 4
    .parameter "localProfile"
    .parameter "incomingCallPendingIntent"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 336
    const-string v2, "com.baidu.server.sip"

    const-string v3, "<====> SipService::createGroup()"

    invoke-static {v2, v3}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    invoke-virtual {p1}, Lbaidu/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v1

    .line 338
    .local v1, key:Ljava/lang/String;
    iget-object v2, p0, Lcom/baidu/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/server/sip/SipService$SipSessionGroupExt;

    .line 339
    .local v0, group:Lcom/baidu/server/sip/SipService$SipSessionGroupExt;
    if-eqz v0, :cond_1

    .line 340
    invoke-direct {p0, v0}, Lcom/baidu/server/sip/SipService;->isCallerCreator(Lcom/baidu/server/sip/SipService$SipSessionGroupExt;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 341
    new-instance v2, Ljavax/sip/SipException;

    const-string/jumbo v3, "only creator can access the profile"

    invoke-direct {v2, v3}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 343
    :cond_0
    invoke-virtual {v0, p2}, Lcom/baidu/server/sip/SipService$SipSessionGroupExt;->setIncomingCallPendingIntent(Landroid/app/PendingIntent;)V

    .line 344
    invoke-virtual {v0, p3}, Lcom/baidu/server/sip/SipService$SipSessionGroupExt;->setListener(Lbaidu/net/sip/ISipSessionListener;)V

    .line 351
    :goto_0
    return-object v0

    .line 346
    :cond_1
    new-instance v0, Lcom/baidu/server/sip/SipService$SipSessionGroupExt;

    .end local v0           #group:Lcom/baidu/server/sip/SipService$SipSessionGroupExt;
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/baidu/server/sip/SipService$SipSessionGroupExt;-><init>(Lcom/baidu/server/sip/SipService;Lbaidu/net/sip/SipProfile;Landroid/app/PendingIntent;Lbaidu/net/sip/ISipSessionListener;)V

    .line 348
    .restart local v0       #group:Lcom/baidu/server/sip/SipService$SipSessionGroupExt;
    iget-object v2, p0, Lcom/baidu/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    invoke-direct {p0, p1}, Lcom/baidu/server/sip/SipService;->notifyProfileAdded(Lbaidu/net/sip/SipProfile;)V

    goto :goto_0
.end method

.method private static createLooper()Landroid/os/Looper;
    .locals 2

    .prologue
    .line 1290
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SipService.Executor"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1291
    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1292
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    return-object v1
.end method

.method private determineLocalIp()Ljava/lang/String;
    .locals 4

    .prologue
    .line 308
    :try_start_0
    new-instance v1, Ljava/net/DatagramSocket;

    invoke-direct {v1}, Ljava/net/DatagramSocket;-><init>()V

    .line 309
    .local v1, s:Ljava/net/DatagramSocket;
    const-string v2, "192.168.1.1"

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    const/16 v3, 0x50

    invoke-virtual {v1, v2, v3}, Ljava/net/DatagramSocket;->connect(Ljava/net/InetAddress;I)V

    .line 310
    invoke-virtual {v1}, Ljava/net/DatagramSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 314
    .end local v1           #s:Ljava/net/DatagramSocket;
    :goto_0
    return-object v2

    .line 311
    :catch_0
    move-exception v0

    .line 314
    .local v0, e:Ljava/io/IOException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getKeepAliveInterval()I
    .locals 1

    .prologue
    .line 472
    iget v0, p0, Lcom/baidu/server/sip/SipService;->mKeepAliveInterval:I

    if-gez v0, :cond_0

    iget v0, p0, Lcom/baidu/server/sip/SipService;->mLastGoodKeepAliveInterval:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/baidu/server/sip/SipService;->mKeepAliveInterval:I

    goto :goto_0
.end method

.method private isBehindNAT(Ljava/lang/String;)Z
    .locals 6
    .parameter "address"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 479
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 480
    .local v0, d:[B
    const/4 v4, 0x0

    aget-byte v4, v0, v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_1

    const/4 v4, 0x0

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0xac

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xf0

    const/16 v5, 0x10

    if-eq v4, v5, :cond_1

    :cond_0
    const/4 v4, 0x0

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0xc0

    if-ne v4, v5, :cond_2

    const/4 v4, 0x1

    aget-byte v4, v0, v4
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0xa8

    if-ne v4, v5, :cond_2

    .line 490
    .end local v0           #d:[B
    :cond_1
    :goto_0
    return v2

    .line 487
    :catch_0
    move-exception v1

    .line 488
    .local v1, e:Ljava/net/UnknownHostException;
    const-string v2, "com.baidu.server.sip"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isBehindAT()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1           #e:Ljava/net/UnknownHostException;
    :cond_2
    move v2, v3

    .line 490
    goto :goto_0
.end method

.method private isCallerCreator(Lcom/baidu/server/sip/SipService$SipSessionGroupExt;)Z
    .locals 3
    .parameter "group"

    .prologue
    .line 209
    invoke-virtual {p1}, Lcom/baidu/server/sip/SipService$SipSessionGroupExt;->getLocalProfile()Lbaidu/net/sip/SipProfile;

    move-result-object v0

    .line 210
    .local v0, profile:Lbaidu/net/sip/SipProfile;
    invoke-virtual {v0}, Lbaidu/net/sip/SipProfile;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isCallerCreatorOrRadio(Lcom/baidu/server/sip/SipService$SipSessionGroupExt;)Z
    .locals 1
    .parameter "group"

    .prologue
    .line 214
    invoke-direct {p0}, Lcom/baidu/server/sip/SipService;->isCallerRadio()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/baidu/server/sip/SipService;->isCallerCreator(Lcom/baidu/server/sip/SipService$SipSessionGroupExt;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCallerRadio()Z
    .locals 2

    .prologue
    .line 218
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyProfileAdded(Lbaidu/net/sip/SipProfile;)V
    .locals 3
    .parameter "localProfile"

    .prologue
    .line 356
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.baidu.phone.SIP_ADD_PHONE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 357
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android:localSipUri"

    invoke-virtual {p1}, Lbaidu/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 358
    iget-object v1, p0, Lcom/baidu/server/sip/SipService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 359
    return-void
.end method

.method private notifyProfileRemoved(Lbaidu/net/sip/SipProfile;)V
    .locals 3
    .parameter "localProfile"

    .prologue
    .line 363
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.baidu.phone.SIP_REMOVE_PHONE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 364
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android:localSipUri"

    invoke-virtual {p1}, Lbaidu/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 365
    iget-object v1, p0, Lcom/baidu/server/sip/SipService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 366
    return-void
.end method

.method private declared-synchronized onConnectivityChanged(Landroid/net/NetworkInfo;)V
    .locals 9
    .parameter "info"

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 1227
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/baidu/server/sip/SipService;->mNetworkType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1229
    :cond_0
    iget-object v7, p0, Lcom/baidu/server/sip/SipService;->mContext:Landroid/content/Context;

    const-string v8, "connectivity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1231
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    .line 1236
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    :cond_1
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-boolean v7, p0, Lcom/baidu/server/sip/SipService;->mSipOnWifiOnly:Z

    if-eqz v7, :cond_2

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    if-ne v7, v6, :cond_3

    :cond_2
    move v1, v6

    .line 1238
    .local v1, connected:Z
    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v5

    .line 1241
    .local v5, networkType:Ljava/lang/String;
    :goto_0
    iget-boolean v7, p0, Lcom/baidu/server/sip/SipService;->mConnected:Z

    if-ne v1, v7, :cond_5

    iget-object v7, p0, Lcom/baidu/server/sip/SipService;->mNetworkType:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v7, :cond_5

    .line 1287
    :goto_1
    monitor-exit p0

    return-void

    .line 1238
    .end local v5           #networkType:Ljava/lang/String;
    :cond_4
    :try_start_1
    const-string/jumbo v5, "null"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1250
    .restart local v5       #networkType:Ljava/lang/String;
    :cond_5
    :try_start_2
    iget-boolean v7, p0, Lcom/baidu/server/sip/SipService;->mConnected:Z

    if-eqz v7, :cond_6

    .line 1251
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/baidu/server/sip/SipService;->mLocalIp:Ljava/lang/String;

    .line 1252
    invoke-direct {p0}, Lcom/baidu/server/sip/SipService;->stopPortMappingMeasurement()V

    .line 1253
    iget-object v7, p0, Lcom/baidu/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/server/sip/SipService$SipSessionGroupExt;

    .line 1254
    .local v3, group:Lcom/baidu/server/sip/SipService$SipSessionGroupExt;
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Lcom/baidu/server/sip/SipService$SipSessionGroupExt;->onConnectivityChanged(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljavax/sip/SipException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 1284
    .end local v3           #group:Lcom/baidu/server/sip/SipService$SipSessionGroupExt;
    .end local v4           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v2

    .line 1285
    .local v2, e:Ljavax/sip/SipException;
    :try_start_3
    const-string v6, "com.baidu.server.sip"

    const-string/jumbo v7, "onConnectivityChanged()"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1227
    .end local v1           #connected:Z
    .end local v2           #e:Ljavax/sip/SipException;
    .end local v5           #networkType:Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 1258
    .restart local v1       #connected:Z
    .restart local v5       #networkType:Ljava/lang/String;
    :cond_6
    :try_start_4
    iput-boolean v1, p0, Lcom/baidu/server/sip/SipService;->mConnected:Z

    .line 1259
    iput-object v5, p0, Lcom/baidu/server/sip/SipService;->mNetworkType:Ljava/lang/String;

    .line 1261
    if-eqz v1, :cond_9

    .line 1262
    invoke-direct {p0}, Lcom/baidu/server/sip/SipService;->determineLocalIp()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/baidu/server/sip/SipService;->mLocalIp:Ljava/lang/String;

    .line 1263
    const/4 v7, -0x1

    iput v7, p0, Lcom/baidu/server/sip/SipService;->mKeepAliveInterval:I

    .line 1264
    const/16 v7, 0x32

    iput v7, p0, Lcom/baidu/server/sip/SipService;->mLastGoodKeepAliveInterval:I

    .line 1265
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/baidu/server/sip/SipService;->mFirstMeasurement:Z

    .line 1266
    iget-object v7, p0, Lcom/baidu/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/server/sip/SipService$SipSessionGroupExt;

    .line 1267
    .restart local v3       #group:Lcom/baidu/server/sip/SipService$SipSessionGroupExt;
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Lcom/baidu/server/sip/SipService$SipSessionGroupExt;->onConnectivityChanged(Z)V

    goto :goto_3

    .line 1271
    .end local v3           #group:Lcom/baidu/server/sip/SipService$SipSessionGroupExt;
    :cond_7
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    if-ne v7, v6, :cond_8

    .line 1272
    iget-object v6, p0, Lcom/baidu/server/sip/SipService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    goto :goto_1

    .line 1274
    :cond_8
    iget-object v6, p0, Lcom/baidu/server/sip/SipService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    goto :goto_1

    .line 1280
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_9
    iget-object v6, p0, Lcom/baidu/server/sip/SipService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 1282
    iget-object v6, p0, Lcom/baidu/server/sip/SipService;->mMyWakeLock:Lcom/baidu/server/sip/SipWakeLock;

    invoke-virtual {v6}, Lcom/baidu/server/sip/SipWakeLock;->reset()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljavax/sip/SipException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_1
.end method

.method private declared-synchronized onKeepAliveIntervalChanged()V
    .locals 4

    .prologue
    .line 465
    monitor-enter p0

    :try_start_0
    const-string v2, "com.baidu.server.sip"

    const-string v3, "<====> SipService::onKeepAliveIntervalChanged()"

    invoke-static {v2, v3}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    iget-object v2, p0, Lcom/baidu/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/server/sip/SipService$SipSessionGroupExt;

    .line 467
    .local v0, group:Lcom/baidu/server/sip/SipService$SipSessionGroupExt;
    invoke-virtual {v0}, Lcom/baidu/server/sip/SipService$SipSessionGroupExt;->onKeepAliveIntervalChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 465
    .end local v0           #group:Lcom/baidu/server/sip/SipService$SipSessionGroupExt;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 469
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method private registerReceivers()V
    .locals 4

    .prologue
    .line 1206
    iget-object v0, p0, Lcom/baidu/server/sip/SipService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/server/sip/SipService;->mConnectivityReceiver:Lcom/baidu/server/sip/SipService$ConnectivityReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1209
    return-void
.end method

.method private restartPortMappingLifetimeMeasurement(Lbaidu/net/sip/SipProfile;I)V
    .locals 2
    .parameter "localProfile"
    .parameter "maxInterval"

    .prologue
    .line 419
    const-string v0, "com.baidu.server.sip"

    const-string v1, "<====> SipService::restartPortMappingLifetimeMeasurement()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    invoke-direct {p0}, Lcom/baidu/server/sip/SipService;->stopPortMappingMeasurement()V

    .line 421
    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/server/sip/SipService;->mKeepAliveInterval:I

    .line 422
    invoke-direct {p0, p1, p2}, Lcom/baidu/server/sip/SipService;->startPortMappingLifetimeMeasurement(Lbaidu/net/sip/SipProfile;I)V

    .line 423
    return-void
.end method

.method public static start(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 123
    const-string v0, "com.baidu.server.sip"

    const-string v1, "<====> SipService::start()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-static {p0}, Lbaidu/net/sip/SipManager;->isApiSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    const-string v0, "baidusip"

    new-instance v1, Lcom/baidu/server/sip/SipService;

    invoke-direct {v1, p0}, Lcom/baidu/server/sip/SipService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 126
    new-instance v0, Landroid/content/Intent;

    const-string v1, "baidu.net.sip.SIP_SERVICE_UP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 129
    :cond_0
    return-void
.end method

.method private startPortMappingLifetimeMeasurement(Lbaidu/net/sip/SipProfile;)V
    .locals 2
    .parameter "localProfile"

    .prologue
    .line 385
    const-string v0, "com.baidu.server.sip"

    const-string v1, "<====> SipService::startPortMappingLifetimeMeasurement()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    const/16 v0, 0x78

    invoke-direct {p0, p1, v0}, Lcom/baidu/server/sip/SipService;->startPortMappingLifetimeMeasurement(Lbaidu/net/sip/SipProfile;I)V

    .line 388
    return-void
.end method

.method private startPortMappingLifetimeMeasurement(Lbaidu/net/sip/SipProfile;I)V
    .locals 4
    .parameter "localProfile"
    .parameter "maxInterval"

    .prologue
    .line 392
    const-string v1, "com.baidu.server.sip"

    const-string v2, "<====> SipService::startPortMappingLifetimeMeasurement()"

    invoke-static {v1, v2}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    iget-object v1, p0, Lcom/baidu/server/sip/SipService;->mIntervalMeasurementProcess:Lcom/baidu/server/sip/SipService$IntervalMeasurementProcess;

    if-nez v1, :cond_1

    iget v1, p0, Lcom/baidu/server/sip/SipService;->mKeepAliveInterval:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/baidu/server/sip/SipService;->mLocalIp:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/baidu/server/sip/SipService;->isBehindNAT(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 396
    const-string v1, "com.baidu.server.sip"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "start NAT port mapping timeout measurement on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lbaidu/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    iget-boolean v1, p0, Lcom/baidu/server/sip/SipService;->mFirstMeasurement:Z

    if-eqz v1, :cond_2

    .line 400
    const/16 v0, 0xa

    .line 404
    .local v0, minInterval:I
    :goto_0
    if-lt v0, p2, :cond_0

    .line 407
    const/16 v0, 0xa

    iput v0, p0, Lcom/baidu/server/sip/SipService;->mLastGoodKeepAliveInterval:I

    .line 409
    const-string v1, "com.baidu.server.sip"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  reset min interval to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :cond_0
    new-instance v1, Lcom/baidu/server/sip/SipService$IntervalMeasurementProcess;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/baidu/server/sip/SipService$IntervalMeasurementProcess;-><init>(Lcom/baidu/server/sip/SipService;Lbaidu/net/sip/SipProfile;II)V

    iput-object v1, p0, Lcom/baidu/server/sip/SipService;->mIntervalMeasurementProcess:Lcom/baidu/server/sip/SipService$IntervalMeasurementProcess;

    .line 413
    iget-object v1, p0, Lcom/baidu/server/sip/SipService;->mIntervalMeasurementProcess:Lcom/baidu/server/sip/SipService$IntervalMeasurementProcess;

    invoke-virtual {v1}, Lcom/baidu/server/sip/SipService$IntervalMeasurementProcess;->start()V

    .line 415
    .end local v0           #minInterval:I
    :cond_1
    return-void

    .line 402
    :cond_2
    iget v0, p0, Lcom/baidu/server/sip/SipService;->mLastGoodKeepAliveInterval:I

    .restart local v0       #minInterval:I
    goto :goto_0
.end method

.method private stopPortMappingMeasurement()V
    .locals 2

    .prologue
    .line 376
    const-string v0, "com.baidu.server.sip"

    const-string v1, "<====> SipService::stopPortMappingMeasurement()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    iget-object v0, p0, Lcom/baidu/server/sip/SipService;->mIntervalMeasurementProcess:Lcom/baidu/server/sip/SipService$IntervalMeasurementProcess;

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/baidu/server/sip/SipService;->mIntervalMeasurementProcess:Lcom/baidu/server/sip/SipService$IntervalMeasurementProcess;

    invoke-virtual {v0}, Lcom/baidu/server/sip/SipService$IntervalMeasurementProcess;->stop()V

    .line 379
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/server/sip/SipService;->mIntervalMeasurementProcess:Lcom/baidu/server/sip/SipService$IntervalMeasurementProcess;

    .line 381
    :cond_0
    return-void
.end method

.method private udpateSipAccountInfo(Lbaidu/net/sip/SipProfile;)V
    .locals 5
    .parameter "caller"

    .prologue
    .line 1341
    if-eqz p1, :cond_0

    iget-object v4, p0, Lcom/baidu/server/sip/SipService;->mContext:Landroid/content/Context;

    if-nez v4, :cond_1

    .line 1358
    :cond_0
    :goto_0
    return-void

    .line 1345
    :cond_1
    invoke-virtual {p1}, Lbaidu/net/sip/SipProfile;->getBaiduAccountName()Ljava/lang/String;

    move-result-object v0

    .line 1346
    .local v0, accountName:Ljava/lang/String;
    invoke-virtual {p1}, Lbaidu/net/sip/SipProfile;->getEmail()Ljava/lang/String;

    move-result-object v1

    .line 1347
    .local v1, email:Ljava/lang/String;
    invoke-virtual {p1}, Lbaidu/net/sip/SipProfile;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    .line 1348
    .local v2, phoneNumber:Ljava/lang/String;
    invoke-virtual {p1}, Lbaidu/net/sip/SipProfile;->getUserName()Ljava/lang/String;

    move-result-object v3

    .line 1349
    .local v3, sipAccount:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1350
    const/4 v4, 0x1

    invoke-direct {p0, v3, v4, v0}, Lcom/baidu/server/sip/SipService;->updateBaiduSipTable(Ljava/lang/String;ILjava/lang/String;)V

    .line 1352
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1353
    const/4 v4, 0x2

    invoke-direct {p0, v3, v4, v1}, Lcom/baidu/server/sip/SipService;->updateBaiduSipTable(Ljava/lang/String;ILjava/lang/String;)V

    .line 1355
    :cond_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1356
    const/4 v4, 0x3

    invoke-direct {p0, v3, v4, v2}, Lcom/baidu/server/sip/SipService;->updateBaiduSipTable(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method private unregisterReceivers()V
    .locals 2

    .prologue
    .line 1212
    iget-object v0, p0, Lcom/baidu/server/sip/SipService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/server/sip/SipService;->mConnectivityReceiver:Lcom/baidu/server/sip/SipService$ConnectivityReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1216
    iget-object v0, p0, Lcom/baidu/server/sip/SipService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 1217
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/server/sip/SipService;->mConnected:Z

    .line 1218
    return-void
.end method

.method private updateBaiduSipTable(Ljava/lang/String;ILjava/lang/String;)V
    .locals 15
    .parameter "sipAccount"
    .parameter "type"
    .parameter "content"

    .prologue
    .line 1361
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v3, v1

    .line 1362
    .local v3, BAIDU_SIP_PROJECTION:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 1364
    .local v7, BAIDU_SIP_ID_INDEX:I
    const/4 v9, 0x0

    .line 1365
    .local v9, sipCursor:Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 1367
    .local v11, values:Landroid/content/ContentValues;
    :try_start_0
    const-string/jumbo v4, "sip_account=? AND type=?"

    .line 1369
    .local v4, where:Ljava/lang/String;
    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v5, v1

    const/4 v1, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    .line 1370
    .local v5, selectionArgs:[Ljava/lang/String;
    iget-object v1, p0, Lcom/baidu/server/sip/SipService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/baidu/server/sip/SipService;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1373
    if-eqz v9, :cond_1

    .line 1374
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1375
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 1376
    .local v8, recoredId:I
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1377
    .end local v11           #values:Landroid/content/ContentValues;
    .local v12, values:Landroid/content/ContentValues;
    :try_start_1
    const-string v1, "content"

    move-object/from16 v0, p3

    invoke-virtual {v12, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1378
    sget-object v1, Lcom/baidu/server/sip/SipService;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v13, v8

    invoke-static {v1, v13, v14}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 1379
    .local v10, updateUri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/baidu/server/sip/SipService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v10, v12, v2, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1392
    if-eqz v9, :cond_0

    .line 1393
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1394
    const/4 v9, 0x0

    :cond_0
    move-object v11, v12

    .line 1397
    .end local v8           #recoredId:I
    .end local v10           #updateUri:Landroid/net/Uri;
    .end local v12           #values:Landroid/content/ContentValues;
    .restart local v11       #values:Landroid/content/ContentValues;
    :goto_0
    return-void

    .line 1385
    :cond_1
    :try_start_2
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1386
    .end local v11           #values:Landroid/content/ContentValues;
    .restart local v12       #values:Landroid/content/ContentValues;
    :try_start_3
    const-string/jumbo v1, "sip_account"

    move-object/from16 v0, p1

    invoke-virtual {v12, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1387
    const-string/jumbo v1, "type"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1388
    const-string v1, "content"

    move-object/from16 v0, p3

    invoke-virtual {v12, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1389
    iget-object v1, p0, Lcom/baidu/server/sip/SipService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/baidu/server/sip/SipService;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1392
    if-eqz v9, :cond_2

    .line 1393
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1394
    const/4 v9, 0x0

    :cond_2
    move-object v11, v12

    .line 1397
    .end local v12           #values:Landroid/content/ContentValues;
    .restart local v11       #values:Landroid/content/ContentValues;
    goto :goto_0

    .line 1392
    .end local v4           #where:Ljava/lang/String;
    .end local v5           #selectionArgs:[Ljava/lang/String;
    :catchall_0
    move-exception v1

    :goto_1
    if-eqz v9, :cond_3

    .line 1393
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1394
    const/4 v9, 0x0

    :cond_3
    throw v1

    .line 1392
    .end local v11           #values:Landroid/content/ContentValues;
    .restart local v4       #where:Ljava/lang/String;
    .restart local v5       #selectionArgs:[Ljava/lang/String;
    .restart local v12       #values:Landroid/content/ContentValues;
    :catchall_1
    move-exception v1

    move-object v11, v12

    .end local v12           #values:Landroid/content/ContentValues;
    .restart local v11       #values:Landroid/content/ContentValues;
    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized close(Ljava/lang/String;)V
    .locals 4
    .parameter "localProfileUri"

    .prologue
    .line 222
    monitor-enter p0

    :try_start_0
    const-string v1, "com.baidu.server.sip"

    const-string v2, "====> SipService::close()"

    invoke-static {v1, v2}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget-object v1, p0, Lcom/baidu/server/sip/SipService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.USE_SIP"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-object v1, p0, Lcom/baidu/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/server/sip/SipService$SipSessionGroupExt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    .local v0, group:Lcom/baidu/server/sip/SipService$SipSessionGroupExt;
    if-nez v0, :cond_0

    .line 241
    :goto_0
    monitor-exit p0

    return-void

    .line 227
    :cond_0
    :try_start_1
    invoke-direct {p0, v0}, Lcom/baidu/server/sip/SipService;->isCallerCreatorOrRadio(Lcom/baidu/server/sip/SipService$SipSessionGroupExt;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 228
    const-string v1, "com.baidu.server.sip"

    const-string/jumbo v2, "only creator or radio can close this profile"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 222
    .end local v0           #group:Lcom/baidu/server/sip/SipService$SipSessionGroupExt;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 232
    .restart local v0       #group:Lcom/baidu/server/sip/SipService$SipSessionGroupExt;
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/baidu/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #group:Lcom/baidu/server/sip/SipService$SipSessionGroupExt;
    check-cast v0, Lcom/baidu/server/sip/SipService$SipSessionGroupExt;

    .line 233
    .restart local v0       #group:Lcom/baidu/server/sip/SipService$SipSessionGroupExt;
    invoke-virtual {v0}, Lcom/baidu/server/sip/SipService$SipSessionGroupExt;->getLocalProfile()Lbaidu/net/sip/SipProfile;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/baidu/server/sip/SipService;->notifyProfileRemoved(Lbaidu/net/sip/SipProfile;)V

    .line 234
    invoke-virtual {v0}, Lcom/baidu/server/sip/SipService$SipSessionGroupExt;->close()V

    .line 236
    invoke-direct {p0}, Lcom/baidu/server/sip/SipService;->anyOpenedToReceiveCalls()Z

    move-result v1

    if-nez v1, :cond_2

    .line 237
    invoke-direct {p0}, Lcom/baidu/server/sip/SipService;->unregisterReceivers()V

    .line 238
    iget-object v1, p0, Lcom/baidu/server/sip/SipService;->mMyWakeLock:Lcom/baidu/server/sip/SipWakeLock;

    invoke-virtual {v1}, Lcom/baidu/server/sip/SipWakeLock;->reset()V

    .line 240
    :cond_2
    const-string v1, "com.baidu.server.sip"

    const-string v2, "<==== SipService::close()"

    invoke-static {v1, v2}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized createSession(Lbaidu/net/sip/SipProfile;Lbaidu/net/sip/ISipSessionListener;)Lbaidu/net/sip/ISipSession;
    .locals 6
    .parameter "localProfile"
    .parameter "listener"

    .prologue
    const/4 v2, 0x0

    .line 285
    monitor-enter p0

    :try_start_0
    const-string v3, "com.baidu.server.sip"

    const-string v4, "<====> SipService::createSession()"

    invoke-static {v3, v4}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    iget-object v3, p0, Lcom/baidu/server/sip/SipService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.USE_SIP"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {p1, v3}, Lbaidu/net/sip/SipProfile;->setCallingUid(I)V

    .line 289
    iget-boolean v3, p0, Lcom/baidu/server/sip/SipService;->mConnected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 295
    :goto_0
    monitor-exit p0

    return-object v2

    .line 291
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/baidu/server/sip/SipService;->createGroup(Lbaidu/net/sip/SipProfile;)Lcom/baidu/server/sip/SipService$SipSessionGroupExt;

    move-result-object v1

    .line 292
    .local v1, group:Lcom/baidu/server/sip/SipService$SipSessionGroupExt;
    invoke-virtual {v1, p2}, Lcom/baidu/server/sip/SipService$SipSessionGroupExt;->createSession(Lbaidu/net/sip/ISipSessionListener;)Lbaidu/net/sip/ISipSession;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljavax/sip/SipException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_0

    .line 293
    .end local v1           #group:Lcom/baidu/server/sip/SipService$SipSessionGroupExt;
    :catch_0
    move-exception v0

    .line 295
    .local v0, e:Ljavax/sip/SipException;
    goto :goto_0

    .line 285
    .end local v0           #e:Ljavax/sip/SipException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getListOfProfiles()[Lbaidu/net/sip/SipProfile;
    .locals 7

    .prologue
    .line 149
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/baidu/server/sip/SipService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.USE_SIP"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-direct {p0}, Lcom/baidu/server/sip/SipService;->isCallerRadio()Z

    move-result v2

    .line 152
    .local v2, isCallerRadio:Z
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .local v3, profiles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lbaidu/net/sip/SipProfile;>;"
    iget-object v4, p0, Lcom/baidu/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/server/sip/SipService$SipSessionGroupExt;

    .line 154
    .local v0, group:Lcom/baidu/server/sip/SipService$SipSessionGroupExt;
    if-nez v2, :cond_1

    invoke-direct {p0, v0}, Lcom/baidu/server/sip/SipService;->isCallerCreator(Lcom/baidu/server/sip/SipService$SipSessionGroupExt;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 155
    :cond_1
    invoke-virtual {v0}, Lcom/baidu/server/sip/SipService$SipSessionGroupExt;->getLocalProfile()Lbaidu/net/sip/SipProfile;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 149
    .end local v0           #group:Lcom/baidu/server/sip/SipService$SipSessionGroupExt;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #isCallerRadio:Z
    .end local v3           #profiles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lbaidu/net/sip/SipProfile;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 158
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #isCallerRadio:Z
    .restart local v3       #profiles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lbaidu/net/sip/SipProfile;>;"
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Lbaidu/net/sip/SipProfile;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lbaidu/net/sip/SipProfile;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v4
.end method

.method public declared-synchronized getPendingSession(Ljava/lang/String;)Lbaidu/net/sip/ISipSession;
    .locals 4
    .parameter "callId"

    .prologue
    const/4 v0, 0x0

    .line 300
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/baidu/server/sip/SipService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.USE_SIP"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    if-nez p1, :cond_0

    .line 303
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/baidu/server/sip/SipService;->mPendingSessions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbaidu/net/sip/ISipSession;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 300
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isOpened(Ljava/lang/String;)Z
    .locals 5
    .parameter "localProfileUri"

    .prologue
    const/4 v1, 0x0

    .line 244
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/baidu/server/sip/SipService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.USE_SIP"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-object v2, p0, Lcom/baidu/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/server/sip/SipService$SipSessionGroupExt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    .local v0, group:Lcom/baidu/server/sip/SipService$SipSessionGroupExt;
    if-nez v0, :cond_0

    .line 252
    :goto_0
    monitor-exit p0

    return v1

    .line 248
    :cond_0
    :try_start_1
    invoke-direct {p0, v0}, Lcom/baidu/server/sip/SipService;->isCallerCreatorOrRadio(Lcom/baidu/server/sip/SipService$SipSessionGroupExt;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 249
    const/4 v1, 0x1

    goto :goto_0

    .line 251
    :cond_1
    const-string v2, "com.baidu.server.sip"

    const-string/jumbo v3, "only creator or radio can query on the profile"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 244
    .end local v0           #group:Lcom/baidu/server/sip/SipService$SipSessionGroupExt;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized isRegistered(Ljava/lang/String;)Z
    .locals 5
    .parameter "localProfileUri"

    .prologue
    const/4 v1, 0x0

    .line 257
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/baidu/server/sip/SipService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.USE_SIP"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object v2, p0, Lcom/baidu/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/server/sip/SipService$SipSessionGroupExt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    .local v0, group:Lcom/baidu/server/sip/SipService$SipSessionGroupExt;
    if-nez v0, :cond_0

    .line 265
    :goto_0
    monitor-exit p0

    return v1

    .line 261
    :cond_0
    :try_start_1
    invoke-direct {p0, v0}, Lcom/baidu/server/sip/SipService;->isCallerCreatorOrRadio(Lcom/baidu/server/sip/SipService$SipSessionGroupExt;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 262
    invoke-virtual {v0}, Lcom/baidu/server/sip/SipService$SipSessionGroupExt;->isRegistered()Z

    move-result v1

    goto :goto_0

    .line 264
    :cond_1
    const-string v2, "com.baidu.server.sip"

    const-string/jumbo v3, "only creator or radio can query on the profile"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 257
    .end local v0           #group:Lcom/baidu/server/sip/SipService$SipSessionGroupExt;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized open(Lbaidu/net/sip/SipProfile;)V
    .locals 5
    .parameter "localProfile"

    .prologue
    .line 162
    monitor-enter p0

    :try_start_0
    const-string v2, "com.baidu.server.sip"

    const-string v3, "====> SipService::open()"

    invoke-static {v2, v3}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v2, p0, Lcom/baidu/server/sip/SipService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.USE_SIP"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {p1, v2}, Lbaidu/net/sip/SipProfile;->setCallingUid(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    :try_start_1
    iget-object v2, p0, Lcom/baidu/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    .line 168
    .local v0, addingFirstProfile:Z
    invoke-direct {p0, p1}, Lcom/baidu/server/sip/SipService;->createGroup(Lbaidu/net/sip/SipProfile;)Lcom/baidu/server/sip/SipService$SipSessionGroupExt;

    .line 169
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/baidu/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/baidu/server/sip/SipService;->registerReceivers()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljavax/sip/SipException; {:try_start_1 .. :try_end_1} :catch_0

    .line 174
    .end local v0           #addingFirstProfile:Z
    :cond_0
    :goto_0
    :try_start_2
    const-string v2, "com.baidu.server.sip"

    const-string v3, "<==== SipService::open()"

    invoke-static {v2, v3}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 175
    monitor-exit p0

    return-void

    .line 170
    :catch_0
    move-exception v1

    .line 171
    .local v1, e:Ljavax/sip/SipException;
    :try_start_3
    const-string v2, "com.baidu.server.sip"

    const-string/jumbo v3, "openToMakeCalls()"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 162
    .end local v1           #e:Ljavax/sip/SipException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized open3(Lbaidu/net/sip/SipProfile;Landroid/app/PendingIntent;Lbaidu/net/sip/ISipSessionListener;)V
    .locals 6
    .parameter "localProfile"
    .parameter "incomingCallPendingIntent"
    .parameter "listener"

    .prologue
    .line 180
    monitor-enter p0

    :try_start_0
    const-string v3, "com.baidu.server.sip"

    const-string v4, "====> SipService::open3()"

    invoke-static {v3, v4}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object v3, p0, Lcom/baidu/server/sip/SipService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.USE_SIP"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {p1, v3}, Lbaidu/net/sip/SipProfile;->setCallingUid(I)V

    .line 185
    if-nez p2, :cond_0

    .line 186
    const-string v3, "com.baidu.server.sip"

    const-string v4, "incomingCallPendingIntent cannot be null; the profile is not opened"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    :goto_0
    monitor-exit p0

    return-void

    .line 193
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/baidu/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    .line 194
    .local v0, addingFirstProfile:Z
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/server/sip/SipService;->createGroup(Lbaidu/net/sip/SipProfile;Landroid/app/PendingIntent;Lbaidu/net/sip/ISipSessionListener;)Lcom/baidu/server/sip/SipService$SipSessionGroupExt;

    move-result-object v2

    .line 196
    .local v2, group:Lcom/baidu/server/sip/SipService$SipSessionGroupExt;
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/baidu/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0}, Lcom/baidu/server/sip/SipService;->registerReceivers()V

    .line 197
    :cond_1
    invoke-virtual {p1}, Lbaidu/net/sip/SipProfile;->getAutoRegistration()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 198
    invoke-virtual {v2}, Lcom/baidu/server/sip/SipService$SipSessionGroupExt;->openToReceiveCalls()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljavax/sip/SipException; {:try_start_1 .. :try_end_1} :catch_0

    .line 205
    .end local v0           #addingFirstProfile:Z
    .end local v2           #group:Lcom/baidu/server/sip/SipService$SipSessionGroupExt;
    :cond_2
    :goto_1
    :try_start_2
    const-string v3, "com.baidu.server.sip"

    const-string v4, "<==== SipService::open3()"

    invoke-static {v3, v4}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 180
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 200
    :catch_0
    move-exception v1

    .line 201
    .local v1, e:Ljavax/sip/SipException;
    :try_start_3
    const-string v3, "com.baidu.server.sip"

    const-string/jumbo v4, "openToReceiveCalls()"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized setRegistrationListener(Ljava/lang/String;Lbaidu/net/sip/ISipSessionListener;)V
    .locals 4
    .parameter "localProfileUri"
    .parameter "listener"

    .prologue
    .line 271
    monitor-enter p0

    :try_start_0
    const-string v1, "com.baidu.server.sip"

    const-string v2, "<====> SipService::setRegistrationListener()"

    invoke-static {v1, v2}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iget-object v1, p0, Lcom/baidu/server/sip/SipService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.USE_SIP"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-object v1, p0, Lcom/baidu/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/server/sip/SipService$SipSessionGroupExt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    .local v0, group:Lcom/baidu/server/sip/SipService$SipSessionGroupExt;
    if-nez v0, :cond_0

    .line 281
    :goto_0
    monitor-exit p0

    return-void

    .line 276
    :cond_0
    :try_start_1
    invoke-direct {p0, v0}, Lcom/baidu/server/sip/SipService;->isCallerCreator(Lcom/baidu/server/sip/SipService$SipSessionGroupExt;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 277
    invoke-virtual {v0, p2}, Lcom/baidu/server/sip/SipService$SipSessionGroupExt;->setListener(Lbaidu/net/sip/ISipSessionListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 271
    .end local v0           #group:Lcom/baidu/server/sip/SipService$SipSessionGroupExt;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 279
    .restart local v0       #group:Lcom/baidu/server/sip/SipService$SipSessionGroupExt;
    :cond_1
    :try_start_2
    const-string v1, "com.baidu.server.sip"

    const-string/jumbo v2, "only creator can set listener on the profile"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
