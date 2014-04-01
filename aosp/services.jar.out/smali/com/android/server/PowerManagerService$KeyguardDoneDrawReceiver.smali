.class final Lcom/android/server/PowerManagerService$KeyguardDoneDrawReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "KeyguardDoneDrawReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/PowerManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 473
    iput-object p1, p0, Lcom/android/server/PowerManagerService$KeyguardDoneDrawReceiver;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 473
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService$KeyguardDoneDrawReceiver;-><init>(Lcom/android/server/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    .line 476
    iget-object v0, p0, Lcom/android/server/PowerManagerService$KeyguardDoneDrawReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$500(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;

    move-result-object v1

    monitor-enter v1

    .line 477
    :try_start_0
    const-string v0, "PowerManagerService"

    const-string v2, "KeyguardDoneDrawReceiver onReceive DONE_DRAW"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    iget-object v0, p0, Lcom/android/server/PowerManagerService$KeyguardDoneDrawReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mWaitKeyguardDraw:Z
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$2000(Lcom/android/server/PowerManagerService;)Z

    move-result v0

    if-ne v0, v3, :cond_0

    .line 481
    iget-object v0, p0, Lcom/android/server/PowerManagerService$KeyguardDoneDrawReceiver;->this$0:Lcom/android/server/PowerManagerService;

    iget-object v2, p0, Lcom/android/server/PowerManagerService$KeyguardDoneDrawReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenOffReason:I
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$2100(Lcom/android/server/PowerManagerService;)I

    move-result v2

    #calls: Lcom/android/server/PowerManagerService;->screenOffFinishedAnimatingLocked(I)I
    invoke-static {v0, v2}, Lcom/android/server/PowerManagerService;->access$2200(Lcom/android/server/PowerManagerService;I)I

    .line 482
    iget-object v0, p0, Lcom/android/server/PowerManagerService$KeyguardDoneDrawReceiver;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v2, 0x0

    #setter for: Lcom/android/server/PowerManagerService;->mWaitKeyguardDraw:Z
    invoke-static {v0, v2}, Lcom/android/server/PowerManagerService;->access$2002(Lcom/android/server/PowerManagerService;Z)Z

    .line 484
    :cond_0
    iget-object v0, p0, Lcom/android/server/PowerManagerService$KeyguardDoneDrawReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mSyncKeyguard:Lcom/android/server/PowerManagerService$SyncKeyguard;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$2300(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$SyncKeyguard;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 485
    :try_start_1
    iget-object v0, p0, Lcom/android/server/PowerManagerService$KeyguardDoneDrawReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mSyncKeyguard:Lcom/android/server/PowerManagerService$SyncKeyguard;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$2300(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$SyncKeyguard;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService$SyncKeyguard;->mKeyguardDoneDraw:Z

    if-nez v0, :cond_1

    .line 486
    iget-object v0, p0, Lcom/android/server/PowerManagerService$KeyguardDoneDrawReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mSyncKeyguard:Lcom/android/server/PowerManagerService$SyncKeyguard;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$2300(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$SyncKeyguard;

    move-result-object v0

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/server/PowerManagerService$SyncKeyguard;->mKeyguardDoneDraw:Z

    .line 487
    iget-object v0, p0, Lcom/android/server/PowerManagerService$KeyguardDoneDrawReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mSyncKeyguard:Lcom/android/server/PowerManagerService$SyncKeyguard;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$2300(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$SyncKeyguard;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 488
    const-string v0, "PowerManagerService"

    const-string v3, "KeyguardDoneDrawReceiver receives DONE_DRAW, do notify"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 491
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 492
    return-void

    .line 490
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 491
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method
