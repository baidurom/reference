.class Lcom/android/server/sip/SipService$IntervalMeasurementProcess;
.super Ljava/lang/Object;
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
    name = "IntervalMeasurementProcess"
.end annotation


# static fields
.field private static final MAX_RETRY_COUNT:I = 0x5

.field private static final MIN_INTERVAL:I = 0x5

.field private static final NAT_MEASUREMENT_RETRY_INTERVAL:I = 0x78

.field private static final PASS_THRESHOLD:I = 0xa

.field private static final TAG:Ljava/lang/String; = "SipKeepAliveInterval"


# instance fields
.field private mGroup:Lcom/android/server/sip/SipService$SipSessionGroupExt;

.field private mInterval:I

.field private mLocalProfile:Landroid/net/sip/SipProfile;

.field private mMaxInterval:I

.field private mMinInterval:I

.field private mPassCount:I

.field private mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

.field final synthetic this$0:Lcom/android/server/sip/SipService;


# direct methods
.method public constructor <init>(Lcom/android/server/sip/SipService;Landroid/net/sip/SipProfile;II)V
    .locals 0
    .parameter
    .parameter "localProfile"
    .parameter "minInterval"
    .parameter "maxInterval"

    .prologue
    .line 618
    iput-object p1, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->this$0:Lcom/android/server/sip/SipService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 619
    iput p4, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->mMaxInterval:I

    .line 620
    iput p3, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->mMinInterval:I

    .line 621
    iput-object p2, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->mLocalProfile:Landroid/net/sip/SipProfile;

    .line 622
    return-void
.end method

.method private checkTermination()Z
    .locals 2

    .prologue
    .line 688
    iget v0, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->mMaxInterval:I

    iget v1, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->mMinInterval:I

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
    .line 672
    iget-object v2, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->this$0:Lcom/android/server/sip/SipService;

    monitor-enter v2

    .line 674
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    if-nez v1, :cond_0

    monitor-exit v2

    .line 685
    :goto_0
    return-void

    .line 676
    :cond_0
    const-string v1, "SipKeepAliveInterval"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "restart measurement w interval="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->mInterval:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 678
    :try_start_1
    iget-object v1, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->stopKeepAliveProcess()V

    .line 679
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->mPassCount:I

    .line 680
    iget-object v1, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget v3, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->mInterval:I

    invoke-virtual {v1, v3, p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->startKeepAliveProcess(ILcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljavax/sip/SipException; {:try_start_1 .. :try_end_1} :catch_0

    .line 684
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

    .line 681
    :catch_0
    move-exception v0

    .line 682
    .local v0, e:Ljavax/sip/SipException;
    :try_start_3
    const-string v1, "SipKeepAliveInterval"

    const-string/jumbo v3, "restart()"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private restartLater()V
    .locals 4

    .prologue
    .line 751
    iget-object v2, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->this$0:Lcom/android/server/sip/SipService;

    monitor-enter v2

    .line 752
    const/16 v0, 0x78

    .line 753
    .local v0, interval:I
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mTimer:Lcom/android/server/sip/SipWakeupTimer;
    invoke-static {v1}, Lcom/android/server/sip/SipService;->access$200(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeupTimer;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/server/sip/SipWakeupTimer;->cancel(Ljava/lang/Runnable;)V

    .line 754
    iget-object v1, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mTimer:Lcom/android/server/sip/SipWakeupTimer;
    invoke-static {v1}, Lcom/android/server/sip/SipService;->access$200(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeupTimer;

    move-result-object v1

    const v3, 0x1d4c0

    invoke-virtual {v1, v3, p0}, Lcom/android/server/sip/SipWakeupTimer;->set(ILjava/lang/Runnable;)V

    .line 755
    monitor-exit v2

    .line 756
    return-void

    .line 755
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
    .line 739
    const-string v0, "SipKeepAliveInterval"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "interval measurement error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    invoke-direct {p0}, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->restartLater()V

    .line 741
    return-void
.end method

.method public onResponse(Z)V
    .locals 4
    .parameter "portChanged"

    .prologue
    .line 694
    iget-object v1, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->this$0:Lcom/android/server/sip/SipService;

    monitor-enter v1

    .line 695
    if-nez p1, :cond_2

    .line 696
    :try_start_0
    iget v0, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->mPassCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->mPassCount:I

    const/16 v2, 0xa

    if-eq v0, v2, :cond_0

    monitor-exit v1

    .line 734
    :goto_0
    return-void

    .line 699
    :cond_0
    iget-object v0, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mKeepAliveInterval:I
    invoke-static {v0}, Lcom/android/server/sip/SipService;->access$900(Lcom/android/server/sip/SipService;)I

    move-result v0

    if-lez v0, :cond_1

    .line 700
    iget-object v0, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->this$0:Lcom/android/server/sip/SipService;

    iget-object v2, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mKeepAliveInterval:I
    invoke-static {v2}, Lcom/android/server/sip/SipService;->access$900(Lcom/android/server/sip/SipService;)I

    move-result v2

    #setter for: Lcom/android/server/sip/SipService;->mLastGoodKeepAliveInterval:I
    invoke-static {v0, v2}, Lcom/android/server/sip/SipService;->access$1002(Lcom/android/server/sip/SipService;I)I

    .line 702
    :cond_1
    iget-object v0, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->this$0:Lcom/android/server/sip/SipService;

    iget v2, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->mInterval:I

    iput v2, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->mMinInterval:I

    #setter for: Lcom/android/server/sip/SipService;->mKeepAliveInterval:I
    invoke-static {v0, v2}, Lcom/android/server/sip/SipService;->access$902(Lcom/android/server/sip/SipService;I)I

    .line 704
    const-string v0, "SipKeepAliveInterval"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "measured good keepalive interval: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mKeepAliveInterval:I
    invoke-static {v3}, Lcom/android/server/sip/SipService;->access$900(Lcom/android/server/sip/SipService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    iget-object v0, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->this$0:Lcom/android/server/sip/SipService;

    #calls: Lcom/android/server/sip/SipService;->onKeepAliveIntervalChanged()V
    invoke-static {v0}, Lcom/android/server/sip/SipService;->access$1100(Lcom/android/server/sip/SipService;)V

    .line 712
    :goto_1
    invoke-direct {p0}, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->checkTermination()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 714
    invoke-virtual {p0}, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->stop()V

    .line 719
    iget-object v0, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->this$0:Lcom/android/server/sip/SipService;

    iget v2, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->mMinInterval:I

    #setter for: Lcom/android/server/sip/SipService;->mKeepAliveInterval:I
    invoke-static {v0, v2}, Lcom/android/server/sip/SipService;->access$902(Lcom/android/server/sip/SipService;I)I

    .line 721
    const-string v0, "SipKeepAliveInterval"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "measured keepalive interval: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mKeepAliveInterval:I
    invoke-static {v3}, Lcom/android/server/sip/SipService;->access$900(Lcom/android/server/sip/SipService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    :goto_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 710
    :cond_2
    :try_start_1
    iget v0, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->mInterval:I

    iput v0, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->mMaxInterval:I

    goto :goto_1

    .line 726
    :cond_3
    iget v0, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->mMaxInterval:I

    iget v2, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->mMinInterval:I

    add-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->mInterval:I

    .line 728
    const-string v0, "SipKeepAliveInterval"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current interval: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mKeepAliveInterval:I
    invoke-static {v3}, Lcom/android/server/sip/SipService;->access$900(Lcom/android/server/sip/SipService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", test new interval: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->mInterval:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    invoke-direct {p0}, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->restart()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public run()V
    .locals 1

    .prologue
    .line 746
    iget-object v0, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mTimer:Lcom/android/server/sip/SipWakeupTimer;
    invoke-static {v0}, Lcom/android/server/sip/SipService;->access$200(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeupTimer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/sip/SipWakeupTimer;->cancel(Ljava/lang/Runnable;)V

    .line 747
    invoke-direct {p0}, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->restart()V

    .line 748
    return-void
.end method

.method public start()V
    .locals 7

    .prologue
    .line 625
    iget-object v2, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->this$0:Lcom/android/server/sip/SipService;

    monitor-enter v2

    .line 626
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    if-eqz v1, :cond_0

    .line 627
    monitor-exit v2

    .line 655
    :goto_0
    return-void

    .line 630
    :cond_0
    iget v1, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->mMaxInterval:I

    iget v3, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->mMinInterval:I

    add-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->mInterval:I

    .line 631
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->mPassCount:I

    .line 634
    iget v1, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->mInterval:I

    const/16 v3, 0xa

    if-lt v1, v3, :cond_1

    invoke-direct {p0}, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->checkTermination()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 635
    :cond_1
    const-string v1, "SipKeepAliveInterval"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "measurement aborted; interval=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->mMinInterval:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->mMaxInterval:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    monitor-exit v2

    goto :goto_0

    .line 654
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 641
    :cond_2
    :try_start_1
    const-string v1, "SipKeepAliveInterval"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "start measurement w interval="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->mInterval:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    new-instance v1, Lcom/android/server/sip/SipService$SipSessionGroupExt;

    iget-object v3, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->this$0:Lcom/android/server/sip/SipService;

    iget-object v4, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->mLocalProfile:Landroid/net/sip/SipProfile;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/android/server/sip/SipService$SipSessionGroupExt;-><init>(Lcom/android/server/sip/SipService;Landroid/net/sip/SipProfile;Landroid/app/PendingIntent;Landroid/net/sip/ISipSessionListener;)V

    iput-object v1, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->mGroup:Lcom/android/server/sip/SipService$SipSessionGroupExt;

    .line 646
    iget-object v1, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->mGroup:Lcom/android/server/sip/SipService$SipSessionGroupExt;

    new-instance v3, Lcom/android/server/sip/SipWakeupTimer;

    iget-object v4, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/sip/SipService;->access$700(Lcom/android/server/sip/SipService;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mExecutor:Lcom/android/server/sip/SipService$MyExecutor;
    invoke-static {v5}, Lcom/android/server/sip/SipService;->access$800(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipService$MyExecutor;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/android/server/sip/SipWakeupTimer;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v1, v3}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->setWakeupTimer(Lcom/android/server/sip/SipWakeupTimer;)V

    .line 648
    iget-object v1, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->mGroup:Lcom/android/server/sip/SipService$SipSessionGroupExt;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->createSession(Landroid/net/sip/ISipSessionListener;)Landroid/net/sip/ISipSession;

    move-result-object v1

    check-cast v1, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iput-object v1, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    .line 650
    iget-object v1, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget v3, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->mInterval:I

    invoke-virtual {v1, v3, p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->startKeepAliveProcess(ILcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 654
    :goto_1
    :try_start_2
    monitor-exit v2

    goto/16 :goto_0

    .line 651
    :catch_0
    move-exception v0

    .line 652
    .local v0, t:Ljava/lang/Throwable;
    const/4 v1, -0x4

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->onError(ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 658
    iget-object v1, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->this$0:Lcom/android/server/sip/SipService;

    monitor-enter v1

    .line 659
    :try_start_0
    iget-object v0, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    if-eqz v0, :cond_0

    .line 660
    iget-object v0, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->stopKeepAliveProcess()V

    .line 661
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    .line 663
    :cond_0
    iget-object v0, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->mGroup:Lcom/android/server/sip/SipService$SipSessionGroupExt;

    if-eqz v0, :cond_1

    .line 664
    iget-object v0, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->mGroup:Lcom/android/server/sip/SipService$SipSessionGroupExt;

    invoke-virtual {v0}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->close()V

    .line 665
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->mGroup:Lcom/android/server/sip/SipService$SipSessionGroupExt;

    .line 667
    :cond_1
    iget-object v0, p0, Lcom/android/server/sip/SipService$IntervalMeasurementProcess;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mTimer:Lcom/android/server/sip/SipWakeupTimer;
    invoke-static {v0}, Lcom/android/server/sip/SipService;->access$200(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeupTimer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/sip/SipWakeupTimer;->cancel(Ljava/lang/Runnable;)V

    .line 668
    monitor-exit v1

    .line 669
    return-void

    .line 668
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
