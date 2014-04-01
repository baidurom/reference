.class Lcom/android/server/PowerManagerService$BrightnessState;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BrightnessState"
.end annotation


# instance fields
.field animating:Z

.field curValue:F

.field delta:F

.field initialized:Z

.field public mLightAnimator:Ljava/lang/Runnable;

.field final mask:I

.field targetValue:I

.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/PowerManagerService;I)V
    .locals 1
    .parameter
    .parameter "m"

    .prologue
    .line 2435
    iput-object p1, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2578
    new-instance v0, Lcom/android/server/PowerManagerService$BrightnessState$1;

    invoke-direct {v0, p0}, Lcom/android/server/PowerManagerService$BrightnessState$1;-><init>(Lcom/android/server/PowerManagerService$BrightnessState;)V

    iput-object v0, p0, Lcom/android/server/PowerManagerService$BrightnessState;->mLightAnimator:Ljava/lang/Runnable;

    .line 2436
    iput p2, p0, Lcom/android/server/PowerManagerService$BrightnessState;->mask:I

    .line 2437
    return-void
.end method

.method private finishAnimationLocked(ZI)V
    .locals 3
    .parameter "more"
    .parameter "curIntValue"

    .prologue
    .line 2535
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService$BrightnessState;->animating:Z

    .line 2536
    if-nez p1, :cond_2

    .line 2537
    iget v0, p0, Lcom/android/server/PowerManagerService$BrightnessState;->mask:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    if-nez p2, :cond_2

    .line 2538
    iget-object v0, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    #calls: Lcom/android/server/PowerManagerService;->clearLightSensorValue()V
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$6400(Lcom/android/server/PowerManagerService;)V

    .line 2539
    invoke-static {}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isKeyguardEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenOffReason:I
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$2100(Lcom/android/server/PowerManagerService;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 2543
    :cond_0
    iget-object v0, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    iget-object v1, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenOffReason:I
    invoke-static {v1}, Lcom/android/server/PowerManagerService;->access$2100(Lcom/android/server/PowerManagerService;)I

    move-result v1

    #calls: Lcom/android/server/PowerManagerService;->screenOffFinishedAnimatingLocked(I)I
    invoke-static {v0, v1}, Lcom/android/server/PowerManagerService;->access$2200(Lcom/android/server/PowerManagerService;I)I

    .line 2545
    :cond_1
    iget-object v0, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenOffReason:I
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$2100(Lcom/android/server/PowerManagerService;)I

    move-result v2

    #calls: Lcom/android/server/PowerManagerService;->sendNotificationLocked(ZI)V
    invoke-static {v0, v1, v2}, Lcom/android/server/PowerManagerService;->access$6500(Lcom/android/server/PowerManagerService;ZI)V

    .line 2546
    iget-object v0, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v1, 0x1

    #setter for: Lcom/android/server/PowerManagerService;->mWaitKeyguardDraw:Z
    invoke-static {v0, v1}, Lcom/android/server/PowerManagerService;->access$2002(Lcom/android/server/PowerManagerService;Z)Z

    .line 2549
    :cond_2
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2
    .parameter "pw"
    .parameter "prefix"

    .prologue
    .line 2440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "animating="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/PowerManagerService$BrightnessState;->animating:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " targetValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/PowerManagerService$BrightnessState;->targetValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " curValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/PowerManagerService$BrightnessState;->curValue:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " delta="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/PowerManagerService$BrightnessState;->delta:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2444
    return-void
.end method

.method forceValueLocked(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 2447
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/PowerManagerService$BrightnessState;->targetValue:I

    .line 2448
    int-to-float v0, p1

    iput v0, p0, Lcom/android/server/PowerManagerService$BrightnessState;->curValue:F

    .line 2449
    iget-object v0, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    iget v1, p0, Lcom/android/server/PowerManagerService$BrightnessState;->mask:I

    #calls: Lcom/android/server/PowerManagerService;->setLightBrightness(II)V
    invoke-static {v0, v1, p1}, Lcom/android/server/PowerManagerService;->access$6100(Lcom/android/server/PowerManagerService;II)V

    .line 2450
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService$BrightnessState;->animating:Z

    if-eqz v0, :cond_0

    .line 2451
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/server/PowerManagerService$BrightnessState;->finishAnimationLocked(ZI)V

    .line 2453
    :cond_0
    return-void
.end method

.method jumpToTargetLocked()V
    .locals 4

    .prologue
    .line 2527
    iget-object v1, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    iget v2, p0, Lcom/android/server/PowerManagerService$BrightnessState;->mask:I

    iget v3, p0, Lcom/android/server/PowerManagerService$BrightnessState;->targetValue:I

    #calls: Lcom/android/server/PowerManagerService;->setLightBrightness(II)V
    invoke-static {v1, v2, v3}, Lcom/android/server/PowerManagerService;->access$6100(Lcom/android/server/PowerManagerService;II)V

    .line 2528
    iget v0, p0, Lcom/android/server/PowerManagerService$BrightnessState;->targetValue:I

    .line 2529
    .local v0, tv:I
    int-to-float v1, v0

    iput v1, p0, Lcom/android/server/PowerManagerService$BrightnessState;->curValue:F

    .line 2530
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/PowerManagerService$BrightnessState;->targetValue:I

    .line 2531
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/server/PowerManagerService$BrightnessState;->finishAnimationLocked(ZI)V

    .line 2532
    return-void
.end method

.method public run()V
    .locals 7

    .prologue
    .line 2553
    iget-object v2, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenOffHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$3300(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/PowerManagerService$BrightnessState;->mLightAnimator:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2554
    iget-object v2, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mSyncKeyguard:Lcom/android/server/PowerManagerService$SyncKeyguard;
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$2300(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$SyncKeyguard;

    move-result-object v3

    monitor-enter v3

    .line 2555
    :try_start_0
    iget-object v2, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mSyncKeyguard:Lcom/android/server/PowerManagerService$SyncKeyguard;
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$2300(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$SyncKeyguard;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/server/PowerManagerService$SyncKeyguard;->mKeyguardDoneDraw:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 2560
    :try_start_1
    iget-object v2, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mSyncKeyguard:Lcom/android/server/PowerManagerService$SyncKeyguard;
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$2300(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$SyncKeyguard;

    move-result-object v2

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2562
    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mSyncKeyguard:Lcom/android/server/PowerManagerService$SyncKeyguard;
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$2300(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$SyncKeyguard;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/server/PowerManagerService$SyncKeyguard;->mKeyguardDoneDraw:Z

    if-eqz v2, :cond_0

    .line 2568
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2569
    .local v0, now:J
    iget-object v2, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenOffHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$3300(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/PowerManagerService$BrightnessState;->mLightAnimator:Ljava/lang/Runnable;

    const-wide/16 v5, 0x1f4

    add-long/2addr v5, v0

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 2574
    .end local v0           #now:J
    :goto_2
    monitor-exit v3

    .line 2575
    return-void

    .line 2565
    :cond_0
    iget-object v2, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mSyncKeyguard:Lcom/android/server/PowerManagerService$SyncKeyguard;
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$2300(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$SyncKeyguard;

    move-result-object v2

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/server/PowerManagerService$SyncKeyguard;->mKeyguardDoneDraw:Z

    goto :goto_1

    .line 2574
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 2572
    :cond_1
    :try_start_3
    iget-object v2, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenOffHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$3300(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/PowerManagerService$BrightnessState;->mLightAnimator:Ljava/lang/Runnable;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 2561
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method setTargetLocked(IIII)V
    .locals 3
    .parameter "target"
    .parameter "stepsToTarget"
    .parameter "initialValue"
    .parameter "nominalCurrentValue"

    .prologue
    const/4 v2, 0x1

    .line 2457
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService$BrightnessState;->initialized:Z

    if-nez v0, :cond_1

    .line 2458
    iput-boolean v2, p0, Lcom/android/server/PowerManagerService$BrightnessState;->initialized:Z

    .line 2459
    int-to-float v0, p3

    iput v0, p0, Lcom/android/server/PowerManagerService$BrightnessState;->curValue:F

    .line 2463
    :cond_0
    iput p1, p0, Lcom/android/server/PowerManagerService$BrightnessState;->targetValue:I

    .line 2464
    iget v0, p0, Lcom/android/server/PowerManagerService$BrightnessState;->targetValue:I

    int-to-float v1, v0

    if-ltz p4, :cond_2

    int-to-float v0, p4

    :goto_0
    sub-float v0, v1, v0

    int-to-float v1, p2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/PowerManagerService$BrightnessState;->delta:F

    .line 2474
    iput-boolean v2, p0, Lcom/android/server/PowerManagerService$BrightnessState;->animating:Z

    .line 2475
    iget-object v0, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mPreventScreenOn:Z
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$6200(Lcom/android/server/PowerManagerService;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mDoDelayLightAnimation:Z
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$6300(Lcom/android/server/PowerManagerService;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2494
    :goto_1
    return-void

    .line 2460
    :cond_1
    iget v0, p0, Lcom/android/server/PowerManagerService$BrightnessState;->targetValue:I

    if-ne v0, p1, :cond_0

    goto :goto_1

    .line 2464
    :cond_2
    iget v0, p0, Lcom/android/server/PowerManagerService$BrightnessState;->curValue:F

    goto :goto_0

    .line 2486
    :cond_3
    iget-object v0, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mDoDelayLightAnimation:Z
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$6300(Lcom/android/server/PowerManagerService;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2487
    iget-object v0, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenOffHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$3300(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2488
    iget-object v0, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenOffHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$3300(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 2490
    :cond_4
    iget-object v0, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenOffHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$3300(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/PowerManagerService$BrightnessState;->mLightAnimator:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2491
    iget-object v0, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenOffHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$3300(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/PowerManagerService$BrightnessState;->mLightAnimator:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method stepLocked()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2497
    iget-boolean v2, p0, Lcom/android/server/PowerManagerService$BrightnessState;->animating:Z

    if-nez v2, :cond_0

    const/4 v1, 0x0

    .line 2522
    :goto_0
    return v1

    .line 2502
    :cond_0
    iget v2, p0, Lcom/android/server/PowerManagerService$BrightnessState;->curValue:F

    iget v3, p0, Lcom/android/server/PowerManagerService$BrightnessState;->delta:F

    add-float/2addr v2, v3

    iput v2, p0, Lcom/android/server/PowerManagerService$BrightnessState;->curValue:F

    .line 2503
    iget v2, p0, Lcom/android/server/PowerManagerService$BrightnessState;->curValue:F

    float-to-int v0, v2

    .line 2504
    .local v0, curIntValue:I
    const/4 v1, 0x1

    .line 2505
    .local v1, more:Z
    iget v2, p0, Lcom/android/server/PowerManagerService$BrightnessState;->delta:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_2

    .line 2506
    iget v0, p0, Lcom/android/server/PowerManagerService$BrightnessState;->targetValue:I

    int-to-float v2, v0

    iput v2, p0, Lcom/android/server/PowerManagerService$BrightnessState;->curValue:F

    .line 2507
    const/4 v1, 0x0

    .line 2520
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    iget v3, p0, Lcom/android/server/PowerManagerService$BrightnessState;->mask:I

    #calls: Lcom/android/server/PowerManagerService;->setLightBrightness(II)V
    invoke-static {v2, v3, v0}, Lcom/android/server/PowerManagerService;->access$6100(Lcom/android/server/PowerManagerService;II)V

    .line 2521
    invoke-direct {p0, v1, v0}, Lcom/android/server/PowerManagerService$BrightnessState;->finishAnimationLocked(ZI)V

    goto :goto_0

    .line 2508
    :cond_2
    iget v2, p0, Lcom/android/server/PowerManagerService$BrightnessState;->delta:F

    cmpl-float v2, v2, v4

    if-lez v2, :cond_3

    .line 2509
    iget v2, p0, Lcom/android/server/PowerManagerService$BrightnessState;->targetValue:I

    if-lt v0, v2, :cond_1

    .line 2510
    iget v0, p0, Lcom/android/server/PowerManagerService$BrightnessState;->targetValue:I

    int-to-float v2, v0

    iput v2, p0, Lcom/android/server/PowerManagerService$BrightnessState;->curValue:F

    .line 2511
    const/4 v1, 0x0

    goto :goto_1

    .line 2514
    :cond_3
    iget v2, p0, Lcom/android/server/PowerManagerService$BrightnessState;->targetValue:I

    if-gt v0, v2, :cond_1

    .line 2515
    iget v0, p0, Lcom/android/server/PowerManagerService$BrightnessState;->targetValue:I

    int-to-float v2, v0

    iput v2, p0, Lcom/android/server/PowerManagerService$BrightnessState;->curValue:F

    .line 2516
    const/4 v1, 0x0

    goto :goto_1
.end method
