.class Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;
.super Lbaidu/net/sip/ISipSession$Stub;
.source "SipSessionGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/server/sip/SipSessionGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SipSessionImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;,
        Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;
    }
.end annotation


# instance fields
.field mAuthenticationRetryCount:I

.field mClientTransaction:Ljavax/sip/ClientTransaction;

.field private final mCommands:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field mDialog:Ljavax/sip/Dialog;

.field mInCall:Z

.field mInviteReceived:Ljavax/sip/RequestEvent;

.field private mKeepAliveProcess:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;

.field private mKeepAliveSession:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

.field mPeerProfile:Lbaidu/net/sip/SipProfile;

.field mPeerSessionDescription:Ljava/lang/String;

.field mProxy:Lcom/baidu/server/sip/SipSessionListenerProxy;

.field mReferSession:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

.field mReferredBy:Lgov/nist/javax/sip/header/extensions/ReferredByHeader;

.field private mReinviteInprocess:Z

.field private final mReinviteThread:Ljava/lang/Thread;

.field mReplaces:Ljava/lang/String;

.field mServerTransaction:Ljavax/sip/ServerTransaction;

.field mSessionTimer:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;

.field mState:I

.field private final mSyncKey:Ljava/lang/Object;

.field final synthetic this$0:Lcom/baidu/server/sip/SipSessionGroup;


# direct methods
.method public constructor <init>(Lcom/baidu/server/sip/SipSessionGroup;Lbaidu/net/sip/ISipSessionListener;)V
    .locals 3
    .parameter
    .parameter "listener"

    .prologue
    const/4 v2, 0x0

    .line 672
    iput-object p1, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/baidu/server/sip/SipSessionGroup;

    invoke-direct {p0}, Lbaidu/net/sip/ISipSession$Stub;-><init>()V

    .line 591
    new-instance v0, Lcom/baidu/server/sip/SipSessionListenerProxy;

    invoke-direct {v0}, Lcom/baidu/server/sip/SipSessionListenerProxy;-><init>()V

    iput-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/baidu/server/sip/SipSessionListenerProxy;

    .line 592
    iput v2, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    .line 613
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$1;

    invoke-direct {v1, p0}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$1;-><init>(Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mReinviteThread:Ljava/lang/Thread;

    .line 632
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mCommands:Ljava/util/concurrent/BlockingQueue;

    .line 634
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mSyncKey:Ljava/lang/Object;

    .line 636
    iput-boolean v2, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mReinviteInprocess:Z

    .line 673
    const-string v0, "com.baidu.server.sip"

    const-string v1, "<====> SipSessionImpl::SipSessionImpl()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    invoke-virtual {p0, p2}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->setListener(Lbaidu/net/sip/ISipSessionListener;)V

    .line 676
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mReinviteThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 678
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;ILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 589
    invoke-direct {p0, p1, p2}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->onError(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 589
    invoke-direct {p0, p1}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;Ljava/util/EventObject;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 589
    invoke-direct {p0, p1}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->processCommand(Ljava/util/EventObject;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 589
    invoke-direct {p0}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->syncWait()V

    return-void
.end method

.method static synthetic access$3000(Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 589
    invoke-direct {p0}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->cancelSessionTimer()V

    return-void
.end method

.method static synthetic access$3100(Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 589
    invoke-direct {p0}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->reset()V

    return-void
.end method

.method static synthetic access$3200(Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 589
    invoke-direct {p0, p1}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->startSessionTimer(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;)Ljava/util/concurrent/BlockingQueue;
    .locals 1
    .parameter "x0"

    .prologue
    .line 589
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mCommands:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method private cancelSessionTimer()V
    .locals 2

    .prologue
    .line 1513
    const-string v0, "com.baidu.server.sip"

    const-string v1, "<====> SipSessionImpl::cancelSessionTimer()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1515
    invoke-direct {p0}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->syncNotify()V

    .line 1517
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mSessionTimer:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;

    if-eqz v0, :cond_0

    .line 1518
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mSessionTimer:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;

    invoke-virtual {v0}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;->cancel()V

    .line 1519
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mSessionTimer:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;

    .line 1521
    :cond_0
    return-void
.end method

.method private createErrorMessage(Ljavax/sip/message/Response;)Ljava/lang/String;
    .locals 4
    .parameter "response"

    .prologue
    .line 1524
    const-string v0, "com.baidu.server.sip"

    const-string v1, "<====> SipSessionImpl::createErrorMessage()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1525
    const-string v0, "%s (%d)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {p1}, Ljavax/sip/message/Response;->getReasonPhrase()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-interface {p1}, Ljavax/sip/message/Response;->getStatusCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private crossDomainAuthenticationRequired(Ljavax/sip/message/Response;)Z
    .locals 3
    .parameter "response"

    .prologue
    .line 1136
    invoke-direct {p0, p1}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->getRealmFromResponse(Ljavax/sip/message/Response;)Ljava/lang/String;

    move-result-object v0

    .line 1137
    .local v0, realm:Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v0, ""

    .line 1138
    :cond_0
    iget-object v1, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/baidu/server/sip/SipSessionGroup;

    #getter for: Lcom/baidu/server/sip/SipSessionGroup;->mLocalProfile:Lbaidu/net/sip/SipProfile;
    invoke-static {v1}, Lcom/baidu/server/sip/SipSessionGroup;->access$1500(Lcom/baidu/server/sip/SipSessionGroup;)Lbaidu/net/sip/SipProfile;

    move-result-object v1

    invoke-virtual {v1}, Lbaidu/net/sip/SipProfile;->getSipDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private doCommandAsync(Ljava/util/EventObject;)V
    .locals 3
    .parameter "command"

    .prologue
    .line 761
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$2;

    invoke-direct {v1, p0, p1}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$2;-><init>(Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;Ljava/util/EventObject;)V

    const-string v2, "SipSessionAsyncCmdThread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 773
    return-void
.end method

.method private enableKeepAlive()V
    .locals 5

    .prologue
    .line 1530
    const-string v1, "com.baidu.server.sip"

    const-string v2, "<====> SipSessionImpl::enableKeepAlive()"

    invoke-static {v1, v2}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1531
    iget-object v1, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mKeepAliveSession:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    if-eqz v1, :cond_0

    .line 1532
    iget-object v1, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mKeepAliveSession:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v1}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->stopKeepAliveProcess()V

    .line 1537
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mKeepAliveSession:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    const/16 v2, 0xa

    iget-object v3, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mPeerProfile:Lbaidu/net/sip/SipProfile;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->startKeepAliveProcess(ILbaidu/net/sip/SipProfile;Lcom/baidu/server/sip/SipSessionGroup$KeepAliveProcessCallback;)V
    :try_end_0
    .catch Ljavax/sip/SipException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1543
    :goto_1
    return-void

    .line 1534
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->duplicate()Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mKeepAliveSession:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    goto :goto_0

    .line 1539
    :catch_0
    move-exception v0

    .line 1540
    .local v0, e:Ljavax/sip/SipException;
    const-string v1, "com.baidu.server.sip"

    const-string v2, "keepalive cannot be enabled; ignored"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1541
    iget-object v1, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mKeepAliveSession:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v1}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->stopKeepAliveProcess()V

    goto :goto_1
.end method

.method private endCallNormally()V
    .locals 2

    .prologue
    .line 1555
    const-string v0, "com.baidu.server.sip"

    const-string v1, "<====> SipSessionImpl::endCallNormally()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1556
    invoke-direct {p0}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->reset()V

    .line 1557
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/baidu/server/sip/SipSessionListenerProxy;

    invoke-virtual {v0, p0}, Lcom/baidu/server/sip/SipSessionListenerProxy;->onCallEnded(Lbaidu/net/sip/ISipSession;)V

    .line 1558
    return-void
.end method

.method private endCallOnBusy()V
    .locals 2

    .prologue
    .line 1567
    const-string v0, "com.baidu.server.sip"

    const-string v1, "<====> SipSessionImpl::endCallOnBusy()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1568
    invoke-direct {p0}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->reset()V

    .line 1569
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/baidu/server/sip/SipSessionListenerProxy;

    invoke-virtual {v0, p0}, Lcom/baidu/server/sip/SipSessionListenerProxy;->onCallBusy(Lbaidu/net/sip/ISipSession;)V

    .line 1570
    return-void
.end method

.method private endCallOnError(ILjava/lang/String;)V
    .locals 2
    .parameter "errorCode"
    .parameter "message"

    .prologue
    .line 1561
    const-string v0, "com.baidu.server.sip"

    const-string v1, "<====> SipSessionImpl::endCallOnError()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1562
    invoke-direct {p0}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->reset()V

    .line 1563
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/baidu/server/sip/SipSessionListenerProxy;

    invoke-virtual {v0, p0, p1, p2}, Lcom/baidu/server/sip/SipSessionListenerProxy;->onError(Lbaidu/net/sip/ISipSession;ILjava/lang/String;)V

    .line 1564
    return-void
.end method

.method private endingCall(Ljava/util/EventObject;)Z
    .locals 6
    .parameter "evt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1481
    const-string v4, "com.baidu.server.sip"

    const-string v5, "<====> SipSessionImpl::endingCall()"

    invoke-static {v4, v5}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1482
    const-string v4, "BYE"

    #calls: Lcom/baidu/server/sip/SipSessionGroup;->expectResponse(Ljava/lang/String;Ljava/util/EventObject;)Z
    invoke-static {v4, p1}, Lcom/baidu/server/sip/SipSessionGroup;->access$2300(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v0, p1

    .line 1483
    check-cast v0, Ljavax/sip/ResponseEvent;

    .line 1484
    .local v0, event:Ljavax/sip/ResponseEvent;
    invoke-virtual {v0}, Ljavax/sip/ResponseEvent;->getResponse()Ljavax/sip/message/Response;

    move-result-object v1

    .line 1486
    .local v1, response:Ljavax/sip/message/Response;
    invoke-interface {v1}, Ljavax/sip/message/Response;->getStatusCode()I

    move-result v2

    .line 1487
    .local v2, statusCode:I
    sparse-switch v2, :sswitch_data_0

    .line 1496
    :cond_0
    invoke-direct {p0}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->cancelSessionTimer()V

    .line 1497
    invoke-direct {p0}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->reset()V

    .line 1500
    .end local v0           #event:Ljavax/sip/ResponseEvent;
    .end local v1           #response:Ljavax/sip/message/Response;
    .end local v2           #statusCode:I
    :goto_0
    return v3

    .line 1490
    .restart local v0       #event:Ljavax/sip/ResponseEvent;
    .restart local v1       #response:Ljavax/sip/message/Response;
    .restart local v2       #statusCode:I
    :sswitch_0
    invoke-direct {p0, v0}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->handleAuthentication(Ljavax/sip/ResponseEvent;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 1500
    .end local v0           #event:Ljavax/sip/ResponseEvent;
    .end local v1           #response:Ljavax/sip/message/Response;
    .end local v2           #statusCode:I
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 1487
    :sswitch_data_0
    .sparse-switch
        0x191 -> :sswitch_0
        0x197 -> :sswitch_0
    .end sparse-switch
.end method

.method private establishCall(Z)V
    .locals 2
    .parameter "enableKeepAlive"

    .prologue
    .line 1546
    const-string v0, "com.baidu.server.sip"

    const-string v1, "<====> SipSessionImpl::establishCall()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1547
    const/16 v0, 0x8

    iput v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    .line 1548
    invoke-direct {p0}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->cancelSessionTimer()V

    .line 1549
    iget-boolean v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mInCall:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->enableKeepAlive()V

    .line 1550
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mInCall:Z

    .line 1551
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/baidu/server/sip/SipSessionListenerProxy;

    iget-object v1, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mPeerSessionDescription:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/baidu/server/sip/SipSessionListenerProxy;->onCallEstablished(Lbaidu/net/sip/ISipSession;Ljava/lang/String;)V

    .line 1552
    return-void
.end method

.method private getAccountManager()Lgov/nist/javax/sip/clientauthutils/AccountManager;
    .locals 1

    .prologue
    .line 1142
    new-instance v0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$4;

    invoke-direct {v0, p0}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$4;-><init>(Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;)V

    return-object v0
.end method

.method private getErrorCode(I)I
    .locals 1
    .parameter "responseStatusCode"

    .prologue
    .line 1603
    sparse-switch p1, :sswitch_data_0

    .line 1621
    const/16 v0, 0x1f4

    if-ge p1, v0, :cond_0

    .line 1622
    const/4 v0, -0x4

    .line 1624
    :goto_0
    return v0

    .line 1610
    :sswitch_0
    const/4 v0, -0x7

    goto :goto_0

    .line 1615
    :sswitch_1
    const/4 v0, -0x6

    goto :goto_0

    .line 1618
    :sswitch_2
    const/4 v0, -0x5

    goto :goto_0

    .line 1624
    :cond_0
    const/4 v0, -0x2

    goto :goto_0

    .line 1603
    nop

    :sswitch_data_0
    .sparse-switch
        0x193 -> :sswitch_0
        0x194 -> :sswitch_0
        0x196 -> :sswitch_0
        0x198 -> :sswitch_2
        0x19a -> :sswitch_0
        0x19e -> :sswitch_1
        0x1e0 -> :sswitch_0
        0x1e4 -> :sswitch_1
        0x1e5 -> :sswitch_1
        0x1e8 -> :sswitch_0
    .end sparse-switch
.end method

.method private getErrorCode(Ljava/lang/Throwable;)I
    .locals 2
    .parameter "exception"

    .prologue
    .line 1630
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 1631
    .local v0, message:Ljava/lang/String;
    instance-of v1, p1, Ljava/net/UnknownHostException;

    if-eqz v1, :cond_0

    .line 1632
    const/16 v1, -0xc

    .line 1636
    :goto_0
    return v1

    .line 1633
    :cond_0
    instance-of v1, p1, Ljava/io/IOException;

    if-eqz v1, :cond_1

    .line 1634
    const/4 v1, -0x1

    goto :goto_0

    .line 1636
    :cond_1
    const/4 v1, -0x4

    goto :goto_0
.end method

.method private getExpiryTime(Ljavax/sip/message/Response;)I
    .locals 4
    .parameter "response"

    .prologue
    .line 1053
    const/4 v2, -0x1

    .line 1054
    .local v2, time:I
    const-string v3, "Contact"

    invoke-interface {p1, v3}, Ljavax/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v0

    check-cast v0, Ljavax/sip/header/ContactHeader;

    .line 1055
    .local v0, contact:Ljavax/sip/header/ContactHeader;
    if-eqz v0, :cond_0

    .line 1056
    invoke-interface {v0}, Ljavax/sip/header/ContactHeader;->getExpires()I

    move-result v2

    .line 1058
    :cond_0
    const-string v3, "Expires"

    invoke-interface {p1, v3}, Ljavax/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v1

    check-cast v1, Ljavax/sip/header/ExpiresHeader;

    .line 1059
    .local v1, expires:Ljavax/sip/header/ExpiresHeader;
    if-eqz v1, :cond_2

    if-ltz v2, :cond_1

    invoke-interface {v1}, Ljavax/sip/header/ExpiresHeader;->getExpires()I

    move-result v3

    if-le v2, v3, :cond_2

    .line 1060
    :cond_1
    invoke-interface {v1}, Ljavax/sip/header/ExpiresHeader;->getExpires()I

    move-result v2

    .line 1062
    :cond_2
    if-gtz v2, :cond_3

    .line 1063
    const/16 v2, 0xe10

    .line 1065
    :cond_3
    const-string v3, "Min-Expires"

    invoke-interface {p1, v3}, Ljavax/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v1

    .end local v1           #expires:Ljavax/sip/header/ExpiresHeader;
    check-cast v1, Ljavax/sip/header/ExpiresHeader;

    .line 1066
    .restart local v1       #expires:Ljavax/sip/header/ExpiresHeader;
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljavax/sip/header/ExpiresHeader;->getExpires()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 1067
    invoke-interface {v1}, Ljavax/sip/header/ExpiresHeader;->getExpires()I

    move-result v2

    .line 1072
    :cond_4
    return v2
.end method

.method private getNonceFromResponse(Ljavax/sip/message/Response;)Ljava/lang/String;
    .locals 3
    .parameter "response"

    .prologue
    .line 1174
    const-string v2, "WWW-Authenticate"

    invoke-interface {p1, v2}, Ljavax/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/WWWAuthenticate;

    .line 1176
    .local v1, wwwAuth:Lgov/nist/javax/sip/header/WWWAuthenticate;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/WWWAuthenticate;->getNonce()Ljava/lang/String;

    move-result-object v2

    .line 1179
    :goto_0
    return-object v2

    .line 1177
    :cond_0
    const-string v2, "Proxy-Authenticate"

    invoke-interface {p1, v2}, Ljavax/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/ProxyAuthenticate;

    .line 1179
    .local v0, proxyAuth:Lgov/nist/javax/sip/header/ProxyAuthenticate;
    if-nez v0, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/ProxyAuthenticate;->getNonce()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getRealmFromResponse(Ljavax/sip/message/Response;)Ljava/lang/String;
    .locals 3
    .parameter "response"

    .prologue
    .line 1165
    const-string v2, "WWW-Authenticate"

    invoke-interface {p1, v2}, Ljavax/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/WWWAuthenticate;

    .line 1167
    .local v1, wwwAuth:Lgov/nist/javax/sip/header/WWWAuthenticate;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/WWWAuthenticate;->getRealm()Ljava/lang/String;

    move-result-object v2

    .line 1170
    :goto_0
    return-object v2

    .line 1168
    :cond_0
    const-string v2, "Proxy-Authenticate"

    invoke-interface {p1, v2}, Ljavax/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/ProxyAuthenticate;

    .line 1170
    .local v0, proxyAuth:Lgov/nist/javax/sip/header/ProxyAuthenticate;
    if-nez v0, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/ProxyAuthenticate;->getRealm()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getResponseString(I)Ljava/lang/String;
    .locals 2
    .parameter "statusCode"

    .prologue
    .line 1183
    new-instance v0, Lgov/nist/javax/sip/header/StatusLine;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/StatusLine;-><init>()V

    .line 1184
    .local v0, statusLine:Lgov/nist/javax/sip/header/StatusLine;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/StatusLine;->setStatusCode(I)V

    .line 1185
    invoke-static {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getReasonPhrase(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/StatusLine;->setReasonPhrase(Ljava/lang/String;)V

    .line 1186
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/StatusLine;->encode()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getTransaction()Ljavax/sip/Transaction;
    .locals 1

    .prologue
    .line 743
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    .line 745
    :goto_0
    return-object v0

    .line 744
    :cond_0
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mServerTransaction:Ljavax/sip/ServerTransaction;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mServerTransaction:Ljavax/sip/ServerTransaction;

    goto :goto_0

    .line 745
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleAuthentication(Ljavax/sip/ResponseEvent;)Z
    .locals 5
    .parameter "event"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1106
    const-string v3, "com.baidu.server.sip"

    const-string v4, "<====> SipSessionImpl::handleAuthentication()"

    invoke-static {v3, v4}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    invoke-virtual {p1}, Ljavax/sip/ResponseEvent;->getResponse()Ljavax/sip/message/Response;

    move-result-object v1

    .line 1108
    .local v1, response:Ljavax/sip/message/Response;
    invoke-direct {p0, v1}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->getNonceFromResponse(Ljavax/sip/message/Response;)Ljava/lang/String;

    move-result-object v0

    .line 1109
    .local v0, nonce:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1110
    const/4 v3, -0x2

    const-string/jumbo v4, "server does not provide challenge"

    invoke-direct {p0, v3, v4}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->onError(ILjava/lang/String;)V

    .line 1131
    :goto_0
    return v2

    .line 1113
    :cond_0
    iget v3, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mAuthenticationRetryCount:I

    const/4 v4, 0x2

    if-ge v3, v4, :cond_2

    .line 1114
    iget-object v2, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/baidu/server/sip/SipSessionGroup;

    #getter for: Lcom/baidu/server/sip/SipSessionGroup;->mSipHelper:Lcom/baidu/server/sip/SipHelper;
    invoke-static {v2}, Lcom/baidu/server/sip/SipSessionGroup;->access$300(Lcom/baidu/server/sip/SipSessionGroup;)Lcom/baidu/server/sip/SipHelper;

    move-result-object v2

    invoke-direct {p0}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->getAccountManager()Lgov/nist/javax/sip/clientauthutils/AccountManager;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/baidu/server/sip/SipHelper;->handleChallenge(Ljavax/sip/ResponseEvent;Lgov/nist/javax/sip/clientauthutils/AccountManager;)Ljavax/sip/ClientTransaction;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    .line 1116
    iget-object v2, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    invoke-interface {v2}, Ljavax/sip/ClientTransaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    .line 1117
    iget v2, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mAuthenticationRetryCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mAuthenticationRetryCount:I

    .line 1118
    #calls: Lcom/baidu/server/sip/SipSessionGroup;->isLoggable(Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;Ljava/util/EventObject;)Z
    invoke-static {p0, p1}, Lcom/baidu/server/sip/SipSessionGroup;->access$600(Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;Ljava/util/EventObject;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1119
    const-string v2, "com.baidu.server.sip"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "   authentication retry count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mAuthenticationRetryCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 1124
    :cond_2
    invoke-direct {p0, v1}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->crossDomainAuthenticationRequired(Ljavax/sip/message/Response;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1125
    const/16 v3, -0xb

    invoke-direct {p0, v1}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->getRealmFromResponse(Ljavax/sip/message/Response;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->onError(ILjava/lang/String;)V

    goto :goto_0

    .line 1128
    :cond_3
    const/4 v3, -0x8

    const-string v4, "incorrect username or password"

    invoke-direct {p0, v3, v4}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->onError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private inCall(Ljava/util/EventObject;)Z
    .locals 8
    .parameter "evt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    const/16 v7, 0xc8

    const/4 v6, 0x3

    const/4 v4, 0x1

    .line 1428
    const-string v3, "com.baidu.server.sip"

    const-string v5, "<====> SipSessionImpl::inCall()"

    invoke-static {v3, v5}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1431
    invoke-static {}, Lcom/baidu/server/sip/SipSessionGroup;->access$1800()Ljava/util/EventObject;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 1433
    const/16 v3, 0xa

    iput v3, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    .line 1434
    iget-object v3, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/baidu/server/sip/SipSessionGroup;

    #getter for: Lcom/baidu/server/sip/SipSessionGroup;->mSipHelper:Lcom/baidu/server/sip/SipHelper;
    invoke-static {v3}, Lcom/baidu/server/sip/SipSessionGroup;->access$300(Lcom/baidu/server/sip/SipSessionGroup;)Lcom/baidu/server/sip/SipHelper;

    move-result-object v3

    iget-object v5, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    invoke-virtual {v3, v5}, Lcom/baidu/server/sip/SipHelper;->sendBye(Ljavax/sip/Dialog;)V

    .line 1435
    iget-object v3, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/baidu/server/sip/SipSessionListenerProxy;

    invoke-virtual {v3, p0}, Lcom/baidu/server/sip/SipSessionListenerProxy;->onCallEnded(Lbaidu/net/sip/ISipSession;)V

    .line 1436
    invoke-direct {p0, v6}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->startSessionTimer(I)V

    move v3, v4

    .line 1477
    .end local p1
    :goto_0
    return v3

    .line 1438
    .restart local p1
    :cond_0
    const-string v3, "INVITE"

    #calls: Lcom/baidu/server/sip/SipSessionGroup;->isRequestEvent(Ljava/lang/String;Ljava/util/EventObject;)Z
    invoke-static {v3, p1}, Lcom/baidu/server/sip/SipSessionGroup;->access$800(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1440
    iput v6, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    move-object v1, p1

    .line 1441
    check-cast v1, Ljavax/sip/RequestEvent;

    iput-object v1, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mInviteReceived:Ljavax/sip/RequestEvent;

    .line 1442
    .local v1, event:Ljavax/sip/RequestEvent;
    iget-object v3, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/baidu/server/sip/SipSessionGroup;

    invoke-virtual {v1}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v5

    #calls: Lcom/baidu/server/sip/SipSessionGroup;->extractContent(Ljavax/sip/message/Message;)Ljava/lang/String;
    invoke-static {v3, v5}, Lcom/baidu/server/sip/SipSessionGroup;->access$2700(Lcom/baidu/server/sip/SipSessionGroup;Ljavax/sip/message/Message;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mPeerSessionDescription:Ljava/lang/String;

    .line 1443
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mServerTransaction:Ljavax/sip/ServerTransaction;

    .line 1444
    iget-object v3, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/baidu/server/sip/SipSessionListenerProxy;

    iget-object v5, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mPeerProfile:Lbaidu/net/sip/SipProfile;

    iget-object v6, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mPeerSessionDescription:Ljava/lang/String;

    invoke-virtual {v3, p0, v5, v6}, Lcom/baidu/server/sip/SipSessionListenerProxy;->onRinging(Lbaidu/net/sip/ISipSession;Lbaidu/net/sip/SipProfile;Ljava/lang/String;)V

    move v3, v4

    .line 1445
    goto :goto_0

    .line 1446
    .end local v1           #event:Ljavax/sip/RequestEvent;
    :cond_1
    const-string v3, "BYE"

    #calls: Lcom/baidu/server/sip/SipSessionGroup;->isRequestEvent(Ljava/lang/String;Ljava/util/EventObject;)Z
    invoke-static {v3, p1}, Lcom/baidu/server/sip/SipSessionGroup;->access$800(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1447
    iget-object v3, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/baidu/server/sip/SipSessionGroup;

    #getter for: Lcom/baidu/server/sip/SipSessionGroup;->mSipHelper:Lcom/baidu/server/sip/SipHelper;
    invoke-static {v3}, Lcom/baidu/server/sip/SipSessionGroup;->access$300(Lcom/baidu/server/sip/SipSessionGroup;)Lcom/baidu/server/sip/SipHelper;

    move-result-object v3

    check-cast p1, Ljavax/sip/RequestEvent;

    .end local p1
    invoke-virtual {v3, p1, v7}, Lcom/baidu/server/sip/SipHelper;->sendResponse(Ljavax/sip/RequestEvent;I)V

    .line 1448
    invoke-direct {p0}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->endCallNormally()V

    move v3, v4

    .line 1449
    goto :goto_0

    .line 1450
    .restart local p1
    :cond_2
    const-string v3, "REFER"

    #calls: Lcom/baidu/server/sip/SipSessionGroup;->isRequestEvent(Ljava/lang/String;Ljava/util/EventObject;)Z
    invoke-static {v3, p1}, Lcom/baidu/server/sip/SipSessionGroup;->access$800(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1451
    check-cast p1, Ljavax/sip/RequestEvent;

    .end local p1
    invoke-direct {p0, p1}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->processReferRequest(Ljavax/sip/RequestEvent;)Z

    move-result v3

    goto :goto_0

    .line 1452
    .restart local p1
    :cond_3
    instance-of v3, p1, Lcom/baidu/server/sip/SipSessionGroup$MakeCallCommand;

    if-eqz v3, :cond_4

    .line 1455
    iput-boolean v4, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mReinviteInprocess:Z

    .line 1457
    const/4 v3, 0x5

    iput v3, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    .line 1458
    iget-object v3, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/baidu/server/sip/SipSessionGroup;

    #getter for: Lcom/baidu/server/sip/SipSessionGroup;->mSipHelper:Lcom/baidu/server/sip/SipHelper;
    invoke-static {v3}, Lcom/baidu/server/sip/SipSessionGroup;->access$300(Lcom/baidu/server/sip/SipSessionGroup;)Lcom/baidu/server/sip/SipHelper;

    move-result-object v5

    iget-object v6, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    move-object v3, p1

    check-cast v3, Lcom/baidu/server/sip/SipSessionGroup$MakeCallCommand;

    invoke-virtual {v3}, Lcom/baidu/server/sip/SipSessionGroup$MakeCallCommand;->getSessionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v6, v3}, Lcom/baidu/server/sip/SipHelper;->sendReinvite(Ljavax/sip/Dialog;Ljava/lang/String;)Ljavax/sip/ClientTransaction;

    move-result-object v3

    iput-object v3, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    .line 1460
    check-cast p1, Lcom/baidu/server/sip/SipSessionGroup$MakeCallCommand;

    .end local p1
    invoke-virtual {p1}, Lcom/baidu/server/sip/SipSessionGroup$MakeCallCommand;->getTimeout()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->startSessionTimer(I)V

    move v3, v4

    .line 1461
    goto :goto_0

    .line 1462
    .restart local p1
    :cond_4
    instance-of v3, p1, Ljavax/sip/ResponseEvent;

    if-eqz v3, :cond_5

    .line 1463
    const-string v3, "NOTIFY"

    #calls: Lcom/baidu/server/sip/SipSessionGroup;->expectResponse(Ljava/lang/String;Ljava/util/EventObject;)Z
    invoke-static {v3, p1}, Lcom/baidu/server/sip/SipSessionGroup;->access$2300(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v3

    if-eqz v3, :cond_7

    move v3, v4

    goto/16 :goto_0

    .line 1465
    :cond_5
    instance-of v3, p1, Lcom/baidu/server/sip/SipSessionGroup$InfoCommand;

    if-eqz v3, :cond_6

    move-object v0, p1

    .line 1466
    check-cast v0, Lcom/baidu/server/sip/SipSessionGroup$InfoCommand;

    .line 1467
    .local v0, cmd:Lcom/baidu/server/sip/SipSessionGroup$InfoCommand;
    invoke-virtual {v0}, Lcom/baidu/server/sip/SipSessionGroup$InfoCommand;->getInfo()Ljava/lang/String;

    move-result-object v2

    .line 1468
    .local v2, info:Ljava/lang/String;
    iget-object v3, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/baidu/server/sip/SipSessionGroup;

    #getter for: Lcom/baidu/server/sip/SipSessionGroup;->mSipHelper:Lcom/baidu/server/sip/SipHelper;
    invoke-static {v3}, Lcom/baidu/server/sip/SipSessionGroup;->access$300(Lcom/baidu/server/sip/SipSessionGroup;)Lcom/baidu/server/sip/SipHelper;

    move-result-object v3

    iget-object v5, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    invoke-virtual {v3, v5, v2}, Lcom/baidu/server/sip/SipHelper;->sendInfo(Ljavax/sip/Dialog;Ljava/lang/String;)V

    move v3, v4

    .line 1469
    goto/16 :goto_0

    .line 1470
    .end local v0           #cmd:Lcom/baidu/server/sip/SipSessionGroup$InfoCommand;
    .end local v2           #info:Ljava/lang/String;
    :cond_6
    const-string v3, "INFO"

    #calls: Lcom/baidu/server/sip/SipSessionGroup;->isRequestEvent(Ljava/lang/String;Ljava/util/EventObject;)Z
    invoke-static {v3, p1}, Lcom/baidu/server/sip/SipSessionGroup;->access$800(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1471
    iget-object v3, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/baidu/server/sip/SipSessionGroup;

    #getter for: Lcom/baidu/server/sip/SipSessionGroup;->mSipHelper:Lcom/baidu/server/sip/SipHelper;
    invoke-static {v3}, Lcom/baidu/server/sip/SipSessionGroup;->access$300(Lcom/baidu/server/sip/SipSessionGroup;)Lcom/baidu/server/sip/SipHelper;

    move-result-object v5

    move-object v3, p1

    check-cast v3, Ljavax/sip/RequestEvent;

    invoke-virtual {v5, v3, v7}, Lcom/baidu/server/sip/SipHelper;->sendResponse(Ljavax/sip/RequestEvent;I)V

    move-object v1, p1

    .line 1472
    check-cast v1, Ljavax/sip/RequestEvent;

    .line 1473
    .restart local v1       #event:Ljavax/sip/RequestEvent;
    iget-object v3, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/baidu/server/sip/SipSessionListenerProxy;

    iget-object v5, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/baidu/server/sip/SipSessionGroup;

    invoke-virtual {v1}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v6

    #calls: Lcom/baidu/server/sip/SipSessionGroup;->extractContent(Ljavax/sip/message/Message;)Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/baidu/server/sip/SipSessionGroup;->access$2700(Lcom/baidu/server/sip/SipSessionGroup;Ljavax/sip/message/Message;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/baidu/server/sip/SipSessionListenerProxy;->onInfoReceived(Ljava/lang/String;)V

    move v3, v4

    .line 1474
    goto/16 :goto_0

    .line 1477
    .end local v1           #event:Ljavax/sip/RequestEvent;
    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_0
.end method

.method private incomingCall(Ljava/util/EventObject;)Z
    .locals 9
    .parameter "evt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 1230
    const-string v0, "com.baidu.server.sip"

    const-string v1, "<====> SipSessionImpl::incomingCall()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1232
    instance-of v0, p1, Lcom/baidu/server/sip/SipSessionGroup$MakeCallCommand;

    if-eqz v0, :cond_0

    .line 1234
    const/4 v0, 0x4

    iput v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    .line 1235
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/baidu/server/sip/SipSessionGroup;

    #getter for: Lcom/baidu/server/sip/SipSessionGroup;->mSipHelper:Lcom/baidu/server/sip/SipHelper;
    invoke-static {v0}, Lcom/baidu/server/sip/SipSessionGroup;->access$300(Lcom/baidu/server/sip/SipSessionGroup;)Lcom/baidu/server/sip/SipHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mInviteReceived:Ljavax/sip/RequestEvent;

    iget-object v2, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/baidu/server/sip/SipSessionGroup;

    #getter for: Lcom/baidu/server/sip/SipSessionGroup;->mLocalProfile:Lbaidu/net/sip/SipProfile;
    invoke-static {v2}, Lcom/baidu/server/sip/SipSessionGroup;->access$1500(Lcom/baidu/server/sip/SipSessionGroup;)Lbaidu/net/sip/SipProfile;

    move-result-object v2

    move-object v3, p1

    check-cast v3, Lcom/baidu/server/sip/SipSessionGroup$MakeCallCommand;

    invoke-virtual {v3}, Lcom/baidu/server/sip/SipSessionGroup$MakeCallCommand;->getSessionDescription()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mServerTransaction:Ljavax/sip/ServerTransaction;

    iget-object v5, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/baidu/server/sip/SipSessionGroup;

    #getter for: Lcom/baidu/server/sip/SipSessionGroup;->mExternalIp:Ljava/lang/String;
    invoke-static {v5}, Lcom/baidu/server/sip/SipSessionGroup;->access$2500(Lcom/baidu/server/sip/SipSessionGroup;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/baidu/server/sip/SipSessionGroup;

    #getter for: Lcom/baidu/server/sip/SipSessionGroup;->mExternalPort:I
    invoke-static {v6}, Lcom/baidu/server/sip/SipSessionGroup;->access$2600(Lcom/baidu/server/sip/SipSessionGroup;)I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/baidu/server/sip/SipHelper;->sendInviteOk(Ljavax/sip/RequestEvent;Lbaidu/net/sip/SipProfile;Ljava/lang/String;Ljavax/sip/ServerTransaction;Ljava/lang/String;I)Ljavax/sip/ServerTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mServerTransaction:Ljavax/sip/ServerTransaction;

    .line 1240
    check-cast p1, Lcom/baidu/server/sip/SipSessionGroup$MakeCallCommand;

    .end local p1
    invoke-virtual {p1}, Lcom/baidu/server/sip/SipSessionGroup$MakeCallCommand;->getTimeout()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->startSessionTimer(I)V

    move v0, v8

    .line 1255
    :goto_0
    return v0

    .line 1242
    .restart local p1
    :cond_0
    invoke-static {}, Lcom/baidu/server/sip/SipSessionGroup;->access$1800()Ljava/util/EventObject;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 1243
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/baidu/server/sip/SipSessionGroup;

    #getter for: Lcom/baidu/server/sip/SipSessionGroup;->mSipHelper:Lcom/baidu/server/sip/SipHelper;
    invoke-static {v0}, Lcom/baidu/server/sip/SipSessionGroup;->access$300(Lcom/baidu/server/sip/SipSessionGroup;)Lcom/baidu/server/sip/SipHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mInviteReceived:Ljavax/sip/RequestEvent;

    iget-object v2, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mServerTransaction:Ljavax/sip/ServerTransaction;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/server/sip/SipHelper;->sendInviteBusyHere(Ljavax/sip/RequestEvent;Ljavax/sip/ServerTransaction;)V

    .line 1245
    invoke-direct {p0}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->endCallNormally()V

    move v0, v8

    .line 1246
    goto :goto_0

    .line 1247
    :cond_1
    const-string v0, "CANCEL"

    #calls: Lcom/baidu/server/sip/SipSessionGroup;->isRequestEvent(Ljava/lang/String;Ljava/util/EventObject;)Z
    invoke-static {v0, p1}, Lcom/baidu/server/sip/SipSessionGroup;->access$800(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v7, p1

    .line 1248
    check-cast v7, Ljavax/sip/RequestEvent;

    .line 1249
    .local v7, event:Ljavax/sip/RequestEvent;
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/baidu/server/sip/SipSessionGroup;

    #getter for: Lcom/baidu/server/sip/SipSessionGroup;->mSipHelper:Lcom/baidu/server/sip/SipHelper;
    invoke-static {v0}, Lcom/baidu/server/sip/SipSessionGroup;->access$300(Lcom/baidu/server/sip/SipSessionGroup;)Lcom/baidu/server/sip/SipHelper;

    move-result-object v0

    const/16 v1, 0xc8

    invoke-virtual {v0, v7, v1}, Lcom/baidu/server/sip/SipHelper;->sendResponse(Ljavax/sip/RequestEvent;I)V

    .line 1250
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/baidu/server/sip/SipSessionGroup;

    #getter for: Lcom/baidu/server/sip/SipSessionGroup;->mSipHelper:Lcom/baidu/server/sip/SipHelper;
    invoke-static {v0}, Lcom/baidu/server/sip/SipSessionGroup;->access$300(Lcom/baidu/server/sip/SipSessionGroup;)Lcom/baidu/server/sip/SipHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mInviteReceived:Ljavax/sip/RequestEvent;

    invoke-virtual {v1}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mServerTransaction:Ljavax/sip/ServerTransaction;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/server/sip/SipHelper;->sendInviteRequestTerminated(Ljavax/sip/message/Request;Ljavax/sip/ServerTransaction;)V

    .line 1252
    invoke-direct {p0}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->endCallNormally()V

    move v0, v8

    .line 1253
    goto :goto_0

    .line 1255
    .end local v7           #event:Ljavax/sip/RequestEvent;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private incomingCallToInCall(Ljava/util/EventObject;)Z
    .locals 5
    .parameter "evt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1260
    const-string v3, "com.baidu.server.sip"

    const-string v4, "<====> SipSessionImpl::incomingCallToInCall()"

    invoke-static {v3, v4}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1262
    const-string v3, "ACK"

    #calls: Lcom/baidu/server/sip/SipSessionGroup;->isRequestEvent(Ljava/lang/String;Ljava/util/EventObject;)Z
    invoke-static {v3, p1}, Lcom/baidu/server/sip/SipSessionGroup;->access$800(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1263
    iget-object v3, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/baidu/server/sip/SipSessionGroup;

    check-cast p1, Ljavax/sip/RequestEvent;

    .end local p1
    invoke-virtual {p1}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v4

    #calls: Lcom/baidu/server/sip/SipSessionGroup;->extractContent(Ljavax/sip/message/Message;)Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/baidu/server/sip/SipSessionGroup;->access$2700(Lcom/baidu/server/sip/SipSessionGroup;Ljavax/sip/message/Message;)Ljava/lang/String;

    move-result-object v0

    .line 1264
    .local v0, sdp:Ljava/lang/String;
    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mPeerSessionDescription:Ljava/lang/String;

    .line 1265
    :cond_0
    iget-object v3, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mPeerSessionDescription:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 1266
    const/4 v2, -0x4

    const-string/jumbo v3, "peer sdp is empty"

    invoke-direct {p0, v2, v3}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->onError(ILjava/lang/String;)V

    .line 1276
    .end local v0           #sdp:Ljava/lang/String;
    :cond_1
    :goto_0
    return v1

    .line 1268
    .restart local v0       #sdp:Ljava/lang/String;
    :cond_2
    invoke-direct {p0, v2}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->establishCall(Z)V

    goto :goto_0

    .line 1271
    .end local v0           #sdp:Ljava/lang/String;
    .restart local p1
    :cond_3
    const-string v3, "CANCEL"

    #calls: Lcom/baidu/server/sip/SipSessionGroup;->isRequestEvent(Ljava/lang/String;Ljava/util/EventObject;)Z
    invoke-static {v3, p1}, Lcom/baidu/server/sip/SipSessionGroup;->access$800(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v3

    if-nez v3, :cond_1

    move v1, v2

    .line 1276
    goto :goto_0
.end method

.method private isCurrentTransaction(Ljavax/sip/TransactionTerminatedEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 986
    invoke-virtual {p1}, Ljavax/sip/TransactionTerminatedEvent;->isServerTransaction()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mServerTransaction:Ljavax/sip/ServerTransaction;

    .line 989
    .local v0, current:Ljavax/sip/Transaction;
    :goto_0
    invoke-virtual {p1}, Ljavax/sip/TransactionTerminatedEvent;->isServerTransaction()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Ljavax/sip/TransactionTerminatedEvent;->getServerTransaction()Ljavax/sip/ServerTransaction;

    move-result-object v1

    .line 993
    .local v1, target:Ljavax/sip/Transaction;
    :goto_1
    if-eq v0, v1, :cond_3

    iget v3, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    const/16 v4, 0x9

    if-eq v3, v4, :cond_3

    .line 994
    const-string v2, "com.baidu.server.sip"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "not the current transaction; current="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v0}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->toString(Ljavax/sip/Transaction;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", target="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->toString(Ljavax/sip/Transaction;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    const/4 v2, 0x0

    .line 1002
    :cond_0
    :goto_2
    return v2

    .line 986
    .end local v0           #current:Ljavax/sip/Transaction;
    .end local v1           #target:Ljavax/sip/Transaction;
    :cond_1
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    goto :goto_0

    .line 989
    .restart local v0       #current:Ljavax/sip/Transaction;
    :cond_2
    invoke-virtual {p1}, Ljavax/sip/TransactionTerminatedEvent;->getClientTransaction()Ljavax/sip/ClientTransaction;

    move-result-object v1

    goto :goto_1

    .line 997
    .restart local v1       #target:Ljavax/sip/Transaction;
    :cond_3
    if-eqz v0, :cond_0

    .line 998
    const-string v3, "com.baidu.server.sip"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "transaction terminated: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v0}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->toString(Ljavax/sip/Transaction;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private onError(ILjava/lang/String;)V
    .locals 2
    .parameter "errorCode"
    .parameter "message"

    .prologue
    .line 1573
    const-string v0, "com.baidu.server.sip"

    const-string v1, "<====> SipSessionImpl::onError()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1574
    invoke-direct {p0}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->cancelSessionTimer()V

    .line 1575
    iget v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 1581
    invoke-direct {p0, p1, p2}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->endCallOnError(ILjava/lang/String;)V

    .line 1583
    :goto_0
    return-void

    .line 1578
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->onRegistrationFailed(ILjava/lang/String;)V

    goto :goto_0

    .line 1575
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onError(Ljava/lang/Throwable;)V
    .locals 2
    .parameter "exception"

    .prologue
    .line 1587
    const-string v0, "com.baidu.server.sip"

    const-string v1, "<====> SipSessionImpl::onError()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1588
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/baidu/server/sip/SipSessionGroup;

    #calls: Lcom/baidu/server/sip/SipSessionGroup;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    invoke-static {v0, p1}, Lcom/baidu/server/sip/SipSessionGroup;->access$1700(Lcom/baidu/server/sip/SipSessionGroup;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    .line 1589
    invoke-direct {p0, p1}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->getErrorCode(Ljava/lang/Throwable;)I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->onError(ILjava/lang/String;)V

    .line 1590
    return-void
.end method

.method private onError(Ljavax/sip/message/Response;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 1593
    const-string v1, "com.baidu.server.sip"

    const-string v2, "<====> SipSessionImpl::onError()"

    invoke-static {v1, v2}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1594
    invoke-interface {p1}, Ljavax/sip/message/Response;->getStatusCode()I

    move-result v0

    .line 1595
    .local v0, statusCode:I
    iget-boolean v1, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mInCall:Z

    if-nez v1, :cond_0

    const/16 v1, 0x1e6

    if-ne v0, v1, :cond_0

    .line 1596
    invoke-direct {p0}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->endCallOnBusy()V

    .line 1600
    :goto_0
    return-void

    .line 1598
    :cond_0
    invoke-direct {p0, v0}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->getErrorCode(I)I

    move-result v1

    invoke-direct {p0, p1}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->createErrorMessage(Ljavax/sip/message/Response;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->onError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private onRegistrationDone(I)V
    .locals 2
    .parameter "duration"

    .prologue
    .line 1641
    const-string v0, "com.baidu.server.sip"

    const-string v1, "<====> SipSessionImpl::onRegistrationDone()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1642
    invoke-direct {p0}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->reset()V

    .line 1643
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/baidu/server/sip/SipSessionListenerProxy;

    invoke-virtual {v0, p0, p1}, Lcom/baidu/server/sip/SipSessionListenerProxy;->onRegistrationDone(Lbaidu/net/sip/ISipSession;I)V

    .line 1644
    return-void
.end method

.method private onRegistrationFailed(ILjava/lang/String;)V
    .locals 2
    .parameter "errorCode"
    .parameter "message"

    .prologue
    .line 1647
    const-string v0, "com.baidu.server.sip"

    const-string v1, "<====> SipSessionImpl::onRegistrationFailed()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1648
    invoke-direct {p0}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->reset()V

    .line 1649
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/baidu/server/sip/SipSessionListenerProxy;

    invoke-virtual {v0, p0, p1, p2}, Lcom/baidu/server/sip/SipSessionListenerProxy;->onRegistrationFailed(Lbaidu/net/sip/ISipSession;ILjava/lang/String;)V

    .line 1650
    return-void
.end method

.method private onRegistrationFailed(Ljava/lang/Throwable;)V
    .locals 2
    .parameter "exception"

    .prologue
    .line 1653
    const-string v0, "com.baidu.server.sip"

    const-string v1, "<====> SipSessionImpl::onRegistrationFailed()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1654
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/baidu/server/sip/SipSessionGroup;

    #calls: Lcom/baidu/server/sip/SipSessionGroup;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    invoke-static {v0, p1}, Lcom/baidu/server/sip/SipSessionGroup;->access$1700(Lcom/baidu/server/sip/SipSessionGroup;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    .line 1655
    invoke-direct {p0, p1}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->getErrorCode(Ljava/lang/Throwable;)I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->onRegistrationFailed(ILjava/lang/String;)V

    .line 1657
    return-void
.end method

.method private onRegistrationFailed(Ljavax/sip/message/Response;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 1660
    const-string v1, "com.baidu.server.sip"

    const-string v2, "<====> SipSessionImpl::onRegistrationFailed()"

    invoke-static {v1, v2}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1661
    invoke-interface {p1}, Ljavax/sip/message/Response;->getStatusCode()I

    move-result v0

    .line 1662
    .local v0, statusCode:I
    invoke-direct {p0, v0}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->getErrorCode(I)I

    move-result v1

    invoke-direct {p0, p1}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->createErrorMessage(Ljavax/sip/message/Response;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->onRegistrationFailed(ILjava/lang/String;)V

    .line 1664
    return-void
.end method

.method private outgoingCall(Ljava/util/EventObject;)Z
    .locals 8
    .parameter "evt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1280
    const-string v5, "com.baidu.server.sip"

    const-string v6, "<====> SipSessionImpl::outgoingCall()"

    invoke-static {v5, v6}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1281
    const-string v5, "INVITE"

    #calls: Lcom/baidu/server/sip/SipSessionGroup;->expectResponse(Ljava/lang/String;Ljava/util/EventObject;)Z
    invoke-static {v5, p1}, Lcom/baidu/server/sip/SipSessionGroup;->access$2300(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v0, p1

    .line 1282
    check-cast v0, Ljavax/sip/ResponseEvent;

    .line 1283
    .local v0, event:Ljavax/sip/ResponseEvent;
    invoke-virtual {v0}, Ljavax/sip/ResponseEvent;->getResponse()Ljavax/sip/message/Response;

    move-result-object v1

    .line 1285
    .local v1, response:Ljavax/sip/message/Response;
    invoke-interface {v1}, Ljavax/sip/message/Response;->getStatusCode()I

    move-result v2

    .line 1286
    .local v2, statusCode:I
    sparse-switch v2, :sswitch_data_0

    .line 1321
    iget-object v5, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mReferSession:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    if-eqz v5, :cond_0

    .line 1322
    iget-object v5, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/baidu/server/sip/SipSessionGroup;

    #getter for: Lcom/baidu/server/sip/SipSessionGroup;->mSipHelper:Lcom/baidu/server/sip/SipHelper;
    invoke-static {v5}, Lcom/baidu/server/sip/SipSessionGroup;->access$300(Lcom/baidu/server/sip/SipSessionGroup;)Lcom/baidu/server/sip/SipHelper;

    move-result-object v5

    iget-object v6, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mReferSession:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v6, v6, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    const/16 v7, 0x1f7

    invoke-direct {p0, v7}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->getResponseString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/baidu/server/sip/SipHelper;->sendReferNotify(Ljavax/sip/Dialog;Ljava/lang/String;)V

    .line 1325
    :cond_0
    const/16 v5, 0x190

    if-lt v2, v5, :cond_3

    .line 1327
    invoke-direct {p0, v1}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->onError(Ljavax/sip/message/Response;)V

    .line 1352
    .end local v0           #event:Ljavax/sip/ResponseEvent;
    .end local v1           #response:Ljavax/sip/message/Response;
    .end local v2           #statusCode:I
    :cond_1
    :goto_0
    :sswitch_0
    return v3

    .line 1293
    .restart local v0       #event:Ljavax/sip/ResponseEvent;
    .restart local v1       #response:Ljavax/sip/message/Response;
    .restart local v2       #statusCode:I
    :sswitch_1
    iget v4, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_1

    .line 1294
    const/4 v4, 0x6

    iput v4, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    .line 1295
    invoke-direct {p0}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->cancelSessionTimer()V

    .line 1296
    iget-object v4, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/baidu/server/sip/SipSessionListenerProxy;

    invoke-virtual {v4, p0}, Lcom/baidu/server/sip/SipSessionListenerProxy;->onRingingBack(Lbaidu/net/sip/ISipSession;)V

    goto :goto_0

    .line 1300
    :sswitch_2
    iget-object v4, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mReferSession:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    if-eqz v4, :cond_2

    .line 1301
    iget-object v4, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/baidu/server/sip/SipSessionGroup;

    #getter for: Lcom/baidu/server/sip/SipSessionGroup;->mSipHelper:Lcom/baidu/server/sip/SipHelper;
    invoke-static {v4}, Lcom/baidu/server/sip/SipSessionGroup;->access$300(Lcom/baidu/server/sip/SipSessionGroup;)Lcom/baidu/server/sip/SipHelper;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mReferSession:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v5, v5, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    const/16 v6, 0xc8

    invoke-direct {p0, v6}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->getResponseString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/baidu/server/sip/SipHelper;->sendReferNotify(Ljavax/sip/Dialog;Ljava/lang/String;)V

    .line 1304
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mReferSession:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    .line 1306
    :cond_2
    iget-object v4, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/baidu/server/sip/SipSessionGroup;

    #getter for: Lcom/baidu/server/sip/SipSessionGroup;->mSipHelper:Lcom/baidu/server/sip/SipHelper;
    invoke-static {v4}, Lcom/baidu/server/sip/SipSessionGroup;->access$300(Lcom/baidu/server/sip/SipSessionGroup;)Lcom/baidu/server/sip/SipHelper;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    invoke-virtual {v4, v0, v5}, Lcom/baidu/server/sip/SipHelper;->sendInviteAck(Ljavax/sip/ResponseEvent;Ljavax/sip/Dialog;)V

    .line 1307
    iget-object v4, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/baidu/server/sip/SipSessionGroup;

    #calls: Lcom/baidu/server/sip/SipSessionGroup;->extractContent(Ljavax/sip/message/Message;)Ljava/lang/String;
    invoke-static {v4, v1}, Lcom/baidu/server/sip/SipSessionGroup;->access$2700(Lcom/baidu/server/sip/SipSessionGroup;Ljavax/sip/message/Message;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mPeerSessionDescription:Ljava/lang/String;

    .line 1308
    invoke-direct {p0, v3}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->establishCall(Z)V

    goto :goto_0

    .line 1312
    :sswitch_3
    invoke-direct {p0, v0}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->handleAuthentication(Ljavax/sip/ResponseEvent;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1313
    iget-object v4, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/baidu/server/sip/SipSessionGroup;

    #calls: Lcom/baidu/server/sip/SipSessionGroup;->addSipSession(Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;)V
    invoke-static {v4, p0}, Lcom/baidu/server/sip/SipSessionGroup;->access$500(Lcom/baidu/server/sip/SipSessionGroup;Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;)V

    goto :goto_0

    .line 1329
    :cond_3
    const/16 v5, 0x12c

    if-lt v2, v5, :cond_1

    move v3, v4

    .line 1335
    goto :goto_0

    .line 1336
    .end local v0           #event:Ljavax/sip/ResponseEvent;
    .end local v1           #response:Ljavax/sip/message/Response;
    .end local v2           #statusCode:I
    :cond_4
    invoke-static {}, Lcom/baidu/server/sip/SipSessionGroup;->access$1800()Ljava/util/EventObject;

    move-result-object v5

    if-ne v5, p1, :cond_5

    .line 1340
    const/4 v4, 0x7

    iput v4, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    .line 1341
    iget-object v4, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/baidu/server/sip/SipSessionGroup;

    #getter for: Lcom/baidu/server/sip/SipSessionGroup;->mSipHelper:Lcom/baidu/server/sip/SipHelper;
    invoke-static {v4}, Lcom/baidu/server/sip/SipSessionGroup;->access$300(Lcom/baidu/server/sip/SipSessionGroup;)Lcom/baidu/server/sip/SipHelper;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    invoke-virtual {v4, v5}, Lcom/baidu/server/sip/SipHelper;->sendCancel(Ljavax/sip/ClientTransaction;)V

    .line 1342
    const/4 v4, 0x3

    invoke-direct {p0, v4}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->startSessionTimer(I)V

    goto :goto_0

    .line 1344
    :cond_5
    const-string v5, "INVITE"

    #calls: Lcom/baidu/server/sip/SipSessionGroup;->isRequestEvent(Ljava/lang/String;Ljava/util/EventObject;)Z
    invoke-static {v5, p1}, Lcom/baidu/server/sip/SipSessionGroup;->access$800(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v5

    if-eqz v5, :cond_6

    move-object v0, p1

    .line 1347
    check-cast v0, Ljavax/sip/RequestEvent;

    .line 1348
    .local v0, event:Ljavax/sip/RequestEvent;
    iget-object v4, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/baidu/server/sip/SipSessionGroup;

    #getter for: Lcom/baidu/server/sip/SipSessionGroup;->mSipHelper:Lcom/baidu/server/sip/SipHelper;
    invoke-static {v4}, Lcom/baidu/server/sip/SipSessionGroup;->access$300(Lcom/baidu/server/sip/SipSessionGroup;)Lcom/baidu/server/sip/SipHelper;

    move-result-object v4

    invoke-virtual {v0}, Ljavax/sip/RequestEvent;->getServerTransaction()Ljavax/sip/ServerTransaction;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lcom/baidu/server/sip/SipHelper;->sendInviteBusyHere(Ljavax/sip/RequestEvent;Ljavax/sip/ServerTransaction;)V

    goto/16 :goto_0

    .end local v0           #event:Ljavax/sip/RequestEvent;
    :cond_6
    move v3, v4

    .line 1352
    goto/16 :goto_0

    .line 1286
    :sswitch_data_0
    .sparse-switch
        0xb4 -> :sswitch_1
        0xb5 -> :sswitch_1
        0xb6 -> :sswitch_1
        0xb7 -> :sswitch_1
        0xc8 -> :sswitch_2
        0x191 -> :sswitch_3
        0x197 -> :sswitch_3
        0x1eb -> :sswitch_0
    .end sparse-switch
.end method

.method private outgoingCallToReady(Ljava/util/EventObject;)Z
    .locals 7
    .parameter "evt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1357
    const-string v5, "com.baidu.server.sip"

    const-string v6, "<====> SipSessionImpl::outgoingCallToReady()"

    invoke-static {v5, v6}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1358
    instance-of v5, p1, Ljavax/sip/ResponseEvent;

    if-eqz v5, :cond_3

    move-object v0, p1

    .line 1359
    check-cast v0, Ljavax/sip/ResponseEvent;

    .line 1360
    .local v0, event:Ljavax/sip/ResponseEvent;
    invoke-virtual {v0}, Ljavax/sip/ResponseEvent;->getResponse()Ljavax/sip/message/Response;

    move-result-object v1

    .line 1361
    .local v1, response:Ljavax/sip/message/Response;
    invoke-interface {v1}, Ljavax/sip/message/Response;->getStatusCode()I

    move-result v2

    .line 1362
    .local v2, statusCode:I
    const-string v5, "CANCEL"

    #calls: Lcom/baidu/server/sip/SipSessionGroup;->expectResponse(Ljava/lang/String;Ljava/util/EventObject;)Z
    invoke-static {v5, p1}, Lcom/baidu/server/sip/SipSessionGroup;->access$2300(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1363
    const/16 v5, 0xc8

    if-ne v2, v5, :cond_1

    .line 1391
    .end local v0           #event:Ljavax/sip/ResponseEvent;
    .end local v1           #response:Ljavax/sip/message/Response;
    .end local v2           #statusCode:I
    :goto_0
    return v3

    .line 1367
    .restart local v0       #event:Ljavax/sip/ResponseEvent;
    .restart local v1       #response:Ljavax/sip/message/Response;
    .restart local v2       #statusCode:I
    :cond_0
    const-string v5, "INVITE"

    #calls: Lcom/baidu/server/sip/SipSessionGroup;->expectResponse(Ljava/lang/String;Ljava/util/EventObject;)Z
    invoke-static {v5, p1}, Lcom/baidu/server/sip/SipSessionGroup;->access$2300(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1368
    sparse-switch v2, :sswitch_data_0

    .line 1380
    :cond_1
    const/16 v5, 0x190

    if-lt v2, v5, :cond_4

    .line 1381
    invoke-direct {p0, v1}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->onError(Ljavax/sip/message/Response;)V

    goto :goto_0

    .line 1370
    :sswitch_0
    invoke-direct {p0, p1}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->outgoingCall(Ljava/util/EventObject;)Z

    goto :goto_0

    .line 1373
    :sswitch_1
    invoke-direct {p0}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->endCallNormally()V

    goto :goto_0

    :cond_2
    move v3, v4

    .line 1377
    goto :goto_0

    .line 1384
    .end local v0           #event:Ljavax/sip/ResponseEvent;
    .end local v1           #response:Ljavax/sip/message/Response;
    .end local v2           #statusCode:I
    :cond_3
    instance-of v3, p1, Ljavax/sip/TransactionTerminatedEvent;

    if-eqz v3, :cond_4

    .line 1389
    new-instance v3, Ljavax/sip/SipException;

    const-string/jumbo v5, "timed out"

    invoke-direct {v3, v5}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->onError(Ljava/lang/Throwable;)V

    :cond_4
    move v3, v4

    .line 1391
    goto :goto_0

    .line 1368
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x1e7 -> :sswitch_1
    .end sparse-switch
.end method

.method private processCommand(Ljava/util/EventObject;)V
    .locals 3
    .parameter "command"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 867
    #calls: Lcom/baidu/server/sip/SipSessionGroup;->isLoggable(Ljava/util/EventObject;)Z
    invoke-static {p1}, Lcom/baidu/server/sip/SipSessionGroup;->access$2100(Ljava/util/EventObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.baidu.server.sip"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "process cmd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    :cond_0
    invoke-virtual {p0, p1}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->process(Ljava/util/EventObject;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 869
    const/16 v0, -0x9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot initiate a new transaction to execute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->onError(ILjava/lang/String;)V

    .line 873
    :cond_1
    return-void
.end method

.method private processDialogTerminated(Ljavax/sip/DialogTerminatedEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 976
    const-string v0, "com.baidu.server.sip"

    const-string v1, "<====> SipSessionImpl::processDialogTerminated()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    invoke-virtual {p1}, Ljavax/sip/DialogTerminatedEvent;->getDialog()Ljavax/sip/Dialog;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 978
    new-instance v0, Ljavax/sip/SipException;

    const-string v1, "dialog terminated"

    invoke-direct {v0, v1}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->onError(Ljava/lang/Throwable;)V

    .line 983
    :goto_0
    return-void

    .line 980
    :cond_0
    const-string v0, "com.baidu.server.sip"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "not the current dialog; current="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", terminated="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljavax/sip/DialogTerminatedEvent;->getDialog()Ljavax/sip/Dialog;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private processExceptions(Ljava/util/EventObject;)Z
    .locals 4
    .parameter "evt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    const/16 v3, 0xc8

    const/4 v1, 0x1

    .line 945
    const-string v0, "com.baidu.server.sip"

    const-string v2, "<====> SipSessionImpl::processExceptions()"

    invoke-static {v0, v2}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    const-string v0, "BYE"

    #calls: Lcom/baidu/server/sip/SipSessionGroup;->isRequestEvent(Ljava/lang/String;Ljava/util/EventObject;)Z
    invoke-static {v0, p1}, Lcom/baidu/server/sip/SipSessionGroup;->access$800(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 948
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/baidu/server/sip/SipSessionGroup;

    #getter for: Lcom/baidu/server/sip/SipSessionGroup;->mSipHelper:Lcom/baidu/server/sip/SipHelper;
    invoke-static {v0}, Lcom/baidu/server/sip/SipSessionGroup;->access$300(Lcom/baidu/server/sip/SipSessionGroup;)Lcom/baidu/server/sip/SipHelper;

    move-result-object v0

    check-cast p1, Ljavax/sip/RequestEvent;

    .end local p1
    invoke-virtual {v0, p1, v3}, Lcom/baidu/server/sip/SipHelper;->sendResponse(Ljavax/sip/RequestEvent;I)V

    .line 949
    invoke-direct {p0}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->endCallNormally()V

    move v0, v1

    .line 972
    :goto_0
    return v0

    .line 951
    .restart local p1
    :cond_0
    const-string v0, "CANCEL"

    #calls: Lcom/baidu/server/sip/SipSessionGroup;->isRequestEvent(Ljava/lang/String;Ljava/util/EventObject;)Z
    invoke-static {v0, p1}, Lcom/baidu/server/sip/SipSessionGroup;->access$800(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 952
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/baidu/server/sip/SipSessionGroup;

    #getter for: Lcom/baidu/server/sip/SipSessionGroup;->mSipHelper:Lcom/baidu/server/sip/SipHelper;
    invoke-static {v0}, Lcom/baidu/server/sip/SipSessionGroup;->access$300(Lcom/baidu/server/sip/SipSessionGroup;)Lcom/baidu/server/sip/SipHelper;

    move-result-object v0

    check-cast p1, Ljavax/sip/RequestEvent;

    .end local p1
    const/16 v2, 0x1e1

    invoke-virtual {v0, p1, v2}, Lcom/baidu/server/sip/SipHelper;->sendResponse(Ljavax/sip/RequestEvent;I)V

    move v0, v1

    .line 954
    goto :goto_0

    .line 955
    .restart local p1
    :cond_1
    instance-of v0, p1, Ljavax/sip/TransactionTerminatedEvent;

    if-eqz v0, :cond_3

    move-object v0, p1

    .line 956
    check-cast v0, Ljavax/sip/TransactionTerminatedEvent;

    invoke-direct {p0, v0}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->isCurrentTransaction(Ljavax/sip/TransactionTerminatedEvent;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 957
    instance-of v0, p1, Ljavax/sip/TimeoutEvent;

    if-eqz v0, :cond_2

    .line 958
    check-cast p1, Ljavax/sip/TimeoutEvent;

    .end local p1
    invoke-direct {p0, p1}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->processTimeout(Ljavax/sip/TimeoutEvent;)V

    :goto_1
    move v0, v1

    .line 963
    goto :goto_0

    .line 960
    .restart local p1
    :cond_2
    check-cast p1, Ljavax/sip/TransactionTerminatedEvent;

    .end local p1
    invoke-direct {p0, p1}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->processTransactionTerminated(Ljavax/sip/TransactionTerminatedEvent;)V

    goto :goto_1

    .line 965
    .restart local p1
    :cond_3
    const-string v0, "OPTIONS"

    #calls: Lcom/baidu/server/sip/SipSessionGroup;->isRequestEvent(Ljava/lang/String;Ljava/util/EventObject;)Z
    invoke-static {v0, p1}, Lcom/baidu/server/sip/SipSessionGroup;->access$800(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 966
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/baidu/server/sip/SipSessionGroup;

    #getter for: Lcom/baidu/server/sip/SipSessionGroup;->mSipHelper:Lcom/baidu/server/sip/SipHelper;
    invoke-static {v0}, Lcom/baidu/server/sip/SipSessionGroup;->access$300(Lcom/baidu/server/sip/SipSessionGroup;)Lcom/baidu/server/sip/SipHelper;

    move-result-object v0

    check-cast p1, Ljavax/sip/RequestEvent;

    .end local p1
    invoke-virtual {v0, p1, v3}, Lcom/baidu/server/sip/SipHelper;->sendResponse(Ljavax/sip/RequestEvent;I)V

    move v0, v1

    .line 967
    goto :goto_0

    .line 968
    .restart local p1
    :cond_4
    instance-of v0, p1, Ljavax/sip/DialogTerminatedEvent;

    if-eqz v0, :cond_5

    .line 969
    check-cast p1, Ljavax/sip/DialogTerminatedEvent;

    .end local p1
    invoke-direct {p0, p1}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->processDialogTerminated(Ljavax/sip/DialogTerminatedEvent;)V

    move v0, v1

    .line 970
    goto :goto_0

    .line 972
    .restart local p1
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private processReferRequest(Ljavax/sip/RequestEvent;)Z
    .locals 11
    .parameter "event"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1396
    const-string v8, "com.baidu.server.sip"

    const-string v9, "<====> SipSessionImpl::processReferRequest()"

    invoke-static {v8, v9}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1398
    :try_start_0
    invoke-virtual {p1}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v8

    const-string v9, "Refer-To"

    invoke-interface {v8, v9}, Ljavax/sip/message/Request;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v3

    check-cast v3, Ljavax/sip/header/ReferToHeader;

    .line 1400
    .local v3, referto:Ljavax/sip/header/ReferToHeader;
    invoke-interface {v3}, Ljavax/sip/header/ReferToHeader;->getAddress()Ljavax/sip/address/Address;

    move-result-object v0

    .line 1401
    .local v0, address:Ljavax/sip/address/Address;
    invoke-interface {v0}, Ljavax/sip/address/Address;->getURI()Ljavax/sip/address/URI;

    move-result-object v5

    check-cast v5, Ljavax/sip/address/SipURI;

    .line 1402
    .local v5, uri:Ljavax/sip/address/SipURI;
    const-string v8, "Replaces"

    invoke-interface {v5, v8}, Ljavax/sip/address/SipURI;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1403
    .local v4, replacesHeader:Ljava/lang/String;
    invoke-interface {v5}, Ljavax/sip/address/SipURI;->getUser()Ljava/lang/String;

    move-result-object v6

    .line 1404
    .local v6, username:Ljava/lang/String;
    if-nez v6, :cond_0

    .line 1405
    iget-object v8, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/baidu/server/sip/SipSessionGroup;

    #getter for: Lcom/baidu/server/sip/SipSessionGroup;->mSipHelper:Lcom/baidu/server/sip/SipHelper;
    invoke-static {v8}, Lcom/baidu/server/sip/SipSessionGroup;->access$300(Lcom/baidu/server/sip/SipSessionGroup;)Lcom/baidu/server/sip/SipHelper;

    move-result-object v8

    const/16 v9, 0x190

    invoke-virtual {v8, p1, v9}, Lcom/baidu/server/sip/SipHelper;->sendResponse(Ljavax/sip/RequestEvent;I)V

    .line 1421
    :goto_0
    return v7

    .line 1409
    :cond_0
    iget-object v7, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/baidu/server/sip/SipSessionGroup;

    #getter for: Lcom/baidu/server/sip/SipSessionGroup;->mSipHelper:Lcom/baidu/server/sip/SipHelper;
    invoke-static {v7}, Lcom/baidu/server/sip/SipSessionGroup;->access$300(Lcom/baidu/server/sip/SipSessionGroup;)Lcom/baidu/server/sip/SipHelper;

    move-result-object v7

    const/16 v8, 0xca

    invoke-virtual {v7, p1, v8}, Lcom/baidu/server/sip/SipHelper;->sendResponse(Ljavax/sip/RequestEvent;I)V

    .line 1410
    iget-object v7, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/baidu/server/sip/SipSessionGroup;

    iget-object v8, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/baidu/server/sip/SipSessionListenerProxy;

    invoke-virtual {v8}, Lcom/baidu/server/sip/SipSessionListenerProxy;->getListener()Lbaidu/net/sip/ISipSessionListener;

    move-result-object v8

    iget-object v9, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/baidu/server/sip/SipSessionGroup;

    #getter for: Lcom/baidu/server/sip/SipSessionGroup;->mSipHelper:Lcom/baidu/server/sip/SipHelper;
    invoke-static {v9}, Lcom/baidu/server/sip/SipSessionGroup;->access$300(Lcom/baidu/server/sip/SipSessionGroup;)Lcom/baidu/server/sip/SipHelper;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/baidu/server/sip/SipHelper;->getServerTransaction(Ljavax/sip/RequestEvent;)Ljavax/sip/ServerTransaction;

    move-result-object v9

    const/4 v10, 0x0

    #calls: Lcom/baidu/server/sip/SipSessionGroup;->createNewSession(Ljavax/sip/RequestEvent;Lbaidu/net/sip/ISipSessionListener;Ljavax/sip/ServerTransaction;I)Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;
    invoke-static {v7, p1, v8, v9, v10}, Lcom/baidu/server/sip/SipSessionGroup;->access$400(Lcom/baidu/server/sip/SipSessionGroup;Ljavax/sip/RequestEvent;Lbaidu/net/sip/ISipSessionListener;Ljavax/sip/ServerTransaction;I)Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    move-result-object v2

    .line 1414
    .local v2, newSession:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;
    iput-object p0, v2, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mReferSession:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    .line 1415
    invoke-virtual {p1}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v7

    const-string v8, "Referred-By"

    invoke-interface {v7, v8}, Ljavax/sip/message/Request;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v7

    check-cast v7, Lgov/nist/javax/sip/header/extensions/ReferredByHeader;

    iput-object v7, v2, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mReferredBy:Lgov/nist/javax/sip/header/extensions/ReferredByHeader;

    .line 1417
    iput-object v4, v2, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mReplaces:Ljava/lang/String;

    .line 1418
    #calls: Lcom/baidu/server/sip/SipSessionGroup;->createPeerProfile(Ljavax/sip/header/HeaderAddress;)Lbaidu/net/sip/SipProfile;
    invoke-static {v3}, Lcom/baidu/server/sip/SipSessionGroup;->access$2800(Ljavax/sip/header/HeaderAddress;)Lbaidu/net/sip/SipProfile;

    move-result-object v7

    iput-object v7, v2, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mPeerProfile:Lbaidu/net/sip/SipProfile;

    .line 1419
    iget-object v7, v2, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/baidu/server/sip/SipSessionListenerProxy;

    const/4 v8, 0x0

    invoke-virtual {v7, v2, v8}, Lcom/baidu/server/sip/SipSessionListenerProxy;->onCallTransferring(Lbaidu/net/sip/ISipSession;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1421
    const/4 v7, 0x1

    goto :goto_0

    .line 1422
    .end local v0           #address:Ljavax/sip/address/Address;
    .end local v2           #newSession:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;
    .end local v3           #referto:Ljavax/sip/header/ReferToHeader;
    .end local v4           #replacesHeader:Ljava/lang/String;
    .end local v5           #uri:Ljavax/sip/address/SipURI;
    .end local v6           #username:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1423
    .local v1, e:Ljava/lang/IllegalArgumentException;
    new-instance v7, Ljavax/sip/SipException;

    const-string v8, "createPeerProfile()"

    invoke-direct {v7, v8, v1}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
.end method

.method private processTimeout(Ljavax/sip/TimeoutEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 1032
    const-string v0, "com.baidu.server.sip"

    const-string/jumbo v1, "processing Timeout..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    iget v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 1047
    :pswitch_0
    const-string v0, "com.baidu.server.sip"

    const-string v1, "   do nothing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    :goto_0
    return-void

    .line 1036
    :pswitch_1
    invoke-direct {p0}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->reset()V

    .line 1037
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/baidu/server/sip/SipSessionListenerProxy;

    invoke-virtual {v0, p0}, Lcom/baidu/server/sip/SipSessionListenerProxy;->onRegistrationTimeout(Lbaidu/net/sip/ISipSession;)V

    goto :goto_0

    .line 1043
    :pswitch_2
    const/4 v0, -0x5

    invoke-virtual {p1}, Ljavax/sip/TimeoutEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->onError(ILjava/lang/String;)V

    goto :goto_0

    .line 1033
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private processTransactionTerminated(Ljavax/sip/TransactionTerminatedEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 1018
    const-string v0, "com.baidu.server.sip"

    const-string v1, "<====> SipSessionImpl::processTransactionTerminated()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1019
    iget v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    sparse-switch v0, :sswitch_data_0

    .line 1025
    const-string v0, "com.baidu.server.sip"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transaction terminated early: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    const/4 v0, -0x3

    const-string/jumbo v1, "transaction terminated"

    invoke-direct {p0, v0, v1}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->onError(ILjava/lang/String;)V

    .line 1029
    :goto_0
    return-void

    .line 1022
    :sswitch_0
    const-string v0, "com.baidu.server.sip"

    const-string v1, "Transaction terminated; do nothing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1019
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method private readyForCall(Ljava/util/EventObject;)Z
    .locals 10
    .parameter "evt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v9, 0x1

    .line 1190
    const-string v1, "com.baidu.server.sip"

    const-string v2, "<====> SipSessionImpl::readyForCall()"

    invoke-static {v1, v2}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1192
    instance-of v1, p1, Lcom/baidu/server/sip/SipSessionGroup$MakeCallCommand;

    if-eqz v1, :cond_2

    .line 1193
    const/4 v0, 0x5

    iput v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    move-object v7, p1

    .line 1194
    check-cast v7, Lcom/baidu/server/sip/SipSessionGroup$MakeCallCommand;

    .line 1195
    .local v7, cmd:Lcom/baidu/server/sip/SipSessionGroup$MakeCallCommand;
    invoke-virtual {v7}, Lcom/baidu/server/sip/SipSessionGroup$MakeCallCommand;->getPeerProfile()Lbaidu/net/sip/SipProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mPeerProfile:Lbaidu/net/sip/SipProfile;

    .line 1196
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mReferSession:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    if-eqz v0, :cond_0

    .line 1197
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/baidu/server/sip/SipSessionGroup;

    #getter for: Lcom/baidu/server/sip/SipSessionGroup;->mSipHelper:Lcom/baidu/server/sip/SipHelper;
    invoke-static {v0}, Lcom/baidu/server/sip/SipSessionGroup;->access$300(Lcom/baidu/server/sip/SipSessionGroup;)Lcom/baidu/server/sip/SipHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mReferSession:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v1, v1, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    const/16 v2, 0x64

    invoke-direct {p0, v2}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->getResponseString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/baidu/server/sip/SipHelper;->sendReferNotify(Ljavax/sip/Dialog;Ljava/lang/String;)V

    .line 1200
    :cond_0
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/baidu/server/sip/SipSessionGroup;

    #getter for: Lcom/baidu/server/sip/SipSessionGroup;->mSipHelper:Lcom/baidu/server/sip/SipHelper;
    invoke-static {v0}, Lcom/baidu/server/sip/SipSessionGroup;->access$300(Lcom/baidu/server/sip/SipSessionGroup;)Lcom/baidu/server/sip/SipHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/baidu/server/sip/SipSessionGroup;

    #getter for: Lcom/baidu/server/sip/SipSessionGroup;->mLocalProfile:Lbaidu/net/sip/SipProfile;
    invoke-static {v1}, Lcom/baidu/server/sip/SipSessionGroup;->access$1500(Lcom/baidu/server/sip/SipSessionGroup;)Lbaidu/net/sip/SipProfile;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mPeerProfile:Lbaidu/net/sip/SipProfile;

    invoke-virtual {v7}, Lcom/baidu/server/sip/SipSessionGroup$MakeCallCommand;->getSessionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->generateTag()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mReferredBy:Lgov/nist/javax/sip/header/extensions/ReferredByHeader;

    iget-object v6, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mReplaces:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/baidu/server/sip/SipHelper;->sendInvite(Lbaidu/net/sip/SipProfile;Lbaidu/net/sip/SipProfile;Ljava/lang/String;Ljava/lang/String;Lgov/nist/javax/sip/header/extensions/ReferredByHeader;Ljava/lang/String;)Ljavax/sip/ClientTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    .line 1203
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    invoke-interface {v0}, Ljavax/sip/ClientTransaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    .line 1204
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/baidu/server/sip/SipSessionGroup;

    #calls: Lcom/baidu/server/sip/SipSessionGroup;->addSipSession(Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;)V
    invoke-static {v0, p0}, Lcom/baidu/server/sip/SipSessionGroup;->access$500(Lcom/baidu/server/sip/SipSessionGroup;Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;)V

    .line 1205
    invoke-virtual {v7}, Lcom/baidu/server/sip/SipSessionGroup$MakeCallCommand;->getTimeout()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->startSessionTimer(I)V

    .line 1206
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/baidu/server/sip/SipSessionListenerProxy;

    invoke-virtual {v0, p0}, Lcom/baidu/server/sip/SipSessionListenerProxy;->onCalling(Lbaidu/net/sip/ISipSession;)V

    move v0, v9

    .line 1226
    .end local v7           #cmd:Lcom/baidu/server/sip/SipSessionGroup$MakeCallCommand;
    .end local p1
    :cond_1
    :goto_0
    return v0

    .line 1208
    .restart local p1
    :cond_2
    instance-of v1, p1, Lcom/baidu/server/sip/SipSessionGroup$RegisterCommand;

    if-eqz v1, :cond_3

    .line 1209
    iput v9, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    .line 1210
    check-cast p1, Lcom/baidu/server/sip/SipSessionGroup$RegisterCommand;

    .end local p1
    invoke-virtual {p1}, Lcom/baidu/server/sip/SipSessionGroup$RegisterCommand;->getDuration()I

    move-result v8

    .line 1211
    .local v8, duration:I
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/baidu/server/sip/SipSessionGroup;

    #getter for: Lcom/baidu/server/sip/SipSessionGroup;->mSipHelper:Lcom/baidu/server/sip/SipHelper;
    invoke-static {v0}, Lcom/baidu/server/sip/SipSessionGroup;->access$300(Lcom/baidu/server/sip/SipSessionGroup;)Lcom/baidu/server/sip/SipHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/baidu/server/sip/SipSessionGroup;

    #getter for: Lcom/baidu/server/sip/SipSessionGroup;->mLocalProfile:Lbaidu/net/sip/SipProfile;
    invoke-static {v1}, Lcom/baidu/server/sip/SipSessionGroup;->access$1500(Lcom/baidu/server/sip/SipSessionGroup;)Lbaidu/net/sip/SipProfile;

    move-result-object v1

    invoke-virtual {p0}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->generateTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v8}, Lcom/baidu/server/sip/SipHelper;->sendRegister(Lbaidu/net/sip/SipProfile;Ljava/lang/String;I)Ljavax/sip/ClientTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    .line 1213
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    invoke-interface {v0}, Ljavax/sip/ClientTransaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    .line 1214
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/baidu/server/sip/SipSessionGroup;

    #calls: Lcom/baidu/server/sip/SipSessionGroup;->addSipSession(Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;)V
    invoke-static {v0, p0}, Lcom/baidu/server/sip/SipSessionGroup;->access$500(Lcom/baidu/server/sip/SipSessionGroup;Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;)V

    .line 1215
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/baidu/server/sip/SipSessionListenerProxy;

    invoke-virtual {v0, p0}, Lcom/baidu/server/sip/SipSessionListenerProxy;->onRegistering(Lbaidu/net/sip/ISipSession;)V

    move v0, v9

    .line 1216
    goto :goto_0

    .line 1217
    .end local v8           #duration:I
    .restart local p1
    :cond_3
    invoke-static {}, Lcom/baidu/server/sip/SipSessionGroup;->access$2000()Ljava/util/EventObject;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 1218
    const/4 v1, 0x2

    iput v1, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    .line 1219
    iget-object v1, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/baidu/server/sip/SipSessionGroup;

    #getter for: Lcom/baidu/server/sip/SipSessionGroup;->mSipHelper:Lcom/baidu/server/sip/SipHelper;
    invoke-static {v1}, Lcom/baidu/server/sip/SipSessionGroup;->access$300(Lcom/baidu/server/sip/SipSessionGroup;)Lcom/baidu/server/sip/SipHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/baidu/server/sip/SipSessionGroup;

    #getter for: Lcom/baidu/server/sip/SipSessionGroup;->mLocalProfile:Lbaidu/net/sip/SipProfile;
    invoke-static {v2}, Lcom/baidu/server/sip/SipSessionGroup;->access$1500(Lcom/baidu/server/sip/SipSessionGroup;)Lbaidu/net/sip/SipProfile;

    move-result-object v2

    invoke-virtual {p0}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->generateTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/baidu/server/sip/SipHelper;->sendRegister(Lbaidu/net/sip/SipProfile;Ljava/lang/String;I)Ljavax/sip/ClientTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    .line 1221
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    invoke-interface {v0}, Ljavax/sip/ClientTransaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    .line 1222
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/baidu/server/sip/SipSessionGroup;

    #calls: Lcom/baidu/server/sip/SipSessionGroup;->addSipSession(Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;)V
    invoke-static {v0, p0}, Lcom/baidu/server/sip/SipSessionGroup;->access$500(Lcom/baidu/server/sip/SipSessionGroup;Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;)V

    .line 1223
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/baidu/server/sip/SipSessionListenerProxy;

    invoke-virtual {v0, p0}, Lcom/baidu/server/sip/SipSessionListenerProxy;->onRegistering(Lbaidu/net/sip/ISipSession;)V

    move v0, v9

    .line 1224
    goto :goto_0
.end method

.method private registeringToReady(Ljava/util/EventObject;)Z
    .locals 7
    .parameter "evt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 1077
    const-string v4, "com.baidu.server.sip"

    const-string v6, "<====> SipSessionImpl::registeringToReady()"

    invoke-static {v4, v6}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1078
    const-string v4, "REGISTER"

    #calls: Lcom/baidu/server/sip/SipSessionGroup;->expectResponse(Ljava/lang/String;Ljava/util/EventObject;)Z
    invoke-static {v4, p1}, Lcom/baidu/server/sip/SipSessionGroup;->access$2300(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v0, p1

    .line 1079
    check-cast v0, Ljavax/sip/ResponseEvent;

    .line 1080
    .local v0, event:Ljavax/sip/ResponseEvent;
    invoke-virtual {v0}, Ljavax/sip/ResponseEvent;->getResponse()Ljavax/sip/message/Response;

    move-result-object v1

    .line 1082
    .local v1, response:Ljavax/sip/message/Response;
    invoke-interface {v1}, Ljavax/sip/message/Response;->getStatusCode()I

    move-result v3

    .line 1083
    .local v3, statusCode:I
    sparse-switch v3, :sswitch_data_0

    .line 1095
    const/16 v4, 0x1f4

    if-lt v3, v4, :cond_1

    .line 1096
    invoke-direct {p0, v1}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->onRegistrationFailed(Ljavax/sip/message/Response;)V

    move v4, v5

    .line 1101
    .end local v0           #event:Ljavax/sip/ResponseEvent;
    .end local v1           #response:Ljavax/sip/message/Response;
    .end local v3           #statusCode:I
    .end local p1
    :goto_0
    return v4

    .line 1085
    .restart local v0       #event:Ljavax/sip/ResponseEvent;
    .restart local v1       #response:Ljavax/sip/message/Response;
    .restart local v3       #statusCode:I
    .restart local p1
    :sswitch_0
    iget v2, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    .line 1086
    .local v2, state:I
    if-ne v2, v5, :cond_0

    check-cast p1, Ljavax/sip/ResponseEvent;

    .end local p1
    invoke-virtual {p1}, Ljavax/sip/ResponseEvent;->getResponse()Ljavax/sip/message/Response;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->getExpiryTime(Ljavax/sip/message/Response;)I

    move-result v4

    :goto_1
    invoke-direct {p0, v4}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->onRegistrationDone(I)V

    move v4, v5

    .line 1089
    goto :goto_0

    .line 1086
    .restart local p1
    :cond_0
    const/4 v4, -0x1

    goto :goto_1

    .line 1092
    .end local v2           #state:I
    :sswitch_1
    invoke-direct {p0, v0}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->handleAuthentication(Ljavax/sip/ResponseEvent;)Z

    move v4, v5

    .line 1093
    goto :goto_0

    .line 1101
    .end local v0           #event:Ljavax/sip/ResponseEvent;
    .end local v1           #response:Ljavax/sip/message/Response;
    .end local v3           #statusCode:I
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 1083
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x191 -> :sswitch_1
        0x197 -> :sswitch_1
    .end sparse-switch
.end method

.method private reset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 685
    const-string v0, "com.baidu.server.sip"

    const-string v1, "<====> SipSessionImpl::reset()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    iput-boolean v3, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mInCall:Z

    .line 687
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/baidu/server/sip/SipSessionGroup;

    #calls: Lcom/baidu/server/sip/SipSessionGroup;->removeSipSession(Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;)V
    invoke-static {v0, p0}, Lcom/baidu/server/sip/SipSessionGroup;->access$1300(Lcom/baidu/server/sip/SipSessionGroup;Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;)V

    .line 688
    iput-object v2, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mPeerProfile:Lbaidu/net/sip/SipProfile;

    .line 689
    iput v3, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    .line 690
    iput-object v2, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mInviteReceived:Ljavax/sip/RequestEvent;

    .line 691
    iput-object v2, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mPeerSessionDescription:Ljava/lang/String;

    .line 692
    iput v3, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mAuthenticationRetryCount:I

    .line 693
    iput-object v2, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mReferSession:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    .line 694
    iput-object v2, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mReferredBy:Lgov/nist/javax/sip/header/extensions/ReferredByHeader;

    .line 695
    iput-object v2, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mReplaces:Ljava/lang/String;

    .line 697
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    invoke-interface {v0}, Ljavax/sip/Dialog;->delete()V

    .line 698
    :cond_0
    iput-object v2, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    .line 701
    :try_start_0
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mServerTransaction:Ljavax/sip/ServerTransaction;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mServerTransaction:Ljavax/sip/ServerTransaction;

    invoke-interface {v0}, Ljavax/sip/ServerTransaction;->terminate()V
    :try_end_0
    .catch Ljavax/sip/ObjectInUseException; {:try_start_0 .. :try_end_0} :catch_1

    .line 705
    :cond_1
    :goto_0
    iput-object v2, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mServerTransaction:Ljavax/sip/ServerTransaction;

    .line 708
    :try_start_1
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    invoke-interface {v0}, Ljavax/sip/ClientTransaction;->terminate()V
    :try_end_1
    .catch Ljavax/sip/ObjectInUseException; {:try_start_1 .. :try_end_1} :catch_0

    .line 712
    :cond_2
    :goto_1
    iput-object v2, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    .line 714
    invoke-direct {p0}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->cancelSessionTimer()V

    .line 716
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mKeepAliveSession:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    if-eqz v0, :cond_3

    .line 717
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mKeepAliveSession:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v0}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->stopKeepAliveProcess()V

    .line 718
    iput-object v2, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mKeepAliveSession:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    .line 720
    :cond_3
    return-void

    .line 709
    :catch_0
    move-exception v0

    goto :goto_1

    .line 702
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private startSessionTimer(I)V
    .locals 2
    .parameter "timeout"

    .prologue
    .line 1505
    const-string v0, "com.baidu.server.sip"

    const-string v1, "<====> SipSessionImpl::startSessionTimer()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1506
    if-lez p1, :cond_0

    .line 1507
    new-instance v0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;

    invoke-direct {v0, p0}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;-><init>(Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;)V

    iput-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mSessionTimer:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;

    .line 1508
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mSessionTimer:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;

    invoke-virtual {v0, p1}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;->start(I)V

    .line 1510
    :cond_0
    return-void
.end method

.method private syncNotify()V
    .locals 2

    .prologue
    .line 857
    iget-object v1, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mSyncKey:Ljava/lang/Object;

    monitor-enter v1

    .line 858
    :try_start_0
    iget-boolean v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mReinviteInprocess:Z

    if-eqz v0, :cond_0

    .line 859
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mReinviteInprocess:Z

    .line 860
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mSyncKey:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 862
    :cond_0
    monitor-exit v1

    .line 863
    return-void

    .line 862
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private syncWait()V
    .locals 2

    .prologue
    .line 846
    iget-object v1, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mSyncKey:Ljava/lang/Object;

    monitor-enter v1

    .line 847
    :try_start_0
    iget-boolean v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mReinviteInprocess:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 849
    :try_start_1
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mSyncKey:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 853
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1

    .line 854
    return-void

    .line 853
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 850
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private toString(Ljavax/sip/Transaction;)Ljava/lang/String;
    .locals 8
    .parameter "transaction"

    .prologue
    .line 1007
    if-nez p1, :cond_0

    const-string/jumbo v3, "null"

    .line 1011
    :goto_0
    return-object v3

    .line 1008
    :cond_0
    invoke-interface {p1}, Ljavax/sip/Transaction;->getRequest()Ljavax/sip/message/Request;

    move-result-object v2

    .line 1009
    .local v2, request:Ljavax/sip/message/Request;
    invoke-interface {p1}, Ljavax/sip/Transaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v1

    .line 1010
    .local v1, dialog:Ljavax/sip/Dialog;
    const-string v3, "CSeq"

    invoke-interface {v2, v3}, Ljavax/sip/message/Request;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v0

    check-cast v0, Ljavax/sip/header/CSeqHeader;

    .line 1011
    .local v0, cseq:Ljavax/sip/header/CSeqHeader;
    const-string/jumbo v4, "req=%s,%s,s=%s,ds=%s,"

    const/4 v3, 0x4

    new-array v5, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {v2}, Ljavax/sip/message/Request;->getMethod()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    const/4 v3, 0x1

    invoke-interface {v0}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v3

    const/4 v3, 0x2

    invoke-interface {p1}, Ljavax/sip/Transaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v6

    aput-object v6, v5, v3

    const/4 v6, 0x3

    if-nez v1, :cond_1

    const-string v3, "-"

    :goto_1
    aput-object v3, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljavax/sip/Dialog;->getState()Ljavax/sip/DialogState;

    move-result-object v3

    goto :goto_1
.end method


# virtual methods
.method public answerCall(Ljava/lang/String;I)V
    .locals 4
    .parameter "sessionDescription"
    .parameter "timeout"

    .prologue
    .line 783
    iget-object v1, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/baidu/server/sip/SipSessionGroup;

    monitor-enter v1

    .line 784
    :try_start_0
    const-string v0, "com.baidu.server.sip"

    const-string v2, "<====> SipSessionImpl::answerCall()"

    invoke-static {v0, v2}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mPeerProfile:Lbaidu/net/sip/SipProfile;

    if-nez v0, :cond_0

    monitor-exit v1

    .line 789
    :goto_0
    return-void

    .line 786
    :cond_0
    new-instance v0, Lcom/baidu/server/sip/SipSessionGroup$MakeCallCommand;

    iget-object v2, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/baidu/server/sip/SipSessionGroup;

    iget-object v3, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mPeerProfile:Lbaidu/net/sip/SipProfile;

    invoke-direct {v0, v2, v3, p1, p2}, Lcom/baidu/server/sip/SipSessionGroup$MakeCallCommand;-><init>(Lcom/baidu/server/sip/SipSessionGroup;Lbaidu/net/sip/SipProfile;Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->doCommandAsync(Ljava/util/EventObject;)V

    .line 788
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public changeCall(Ljava/lang/String;I)V
    .locals 4
    .parameter "sessionDescription"
    .parameter "timeout"

    .prologue
    .line 797
    iget-object v2, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/baidu/server/sip/SipSessionGroup;

    monitor-enter v2

    .line 798
    :try_start_0
    const-string v1, "com.baidu.server.sip"

    const-string v3, "<====> SipSessionImpl::changeCall()"

    invoke-static {v1, v3}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    iget-object v1, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mPeerProfile:Lbaidu/net/sip/SipProfile;

    if-nez v1, :cond_0

    monitor-exit v2

    .line 825
    :goto_0
    return-void

    .line 802
    :cond_0
    iget-object v1, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mCommands:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 804
    iget-object v1, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mCommands:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 805
    monitor-exit v2

    goto :goto_0

    .line 824
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 808
    :cond_1
    :try_start_1
    new-instance v0, Lcom/baidu/server/sip/SipSessionGroup$MakeCallCommand;

    iget-object v1, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/baidu/server/sip/SipSessionGroup;

    iget-object v3, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mPeerProfile:Lbaidu/net/sip/SipProfile;

    invoke-direct {v0, v1, v3, p1, p2}, Lcom/baidu/server/sip/SipSessionGroup$MakeCallCommand;-><init>(Lcom/baidu/server/sip/SipSessionGroup;Lbaidu/net/sip/SipProfile;Ljava/lang/String;I)V

    .line 809
    .local v0, command:Ljava/util/EventObject;
    iget-object v1, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mCommands:Ljava/util/concurrent/BlockingQueue;

    new-instance v3, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$3;

    invoke-direct {v3, p0, v0}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$3;-><init>(Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;Ljava/util/EventObject;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 824
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method duplicate()Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;
    .locals 3

    .prologue
    .line 681
    new-instance v0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v1, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/baidu/server/sip/SipSessionGroup;

    iget-object v2, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/baidu/server/sip/SipSessionListenerProxy;

    invoke-virtual {v2}, Lcom/baidu/server/sip/SipSessionListenerProxy;->getListener()Lbaidu/net/sip/ISipSessionListener;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;-><init>(Lcom/baidu/server/sip/SipSessionGroup;Lbaidu/net/sip/ISipSessionListener;)V

    return-object v0
.end method

.method public endCall()V
    .locals 2

    .prologue
    .line 792
    const-string v0, "com.baidu.server.sip"

    const-string v1, "<====> SipSessionImpl::endCall()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    invoke-static {}, Lcom/baidu/server/sip/SipSessionGroup;->access$1800()Ljava/util/EventObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->doCommandAsync(Ljava/util/EventObject;)V

    .line 794
    return-void
.end method

.method protected generateTag()Ljava/lang/String;
    .locals 4

    .prologue
    .line 877
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x41f0

    mul-double/2addr v0, v2

    double-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCallId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 739
    invoke-direct {p0}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->getTransaction()Ljavax/sip/Transaction;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/server/sip/SipHelper;->getCallId(Ljavax/sip/Transaction;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 727
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/baidu/server/sip/SipSessionGroup;

    #getter for: Lcom/baidu/server/sip/SipSessionGroup;->mLocalIp:Ljava/lang/String;
    invoke-static {v0}, Lcom/baidu/server/sip/SipSessionGroup;->access$1400(Lcom/baidu/server/sip/SipSessionGroup;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalProfile()Lbaidu/net/sip/SipProfile;
    .locals 1

    .prologue
    .line 731
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/baidu/server/sip/SipSessionGroup;

    #getter for: Lcom/baidu/server/sip/SipSessionGroup;->mLocalProfile:Lbaidu/net/sip/SipProfile;
    invoke-static {v0}, Lcom/baidu/server/sip/SipSessionGroup;->access$1500(Lcom/baidu/server/sip/SipSessionGroup;)Lbaidu/net/sip/SipProfile;

    move-result-object v0

    return-object v0
.end method

.method public getPeerProfile()Lbaidu/net/sip/SipProfile;
    .locals 1

    .prologue
    .line 735
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mPeerProfile:Lbaidu/net/sip/SipProfile;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 749
    iget v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    return v0
.end method

.method public isInCall()Z
    .locals 1

    .prologue
    .line 723
    iget-boolean v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mInCall:Z

    return v0
.end method

.method public makeCall(Lbaidu/net/sip/SipProfile;Ljava/lang/String;I)V
    .locals 2
    .parameter "peerProfile"
    .parameter "sessionDescription"
    .parameter "timeout"

    .prologue
    .line 777
    const-string v0, "com.baidu.server.sip"

    const-string v1, "<====> SipSessionImpl::makeCall()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    new-instance v0, Lcom/baidu/server/sip/SipSessionGroup$MakeCallCommand;

    iget-object v1, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/baidu/server/sip/SipSessionGroup;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/baidu/server/sip/SipSessionGroup$MakeCallCommand;-><init>(Lcom/baidu/server/sip/SipSessionGroup;Lbaidu/net/sip/SipProfile;Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->doCommandAsync(Ljava/util/EventObject;)V

    .line 780
    return-void
.end method

.method public process(Ljava/util/EventObject;)Z
    .locals 8
    .parameter "evt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 891
    #calls: Lcom/baidu/server/sip/SipSessionGroup;->isLoggable(Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;Ljava/util/EventObject;)Z
    invoke-static {p0, p1}, Lcom/baidu/server/sip/SipSessionGroup;->access$600(Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;Ljava/util/EventObject;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "com.baidu.server.sip"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " ~~~~~   "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    invoke-static {v7}, Lbaidu/net/sip/SipSession$State;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": processing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    #calls: Lcom/baidu/server/sip/SipSessionGroup;->log(Ljava/util/EventObject;)Ljava/lang/String;
    invoke-static {p1}, Lcom/baidu/server/sip/SipSessionGroup;->access$700(Ljava/util/EventObject;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    :cond_0
    iget-object v6, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/baidu/server/sip/SipSessionGroup;

    monitor-enter v6

    .line 895
    :try_start_0
    iget-object v3, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/baidu/server/sip/SipSessionGroup;

    invoke-virtual {v3}, Lcom/baidu/server/sip/SipSessionGroup;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_1

    monitor-exit v6

    move v3, v4

    .line 940
    :goto_0
    return v3

    .line 896
    :cond_1
    iget-object v3, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mKeepAliveProcess:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;

    if-eqz v3, :cond_2

    .line 898
    iget-object v3, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mKeepAliveProcess:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;

    invoke-virtual {v3, p1}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->process(Ljava/util/EventObject;)Z

    move-result v3

    if-eqz v3, :cond_2

    monitor-exit v6

    move v3, v5

    goto :goto_0

    .line 900
    :cond_2
    const/4 v1, 0x0

    .line 901
    .local v1, dialog:Ljavax/sip/Dialog;
    instance-of v3, p1, Ljavax/sip/RequestEvent;

    if-eqz v3, :cond_6

    .line 902
    move-object v0, p1

    check-cast v0, Ljavax/sip/RequestEvent;

    move-object v3, v0

    invoke-virtual {v3}, Ljavax/sip/RequestEvent;->getDialog()Ljavax/sip/Dialog;

    move-result-object v1

    .line 907
    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    iput-object v1, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    .line 910
    :cond_4
    iget v3, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    packed-switch v3, :pswitch_data_0

    .line 938
    :pswitch_0
    const/4 v2, 0x0

    .line 940
    .local v2, processed:Z
    :goto_2
    if-nez v2, :cond_5

    invoke-direct {p0, p1}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->processExceptions(Ljava/util/EventObject;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_5
    move v3, v5

    :goto_3
    monitor-exit v6

    goto :goto_0

    .line 941
    .end local v1           #dialog:Ljavax/sip/Dialog;
    .end local v2           #processed:Z
    :catchall_0
    move-exception v3

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 903
    .restart local v1       #dialog:Ljavax/sip/Dialog;
    :cond_6
    :try_start_1
    instance-of v3, p1, Ljavax/sip/ResponseEvent;

    if-eqz v3, :cond_3

    .line 904
    move-object v0, p1

    check-cast v0, Ljavax/sip/ResponseEvent;

    move-object v3, v0

    invoke-virtual {v3}, Ljavax/sip/ResponseEvent;->getDialog()Ljavax/sip/Dialog;

    move-result-object v1

    .line 905
    iget-object v7, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/baidu/server/sip/SipSessionGroup;

    move-object v0, p1

    check-cast v0, Ljavax/sip/ResponseEvent;

    move-object v3, v0

    #calls: Lcom/baidu/server/sip/SipSessionGroup;->extractExternalAddress(Ljavax/sip/ResponseEvent;)V
    invoke-static {v7, v3}, Lcom/baidu/server/sip/SipSessionGroup;->access$2200(Lcom/baidu/server/sip/SipSessionGroup;Ljavax/sip/ResponseEvent;)V

    goto :goto_1

    .line 913
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->registeringToReady(Ljava/util/EventObject;)Z

    move-result v2

    .line 914
    .restart local v2       #processed:Z
    goto :goto_2

    .line 916
    .end local v2           #processed:Z
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->readyForCall(Ljava/util/EventObject;)Z

    move-result v2

    .line 917
    .restart local v2       #processed:Z
    goto :goto_2

    .line 919
    .end local v2           #processed:Z
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->incomingCall(Ljava/util/EventObject;)Z

    move-result v2

    .line 920
    .restart local v2       #processed:Z
    goto :goto_2

    .line 922
    .end local v2           #processed:Z
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->incomingCallToInCall(Ljava/util/EventObject;)Z

    move-result v2

    .line 923
    .restart local v2       #processed:Z
    goto :goto_2

    .line 926
    .end local v2           #processed:Z
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->outgoingCall(Ljava/util/EventObject;)Z

    move-result v2

    .line 927
    .restart local v2       #processed:Z
    goto :goto_2

    .line 929
    .end local v2           #processed:Z
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->outgoingCallToReady(Ljava/util/EventObject;)Z

    move-result v2

    .line 930
    .restart local v2       #processed:Z
    goto :goto_2

    .line 932
    .end local v2           #processed:Z
    :pswitch_7
    invoke-direct {p0, p1}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->inCall(Ljava/util/EventObject;)Z

    move-result v2

    .line 933
    .restart local v2       #processed:Z
    goto :goto_2

    .line 935
    .end local v2           #processed:Z
    :pswitch_8
    invoke-direct {p0, p1}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->endingCall(Ljava/util/EventObject;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 936
    .restart local v2       #processed:Z
    goto :goto_2

    :cond_7
    move v3, v4

    .line 940
    goto :goto_3

    .line 910
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method public register(I)V
    .locals 2
    .parameter "duration"

    .prologue
    .line 828
    const-string v0, "com.baidu.server.sip"

    const-string v1, "<====> SipSessionImpl::register()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    new-instance v0, Lcom/baidu/server/sip/SipSessionGroup$RegisterCommand;

    iget-object v1, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/baidu/server/sip/SipSessionGroup;

    invoke-direct {v0, v1, p1}, Lcom/baidu/server/sip/SipSessionGroup$RegisterCommand;-><init>(Lcom/baidu/server/sip/SipSessionGroup;I)V

    invoke-direct {p0, v0}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->doCommandAsync(Ljava/util/EventObject;)V

    .line 830
    return-void
.end method

.method public sendInfo(Ljava/lang/String;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 834
    const-string v0, "com.baidu.server.sip"

    const-string v1, "<====> SipSessionImpl::sendInfo()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    new-instance v0, Lcom/baidu/server/sip/SipSessionGroup$InfoCommand;

    iget-object v1, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/baidu/server/sip/SipSessionGroup;

    invoke-direct {v0, v1, p1}, Lcom/baidu/server/sip/SipSessionGroup$InfoCommand;-><init>(Lcom/baidu/server/sip/SipSessionGroup;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->doCommandAsync(Ljava/util/EventObject;)V

    .line 836
    return-void
.end method

.method public setListener(Lbaidu/net/sip/ISipSessionListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 753
    const-string v0, "com.baidu.server.sip"

    const-string v1, "<====> SipSessionImpl::setListener()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/baidu/server/sip/SipSessionListenerProxy;

    instance-of v1, p1, Lcom/baidu/server/sip/SipSessionListenerProxy;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/baidu/server/sip/SipSessionListenerProxy;

    .end local p1
    invoke-virtual {p1}, Lcom/baidu/server/sip/SipSessionListenerProxy;->getListener()Lbaidu/net/sip/ISipSessionListener;

    move-result-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/baidu/server/sip/SipSessionListenerProxy;->setListener(Lbaidu/net/sip/ISipSessionListener;)V

    .line 757
    return-void
.end method

.method public startKeepAliveProcess(ILbaidu/net/sip/SipProfile;Lcom/baidu/server/sip/SipSessionGroup$KeepAliveProcessCallback;)V
    .locals 3
    .parameter "interval"
    .parameter "peerProfile"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 1680
    iget-object v1, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/baidu/server/sip/SipSessionGroup;

    monitor-enter v1

    .line 1681
    :try_start_0
    const-string v0, "com.baidu.server.sip"

    const-string v2, "<====> SipSessionImpl::startKeepAliveProcess()"

    invoke-static {v0, v2}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1682
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mKeepAliveProcess:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;

    if-eqz v0, :cond_0

    .line 1683
    new-instance v0, Ljavax/sip/SipException;

    const-string v2, "Cannot create more than one keepalive process in a SipSession"

    invoke-direct {v0, v2}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1690
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1686
    :cond_0
    :try_start_1
    iput-object p2, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mPeerProfile:Lbaidu/net/sip/SipProfile;

    .line 1687
    new-instance v0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;

    invoke-direct {v0, p0}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;-><init>(Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;)V

    iput-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mKeepAliveProcess:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;

    .line 1688
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/baidu/server/sip/SipSessionListenerProxy;

    iget-object v2, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mKeepAliveProcess:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;

    invoke-virtual {v0, v2}, Lcom/baidu/server/sip/SipSessionListenerProxy;->setListener(Lbaidu/net/sip/ISipSessionListener;)V

    .line 1689
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mKeepAliveProcess:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;

    invoke-virtual {v0, p1, p3}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->start(ILcom/baidu/server/sip/SipSessionGroup$KeepAliveProcessCallback;)V

    .line 1690
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1691
    return-void
.end method

.method public startKeepAliveProcess(ILcom/baidu/server/sip/SipSessionGroup$KeepAliveProcessCallback;)V
    .locals 3
    .parameter "interval"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 1670
    iget-object v1, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/baidu/server/sip/SipSessionGroup;

    monitor-enter v1

    .line 1671
    :try_start_0
    const-string v0, "com.baidu.server.sip"

    const-string v2, "<====> SipSessionImpl::startKeepAliveProcess()"

    invoke-static {v0, v2}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1672
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/baidu/server/sip/SipSessionGroup;

    #getter for: Lcom/baidu/server/sip/SipSessionGroup;->mLocalProfile:Lbaidu/net/sip/SipProfile;
    invoke-static {v0}, Lcom/baidu/server/sip/SipSessionGroup;->access$1500(Lcom/baidu/server/sip/SipSessionGroup;)Lbaidu/net/sip/SipProfile;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->startKeepAliveProcess(ILbaidu/net/sip/SipProfile;Lcom/baidu/server/sip/SipSessionGroup$KeepAliveProcessCallback;)V

    .line 1673
    monitor-exit v1

    .line 1674
    return-void

    .line 1673
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stopKeepAliveProcess()V
    .locals 3

    .prologue
    .line 1694
    iget-object v1, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/baidu/server/sip/SipSessionGroup;

    monitor-enter v1

    .line 1695
    :try_start_0
    const-string v0, "com.baidu.server.sip"

    const-string v2, "<====> SipSessionImpl::stopKeepAliveProcess()"

    invoke-static {v0, v2}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1696
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mKeepAliveProcess:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;

    if-eqz v0, :cond_0

    .line 1697
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mKeepAliveProcess:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;

    invoke-virtual {v0}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->stop()V

    .line 1698
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mKeepAliveProcess:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;

    .line 1700
    :cond_0
    monitor-exit v1

    .line 1701
    return-void

    .line 1700
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 882
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 883
    .local v1, s:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    invoke-static {v3}, Lbaidu/net/sip/SipSession$State;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 886
    .end local v1           #s:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 885
    :catch_0
    move-exception v0

    .line 886
    .local v0, e:Ljava/lang/Throwable;
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public unregister()V
    .locals 2

    .prologue
    .line 840
    const-string v0, "com.baidu.server.sip"

    const-string v1, "<====> SipSessionImpl::unregister()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    invoke-static {}, Lcom/baidu/server/sip/SipSessionGroup;->access$2000()Ljava/util/EventObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->doCommandAsync(Ljava/util/EventObject;)V

    .line 842
    return-void
.end method
