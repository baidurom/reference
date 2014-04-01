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
    .line 334
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$1;->this$0:Lcom/android/server/connectivity/Tethering;

    iput-object p2, p0, Lcom/android/server/connectivity/Tethering$1;->val$service:Landroid/os/INetworkManagementService;

    iput-object p3, p0, Lcom/android/server/connectivity/Tethering$1;->val$wifiService:Landroid/net/wifi/IWifiManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 337
    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$1;->val$service:Landroid/os/INetworkManagementService;

    invoke-interface {v2}, Landroid/os/INetworkManagementService;->getStartRequest()Z

    move-result v2

    if-nez v2, :cond_0

    .line 338
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$1;->val$wifiService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v2}, Landroid/net/wifi/IWifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 339
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$1;->val$service:Landroid/os/INetworkManagementService;

    const-string v3, "wifi.interface"

    const-string v4, "wlan0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ap0"

    invoke-interface {v2, v0, v3, v4}, Landroid/os/INetworkManagementService;->restartAccessPoint(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_0
    :goto_0
    return-void

    .line 341
    :catch_0
    move-exception v1

    .line 342
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "Tethering"

    const-string v3, "restartAccessPoint failed!"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
