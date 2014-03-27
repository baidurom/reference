.class Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;
.super Lbaidu/net/sip/SipSessionAdapter;
.source "SipSessionGroup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KeepAliveProcess"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SipKeepAlive"


# instance fields
.field private mCallback:Lcom/baidu/server/sip/SipSessionGroup$KeepAliveProcessCallback;

.field private mInterval:I

.field private mPortChanged:Z

.field private mRPort:I

.field private mRunning:Z

.field final synthetic this$1:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;


# direct methods
.method constructor <init>(Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1703
    iput-object p1, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->this$1:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-direct {p0}, Lbaidu/net/sip/SipSessionAdapter;-><init>()V

    .line 1705
    iput-boolean v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->mRunning:Z

    .line 1708
    iput-boolean v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->mPortChanged:Z

    .line 1709
    iput v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->mRPort:I

    return-void
.end method

.method private getRPortFromResponse(Ljavax/sip/message/Response;)I
    .locals 2
    .parameter "response"

    .prologue
    .line 1840
    const-string v1, "Via"

    invoke-interface {p1, v1}, Ljavax/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v1

    check-cast v1, Ljavax/sip/header/ViaHeader;

    move-object v0, v1

    check-cast v0, Ljavax/sip/header/ViaHeader;

    .line 1842
    .local v0, viaHeader:Ljavax/sip/header/ViaHeader;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    invoke-interface {v0}, Ljavax/sip/header/ViaHeader;->getRPort()I

    move-result v1

    goto :goto_0
.end method

.method private parseOptionsResult(Ljava/util/EventObject;)Z
    .locals 5
    .parameter "evt"

    .prologue
    const/4 v2, 0x1

    .line 1817
    const-string v3, "SipKeepAlive"

    const-string v4, "<====> KeepAliveProcess::parseOptionsResult()"

    invoke-static {v3, v4}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1818
    const-string v3, "OPTIONS"

    #calls: Lcom/baidu/server/sip/SipSessionGroup;->expectResponse(Ljava/lang/String;Ljava/util/EventObject;)Z
    invoke-static {v3, p1}, Lcom/baidu/server/sip/SipSessionGroup;->access$2300(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v0, p1

    .line 1819
    check-cast v0, Ljavax/sip/ResponseEvent;

    .line 1820
    .local v0, event:Ljavax/sip/ResponseEvent;
    invoke-virtual {v0}, Ljavax/sip/ResponseEvent;->getResponse()Ljavax/sip/message/Response;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->getRPortFromResponse(Ljavax/sip/message/Response;)I

    move-result v1

    .line 1821
    .local v1, rPort:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 1822
    iget v3, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->mRPort:I

    if-nez v3, :cond_0

    iput v1, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->mRPort:I

    .line 1823
    :cond_0
    iget v3, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->mRPort:I

    if-eq v3, v1, :cond_1

    .line 1824
    iput-boolean v2, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->mPortChanged:Z

    .line 1827
    iput v1, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->mRPort:I

    .line 1836
    .end local v0           #event:Ljavax/sip/ResponseEvent;
    .end local v1           #rPort:I
    :cond_1
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private sendKeepAlive()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1803
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->this$1:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v1, v0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/baidu/server/sip/SipSessionGroup;

    monitor-enter v1

    .line 1804
    :try_start_0
    const-string v0, "SipKeepAlive"

    const-string v2, "<====> KeepAliveProcess::sendKeepAlive()"

    invoke-static {v0, v2}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1805
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->this$1:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    const/16 v2, 0x9

    iput v2, v0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    .line 1806
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->this$1:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v2, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->this$1:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v2, v2, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/baidu/server/sip/SipSessionGroup;

    #getter for: Lcom/baidu/server/sip/SipSessionGroup;->mSipHelper:Lcom/baidu/server/sip/SipHelper;
    invoke-static {v2}, Lcom/baidu/server/sip/SipSessionGroup;->access$300(Lcom/baidu/server/sip/SipSessionGroup;)Lcom/baidu/server/sip/SipHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->this$1:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v3, v3, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/baidu/server/sip/SipSessionGroup;

    #getter for: Lcom/baidu/server/sip/SipSessionGroup;->mLocalProfile:Lbaidu/net/sip/SipProfile;
    invoke-static {v3}, Lcom/baidu/server/sip/SipSessionGroup;->access$1500(Lcom/baidu/server/sip/SipSessionGroup;)Lbaidu/net/sip/SipProfile;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->this$1:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v4, v4, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mPeerProfile:Lbaidu/net/sip/SipProfile;

    iget-object v5, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->this$1:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v5}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->generateTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/baidu/server/sip/SipHelper;->sendOptions(Lbaidu/net/sip/SipProfile;Lbaidu/net/sip/SipProfile;Ljava/lang/String;)Ljavax/sip/ClientTransaction;

    move-result-object v2

    iput-object v2, v0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    .line 1808
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->this$1:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v2, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->this$1:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v2, v2, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mClientTransaction:Ljavax/sip/ClientTransaction;

    invoke-interface {v2}, Ljavax/sip/ClientTransaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v2

    iput-object v2, v0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    .line 1809
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->this$1:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v0, v0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/baidu/server/sip/SipSessionGroup;

    iget-object v2, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->this$1:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    #calls: Lcom/baidu/server/sip/SipSessionGroup;->addSipSession(Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;)V
    invoke-static {v0, v2}, Lcom/baidu/server/sip/SipSessionGroup;->access$500(Lcom/baidu/server/sip/SipSessionGroup;Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;)V

    .line 1811
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->this$1:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    const/4 v2, 0x5

    #calls: Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->startSessionTimer(I)V
    invoke-static {v0, v2}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->access$3200(Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;I)V

    .line 1813
    monitor-exit v1

    .line 1814
    return-void

    .line 1813
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public onError(Lbaidu/net/sip/ISipSession;ILjava/lang/String;)V
    .locals 2
    .parameter "session"
    .parameter "errorCode"
    .parameter "message"

    .prologue
    .line 1754
    const-string v0, "SipKeepAlive"

    const-string v1, "<====> KeepAliveProcess::onError()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1755
    invoke-virtual {p0}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->stop()V

    .line 1756
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->mCallback:Lcom/baidu/server/sip/SipSessionGroup$KeepAliveProcessCallback;

    invoke-interface {v0, p2, p3}, Lcom/baidu/server/sip/SipSessionGroup$KeepAliveProcessCallback;->onError(ILjava/lang/String;)V

    .line 1757
    return-void
.end method

.method process(Ljava/util/EventObject;)Z
    .locals 2
    .parameter "evt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 1731
    const-string v0, "SipKeepAlive"

    const-string v1, "<====> KeepAliveProcess::process()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1732
    iget-boolean v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->mRunning:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->this$1:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    iget v0, v0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    .line 1733
    instance-of v0, p1, Ljavax/sip/ResponseEvent;

    if-eqz v0, :cond_1

    .line 1734
    invoke-direct {p0, p1}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->parseOptionsResult(Ljava/util/EventObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1735
    iget-boolean v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->mPortChanged:Z

    if-eqz v0, :cond_0

    .line 1736
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->this$1:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v0, v0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/baidu/server/sip/SipSessionGroup;

    invoke-virtual {v0}, Lcom/baidu/server/sip/SipSessionGroup;->resetExternalAddress()V

    .line 1737
    invoke-virtual {p0}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->stop()V

    .line 1742
    :goto_0
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->mCallback:Lcom/baidu/server/sip/SipSessionGroup$KeepAliveProcessCallback;

    iget-boolean v1, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->mPortChanged:Z

    invoke-interface {v0, v1}, Lcom/baidu/server/sip/SipSessionGroup$KeepAliveProcessCallback;->onResponse(Z)V

    .line 1743
    const/4 v0, 0x1

    .line 1747
    :goto_1
    return v0

    .line 1739
    :cond_0
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->this$1:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    #calls: Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->cancelSessionTimer()V
    invoke-static {v0}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->access$3000(Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;)V

    .line 1740
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->this$1:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v0, v0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/baidu/server/sip/SipSessionGroup;

    iget-object v1, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->this$1:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    #calls: Lcom/baidu/server/sip/SipSessionGroup;->removeSipSession(Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;)V
    invoke-static {v0, v1}, Lcom/baidu/server/sip/SipSessionGroup;->access$1300(Lcom/baidu/server/sip/SipSessionGroup;Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;)V

    goto :goto_0

    .line 1747
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public run()V
    .locals 4

    .prologue
    .line 1763
    iget-object v1, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->this$1:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v2, v1, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/baidu/server/sip/SipSessionGroup;

    monitor-enter v2

    .line 1764
    :try_start_0
    const-string v1, "SipKeepAlive"

    const-string v3, "<====> KeepAliveProcess::run()"

    invoke-static {v1, v3}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1765
    iget-boolean v1, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->mRunning:Z

    if-nez v1, :cond_0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1787
    :goto_0
    return-void

    .line 1775
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->sendKeepAlive()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 1786
    :cond_1
    :goto_1
    :try_start_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1776
    :catch_0
    move-exception v0

    .line 1784
    .local v0, t:Ljava/lang/Throwable;
    :try_start_3
    iget-boolean v1, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->mRunning:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->this$1:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    #calls: Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->onError(Ljava/lang/Throwable;)V
    invoke-static {v1, v0}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->access$100(Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method start(ILcom/baidu/server/sip/SipSessionGroup$KeepAliveProcessCallback;)V
    .locals 2
    .parameter "interval"
    .parameter "callback"

    .prologue
    .line 1714
    const-string v0, "SipKeepAlive"

    const-string v1, "<====> KeepAliveProcess::start()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1715
    iget-boolean v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->mRunning:Z

    if-eqz v0, :cond_0

    .line 1727
    :goto_0
    return-void

    .line 1716
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->mRunning:Z

    .line 1717
    iput p1, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->mInterval:I

    .line 1718
    new-instance v0, Lcom/baidu/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;

    invoke-direct {v0, p2}, Lcom/baidu/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;-><init>(Lcom/baidu/server/sip/SipSessionGroup$KeepAliveProcessCallback;)V

    iput-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->mCallback:Lcom/baidu/server/sip/SipSessionGroup$KeepAliveProcessCallback;

    .line 1719
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->this$1:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v0, v0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/baidu/server/sip/SipSessionGroup;

    #getter for: Lcom/baidu/server/sip/SipSessionGroup;->mWakeupTimer:Lcom/baidu/server/sip/SipWakeupTimer;
    invoke-static {v0}, Lcom/baidu/server/sip/SipSessionGroup;->access$2900(Lcom/baidu/server/sip/SipSessionGroup;)Lcom/baidu/server/sip/SipWakeupTimer;

    move-result-object v0

    mul-int/lit16 v1, p1, 0x3e8

    invoke-virtual {v0, v1, p0}, Lcom/baidu/server/sip/SipWakeupTimer;->set(ILjava/lang/Runnable;)V

    .line 1726
    invoke-virtual {p0}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->run()V

    goto :goto_0
.end method

.method stop()V
    .locals 3

    .prologue
    .line 1790
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->this$1:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v1, v0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/baidu/server/sip/SipSessionGroup;

    monitor-enter v1

    .line 1791
    :try_start_0
    const-string v0, "SipKeepAlive"

    const-string v2, "<====> KeepAliveProcess::stop()"

    invoke-static {v0, v2}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1796
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->mRunning:Z

    .line 1797
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->this$1:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v0, v0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/baidu/server/sip/SipSessionGroup;

    #getter for: Lcom/baidu/server/sip/SipSessionGroup;->mWakeupTimer:Lcom/baidu/server/sip/SipWakeupTimer;
    invoke-static {v0}, Lcom/baidu/server/sip/SipSessionGroup;->access$2900(Lcom/baidu/server/sip/SipSessionGroup;)Lcom/baidu/server/sip/SipWakeupTimer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/server/sip/SipWakeupTimer;->cancel(Ljava/lang/Runnable;)V

    .line 1798
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$KeepAliveProcess;->this$1:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    #calls: Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->reset()V
    invoke-static {v0}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->access$3100(Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;)V

    .line 1799
    monitor-exit v1

    .line 1800
    return-void

    .line 1799
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
