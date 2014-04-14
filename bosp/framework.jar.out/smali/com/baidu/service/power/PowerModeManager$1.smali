.class Lcom/baidu/service/power/PowerModeManager$1;
.super Landroid/content/BroadcastReceiver;
.source "PowerModeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/service/power/PowerModeManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/service/power/PowerModeManager;


# direct methods
.method constructor <init>(Lcom/baidu/service/power/PowerModeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/baidu/service/power/PowerModeManager$1;->this$0:Lcom/baidu/service/power/PowerModeManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 65
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "battery_in_recovery"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 69
    .local v2, needRecovery:I
    iget-object v4, p0, Lcom/baidu/service/power/PowerModeManager$1;->this$0:Lcom/baidu/service/power/PowerModeManager;

    #getter for: Lcom/baidu/service/power/PowerModeManager;->mPolicys:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/baidu/service/power/PowerModeManager;->access$000(Lcom/baidu/service/power/PowerModeManager;)Ljava/util/ArrayList;

    move-result-object v5

    monitor-enter v5

    .line 70
    :try_start_0
    iget-object v4, p0, Lcom/baidu/service/power/PowerModeManager$1;->this$0:Lcom/baidu/service/power/PowerModeManager;

    #getter for: Lcom/baidu/service/power/PowerModeManager;->mPolicys:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/baidu/service/power/PowerModeManager;->access$000(Lcom/baidu/service/power/PowerModeManager;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/service/power/Policy;

    .line 71
    .local v3, policy:Lcom/baidu/service/power/Policy;
    iget-boolean v4, v3, Lcom/baidu/service/power/Policy;->mIsActive:Z

    if-eqz v4, :cond_1

    .line 72
    iget-object v4, p0, Lcom/baidu/service/power/PowerModeManager$1;->this$0:Lcom/baidu/service/power/PowerModeManager;

    #getter for: Lcom/baidu/service/power/PowerModeManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/baidu/service/power/PowerModeManager;->access$100(Lcom/baidu/service/power/PowerModeManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/baidu/service/power/Policy;->applyPolicy(Landroid/content/Context;)V

    .line 74
    :cond_1
    iget v4, v3, Lcom/baidu/service/power/Policy;->mId:I

    const/4 v6, 0x3

    if-ne v4, v6, :cond_0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 75
    iget-object v4, p0, Lcom/baidu/service/power/PowerModeManager$1;->this$0:Lcom/baidu/service/power/PowerModeManager;

    #getter for: Lcom/baidu/service/power/PowerModeManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/baidu/service/power/PowerModeManager;->access$100(Lcom/baidu/service/power/PowerModeManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/baidu/service/power/Policy;->applyPolicy(Landroid/content/Context;)V

    goto :goto_0

    .line 78
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #policy:Lcom/baidu/service/power/Policy;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #needRecovery:I
    :cond_3
    return-void
.end method
