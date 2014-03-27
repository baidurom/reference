.class Lcom/android/server/BatteryService$QuickbootBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QuickbootBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService;)V
    .locals 0
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/server/BatteryService$QuickbootBroadcastReceiver;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 192
    const-string v3, "android.intent.action.ACTION_QUICKBOOT_SHUTDOWN"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 193
    iget-object v3, p0, Lcom/android/server/BatteryService$QuickbootBroadcastReceiver;->this$0:Lcom/android/server/BatteryService;

    #setter for: Lcom/android/server/BatteryService;->mIsQbShutdown:Z
    invoke-static {v3, v1}, Lcom/android/server/BatteryService;->access$002(Lcom/android/server/BatteryService;Z)Z

    .line 195
    iget-object v3, p0, Lcom/android/server/BatteryService$QuickbootBroadcastReceiver;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mQuickBoot:Lcom/baidu/service/IQuickBootService;
    invoke-static {v3}, Lcom/android/server/BatteryService;->access$100(Lcom/android/server/BatteryService;)Lcom/baidu/service/IQuickBootService;

    move-result-object v3

    if-nez v3, :cond_0

    .line 196
    const-string v3, "QuickBootService"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 197
    .local v0, b:Landroid/os/IBinder;
    iget-object v3, p0, Lcom/android/server/BatteryService$QuickbootBroadcastReceiver;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/baidu/service/IQuickBootService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/baidu/service/IQuickBootService;

    move-result-object v4

    #setter for: Lcom/android/server/BatteryService;->mQuickBoot:Lcom/baidu/service/IQuickBootService;
    invoke-static {v3, v4}, Lcom/android/server/BatteryService;->access$102(Lcom/android/server/BatteryService;Lcom/baidu/service/IQuickBootService;)Lcom/baidu/service/IQuickBootService;

    .line 200
    .end local v0           #b:Landroid/os/IBinder;
    :cond_0
    iget-object v3, p0, Lcom/android/server/BatteryService$QuickbootBroadcastReceiver;->this$0:Lcom/android/server/BatteryService;

    iget-object v4, p0, Lcom/android/server/BatteryService$QuickbootBroadcastReceiver;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mBatteryLevel:I
    invoke-static {v4}, Lcom/android/server/BatteryService;->access$200(Lcom/android/server/BatteryService;)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/BatteryService$QuickbootBroadcastReceiver;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mPlugType:I
    invoke-static {v5}, Lcom/android/server/BatteryService;->access$300(Lcom/android/server/BatteryService;)I

    move-result v5

    if-eqz v5, :cond_2

    :goto_0
    #calls: Lcom/android/server/BatteryService;->notifyQbService(IZ)V
    invoke-static {v3, v4, v1}, Lcom/android/server/BatteryService;->access$400(Lcom/android/server/BatteryService;IZ)V

    .line 203
    iget-object v1, p0, Lcom/android/server/BatteryService$QuickbootBroadcastReceiver;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$500(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$Led;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/BatteryService$Led;->updateQbLights()V

    .line 210
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v1, v2

    .line 200
    goto :goto_0

    .line 204
    :cond_3
    const-string v1, "android.intent.action.ACTION_QUICKBOOT_BOOT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 205
    iget-object v1, p0, Lcom/android/server/BatteryService$QuickbootBroadcastReceiver;->this$0:Lcom/android/server/BatteryService;

    #setter for: Lcom/android/server/BatteryService;->mIsQbShutdown:Z
    invoke-static {v1, v2}, Lcom/android/server/BatteryService;->access$002(Lcom/android/server/BatteryService;Z)Z

    .line 206
    iget-object v1, p0, Lcom/android/server/BatteryService$QuickbootBroadcastReceiver;->this$0:Lcom/android/server/BatteryService;

    iget-object v2, p0, Lcom/android/server/BatteryService$QuickbootBroadcastReceiver;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$700(Lcom/android/server/BatteryService;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    #setter for: Lcom/android/server/BatteryService;->mLastBatteryLevel:I
    invoke-static {v1, v2}, Lcom/android/server/BatteryService;->access$602(Lcom/android/server/BatteryService;I)I

    .line 207
    iget-object v1, p0, Lcom/android/server/BatteryService$QuickbootBroadcastReceiver;->this$0:Lcom/android/server/BatteryService;

    #calls: Lcom/android/server/BatteryService;->update()V
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$800(Lcom/android/server/BatteryService;)V

    goto :goto_1
.end method
