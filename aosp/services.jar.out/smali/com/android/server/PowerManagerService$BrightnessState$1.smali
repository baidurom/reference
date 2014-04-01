.class Lcom/android/server/PowerManagerService$BrightnessState$1;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService$BrightnessState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/PowerManagerService$BrightnessState;


# direct methods
.method constructor <init>(Lcom/android/server/PowerManagerService$BrightnessState;)V
    .locals 0
    .parameter

    .prologue
    .line 2550
    iput-object p1, p0, Lcom/android/server/PowerManagerService$BrightnessState$1;->this$1:Lcom/android/server/PowerManagerService$BrightnessState;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 2553
    iget-object v5, p0, Lcom/android/server/PowerManagerService$BrightnessState$1;->this$1:Lcom/android/server/PowerManagerService$BrightnessState;

    iget-object v5, v5, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;
    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$500(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;

    move-result-object v5

    monitor-enter v5

    .line 2555
    :try_start_0
    iget-object v6, p0, Lcom/android/server/PowerManagerService$BrightnessState$1;->this$1:Lcom/android/server/PowerManagerService$BrightnessState;

    iget-boolean v6, v6, Lcom/android/server/PowerManagerService$BrightnessState;->animating:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/server/PowerManagerService$BrightnessState$1;->this$1:Lcom/android/server/PowerManagerService$BrightnessState;

    iget v6, v6, Lcom/android/server/PowerManagerService$BrightnessState;->targetValue:I

    if-nez v6, :cond_2

    const/4 v3, 0x1

    .line 2556
    .local v3, turningOff:Z
    :goto_0
    iget-object v6, p0, Lcom/android/server/PowerManagerService$BrightnessState$1;->this$1:Lcom/android/server/PowerManagerService$BrightnessState;

    iget-object v6, v6, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    iget-boolean v6, v6, Lcom/android/server/PowerManagerService;->mAnimateScreenLights:Z

    if-nez v6, :cond_0

    if-nez v3, :cond_3

    .line 2557
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 2558
    .local v1, now:J
    iget-object v4, p0, Lcom/android/server/PowerManagerService$BrightnessState$1;->this$1:Lcom/android/server/PowerManagerService$BrightnessState;

    iget-object v4, v4, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenBrightness:Lcom/android/server/PowerManagerService$BrightnessState;
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$6500(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$BrightnessState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/PowerManagerService$BrightnessState;->stepLocked()Z

    move-result v0

    .line 2559
    .local v0, more:Z
    if-eqz v0, :cond_1

    .line 2560
    iget-object v4, p0, Lcom/android/server/PowerManagerService$BrightnessState$1;->this$1:Lcom/android/server/PowerManagerService$BrightnessState;

    iget-object v4, v4, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenOffHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$3100(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v6, 0x10

    add-long/2addr v6, v1

    invoke-virtual {v4, p0, v6, v7}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 2570
    .end local v0           #more:Z
    .end local v1           #now:J
    :cond_1
    :goto_1
    monitor-exit v5

    .line 2571
    return-void

    .end local v3           #turningOff:Z
    :cond_2
    move v3, v4

    .line 2555
    goto :goto_0

    .line 2565
    .restart local v3       #turningOff:Z
    :cond_3
    iget-object v6, p0, Lcom/android/server/PowerManagerService$BrightnessState$1;->this$1:Lcom/android/server/PowerManagerService$BrightnessState;

    iget-object v6, v6, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    iget-object v7, p0, Lcom/android/server/PowerManagerService$BrightnessState$1;->this$1:Lcom/android/server/PowerManagerService$BrightnessState;

    iget-object v7, v7, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenOffReason:I
    invoke-static {v7}, Lcom/android/server/PowerManagerService;->access$2100(Lcom/android/server/PowerManagerService;)I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_4

    :goto_2
    #calls: Lcom/android/server/PowerManagerService;->nativeStartSurfaceFlingerAnimation(I)V
    invoke-static {v6, v4}, Lcom/android/server/PowerManagerService;->access$6600(Lcom/android/server/PowerManagerService;I)V

    .line 2568
    iget-object v4, p0, Lcom/android/server/PowerManagerService$BrightnessState$1;->this$1:Lcom/android/server/PowerManagerService$BrightnessState;

    iget-object v4, v4, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenBrightness:Lcom/android/server/PowerManagerService$BrightnessState;
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$6500(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$BrightnessState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/PowerManagerService$BrightnessState;->jumpToTargetLocked()V

    goto :goto_1

    .line 2570
    .end local v3           #turningOff:Z
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 2565
    .restart local v3       #turningOff:Z
    :cond_4
    :try_start_1
    iget-object v4, p0, Lcom/android/server/PowerManagerService$BrightnessState$1;->this$1:Lcom/android/server/PowerManagerService$BrightnessState;

    iget-object v4, v4, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mAnimationSetting:I
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$3000(Lcom/android/server/PowerManagerService;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    goto :goto_2
.end method
