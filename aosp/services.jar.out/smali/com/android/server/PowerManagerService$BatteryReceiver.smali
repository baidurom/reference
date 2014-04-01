.class final Lcom/android/server/PowerManagerService$BatteryReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BatteryReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/PowerManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 398
    iput-object p1, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 398
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService$BatteryReceiver;-><init>(Lcom/android/server/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 401
    iget-object v2, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$500(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;

    move-result-object v3

    monitor-enter v3

    .line 402
    :try_start_0
    iget-object v2, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mIsPowered:Z
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$600(Lcom/android/server/PowerManagerService;)Z

    move-result v1

    .line 403
    .local v1, wasPowered:Z
    iget-object v2, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    iget-object v4, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mBatteryService:Lcom/android/server/BatteryService;
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$700(Lcom/android/server/PowerManagerService;)Lcom/android/server/BatteryService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/BatteryService;->isPowered()Z

    move-result v4

    #setter for: Lcom/android/server/PowerManagerService;->mIsPowered:Z
    invoke-static {v2, v4}, Lcom/android/server/PowerManagerService;->access$602(Lcom/android/server/PowerManagerService;Z)Z

    .line 406
    iget-object v2, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mIsLowBattery:Z
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$800(Lcom/android/server/PowerManagerService;)Z

    move-result v0

    .line 407
    .local v0, wasLowBattery:Z
    iget-object v2, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    iget-object v4, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #calls: Lcom/android/server/PowerManagerService;->batteryIsLow()Z
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$900(Lcom/android/server/PowerManagerService;)Z

    move-result v4

    #setter for: Lcom/android/server/PowerManagerService;->mIsLowBattery:Z
    invoke-static {v2, v4}, Lcom/android/server/PowerManagerService;->access$802(Lcom/android/server/PowerManagerService;Z)Z

    .line 408
    iget-object v2, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mUseSoftwareAutoBrightness:Z
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$1000(Lcom/android/server/PowerManagerService;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mIsLowBattery:Z
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$800(Lcom/android/server/PowerManagerService;)Z

    move-result v2

    if-eq v2, v0, :cond_0

    iget-object v2, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mDoneBooting:Z
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$1100(Lcom/android/server/PowerManagerService;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 410
    const-string v2, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<<<<< FEATURE_DISABLE_LS >>>>> Battery Power Changed: mIsLowBattery="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mIsLowBattery:Z
    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$800(Lcom/android/server/PowerManagerService;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    iget-object v2, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mPowerState:I
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$1200(Lcom/android/server/PowerManagerService;)I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mAutoBrightessEnabled:Z
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$1300(Lcom/android/server/PowerManagerService;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 413
    iget-object v4, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    iget-object v2, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mIsLowBattery:Z
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$800(Lcom/android/server/PowerManagerService;)Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x1

    :goto_0
    #calls: Lcom/android/server/PowerManagerService;->enableLightSensorLocked(Z)V
    invoke-static {v4, v2}, Lcom/android/server/PowerManagerService;->access$1400(Lcom/android/server/PowerManagerService;Z)V

    .line 414
    iget-object v2, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mIsLowBattery:Z
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$800(Lcom/android/server/PowerManagerService;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 419
    iget-object v2, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    const/high16 v4, -0x4080

    #setter for: Lcom/android/server/PowerManagerService;->mLightSensorValue:F
    invoke-static {v2, v4}, Lcom/android/server/PowerManagerService;->access$1502(Lcom/android/server/PowerManagerService;F)F

    .line 420
    iget-object v2, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v4, -0x1

    #setter for: Lcom/android/server/PowerManagerService;->mHighestLightSensorValue:I
    invoke-static {v2, v4}, Lcom/android/server/PowerManagerService;->access$1602(Lcom/android/server/PowerManagerService;I)I

    .line 421
    iget-object v2, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v4, -0x1

    #setter for: Lcom/android/server/PowerManagerService;->mLightSensorScreenBrightnessWait:I
    invoke-static {v2, v4}, Lcom/android/server/PowerManagerService;->access$1702(Lcom/android/server/PowerManagerService;I)I

    .line 427
    :cond_0
    iget-object v2, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mIsPowered:Z
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$600(Lcom/android/server/PowerManagerService;)Z

    move-result v2

    if-eq v2, v1, :cond_3

    .line 429
    iget-object v2, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #calls: Lcom/android/server/PowerManagerService;->updateWakeLockLocked()V
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$1800(Lcom/android/server/PowerManagerService;)V

    .line 441
    iget-object v2, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$500(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;

    move-result-object v4

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 442
    if-eqz v1, :cond_1

    :try_start_1
    iget-object v2, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mPowerState:I
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$1200(Lcom/android/server/PowerManagerService;)I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    iget-boolean v2, v2, Lcom/android/server/PowerManagerService;->mUnplugTurnsOnScreen:Z

    if-eqz v2, :cond_2

    .line 444
    :cond_1
    iget-object v2, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #calls: Lcom/android/server/PowerManagerService;->forceUserActivityLocked()V
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$1900(Lcom/android/server/PowerManagerService;)V

    .line 446
    :cond_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 448
    :cond_3
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 449
    return-void

    .line 413
    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .line 446
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    .line 448
    .end local v0           #wasLowBattery:Z
    .end local v1           #wasPowered:Z
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2
.end method
