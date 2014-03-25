.class Lcom/android/server/WifiService$2;
.super Landroid/content/BroadcastReceiver;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/WifiService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiService;


# direct methods
.method constructor <init>(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter

    .prologue
    .line 447
    iput-object p1, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 450
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 451
    const-string v3, "wifi_state"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 454
    .local v0, wifiState:I
    iget-object v3, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    const/4 v4, 0x3

    if-ne v0, v4, :cond_1

    :goto_0
    #setter for: Lcom/android/server/WifiService;->mWifiEnabled:Z
    invoke-static {v3, v1}, Lcom/android/server/WifiService;->access$1202(Lcom/android/server/WifiService;Z)Z

    .line 457
    iget-object v1, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->resetNotification()V
    invoke-static {v1}, Lcom/android/server/WifiService;->access$1300(Lcom/android/server/WifiService;)V

    .line 458
    iget-object v1, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #setter for: Lcom/android/server/WifiService;->mWaitForScanResult:Z
    invoke-static {v1, v2}, Lcom/android/server/WifiService;->access$1402(Lcom/android/server/WifiService;Z)Z

    .line 459
    iget-object v1, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #setter for: Lcom/android/server/WifiService;->mShowReselectDialog:Z
    invoke-static {v1, v2}, Lcom/android/server/WifiService;->access$1502(Lcom/android/server/WifiService;Z)Z

    .line 481
    .end local v0           #wifiState:I
    :cond_0
    :goto_1
    return-void

    .restart local v0       #wifiState:I
    :cond_1
    move v1, v2

    .line 454
    goto :goto_0

    .line 460
    .end local v0           #wifiState:I
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 462
    iget-object v3, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    const-string v1, "networkInfo"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    iput-object v1, v3, Lcom/android/server/WifiService;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 464
    const-string v1, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received NETWORK_STATE_CHANGED_ACTION, mNetworkInfo:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    iget-object v4, v4, Lcom/android/server/WifiService;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mediatek/xlog/SXlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    sget-object v1, Lcom/android/server/WifiService$5;->$SwitchMap$android$net$NetworkInfo$DetailedState:[I

    iget-object v3, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    iget-object v3, v3, Lcom/android/server/WifiService;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 468
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #setter for: Lcom/android/server/WifiService;->mWaitForScanResult:Z
    invoke-static {v1, v2}, Lcom/android/server/WifiService;->access$1402(Lcom/android/server/WifiService;Z)Z

    .line 471
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->evaluateTrafficStatsPolling()V
    invoke-static {v1}, Lcom/android/server/WifiService;->access$1600(Lcom/android/server/WifiService;)V

    .line 472
    iget-object v1, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->resetNotification()V
    invoke-static {v1}, Lcom/android/server/WifiService;->access$1300(Lcom/android/server/WifiService;)V

    goto :goto_1

    .line 475
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 477
    iget-object v1, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    const-string v3, "SHOW_RESELECT_DIALOG"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    #setter for: Lcom/android/server/WifiService;->mShowReselectDialog:Z
    invoke-static {v1, v2}, Lcom/android/server/WifiService;->access$1502(Lcom/android/server/WifiService;Z)Z

    .line 478
    iget-object v1, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->noteScanEnd()V
    invoke-static {v1}, Lcom/android/server/WifiService;->access$1700(Lcom/android/server/WifiService;)V

    .line 479
    iget-object v1, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->checkAndSetNotification()V
    invoke-static {v1}, Lcom/android/server/WifiService;->access$1800(Lcom/android/server/WifiService;)V

    goto :goto_1

    .line 466
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
