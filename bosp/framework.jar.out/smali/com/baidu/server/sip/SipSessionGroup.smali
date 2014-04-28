.class Lcom/baidu/server/sip/SipSessionGroup;
.super Ljava/lang/Object;
.source "SipSessionGroup.java"

# interfaces
.implements Ljavax/sip/SipListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;,
        Lcom/baidu/server/sip/SipSessionGroup$InfoCommand;,
        Lcom/baidu/server/sip/SipSessionGroup$MakeCallCommand;,
        Lcom/baidu/server/sip/SipSessionGroup$RegisterCommand;,
        Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;,
        Lcom/baidu/server/sip/SipSessionGroup$KeepAliveProcessCallback;,
        Lcom/baidu/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;
    }
.end annotation


# static fields
.field private static final ANONYMOUS:Ljava/lang/String; = "anonymous"

.field private static final CANCEL_CALL_TIMER:I = 0x3

.field private static final CONTINUE_CALL:Ljava/util/EventObject; = null

.field private static final DEBUG:Z = false

.field private static final DEBUG_PING:Z = false

.field private static final DEREGISTER:Ljava/util/EventObject; = null

.field private static final END_CALL:Ljava/util/EventObject; = null

.field private static final END_CALL_TIMER:I = 0x3

.field private static final EXPIRY_TIME:I = 0xe10

.field private static final HOLD_CALL:Ljava/util/EventObject; = null

.field private static final INCALL_KEEPALIVE_INTERVAL:I = 0xa

.field private static final KEEPALIVE_TIMEOUT:I = 0x5

.field private static final TAG:Ljava/lang/String; = "com.baidu.server.sip"

.field private static final THREAD_POOL_SIZE:Ljava/lang/String; = "1"

.field private static final WAKE_LOCK_HOLDING_TIME:J = 0x1f4L


# instance fields
.field private mCallReceiverSession:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

.field private mExternalIp:Ljava/lang/String;

.field private mExternalPort:I

.field private mLocalIp:Ljava/lang/String;

.field private final mLocalProfile:Lbaidu/net/sip/SipProfile;

.field private final mPassword:Ljava/lang/String;

.field private mSessionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mSipHelper:Lcom/baidu/server/sip/SipHelper;

.field private mSipStack:Ljavax/sip/SipStack;

.field private mWakeLock:Lcom/baidu/server/sip/SipWakeLock;

.field private mWakeupTimer:Lcom/baidu/server/sip/SipWakeupTimer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 123
    new-instance v0, Ljava/util/EventObject;

    const-string v1, "Deregister"

    invoke-direct {v0, v1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/baidu/server/sip/SipSessionGroup;->DEREGISTER:Ljava/util/EventObject;

    .line 124
    new-instance v0, Ljava/util/EventObject;

    const-string v1, "End call"

    invoke-direct {v0, v1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/baidu/server/sip/SipSessionGroup;->END_CALL:Ljava/util/EventObject;

    .line 125
    new-instance v0, Ljava/util/EventObject;

    const-string v1, "Hold call"

    invoke-direct {v0, v1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/baidu/server/sip/SipSessionGroup;->HOLD_CALL:Ljava/util/EventObject;

    .line 126
    new-instance v0, Ljava/util/EventObject;

    const-string v1, "Continue call"

    invoke-direct {v0, v1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/baidu/server/sip/SipSessionGroup;->CONTINUE_CALL:Ljava/util/EventObject;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lbaidu/net/sip/SipProfile;Ljava/lang/String;Lcom/baidu/server/sip/SipWakeupTimer;Lcom/baidu/server/sip/SipWakeLock;)V
    .locals 2
    .parameter "localIp"
    .parameter "myself"
    .parameter "password"
    .parameter "timer"
    .parameter "wakeLock"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup;->mSessionMap:Ljava/util/Map;

    .line 158
    const-string v0, "com.baidu.server.sip"

    const-string v1, "<====> SipSessionGroup::SipSessionGroup()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iput-object p2, p0, Lcom/baidu/server/sip/SipSessionGroup;->mLocalProfile:Lbaidu/net/sip/SipProfile;

    .line 160
    iput-object p3, p0, Lcom/baidu/server/sip/SipSessionGroup;->mPassword:Ljava/lang/String;

    .line 161
    iput-object p4, p0, Lcom/baidu/server/sip/SipSessionGroup;->mWakeupTimer:Lcom/baidu/server/sip/SipWakeupTimer;

    .line 162
    iput-object p5, p0, Lcom/baidu/server/sip/SipSessionGroup;->mWakeLock:Lcom/baidu/server/sip/SipWakeLock;

    .line 163
    invoke-virtual {p0, p1}, Lcom/baidu/server/sip/SipSessionGroup;->reset(Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method static synthetic access$1300(Lcom/baidu/server/sip/SipSessionGroup;Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/baidu/server/sip/SipSessionGroup;->removeSipSession(Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/baidu/server/sip/SipSessionGroup;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup;->mLocalIp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/baidu/server/sip/SipSessionGroup;)Lbaidu/net/sip/SipProfile;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup;->mLocalProfile:Lbaidu/net/sip/SipProfile;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/baidu/server/sip/SipSessionGroup;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/baidu/server/sip/SipSessionGroup;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800()Ljava/util/EventObject;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/baidu/server/sip/SipSessionGroup;->END_CALL:Ljava/util/EventObject;

    return-object v0
.end method

.method static synthetic access$200(Lcom/baidu/server/sip/SipSessionGroup;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup;->mSessionMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2000()Ljava/util/EventObject;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/baidu/server/sip/SipSessionGroup;->DEREGISTER:Ljava/util/EventObject;

    return-object v0
.end method

.method static synthetic access$2100(Ljava/util/EventObject;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    invoke-static {p0}, Lcom/baidu/server/sip/SipSessionGroup;->isLoggable(Ljava/util/EventObject;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/baidu/server/sip/SipSessionGroup;Ljavax/sip/ResponseEvent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/baidu/server/sip/SipSessionGroup;->extractExternalAddress(Ljavax/sip/ResponseEvent;)V

    return-void
.end method

.method static synthetic access$2300(Ljava/lang/String;Ljava/util/EventObject;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-static {p0, p1}, Lcom/baidu/server/sip/SipSessionGroup;->expectResponse(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/baidu/server/sip/SipSessionGroup;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/baidu/server/sip/SipSessionGroup;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup;->mExternalIp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/baidu/server/sip/SipSessionGroup;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget v0, p0, Lcom/baidu/server/sip/SipSessionGroup;->mExternalPort:I

    return v0
.end method

.method static synthetic access$2700(Lcom/baidu/server/sip/SipSessionGroup;Ljavax/sip/message/Message;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/baidu/server/sip/SipSessionGroup;->extractContent(Ljavax/sip/message/Message;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2800(Ljavax/sip/header/HeaderAddress;)Lbaidu/net/sip/SipProfile;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 106
    invoke-static {p0}, Lcom/baidu/server/sip/SipSessionGroup;->createPeerProfile(Ljavax/sip/header/HeaderAddress;)Lbaidu/net/sip/SipProfile;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900(Lcom/baidu/server/sip/SipSessionGroup;)Lcom/baidu/server/sip/SipWakeupTimer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup;->mWakeupTimer:Lcom/baidu/server/sip/SipWakeupTimer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/baidu/server/sip/SipSessionGroup;)Lcom/baidu/server/sip/SipHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup;->mSipHelper:Lcom/baidu/server/sip/SipHelper;

    return-object v0
.end method

.method static synthetic access$400(Lcom/baidu/server/sip/SipSessionGroup;Ljavax/sip/RequestEvent;Lbaidu/net/sip/ISipSessionListener;Ljavax/sip/ServerTransaction;I)Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 106
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/baidu/server/sip/SipSessionGroup;->createNewSession(Ljavax/sip/RequestEvent;Lbaidu/net/sip/ISipSessionListener;Ljavax/sip/ServerTransaction;I)Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/baidu/server/sip/SipSessionGroup;Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/baidu/server/sip/SipSessionGroup;->addSipSession(Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;)V

    return-void
.end method

.method static synthetic access$600(Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;Ljava/util/EventObject;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-static {p0, p1}, Lcom/baidu/server/sip/SipSessionGroup;->isLoggable(Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;Ljava/util/EventObject;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Ljava/util/EventObject;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    invoke-static {p0}, Lcom/baidu/server/sip/SipSessionGroup;->log(Ljava/util/EventObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Ljava/lang/String;Ljava/util/EventObject;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-static {p0, p1}, Lcom/baidu/server/sip/SipSessionGroup;->isRequestEvent(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v0

    return v0
.end method

.method private declared-synchronized addSipSession(Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;)V
    .locals 6
    .parameter "newSession"

    .prologue
    .line 312
    monitor-enter p0

    :try_start_0
    const-string v3, "com.baidu.server.sip"

    const-string v4, "<====> SipSessionGroup::addSipSession()"

    invoke-static {v3, v4}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    invoke-direct {p0, p1}, Lcom/baidu/server/sip/SipSessionGroup;->removeSipSession(Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;)V

    .line 314
    invoke-virtual {p1}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v2

    .line 315
    .local v2, key:Ljava/lang/String;
    iget-object v3, p0, Lcom/baidu/server/sip/SipSessionGroup;->mSessionMap:Ljava/util/Map;

    invoke-interface {v3, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    invoke-static {p1}, Lcom/baidu/server/sip/SipSessionGroup;->isLoggable(Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 317
    const-string v3, "com.baidu.server.sip"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+++  add a session with key:  \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-object v3, p0, Lcom/baidu/server/sip/SipSessionGroup;->mSessionMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 319
    .local v1, k:Ljava/lang/String;
    const-string v3, "com.baidu.server.sip"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/server/sip/SipSessionGroup;->mSessionMap:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 312
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #k:Ljava/lang/String;
    .end local v2           #key:Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 322
    .restart local v2       #key:Ljava/lang/String;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method private static allocateLocalPort()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 285
    :try_start_0
    new-instance v2, Ljava/net/DatagramSocket;

    invoke-direct {v2}, Ljava/net/DatagramSocket;-><init>()V

    .line 286
    .local v2, s:Ljava/net/DatagramSocket;
    invoke-virtual {v2}, Ljava/net/DatagramSocket;->getLocalPort()I

    move-result v1

    .line 287
    .local v1, localPort:I
    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    return v1

    .line 289
    .end local v1           #localPort:I
    :catch_0
    move-exception v0

    .line 290
    .local v0, e:Ljava/io/IOException;
    new-instance v3, Ljavax/sip/SipException;

    const-string v4, "allocateLocalPort()"

    invoke-direct {v3, v4, v0}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private createNewSession(Ljavax/sip/RequestEvent;Lbaidu/net/sip/ISipSessionListener;Ljavax/sip/ServerTransaction;I)Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;
    .locals 3
    .parameter "event"
    .parameter "listener"
    .parameter "transaction"
    .parameter "newState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 448
    const-string v1, "com.baidu.server.sip"

    const-string v2, "<====> SipSessionGroup::createNewSession()"

    invoke-static {v1, v2}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    new-instance v0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-direct {v0, p0, p2}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;-><init>(Lcom/baidu/server/sip/SipSessionGroup;Lbaidu/net/sip/ISipSessionListener;)V

    .line 450
    .local v0, newSession:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;
    iput-object p3, v0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mServerTransaction:Ljavax/sip/ServerTransaction;

    .line 451
    iput p4, v0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    .line 452
    iget-object v1, v0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mServerTransaction:Ljavax/sip/ServerTransaction;

    invoke-interface {v1}, Ljavax/sip/ServerTransaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    .line 453
    iput-object p1, v0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mInviteReceived:Ljavax/sip/RequestEvent;

    .line 454
    invoke-virtual {p1}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v1

    const-string v2, "From"

    invoke-interface {v1, v2}, Ljavax/sip/message/Request;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v1

    check-cast v1, Ljavax/sip/header/HeaderAddress;

    invoke-static {v1}, Lcom/baidu/server/sip/SipSessionGroup;->createPeerProfile(Ljavax/sip/header/HeaderAddress;)Lbaidu/net/sip/SipProfile;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mPeerProfile:Lbaidu/net/sip/SipProfile;

    .line 456
    invoke-virtual {p1}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/baidu/server/sip/SipSessionGroup;->extractContent(Ljavax/sip/message/Message;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mPeerSessionDescription:Ljava/lang/String;

    .line 458
    return-object v0
.end method

.method private static createPeerProfile(Ljavax/sip/header/HeaderAddress;)Lbaidu/net/sip/SipProfile;
    .locals 8
    .parameter "header"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 1899
    :try_start_0
    invoke-interface {p0}, Ljavax/sip/header/HeaderAddress;->getAddress()Ljavax/sip/address/Address;

    move-result-object v0

    .line 1900
    .local v0, address:Ljavax/sip/address/Address;
    invoke-interface {v0}, Ljavax/sip/address/Address;->getURI()Ljavax/sip/address/URI;

    move-result-object v4

    check-cast v4, Ljavax/sip/address/SipURI;

    .line 1901
    .local v4, uri:Ljavax/sip/address/SipURI;
    invoke-interface {v4}, Ljavax/sip/address/SipURI;->getUser()Ljava/lang/String;

    move-result-object v5

    .line 1902
    .local v5, username:Ljava/lang/String;
    if-nez v5, :cond_0

    const-string v5, "anonymous"

    .line 1903
    :cond_0
    invoke-interface {v4}, Ljavax/sip/address/SipURI;->getPort()I

    move-result v3

    .line 1904
    .local v3, port:I
    new-instance v6, Lbaidu/net/sip/SipProfile$Builder;

    invoke-interface {v4}, Ljavax/sip/address/SipURI;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Lbaidu/net/sip/SipProfile$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Ljavax/sip/address/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lbaidu/net/sip/SipProfile$Builder;->setDisplayName(Ljava/lang/String;)Lbaidu/net/sip/SipProfile$Builder;

    move-result-object v1

    .line 1907
    .local v1, builder:Lbaidu/net/sip/SipProfile$Builder;
    if-lez v3, :cond_1

    invoke-virtual {v1, v3}, Lbaidu/net/sip/SipProfile$Builder;->setPort(I)Lbaidu/net/sip/SipProfile$Builder;

    .line 1908
    :cond_1
    invoke-virtual {v1}, Lbaidu/net/sip/SipProfile$Builder;->build()Lbaidu/net/sip/SipProfile;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    return-object v6

    .line 1909
    .end local v0           #address:Ljavax/sip/address/Address;
    .end local v1           #builder:Lbaidu/net/sip/SipProfile$Builder;
    .end local v3           #port:I
    .end local v4           #uri:Ljavax/sip/address/SipURI;
    .end local v5           #username:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1910
    .local v2, e:Ljava/lang/IllegalArgumentException;
    new-instance v6, Ljavax/sip/SipException;

    const-string v7, "createPeerProfile()"

    invoke-direct {v6, v7, v2}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 1911
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v2

    .line 1912
    .local v2, e:Ljava/text/ParseException;
    new-instance v6, Ljavax/sip/SipException;

    const-string v7, "createPeerProfile()"

    invoke-direct {v6, v7, v2}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method private static expectResponse(ILjava/lang/String;Ljava/util/EventObject;)Z
    .locals 3
    .parameter "responseCode"
    .parameter "expectedMethod"
    .parameter "evt"

    .prologue
    .line 1886
    instance-of v2, p2, Ljavax/sip/ResponseEvent;

    if-eqz v2, :cond_0

    move-object v0, p2

    .line 1887
    check-cast v0, Ljavax/sip/ResponseEvent;

    .line 1888
    .local v0, event:Ljavax/sip/ResponseEvent;
    invoke-virtual {v0}, Ljavax/sip/ResponseEvent;->getResponse()Ljavax/sip/message/Response;

    move-result-object v1

    .line 1889
    .local v1, response:Ljavax/sip/message/Response;
    invoke-interface {v1}, Ljavax/sip/message/Response;->getStatusCode()I

    move-result v2

    if-ne v2, p0, :cond_0

    .line 1890
    invoke-static {v1}, Lcom/baidu/server/sip/SipSessionGroup;->getCseqMethod(Ljavax/sip/message/Message;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 1893
    .end local v0           #event:Ljavax/sip/ResponseEvent;
    .end local v1           #response:Ljavax/sip/message/Response;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static expectResponse(Ljava/lang/String;Ljava/util/EventObject;)Z
    .locals 3
    .parameter "expectedMethod"
    .parameter "evt"

    .prologue
    .line 1872
    instance-of v2, p1, Ljavax/sip/ResponseEvent;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 1873
    check-cast v0, Ljavax/sip/ResponseEvent;

    .line 1874
    .local v0, event:Ljavax/sip/ResponseEvent;
    invoke-virtual {v0}, Ljavax/sip/ResponseEvent;->getResponse()Ljavax/sip/message/Response;

    move-result-object v1

    .line 1875
    .local v1, response:Ljavax/sip/message/Response;
    invoke-static {v1}, Lcom/baidu/server/sip/SipSessionGroup;->getCseqMethod(Ljavax/sip/message/Message;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 1877
    .end local v0           #event:Ljavax/sip/ResponseEvent;
    .end local v1           #response:Ljavax/sip/message/Response;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private extractContent(Ljavax/sip/message/Message;)Ljava/lang/String;
    .locals 3
    .parameter "message"

    .prologue
    .line 405
    invoke-interface {p1}, Ljavax/sip/message/Message;->getRawContent()[B

    move-result-object v0

    .line 406
    .local v0, bytes:[B
    if-eqz v0, :cond_1

    .line 408
    :try_start_0
    instance-of v1, p1, Lgov/nist/javax/sip/message/SIPMessage;

    if-eqz v1, :cond_0

    .line 409
    check-cast p1, Lgov/nist/javax/sip/message/SIPMessage;

    .end local p1
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPMessage;->getMessageContent()Ljava/lang/String;

    move-result-object v1

    .line 416
    :goto_0
    return-object v1

    .line 411
    .restart local p1
    :cond_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 413
    .end local p1
    :catch_0
    move-exception v1

    .line 416
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private extractExternalAddress(Ljavax/sip/ResponseEvent;)V
    .locals 5
    .parameter "evt"

    .prologue
    .line 420
    invoke-virtual {p1}, Ljavax/sip/ResponseEvent;->getResponse()Ljavax/sip/message/Response;

    move-result-object v1

    .line 421
    .local v1, response:Ljavax/sip/message/Response;
    const-string v4, "Via"

    invoke-interface {v1, v4}, Ljavax/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v4

    check-cast v4, Ljavax/sip/header/ViaHeader;

    move-object v3, v4

    check-cast v3, Ljavax/sip/header/ViaHeader;

    .line 423
    .local v3, viaHeader:Ljavax/sip/header/ViaHeader;
    if-nez v3, :cond_1

    .line 434
    :cond_0
    :goto_0
    return-void

    .line 424
    :cond_1
    invoke-interface {v3}, Ljavax/sip/header/ViaHeader;->getRPort()I

    move-result v2

    .line 425
    .local v2, rport:I
    invoke-interface {v3}, Ljavax/sip/header/ViaHeader;->getReceived()Ljava/lang/String;

    move-result-object v0

    .line 426
    .local v0, externalIp:Ljava/lang/String;
    if-lez v2, :cond_0

    if-eqz v0, :cond_0

    .line 427
    iput-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup;->mExternalIp:Ljava/lang/String;

    .line 428
    iput v2, p0, Lcom/baidu/server/sip/SipSessionGroup;->mExternalPort:I

    goto :goto_0
.end method

.method private static getCseqMethod(Ljavax/sip/message/Message;)Ljava/lang/String;
    .locals 1
    .parameter "message"

    .prologue
    .line 1863
    const-string v0, "CSeq"

    invoke-interface {p0, v0}, Ljavax/sip/message/Message;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v0

    check-cast v0, Ljavax/sip/header/CSeqHeader;

    invoke-interface {v0}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 1
    .parameter "exception"

    .prologue
    .line 437
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 438
    .local v0, cause:Ljava/lang/Throwable;
    :goto_0
    if-eqz v0, :cond_0

    .line 439
    move-object p1, v0

    .line 440
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    .line 442
    :cond_0
    return-object p1
.end method

.method private declared-synchronized getSipSession(Ljava/util/EventObject;)Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;
    .locals 7
    .parameter "event"

    .prologue
    .line 299
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/baidu/server/sip/SipHelper;->getCallId(Ljava/util/EventObject;)Ljava/lang/String;

    move-result-object v2

    .line 300
    .local v2, key:Ljava/lang/String;
    iget-object v4, p0, Lcom/baidu/server/sip/SipSessionGroup;->mSessionMap:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    .line 301
    .local v3, session:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;
    if-eqz v3, :cond_0

    invoke-static {v3}, Lcom/baidu/server/sip/SipSessionGroup;->isLoggable(Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 302
    const-string v4, "com.baidu.server.sip"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "session key from event: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    const-string v4, "com.baidu.server.sip"

    const-string v5, "active sessions:"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v4, p0, Lcom/baidu/server/sip/SipSessionGroup;->mSessionMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 305
    .local v1, k:Ljava/lang/String;
    const-string v4, "com.baidu.server.sip"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " ..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/baidu/server/sip/SipSessionGroup;->mSessionMap:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 299
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #k:Ljava/lang/String;
    .end local v2           #key:Ljava/lang/String;
    .end local v3           #session:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 308
    .restart local v2       #key:Ljava/lang/String;
    .restart local v3       #session:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;
    :cond_0
    if-eqz v3, :cond_1

    .end local v3           #session:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;
    :goto_1
    monitor-exit p0

    return-object v3

    .restart local v3       #session:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/baidu/server/sip/SipSessionGroup;->mCallReceiverSession:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private getStackName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stack"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static isLoggable(Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;)Z
    .locals 2
    .parameter "s"

    .prologue
    const/4 v1, 0x0

    .line 1917
    if-eqz p0, :cond_0

    .line 1918
    iget v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 1923
    :cond_0
    :pswitch_0
    return v1

    .line 1918
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method private static isLoggable(Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;Ljava/util/EventObject;)Z
    .locals 4
    .parameter "s"
    .parameter "evt"

    .prologue
    const/4 v3, 0x0

    .line 1931
    invoke-static {p0}, Lcom/baidu/server/sip/SipSessionGroup;->isLoggable(Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1946
    .end local p1
    :cond_0
    :goto_0
    return v3

    .line 1932
    .restart local p1
    :cond_1
    if-eqz p1, :cond_0

    .line 1934
    instance-of v1, p1, Ljavax/sip/ResponseEvent;

    if-eqz v1, :cond_2

    .line 1935
    check-cast p1, Ljavax/sip/ResponseEvent;

    .end local p1
    invoke-virtual {p1}, Ljavax/sip/ResponseEvent;->getResponse()Ljavax/sip/message/Response;

    move-result-object v0

    .line 1936
    .local v0, response:Ljavax/sip/message/Response;
    const-string v1, "OPTIONS"

    const-string v2, "CSeq"

    invoke-interface {v0, v2}, Ljavax/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1940
    .end local v0           #response:Ljavax/sip/message/Response;
    .restart local p1
    :cond_2
    instance-of v1, p1, Ljavax/sip/RequestEvent;

    if-eqz v1, :cond_0

    .line 1941
    const-string v1, "OPTIONS"

    invoke-static {v1, p1}, Lcom/baidu/server/sip/SipSessionGroup;->isRequestEvent(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method private static isLoggable(Ljava/util/EventObject;)Z
    .locals 1
    .parameter "evt"

    .prologue
    .line 1927
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/baidu/server/sip/SipSessionGroup;->isLoggable(Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;Ljava/util/EventObject;)Z

    move-result v0

    return v0
.end method

.method private static isRequestEvent(Ljava/lang/String;Ljava/util/EventObject;)Z
    .locals 3
    .parameter "method"
    .parameter "event"

    .prologue
    .line 1853
    :try_start_0
    instance-of v2, p1, Ljavax/sip/RequestEvent;

    if-eqz v2, :cond_0

    .line 1854
    move-object v0, p1

    check-cast v0, Ljavax/sip/RequestEvent;

    move-object v1, v0

    .line 1855
    .local v1, requestEvent:Ljavax/sip/RequestEvent;
    invoke-virtual {v1}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v2

    invoke-interface {v2}, Ljavax/sip/message/Request;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1859
    .end local v1           #requestEvent:Ljavax/sip/RequestEvent;
    :goto_0
    return v2

    .line 1857
    :catch_0
    move-exception v2

    .line 1859
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/util/EventObject;)Ljava/lang/String;
    .locals 1
    .parameter "evt"

    .prologue
    .line 1950
    instance-of v0, p0, Ljavax/sip/RequestEvent;

    if-eqz v0, :cond_0

    .line 1951
    check-cast p0, Ljavax/sip/RequestEvent;

    .end local p0
    invoke-virtual {p0}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1955
    .restart local p0
    :goto_0
    return-object v0

    .line 1952
    :cond_0
    instance-of v0, p0, Ljavax/sip/ResponseEvent;

    if-eqz v0, :cond_1

    .line 1953
    check-cast p0, Ljavax/sip/ResponseEvent;

    .end local p0
    invoke-virtual {p0}, Ljavax/sip/ResponseEvent;->getResponse()Ljavax/sip/message/Response;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1955
    .restart local p0
    :cond_1
    invoke-virtual {p0}, Ljava/util/EventObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private declared-synchronized process(Ljava/util/EventObject;)V
    .locals 7
    .parameter "event"

    .prologue
    .line 389
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/baidu/server/sip/SipSessionGroup;->getSipSession(Ljava/util/EventObject;)Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 391
    .local v3, session:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;
    :try_start_1
    invoke-static {v3, p1}, Lcom/baidu/server/sip/SipSessionGroup;->isLoggable(Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;Ljava/util/EventObject;)Z

    move-result v1

    .line 392
    .local v1, isLoggable:Z
    if-eqz v3, :cond_1

    invoke-virtual {v3, p1}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->process(Ljava/util/EventObject;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    .line 393
    .local v2, processed:Z
    :goto_0
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 394
    const-string v4, "com.baidu.server.sip"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "new state after: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    invoke-static {v6}, Lbaidu/net/sip/SipSession$State;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 401
    .end local v1           #isLoggable:Z
    .end local v2           #processed:Z
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .line 392
    .restart local v1       #isLoggable:Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 397
    .end local v1           #isLoggable:Z
    :catch_0
    move-exception v0

    .line 398
    .local v0, e:Ljava/lang/Throwable;
    :try_start_2
    const-string v4, "com.baidu.server.sip"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "event process error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0}, Lcom/baidu/server/sip/SipSessionGroup;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 399
    #calls: Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->onError(Ljava/lang/Throwable;)V
    invoke-static {v3, v0}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->access$100(Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 389
    .end local v0           #e:Ljava/lang/Throwable;
    .end local v3           #session:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private declared-synchronized removeSipSession(Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;)V
    .locals 8
    .parameter "session"

    .prologue
    .line 325
    monitor-enter p0

    :try_start_0
    const-string v5, "com.baidu.server.sip"

    const-string v6, "<====> SipSessionGroup::removeSipSession()"

    invoke-static {v5, v6}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    iget-object v5, p0, Lcom/baidu/server/sip/SipSessionGroup;->mCallReceiverSession:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v5, :cond_1

    .line 349
    :cond_0
    monitor-exit p0

    return-void

    .line 327
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v3

    .line 328
    .local v3, key:Ljava/lang/String;
    iget-object v5, p0, Lcom/baidu/server/sip/SipSessionGroup;->mSessionMap:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    .line 330
    .local v4, s:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;
    if-eqz v4, :cond_3

    if-eq v4, p1, :cond_3

    .line 331
    const-string v5, "com.baidu.server.sip"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "session "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not associated with key \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-object v5, p0, Lcom/baidu/server/sip/SipSessionGroup;->mSessionMap:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    iget-object v5, p0, Lcom/baidu/server/sip/SipSessionGroup;->mSessionMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 336
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v4, :cond_2

    .line 337
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .end local v3           #key:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 338
    .restart local v3       #key:Ljava/lang/String;
    iget-object v5, p0, Lcom/baidu/server/sip/SipSessionGroup;->mSessionMap:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 325
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #key:Ljava/lang/String;
    .end local v4           #s:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 343
    .restart local v3       #key:Ljava/lang/String;
    .restart local v4       #s:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;
    :cond_3
    if-eqz v4, :cond_0

    :try_start_2
    invoke-static {v4}, Lcom/baidu/server/sip/SipSessionGroup;->isLoggable(Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 344
    const-string v5, "com.baidu.server.sip"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "remove session "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " @key \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-object v5, p0, Lcom/baidu/server/sip/SipSessionGroup;->mSessionMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 346
    .local v2, k:Ljava/lang/String;
    const-string v5, "com.baidu.server.sip"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/baidu/server/sip/SipSessionGroup;->mSessionMap:Ljava/util/Map;

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 3

    .prologue
    .line 248
    monitor-enter p0

    :try_start_0
    const-string v0, "com.baidu.server.sip"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " close stack for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/server/sip/SipSessionGroup;->mLocalProfile:Lbaidu/net/sip/SipProfile;

    invoke-virtual {v2}, Lbaidu/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-virtual {p0}, Lcom/baidu/server/sip/SipSessionGroup;->onConnectivityChanged()V

    .line 250
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup;->mSessionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 251
    invoke-virtual {p0}, Lcom/baidu/server/sip/SipSessionGroup;->closeToNotReceiveCalls()V

    .line 252
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup;->mSipStack:Ljavax/sip/SipStack;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup;->mSipStack:Ljavax/sip/SipStack;

    invoke-interface {v0}, Ljavax/sip/SipStack;->stop()V

    .line 254
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup;->mSipStack:Ljavax/sip/SipStack;

    .line 255
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup;->mSipHelper:Lcom/baidu/server/sip/SipHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    :cond_0
    monitor-exit p0

    return-void

    .line 248
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized closeToNotReceiveCalls()V
    .locals 2

    .prologue
    .line 274
    monitor-enter p0

    :try_start_0
    const-string v0, "com.baidu.server.sip"

    const-string v1, "<====> SipSessionGroup::closeToNotReceiveCalls()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup;->mCallReceiverSession:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    monitor-exit p0

    return-void

    .line 274
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized containsSession(Ljava/lang/String;)Z
    .locals 1
    .parameter "callId"

    .prologue
    .line 295
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup;->mSessionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public createSession(Lbaidu/net/sip/ISipSessionListener;)Lbaidu/net/sip/ISipSession;
    .locals 2
    .parameter "listener"

    .prologue
    .line 279
    const-string v0, "com.baidu.server.sip"

    const-string v1, "<====> SipSessionGroup::createSession()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-virtual {p0}, Lcom/baidu/server/sip/SipSessionGroup;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-direct {v0, p0, p1}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;-><init>(Lcom/baidu/server/sip/SipSessionGroup;Lbaidu/net/sip/ISipSessionListener;)V

    goto :goto_0
.end method

.method public getLocalProfile()Lbaidu/net/sip/SipProfile;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup;->mLocalProfile:Lbaidu/net/sip/SipProfile;

    return-object v0
.end method

.method public getLocalProfileUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup;->mLocalProfile:Lbaidu/net/sip/SipProfile;

    invoke-virtual {v0}, Lbaidu/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized isClosed()Z
    .locals 1

    .prologue
    .line 260
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup;->mSipStack:Ljavax/sip/SipStack;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized onConnectivityChanged()V
    .locals 7

    .prologue
    .line 214
    monitor-enter p0

    :try_start_0
    const-string v5, "com.baidu.server.sip"

    const-string v6, "<====> SipSessionGroup::onConnectivityChanged()"

    invoke-static {v5, v6}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iget-object v5, p0, Lcom/baidu/server/sip/SipSessionGroup;->mSessionMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    iget-object v6, p0, Lcom/baidu/server/sip/SipSessionGroup;->mSessionMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    new-array v6, v6, [Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-interface {v5, v6}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    .line 221
    .local v4, ss:[Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;
    move-object v0, v4

    .local v0, arr$:[Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 222
    .local v3, s:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;
    const/16 v5, -0xa

    const-string v6, "data connection lost"

    #calls: Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->onError(ILjava/lang/String;)V
    invoke-static {v3, v5, v6}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->access$000(Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 225
    .end local v3           #s:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;
    :cond_0
    monitor-exit p0

    return-void

    .line 214
    .end local v0           #arr$:[Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v4           #ss:[Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized openToReceiveCalls(Lbaidu/net/sip/ISipSessionListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 265
    monitor-enter p0

    :try_start_0
    const-string v0, "com.baidu.server.sip"

    const-string v1, "<====> SipSessionGroup::openToReceiveCalls()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup;->mCallReceiverSession:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    if-nez v0, :cond_0

    .line 267
    new-instance v0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;

    invoke-direct {v0, p0, p1}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;-><init>(Lcom/baidu/server/sip/SipSessionGroup;Lbaidu/net/sip/ISipSessionListener;)V

    iput-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup;->mCallReceiverSession:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    :goto_0
    monitor-exit p0

    return-void

    .line 269
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup;->mCallReceiverSession:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v0, p1}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->setListener(Lbaidu/net/sip/ISipSessionListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 265
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public processDialogTerminated(Ljavax/sip/DialogTerminatedEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 384
    const-string v0, "com.baidu.server.sip"

    const-string v1, "<====> SipSessionGroup::processDialogTerminated()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    invoke-direct {p0, p1}, Lcom/baidu/server/sip/SipSessionGroup;->process(Ljava/util/EventObject;)V

    .line 386
    return-void
.end method

.method public processIOException(Ljavax/sip/IOExceptionEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 369
    const-string v0, "com.baidu.server.sip"

    const-string v1, "<====> SipSessionGroup::processIOException()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    invoke-direct {p0, p1}, Lcom/baidu/server/sip/SipSessionGroup;->process(Ljava/util/EventObject;)V

    .line 371
    return-void
.end method

.method public processRequest(Ljavax/sip/RequestEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 352
    const-string v0, "com.baidu.server.sip"

    const-string v1, "<====> SipSessionGroup::processRequest()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    const-string v0, "INVITE"

    invoke-static {v0, p1}, Lcom/baidu/server/sip/SipSessionGroup;->isRequestEvent(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup;->mWakeLock:Lcom/baidu/server/sip/SipWakeLock;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Lcom/baidu/server/sip/SipWakeLock;->acquire(J)V

    .line 360
    :cond_0
    invoke-direct {p0, p1}, Lcom/baidu/server/sip/SipSessionGroup;->process(Ljava/util/EventObject;)V

    .line 361
    return-void
.end method

.method public processResponse(Ljavax/sip/ResponseEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 364
    const-string v0, "com.baidu.server.sip"

    const-string v1, "<====> SipSessionGroup::processResponse()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    invoke-direct {p0, p1}, Lcom/baidu/server/sip/SipSessionGroup;->process(Ljava/util/EventObject;)V

    .line 366
    return-void
.end method

.method public processTimeout(Ljavax/sip/TimeoutEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 374
    const-string v0, "com.baidu.server.sip"

    const-string v1, "<====> SipSessionGroup::processTimeout()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    invoke-direct {p0, p1}, Lcom/baidu/server/sip/SipSessionGroup;->process(Ljava/util/EventObject;)V

    .line 376
    return-void
.end method

.method public processTransactionTerminated(Ljavax/sip/TransactionTerminatedEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 379
    const-string v0, "com.baidu.server.sip"

    const-string v1, "<====> SipSessionGroup::processTransactionTerminated()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    invoke-direct {p0, p1}, Lcom/baidu/server/sip/SipSessionGroup;->process(Ljava/util/EventObject;)V

    .line 381
    return-void
.end method

.method declared-synchronized reset(Ljava/lang/String;)V
    .locals 10
    .parameter "localIp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 174
    monitor-enter p0

    :try_start_0
    const-string v7, "com.baidu.server.sip"

    const-string v8, "<====> SipSessionGroup::reset()"

    invoke-static {v7, v8}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iput-object p1, p0, Lcom/baidu/server/sip/SipSessionGroup;->mLocalIp:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    if-nez p1, :cond_0

    .line 211
    :goto_0
    monitor-exit p0

    return-void

    .line 178
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/baidu/server/sip/SipSessionGroup;->mLocalProfile:Lbaidu/net/sip/SipProfile;

    .line 179
    .local v1, myself:Lbaidu/net/sip/SipProfile;
    invoke-static {}, Ljavax/sip/SipFactory;->getInstance()Ljavax/sip/SipFactory;

    move-result-object v5

    .line 180
    .local v5, sipFactory:Ljavax/sip/SipFactory;
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    .line 181
    .local v3, properties:Ljava/util/Properties;
    const-string v7, "javax.sip.STACK_NAME"

    invoke-direct {p0}, Lcom/baidu/server/sip/SipSessionGroup;->getStackName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 182
    const-string v7, "gov.nist.javax.sip.THREAD_POOL_SIZE"

    const-string v8, "1"

    invoke-virtual {v3, v7, v8}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 184
    invoke-virtual {v1}, Lbaidu/net/sip/SipProfile;->getProxyAddress()Ljava/lang/String;

    move-result-object v2

    .line 185
    .local v2, outboundProxy:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 186
    const-string v7, "com.baidu.server.sip"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "outboundProxy is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const-string v7, "javax.sip.OUTBOUND_PROXY"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lbaidu/net/sip/SipProfile;->getPort()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lbaidu/net/sip/SipProfile;->getProtocol()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 190
    :cond_1
    invoke-virtual {v5, v3}, Ljavax/sip/SipFactory;->createSipStack(Ljava/util/Properties;)Ljavax/sip/SipStack;

    move-result-object v6

    iput-object v6, p0, Lcom/baidu/server/sip/SipSessionGroup;->mSipStack:Ljavax/sip/SipStack;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 193
    .local v6, stack:Ljavax/sip/SipStack;
    :try_start_2
    invoke-static {}, Lcom/baidu/server/sip/SipSessionGroup;->allocateLocalPort()I

    move-result v7

    invoke-virtual {v1}, Lbaidu/net/sip/SipProfile;->getProtocol()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, p1, v7, v8}, Ljavax/sip/SipStack;->createListeningPoint(Ljava/lang/String;ILjava/lang/String;)Ljavax/sip/ListeningPoint;

    move-result-object v7

    invoke-interface {v6, v7}, Ljavax/sip/SipStack;->createSipProvider(Ljavax/sip/ListeningPoint;)Ljavax/sip/SipProvider;

    move-result-object v4

    .line 196
    .local v4, provider:Ljavax/sip/SipProvider;
    invoke-interface {v4, p0}, Ljavax/sip/SipProvider;->addSipListener(Ljavax/sip/SipListener;)V

    .line 197
    new-instance v7, Lcom/baidu/server/sip/SipHelper;

    invoke-direct {v7, v6, v4}, Lcom/baidu/server/sip/SipHelper;-><init>(Ljavax/sip/SipStack;Ljavax/sip/SipProvider;)V

    iput-object v7, p0, Lcom/baidu/server/sip/SipSessionGroup;->mSipHelper:Lcom/baidu/server/sip/SipHelper;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/util/TooManyListenersException; {:try_start_2 .. :try_end_2} :catch_1

    .line 204
    :try_start_3
    const-string v7, "com.baidu.server.sip"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " start stack for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lbaidu/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-interface {v6}, Ljavax/sip/SipStack;->start()V

    .line 207
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/baidu/server/sip/SipSessionGroup;->mCallReceiverSession:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    .line 208
    iget-object v7, p0, Lcom/baidu/server/sip/SipSessionGroup;->mSessionMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->clear()V

    .line 210
    invoke-virtual {p0}, Lcom/baidu/server/sip/SipSessionGroup;->resetExternalAddress()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 174
    .end local v1           #myself:Lbaidu/net/sip/SipProfile;
    .end local v2           #outboundProxy:Ljava/lang/String;
    .end local v3           #properties:Ljava/util/Properties;
    .end local v4           #provider:Ljavax/sip/SipProvider;
    .end local v5           #sipFactory:Ljavax/sip/SipFactory;
    .end local v6           #stack:Ljavax/sip/SipStack;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 198
    .restart local v1       #myself:Lbaidu/net/sip/SipProfile;
    .restart local v2       #outboundProxy:Ljava/lang/String;
    .restart local v3       #properties:Ljava/util/Properties;
    .restart local v5       #sipFactory:Ljavax/sip/SipFactory;
    .restart local v6       #stack:Ljavax/sip/SipStack;
    :catch_0
    move-exception v0

    .line 199
    .local v0, e:Ljavax/sip/InvalidArgumentException;
    :try_start_4
    new-instance v7, Ljava/io/IOException;

    invoke-virtual {v0}, Ljavax/sip/InvalidArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 200
    .end local v0           #e:Ljavax/sip/InvalidArgumentException;
    :catch_1
    move-exception v0

    .line 202
    .local v0, e:Ljava/util/TooManyListenersException;
    new-instance v7, Ljavax/sip/SipException;

    const-string v8, "SipSessionGroup constructor"

    invoke-direct {v7, v8, v0}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method declared-synchronized resetExternalAddress()V
    .locals 1

    .prologue
    .line 231
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup;->mExternalIp:Ljava/lang/String;

    .line 232
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/server/sip/SipSessionGroup;->mExternalPort:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    monitor-exit p0

    return-void

    .line 231
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setWakeupTimer(Lcom/baidu/server/sip/SipWakeupTimer;)V
    .locals 2
    .parameter "timer"

    .prologue
    .line 169
    const-string v0, "com.baidu.server.sip"

    const-string v1, "<====> SipSessionGroup::setWakeupTimer()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iput-object p1, p0, Lcom/baidu/server/sip/SipSessionGroup;->mWakeupTimer:Lcom/baidu/server/sip/SipWakeupTimer;

    .line 171
    return-void
.end method
