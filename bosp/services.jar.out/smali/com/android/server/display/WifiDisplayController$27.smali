.class Lcom/android/server/display/WifiDisplayController$27;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WifiDisplayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayController;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0
    .parameter

    .prologue
    .line 3117
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$27;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 3120
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$27;->this$0:Lcom/android/server/display/WifiDisplayController;

    #getter for: Lcom/android/server/display/WifiDisplayController;->mReConnectDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->access$8400(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v3

    if-nez v3, :cond_1

    .line 3121
    const-string v3, "WifiDisplayController"

    const-string v4, "no reconnect device"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3160
    :cond_0
    :goto_0
    return-void

    .line 3125
    :cond_1
    invoke-static {}, Lcom/android/server/display/WifiDisplayController;->access$700()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3126
    const-string v3, "WifiDisplayController"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3129
    :cond_2
    const/4 v1, 0x1

    .line 3130
    .local v1, empty:Z
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$27;->this$0:Lcom/android/server/display/WifiDisplayController;

    #getter for: Lcom/android/server/display/WifiDisplayController;->mAvailableWifiDisplayPeers:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->access$1400(Lcom/android/server/display/WifiDisplayController;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 3131
    .local v0, device:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {}, Lcom/android/server/display/WifiDisplayController;->access$700()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3132
    const-string v3, "WifiDisplayController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    #calls: Lcom/android/server/display/WifiDisplayController;->describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$1500(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3134
    :cond_4
    const/4 v1, 0x0

    .line 3136
    iget-object v3, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController$27;->this$0:Lcom/android/server/display/WifiDisplayController;

    #getter for: Lcom/android/server/display/WifiDisplayController;->mReConnectDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v4}, Lcom/android/server/display/WifiDisplayController;->access$8400(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3138
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$27;->this$0:Lcom/android/server/display/WifiDisplayController;

    #calls: Lcom/android/server/display/WifiDisplayController;->connect(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    invoke-static {v3, v0}, Lcom/android/server/display/WifiDisplayController;->access$8500(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    goto :goto_0

    .line 3143
    .end local v0           #device:Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_5
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$27;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController$27;->this$0:Lcom/android/server/display/WifiDisplayController;

    #getter for: Lcom/android/server/display/WifiDisplayController;->mReConnection_Timeout_Remain_Seconds:I
    invoke-static {v4}, Lcom/android/server/display/WifiDisplayController;->access$8600(Lcom/android/server/display/WifiDisplayController;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    #setter for: Lcom/android/server/display/WifiDisplayController;->mReConnection_Timeout_Remain_Seconds:I
    invoke-static {v3, v4}, Lcom/android/server/display/WifiDisplayController;->access$8602(Lcom/android/server/display/WifiDisplayController;I)I

    .line 3145
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$27;->this$0:Lcom/android/server/display/WifiDisplayController;

    #getter for: Lcom/android/server/display/WifiDisplayController;->mReConnection_Timeout_Remain_Seconds:I
    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->access$8600(Lcom/android/server/display/WifiDisplayController;)I

    move-result v3

    if-lez v3, :cond_6

    .line 3147
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$27;->this$0:Lcom/android/server/display/WifiDisplayController;

    #getter for: Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->access$1300(Lcom/android/server/display/WifiDisplayController;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController$27;->this$0:Lcom/android/server/display/WifiDisplayController;

    #getter for: Lcom/android/server/display/WifiDisplayController;->mReConnect:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/android/server/display/WifiDisplayController;->access$8700(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;

    move-result-object v4

    const-wide/16 v5, 0x3e8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3149
    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$27;->this$0:Lcom/android/server/display/WifiDisplayController;

    #getter for: Lcom/android/server/display/WifiDisplayController;->mReConnection_Timeout_Remain_Seconds:I
    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->access$8600(Lcom/android/server/display/WifiDisplayController;)I

    move-result v3

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_0

    .line 3150
    const-string v3, "WifiDisplayController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestScan() in mReConnect, mReConnection_Timeout_Remain_Seconds:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController$27;->this$0:Lcom/android/server/display/WifiDisplayController;

    #getter for: Lcom/android/server/display/WifiDisplayController;->mReConnection_Timeout_Remain_Seconds:I
    invoke-static {v5}, Lcom/android/server/display/WifiDisplayController;->access$8600(Lcom/android/server/display/WifiDisplayController;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3151
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$27;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {v3}, Lcom/android/server/display/WifiDisplayController;->requestScan()V

    goto/16 :goto_0

    .line 3154
    :cond_6
    const-string v3, "WifiDisplayController"

    const-string v4, "reconnect timeout!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3155
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$27;->this$0:Lcom/android/server/display/WifiDisplayController;

    #getter for: Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->access$6400(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x2050086

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 3157
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$27;->this$0:Lcom/android/server/display/WifiDisplayController;

    #calls: Lcom/android/server/display/WifiDisplayController;->resetReconnectVariable()V
    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->access$8800(Lcom/android/server/display/WifiDisplayController;)V

    goto/16 :goto_0
.end method
