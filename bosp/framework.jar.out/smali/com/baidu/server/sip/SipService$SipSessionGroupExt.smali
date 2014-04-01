.class Lcom/baidu/server/sip/SipService$SipSessionGroupExt;
.super Lbaidu/net/sip/SipSessionAdapter;
.source "SipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/server/sip/SipService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SipSessionGroupExt"
.end annotation


# instance fields
.field private mAutoRegistration:Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;

.field private mIncomingCallPendingIntent:Landroid/app/PendingIntent;

.field private mOpenedToReceiveCalls:Z

.field private mSipGroup:Lcom/baidu/server/sip/SipSessionGroup;

.field final synthetic this$0:Lcom/baidu/server/sip/SipService;


# direct methods
.method public constructor <init>(Lcom/baidu/server/sip/SipService;Lbaidu/net/sip/SipProfile;Landroid/app/PendingIntent;Lbaidu/net/sip/ISipSessionListener;)V
    .locals 5
    .parameter
    .parameter "localProfile"
    .parameter "incomingCallPendingIntent"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 497
    iput-object p1, p0, Lcom/baidu/server/sip/SipService$SipSessionGroupExt;->this$0:Lcom/baidu/server/sip/SipService;

    invoke-direct {p0}, Lbaidu/net/sip/SipSessionAdapter;-><init>()V

    .line 492
    new-instance v2, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;

    iget-object v3, p0, Lcom/baidu/server/sip/SipService$SipSessionGroupExt;->this$0:Lcom/baidu/server/sip/SipService;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;-><init>(Lcom/baidu/server/sip/SipService;Lcom/baidu/server/sip/SipService$1;)V

    iput-object v2, p0, Lcom/baidu/server/sip/SipService$SipSessionGroupExt;->mAutoRegistration:Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;

    .line 498
    const-string v2, "com.baidu.server.sip"

    const-string v3, "<====> SipSessionGroupExt::SipSessionGroupExt()"

    invoke-static {v2, v3}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    invoke-virtual {p2}, Lbaidu/net/sip/SipProfile;->getPassword()Ljava/lang/String;

    move-result-object v1

    .line 500
    .local v1, password:Ljava/lang/String;
    invoke-direct {p0, p2}, Lcom/baidu/server/sip/SipService$SipSessionGroupExt;->duplicate(Lbaidu/net/sip/SipProfile;)Lbaidu/net/sip/SipProfile;

    move-result-object v0

    .line 501
    .local v0, p:Lbaidu/net/sip/SipProfile;
    #getter for: Lcom/baidu/server/sip/SipService;->mLocalIp:Ljava/lang/String;
    invoke-static {p1}, Lcom/baidu/server/sip/SipService;->access$200(Lcom/baidu/server/sip/SipService;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0, v1}, Lcom/baidu/server/sip/SipService$SipSessionGroupExt;->createSipSessionGroup(Ljava/lang/String;Lbaidu/net/sip/SipProfile;Ljava/lang/String;)Lcom/baidu/server/sip/SipSessionGroup;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/server/sip/SipService$SipSessionGroupExt;->mSipGroup:Lcom/baidu/server/sip/SipSessionGroup;

    .line 502
    iput-object p3, p0, Lcom/baidu/server/sip/SipService$SipSessionGroupExt;->mIncomingCallPendingIntent:Landroid/app/PendingIntent;

    .line 503
    iget-object v2, p0, Lcom/baidu/server/sip/SipService$SipSessionGroupExt;->mAutoRegistration:Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;

    invoke-virtual {v2, p4}, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->setListener(Lbaidu/net/sip/ISipSessionListener;)V

    .line 504
    return-void
.end method

.method private createSipSessionGroup(Ljava/lang/String;Lbaidu/net/sip/SipProfile;Ljava/lang/String;)Lcom/baidu/server/sip/SipSessionGroup;
    .locals 7
    .parameter "localIp"
    .parameter "localProfile"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 531
    const-string v0, "com.baidu.server.sip"

    const-string v1, "<====> SipSessionGroupExt::createSipSessionGroup()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    :try_start_0
    new-instance v0, Lcom/baidu/server/sip/SipSessionGroup;

    iget-object v1, p0, Lcom/baidu/server/sip/SipService$SipSessionGroupExt;->this$0:Lcom/baidu/server/sip/SipService;

    #getter for: Lcom/baidu/server/sip/SipService;->mTimer:Lcom/baidu/server/sip/SipWakeupTimer;
    invoke-static {v1}, Lcom/baidu/server/sip/SipService;->access$300(Lcom/baidu/server/sip/SipService;)Lcom/baidu/server/sip/SipWakeupTimer;

    move-result-object v4

    iget-object v1, p0, Lcom/baidu/server/sip/SipService$SipSessionGroupExt;->this$0:Lcom/baidu/server/sip/SipService;

    #getter for: Lcom/baidu/server/sip/SipService;->mMyWakeLock:Lcom/baidu/server/sip/SipWakeLock;
    invoke-static {v1}, Lcom/baidu/server/sip/SipService;->access$400(Lcom/baidu/server/sip/SipService;)Lcom/baidu/server/sip/SipWakeLock;

    move-result-object v5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/baidu/server/sip/SipSessionGroup;-><init>(Ljava/lang/String;Lbaidu/net/sip/SipProfile;Ljava/lang/String;Lcom/baidu/server/sip/SipWakeupTimer;Lcom/baidu/server/sip/SipWakeLock;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 539
    :goto_0
    return-object v0

    .line 535
    :catch_0
    move-exception v6

    .line 537
    .local v6, e:Ljava/io/IOException;
    const-string v0, "com.baidu.server.sip"

    const-string v1, "createSipSessionGroup(): network disconnected?"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    if-eqz p1, :cond_0

    .line 539
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2, p3}, Lcom/baidu/server/sip/SipService$SipSessionGroupExt;->createSipSessionGroup(Ljava/lang/String;Lbaidu/net/sip/SipProfile;Ljava/lang/String;)Lcom/baidu/server/sip/SipSessionGroup;

    move-result-object v0

    goto :goto_0

    .line 542
    :cond_0
    const-string v0, "com.baidu.server.sip"

    const-string v1, "impossible! recursive!"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "createSipSessionGroup"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private duplicate(Lbaidu/net/sip/SipProfile;)Lbaidu/net/sip/SipProfile;
    .locals 3
    .parameter "p"

    .prologue
    .line 550
    :try_start_0
    new-instance v1, Lbaidu/net/sip/SipProfile$Builder;

    invoke-direct {v1, p1}, Lbaidu/net/sip/SipProfile$Builder;-><init>(Lbaidu/net/sip/SipProfile;)V

    const-string v2, "*"

    invoke-virtual {v1, v2}, Lbaidu/net/sip/SipProfile$Builder;->setPassword(Ljava/lang/String;)Lbaidu/net/sip/SipProfile$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lbaidu/net/sip/SipProfile$Builder;->build()Lbaidu/net/sip/SipProfile;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 551
    :catch_0
    move-exception v0

    .line 552
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "com.baidu.server.sip"

    const-string v2, "duplicate()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 553
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "duplicate profile"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 673
    iget-object v0, p0, Lcom/baidu/server/sip/SipService$SipSessionGroupExt;->mSipGroup:Lcom/baidu/server/sip/SipSessionGroup;

    invoke-virtual {v0}, Lcom/baidu/server/sip/SipSessionGroup;->getLocalProfileUri()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private resetGroup(Ljava/lang/String;)V
    .locals 3
    .parameter "localIp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 595
    const-string v1, "com.baidu.server.sip"

    const-string v2, "<====> SipSessionGroupExt::resetGroup()"

    invoke-static {v1, v2}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    :try_start_0
    iget-object v1, p0, Lcom/baidu/server/sip/SipService$SipSessionGroupExt;->mSipGroup:Lcom/baidu/server/sip/SipSessionGroup;

    invoke-virtual {v1, p1}, Lcom/baidu/server/sip/SipSessionGroup;->reset(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 609
    :goto_0
    return-void

    .line 598
    :catch_0
    move-exception v0

    .line 600
    .local v0, e:Ljava/io/IOException;
    const-string v1, "com.baidu.server.sip"

    const-string/jumbo v2, "resetGroup(): network disconnected?"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    if-eqz p1, :cond_0

    .line 602
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/baidu/server/sip/SipService$SipSessionGroupExt;->resetGroup(Ljava/lang/String;)V

    goto :goto_0

    .line 605
    :cond_0
    const-string v1, "com.baidu.server.sip"

    const-string v2, "impossible!"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "resetGroup"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 612
    const-string v0, "com.baidu.server.sip"

    const-string v1, "<====> SipSessionGroupExt::close()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/server/sip/SipService$SipSessionGroupExt;->mOpenedToReceiveCalls:Z

    .line 614
    iget-object v0, p0, Lcom/baidu/server/sip/SipService$SipSessionGroupExt;->mSipGroup:Lcom/baidu/server/sip/SipSessionGroup;

    invoke-virtual {v0}, Lcom/baidu/server/sip/SipSessionGroup;->close()V

    .line 615
    iget-object v0, p0, Lcom/baidu/server/sip/SipService$SipSessionGroupExt;->mAutoRegistration:Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;

    invoke-virtual {v0}, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->stop()V

    .line 618
    return-void
.end method

.method public containsSession(Ljava/lang/String;)Z
    .locals 1
    .parameter "callId"

    .prologue
    .line 511
    iget-object v0, p0, Lcom/baidu/server/sip/SipService$SipSessionGroupExt;->mSipGroup:Lcom/baidu/server/sip/SipSessionGroup;

    invoke-virtual {v0, p1}, Lcom/baidu/server/sip/SipSessionGroup;->containsSession(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public createSession(Lbaidu/net/sip/ISipSessionListener;)Lbaidu/net/sip/ISipSession;
    .locals 2
    .parameter "listener"

    .prologue
    .line 621
    const-string v0, "com.baidu.server.sip"

    const-string v1, "<====> SipSessionGroupExt::createSession()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    iget-object v0, p0, Lcom/baidu/server/sip/SipService$SipSessionGroupExt;->mSipGroup:Lcom/baidu/server/sip/SipSessionGroup;

    invoke-virtual {v0, p1}, Lcom/baidu/server/sip/SipSessionGroup;->createSession(Lbaidu/net/sip/ISipSessionListener;)Lbaidu/net/sip/ISipSession;

    move-result-object v0

    return-object v0
.end method

.method public getLocalProfile()Lbaidu/net/sip/SipProfile;
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lcom/baidu/server/sip/SipService$SipSessionGroupExt;->mSipGroup:Lcom/baidu/server/sip/SipSessionGroup;

    invoke-virtual {v0}, Lcom/baidu/server/sip/SipSessionGroup;->getLocalProfile()Lbaidu/net/sip/SipProfile;

    move-result-object v0

    return-object v0
.end method

.method public isOpenedToReceiveCalls()Z
    .locals 1

    .prologue
    .line 665
    iget-boolean v0, p0, Lcom/baidu/server/sip/SipService$SipSessionGroupExt;->mOpenedToReceiveCalls:Z

    return v0
.end method

.method public isRegistered()Z
    .locals 1

    .prologue
    .line 669
    iget-object v0, p0, Lcom/baidu/server/sip/SipService$SipSessionGroupExt;->mAutoRegistration:Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;

    invoke-virtual {v0}, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->isRegistered()Z

    move-result v0

    return v0
.end method

.method public onConnectivityChanged(Z)V
    .locals 2
    .parameter "connected"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 580
    const-string v0, "com.baidu.server.sip"

    const-string v1, "<====> SipSessionGroupExt::onConnectivityChanged()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    iget-object v0, p0, Lcom/baidu/server/sip/SipService$SipSessionGroupExt;->mSipGroup:Lcom/baidu/server/sip/SipSessionGroup;

    invoke-virtual {v0}, Lcom/baidu/server/sip/SipSessionGroup;->onConnectivityChanged()V

    .line 582
    if-eqz p1, :cond_1

    .line 583
    iget-object v0, p0, Lcom/baidu/server/sip/SipService$SipSessionGroupExt;->this$0:Lcom/baidu/server/sip/SipService;

    #getter for: Lcom/baidu/server/sip/SipService;->mLocalIp:Ljava/lang/String;
    invoke-static {v0}, Lcom/baidu/server/sip/SipService;->access$200(Lcom/baidu/server/sip/SipService;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/server/sip/SipService$SipSessionGroupExt;->resetGroup(Ljava/lang/String;)V

    .line 584
    iget-boolean v0, p0, Lcom/baidu/server/sip/SipService$SipSessionGroupExt;->mOpenedToReceiveCalls:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/baidu/server/sip/SipService$SipSessionGroupExt;->openToReceiveCalls()V

    .line 592
    :cond_0
    :goto_0
    return-void

    .line 589
    :cond_1
    iget-object v0, p0, Lcom/baidu/server/sip/SipService$SipSessionGroupExt;->mSipGroup:Lcom/baidu/server/sip/SipSessionGroup;

    invoke-virtual {v0}, Lcom/baidu/server/sip/SipSessionGroup;->close()V

    .line 590
    iget-object v0, p0, Lcom/baidu/server/sip/SipService$SipSessionGroupExt;->mAutoRegistration:Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;

    invoke-virtual {v0}, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->stop()V

    goto :goto_0
.end method

.method public onError(Lbaidu/net/sip/ISipSession;ILjava/lang/String;)V
    .locals 0
    .parameter "session"
    .parameter "errorCode"
    .parameter "message"

    .prologue
    .line 662
    return-void
.end method

.method public onKeepAliveIntervalChanged()V
    .locals 2

    .prologue
    .line 515
    const-string v0, "com.baidu.server.sip"

    const-string v1, "<====> SipSessionGroupExt::onKeepAliveIntervalChanged()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    iget-object v0, p0, Lcom/baidu/server/sip/SipService$SipSessionGroupExt;->mAutoRegistration:Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;

    invoke-virtual {v0}, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->onKeepAliveIntervalChanged()V

    .line 517
    return-void
.end method

.method public onRinging(Lbaidu/net/sip/ISipSession;Lbaidu/net/sip/SipProfile;Ljava/lang/String;)V
    .locals 7
    .parameter "s"
    .parameter "caller"
    .parameter "sessionDescription"

    .prologue
    .line 629
    move-object v2, p1

    check-cast v2, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    .line 631
    .local v2, session:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;
    iget-object v4, p0, Lcom/baidu/server/sip/SipService$SipSessionGroupExt;->this$0:Lcom/baidu/server/sip/SipService;

    monitor-enter v4

    .line 633
    :try_start_0
    invoke-virtual {p0}, Lcom/baidu/server/sip/SipService$SipSessionGroupExt;->isRegistered()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/baidu/server/sip/SipService$SipSessionGroupExt;->this$0:Lcom/baidu/server/sip/SipService;

    #calls: Lcom/baidu/server/sip/SipService;->callingSelf(Lcom/baidu/server/sip/SipService$SipSessionGroupExt;Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;)Z
    invoke-static {v3, p0, v2}, Lcom/baidu/server/sip/SipService;->access$600(Lcom/baidu/server/sip/SipService;Lcom/baidu/server/sip/SipService$SipSessionGroupExt;Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 634
    :cond_0
    invoke-virtual {v2}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->endCall()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 635
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 655
    :goto_0
    return-void

    .line 639
    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/baidu/server/sip/SipService$SipSessionGroupExt;->this$0:Lcom/baidu/server/sip/SipService;

    #calls: Lcom/baidu/server/sip/SipService;->udpateSipAccountInfo(Lbaidu/net/sip/SipProfile;)V
    invoke-static {v3, p2}, Lcom/baidu/server/sip/SipService;->access$700(Lcom/baidu/server/sip/SipService;Lbaidu/net/sip/SipProfile;)V

    .line 642
    iget-object v3, p0, Lcom/baidu/server/sip/SipService$SipSessionGroupExt;->this$0:Lcom/baidu/server/sip/SipService;

    #calls: Lcom/baidu/server/sip/SipService;->addPendingSession(Lbaidu/net/sip/ISipSession;)V
    invoke-static {v3, v2}, Lcom/baidu/server/sip/SipService;->access$800(Lcom/baidu/server/sip/SipService;Lbaidu/net/sip/ISipSession;)V

    .line 643
    invoke-virtual {v2}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p3}, Lbaidu/net/sip/SipManager;->createIncomingCallBroadcast(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 648
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/baidu/server/sip/SipService$SipSessionGroupExt;->mIncomingCallPendingIntent:Landroid/app/PendingIntent;

    iget-object v5, p0, Lcom/baidu/server/sip/SipService$SipSessionGroupExt;->this$0:Lcom/baidu/server/sip/SipService;

    #getter for: Lcom/baidu/server/sip/SipService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/baidu/server/sip/SipService;->access$900(Lcom/baidu/server/sip/SipService;)Landroid/content/Context;

    move-result-object v5

    const/16 v6, 0x65

    invoke-virtual {v3, v5, v6, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2 .. :try_end_2} :catch_0

    .line 654
    .end local v1           #intent:Landroid/content/Intent;
    :goto_1
    :try_start_3
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 650
    :catch_0
    move-exception v0

    .line 651
    .local v0, e:Landroid/app/PendingIntent$CanceledException;
    :try_start_4
    const-string v3, "com.baidu.server.sip"

    const-string/jumbo v5, "pendingIntent is canceled, drop incoming call"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    invoke-virtual {v2}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->endCall()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public openToReceiveCalls()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 568
    const-string v0, "com.baidu.server.sip"

    const-string v1, "<====> SipSessionGroupExt::openToReceiveCalls()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/server/sip/SipService$SipSessionGroupExt;->mOpenedToReceiveCalls:Z

    .line 570
    iget-object v0, p0, Lcom/baidu/server/sip/SipService$SipSessionGroupExt;->this$0:Lcom/baidu/server/sip/SipService;

    #getter for: Lcom/baidu/server/sip/SipService;->mConnected:Z
    invoke-static {v0}, Lcom/baidu/server/sip/SipService;->access$500(Lcom/baidu/server/sip/SipService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/baidu/server/sip/SipService$SipSessionGroupExt;->mSipGroup:Lcom/baidu/server/sip/SipSessionGroup;

    invoke-virtual {v0, p0}, Lcom/baidu/server/sip/SipSessionGroup;->openToReceiveCalls(Lbaidu/net/sip/ISipSessionListener;)V

    .line 572
    iget-object v0, p0, Lcom/baidu/server/sip/SipService$SipSessionGroupExt;->mAutoRegistration:Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;

    iget-object v1, p0, Lcom/baidu/server/sip/SipService$SipSessionGroupExt;->mSipGroup:Lcom/baidu/server/sip/SipSessionGroup;

    invoke-virtual {v0, v1}, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->start(Lcom/baidu/server/sip/SipSessionGroup;)V

    .line 576
    :cond_0
    return-void
.end method

.method public setIncomingCallPendingIntent(Landroid/app/PendingIntent;)V
    .locals 2
    .parameter "pIntent"

    .prologue
    .line 563
    const-string v0, "com.baidu.server.sip"

    const-string v1, "<====> SipSessionGroupExt::setIncomingCallPendingIntent()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    iput-object p1, p0, Lcom/baidu/server/sip/SipService$SipSessionGroupExt;->mIncomingCallPendingIntent:Landroid/app/PendingIntent;

    .line 565
    return-void
.end method

.method public setListener(Lbaidu/net/sip/ISipSessionListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 558
    const-string v0, "com.baidu.server.sip"

    const-string v1, "<====> SipSessionGroupExt::setListener()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    iget-object v0, p0, Lcom/baidu/server/sip/SipService$SipSessionGroupExt;->mAutoRegistration:Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;

    invoke-virtual {v0, p1}, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->setListener(Lbaidu/net/sip/ISipSessionListener;)V

    .line 560
    return-void
.end method

.method setWakeupTimer(Lcom/baidu/server/sip/SipWakeupTimer;)V
    .locals 2
    .parameter "timer"

    .prologue
    .line 522
    const-string v0, "com.baidu.server.sip"

    const-string v1, "<====> SipSessionGroupExt::setWakeupTimer()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    iget-object v0, p0, Lcom/baidu/server/sip/SipService$SipSessionGroupExt;->mSipGroup:Lcom/baidu/server/sip/SipSessionGroup;

    invoke-virtual {v0, p1}, Lcom/baidu/server/sip/SipSessionGroup;->setWakeupTimer(Lcom/baidu/server/sip/SipWakeupTimer;)V

    .line 524
    return-void
.end method
