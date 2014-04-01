.class Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;
.super Lbaidu/net/sip/SipSessionAdapter;
.source "SipService.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/baidu/server/sip/SipSessionGroup$KeepAliveProcessCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/server/sip/SipService;
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

.field private mKeepAliveSession:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

.field private mKeepAliveSuccessCount:I

.field private mProxy:Lcom/baidu/server/sip/SipSessionListenerProxy;

.field private mRegistered:Z

.field private mRunning:Z

.field private mSession:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

.field final synthetic this$0:Lcom/baidu/server/sip/SipService;


# direct methods
.method private constructor <init>(Lcom/baidu/server/sip/SipService;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 845
    iput-object p1, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/baidu/server/sip/SipService;

    invoke-direct {p0}, Lbaidu/net/sip/SipSessionAdapter;-><init>()V

    .line 848
    const-string v0, "SipAutoReg"

    iput-object v0, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->TAG:Ljava/lang/String;

    .line 852
    new-instance v0, Lcom/baidu/server/sip/SipSessionListenerProxy;

    invoke-direct {v0}, Lcom/baidu/server/sip/SipSessionListenerProxy;-><init>()V

    iput-object v0, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->mProxy:Lcom/baidu/server/sip/SipSessionListenerProxy;

    .line 853
    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->mBackoff:I

    .line 858
    iput-boolean v1, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->mRunning:Z

    .line 860
    iput v1, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->mKeepAliveSuccessCount:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/server/sip/SipService;Lcom/baidu/server/sip/SipService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 845
    invoke-direct {p0, p1}, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;-><init>(Lcom/baidu/server/sip/SipService;)V

    return-void
.end method

.method private backoffDuration()I
    .locals 2

    .prologue
    .line 1066
    iget v1, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->mBackoff:I

    mul-int/lit8 v0, v1, 0xa

    .line 1067
    .local v0, duration:I
    const/16 v1, 0xe10

    if-le v0, v1, :cond_0

    .line 1068
    const/16 v0, 0xe10

    .line 1072
    :goto_0
    return v0

    .line 1070
    :cond_0
    iget v1, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->mBackoff:I

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->mBackoff:I

    goto :goto_0
.end method

.method private getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 863
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private notCurrentSession(Lbaidu/net/sip/ISipSession;)Z
    .locals 3
    .parameter "session"

    .prologue
    const/4 v1, 0x1

    .line 1087
    iget-object v0, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    if-eq p1, v0, :cond_0

    move-object v0, p1

    .line 1088
    check-cast v0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->setListener(Lbaidu/net/sip/ISipSessionListener;)V

    .line 1089
    iget-object v0, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/baidu/server/sip/SipService;

    #getter for: Lcom/baidu/server/sip/SipService;->mMyWakeLock:Lcom/baidu/server/sip/SipWakeLock;
    invoke-static {v0}, Lcom/baidu/server/sip/SipService;->access$400(Lcom/baidu/server/sip/SipService;)Lcom/baidu/server/sip/SipWakeLock;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/server/sip/SipWakeLock;->release(Ljava/lang/Object;)V

    .line 1092
    :goto_0
    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->mRunning:Z

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
    .line 1060
    iget-object v0, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->TAG:Ljava/lang/String;

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

    .line 1061
    iget-object v0, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/baidu/server/sip/SipService;

    #getter for: Lcom/baidu/server/sip/SipService;->mTimer:Lcom/baidu/server/sip/SipWakeupTimer;
    invoke-static {v0}, Lcom/baidu/server/sip/SipService;->access$300(Lcom/baidu/server/sip/SipService;)Lcom/baidu/server/sip/SipWakeupTimer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/server/sip/SipWakeupTimer;->cancel(Ljava/lang/Runnable;)V

    .line 1062
    iget-object v0, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/baidu/server/sip/SipService;

    #getter for: Lcom/baidu/server/sip/SipService;->mTimer:Lcom/baidu/server/sip/SipWakeupTimer;
    invoke-static {v0}, Lcom/baidu/server/sip/SipService;->access$300(Lcom/baidu/server/sip/SipService;)Lcom/baidu/server/sip/SipWakeupTimer;

    move-result-object v0

    mul-int/lit16 v1, p1, 0x3e8

    invoke-virtual {v0, v1, p0}, Lcom/baidu/server/sip/SipWakeupTimer;->set(ILjava/lang/Runnable;)V

    .line 1063
    return-void
.end method

.method private restartLater()V
    .locals 2

    .prologue
    .line 1171
    iget-object v0, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->TAG:Ljava/lang/String;

    const-string v1, "<====> AutoRegistrationProcess::restartLater()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1172
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->mRegistered:Z

    .line 1173
    invoke-direct {p0}, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->backoffDuration()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->restart(I)V

    .line 1174
    return-void
.end method

.method private startKeepAliveProcess(I)V
    .locals 4
    .parameter "interval"

    .prologue
    .line 888
    iget-object v1, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->mKeepAliveSession:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    if-nez v1, :cond_0

    .line 889
    iget-object v1, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v1}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->duplicate()Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->mKeepAliveSession:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    .line 894
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->mKeepAliveSession:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v1, p1, p0}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->startKeepAliveProcess(ILcom/baidu/server/sip/SipSessionGroup$KeepAliveProcessCallback;)V
    :try_end_0
    .catch Ljavax/sip/SipException; {:try_start_0 .. :try_end_0} :catch_0

    .line 899
    :goto_1
    return-void

    .line 891
    :cond_0
    iget-object v1, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->mKeepAliveSession:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v1}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->stopKeepAliveProcess()V

    goto :goto_0

    .line 895
    :catch_0
    move-exception v0

    .line 896
    .local v0, e:Ljavax/sip/SipException;
    iget-object v1, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->TAG:Ljava/lang/String;

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
    .locals 2

    .prologue
    .line 902
    iget-object v0, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->TAG:Ljava/lang/String;

    const-string v1, "<====> AutoRegistrationProcess::stopKeepAliveProcess()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    iget-object v0, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->mKeepAliveSession:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    if-eqz v0, :cond_0

    .line 904
    iget-object v0, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->mKeepAliveSession:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v0}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->stopKeepAliveProcess()V

    .line 905
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->mKeepAliveSession:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    .line 907
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->mKeepAliveSuccessCount:I

    .line 908
    return-void
.end method


# virtual methods
.method public isRegistered()Z
    .locals 1

    .prologue
    .line 1039
    iget-boolean v0, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->mRegistered:Z

    return v0
.end method

.method public onError(ILjava/lang/String;)V
    .locals 1
    .parameter "errorCode"
    .parameter "description"

    .prologue
    .line 963
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->onResponse(Z)V

    .line 964
    return-void
.end method

.method public onKeepAliveIntervalChanged()V
    .locals 3

    .prologue
    .line 985
    iget-object v1, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->TAG:Ljava/lang/String;

    const-string v2, "====> AutoRegistrationProcess::onKeepAliveIntervalChanged()"

    invoke-static {v1, v2}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    iget-object v1, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->mKeepAliveSession:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    if-eqz v1, :cond_0

    .line 987
    iget-object v1, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/baidu/server/sip/SipService;

    #calls: Lcom/baidu/server/sip/SipService;->getKeepAliveInterval()I
    invoke-static {v1}, Lcom/baidu/server/sip/SipService;->access$1400(Lcom/baidu/server/sip/SipService;)I

    move-result v0

    .line 991
    .local v0, newInterval:I
    const/4 v1, 0x0

    iput v1, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->mKeepAliveSuccessCount:I

    .line 992
    invoke-direct {p0, v0}, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->startKeepAliveProcess(I)V

    .line 994
    .end local v0           #newInterval:I
    :cond_0
    iget-object v1, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->TAG:Ljava/lang/String;

    const-string v2, "<==== AutoRegistrationProcess::onKeepAliveIntervalChanged()"

    invoke-static {v1, v2}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    return-void
.end method

.method public onRegistering(Lbaidu/net/sip/ISipSession;)V
    .locals 2
    .parameter "session"

    .prologue
    .line 1078
    iget-object v1, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/baidu/server/sip/SipService;

    monitor-enter v1

    .line 1079
    :try_start_0
    invoke-direct {p0, p1}, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->notCurrentSession(Lbaidu/net/sip/ISipSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 1084
    :goto_0
    return-void

    .line 1081
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->mRegistered:Z

    .line 1082
    iget-object v0, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->mProxy:Lcom/baidu/server/sip/SipSessionListenerProxy;

    invoke-virtual {v0, p1}, Lcom/baidu/server/sip/SipSessionListenerProxy;->onRegistering(Lbaidu/net/sip/ISipSession;)V

    .line 1083
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onRegistrationDone(Lbaidu/net/sip/ISipSession;I)V
    .locals 7
    .parameter "session"
    .parameter "duration"

    .prologue
    .line 1098
    iget-object v2, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/baidu/server/sip/SipService;

    monitor-enter v2

    .line 1099
    :try_start_0
    invoke-direct {p0, p1}, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->notCurrentSession(Lbaidu/net/sip/ISipSession;)Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v2

    .line 1130
    :goto_0
    return-void

    .line 1101
    :cond_0
    iget-object v1, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->mProxy:Lcom/baidu/server/sip/SipSessionListenerProxy;

    invoke-virtual {v1, p1, p2}, Lcom/baidu/server/sip/SipSessionListenerProxy;->onRegistrationDone(Lbaidu/net/sip/ISipSession;I)V

    .line 1103
    if-lez p2, :cond_4

    .line 1104
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    mul-int/lit16 v1, p2, 0x3e8

    int-to-long v5, v1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->mExpiryTime:J

    .line 1107
    iget-boolean v1, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->mRegistered:Z

    if-nez v1, :cond_3

    .line 1108
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->mRegistered:Z

    .line 1110
    add-int/lit8 p2, p2, -0x3c

    .line 1111
    const/16 v1, 0x3c

    if-ge p2, v1, :cond_1

    .line 1112
    const/16 p2, 0x3c

    .line 1114
    :cond_1
    invoke-direct {p0, p2}, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->restart(I)V

    .line 1116
    iget-object v1, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v1}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->getLocalProfile()Lbaidu/net/sip/SipProfile;

    move-result-object v0

    .line 1117
    .local v0, localProfile:Lbaidu/net/sip/SipProfile;
    iget-object v1, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->mKeepAliveSession:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/baidu/server/sip/SipService;

    iget-object v3, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/baidu/server/sip/SipService;

    #getter for: Lcom/baidu/server/sip/SipService;->mLocalIp:Ljava/lang/String;
    invoke-static {v3}, Lcom/baidu/server/sip/SipService;->access$200(Lcom/baidu/server/sip/SipService;)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/baidu/server/sip/SipService;->isBehindNAT(Ljava/lang/String;)Z
    invoke-static {v1, v3}, Lcom/baidu/server/sip/SipService;->access$1700(Lcom/baidu/server/sip/SipService;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lbaidu/net/sip/SipProfile;->getSendKeepAlive()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1119
    :cond_2
    iget-object v1, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/baidu/server/sip/SipService;

    #calls: Lcom/baidu/server/sip/SipService;->getKeepAliveInterval()I
    invoke-static {v1}, Lcom/baidu/server/sip/SipService;->access$1400(Lcom/baidu/server/sip/SipService;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->startKeepAliveProcess(I)V

    .line 1122
    .end local v0           #localProfile:Lbaidu/net/sip/SipProfile;
    :cond_3
    iget-object v1, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/baidu/server/sip/SipService;

    #getter for: Lcom/baidu/server/sip/SipService;->mMyWakeLock:Lcom/baidu/server/sip/SipWakeLock;
    invoke-static {v1}, Lcom/baidu/server/sip/SipService;->access$400(Lcom/baidu/server/sip/SipService;)Lcom/baidu/server/sip/SipWakeLock;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/baidu/server/sip/SipWakeLock;->release(Ljava/lang/Object;)V

    .line 1129
    :goto_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1124
    :cond_4
    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->mRegistered:Z

    .line 1125
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->mExpiryTime:J

    .line 1127
    invoke-virtual {p0}, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public onRegistrationFailed(Lbaidu/net/sip/ISipSession;ILjava/lang/String;)V
    .locals 2
    .parameter "session"
    .parameter "errorCode"
    .parameter "message"

    .prologue
    .line 1137
    iget-object v1, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/baidu/server/sip/SipService;

    monitor-enter v1

    .line 1138
    :try_start_0
    invoke-direct {p0, p1}, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->notCurrentSession(Lbaidu/net/sip/ISipSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 1155
    :goto_0
    return-void

    .line 1140
    :cond_0
    sparse-switch p2, :sswitch_data_0

    .line 1147
    invoke-direct {p0}, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->restartLater()V

    .line 1150
    :goto_1
    iput p2, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->mErrorCode:I

    .line 1151
    iput-object p3, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->mErrorMessage:Ljava/lang/String;

    .line 1152
    iget-object v0, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->mProxy:Lcom/baidu/server/sip/SipSessionListenerProxy;

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/server/sip/SipSessionListenerProxy;->onRegistrationFailed(Lbaidu/net/sip/ISipSession;ILjava/lang/String;)V

    .line 1153
    iget-object v0, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/baidu/server/sip/SipService;

    #getter for: Lcom/baidu/server/sip/SipService;->mMyWakeLock:Lcom/baidu/server/sip/SipWakeLock;
    invoke-static {v0}, Lcom/baidu/server/sip/SipService;->access$400(Lcom/baidu/server/sip/SipService;)Lcom/baidu/server/sip/SipWakeLock;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/server/sip/SipWakeLock;->release(Ljava/lang/Object;)V

    .line 1154
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1144
    :sswitch_0
    :try_start_1
    invoke-virtual {p0}, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->stop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1140
    :sswitch_data_0
    .sparse-switch
        -0xc -> :sswitch_0
        -0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public onRegistrationTimeout(Lbaidu/net/sip/ISipSession;)V
    .locals 2
    .parameter "session"

    .prologue
    .line 1160
    iget-object v1, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/baidu/server/sip/SipService;

    monitor-enter v1

    .line 1161
    :try_start_0
    invoke-direct {p0, p1}, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->notCurrentSession(Lbaidu/net/sip/ISipSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 1168
    :goto_0
    return-void

    .line 1163
    :cond_0
    const/4 v0, -0x5

    iput v0, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->mErrorCode:I

    .line 1164
    iget-object v0, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->mProxy:Lcom/baidu/server/sip/SipSessionListenerProxy;

    invoke-virtual {v0, p1}, Lcom/baidu/server/sip/SipSessionListenerProxy;->onRegistrationTimeout(Lbaidu/net/sip/ISipSession;)V

    .line 1165
    invoke-direct {p0}, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->restartLater()V

    .line 1166
    iget-object v0, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/baidu/server/sip/SipService;

    #getter for: Lcom/baidu/server/sip/SipService;->mMyWakeLock:Lcom/baidu/server/sip/SipWakeLock;
    invoke-static {v0}, Lcom/baidu/server/sip/SipService;->access$400(Lcom/baidu/server/sip/SipService;)Lcom/baidu/server/sip/SipWakeLock;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/server/sip/SipWakeLock;->release(Ljava/lang/Object;)V

    .line 1167
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

    .line 913
    iget-object v1, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->TAG:Ljava/lang/String;

    const-string v2, "====> AutoRegistrationProcess::onResponse()"

    invoke-static {v1, v2}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    iget-object v2, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/baidu/server/sip/SipService;

    monitor-enter v2

    .line 915
    if-eqz p1, :cond_3

    .line 916
    :try_start_0
    iget-object v1, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/baidu/server/sip/SipService;

    #calls: Lcom/baidu/server/sip/SipService;->getKeepAliveInterval()I
    invoke-static {v1}, Lcom/baidu/server/sip/SipService;->access$1400(Lcom/baidu/server/sip/SipService;)I

    move-result v0

    .line 917
    .local v0, interval:I
    iget v1, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->mKeepAliveSuccessCount:I

    if-ge v1, v5, :cond_2

    .line 918
    iget-object v1, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->TAG:Ljava/lang/String;

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

    iget v4, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->mKeepAliveSuccessCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    if-le v0, v5, :cond_0

    .line 922
    iget-object v1, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/baidu/server/sip/SipService;

    iget-object v3, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v3}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->getLocalProfile()Lbaidu/net/sip/SipProfile;

    move-result-object v3

    #calls: Lcom/baidu/server/sip/SipService;->restartPortMappingLifetimeMeasurement(Lbaidu/net/sip/SipProfile;I)V
    invoke-static {v1, v3, v0}, Lcom/baidu/server/sip/SipService;->access$1500(Lcom/baidu/server/sip/SipService;Lbaidu/net/sip/SipProfile;I)V

    .line 924
    const/4 v1, 0x0

    iput v1, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->mKeepAliveSuccessCount:I

    .line 942
    .end local v0           #interval:I
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->mRunning:Z

    if-eqz v1, :cond_1

    if-nez p1, :cond_4

    :cond_1
    monitor-exit v2

    .line 955
    :goto_1
    return-void

    .line 932
    .restart local v0       #interval:I
    :cond_2
    iget v1, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->mKeepAliveSuccessCount:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->mKeepAliveSuccessCount:I

    goto :goto_0

    .line 953
    .end local v0           #interval:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 937
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/baidu/server/sip/SipService;

    iget-object v3, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v3}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->getLocalProfile()Lbaidu/net/sip/SipProfile;

    move-result-object v3

    #calls: Lcom/baidu/server/sip/SipService;->startPortMappingLifetimeMeasurement(Lbaidu/net/sip/SipProfile;)V
    invoke-static {v1, v3}, Lcom/baidu/server/sip/SipService;->access$1600(Lcom/baidu/server/sip/SipService;Lbaidu/net/sip/SipProfile;)V

    .line 939
    iget v1, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->mKeepAliveSuccessCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->mKeepAliveSuccessCount:I

    goto :goto_0

    .line 947
    :cond_4
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->mKeepAliveSession:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    .line 951
    iget-object v1, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/baidu/server/sip/SipService;

    #getter for: Lcom/baidu/server/sip/SipService;->mMyWakeLock:Lcom/baidu/server/sip/SipWakeLock;
    invoke-static {v1}, Lcom/baidu/server/sip/SipService;->access$400(Lcom/baidu/server/sip/SipService;)Lcom/baidu/server/sip/SipWakeLock;

    move-result-object v1

    iget-object v3, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v1, v3}, Lcom/baidu/server/sip/SipWakeLock;->acquire(Ljava/lang/Object;)V

    .line 952
    iget-object v1, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    const/16 v3, 0xe10

    invoke-virtual {v1, v3}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->register(I)V

    .line 953
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 954
    iget-object v1, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->TAG:Ljava/lang/String;

    const-string v2, "<==== AutoRegistrationProcess::onResponse()"

    invoke-static {v1, v2}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public run()V
    .locals 3

    .prologue
    .line 1045
    iget-object v0, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->TAG:Ljava/lang/String;

    const-string v1, "<====> AutoRegistrationProcess::run()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1046
    iget-object v1, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/baidu/server/sip/SipService;

    monitor-enter v1

    .line 1047
    :try_start_0
    iget-boolean v0, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->mRunning:Z

    if-nez v0, :cond_0

    monitor-exit v1

    .line 1057
    :goto_0
    return-void

    .line 1049
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->mErrorCode:I

    .line 1050
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->mErrorMessage:Ljava/lang/String;

    .line 1052
    iget-object v0, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/baidu/server/sip/SipService;

    #getter for: Lcom/baidu/server/sip/SipService;->mConnected:Z
    invoke-static {v0}, Lcom/baidu/server/sip/SipService;->access$500(Lcom/baidu/server/sip/SipService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1053
    iget-object v0, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/baidu/server/sip/SipService;

    #getter for: Lcom/baidu/server/sip/SipService;->mMyWakeLock:Lcom/baidu/server/sip/SipWakeLock;
    invoke-static {v0}, Lcom/baidu/server/sip/SipService;->access$400(Lcom/baidu/server/sip/SipService;)Lcom/baidu/server/sip/SipWakeLock;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v0, v2}, Lcom/baidu/server/sip/SipWakeLock;->acquire(Ljava/lang/Object;)V

    .line 1054
    iget-object v0, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    const/16 v2, 0xe10

    invoke-virtual {v0, v2}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->register(I)V

    .line 1056
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

.method public setListener(Lbaidu/net/sip/ISipSessionListener;)V
    .locals 9
    .parameter "listener"

    .prologue
    .line 998
    iget-object v4, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/baidu/server/sip/SipService;

    monitor-enter v4

    .line 999
    :try_start_0
    iget-object v3, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->mProxy:Lcom/baidu/server/sip/SipSessionListenerProxy;

    invoke-virtual {v3, p1}, Lcom/baidu/server/sip/SipSessionListenerProxy;->setListener(Lbaidu/net/sip/ISipSessionListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1002
    :try_start_1
    iget-object v3, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    if-nez v3, :cond_1

    const/4 v1, 0x0

    .line 1005
    .local v1, state:I
    :goto_0
    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    .line 1007
    :cond_0
    iget-object v3, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->mProxy:Lcom/baidu/server/sip/SipSessionListenerProxy;

    iget-object v5, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v3, v5}, Lcom/baidu/server/sip/SipSessionListenerProxy;->onRegistering(Lbaidu/net/sip/ISipSession;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 1035
    .end local v1           #state:I
    :goto_1
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1036
    return-void

    .line 1002
    :cond_1
    :try_start_3
    iget-object v3, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v3}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->getState()I

    move-result v1

    goto :goto_0

    .line 1008
    .restart local v1       #state:I
    :cond_2
    iget-boolean v3, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->mRegistered:Z

    if-eqz v3, :cond_3

    .line 1009
    iget-wide v5, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->mExpiryTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    long-to-int v0, v5

    .line 1011
    .local v0, duration:I
    iget-object v3, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->mProxy:Lcom/baidu/server/sip/SipSessionListenerProxy;

    iget-object v5, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v3, v5, v0}, Lcom/baidu/server/sip/SipSessionListenerProxy;->onRegistrationDone(Lbaidu/net/sip/ISipSession;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 1032
    .end local v0           #duration:I
    .end local v1           #state:I
    :catch_0
    move-exception v2

    .line 1033
    .local v2, t:Ljava/lang/Throwable;
    :try_start_4
    iget-object v3, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->TAG:Ljava/lang/String;

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

    .line 1035
    .end local v2           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    .line 1012
    .restart local v1       #state:I
    :cond_3
    :try_start_5
    iget v3, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->mErrorCode:I

    if-eqz v3, :cond_5

    .line 1013
    iget v3, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->mErrorCode:I

    const/4 v5, -0x5

    if-ne v3, v5, :cond_4

    .line 1014
    iget-object v3, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->mProxy:Lcom/baidu/server/sip/SipSessionListenerProxy;

    iget-object v5, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v3, v5}, Lcom/baidu/server/sip/SipSessionListenerProxy;->onRegistrationTimeout(Lbaidu/net/sip/ISipSession;)V

    goto :goto_1

    .line 1016
    :cond_4
    iget-object v3, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->mProxy:Lcom/baidu/server/sip/SipSessionListenerProxy;

    iget-object v5, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    iget v6, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->mErrorCode:I

    iget-object v7, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {v3, v5, v6, v7}, Lcom/baidu/server/sip/SipSessionListenerProxy;->onRegistrationFailed(Lbaidu/net/sip/ISipSession;ILjava/lang/String;)V

    goto :goto_1

    .line 1019
    :cond_5
    iget-object v3, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/baidu/server/sip/SipService;

    #getter for: Lcom/baidu/server/sip/SipService;->mConnected:Z
    invoke-static {v3}, Lcom/baidu/server/sip/SipService;->access$500(Lcom/baidu/server/sip/SipService;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1020
    iget-object v3, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->mProxy:Lcom/baidu/server/sip/SipSessionListenerProxy;

    iget-object v5, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    const/16 v6, -0xa

    const-string/jumbo v7, "no data connection"

    invoke-virtual {v3, v5, v6, v7}, Lcom/baidu/server/sip/SipSessionListenerProxy;->onRegistrationFailed(Lbaidu/net/sip/ISipSession;ILjava/lang/String;)V

    goto :goto_1

    .line 1023
    :cond_6
    iget-boolean v3, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->mRunning:Z

    if-nez v3, :cond_7

    .line 1024
    iget-object v3, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->mProxy:Lcom/baidu/server/sip/SipSessionListenerProxy;

    iget-object v5, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    const/4 v6, -0x4

    const-string/jumbo v7, "registration not running"

    invoke-virtual {v3, v5, v6, v7}, Lcom/baidu/server/sip/SipSessionListenerProxy;->onRegistrationFailed(Lbaidu/net/sip/ISipSession;ILjava/lang/String;)V

    goto :goto_1

    .line 1028
    :cond_7
    iget-object v3, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->mProxy:Lcom/baidu/server/sip/SipSessionListenerProxy;

    iget-object v5, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    const/16 v6, -0x9

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v5, v6, v7}, Lcom/baidu/server/sip/SipSessionListenerProxy;->onRegistrationFailed(Lbaidu/net/sip/ISipSession;ILjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1
.end method

.method public start(Lcom/baidu/server/sip/SipSessionGroup;)V
    .locals 3
    .parameter "group"

    .prologue
    const/4 v2, 0x1

    .line 867
    iget-object v0, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->TAG:Ljava/lang/String;

    const-string v1, "====> AutoRegistrationProcess::start()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    iget-boolean v0, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->mRunning:Z

    if-nez v0, :cond_1

    .line 869
    iput-boolean v2, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->mRunning:Z

    .line 870
    iput v2, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->mBackoff:I

    .line 871
    invoke-virtual {p1, p0}, Lcom/baidu/server/sip/SipSessionGroup;->createSession(Lbaidu/net/sip/ISipSessionListener;)Lbaidu/net/sip/ISipSession;

    move-result-object v0

    check-cast v0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    iput-object v0, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    .line 874
    iget-object v0, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    if-nez v0, :cond_0

    .line 884
    :goto_0
    return-void

    .line 879
    :cond_0
    iget-object v0, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/baidu/server/sip/SipService;

    #getter for: Lcom/baidu/server/sip/SipService;->mMyWakeLock:Lcom/baidu/server/sip/SipWakeLock;
    invoke-static {v0}, Lcom/baidu/server/sip/SipService;->access$400(Lcom/baidu/server/sip/SipService;)Lcom/baidu/server/sip/SipWakeLock;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v0, v1}, Lcom/baidu/server/sip/SipWakeLock;->acquire(Ljava/lang/Object;)V

    .line 880
    iget-object v0, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v0}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->unregister()V

    .line 883
    :cond_1
    iget-object v0, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->TAG:Ljava/lang/String;

    const-string v1, "<==== AutoRegistrationProcess::start()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 967
    iget-object v0, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->TAG:Ljava/lang/String;

    const-string v1, "====> AutoRegistrationProcess::stop()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    iget-boolean v0, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->mRunning:Z

    if-nez v0, :cond_0

    .line 982
    :goto_0
    return-void

    .line 969
    :cond_0
    iput-boolean v2, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->mRunning:Z

    .line 970
    iget-object v0, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/baidu/server/sip/SipService;

    #getter for: Lcom/baidu/server/sip/SipService;->mMyWakeLock:Lcom/baidu/server/sip/SipWakeLock;
    invoke-static {v0}, Lcom/baidu/server/sip/SipService;->access$400(Lcom/baidu/server/sip/SipService;)Lcom/baidu/server/sip/SipWakeLock;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v0, v1}, Lcom/baidu/server/sip/SipWakeLock;->release(Ljava/lang/Object;)V

    .line 971
    iget-object v0, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    if-eqz v0, :cond_1

    .line 972
    iget-object v0, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->setListener(Lbaidu/net/sip/ISipSessionListener;)V

    .line 973
    iget-object v0, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/baidu/server/sip/SipService;

    #getter for: Lcom/baidu/server/sip/SipService;->mConnected:Z
    invoke-static {v0}, Lcom/baidu/server/sip/SipService;->access$500(Lcom/baidu/server/sip/SipService;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->mRegistered:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v0}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->unregister()V

    .line 976
    :cond_1
    iget-object v0, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/baidu/server/sip/SipService;

    #getter for: Lcom/baidu/server/sip/SipService;->mTimer:Lcom/baidu/server/sip/SipWakeupTimer;
    invoke-static {v0}, Lcom/baidu/server/sip/SipService;->access$300(Lcom/baidu/server/sip/SipService;)Lcom/baidu/server/sip/SipWakeupTimer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/server/sip/SipWakeupTimer;->cancel(Ljava/lang/Runnable;)V

    .line 977
    invoke-direct {p0}, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->stopKeepAliveProcess()V

    .line 979
    iput-boolean v2, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->mRegistered:Z

    .line 980
    iget-object v0, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->mProxy:Lcom/baidu/server/sip/SipSessionListenerProxy;

    invoke-virtual {v0}, Lcom/baidu/server/sip/SipSessionListenerProxy;->getListener()Lbaidu/net/sip/ISipSessionListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->setListener(Lbaidu/net/sip/ISipSessionListener;)V

    .line 981
    iget-object v0, p0, Lcom/baidu/server/sip/SipService$AutoRegistrationProcess;->TAG:Ljava/lang/String;

    const-string v1, "<==== AutoRegistrationProcess::stop()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
