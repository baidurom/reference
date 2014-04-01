.class Lcom/android/internal/policy/impl/PhoneWindowManager$20;
.super Landroid/content/BroadcastReceiver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0
    .parameter

    .prologue
    .line 3848
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$20;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 3850
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3852
    .local v0, action:Ljava/lang/String;
    const-string v1, "WindowManager"

    const-string v2, "mKeyDispatchReceiver -- onReceive -- entry"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3854
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$20;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v2, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyDispatchLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3855
    :try_start_0
    const-string v1, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3856
    sget-boolean v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v1, :cond_0

    .line 3857
    const-string v1, "WindowManager"

    const-string v3, "Receive IPO_ENABLE"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3859
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$20;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v3, 0x1

    iput v3, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyDispatcMode:I

    .line 3864
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$20;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$20;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarCanHide:Z

    iput-boolean v3, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarCanHideBeforeIPO:Z

    .line 3865
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$20;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarCanHide:Z

    .line 3891
    :cond_1
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3892
    sget-boolean v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v1, :cond_2

    .line 3893
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mKeyDispatchReceiver -- onReceive -- exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$20;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyDispatcMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3895
    :cond_2
    return-void

    .line 3866
    :cond_3
    :try_start_1
    const-string v1, "android.intent.action.ACTION_BOOT_IPO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3867
    sget-boolean v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v1, :cond_4

    .line 3868
    const-string v1, "WindowManager"

    const-string v3, "Receive IPO_DISABLE"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3870
    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$20;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v3, 0x0

    iput v3, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyDispatcMode:I

    .line 3873
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$20;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$20;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarCanHideBeforeIPO:Z

    iput-boolean v3, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarCanHide:Z

    goto :goto_0

    .line 3891
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 3874
    :cond_5
    :try_start_2
    const-string v1, "android.intent.action.DISABLE_POWER_KEY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 3875
    const-string v1, "state"

    const/4 v3, 0x0

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3876
    sget-boolean v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v1, :cond_6

    .line 3877
    const-string v1, "WindowManager"

    const-string v3, "Receive POWERKEY_DISABLE as true"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3879
    :cond_6
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$20;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v3, 0x3

    iput v3, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyDispatcMode:I

    goto :goto_0

    .line 3881
    :cond_7
    sget-boolean v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v1, :cond_8

    .line 3882
    const-string v1, "WindowManager"

    const-string v3, "Receive POWERKEY_DISABLE as false"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3884
    :cond_8
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$20;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v3, 0x0

    iput v3, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyDispatcMode:I

    goto :goto_0

    .line 3887
    :cond_9
    sget-boolean v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v1, :cond_1

    .line 3888
    const-string v1, "WindowManager"

    const-string v3, "Receive Fake Intent"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method
