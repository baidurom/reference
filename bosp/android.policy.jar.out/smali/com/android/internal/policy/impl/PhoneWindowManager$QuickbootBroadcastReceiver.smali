.class Lcom/android/internal/policy/impl/PhoneWindowManager$QuickbootBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QuickbootBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0
    .parameter

    .prologue
    .line 3935
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$QuickbootBroadcastReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 3937
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3938
    .local v0, action:Ljava/lang/String;
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Receive the quickboot boradcast: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3940
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$QuickbootBroadcastReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyDispatchLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3941
    :try_start_0
    const-string v2, "android.intent.action.ACTION_QUICKBOOT_SHUTDOWN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3942
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$QuickbootBroadcastReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyDispatchDisable:Z

    .line 3943
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$QuickbootBroadcastReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, #bool@config_poweron_by_twice_press#t

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mQbTwicePowerOn:Z

    .line 3945
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$QuickbootBroadcastReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mQuickBoot:Lcom/baidu/service/IQuickBootService;

    if-nez v2, :cond_0

    .line 3946
    const-string v2, "QuickBootService"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 3947
    .local v1, b:Landroid/os/IBinder;
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$QuickbootBroadcastReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-static {v1}, Lcom/baidu/service/IQuickBootService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/baidu/service/IQuickBootService;

    move-result-object v4

    iput-object v4, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mQuickBoot:Lcom/baidu/service/IQuickBootService;

    .line 3956
    .end local v1           #b:Landroid/os/IBinder;
    :cond_0
    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3958
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Now mKeyDispatchDisable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$QuickbootBroadcastReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v4, v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyDispatchDisable:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3959
    return-void

    .line 3949
    :cond_1
    :try_start_1
    const-string v2, "android.intent.action.ACTION_QUICKBOOT_BOOT_COMPLETE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3950
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$QuickbootBroadcastReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyDispatchDisable:Z

    .line 3951
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$QuickbootBroadcastReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v4, 0x0

    iput-object v4, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mQuickBoot:Lcom/baidu/service/IQuickBootService;

    .line 3952
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$QuickbootBroadcastReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v4, 0x0

    #setter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyCount:I
    invoke-static {v2, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$102(Lcom/android/internal/policy/impl/PhoneWindowManager;I)I

    goto :goto_0

    .line 3956
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 3954
    :cond_2
    :try_start_2
    const-string v2, "WindowManager"

    const-string v4, "Receive Fake Intent"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
