.class public Lcom/android/server/NsdService;
.super Landroid/net/nsd/INsdManager$Stub;
.source "NsdService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NsdService$1;,
        Lcom/android/server/NsdService$ClientInfo;,
        Lcom/android/server/NsdService$NativeCallbackReceiver;,
        Lcom/android/server/NsdService$NativeEvent;,
        Lcom/android/server/NsdService$NativeResponseCode;,
        Lcom/android/server/NsdService$NsdStateMachine;
    }
.end annotation


# static fields
.field private static final BASE:I = 0x60000

.field private static final CMD_TO_STRING_COUNT:I = 0x13

.field private static final DBG:Z = true

.field private static final MDNS_TAG:Ljava/lang/String; = "mDnsConnector"

.field private static final TAG:Ljava/lang/String; = "NsdService"

.field private static sCmdToString:[Ljava/lang/String;


# instance fields
.field private INVALID_ID:I

.field private mClients:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/Messenger;",
            "Lcom/android/server/NsdService$ClientInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mIdToClientInfoMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/NsdService$ClientInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mNativeConnector:Lcom/android/server/NativeDaemonConnector;

.field private final mNativeDaemonConnected:Ljava/util/concurrent/CountDownLatch;

.field private mNsdStateMachine:Lcom/android/server/NsdService$NsdStateMachine;

.field private mReplyChannel:Lcom/android/internal/util/AsyncChannel;

.field private mUniqueId:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 88
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/server/NsdService;->sCmdToString:[Ljava/lang/String;

    .line 91
    sget-object v0, Lcom/android/server/NsdService;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x1

    const-string v2, "DISCOVER"

    aput-object v2, v0, v1

    .line 92
    sget-object v0, Lcom/android/server/NsdService;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x6

    const-string v2, "STOP-DISCOVER"

    aput-object v2, v0, v1

    .line 93
    sget-object v0, Lcom/android/server/NsdService;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x9

    const-string v2, "REGISTER"

    aput-object v2, v0, v1

    .line 94
    sget-object v0, Lcom/android/server/NsdService;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0xc

    const-string v2, "UNREGISTER"

    aput-object v2, v0, v1

    .line 95
    sget-object v0, Lcom/android/server/NsdService;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x12

    const-string v2, "RESOLVE"

    aput-object v2, v0, v1

    .line 96
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 411
    invoke-direct {p0}, Landroid/net/nsd/INsdManager$Stub;-><init>()V

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/NsdService;->mClients:Ljava/util/HashMap;

    .line 79
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NsdService;->mIdToClientInfoMap:Landroid/util/SparseArray;

    .line 81
    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v0, p0, Lcom/android/server/NsdService;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/NsdService;->INVALID_ID:I

    .line 84
    iput v1, p0, Lcom/android/server/NsdService;->mUniqueId:I

    .line 409
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/NsdService;->mNativeDaemonConnected:Ljava/util/concurrent/CountDownLatch;

    .line 412
    iput-object p1, p0, Lcom/android/server/NsdService;->mContext:Landroid/content/Context;

    .line 413
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NsdService;->mContentResolver:Landroid/content/ContentResolver;

    .line 415
    new-instance v0, Lcom/android/server/NativeDaemonConnector;

    new-instance v1, Lcom/android/server/NsdService$NativeCallbackReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/NsdService$NativeCallbackReceiver;-><init>(Lcom/android/server/NsdService;)V

    const-string v2, "mdns"

    const/16 v3, 0xa

    const-string v4, "mDnsConnector"

    const/16 v5, 0x19

    invoke-direct/range {v0 .. v5}, Lcom/android/server/NativeDaemonConnector;-><init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/NsdService;->mNativeConnector:Lcom/android/server/NativeDaemonConnector;

    .line 418
    new-instance v0, Lcom/android/server/NsdService$NsdStateMachine;

    const-string v1, "NsdService"

    invoke-direct {v0, p0, v1}, Lcom/android/server/NsdService$NsdStateMachine;-><init>(Lcom/android/server/NsdService;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/NsdService;->mNsdStateMachine:Lcom/android/server/NsdService$NsdStateMachine;

    .line 419
    iget-object v0, p0, Lcom/android/server/NsdService;->mNsdStateMachine:Lcom/android/server/NsdService$NsdStateMachine;

    invoke-virtual {v0}, Lcom/android/server/NsdService$NsdStateMachine;->start()V

    .line 421
    new-instance v6, Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/server/NsdService;->mNativeConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v1, "mDnsConnector"

    invoke-direct {v6, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 422
    .local v6, th:Ljava/lang/Thread;
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 423
    return-void
.end method

.method static synthetic access$000(I)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    invoke-static {p0}, Lcom/android/server/NsdService;->cmdToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/NsdService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/server/NsdService;->isNsdEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/NsdService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/server/NsdService;->startMDnsDaemon()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/NsdService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/server/NsdService;->stopMDnsDaemon()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/NsdService;)Landroid/util/SparseArray;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/server/NsdService;->mIdToClientInfoMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/NsdService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/server/NsdService;->getUniqueId()I

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/NsdService;ILjava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/server/NsdService;->discoverServices(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/NsdService;Landroid/os/Message;ILjava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/NsdService;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/NsdService;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/server/NsdService;->stopServiceDiscovery(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/NsdService;)Lcom/android/server/NsdService$NsdStateMachine;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/server/NsdService;->mNsdStateMachine:Lcom/android/server/NsdService$NsdStateMachine;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/NsdService;Landroid/os/Message;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/server/NsdService;->replyToMessage(Landroid/os/Message;I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/NsdService;ILandroid/net/nsd/NsdServiceInfo;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/server/NsdService;->registerService(ILandroid/net/nsd/NsdServiceInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/NsdService;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/server/NsdService;->unregisterService(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/NsdService;ILandroid/net/nsd/NsdServiceInfo;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/server/NsdService;->resolveService(ILandroid/net/nsd/NsdServiceInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/NsdService;ILjava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/NsdService;->handleNativeEvent(ILjava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/NsdService;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/server/NsdService;->mNativeDaemonConnected:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/NsdService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/server/NsdService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/NsdService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/server/NsdService;->mClients:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/NsdService;Landroid/os/Message;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/NsdService;->replyToMessage(Landroid/os/Message;II)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/NsdService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/server/NsdService;->sendNsdStateChangeBroadcast(Z)V

    return-void
.end method

.method private static cmdToString(I)Ljava/lang/String;
    .locals 1
    .parameter "cmd"

    .prologue
    .line 99
    const/high16 v0, 0x6

    sub-int/2addr p0, v0

    .line 100
    if-ltz p0, :cond_0

    sget-object v0, Lcom/android/server/NsdService;->sCmdToString:[Ljava/lang/String;

    array-length v0, v0

    if-ge p0, v0, :cond_0

    .line 101
    sget-object v0, Lcom/android/server/NsdService;->sCmdToString:[Ljava/lang/String;

    aget-object v0, v0, p0

    .line 103
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static create(Landroid/content/Context;)Lcom/android/server/NsdService;
    .locals 2
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 426
    new-instance v0, Lcom/android/server/NsdService;

    invoke-direct {v0, p0}, Lcom/android/server/NsdService;-><init>(Landroid/content/Context;)V

    .line 427
    .local v0, service:Lcom/android/server/NsdService;
    iget-object v1, v0, Lcom/android/server/NsdService;->mNativeDaemonConnected:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 428
    return-object v0
.end method

.method private discoverServices(ILjava/lang/String;)Z
    .locals 8
    .parameter "discoveryId"
    .parameter "serviceType"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 689
    const-string v3, "NsdService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "discoverServices: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    :try_start_0
    iget-object v3, p0, Lcom/android/server/NsdService;->mNativeConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "mdnssd"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "discover"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object p2, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 696
    :goto_0
    return v1

    .line 692
    :catch_0
    move-exception v0

    .line 693
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    const-string v1, "NsdService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to discoverServices "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 694
    goto :goto_0
.end method

.method private getAddrInfo(ILjava/lang/String;)Z
    .locals 8
    .parameter "resolveId"
    .parameter "hostname"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 734
    const-string v3, "NsdService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAdddrInfo: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    :try_start_0
    iget-object v3, p0, Lcom/android/server/NsdService;->mNativeConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "mdnssd"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "getaddrinfo"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object p2, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 741
    :goto_0
    return v1

    .line 737
    :catch_0
    move-exception v0

    .line 738
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    const-string v1, "NsdService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to getAddrInfo "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 739
    goto :goto_0
.end method

.method private getUniqueId()I
    .locals 2

    .prologue
    .line 466
    iget v0, p0, Lcom/android/server/NsdService;->mUniqueId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/NsdService;->mUniqueId:I

    iget v1, p0, Lcom/android/server/NsdService;->INVALID_ID:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/NsdService;->mUniqueId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/NsdService;->mUniqueId:I

    .line 467
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/server/NsdService;->mUniqueId:I

    goto :goto_0
.end method

.method private handleNativeEvent(ILjava/lang/String;[Ljava/lang/String;)V
    .locals 15
    .parameter "code"
    .parameter "raw"
    .parameter "cooked"

    .prologue
    .line 515
    const/4 v11, 0x1

    aget-object v11, p3, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 516
    .local v4, id:I
    iget-object v11, p0, Lcom/android/server/NsdService;->mIdToClientInfoMap:Landroid/util/SparseArray;

    invoke-virtual {v11, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/NsdService$ClientInfo;

    .line 517
    .local v2, clientInfo:Lcom/android/server/NsdService$ClientInfo;
    if-nez v2, :cond_1

    .line 518
    const-string v11, "NsdService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unique id with no client mapping: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 523
    :cond_1
    const/4 v1, -0x1

    .line 524
    .local v1, clientId:I
    #getter for: Lcom/android/server/NsdService$ClientInfo;->mClientIds:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->access$1200(Lcom/android/server/NsdService$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v6

    .line 525
    .local v6, keyId:I
    const/4 v11, -0x1

    if-eq v6, v11, :cond_2

    .line 526
    #getter for: Lcom/android/server/NsdService$ClientInfo;->mClientIds:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->access$1200(Lcom/android/server/NsdService$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v11

    invoke-virtual {v11, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 528
    :cond_2
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 545
    :pswitch_1
    const-string v11, "NsdService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SERVICE_DISC_FAILED Raw: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    #getter for: Lcom/android/server/NsdService$ClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->access$2700(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v11

    const v12, 0x60003

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    goto :goto_0

    .line 531
    :pswitch_2
    const-string v11, "NsdService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SERVICE_FOUND Raw: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    new-instance v9, Landroid/net/nsd/NsdServiceInfo;

    const/4 v11, 0x2

    aget-object v11, p3, v11

    const/4 v12, 0x3

    aget-object v12, p3, v12

    const/4 v13, 0x0

    invoke-direct {v9, v11, v12, v13}, Landroid/net/nsd/NsdServiceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/nsd/DnsSdTxtRecord;)V

    .line 533
    .local v9, servInfo:Landroid/net/nsd/NsdServiceInfo;
    #getter for: Lcom/android/server/NsdService$ClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->access$2700(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v11

    const v12, 0x60004

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13, v1, v9}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_0

    .line 538
    .end local v9           #servInfo:Landroid/net/nsd/NsdServiceInfo;
    :pswitch_3
    const-string v11, "NsdService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SERVICE_LOST Raw: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    new-instance v9, Landroid/net/nsd/NsdServiceInfo;

    const/4 v11, 0x2

    aget-object v11, p3, v11

    const/4 v12, 0x3

    aget-object v12, p3, v12

    const/4 v13, 0x0

    invoke-direct {v9, v11, v12, v13}, Landroid/net/nsd/NsdServiceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/nsd/DnsSdTxtRecord;)V

    .line 540
    .restart local v9       #servInfo:Landroid/net/nsd/NsdServiceInfo;
    #getter for: Lcom/android/server/NsdService$ClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->access$2700(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v11

    const v12, 0x60005

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13, v1, v9}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    goto/16 :goto_0

    .line 551
    .end local v9           #servInfo:Landroid/net/nsd/NsdServiceInfo;
    :pswitch_4
    const-string v11, "NsdService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SERVICE_REGISTERED Raw: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    new-instance v9, Landroid/net/nsd/NsdServiceInfo;

    const/4 v11, 0x2

    aget-object v11, p3, v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct {v9, v11, v12, v13}, Landroid/net/nsd/NsdServiceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/nsd/DnsSdTxtRecord;)V

    .line 553
    .restart local v9       #servInfo:Landroid/net/nsd/NsdServiceInfo;
    #getter for: Lcom/android/server/NsdService$ClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->access$2700(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v11

    const v12, 0x6000b

    invoke-virtual {v11, v12, v4, v1, v9}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    goto/16 :goto_0

    .line 558
    .end local v9           #servInfo:Landroid/net/nsd/NsdServiceInfo;
    :pswitch_5
    const-string v11, "NsdService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SERVICE_REGISTER_FAILED Raw: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    #getter for: Lcom/android/server/NsdService$ClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->access$2700(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v11

    const v12, 0x6000a

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    goto/16 :goto_0

    .line 570
    :pswitch_6
    const-string v11, "NsdService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SERVICE_RESOLVED Raw: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    const/4 v11, 0x2

    aget-object v11, p3, v11

    const-string v12, "."

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 572
    .local v5, index:I
    const/4 v11, -0x1

    if-ne v5, v11, :cond_3

    .line 573
    const-string v11, "NsdService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Invalid service found "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 576
    :cond_3
    const/4 v11, 0x2

    aget-object v11, p3, v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 577
    .local v7, name:Ljava/lang/String;
    const/4 v11, 0x2

    aget-object v11, p3, v11

    invoke-virtual {v11, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 578
    .local v8, rest:Ljava/lang/String;
    const-string v11, ".local."

    const-string v12, ""

    invoke-virtual {v8, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 580
    .local v10, type:Ljava/lang/String;
    #getter for: Lcom/android/server/NsdService$ClientInfo;->mResolvedService:Landroid/net/nsd/NsdServiceInfo;
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->access$2300(Lcom/android/server/NsdService$ClientInfo;)Landroid/net/nsd/NsdServiceInfo;

    move-result-object v11

    invoke-virtual {v11, v7}, Landroid/net/nsd/NsdServiceInfo;->setServiceName(Ljava/lang/String;)V

    .line 581
    #getter for: Lcom/android/server/NsdService$ClientInfo;->mResolvedService:Landroid/net/nsd/NsdServiceInfo;
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->access$2300(Lcom/android/server/NsdService$ClientInfo;)Landroid/net/nsd/NsdServiceInfo;

    move-result-object v11

    invoke-virtual {v11, v10}, Landroid/net/nsd/NsdServiceInfo;->setServiceType(Ljava/lang/String;)V

    .line 582
    #getter for: Lcom/android/server/NsdService$ClientInfo;->mResolvedService:Landroid/net/nsd/NsdServiceInfo;
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->access$2300(Lcom/android/server/NsdService$ClientInfo;)Landroid/net/nsd/NsdServiceInfo;

    move-result-object v11

    const/4 v12, 0x4

    aget-object v12, p3, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/net/nsd/NsdServiceInfo;->setPort(I)V

    .line 584
    invoke-direct {p0, v4}, Lcom/android/server/NsdService;->stopResolveService(I)Z

    .line 585
    const/4 v11, 0x3

    aget-object v11, p3, v11

    invoke-direct {p0, v4, v11}, Lcom/android/server/NsdService;->getAddrInfo(ILjava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 586
    #getter for: Lcom/android/server/NsdService$ClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->access$2700(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v11

    const v12, 0x60013

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 588
    iget-object v11, p0, Lcom/android/server/NsdService;->mIdToClientInfoMap:Landroid/util/SparseArray;

    invoke-virtual {v11, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 589
    const/4 v11, 0x0

    #setter for: Lcom/android/server/NsdService$ClientInfo;->mResolvedService:Landroid/net/nsd/NsdServiceInfo;
    invoke-static {v2, v11}, Lcom/android/server/NsdService$ClientInfo;->access$2302(Lcom/android/server/NsdService$ClientInfo;Landroid/net/nsd/NsdServiceInfo;)Landroid/net/nsd/NsdServiceInfo;

    goto/16 :goto_0

    .line 594
    .end local v5           #index:I
    .end local v7           #name:Ljava/lang/String;
    .end local v8           #rest:Ljava/lang/String;
    .end local v10           #type:Ljava/lang/String;
    :pswitch_7
    const-string v11, "NsdService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SERVICE_RESOLVE_FAILED Raw: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    invoke-direct {p0, v4}, Lcom/android/server/NsdService;->stopResolveService(I)Z

    .line 596
    iget-object v11, p0, Lcom/android/server/NsdService;->mIdToClientInfoMap:Landroid/util/SparseArray;

    invoke-virtual {v11, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 597
    const/4 v11, 0x0

    #setter for: Lcom/android/server/NsdService$ClientInfo;->mResolvedService:Landroid/net/nsd/NsdServiceInfo;
    invoke-static {v2, v11}, Lcom/android/server/NsdService$ClientInfo;->access$2302(Lcom/android/server/NsdService$ClientInfo;Landroid/net/nsd/NsdServiceInfo;)Landroid/net/nsd/NsdServiceInfo;

    .line 598
    #getter for: Lcom/android/server/NsdService$ClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->access$2700(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v11

    const v12, 0x60013

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    goto/16 :goto_0

    .line 603
    :pswitch_8
    invoke-direct {p0, v4}, Lcom/android/server/NsdService;->stopGetAddrInfo(I)Z

    .line 604
    iget-object v11, p0, Lcom/android/server/NsdService;->mIdToClientInfoMap:Landroid/util/SparseArray;

    invoke-virtual {v11, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 605
    const/4 v11, 0x0

    #setter for: Lcom/android/server/NsdService$ClientInfo;->mResolvedService:Landroid/net/nsd/NsdServiceInfo;
    invoke-static {v2, v11}, Lcom/android/server/NsdService$ClientInfo;->access$2302(Lcom/android/server/NsdService$ClientInfo;Landroid/net/nsd/NsdServiceInfo;)Landroid/net/nsd/NsdServiceInfo;

    .line 606
    const-string v11, "NsdService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SERVICE_RESOLVE_FAILED Raw: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    #getter for: Lcom/android/server/NsdService$ClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->access$2700(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v11

    const v12, 0x60013

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    goto/16 :goto_0

    .line 612
    :pswitch_9
    const-string v11, "NsdService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SERVICE_GET_ADDR_SUCCESS Raw: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    :try_start_0
    #getter for: Lcom/android/server/NsdService$ClientInfo;->mResolvedService:Landroid/net/nsd/NsdServiceInfo;
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->access$2300(Lcom/android/server/NsdService$ClientInfo;)Landroid/net/nsd/NsdServiceInfo;

    move-result-object v11

    const/4 v12, 0x4

    aget-object v12, p3, v12

    invoke-static {v12}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/net/nsd/NsdServiceInfo;->setHost(Ljava/net/InetAddress;)V

    .line 615
    #getter for: Lcom/android/server/NsdService$ClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->access$2700(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v11

    const v12, 0x60014

    const/4 v13, 0x0

    #getter for: Lcom/android/server/NsdService$ClientInfo;->mResolvedService:Landroid/net/nsd/NsdServiceInfo;
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->access$2300(Lcom/android/server/NsdService$ClientInfo;)Landroid/net/nsd/NsdServiceInfo;

    move-result-object v14

    invoke-virtual {v11, v12, v13, v1, v14}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 621
    :goto_1
    invoke-direct {p0, v4}, Lcom/android/server/NsdService;->stopGetAddrInfo(I)Z

    .line 622
    iget-object v11, p0, Lcom/android/server/NsdService;->mIdToClientInfoMap:Landroid/util/SparseArray;

    invoke-virtual {v11, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 623
    const/4 v11, 0x0

    #setter for: Lcom/android/server/NsdService$ClientInfo;->mResolvedService:Landroid/net/nsd/NsdServiceInfo;
    invoke-static {v2, v11}, Lcom/android/server/NsdService$ClientInfo;->access$2302(Lcom/android/server/NsdService$ClientInfo;Landroid/net/nsd/NsdServiceInfo;)Landroid/net/nsd/NsdServiceInfo;

    goto/16 :goto_0

    .line 617
    :catch_0
    move-exception v3

    .line 618
    .local v3, e:Ljava/net/UnknownHostException;
    #getter for: Lcom/android/server/NsdService$ClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->access$2700(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v11

    const v12, 0x60013

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    goto :goto_1

    .line 528
    nop

    :pswitch_data_0
    .packed-switch 0x25a
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private isNsdEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 460
    iget-object v1, p0, Lcom/android/server/NsdService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "nsd_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 461
    .local v0, ret:Z
    :goto_0
    const-string v1, "NsdService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Network service discovery enabled "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    return v0

    .line 460
    .end local v0           #ret:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private obtainMessage(Landroid/os/Message;)Landroid/os/Message;
    .locals 2
    .parameter "srcMsg"

    .prologue
    .line 776
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 777
    .local v0, msg:Landroid/os/Message;
    iget v1, p1, Landroid/os/Message;->arg2:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 778
    return-object v0
.end method

.method private registerService(ILandroid/net/nsd/NsdServiceInfo;)Z
    .locals 8
    .parameter "regId"
    .parameter "service"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 653
    const-string v3, "NsdService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerService: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    :try_start_0
    iget-object v3, p0, Lcom/android/server/NsdService;->mNativeConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "mdnssd"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "register"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-virtual {p2}, Landroid/net/nsd/NsdServiceInfo;->getServiceName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-virtual {p2}, Landroid/net/nsd/NsdServiceInfo;->getServiceType()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    invoke-virtual {p2}, Landroid/net/nsd/NsdServiceInfo;->getPort()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 662
    :goto_0
    return v1

    .line 658
    :catch_0
    move-exception v0

    .line 659
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    const-string v1, "NsdService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to execute registerService "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 660
    goto :goto_0
.end method

.method private replyToMessage(Landroid/os/Message;I)V
    .locals 2
    .parameter "msg"
    .parameter "what"

    .prologue
    .line 782
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v1, :cond_0

    .line 786
    :goto_0
    return-void

    .line 783
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/NsdService;->obtainMessage(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 784
    .local v0, dstMsg:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 785
    iget-object v1, p0, Lcom/android/server/NsdService;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_0
.end method

.method private replyToMessage(Landroid/os/Message;II)V
    .locals 2
    .parameter "msg"
    .parameter "what"
    .parameter "arg1"

    .prologue
    .line 789
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v1, :cond_0

    .line 794
    :goto_0
    return-void

    .line 790
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/NsdService;->obtainMessage(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 791
    .local v0, dstMsg:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 792
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 793
    iget-object v1, p0, Lcom/android/server/NsdService;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_0
.end method

.method private replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    .locals 2
    .parameter "msg"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 797
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v1, :cond_0

    .line 802
    :goto_0
    return-void

    .line 798
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/NsdService;->obtainMessage(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 799
    .local v0, dstMsg:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 800
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 801
    iget-object v1, p0, Lcom/android/server/NsdService;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_0
.end method

.method private resolveService(ILandroid/net/nsd/NsdServiceInfo;)Z
    .locals 8
    .parameter "resolveId"
    .parameter "service"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 711
    const-string v3, "NsdService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resolveService: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    :try_start_0
    iget-object v3, p0, Lcom/android/server/NsdService;->mNativeConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "mdnssd"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "resolve"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-virtual {p2}, Landroid/net/nsd/NsdServiceInfo;->getServiceName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-virtual {p2}, Landroid/net/nsd/NsdServiceInfo;->getServiceType()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, "local."

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 719
    :goto_0
    return v1

    .line 715
    :catch_0
    move-exception v0

    .line 716
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    const-string v1, "NsdService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to resolveService "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 717
    goto :goto_0
.end method

.method private sendNsdStateChangeBroadcast(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 449
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.nsd.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 450
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 451
    if-eqz p1, :cond_0

    .line 452
    const-string v1, "nsd_state"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 456
    :goto_0
    iget-object v1, p0, Lcom/android/server/NsdService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 457
    return-void

    .line 454
    :cond_0
    const-string v1, "nsd_state"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method private startMDnsDaemon()Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 631
    const-string v3, "NsdService"

    const-string v4, "startMDnsDaemon"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    :try_start_0
    iget-object v3, p0, Lcom/android/server/NsdService;->mNativeConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "mdnssd"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "start-service"

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 638
    :goto_0
    return v1

    .line 634
    :catch_0
    move-exception v0

    .line 635
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    const-string v1, "NsdService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to start daemon"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 636
    goto :goto_0
.end method

.method private stopGetAddrInfo(I)Z
    .locals 8
    .parameter "resolveId"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 745
    const-string v3, "NsdService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopGetAdddrInfo: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    :try_start_0
    iget-object v3, p0, Lcom/android/server/NsdService;->mNativeConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "mdnssd"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "stop-getaddrinfo"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 752
    :goto_0
    return v1

    .line 748
    :catch_0
    move-exception v0

    .line 749
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    const-string v1, "NsdService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to stopGetAddrInfo "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 750
    goto :goto_0
.end method

.method private stopMDnsDaemon()Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 642
    const-string v3, "NsdService"

    const-string v4, "stopMDnsDaemon"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    :try_start_0
    iget-object v3, p0, Lcom/android/server/NsdService;->mNativeConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "mdnssd"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "stop-service"

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 649
    :goto_0
    return v1

    .line 645
    :catch_0
    move-exception v0

    .line 646
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    const-string v1, "NsdService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to start daemon"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 647
    goto :goto_0
.end method

.method private stopResolveService(I)Z
    .locals 8
    .parameter "resolveId"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 723
    const-string v3, "NsdService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopResolveService: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    :try_start_0
    iget-object v3, p0, Lcom/android/server/NsdService;->mNativeConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "mdnssd"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "stop-resolve"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 730
    :goto_0
    return v1

    .line 726
    :catch_0
    move-exception v0

    .line 727
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    const-string v1, "NsdService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to stop resolve "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 728
    goto :goto_0
.end method

.method private stopServiceDiscovery(I)Z
    .locals 8
    .parameter "discoveryId"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 700
    const-string v3, "NsdService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopServiceDiscovery: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    :try_start_0
    iget-object v3, p0, Lcom/android/server/NsdService;->mNativeConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "mdnssd"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "stop-discover"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 707
    :goto_0
    return v1

    .line 703
    :catch_0
    move-exception v0

    .line 704
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    const-string v1, "NsdService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to stopServiceDiscovery "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 705
    goto :goto_0
.end method

.method private unregisterService(I)Z
    .locals 8
    .parameter "regId"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 666
    const-string v3, "NsdService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unregisterService: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    :try_start_0
    iget-object v3, p0, Lcom/android/server/NsdService;->mNativeConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "mdnssd"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "stop-register"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 673
    :goto_0
    return v1

    .line 669
    :catch_0
    move-exception v0

    .line 670
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    const-string v1, "NsdService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to execute unregisterService "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 671
    goto :goto_0
.end method

.method private updateService(ILandroid/net/nsd/DnsSdTxtRecord;)Z
    .locals 8
    .parameter "regId"
    .parameter "t"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 677
    const-string v3, "NsdService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateService: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    if-nez p2, :cond_0

    .line 685
    :goto_0
    return v1

    .line 680
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/NsdService;->mNativeConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "mdnssd"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "update"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-virtual {p2}, Landroid/net/nsd/DnsSdTxtRecord;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-virtual {p2}, Landroid/net/nsd/DnsSdTxtRecord;->getRawData()[B

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 685
    goto :goto_0

    .line 681
    :catch_0
    move-exception v0

    .line 682
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    const-string v2, "NsdService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to updateServices "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 757
    iget-object v2, p0, Lcom/android/server/NsdService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.DUMP"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 759
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission Denial: can\'t dump ServiceDiscoverService from from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 771
    :goto_0
    return-void

    .line 765
    :cond_0
    iget-object v2, p0, Lcom/android/server/NsdService;->mClients:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/NsdService$ClientInfo;

    .line 766
    .local v0, client:Lcom/android/server/NsdService$ClientInfo;
    const-string v2, "Client Info"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 767
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_1

    .line 770
    .end local v0           #client:Lcom/android/server/NsdService$ClientInfo;
    :cond_1
    iget-object v2, p0, Lcom/android/server/NsdService;->mNsdStateMachine:Lcom/android/server/NsdService$NsdStateMachine;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/NsdService$NsdStateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getMessenger()Landroid/os/Messenger;
    .locals 3

    .prologue
    .line 432
    iget-object v0, p0, Lcom/android/server/NsdService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERNET"

    const-string v2, "NsdService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/server/NsdService;->mNsdStateMachine:Lcom/android/server/NsdService$NsdStateMachine;

    invoke-virtual {v1}, Lcom/android/server/NsdService$NsdStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public setEnabled(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 438
    iget-object v0, p0, Lcom/android/server/NsdService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NsdService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    iget-object v1, p0, Lcom/android/server/NsdService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "nsd_on"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 441
    if-eqz p1, :cond_1

    .line 442
    iget-object v0, p0, Lcom/android/server/NsdService;->mNsdStateMachine:Lcom/android/server/NsdService$NsdStateMachine;

    const v1, 0x60018

    invoke-virtual {v0, v1}, Lcom/android/server/NsdService$NsdStateMachine;->sendMessage(I)V

    .line 446
    :goto_1
    return-void

    .line 440
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 444
    :cond_1
    iget-object v0, p0, Lcom/android/server/NsdService;->mNsdStateMachine:Lcom/android/server/NsdService$NsdStateMachine;

    const v1, 0x60019

    invoke-virtual {v0, v1}, Lcom/android/server/NsdService$NsdStateMachine;->sendMessage(I)V

    goto :goto_1
.end method
