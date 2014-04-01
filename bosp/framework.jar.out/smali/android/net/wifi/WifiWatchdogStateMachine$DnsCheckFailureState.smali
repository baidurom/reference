.class Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckFailureState;
.super Lcom/android/internal/util/State;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DnsCheckFailureState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiWatchdogStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 1000
    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckFailureState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .prologue
    .line 1004
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckFailureState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5208(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    .line 1005
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckFailureState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const v1, 0x21065

    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckFailureState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mNetEventCounter:I
    invoke-static {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$000(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1006
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    .line 1010
    iget v2, p1, Landroid/os/Message;->what:I

    const v3, 0x21065

    if-eq v2, v3, :cond_0

    .line 1011
    const/4 v1, 0x0

    .line 1053
    :goto_0
    return v1

    .line 1014
    :cond_0
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckFailureState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mNetEventCounter:I
    invoke-static {v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$000(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 1016
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckFailureState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v3, "Msg out of sync, ignoring..."

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    goto :goto_0

    .line 1021
    :cond_1
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckFailureState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-boolean v2, v2, Landroid/net/wifi/WifiWatchdogStateMachine;->mDisableAPNextFailure:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckFailureState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mNumCheckFailures:I
    invoke-static {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5200(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v2

    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckFailureState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mBssids:Ljava/util/HashSet;
    invoke-static {v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5300(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckFailureState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mNumCheckFailures:I
    invoke-static {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5200(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v2

    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckFailureState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mMaxSsidBlacklists:I
    invoke-static {v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5400(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v3

    if-lt v2, v3, :cond_6

    .line 1023
    :cond_2
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5500()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1024
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckFailureState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v3, "Would disable bad network, but device has no mobile data!  Going idle..."

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1027
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckFailureState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckFailureState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mNotConnectedState:Landroid/net/wifi/WifiWatchdogStateMachine$NotConnectedState;
    invoke-static {v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$500(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$NotConnectedState;

    move-result-object v3

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5600(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 1032
    :cond_3
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckFailureState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Disabling current SSID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckFailureState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mConnectionInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1800(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v4

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->wifiInfoToStr(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;
    invoke-static {v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1700(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "numCheckFailures "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckFailureState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mNumCheckFailures:I
    invoke-static {v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5200(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", numAPs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckFailureState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mBssids:Ljava/util/HashSet;
    invoke-static {v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5300(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1035
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckFailureState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mConnectionInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1800(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    .line 1036
    .local v0, networkId:I
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckFailureState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-boolean v2, v2, Landroid/net/wifi/WifiWatchdogStateMachine;->mHasConnectedWifiManager:Z

    if-nez v2, :cond_4

    .line 1037
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckFailureState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5700(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckFailureState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1100(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckFailureState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/wifi/WifiManager;->asyncConnect(Landroid/content/Context;Landroid/os/Handler;)V

    .line 1038
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckFailureState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iput-boolean v1, v2, Landroid/net/wifi/WifiWatchdogStateMachine;->mHasConnectedWifiManager:Z

    .line 1040
    :cond_4
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckFailureState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5700(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/net/wifi/WifiManager;->disableNetwork(II)V

    .line 1041
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckFailureState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mShowDisabledNotification:Z
    invoke-static {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5800(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckFailureState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mConnectionInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1800(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->isExplicitConnect()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1042
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckFailureState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->setDisabledNetworkNotificationVisible(Z)V
    invoke-static {v2, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1400(Landroid/net/wifi/WifiWatchdogStateMachine;Z)V

    .line 1044
    :cond_5
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckFailureState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckFailureState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mNotConnectedState:Landroid/net/wifi/WifiWatchdogStateMachine$NotConnectedState;
    invoke-static {v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$500(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$NotConnectedState;

    move-result-object v3

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5900(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 1046
    .end local v0           #networkId:I
    :cond_6
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckFailureState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Blacklisting current BSSID.  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckFailureState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mConnectionInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1800(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v4

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->wifiInfoToStr(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;
    invoke-static {v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1700(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "numCheckFailures "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckFailureState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mNumCheckFailures:I
    invoke-static {v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5200(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", numAPs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckFailureState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mBssids:Ljava/util/HashSet;
    invoke-static {v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5300(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1049
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckFailureState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5700(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckFailureState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mConnectionInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1800(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiManager;->addToBlacklist(Ljava/lang/String;)Z

    .line 1050
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckFailureState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5700(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->reassociate()Z

    .line 1051
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckFailureState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckFailureState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mBlacklistedApState:Landroid/net/wifi/WifiWatchdogStateMachine$BlacklistedApState;
    invoke-static {v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6000(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$BlacklistedApState;

    move-result-object v3

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6100(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0
.end method
