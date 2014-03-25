.class Lcom/android/server/power/PowerManagerService$QuickbootBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QuickbootBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 713
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$QuickbootBroadcastReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 713
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService$QuickbootBroadcastReceiver;-><init>(Lcom/android/server/power/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x1

    .line 716
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$QuickbootBroadcastReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    #getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$900(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 717
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 718
    .local v6, action:Ljava/lang/String;
    const-string v0, "android.intent.action.ACTION_QUICKBOOT_BOOT_COMPLETE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 719
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$QuickbootBroadcastReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v1, 0x0

    #setter for: Lcom/android/server/power/PowerManagerService;->mIsQbShutdown:Z
    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerService;->access$1002(Lcom/android/server/power/PowerManagerService;Z)Z

    .line 720
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$QuickbootBroadcastReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    #getter for: Lcom/android/server/power/PowerManagerService;->mWakefulness:I
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1100(Lcom/android/server/power/PowerManagerService;)I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 721
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$QuickbootBroadcastReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    #calls: Lcom/android/server/power/PowerManagerService;->wakeUpNoUpdateLocked(J)Z
    invoke-static {v0, v1, v2}, Lcom/android/server/power/PowerManagerService;->access$1200(Lcom/android/server/power/PowerManagerService;J)Z

    .line 729
    :goto_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$QuickbootBroadcastReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    #calls: Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1700(Lcom/android/server/power/PowerManagerService;)V

    .line 743
    :cond_0
    :goto_1
    monitor-exit v7

    .line 744
    return-void

    .line 723
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$QuickbootBroadcastReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    #calls: Lcom/android/server/power/PowerManagerService;->sendPendingNotificationsLocked()V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1300(Lcom/android/server/power/PowerManagerService;)V

    .line 724
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$QuickbootBroadcastReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    #getter for: Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1400(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/Notifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/power/Notifier;->onWakeUpStarted()V

    .line 725
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$QuickbootBroadcastReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v1, 0x1

    #setter for: Lcom/android/server/power/PowerManagerService;->mSendWakeUpFinishedNotificationWhenReady:Z
    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerService;->access$1502(Lcom/android/server/power/PowerManagerService;Z)Z

    .line 726
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$QuickbootBroadcastReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x3e8

    #calls: Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z
    invoke-static/range {v0 .. v5}, Lcom/android/server/power/PowerManagerService;->access$1600(Lcom/android/server/power/PowerManagerService;JIII)Z

    goto :goto_0

    .line 743
    .end local v6           #action:Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 730
    .restart local v6       #action:Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v0, "android.intent.action.ACTION_QUICKBOOT_SHUTDOWN"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 731
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$QuickbootBroadcastReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v1, 0x1

    #setter for: Lcom/android/server/power/PowerManagerService;->mIsQbShutdown:Z
    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerService;->access$1002(Lcom/android/server/power/PowerManagerService;Z)Z

    goto :goto_1

    .line 732
    :cond_3
    const-string v0, "android.intent.action.ACTION_QUICKBOOT_SCREENON"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 733
    const-string v0, "PowerManagerService"

    const-string v1, "Turn on the screen!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$QuickbootBroadcastReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    #calls: Lcom/android/server/power/PowerManagerService;->wakeUpNoUpdateLocked(J)Z
    invoke-static {v0, v1, v2}, Lcom/android/server/power/PowerManagerService;->access$1200(Lcom/android/server/power/PowerManagerService;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 735
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$QuickbootBroadcastReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    #calls: Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1700(Lcom/android/server/power/PowerManagerService;)V

    goto :goto_1

    .line 737
    :cond_4
    const-string v0, "android.intent.action.ACTION_QUICKBOOT_SCREENOFF"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 738
    const-string v0, "PowerManagerService"

    const-string v1, "Turn off the Screen!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$QuickbootBroadcastReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    #calls: Lcom/android/server/power/PowerManagerService;->goToSleepNoUpdateLocked(JI)Z
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/power/PowerManagerService;->access$1800(Lcom/android/server/power/PowerManagerService;JI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 740
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$QuickbootBroadcastReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    #calls: Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1700(Lcom/android/server/power/PowerManagerService;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
