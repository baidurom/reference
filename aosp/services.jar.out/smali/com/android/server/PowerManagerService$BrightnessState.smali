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
    .line 2405
    iput-object p1, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2549
    new-instance v0, Lcom/android/server/PowerManagerService$BrightnessState$1;

    invoke-direct {v0, p0}, Lcom/android/server/PowerManagerService$BrightnessState$1;-><init>(Lcom/android/server/PowerManagerService$BrightnessState;)V

    iput-object v0, p0, Lcom/android/server/PowerManagerService$BrightnessState;->mLightAnimator:Ljava/lang/Runnable;

    .line 2406
    iput p2, p0, Lcom/android/server/PowerManagerService$BrightnessState;->mask:I

    .line 2407
    return-void
.end method

.method private finishAnimationLocked(ZI)V
    .locals 3
    .parameter "more"
    .parameter "curIntValue"

    .prologue
    .line 2505
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService$BrightnessState;->animating:Z

    .line 2506
    if-nez p1, :cond_2

    .line 2507
    iget v0, p0, Lcom/android/server/PowerManagerService$BrightnessState;->mask:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    if-nez p2, :cond_2

    .line 2508
    iget-object v0, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    #calls: Lcom/android/server/PowerManagerService;->clearLightSensorValue()V
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$6200(Lcom/android/server/PowerManagerService;)V

    .line 2510
    invoke-static {}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isKeyguardEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenOffReason:I
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$2100(Lcom/android/server/PowerManagerService;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$6300(Lcom/android/server/PowerManagerService;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2514
    :cond_0
    iget-object v0, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    iget-object v1, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenOffReason:I
    invoke-static {v1}, Lcom/android/server/PowerManagerService;->access$2100(Lcom/android/server/PowerManagerService;)I

    move-result v1

    #calls: Lcom/android/server/PowerManagerService;->screenOffFinishedAnimatingLocked(I)I
    invoke-static {v0, v1}, Lcom/android/server/PowerManagerService;->access$2200(Lcom/android/server/PowerManagerService;I)I

    .line 2516
    :cond_1
    iget-object v0, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenOffReason:I
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$2100(Lcom/android/server/PowerManagerService;)I

    move-result v2

    #calls: Lcom/android/server/PowerManagerService;->sendNotificationLocked(ZI)V
    invoke-static {v0, v1, v2}, Lcom/android/server/PowerManagerService;->access$6400(Lcom/android/server/PowerManagerService;ZI)V

    .line 2517
    iget-object v0, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v1, 0x1

    #setter for: Lcom/android/server/PowerManagerService;->mWaitKeyguardDraw:Z
    invoke-static {v0, v1}, Lcom/android/server/PowerManagerService;->access$2002(Lcom/android/server/PowerManagerService;Z)Z

    .line 2520
    :cond_2
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2
    .parameter "pw"
    .parameter "prefix"

    .prologue
    .line 2410
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

    .line 2414
    return-void
.end method

.method forceValueLocked(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 2417
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/PowerManagerService$BrightnessState;->targetValue:I

    .line 2418
    int-to-float v0, p1

    iput v0, p0, Lcom/android/server/PowerManagerService$BrightnessState;->curValue:F

    .line 2419
    iget-object v0, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    iget v1, p0, Lcom/android/server/PowerManagerService$BrightnessState;->mask:I

    #calls: Lcom/android/server/PowerManagerService;->setLightBrightness(II)V
    invoke-static {v0, v1, p1}, Lcom/android/server/PowerManagerService;->access$5900(Lcom/android/server/PowerManagerService;II)V

    .line 2420
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService$BrightnessState;->animating:Z

    if-eqz v0, :cond_0

    .line 2421
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/server/PowerManagerService$BrightnessState;->finishAnimationLocked(ZI)V

    .line 2423
    :cond_0
    return-void
.end method

.method jumpToTargetLocked()V
    .locals 4

    .prologue
    .line 2496
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "jumpToTargetLocked targetValue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/PowerManagerService$BrightnessState;->targetValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/PowerManagerService$BrightnessState;->mask:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2497
    iget-object v1, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    iget v2, p0, Lcom/android/server/PowerManagerService$BrightnessState;->mask:I

    iget v3, p0, Lcom/android/server/PowerManagerService$BrightnessState;->targetValue:I

    #calls: Lcom/android/server/PowerManagerService;->setLightBrightness(II)V
    invoke-static {v1, v2, v3}, Lcom/android/server/PowerManagerService;->access$5900(Lcom/android/server/PowerManagerService;II)V

    .line 2498
    iget v0, p0, Lcom/android/server/PowerManagerService$BrightnessState;->targetValue:I

    .line 2499
    .local v0, tv:I
    int-to-float v1, v0

    iput v1, p0, Lcom/android/server/PowerManagerService$BrightnessState;->curValue:F

    .line 2500
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/PowerManagerService$BrightnessState;->targetValue:I

    .line 2501
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/server/PowerManagerService$BrightnessState;->finishAnimationLocked(ZI)V

    .line 2502
    return-void
.end method

.method public run()V
    .locals 7

    .prologue
    .line 2524
    iget-object v2, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenOffHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$3100(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/PowerManagerService$BrightnessState;->mLightAnimator:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2525
    iget-object v2, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mSyncKeyguard:Lcom/android/server/PowerManagerService$SyncKeyguard;
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$2300(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$SyncKeyguard;

    move-result-object v3

    monitor-enter v3

    .line 2526
    :try_start_0
    iget-object v2, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mSyncKeyguard:Lcom/android/server/PowerManagerService$SyncKeyguard;
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$2300(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$SyncKeyguard;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/server/PowerManagerService$SyncKeyguard;->mKeyguardDoneDraw:Z

    if-nez v2, :cond_1

    .line 2528
    const-string v2, "PowerManagerService"

    const-string v4, "DelayLightAnimator is going to suspend"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2531
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

    .line 2533
    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mSyncKeyguard:Lcom/android/server/PowerManagerService$SyncKeyguard;
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$2300(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$SyncKeyguard;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/server/PowerManagerService$SyncKeyguard;->mKeyguardDoneDraw:Z

    if-eqz v2, :cond_0

    .line 2534
    const-string v2, "PowerManagerService"

    const-string v4, "DelayLightAnimator is resumed, post mLightAnimator"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2539
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2540
    .local v0, now:J
    iget-object v2, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenOffHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$3100(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/PowerManagerService$BrightnessState;->mLightAnimator:Ljava/lang/Runnable;

    const-wide/16 v5, 0x1f4

    add-long/2addr v5, v0

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 2545
    .end local v0           #now:J
    :goto_2
    monitor-exit v3

    .line 2546
    return-void

    .line 2536
    :cond_0
    iget-object v2, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mSyncKeyguard:Lcom/android/server/PowerManagerService$SyncKeyguard;
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$2300(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$SyncKeyguard;

    move-result-object v2

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/server/PowerManagerService$SyncKeyguard;->mKeyguardDoneDraw:Z

    .line 2537
    const-string v2, "PowerManagerService"

    const-string v4, "DelayLightAnimator is timeout, post mLightAnimator"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2545
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 2542
    :cond_1
    :try_start_3
    const-string v2, "PowerManagerService"

    const-string v4, "DelayLightAnimator is going to post mLightAnimator without suspend"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2543
    iget-object v2, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenOffHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$3100(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/PowerManagerService$BrightnessState;->mLightAnimator:Ljava/lang/Runnable;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 2532
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method setTargetLocked(IIII)V
    .locals 5
    .parameter "target"
    .parameter "stepsToTarget"
    .parameter "initialValue"
    .parameter "nominalCurrentValue"

    .prologue
    const/4 v4, 0x1

    .line 2427
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService$BrightnessState;->initialized:Z

    if-nez v1, :cond_1

    .line 2428
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService$BrightnessState;->initialized:Z

    .line 2429
    int-to-float v1, p3

    iput v1, p0, Lcom/android/server/PowerManagerService$BrightnessState;->curValue:F

    .line 2433
    :cond_0
    iput p1, p0, Lcom/android/server/PowerManagerService$BrightnessState;->targetValue:I

    .line 2434
    iget v1, p0, Lcom/android/server/PowerManagerService$BrightnessState;->targetValue:I

    int-to-float v2, v1

    if-ltz p4, :cond_2

    int-to-float v1, p4

    :goto_0
    sub-float v1, v2, v1

    int-to-float v2, p2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/server/PowerManagerService$BrightnessState;->delta:F

    .line 2438
    int-to-float v1, p4

    iget v2, p0, Lcom/android/server/PowerManagerService$BrightnessState;->curValue:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_3

    const-string v0, ""

    .line 2439
    .local v0, noticeMe:Ljava/lang/String;
    :goto_1
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setTargetLocked mask="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/PowerManagerService$BrightnessState;->mask:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " curValue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/PowerManagerService$BrightnessState;->curValue:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " target="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " targetValue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/PowerManagerService$BrightnessState;->targetValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " delta="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/PowerManagerService$BrightnessState;->delta:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " nominalCurrentValue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2444
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService$BrightnessState;->animating:Z

    .line 2445
    iget-object v1, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mPreventScreenOn:Z
    invoke-static {v1}, Lcom/android/server/PowerManagerService;->access$6000(Lcom/android/server/PowerManagerService;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mDoDelayLightAnimation:Z
    invoke-static {v1}, Lcom/android/server/PowerManagerService;->access$6100(Lcom/android/server/PowerManagerService;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2464
    .end local v0           #noticeMe:Ljava/lang/String;
    :goto_2
    return-void

    .line 2430
    :cond_1
    iget v1, p0, Lcom/android/server/PowerManagerService$BrightnessState;->targetValue:I

    if-ne v1, p1, :cond_0

    goto :goto_2

    .line 2434
    :cond_2
    iget v1, p0, Lcom/android/server/PowerManagerService$BrightnessState;->curValue:F

    goto :goto_0

    .line 2438
    :cond_3
    const-string v0, "  ******************"

    goto :goto_1

    .line 2454
    .restart local v0       #noticeMe:Ljava/lang/String;
    :cond_4
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scheduling light animator!, mDoDelayLightAnimation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mDoDelayLightAnimation:Z
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$6100(Lcom/android/server/PowerManagerService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2456
    iget-object v1, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mDoDelayLightAnimation:Z
    invoke-static {v1}, Lcom/android/server/PowerManagerService;->access$6100(Lcom/android/server/PowerManagerService;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2457
    iget-object v1, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenOffHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/PowerManagerService;->access$3100(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2458
    iget-object v1, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenOffHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/PowerManagerService;->access$3100(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 2460
    :cond_5
    iget-object v1, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenOffHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/PowerManagerService;->access$3100(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/PowerManagerService$BrightnessState;->mLightAnimator:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2461
    iget-object v1, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenOffHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/PowerManagerService;->access$3100(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/PowerManagerService$BrightnessState;->mLightAnimator:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2
.end method

.method stepLocked()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2467
    iget-boolean v2, p0, Lcom/android/server/PowerManagerService$BrightnessState;->animating:Z

    if-nez v2, :cond_0

    const/4 v1, 0x0

    .line 2492
    :goto_0
    return v1

    .line 2472
    :cond_0
    iget v2, p0, Lcom/android/server/PowerManagerService$BrightnessState;->curValue:F

    iget v3, p0, Lcom/android/server/PowerManagerService$BrightnessState;->delta:F

    add-float/2addr v2, v3

    iput v2, p0, Lcom/android/server/PowerManagerService$BrightnessState;->curValue:F

    .line 2473
    iget v2, p0, Lcom/android/server/PowerManagerService$BrightnessState;->curValue:F

    float-to-int v0, v2

    .line 2474
    .local v0, curIntValue:I
    const/4 v1, 0x1

    .line 2475
    .local v1, more:Z
    iget v2, p0, Lcom/android/server/PowerManagerService$BrightnessState;->delta:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_2

    .line 2476
    iget v0, p0, Lcom/android/server/PowerManagerService$BrightnessState;->targetValue:I

    int-to-float v2, v0

    iput v2, p0, Lcom/android/server/PowerManagerService$BrightnessState;->curValue:F

    .line 2477
    const/4 v1, 0x0

    .line 2489
    :cond_1
    :goto_1
    const-string v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Animating curIntValue="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/PowerManagerService$BrightnessState;->mask:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2490
    iget-object v2, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    iget v3, p0, Lcom/android/server/PowerManagerService$BrightnessState;->mask:I

    #calls: Lcom/android/server/PowerManagerService;->setLightBrightness(II)V
    invoke-static {v2, v3, v0}, Lcom/android/server/PowerManagerService;->access$5900(Lcom/android/server/PowerManagerService;II)V

    .line 2491
    invoke-direct {p0, v1, v0}, Lcom/android/server/PowerManagerService$BrightnessState;->finishAnimationLocked(ZI)V

    goto :goto_0

    .line 2478
    :cond_2
    iget v2, p0, Lcom/android/server/PowerManagerService$BrightnessState;->delta:F

    cmpl-float v2, v2, v4

    if-lez v2, :cond_3

    .line 2479
    iget v2, p0, Lcom/android/server/PowerManagerService$BrightnessState;->targetValue:I

    if-lt v0, v2, :cond_1

    .line 2480
    iget v0, p0, Lcom/android/server/PowerManagerService$BrightnessState;->targetValue:I

    int-to-float v2, v0

    iput v2, p0, Lcom/android/server/PowerManagerService$BrightnessState;->curValue:F

    .line 2481
    const/4 v1, 0x0

    goto :goto_1

    .line 2484
    :cond_3
    iget v2, p0, Lcom/android/server/PowerManagerService$BrightnessState;->targetValue:I

    if-gt v0, v2, :cond_1

    .line 2485
    iget v0, p0, Lcom/android/server/PowerManagerService$BrightnessState;->targetValue:I

    int-to-float v2, v0

    iput v2, p0, Lcom/android/server/PowerManagerService$BrightnessState;->curValue:F

    .line 2486
    const/4 v1, 0x0

    goto :goto_1
.end method
