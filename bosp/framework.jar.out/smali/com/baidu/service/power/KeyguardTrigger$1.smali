.class Lcom/baidu/service/power/KeyguardTrigger$1;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/service/power/KeyguardTrigger;->prepare(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/service/power/KeyguardTrigger;


# direct methods
.method constructor <init>(Lcom/baidu/service/power/KeyguardTrigger;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/baidu/service/power/KeyguardTrigger$1;->this$0:Lcom/baidu/service/power/KeyguardTrigger;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 68
    const-string v1, "SmartPowerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "receive broadcast! action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/service/power/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    new-instance v0, Lcom/baidu/service/power/KeyguardTrigger$ActionRunnable;

    iget-object v1, p0, Lcom/baidu/service/power/KeyguardTrigger$1;->this$0:Lcom/baidu/service/power/KeyguardTrigger;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/baidu/service/power/KeyguardTrigger$ActionRunnable;-><init>(Lcom/baidu/service/power/KeyguardTrigger;Landroid/content/Context;Ljava/lang/String;)V

    .line 71
    .local v0, runnable:Lcom/baidu/service/power/KeyguardTrigger$ActionRunnable;
    const-string v1, "SmartPowerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mLastRunnable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/service/power/KeyguardTrigger$1;->this$0:Lcom/baidu/service/power/KeyguardTrigger;

    iget-object v3, v3, Lcom/baidu/service/power/KeyguardTrigger;->mLastRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/service/power/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lcom/baidu/service/power/KeyguardTrigger$1;->this$0:Lcom/baidu/service/power/KeyguardTrigger;

    iget-object v1, v1, Lcom/baidu/service/power/KeyguardTrigger;->mLastRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/baidu/service/power/KeyguardTrigger$1;->this$0:Lcom/baidu/service/power/KeyguardTrigger;

    iget-object v2, v1, Lcom/baidu/service/power/KeyguardTrigger;->mLastRunnable:Ljava/lang/Runnable;

    monitor-enter v2

    .line 75
    :try_start_0
    iget-object v1, p0, Lcom/baidu/service/power/KeyguardTrigger$1;->this$0:Lcom/baidu/service/power/KeyguardTrigger;

    iget-object v1, v1, Lcom/baidu/service/power/KeyguardTrigger;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/baidu/service/power/KeyguardTrigger$1;->this$0:Lcom/baidu/service/power/KeyguardTrigger;

    iget-object v3, v3, Lcom/baidu/service/power/KeyguardTrigger;->mLastRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 76
    iget-object v1, p0, Lcom/baidu/service/power/KeyguardTrigger$1;->this$0:Lcom/baidu/service/power/KeyguardTrigger;

    iget-object v1, v1, Lcom/baidu/service/power/KeyguardTrigger;->mLastRunnable:Ljava/lang/Runnable;

    check-cast v1, Lcom/baidu/service/power/KeyguardTrigger$ActionRunnable;

    invoke-virtual {v1}, Lcom/baidu/service/power/KeyguardTrigger$ActionRunnable;->releaseWakeLock()V

    .line 77
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/baidu/service/power/KeyguardTrigger$1;->this$0:Lcom/baidu/service/power/KeyguardTrigger;

    iput-object v0, v1, Lcom/baidu/service/power/KeyguardTrigger;->mLastRunnable:Ljava/lang/Runnable;

    .line 80
    invoke-virtual {v0}, Lcom/baidu/service/power/KeyguardTrigger$ActionRunnable;->acquireWakeLock()V

    .line 81
    iget-object v1, p0, Lcom/baidu/service/power/KeyguardTrigger$1;->this$0:Lcom/baidu/service/power/KeyguardTrigger;

    iget-object v1, v1, Lcom/baidu/service/power/KeyguardTrigger;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 82
    return-void

    .line 77
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
