.class Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView$4;
.super Landroid/content/BroadcastReceiver;
.source "PowerOffAlarmView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;)V
    .locals 0
    .parameter

    .prologue
    .line 405
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 408
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 409
    .local v0, action:Ljava/lang/String;
    const-string v3, "PowerOffAlarm"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "receive action : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    const-string v3, "update.power.off.alarm.label"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 411
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 412
    .local v2, msg:Landroid/os/Message;
    const/16 v3, 0x63

    iput v3, v2, Landroid/os/Message;->what:I

    .line 413
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 414
    .local v1, data:Landroid/os/Bundle;
    const-string v3, "label"

    const-string v4, "label"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    invoke-virtual {v2, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 416
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->access$300(Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 417
    invoke-virtual {p1, p2}, Landroid/content/Context;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 421
    .end local v1           #data:Landroid/os/Bundle;
    .end local v2           #msg:Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 418
    :cond_1
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isAlarmBoot()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 419
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;

    #calls: Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->snooze()V
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->access$400(Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;)V

    goto :goto_0
.end method
