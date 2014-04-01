.class Lcom/android/server/sip/SipService$AutoRegistrationProcess;
.super Landroid/net/sip/SipSessionAdapter;
.source "SipService.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sip/SipService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoRegistrationProcess"
.end annotation


# static fields
.field private static final MIN_KEEPALIVE_SUCCESS_COUNT:I = 0xa


# instance fields
.field private TAG:Ljava/lang/String;

.field private mBackoff:I

.field private mErrorCode:I

.field private mErrorMessage:Ljava/lang/String;

.field private mExpiryTime:J

.field private mKeepAliveSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

.field private mKeepAliveSuccessCount:I

.field private mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

.field private mRegistered:Z

.field private mRunning:Z

.field private mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

.field final synthetic this$0:Lcom/android/server/sip/SipService;


# direct methods
.method private constructor <init>(Lcom/android/server/sip/SipService;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 795
    iput-object p1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    invoke-direct {p0}, Landroid/net/sip/SipSessionAdapter;-><init>()V

    .line 798
    const-string v0, "SipAutoReg"

    iput-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->TAG:Ljava/lang/String;

    .line 802
    new-instance v0, Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-direct {v0}, Lcom/android/server/sip/SipSessionListenerProxy;-><init>()V

    iput-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    .line 803
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mBackoff:I

    .line 808
    iput-boolean v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mRunning:Z

    .line 810
    iput v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mKeepAliveSuccessCount:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/sip/SipService;Lcom/android/server/sip/SipService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 795
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipService$AutoRegistrationProcess;-><init>(Lcom/android/server/sip/SipService;)V

    return-void
.end method

.method private backoffDuration()I
    .locals 2

    .prologue
    .line 1006
    iget v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mBackoff:I

    mul-int/lit8 v0, v1, 0xa

    .line 1007
    .local v0, duration:I
    const/16 v1, 0xe10

    if-le v0, v1, :cond_0

    .line 1008
    const/16 v0, 0xe10

    .line 1012
    :goto_0
    return v0

    .line 1010
    :cond_0
    iget v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mBackoff:I

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mBackoff:I

    goto :goto_0
.end method

.method private getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 813
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private notCurrentSession(Landroid/net/sip/ISipSession;)Z
    .locals 3
    .parameter "session"

    .prologue
    const/4 v1, 0x1

    .line 1027
    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    if-eq p1, v0, :cond_0

    move-object v0, p1

    .line 1028
    check-cast v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->setListener(Landroid/net/sip/ISipSessionListener;)V

    .line 1029
    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mMyWakeLock:Lcom/android/server/sip/SipWakeLock;
    invoke-static {v0}, Lcom/android/server/sip/SipService;->access$400(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeLock;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/sip/SipWakeLock;->release(Ljava/lang/Object;)V

    .line 1032
    :goto_0
    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mRunning:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private restart(I)V
    .locals 3
    .parameter "duration"

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Refresh registration "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "s later."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mTimer:Lcom/android/server/sip/SipWakeupTimer;
    invoke-static {v0}, Lcom/android/server/sip/SipService;->access$300(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeupTimer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/sip/SipWakeupTimer;->cancel(Ljava/lang/Runnable;)V

    .line 1002
    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mTimer:Lcom/android/server/sip/SipWakeupTimer;
    invoke-static {v0}, Lcom/android/server/sip/SipService;->access$300(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeupTimer;

    move-result-object v0

    mul-int/lit16 v1, p1, 0x3e8

    invoke-virtual {v0, v1, p0}, Lcom/android/server/sip/SipWakeupTimer;->set(ILjava/lang/Runnable;)V

    .line 1003
    return-void
.end method

.method private restartLater()V
    .locals 1

    .prologue
    .line 1111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mRegistered:Z

    .line 1112
    invoke-direct {p0}, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->backoffDuration()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->restart(I)V

    .line 1113
    return-void
.end method

.method private startKeepAliveProcess(I)V
    .locals 4
    .parameter "interval"

    .prologue
    .line 835
    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "start keepalive w interval="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mKeepAliveSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    if-nez v1, :cond_0

    .line 837
    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->duplicate()Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mKeepAliveSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    .line 842
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mKeepAliveSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v1, p1, p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->startKeepAliveProcess(ILcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;)V
    :try_end_0
    .catch Ljavax/sip/SipException; {:try_start_0 .. :try_end_0} :catch_0

    .line 847
    :goto_1
    return-void

    .line 839
    :cond_0
    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mKeepAliveSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->stopKeepAliveProcess()V

    goto :goto_0

    .line 843
    :catch_0
    move-exception v0

    .line 844
    .local v0, e:Ljavax/sip/SipException;
    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to start keepalive w interval="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private stopKeepAliveProcess()V
    .locals 1

    .prologue
    .line 850
    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mKeepAliveSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    if-eqz v0, :cond_0

    .line 851
    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mKeepAliveSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->stopKeepAliveProcess()V

    .line 852
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mKeepAliveSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    .line 854
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mKeepAliveSuccessCount:I

    .line 855
    return-void
.end method


# virtual methods
.method public isRegistered()Z
    .locals 1

    .prologue
    .line 980
    iget-boolean v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mRegistered:Z

    return v0
.end method

.method public onError(ILjava/lang/String;)V
    .locals 3
    .parameter "errorCode"
    .parameter "description"

    .prologue
    .line 906
    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keepalive error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->onResponse(Z)V

    .line 909
    return-void
.end method

.method public onKeepAliveIntervalChanged()V
    .locals 4

    .prologue
    .line 928
    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mKeepAliveSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    if-eqz v1, :cond_0

    .line 929
    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    #calls: Lcom/android/server/sip/SipService;->getKeepAliveInterval()I
    invoke-static {v1}, Lcom/android/server/sip/SipService;->access$1300(Lcom/android/server/sip/SipService;)I

    move-result v0

    .line 931
    .local v0, newInterval:I
    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "restart keepalive w interval="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mKeepAliveSuccessCount:I

    .line 934
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->startKeepAliveProcess(I)V

    .line 936
    .end local v0           #newInterval:I
    :cond_0
    return-void
.end method

.method public onRegistering(Landroid/net/sip/ISipSession;)V
    .locals 3
    .parameter "session"

    .prologue
    .line 1017
    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRegistering(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    monitor-enter v1

    .line 1019
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->notCurrentSession(Landroid/net/sip/ISipSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 1024
    :goto_0
    return-void

    .line 1021
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mRegistered:Z

    .line 1022
    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-virtual {v0, p1}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistering(Landroid/net/sip/ISipSession;)V

    .line 1023
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onRegistrationDone(Landroid/net/sip/ISipSession;I)V
    .locals 7
    .parameter "session"
    .parameter "duration"

    .prologue
    .line 1037
    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onRegistrationDone(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    iget-object v2, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    monitor-enter v2

    .line 1039
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->notCurrentSession(Landroid/net/sip/ISipSession;)Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v2

    .line 1070
    :goto_0
    return-void

    .line 1041
    :cond_0
    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistrationDone(Landroid/net/sip/ISipSession;I)V

    .line 1043
    if-lez p2, :cond_4

    .line 1044
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    mul-int/lit16 v1, p2, 0x3e8

    int-to-long v5, v1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mExpiryTime:J

    .line 1047
    iget-boolean v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mRegistered:Z

    if-nez v1, :cond_3

    .line 1048
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mRegistered:Z

    .line 1050
    add-int/lit8 p2, p2, -0x3c

    .line 1051
    const/16 v1, 0x3c

    if-ge p2, v1, :cond_1

    .line 1052
    const/16 p2, 0x3c

    .line 1054
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->restart(I)V

    .line 1056
    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getLocalProfile()Landroid/net/sip/SipProfile;

    move-result-object v0

    .line 1057
    .local v0, localProfile:Landroid/net/sip/SipProfile;
    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mKeepAliveSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    iget-object v3, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mLocalIp:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/sip/SipService;->access$200(Lcom/android/server/sip/SipService;)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/server/sip/SipService;->isBehindNAT(Ljava/lang/String;)Z
    invoke-static {v1, v3}, Lcom/android/server/sip/SipService;->access$1600(Lcom/android/server/sip/SipService;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/net/sip/SipProfile;->getSendKeepAlive()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1059
    :cond_2
    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    #calls: Lcom/android/server/sip/SipService;->getKeepAliveInterval()I
    invoke-static {v1}, Lcom/android/server/sip/SipService;->access$1300(Lcom/android/server/sip/SipService;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->startKeepAliveProcess(I)V

    .line 1062
    .end local v0           #localProfile:Landroid/net/sip/SipProfile;
    :cond_3
    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mMyWakeLock:Lcom/android/server/sip/SipWakeLock;
    invoke-static {v1}, Lcom/android/server/sip/SipService;->access$400(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeLock;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/sip/SipWakeLock;->release(Ljava/lang/Object;)V

    .line 1069
    :goto_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1064
    :cond_4
    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mRegistered:Z

    .line 1065
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mExpiryTime:J

    .line 1066
    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->TAG:Ljava/lang/String;

    const-string v3, "Refresh registration immediately"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    invoke-virtual {p0}, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public onRegistrationFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;)V
    .locals 3
    .parameter "session"
    .parameter "errorCode"
    .parameter "message"

    .prologue
    .line 1075
    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRegistrationFailed(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Landroid/net/sip/SipErrorCode;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    monitor-enter v1

    .line 1078
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->notCurrentSession(Landroid/net/sip/ISipSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 1095
    :goto_0
    return-void

    .line 1080
    :cond_0
    sparse-switch p2, :sswitch_data_0

    .line 1087
    invoke-direct {p0}, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->restartLater()V

    .line 1090
    :goto_1
    iput p2, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mErrorCode:I

    .line 1091
    iput-object p3, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mErrorMessage:Ljava/lang/String;

    .line 1092
    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistrationFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;)V

    .line 1093
    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mMyWakeLock:Lcom/android/server/sip/SipWakeLock;
    invoke-static {v0}, Lcom/android/server/sip/SipService;->access$400(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeLock;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/sip/SipWakeLock;->release(Ljava/lang/Object;)V

    .line 1094
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1083
    :sswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->TAG:Ljava/lang/String;

    const-string v2, "   pause auto-registration"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    invoke-virtual {p0}, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->stop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1080
    :sswitch_data_0
    .sparse-switch
        -0xc -> :sswitch_0
        -0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public onRegistrationTimeout(Landroid/net/sip/ISipSession;)V
    .locals 3
    .parameter "session"

    .prologue
    .line 1099
    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRegistrationTimeout(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    monitor-enter v1

    .line 1101
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->notCurrentSession(Landroid/net/sip/ISipSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 1108
    :goto_0
    return-void

    .line 1103
    :cond_0
    const/4 v0, -0x5

    iput v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mErrorCode:I

    .line 1104
    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-virtual {v0, p1}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistrationTimeout(Landroid/net/sip/ISipSession;)V

    .line 1105
    invoke-direct {p0}, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->restartLater()V

    .line 1106
    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mMyWakeLock:Lcom/android/server/sip/SipWakeLock;
    invoke-static {v0}, Lcom/android/server/sip/SipService;->access$400(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeLock;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/sip/SipWakeLock;->release(Ljava/lang/Object;)V

    .line 1107
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onResponse(Z)V
    .locals 6
    .parameter "portChanged"

    .prologue
    const/16 v5, 0xa

    .line 860
    iget-object v2, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    monitor-enter v2

    .line 861
    if-eqz p1, :cond_3

    .line 862
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    #calls: Lcom/android/server/sip/SipService;->getKeepAliveInterval()I
    invoke-static {v1}, Lcom/android/server/sip/SipService;->access$1300(Lcom/android/server/sip/SipService;)I

    move-result v0

    .line 863
    .local v0, interval:I
    iget v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mKeepAliveSuccessCount:I

    if-ge v1, v5, :cond_2

    .line 864
    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "keepalive doesn\'t work with interval "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", past success count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mKeepAliveSuccessCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    if-le v0, v5, :cond_0

    .line 868
    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    iget-object v3, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v3}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getLocalProfile()Landroid/net/sip/SipProfile;

    move-result-object v3

    #calls: Lcom/android/server/sip/SipService;->restartPortMappingLifetimeMeasurement(Landroid/net/sip/SipProfile;I)V
    invoke-static {v1, v3, v0}, Lcom/android/server/sip/SipService;->access$1400(Lcom/android/server/sip/SipService;Landroid/net/sip/SipProfile;I)V

    .line 870
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mKeepAliveSuccessCount:I

    .line 888
    .end local v0           #interval:I
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mRunning:Z

    if-eqz v1, :cond_1

    if-nez p1, :cond_4

    :cond_1
    monitor-exit v2

    .line 900
    :goto_1
    return-void

    .line 874
    .restart local v0       #interval:I
    :cond_2
    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "keep keepalive going with interval "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", past success count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mKeepAliveSuccessCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    iget v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mKeepAliveSuccessCount:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mKeepAliveSuccessCount:I

    goto :goto_0

    .line 899
    .end local v0           #interval:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 883
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    iget-object v3, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v3}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getLocalProfile()Landroid/net/sip/SipProfile;

    move-result-object v3

    #calls: Lcom/android/server/sip/SipService;->startPortMappingLifetimeMeasurement(Landroid/net/sip/SipProfile;)V
    invoke-static {v1, v3}, Lcom/android/server/sip/SipService;->access$1500(Lcom/android/server/sip/SipService;Landroid/net/sip/SipProfile;)V

    .line 885
    iget v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mKeepAliveSuccessCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mKeepAliveSuccessCount:I

    goto :goto_0

    .line 893
    :cond_4
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mKeepAliveSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    .line 897
    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mMyWakeLock:Lcom/android/server/sip/SipWakeLock;
    invoke-static {v1}, Lcom/android/server/sip/SipService;->access$400(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeLock;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v1, v3}, Lcom/android/server/sip/SipWakeLock;->acquire(Ljava/lang/Object;)V

    .line 898
    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    const/16 v3, 0xe10

    invoke-virtual {v1, v3}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->register(I)V

    .line 899
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public run()V
    .locals 3

    .prologue
    .line 986
    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    monitor-enter v1

    .line 987
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mRunning:Z

    if-nez v0, :cond_0

    monitor-exit v1

    .line 997
    :goto_0
    return-void

    .line 989
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mErrorCode:I

    .line 990
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mErrorMessage:Ljava/lang/String;

    .line 991
    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "registering"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mConnected:Z
    invoke-static {v0}, Lcom/android/server/sip/SipService;->access$500(Lcom/android/server/sip/SipService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 993
    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mMyWakeLock:Lcom/android/server/sip/SipWakeLock;
    invoke-static {v0}, Lcom/android/server/sip/SipService;->access$400(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeLock;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v0, v2}, Lcom/android/server/sip/SipWakeLock;->acquire(Ljava/lang/Object;)V

    .line 994
    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    const/16 v2, 0xe10

    invoke-virtual {v0, v2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->register(I)V

    .line 996
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setListener(Landroid/net/sip/ISipSessionListener;)V
    .locals 9
    .parameter "listener"

    .prologue
    .line 939
    iget-object v4, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    monitor-enter v4

    .line 940
    :try_start_0
    iget-object v3, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-virtual {v3, p1}, Lcom/android/server/sip/SipSessionListenerProxy;->setListener(Landroid/net/sip/ISipSessionListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 943
    :try_start_1
    iget-object v3, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    if-nez v3, :cond_1

    const/4 v1, 0x0

    .line 946
    .local v1, state:I
    :goto_0
    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    .line 948
    :cond_0
    iget-object v3, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    iget-object v5, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v3, v5}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistering(Landroid/net/sip/ISipSession;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 976
    .end local v1           #state:I
    :goto_1
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 977
    return-void

    .line 943
    :cond_1
    :try_start_3
    iget-object v3, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v3}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getState()I

    move-result v1

    goto :goto_0

    .line 949
    .restart local v1       #state:I
    :cond_2
    iget-boolean v3, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mRegistered:Z

    if-eqz v3, :cond_3

    .line 950
    iget-wide v5, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mExpiryTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    long-to-int v0, v5

    .line 952
    .local v0, duration:I
    iget-object v3, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    iget-object v5, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v3, v5, v0}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistrationDone(Landroid/net/sip/ISipSession;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 973
    .end local v0           #duration:I
    .end local v1           #state:I
    :catch_0
    move-exception v2

    .line 974
    .local v2, t:Ljava/lang/Throwable;
    :try_start_4
    iget-object v3, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setListener(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 976
    .end local v2           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    .line 953
    .restart local v1       #state:I
    :cond_3
    :try_start_5
    iget v3, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mErrorCode:I

    if-eqz v3, :cond_5

    .line 954
    iget v3, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mErrorCode:I

    const/4 v5, -0x5

    if-ne v3, v5, :cond_4

    .line 955
    iget-object v3, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    iget-object v5, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v3, v5}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistrationTimeout(Landroid/net/sip/ISipSession;)V

    goto :goto_1

    .line 957
    :cond_4
    iget-object v3, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    iget-object v5, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget v6, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mErrorCode:I

    iget-object v7, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {v3, v5, v6, v7}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistrationFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;)V

    goto :goto_1

    .line 960
    :cond_5
    iget-object v3, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mConnected:Z
    invoke-static {v3}, Lcom/android/server/sip/SipService;->access$500(Lcom/android/server/sip/SipService;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 961
    iget-object v3, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    iget-object v5, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    const/16 v6, -0xa

    const-string/jumbo v7, "no data connection"

    invoke-virtual {v3, v5, v6, v7}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistrationFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;)V

    goto :goto_1

    .line 964
    :cond_6
    iget-boolean v3, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mRunning:Z

    if-nez v3, :cond_7

    .line 965
    iget-object v3, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    iget-object v5, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    const/4 v6, -0x4

    const-string/jumbo v7, "registration not running"

    invoke-virtual {v3, v5, v6, v7}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistrationFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;)V

    goto :goto_1

    .line 969
    :cond_7
    iget-object v3, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    iget-object v5, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    const/16 v6, -0x9

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v5, v6, v7}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistrationFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1
.end method

.method public start(Lcom/android/server/sip/SipSessionGroup;)V
    .locals 2
    .parameter "group"

    .prologue
    const/4 v1, 0x1

    .line 817
    iget-boolean v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mRunning:Z

    if-nez v0, :cond_0

    .line 818
    iput-boolean v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mRunning:Z

    .line 819
    iput v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mBackoff:I

    .line 820
    invoke-virtual {p1, p0}, Lcom/android/server/sip/SipSessionGroup;->createSession(Landroid/net/sip/ISipSessionListener;)Landroid/net/sip/ISipSession;

    move-result-object v0

    check-cast v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iput-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    .line 823
    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    if-nez v0, :cond_1

    .line 832
    :cond_0
    :goto_0
    return-void

    .line 828
    :cond_1
    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mMyWakeLock:Lcom/android/server/sip/SipWakeLock;
    invoke-static {v0}, Lcom/android/server/sip/SipService;->access$400(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeLock;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v0, v1}, Lcom/android/server/sip/SipWakeLock;->acquire(Ljava/lang/Object;)V

    .line 829
    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->unregister()V

    .line 830
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SipAutoReg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getLocalProfile()Landroid/net/sip/SipProfile;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->TAG:Ljava/lang/String;

    goto :goto_0
.end method

.method public stop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 912
    iget-boolean v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mRunning:Z

    if-nez v0, :cond_0

    .line 925
    :goto_0
    return-void

    .line 913
    :cond_0
    iput-boolean v2, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mRunning:Z

    .line 914
    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mMyWakeLock:Lcom/android/server/sip/SipWakeLock;
    invoke-static {v0}, Lcom/android/server/sip/SipService;->access$400(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeLock;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v0, v1}, Lcom/android/server/sip/SipWakeLock;->release(Ljava/lang/Object;)V

    .line 915
    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    if-eqz v0, :cond_1

    .line 916
    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->setListener(Landroid/net/sip/ISipSessionListener;)V

    .line 917
    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mConnected:Z
    invoke-static {v0}, Lcom/android/server/sip/SipService;->access$500(Lcom/android/server/sip/SipService;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mRegistered:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->unregister()V

    .line 920
    :cond_1
    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mTimer:Lcom/android/server/sip/SipWakeupTimer;
    invoke-static {v0}, Lcom/android/server/sip/SipService;->access$300(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeupTimer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/sip/SipWakeupTimer;->cancel(Ljava/lang/Runnable;)V

    .line 921
    invoke-direct {p0}, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->stopKeepAliveProcess()V

    .line 923
    iput-boolean v2, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mRegistered:Z

    .line 924
    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-virtual {v0}, Lcom/android/server/sip/SipSessionListenerProxy;->getListener()Landroid/net/sip/ISipSessionListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->setListener(Landroid/net/sip/ISipSessionListener;)V

    goto :goto_0
.end method
