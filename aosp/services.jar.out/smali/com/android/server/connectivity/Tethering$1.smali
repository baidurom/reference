.class Lcom/android/server/connectivity/Tethering$1;
.super Ljava/lang/Thread;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/Tethering;->interfaceAdded(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/Tethering;

.field final synthetic val$service:Landroid/os/INetworkManagementService;

.field final synthetic val$wifiService:Landroid/net/wifi/IWifiManager;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Tethering;Landroid/os/INetworkManagementService;Landroid/net/wifi/IWifiManager;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 419
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$1;->this$0:Lcom/android/server/connectivity/Tethering;

    iput-object p2, p0, Lcom/android/server/connectivity/Tethering$1;->val$service:Landroid/os/INetworkManagementService;

    iput-object p3, p0, Lcom/android/server/connectivity/Tethering$1;->val$wifiService:Landroid/net/wifi/IWifiManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 422
    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$1;->val$service:Landroid/os/INetworkManagementService;

    invoke-interface {v3}, Landroid/os/INetworkManagementService;->getStartRequest()Z

    move-result v2

    .line 423
    .local v2, startRequest:Z
    const-string v3, "Tethering"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "restartAccessPoint getStartRequest:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    if-nez v2, :cond_0

    .line 425
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$1;->val$wifiService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v3}, Landroid/net/wifi/IWifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 426
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$1;->val$wifiService:Landroid/net/wifi/IWifiManager;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/net/wifi/IWifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 427
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$1;->val$wifiService:Landroid/net/wifi/IWifiManager;

    const/4 v4, 0x1

    invoke-interface {v3, v0, v4}, Landroid/net/wifi/IWifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v2           #startRequest:Z
    :cond_0
    :goto_0
    return-void

    .line 429
    :catch_0
    move-exception v1

    .line 430
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "Tethering"

    const-string v4, "restartAccessPoint failed!"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
