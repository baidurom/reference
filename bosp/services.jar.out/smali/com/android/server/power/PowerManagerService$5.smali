.class Lcom/android/server/power/PowerManagerService$5;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Lcom/android/server/power/DisplayPowerController$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 2510
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$5;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProximityNegative()V
    .locals 4

    .prologue
    .line 2530
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$5;->this$0:Lcom/android/server/power/PowerManagerService;

    #getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$900(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2531
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$5;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v2, 0x0

    #setter for: Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z
    invoke-static {v0, v2}, Lcom/android/server/power/PowerManagerService;->access$2102(Lcom/android/server/power/PowerManagerService;Z)Z

    .line 2532
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$5;->this$0:Lcom/android/server/power/PowerManagerService;

    const/16 v2, 0x200

    invoke-static {v0, v2}, Lcom/android/server/power/PowerManagerService;->access$2076(Lcom/android/server/power/PowerManagerService;I)I

    .line 2538
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$5;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    #calls: Lcom/android/server/power/PowerManagerService;->wakeUpInternal(J)V
    invoke-static {v0, v2, v3}, Lcom/android/server/power/PowerManagerService;->access$2200(Lcom/android/server/power/PowerManagerService;J)V

    .line 2539
    monitor-exit v1

    .line 2540
    return-void

    .line 2539
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onProximityPositive()V
    .locals 3

    .prologue
    .line 2521
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$5;->this$0:Lcom/android/server/power/PowerManagerService;

    #getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$900(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2522
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$5;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v2, 0x1

    #setter for: Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z
    invoke-static {v0, v2}, Lcom/android/server/power/PowerManagerService;->access$2102(Lcom/android/server/power/PowerManagerService;Z)Z

    .line 2523
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$5;->this$0:Lcom/android/server/power/PowerManagerService;

    const/16 v2, 0x200

    invoke-static {v0, v2}, Lcom/android/server/power/PowerManagerService;->access$2076(Lcom/android/server/power/PowerManagerService;I)I

    .line 2524
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$5;->this$0:Lcom/android/server/power/PowerManagerService;

    #calls: Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1700(Lcom/android/server/power/PowerManagerService;)V

    .line 2525
    monitor-exit v1

    .line 2526
    return-void

    .line 2525
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onSbProximityNegative()V
    .locals 4

    .prologue
    .line 2554
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$5;->this$0:Lcom/android/server/power/PowerManagerService;

    #getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$900(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2556
    :try_start_0
    const-string v0, "PowerManagerService"

    const-string v2, "onSbProximityNegative - sbWakeUp"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2558
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$5;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/server/power/PowerManagerService;->sbWakeUp(J)V

    .line 2559
    monitor-exit v1

    .line 2560
    return-void

    .line 2559
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onSbProximityPositive()V
    .locals 5

    .prologue
    .line 2544
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$5;->this$0:Lcom/android/server/power/PowerManagerService;

    #getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$900(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2546
    :try_start_0
    const-string v0, "PowerManagerService"

    const-string v2, "onSbProximityPositive - sbGoToSleep"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2548
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$5;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/power/PowerManagerService;->sbGoToSleep(JI)V

    .line 2549
    monitor-exit v1

    .line 2550
    return-void

    .line 2549
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onStateChanged()V
    .locals 3

    .prologue
    .line 2513
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$5;->this$0:Lcom/android/server/power/PowerManagerService;

    #getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$900(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2514
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$5;->this$0:Lcom/android/server/power/PowerManagerService;

    const/16 v2, 0x8

    invoke-static {v0, v2}, Lcom/android/server/power/PowerManagerService;->access$2076(Lcom/android/server/power/PowerManagerService;I)I

    .line 2515
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$5;->this$0:Lcom/android/server/power/PowerManagerService;

    #calls: Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1700(Lcom/android/server/power/PowerManagerService;)V

    .line 2516
    monitor-exit v1

    .line 2517
    return-void

    .line 2516
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
