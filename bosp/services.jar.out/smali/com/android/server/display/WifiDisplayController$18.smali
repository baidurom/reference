.class Lcom/android/server/display/WifiDisplayController$18;
.super Landroid/content/BroadcastReceiver;
.source "WifiDisplayController.java"


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
    .line 1534
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$18;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x1

    .line 1537
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1538
    .local v0, action:Ljava/lang/String;
    const-string v8, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1541
    const-string v8, "wifi_p2p_state"

    invoke-virtual {p2, v8, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    .line 1545
    .local v2, enabled:Z
    :goto_0
    const-string v7, "WifiDisplayController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received WIFI_P2P_STATE_CHANGED_ACTION: enabled="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1548
    iget-object v7, p0, Lcom/android/server/display/WifiDisplayController$18;->this$0:Lcom/android/server/display/WifiDisplayController;

    #calls: Lcom/android/server/display/WifiDisplayController;->handleStateChanged(Z)V
    invoke-static {v7, v2}, Lcom/android/server/display/WifiDisplayController;->access$4600(Lcom/android/server/display/WifiDisplayController;Z)V

    .line 1637
    .end local v2           #enabled:Z
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v2, v7

    .line 1541
    goto :goto_0

    .line 1549
    :cond_2
    const-string v8, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1550
    invoke-static {}, Lcom/android/server/display/WifiDisplayController;->access$700()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1551
    const-string v7, "WifiDisplayController"

    const-string v8, "Received WIFI_P2P_PEERS_CHANGED_ACTION."

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1554
    :cond_3
    iget-object v7, p0, Lcom/android/server/display/WifiDisplayController$18;->this$0:Lcom/android/server/display/WifiDisplayController;

    #calls: Lcom/android/server/display/WifiDisplayController;->handlePeersChanged()V
    invoke-static {v7}, Lcom/android/server/display/WifiDisplayController;->access$4700(Lcom/android/server/display/WifiDisplayController;)V

    goto :goto_1

    .line 1555
    :cond_4
    const-string v8, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1556
    const-string v7, "networkInfo"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkInfo;

    .line 1559
    .local v4, networkInfo:Landroid/net/NetworkInfo;
    const-string v7, "reason="

    const/4 v8, -0x1

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 1560
    .local v6, reason:I
    invoke-static {}, Lcom/android/server/display/WifiDisplayController;->access$700()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1561
    const-string v7, "WifiDisplayController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received WIFI_P2P_CONNECTION_CHANGED_ACTION: networkInfo="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", reason = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1569
    :goto_2
    iget-object v7, p0, Lcom/android/server/display/WifiDisplayController$18;->this$0:Lcom/android/server/display/WifiDisplayController;

    #calls: Lcom/android/server/display/WifiDisplayController;->handleConnectionChanged(Landroid/net/NetworkInfo;I)V
    invoke-static {v7, v4, v6}, Lcom/android/server/display/WifiDisplayController;->access$4800(Lcom/android/server/display/WifiDisplayController;Landroid/net/NetworkInfo;I)V

    .line 1571
    iget-object v7, p0, Lcom/android/server/display/WifiDisplayController$18;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    #setter for: Lcom/android/server/display/WifiDisplayController;->mLastTimeConnected:Z
    invoke-static {v7, v8}, Lcom/android/server/display/WifiDisplayController;->access$4902(Lcom/android/server/display/WifiDisplayController;Z)Z

    .line 1574
    iget-object v7, p0, Lcom/android/server/display/WifiDisplayController$18;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object v8, p0, Lcom/android/server/display/WifiDisplayController$18;->this$0:Lcom/android/server/display/WifiDisplayController;

    #getter for: Lcom/android/server/display/WifiDisplayController;->mLastTimeConnected:Z
    invoke-static {v8}, Lcom/android/server/display/WifiDisplayController;->access$4900(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v8

    #calls: Lcom/android/server/display/WifiDisplayController;->updateWifiChannelId(ZLandroid/content/Intent;)V
    invoke-static {v7, v8, p2}, Lcom/android/server/display/WifiDisplayController;->access$5000(Lcom/android/server/display/WifiDisplayController;ZLandroid/content/Intent;)V

    goto :goto_1

    .line 1564
    :cond_5
    const-string v7, "WifiDisplayController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received WIFI_P2P_CONNECTION_CHANGED_ACTION: isConnected? "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", reason = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1579
    .end local v4           #networkInfo:Landroid/net/NetworkInfo;
    .end local v6           #reason:I
    :cond_6
    const-string v8, "com.mediatek.mediaplayer.DRM_PLAY"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1580
    const/4 v5, 0x0

    .line 1581
    .local v5, playerID:I
    iget-object v8, p0, Lcom/android/server/display/WifiDisplayController$18;->this$0:Lcom/android/server/display/WifiDisplayController;

    const-string v9, "isPlaying"

    invoke-virtual {p2, v9, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    #setter for: Lcom/android/server/display/WifiDisplayController;->mDRMContent_Mediaplayer:Z
    invoke-static {v8, v9}, Lcom/android/server/display/WifiDisplayController;->access$5102(Lcom/android/server/display/WifiDisplayController;Z)Z

    .line 1582
    const-string v8, "playerId"

    invoke-virtual {p2, v8, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 1583
    const-string v8, "WifiDisplayController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Received DRM_CONTENT_MEDIAPLAYER: isPlaying = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController$18;->this$0:Lcom/android/server/display/WifiDisplayController;

    #getter for: Lcom/android/server/display/WifiDisplayController;->mDRMContent_Mediaplayer:Z
    invoke-static {v10}, Lcom/android/server/display/WifiDisplayController;->access$5100(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", player = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", isConnected = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController$18;->this$0:Lcom/android/server/display/WifiDisplayController;

    #getter for: Lcom/android/server/display/WifiDisplayController;->mIsWFDConnected:Z
    invoke-static {v10}, Lcom/android/server/display/WifiDisplayController;->access$5200(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", isConnecting = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController$18;->this$0:Lcom/android/server/display/WifiDisplayController;

    #getter for: Lcom/android/server/display/WifiDisplayController;->mRTSPConnecting:Z
    invoke-static {v10}, Lcom/android/server/display/WifiDisplayController;->access$3300(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1588
    iget-object v8, p0, Lcom/android/server/display/WifiDisplayController$18;->this$0:Lcom/android/server/display/WifiDisplayController;

    #getter for: Lcom/android/server/display/WifiDisplayController;->mIsWFDConnected:Z
    invoke-static {v8}, Lcom/android/server/display/WifiDisplayController;->access$5200(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v8

    if-eq v2, v8, :cond_7

    iget-object v8, p0, Lcom/android/server/display/WifiDisplayController$18;->this$0:Lcom/android/server/display/WifiDisplayController;

    #getter for: Lcom/android/server/display/WifiDisplayController;->mRTSPConnecting:Z
    invoke-static {v8}, Lcom/android/server/display/WifiDisplayController;->access$3300(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v8

    if-ne v2, v8, :cond_0

    .line 1590
    :cond_7
    iget-object v8, p0, Lcom/android/server/display/WifiDisplayController$18;->this$0:Lcom/android/server/display/WifiDisplayController;

    #getter for: Lcom/android/server/display/WifiDisplayController;->mDRMContent_Mediaplayer:Z
    invoke-static {v8}, Lcom/android/server/display/WifiDisplayController;->access$5100(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v8

    if-ne v2, v8, :cond_8

    .line 1591
    iget-object v8, p0, Lcom/android/server/display/WifiDisplayController$18;->this$0:Lcom/android/server/display/WifiDisplayController;

    #calls: Lcom/android/server/display/WifiDisplayController;->setRemoteSubmixOn(Z)V
    invoke-static {v8, v7}, Lcom/android/server/display/WifiDisplayController;->access$5300(Lcom/android/server/display/WifiDisplayController;Z)V

    .line 1592
    iget-object v7, p0, Lcom/android/server/display/WifiDisplayController$18;->this$0:Lcom/android/server/display/WifiDisplayController;

    #setter for: Lcom/android/server/display/WifiDisplayController;->mPlayerID_Mediaplayer:I
    invoke-static {v7, v5}, Lcom/android/server/display/WifiDisplayController;->access$5402(Lcom/android/server/display/WifiDisplayController;I)I

    goto/16 :goto_1

    .line 1594
    :cond_8
    iget-object v7, p0, Lcom/android/server/display/WifiDisplayController$18;->this$0:Lcom/android/server/display/WifiDisplayController;

    #getter for: Lcom/android/server/display/WifiDisplayController;->mPlayerID_Mediaplayer:I
    invoke-static {v7}, Lcom/android/server/display/WifiDisplayController;->access$5400(Lcom/android/server/display/WifiDisplayController;)I

    move-result v7

    if-ne v7, v5, :cond_9

    .line 1595
    iget-object v7, p0, Lcom/android/server/display/WifiDisplayController$18;->this$0:Lcom/android/server/display/WifiDisplayController;

    #calls: Lcom/android/server/display/WifiDisplayController;->setRemoteSubmixOn(Z)V
    invoke-static {v7, v2}, Lcom/android/server/display/WifiDisplayController;->access$5300(Lcom/android/server/display/WifiDisplayController;Z)V

    goto/16 :goto_1

    .line 1597
    :cond_9
    const-string v7, "WifiDisplayController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "player ID doesn\'t match last time: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/display/WifiDisplayController$18;->this$0:Lcom/android/server/display/WifiDisplayController;

    #getter for: Lcom/android/server/display/WifiDisplayController;->mPlayerID_Mediaplayer:I
    invoke-static {v9}, Lcom/android/server/display/WifiDisplayController;->access$5400(Lcom/android/server/display/WifiDisplayController;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1603
    .end local v5           #playerID:I
    :cond_a
    const-string v7, "android.net.wifi.p2p.DISCOVERY_STATE_CHANGE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 1604
    const-string v7, "discoveryState"

    invoke-virtual {p2, v7, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1606
    .local v1, discoveryState:I
    invoke-static {}, Lcom/android/server/display/WifiDisplayController;->access$700()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1607
    const-string v7, "WifiDisplayController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received WIFI_P2P_DISCOVERY_CHANGED_ACTION: discoveryState="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1610
    :cond_b
    if-ne v1, v2, :cond_0

    .line 1611
    iget-object v7, p0, Lcom/android/server/display/WifiDisplayController$18;->this$0:Lcom/android/server/display/WifiDisplayController;

    #calls: Lcom/android/server/display/WifiDisplayController;->handleScanFinished()V
    invoke-static {v7}, Lcom/android/server/display/WifiDisplayController;->access$1200(Lcom/android/server/display/WifiDisplayController;)V

    goto/16 :goto_1

    .line 1615
    .end local v1           #discoveryState:I
    :cond_c
    const-string v7, "android.intent.action.ACTION_PRE_SHUTDOWN"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 1616
    const-string v7, "WifiDisplayController"

    const-string v8, "Received android.intent.action.ACTION_PRE_SHUTDOWN, do disconnect anyway"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1620
    iget-object v7, p0, Lcom/android/server/display/WifiDisplayController$18;->this$0:Lcom/android/server/display/WifiDisplayController;

    #getter for: Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v7}, Lcom/android/server/display/WifiDisplayController;->access$2300(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v7

    if-eqz v7, :cond_d

    .line 1621
    iget-object v7, p0, Lcom/android/server/display/WifiDisplayController$18;->this$0:Lcom/android/server/display/WifiDisplayController;

    #getter for: Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v7}, Lcom/android/server/display/WifiDisplayController;->access$2300(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/display/WifiDisplayController$18;->this$0:Lcom/android/server/display/WifiDisplayController;

    #getter for: Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v8}, Lcom/android/server/display/WifiDisplayController;->access$2200(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 1624
    :cond_d
    iget-object v7, p0, Lcom/android/server/display/WifiDisplayController$18;->this$0:Lcom/android/server/display/WifiDisplayController;

    #getter for: Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;
    invoke-static {v7}, Lcom/android/server/display/WifiDisplayController;->access$1900(Lcom/android/server/display/WifiDisplayController;)Landroid/media/RemoteDisplay;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 1625
    iget-object v7, p0, Lcom/android/server/display/WifiDisplayController$18;->this$0:Lcom/android/server/display/WifiDisplayController;

    #getter for: Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;
    invoke-static {v7}, Lcom/android/server/display/WifiDisplayController;->access$1900(Lcom/android/server/display/WifiDisplayController;)Landroid/media/RemoteDisplay;

    move-result-object v7

    invoke-virtual {v7}, Landroid/media/RemoteDisplay;->dispose()V

    goto/16 :goto_1

    .line 1629
    :cond_e
    const-string v7, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1630
    const-string v7, "networkInfo"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    .line 1632
    .local v3, info:Landroid/net/NetworkInfo;
    iget-object v7, p0, Lcom/android/server/display/WifiDisplayController$18;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    #setter for: Lcom/android/server/display/WifiDisplayController;->mWifiApConnected:Z
    invoke-static {v7, v8}, Lcom/android/server/display/WifiDisplayController;->access$5502(Lcom/android/server/display/WifiDisplayController;Z)Z

    .line 1634
    const-string v7, "WifiDisplayController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received WifiManager.NETWORK_STATE_CHANGED_ACTION, connected:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/display/WifiDisplayController$18;->this$0:Lcom/android/server/display/WifiDisplayController;

    #getter for: Lcom/android/server/display/WifiDisplayController;->mWifiApConnected:Z
    invoke-static {v9}, Lcom/android/server/display/WifiDisplayController;->access$5500(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method
