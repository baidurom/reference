.class Lcom/baidu/service/power/Action$1;
.super Landroid/content/BroadcastReceiver;
.source "Action.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/service/power/Action;->prepare(Landroid/content/Context;Lcom/baidu/service/power/Policy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/service/power/Action;


# direct methods
.method constructor <init>(Lcom/baidu/service/power/Action;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/baidu/service/power/Action$1;->this$0:Lcom/baidu/service/power/Action;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 71
    const-string v0, "SmartPowerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "receive broadcast, action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/service/power/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/baidu/service/power/Action$1;->this$0:Lcom/baidu/service/power/Action;

    iget-object v0, v0, Lcom/baidu/service/power/Action;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 73
    iget-object v0, p0, Lcom/baidu/service/power/Action$1;->this$0:Lcom/baidu/service/power/Action;

    invoke-virtual {v0, p1}, Lcom/baidu/service/power/Action;->doAction(Landroid/content/Context;)V

    .line 74
    iget-object v0, p0, Lcom/baidu/service/power/Action$1;->this$0:Lcom/baidu/service/power/Action;

    iget-object v0, v0, Lcom/baidu/service/power/Action;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 75
    return-void
.end method
