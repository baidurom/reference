.class Lcom/baidu/server/sip/SipService$IntervalMeasurementProcess;
.super Ljava/lang/Object;
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
    name = "IntervalMeasurementProcess"
.end annotation


# static fields
.field private static final MAX_RETRY_COUNT:I = 0x5

.field private static final MIN_INTERVAL:I = 0x5

.field private static final NAT_MEASUREMENT_RETRY_INTERVAL:I = 0x78

.field private static final PASS_THRESHOLD:I = 0xa

.field private static final TAG:Ljava/lang/String; = "SipKeepAliveInterval"


# instance fields
.field private mGroup:Lcom/baidu/server/sip/SipService$SipSessionGroupExt;

.field private mInterval:I

.field private mLocalProfile:Lbaidu/net/sip/SipProfile;

.field private mMaxInterval:I

.field private mMinInterval:I

.field private mPassCount:I

.field private mSession:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

.field final synthetic this$0:Lcom/baidu/server/sip/SipService;


# direct methods
.method public constructor <init>(Lcom/baidu/server/sip/SipService;Lbaidu/net/sip/SipProfile;II)V
    .locals 2
    .parameter
    .parameter "localProfile"
    .parameter "minInterval"
    .parameter "maxInterval"

    .prologue
    .line 699
    iput-object p1, p0, Lcom/baidu/server/sip/SipService$IntervalMeasurementProcess;->this$0:Lcom/baidu/server/sip/SipService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 700
    const-string v0, "SipKeepAliveInterval"

    const-string v1, "<====> IntervalMeasurementProcess::IntervalMeasurementProcess()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    iput p4, p0, Lcom/baidu/server/sip/SipService$IntervalMeasurementProcess;->mMaxInterval:I

    .line 702
    iput p3, p0, Lcom/baidu/server/sip/SipService$IntervalMeasurementProcess;->mMinInterval:I

    .line 703
    iput-object p2, p0, Lcom/baidu/server/sip/SipService$IntervalMeasurementProcess;->mLocalProfile:Lbaidu/net/sip/SipProfile;

    .line 704
    return-void
.end method

.method private checkTermination()Z
    .locals 2

    .prologue
    .line 776
    iget v0, p0, Lcom/baidu/server/sip/SipService$IntervalMeasurementProcess;->mMaxInterval:I

    iget v1, p0, Lcom/baidu/server/sip/SipService$IntervalMeasurementProcess;->mMinInterval:I

    sub-int/2addr v0, v1

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private restart()V
    .locals 5

    .prologue
    .line 758
    const-string v1, "SipKeepAliveInterval"

    const-string v2, "====> IntervalMeasurementProcess::restart()"

    invoke-static {v1, v2}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    iget-object v2, p0, Lcom/baidu/server/sip/SipService$IntervalMeasurementProcess;->this$0:Lcom/baidu/server/sip/SipService;

    monitor-enter v2

    .line 761
    :try_start_0
    iget-object v1, p0, Lcom/baidu/server/sip/SipService$IntervalMeasurementProcess;->mSession:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    if-nez v1, :cond_0

    monitor-exit v2

    .line 773
    :goto_0
    return-void

    .line 763
    :cond_0
    const-string v1, "SipKeepAliveInterval"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "restart measurement w interval="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/baidu/server/sip/SipService$IntervalMeasurementProcess;->mInterval:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 765
    :try_start_1
    iget-object v1, p0, Lcom/baidu/server/sip/SipService$IntervalMeasurementProcess;->mSession:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v1}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->stopKeepAliveProcess()V

    .line 766
    const/4 v1, 0x0

    iput v1, p0, Lcom/baidu/server/sip/SipService$IntervalMeasurementProcess;->mPassCount:I

    .line 767
    iget-object v1, p0, Lcom/baidu/server/sip/SipService$IntervalMeasurementProcess;->mSession:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    iget v3, p0, Lcom/baidu/server/sip/SipService$IntervalMeasurementProcess;->mInterval:I

    invoke-virtual {v1, v3, p0}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->startKeepAliveProcess(ILcom/baidu/server/sip/SipSessionGroup$KeepAliveProcessCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljavax/sip/SipException; {:try_start_1 .. :try_end_1} :catch_0

    .line 771
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 772
    const-string v1, "SipKeepAliveInterval"

    const-string v2, "<==== IntervalMeasurementProcess::restart()"

    invoke-static {v1, v2}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 768
    :catch_0
    move-exception v0

    .line 769
    .local v0, e:Ljavax/sip/SipException;
    :try_start_3
    const-string v1, "SipKeepAliveInterval"

    const-string/jumbo v3, "restart()"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 771
    .end local v0           #e:Ljavax/sip/SipException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method private restartLater()V
    .locals 4

    .prologue
    .line 846
    const-string v1, "SipKeepAliveInterval"

    const-string v2, "<====> IntervalMeasurementProcess::restartLater()"

    invoke-static {v1, v2}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    iget-object v2, p0, Lcom/baidu/server/sip/SipService$IntervalMeasurementProcess;->this$0:Lcom/baidu/server/sip/SipService;

    monitor-enter v2

    .line 848
    const/16 v0, 0x78

    .line 849
    .local v0, interval:I
    :try_start_0
    iget-object v1, p0, Lcom/baidu/server/sip/SipService$IntervalMeasurementProcess;->this$0:Lcom/baidu/server/sip/SipService;

    #getter for: Lcom/baidu/server/sip/SipService;->mTimer:Lcom/baidu/server/sip/SipWakeupTimer;
    invoke-static {v1}, Lcom/baidu/server/sip/SipService;->access$300(Lcom/baidu/server/sip/SipService;)Lcom/baidu/server/sip/SipWakeupTimer;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/baidu/server/sip/SipWakeupTimer;->cancel(Ljava/lang/Runnable;)V

    .line 850
    iget-object v1, p0, Lcom/baidu/server/sip/SipService$IntervalMeasurementProcess;->this$0:Lcom/baidu/server/sip/SipService;

    #getter for: Lcom/baidu/server/sip/SipService;->mTimer:Lcom/baidu/server/sip/SipWakeupTimer;
    invoke-static {v1}, Lcom/baidu/server/sip/SipService;->access$300(Lcom/baidu/server/sip/SipService;)Lcom/baidu/server/sip/SipWakeupTimer;

    move-result-object v1

    const v3, 0x1d4c0

    invoke-virtual {v1, v3, p0}, Lcom/baidu/server/sip/SipWakeupTimer;->set(ILjava/lang/Runnable;)V

    .line 851
    monitor-exit v2

    .line 852
    return-void

    .line 851
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 3
    .parameter "errorCode"
    .parameter "description"

    .prologue
    .line 833
    const-string v0, "SipKeepAliveInterval"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "interval measurement error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    invoke-direct {p0}, Lcom/baidu/server/sip/SipService$IntervalMeasurementProcess;->restartLater()V

    .line 835
    return-void
.end method

.method public onResponse(Z)V
    .locals 3
    .parameter "portChanged"

    .prologue
    .line 782
    const-string v0, "SipKeepAliveInterval"

    const-string v1, "====> IntervalMeasurementProcess::onResponse()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    iget-object v1, p0, Lcom/baidu/server/sip/SipService$IntervalMeasurementProcess;->this$0:Lcom/baidu/server/sip/SipService;

    monitor-enter v1

    .line 784
    if-nez p1, :cond_3

    .line 785
    :try_start_0
    iget v0, p0, Lcom/baidu/server/sip/SipService$IntervalMeasurementProcess;->mPassCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/baidu/server/sip/SipService$IntervalMeasurementProcess;->mPassCount:I

    const/16 v2, 0xa

    if-eq v0, v2, :cond_0

    monitor-exit v1

    .line 828
    :goto_0
    return-void

    .line 788
    :cond_0
    iget-object v0, p0, Lcom/baidu/server/sip/SipService$IntervalMeasurementProcess;->this$0:Lcom/baidu/server/sip/SipService;

    #getter for: Lcom/baidu/server/sip/SipService;->mKeepAliveInterval:I
    invoke-static {v0}, Lcom/baidu/server/sip/SipService;->access$1100(Lcom/baidu/server/sip/SipService;)I

    move-result v0

    if-lez v0, :cond_1

    .line 789
    iget-object v0, p0, Lcom/baidu/server/sip/SipService$IntervalMeasurementProcess;->this$0:Lcom/baidu/server/sip/SipService;

    iget-object v2, p0, Lcom/baidu/server/sip/SipService$IntervalMeasurementProcess;->this$0:Lcom/baidu/server/sip/SipService;

    #getter for: Lcom/baidu/server/sip/SipService;->mKeepAliveInterval:I
    invoke-static {v2}, Lcom/baidu/server/sip/SipService;->access$1100(Lcom/baidu/server/sip/SipService;)I

    move-result v2

    #setter for: Lcom/baidu/server/sip/SipService;->mLastGoodKeepAliveInterval:I
    invoke-static {v0, v2}, Lcom/baidu/server/sip/SipService;->access$1202(Lcom/baidu/server/sip/SipService;I)I

    .line 790
    iget-object v0, p0, Lcom/baidu/server/sip/SipService$IntervalMeasurementProcess;->this$0:Lcom/baidu/server/sip/SipService;

    const/4 v2, 0x0

    #setter for: Lcom/baidu/server/sip/SipService;->mFirstMeasurement:Z
    invoke-static {v0, v2}, Lcom/baidu/server/sip/SipService;->access$1302(Lcom/baidu/server/sip/SipService;Z)Z

    .line 792
    :cond_1
    iget v0, p0, Lcom/baidu/server/sip/SipService$IntervalMeasurementProcess;->mInterval:I

    iput v0, p0, Lcom/baidu/server/sip/SipService$IntervalMeasurementProcess;->mMinInterval:I

    .line 793
    iget v0, p0, Lcom/baidu/server/sip/SipService$IntervalMeasurementProcess;->mInterval:I

    iget-object v2, p0, Lcom/baidu/server/sip/SipService$IntervalMeasurementProcess;->this$0:Lcom/baidu/server/sip/SipService;

    #calls: Lcom/baidu/server/sip/SipService;->getKeepAliveInterval()I
    invoke-static {v2}, Lcom/baidu/server/sip/SipService;->access$1400(Lcom/baidu/server/sip/SipService;)I

    move-result v2

    if-le v0, v2, :cond_2

    .line 794
    iget-object v0, p0, Lcom/baidu/server/sip/SipService$IntervalMeasurementProcess;->this$0:Lcom/baidu/server/sip/SipService;

    iget v2, p0, Lcom/baidu/server/sip/SipService$IntervalMeasurementProcess;->mInterval:I

    #setter for: Lcom/baidu/server/sip/SipService;->mKeepAliveInterval:I
    invoke-static {v0, v2}, Lcom/baidu/server/sip/SipService;->access$1102(Lcom/baidu/server/sip/SipService;I)I

    .line 795
    iget-object v0, p0, Lcom/baidu/server/sip/SipService$IntervalMeasurementProcess;->this$0:Lcom/baidu/server/sip/SipService;

    #calls: Lcom/baidu/server/sip/SipService;->onKeepAliveIntervalChanged()V
    invoke-static {v0}, Lcom/baidu/server/sip/SipService;->access$1500(Lcom/baidu/server/sip/SipService;)V

    .line 805
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/baidu/server/sip/SipService$IntervalMeasurementProcess;->checkTermination()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 807
    invoke-virtual {p0}, Lcom/baidu/server/sip/SipService$IntervalMeasurementProcess;->stop()V

    .line 812
    iget-object v0, p0, Lcom/baidu/server/sip/SipService$IntervalMeasurementProcess;->this$0:Lcom/baidu/server/sip/SipService;

    iget v2, p0, Lcom/baidu/server/sip/SipService$IntervalMeasurementProcess;->mMinInterval:I

    #setter for: Lcom/baidu/server/sip/SipService;->mKeepAliveInterval:I
    invoke-static {v0, v2}, Lcom/baidu/server/sip/SipService;->access$1102(Lcom/baidu/server/sip/SipService;I)I

    .line 826
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 827
    const-string v0, "SipKeepAliveInterval"

    const-string v1, "<==== IntervalMeasurementProcess::onResponse()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 803
    :cond_3
    :try_start_1
    iget v0, p0, Lcom/baidu/server/sip/SipService$IntervalMeasurementProcess;->mInterval:I

    iput v0, p0, Lcom/baidu/server/sip/SipService$IntervalMeasurementProcess;->mMaxInterval:I

    goto :goto_1

    .line 826
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 819
    :cond_4
    :try_start_2
    iget v0, p0, Lcom/baidu/server/sip/SipService$IntervalMeasurementProcess;->mMaxInterval:I

    iget v2, p0, Lcom/baidu/server/sip/SipService$IntervalMeasurementProcess;->mMinInterval:I

    add-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/baidu/server/sip/SipService$IntervalMeasurementProcess;->mInterval:I

    .line 824
    invoke-direct {p0}, Lcom/baidu/server/sip/SipService$IntervalMeasurementProcess;->restart()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public run()V
    .locals 2

    .prologue
    .line 840
    const-string v0, "SipKeepAliveInterval"

    const-string v1, "<====> IntervalMeasurementProcess::run()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    iget-object v0, p0, Lcom/baidu/server/sip/SipService$IntervalMeasurementProcess;->this$0:Lcom/baidu/server/sip/SipService;

    #getter for: Lcom/baidu/server/sip/SipService;->mTimer:Lcom/baidu/server/sip/SipWakeupTimer;
    invoke-static {v0}, Lcom/baidu/server/sip/SipService;->access$300(Lcom/baidu/server/sip/SipService;)Lcom/baidu/server/sip/SipWakeupTimer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/server/sip/SipWakeupTimer;->cancel(Ljava/lang/Runnable;)V

    .line 842
    invoke-direct {p0}, Lcom/baidu/server/sip/SipService$IntervalMeasurementProcess;->restart()V

    .line 843
    return-void
.end method

.method public start()V
    .locals 7

    .prologue
    .line 707
    const-string v1, "SipKeepAliveInterval"

    const-string v2, "====> IntervalMeasurementProcess::start()"

    invoke-static {v1, v2}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    iget-object v2, p0, Lcom/baidu/server/sip/SipService$IntervalMeasurementProcess;->this$0:Lcom/baidu/server/sip/SipService;

    monitor-enter v2

    .line 709
    :try_start_0
    iget-object v1, p0, Lcom/baidu/server/sip/SipService$IntervalMeasurementProcess;->mSession:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    if-eqz v1, :cond_0

    .line 710
    monitor-exit v2

    .line 739
    :goto_0
    return-void

    .line 713
    :cond_0
    iget v1, p0, Lcom/baidu/server/sip/SipService$IntervalMeasurementProcess;->mMaxInterval:I

    iget v3, p0, Lcom/baidu/server/sip/SipService$IntervalMeasurementProcess;->mMinInterval:I

    add-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/baidu/server/sip/SipService$IntervalMeasurementProcess;->mInterval:I

    .line 714
    const/4 v1, 0x0

    iput v1, p0, Lcom/baidu/server/sip/SipService$IntervalMeasurementProcess;->mPassCount:I

    .line 717
    iget v1, p0, Lcom/baidu/server/sip/SipService$IntervalMeasurementProcess;->mInterval:I

    const/16 v3, 0xa

    if-lt v1, v3, :cond_1

    invoke-direct {p0}, Lcom/baidu/server/sip/SipService$IntervalMeasurementProcess;->checkTermination()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 718
    :cond_1
    const-string v1, "SipKeepAliveInterval"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "measurement aborted; interval=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/baidu/server/sip/SipService$IntervalMeasurementProcess;->mMinInterval:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/baidu/server/sip/SipService$IntervalMeasurementProcess;->mMaxInterval:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    monitor-exit v2

    goto :goto_0

    .line 737
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 724
    :cond_2
    :try_start_1
    const-string v1, "SipKeepAliveInterval"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "start measurement w interval="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/baidu/server/sip/SipService$IntervalMeasurementProcess;->mInterval:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    new-instance v1, Lcom/baidu/server/sip/SipService$SipSessionGroupExt;

    iget-object v3, p0, Lcom/baidu/server/sip/SipService$IntervalMeasurementProcess;->this$0:Lcom/baidu/server/sip/SipService;

    iget-object v4, p0, Lcom/baidu/server/sip/SipService$IntervalMeasurementProcess;->mLocalProfile:Lbaidu/net/sip/SipProfile;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/baidu/server/sip/SipService$SipSessionGroupExt;-><init>(Lcom/baidu/server/sip/SipService;Lbaidu/net/sip/SipProfile;Landroid/app/PendingIntent;Lbaidu/net/sip/ISipSessionListener;)V

    iput-object v1, p0, Lcom/baidu/server/sip/SipService$IntervalMeasurementProcess;->mGroup:Lcom/baidu/server/sip/SipService$SipSessionGroupExt;

    .line 729
    iget-object v1, p0, Lcom/baidu/server/sip/SipService$IntervalMeasurementProcess;->mGroup:Lcom/baidu/server/sip/SipService$SipSessionGroupExt;

    new-instance v3, Lcom/baidu/server/sip/SipWakeupTimer;

    iget-object v4, p0, Lcom/baidu/server/sip/SipService$IntervalMeasurementProcess;->this$0:Lcom/baidu/server/sip/SipService;

    #getter for: Lcom/baidu/server/sip/SipService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/baidu/server/sip/SipService;->access$900(Lcom/baidu/server/sip/SipService;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/server/sip/SipService$IntervalMeasurementProcess;->this$0:Lcom/baidu/server/sip/SipService;

    #getter for: Lcom/baidu/server/sip/SipService;->mExecutor:Lcom/baidu/server/sip/SipService$MyExecutor;
    invoke-static {v5}, Lcom/baidu/server/sip/SipService;->access$1000(Lcom/baidu/server/sip/SipService;)Lcom/baidu/server/sip/SipService$MyExecutor;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/baidu/server/sip/SipWakeupTimer;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v1, v3}, Lcom/baidu/server/sip/SipService$SipSessionGroupExt;->setWakeupTimer(Lcom/baidu/server/sip/SipWakeupTimer;)V

    .line 731
    iget-object v1, p0, Lcom/baidu/server/sip/SipService$IntervalMeasurementProcess;->mGroup:Lcom/baidu/server/sip/SipService$SipSessionGroupExt;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/baidu/server/sip/SipService$SipSessionGroupExt;->createSession(Lbaidu/net/sip/ISipSessionListener;)Lbaidu/net/sip/ISipSession;

    move-result-object v1

    check-cast v1, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    iput-object v1, p0, Lcom/baidu/server/sip/SipService$IntervalMeasurementProcess;->mSession:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    .line 733
    iget-object v1, p0, Lcom/baidu/server/sip/SipService$IntervalMeasurementProcess;->mSession:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    iget v3, p0, Lcom/baidu/server/sip/SipService$IntervalMeasurementProcess;->mInterval:I

    invoke-virtual {v1, v3, p0}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->startKeepAliveProcess(ILcom/baidu/server/sip/SipSessionGroup$KeepAliveProcessCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 737
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 738
    const-string v1, "SipKeepAliveInterval"

    const-string v2, "<==== IntervalMeasurementProcess::start()"

    invoke-static {v1, v2}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 734
    :catch_0
    move-exception v0

    .line 735
    .local v0, t:Ljava/lang/Throwable;
    const/4 v1, -0x4

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/baidu/server/sip/SipService$IntervalMeasurementProcess;->onError(ILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 742
    const-string v0, "SipKeepAliveInterval"

    const-string v1, "====> IntervalMeasurementProcess::stop()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    iget-object v1, p0, Lcom/baidu/server/sip/SipService$IntervalMeasurementProcess;->this$0:Lcom/baidu/server/sip/SipService;

    monitor-enter v1

    .line 744
    :try_start_0
    iget-object v0, p0, Lcom/baidu/server/sip/SipService$IntervalMeasurementProcess;->mSession:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    if-eqz v0, :cond_0

    .line 745
    iget-object v0, p0, Lcom/baidu/server/sip/SipService$IntervalMeasurementProcess;->mSession:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v0}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->stopKeepAliveProcess()V

    .line 746
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/server/sip/SipService$IntervalMeasurementProcess;->mSession:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    .line 748
    :cond_0
    iget-object v0, p0, Lcom/baidu/server/sip/SipService$IntervalMeasurementProcess;->mGroup:Lcom/baidu/server/sip/SipService$SipSessionGroupExt;

    if-eqz v0, :cond_1

    .line 749
    iget-object v0, p0, Lcom/baidu/server/sip/SipService$IntervalMeasurementProcess;->mGroup:Lcom/baidu/server/sip/SipService$SipSessionGroupExt;

    invoke-virtual {v0}, Lcom/baidu/server/sip/SipService$SipSessionGroupExt;->close()V

    .line 750
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/server/sip/SipService$IntervalMeasurementProcess;->mGroup:Lcom/baidu/server/sip/SipService$SipSessionGroupExt;

    .line 752
    :cond_1
    iget-object v0, p0, Lcom/baidu/server/sip/SipService$IntervalMeasurementProcess;->this$0:Lcom/baidu/server/sip/SipService;

    #getter for: Lcom/baidu/server/sip/SipService;->mTimer:Lcom/baidu/server/sip/SipWakeupTimer;
    invoke-static {v0}, Lcom/baidu/server/sip/SipService;->access$300(Lcom/baidu/server/sip/SipService;)Lcom/baidu/server/sip/SipWakeupTimer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/server/sip/SipWakeupTimer;->cancel(Ljava/lang/Runnable;)V

    .line 753
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 754
    const-string v0, "SipKeepAliveInterval"

    const-string v1, "<==== IntervalMeasurementProcess::stop()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    return-void

    .line 753
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
