.class Lcom/baidu/service/power/KeyguardTrigger$ActionRunnable;
.super Ljava/lang/Object;
.source "KeyguardTrigger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/service/power/KeyguardTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActionRunnable"
.end annotation


# instance fields
.field mAction:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field public mWakeLock:Landroid/os/PowerManager$WakeLock;

.field final synthetic this$0:Lcom/baidu/service/power/KeyguardTrigger;


# direct methods
.method public constructor <init>(Lcom/baidu/service/power/KeyguardTrigger;Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter "context"
    .parameter "action"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/baidu/service/power/KeyguardTrigger$ActionRunnable;->this$0:Lcom/baidu/service/power/KeyguardTrigger;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p2, p0, Lcom/baidu/service/power/KeyguardTrigger$ActionRunnable;->mContext:Landroid/content/Context;

    .line 24
    iput-object p3, p0, Lcom/baidu/service/power/KeyguardTrigger$ActionRunnable;->mAction:Ljava/lang/String;

    .line 25
    const-string/jumbo v1, "power"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 26
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "SmartPowerService"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/service/power/KeyguardTrigger$ActionRunnable;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 27
    return-void
.end method


# virtual methods
.method public acquireWakeLock()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/baidu/service/power/KeyguardTrigger$ActionRunnable;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 36
    return-void
.end method

.method public releaseWakeLock()V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/baidu/service/power/KeyguardTrigger$ActionRunnable;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/baidu/service/power/KeyguardTrigger$ActionRunnable;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 32
    :cond_0
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 40
    monitor-enter p0

    .line 41
    :try_start_0
    iget-object v1, p0, Lcom/baidu/service/power/KeyguardTrigger$ActionRunnable;->this$0:Lcom/baidu/service/power/KeyguardTrigger;

    iget-object v1, v1, Lcom/baidu/service/power/BroadcastTrigger;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, action:Ljava/lang/String;
    const-string v1, "SmartPowerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "trigger intent action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/service/power/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v1, "SmartPowerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAction = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/service/power/KeyguardTrigger$ActionRunnable;->mAction:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", screenOnReport = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/baidu/service/power/KeyguardTrigger;->mScreenOnReport:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", screenOffReport = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/baidu/service/power/KeyguardTrigger;->mScreenOffReport:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/service/power/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object v1, p0, Lcom/baidu/service/power/KeyguardTrigger$ActionRunnable;->mAction:Ljava/lang/String;

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 45
    sget-boolean v1, Lcom/baidu/service/power/KeyguardTrigger;->mScreenOffReport:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/baidu/service/power/KeyguardTrigger$ActionRunnable;->this$0:Lcom/baidu/service/power/KeyguardTrigger;

    iget-object v1, v1, Lcom/baidu/service/power/BroadcastTrigger;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/service/power/KeyguardTrigger$ActionRunnable;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    iget-object v1, p0, Lcom/baidu/service/power/KeyguardTrigger$ActionRunnable;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/service/power/KeyguardTrigger$ActionRunnable;->this$0:Lcom/baidu/service/power/KeyguardTrigger;

    iget-object v2, v2, Lcom/baidu/service/power/BroadcastTrigger;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 47
    const/4 v1, 0x1

    sput-boolean v1, Lcom/baidu/service/power/KeyguardTrigger;->mScreenOffReport:Z

    .line 48
    const/4 v1, 0x0

    sput-boolean v1, Lcom/baidu/service/power/KeyguardTrigger;->mScreenOnReport:Z

    .line 57
    :cond_0
    :goto_0
    const-string v1, "SmartPowerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " screenOnReport = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/baidu/service/power/KeyguardTrigger;->mScreenOnReport:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mScreenOffReport = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/baidu/service/power/KeyguardTrigger;->mScreenOffReport:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/service/power/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lcom/baidu/service/power/KeyguardTrigger$ActionRunnable;->releaseWakeLock()V

    .line 59
    monitor-exit p0

    .line 60
    return-void

    .line 50
    :cond_1
    iget-object v1, p0, Lcom/baidu/service/power/KeyguardTrigger$ActionRunnable;->mAction:Ljava/lang/String;

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    sget-boolean v1, Lcom/baidu/service/power/KeyguardTrigger;->mScreenOnReport:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/baidu/service/power/KeyguardTrigger$ActionRunnable;->this$0:Lcom/baidu/service/power/KeyguardTrigger;

    iget-object v1, v1, Lcom/baidu/service/power/BroadcastTrigger;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/service/power/KeyguardTrigger$ActionRunnable;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    iget-object v1, p0, Lcom/baidu/service/power/KeyguardTrigger$ActionRunnable;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/service/power/KeyguardTrigger$ActionRunnable;->this$0:Lcom/baidu/service/power/KeyguardTrigger;

    iget-object v2, v2, Lcom/baidu/service/power/BroadcastTrigger;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 53
    const/4 v1, 0x1

    sput-boolean v1, Lcom/baidu/service/power/KeyguardTrigger;->mScreenOnReport:Z

    .line 54
    const/4 v1, 0x0

    sput-boolean v1, Lcom/baidu/service/power/KeyguardTrigger;->mScreenOffReport:Z

    goto :goto_0

    .line 59
    .end local v0           #action:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
