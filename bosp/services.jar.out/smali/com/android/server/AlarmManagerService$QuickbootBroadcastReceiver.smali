.class Lcom/android/server/AlarmManagerService$QuickbootBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QuickbootBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$QuickbootBroadcastReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 258
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService$QuickbootBroadcastReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 261
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$QuickbootBroadcastReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/AlarmManagerService;->access$800(Lcom/android/server/AlarmManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 262
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.ACTION_QUICKBOOT_BOOT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 264
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$QuickbootBroadcastReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v3, 0x0

    #setter for: Lcom/android/server/AlarmManagerService;->mIsQbShutdown:Z
    invoke-static {v1, v3}, Lcom/android/server/AlarmManagerService;->access$902(Lcom/android/server/AlarmManagerService;Z)Z

    .line 265
    const-string v1, "alarmboot"

    const/4 v3, 0x0

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 267
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$QuickbootBroadcastReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #calls: Lcom/android/server/AlarmManagerService;->clearPoweroffAlarm()V
    invoke-static {v1}, Lcom/android/server/AlarmManagerService;->access$1000(Lcom/android/server/AlarmManagerService;)V

    .line 268
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$QuickbootBroadcastReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v3, p0, Lcom/android/server/AlarmManagerService$QuickbootBroadcastReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mPoweroffWakeAlarm:Landroid/app/PendingIntent;
    invoke-static {v3}, Lcom/android/server/AlarmManagerService;->access$1100(Lcom/android/server/AlarmManagerService;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/AlarmManagerService;->remove(Landroid/app/PendingIntent;)V

    .line 269
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$QuickbootBroadcastReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v3, 0x0

    #setter for: Lcom/android/server/AlarmManagerService;->mPoweroffWakeAlarm:Landroid/app/PendingIntent;
    invoke-static {v1, v3}, Lcom/android/server/AlarmManagerService;->access$1102(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    .line 275
    :cond_0
    :goto_0
    monitor-exit v2

    .line 276
    return-void

    .line 272
    :cond_1
    const-string v1, "android.intent.action.ACTION_QUICKBOOT_SHUTDOWN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 273
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$QuickbootBroadcastReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v3, 0x1

    #setter for: Lcom/android/server/AlarmManagerService;->mIsQbShutdown:Z
    invoke-static {v1, v3}, Lcom/android/server/AlarmManagerService;->access$902(Lcom/android/server/AlarmManagerService;Z)Z

    goto :goto_0

    .line 275
    .end local v0           #action:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
