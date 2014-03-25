.class Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;
.super Lcom/android/internal/util/State;
.source "WifiP2pService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InactiveState"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 1169
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 1172
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->getName()Ljava/lang/String;

    move-result-object v1

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 1176
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 13
    .parameter "message"

    .prologue
    .line 1180
    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v8, v9}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 1181
    iget v8, p1, Landroid/os/Message;->what:I

    sparse-switch v8, :sswitch_data_0

    .line 1364
    const/4 v8, 0x0

    .line 1366
    :goto_0
    return v8

    .line 1183
    :sswitch_0
    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " sending connect"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v8, v9}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 1184
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 1185
    .local v0, config:Landroid/net/wifi/p2p/WifiP2pConfig;
    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v8, v8, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    const/4 v9, 0x0

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mAutonomousGroup:Z
    invoke-static {v8, v9}, Landroid/net/wifi/p2p/WifiP2pService;->access$5702(Landroid/net/wifi/p2p/WifiP2pService;Z)Z

    .line 1188
    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v8}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v8

    iget-object v9, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/net/wifi/WifiNative;->getGroupCapability(Ljava/lang/String;)I

    move-result v2

    .line 1189
    .local v2, gc:I
    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {v8}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v8

    iget-object v9, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v8, v9, v2}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->updateGroupCapability(Ljava/lang/String;I)V

    .line 1190
    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-static {}, Landroid/net/wifi/p2p/WifiP2pService;->access$5800()Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->connect(Landroid/net/wifi/p2p/WifiP2pConfig;Z)I
    invoke-static {v8, v0, v9}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$5900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;Z)I

    move-result v1

    .line 1191
    .local v1, connectRet:I
    const/4 v8, -0x1

    if-ne v1, v8, :cond_1

    .line 1192
    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v9, 0x22008

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v8, p1, v9}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;I)V

    .line 1366
    .end local v0           #config:Landroid/net/wifi/p2p/WifiP2pConfig;
    .end local v1           #connectRet:I
    .end local v2           #gc:I
    :cond_0
    :goto_1
    :sswitch_1
    const/4 v8, 0x1

    goto :goto_0

    .line 1195
    .restart local v0       #config:Landroid/net/wifi/p2p/WifiP2pConfig;
    .restart local v1       #connectRet:I
    .restart local v2       #gc:I
    :cond_1
    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {v8}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v8

    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v9}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v9

    iget-object v9, v9, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->updateStatus(Ljava/lang/String;I)V

    .line 1196
    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendP2pPeersChangedBroadcast()V
    invoke-static {v8}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$3800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    .line 1197
    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v9, 0x22009

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v8, p1, v9}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;I)V

    .line 1198
    const/4 v8, 0x1

    if-ne v1, v8, :cond_2

    .line 1199
    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const-string v9, "Sending prov disc"

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v8, v9}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 1200
    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mProvisionDiscoveryState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$ProvisionDiscoveryState;
    invoke-static {v9}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$ProvisionDiscoveryState;

    move-result-object v9

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v8, v9}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 1203
    :cond_2
    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroupNegotiationState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;
    invoke-static {v9}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;

    move-result-object v9

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v8, v9}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 1206
    .end local v0           #config:Landroid/net/wifi/p2p/WifiP2pConfig;
    .end local v1           #connectRet:I
    .end local v2           #gc:I
    :sswitch_2
    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v8}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/wifi/WifiNative;->p2pStopFind()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1209
    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v8}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/wifi/WifiNative;->p2pFlush()Z

    .line 1210
    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v8, v8, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    const/4 v9, 0x0

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mServiceDiscReqId:Ljava/lang/String;
    invoke-static {v8, v9}, Landroid/net/wifi/p2p/WifiP2pService;->access$6502(Landroid/net/wifi/p2p/WifiP2pService;Ljava/lang/String;)Ljava/lang/String;

    .line 1211
    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v9, 0x22006

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v8, p1, v9}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;I)V

    goto :goto_1

    .line 1213
    :cond_3
    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v9, 0x22005

    const/4 v10, 0x0

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v8, p1, v9, v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    goto :goto_1

    .line 1218
    :sswitch_3
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/net/wifi/p2p/WifiP2pConfig;

    #setter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v9, v8}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6002(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 1219
    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v8, v8, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    const/4 v9, 0x0

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mAutonomousGroup:Z
    invoke-static {v8, v9}, Landroid/net/wifi/p2p/WifiP2pService;->access$5702(Landroid/net/wifi/p2p/WifiP2pService;Z)Z

    .line 1220
    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v8, v8, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    const/4 v9, 0x0

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mJoinExistingGroup:Z
    invoke-static {v8, v9}, Landroid/net/wifi/p2p/WifiP2pService;->access$6602(Landroid/net/wifi/p2p/WifiP2pService;Z)Z

    .line 1221
    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {v9}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v9

    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v10

    iget-object v10, v10, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->get(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v9

    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v10

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendConnectNoticeToApp(Landroid/net/wifi/p2p/WifiP2pDevice;Landroid/net/wifi/p2p/WifiP2pConfig;)Z
    invoke-static {v8, v9, v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pDevice;Landroid/net/wifi/p2p/WifiP2pConfig;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1223
    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mUserAuthorizingInvitationState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingInvitationState;
    invoke-static {v9}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingInvitationState;

    move-result-object v9

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v8, v9}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 1227
    :sswitch_4
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 1228
    .local v4, group:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-virtual {v4}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v6

    .line 1230
    .local v6, owner:Landroid/net/wifi/p2p/WifiP2pDevice;
    if-nez v6, :cond_4

    .line 1231
    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const-string v9, "Ignored invitation from null owner"

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v8, v9}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1235
    :cond_4
    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    new-instance v9, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v9}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    #setter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v8, v9}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6002(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 1236
    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v8}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v8

    invoke-virtual {v4}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v9

    iget-object v9, v9, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iput-object v9, v8, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 1240
    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {v8}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v8

    iget-object v9, v6, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->get(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 1241
    invoke-virtual {v6}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsPbcSupported()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1242
    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v8}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v8

    iget-object v8, v8, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    const/4 v9, 0x0

    iput v9, v8, Landroid/net/wifi/WpsInfo;->setup:I

    .line 1250
    :cond_5
    :goto_2
    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v8, v8, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    const/4 v9, 0x0

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mAutonomousGroup:Z
    invoke-static {v8, v9}, Landroid/net/wifi/p2p/WifiP2pService;->access$5702(Landroid/net/wifi/p2p/WifiP2pService;Z)Z

    .line 1251
    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v8, v8, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    const/4 v9, 0x1

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mJoinExistingGroup:Z
    invoke-static {v8, v9}, Landroid/net/wifi/p2p/WifiP2pService;->access$6602(Landroid/net/wifi/p2p/WifiP2pService;Z)Z

    .line 1253
    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {v9}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v9

    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v10

    iget-object v10, v10, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->get(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v9

    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v10

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendConnectNoticeToApp(Landroid/net/wifi/p2p/WifiP2pDevice;Landroid/net/wifi/p2p/WifiP2pConfig;)Z
    invoke-static {v8, v9, v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pDevice;Landroid/net/wifi/p2p/WifiP2pConfig;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1255
    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mUserAuthorizingInvitationState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingInvitationState;
    invoke-static {v9}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingInvitationState;

    move-result-object v9

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v8, v9}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$7000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 1243
    :cond_6
    invoke-virtual {v6}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsKeypadSupported()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1244
    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v8}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v8

    iget-object v8, v8, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    const/4 v9, 0x2

    iput v9, v8, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_2

    .line 1245
    :cond_7
    invoke-virtual {v6}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsDisplaySupported()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1246
    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v8}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v8

    iget-object v8, v8, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    const/4 v9, 0x1

    iput v9, v8, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_2

    .line 1267
    .end local v4           #group:Landroid/net/wifi/p2p/WifiP2pGroup;
    .end local v6           #owner:Landroid/net/wifi/p2p/WifiP2pDevice;
    :sswitch_5
    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v8, v8, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    const/4 v9, 0x1

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mAutonomousGroup:Z
    invoke-static {v8, v9}, Landroid/net/wifi/p2p/WifiP2pService;->access$5702(Landroid/net/wifi/p2p/WifiP2pService;Z)Z

    .line 1268
    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 1269
    .local v5, netId:I
    const/4 v7, 0x0

    .line 1270
    .local v7, ret:Z
    const/4 v8, -0x2

    if-ne v5, v8, :cond_9

    .line 1272
    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroups:Landroid/net/wifi/p2p/WifiP2pGroupList;
    invoke-static {v8}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroupList;

    move-result-object v8

    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v9, v9, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v9}, Landroid/net/wifi/p2p/WifiP2pService;->access$4600(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v9

    iget-object v9, v9, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/net/wifi/p2p/WifiP2pGroupList;->getNetworkId(Ljava/lang/String;)I

    move-result v5

    .line 1273
    const/4 v8, -0x1

    if-eq v5, v8, :cond_8

    .line 1274
    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v8}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/net/wifi/WifiNative;->p2pGroupAdd(I)Z

    move-result v7

    .line 1282
    :goto_3
    if-eqz v7, :cond_a

    .line 1283
    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v9, 0x2200f

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v8, p1, v9}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;I)V

    .line 1284
    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroupNegotiationState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;
    invoke-static {v9}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;

    move-result-object v9

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v8, v9}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$7100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 1276
    :cond_8
    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v8}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/net/wifi/WifiNative;->p2pGroupAdd(Z)Z

    move-result v7

    goto :goto_3

    .line 1279
    :cond_9
    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v8}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/net/wifi/WifiNative;->p2pGroupAdd(Z)Z

    move-result v7

    goto :goto_3

    .line 1286
    :cond_a
    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v9, 0x2200e

    const/4 v10, 0x0

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v8, p1, v9, v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 1292
    .end local v5           #netId:I
    .end local v7           #ret:Z
    :sswitch_6
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/net/wifi/p2p/WifiP2pGroup;

    #setter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v9, v8}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1202(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 1293
    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " group started"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v8, v9}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 1296
    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v8}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkId()I

    move-result v8

    const/4 v9, -0x2

    if-ne v8, v9, :cond_b

    .line 1297
    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v8, v8, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    const/4 v9, 0x0

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mAutonomousGroup:Z
    invoke-static {v8, v9}, Landroid/net/wifi/p2p/WifiP2pService;->access$5702(Landroid/net/wifi/p2p/WifiP2pService;Z)Z

    .line 1298
    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v8, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$7200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;)V

    .line 1299
    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroupNegotiationState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;
    invoke-static {v9}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;

    move-result-object v9

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v8, v9}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$7300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 1301
    :cond_b
    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unexpected group creation, remove "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v8, v9}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 1302
    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v8}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v8

    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v9}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/net/wifi/WifiNative;->p2pGroupRemove(Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 1307
    :sswitch_7
    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v9, 0x2205c

    invoke-virtual {v8, v9}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->setFastConnectInfo(I)V

    goto/16 :goto_1

    .line 1310
    :sswitch_8
    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v9, v8, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mFastConnectInfo:Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;
    invoke-static {v9, v8}, Landroid/net/wifi/p2p/WifiP2pService;->access$2702(Landroid/net/wifi/p2p/WifiP2pService;Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;)Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    .line 1311
    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v8, v8, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    const/4 v9, 0x1

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mGcFastConnectEnaled:Z
    invoke-static {v8, v9}, Landroid/net/wifi/p2p/WifiP2pService;->access$2802(Landroid/net/wifi/p2p/WifiP2pService;Z)Z

    .line 1312
    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v9, 0x2205d

    invoke-virtual {v8, v9}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->setFastConnectInfo(I)V

    goto/16 :goto_1

    .line 1316
    :sswitch_9
    const/4 v8, 0x1

    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v9, v9, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mBeamPlusStart:Z
    invoke-static {v9}, Landroid/net/wifi/p2p/WifiP2pService;->access$400(Landroid/net/wifi/p2p/WifiP2pService;)Z

    move-result v9

    if-ne v8, v9, :cond_c

    .line 1317
    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v8}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/net/wifi/WifiNative;->p2pBeamPlusGO(I)V

    .line 1320
    :cond_c
    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v8, v8, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    const/4 v9, 0x0

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mAutonomousGroup:Z
    invoke-static {v8, v9}, Landroid/net/wifi/p2p/WifiP2pService;->access$5702(Landroid/net/wifi/p2p/WifiP2pService;Z)Z

    .line 1321
    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v8}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v8

    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v9, v9, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mFastConnectInfo:Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;
    invoke-static {v9}, Landroid/net/wifi/p2p/WifiP2pService;->access$2700(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    move-result-object v9

    iget v9, v9, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->networkId:I

    invoke-virtual {v8, v9}, Landroid/net/wifi/WifiNative;->p2pGroupAdd(I)Z

    .line 1322
    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroupNegotiationState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;
    invoke-static {v9}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;

    move-result-object v9

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v8, v9}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$7400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 1326
    :sswitch_a
    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "FAST_CONNECT_AS_GC, mFoundGo="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v10, v10, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mFoundGo:Z
    invoke-static {v10}, Landroid/net/wifi/p2p/WifiP2pService;->access$4800(Landroid/net/wifi/p2p/WifiP2pService;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " inMpeers="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v10

    iget-object v11, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v11, v11, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mFastConnectInfo:Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;
    invoke-static {v11}, Landroid/net/wifi/p2p/WifiP2pService;->access$2700(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    move-result-object v11

    iget-object v11, v11, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->containsPeer(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v8, v9}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 1331
    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v8, v8, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mFoundGo:Z
    invoke-static {v8}, Landroid/net/wifi/p2p/WifiP2pService;->access$4800(Landroid/net/wifi/p2p/WifiP2pService;)Z

    move-result v8

    if-eqz v8, :cond_d

    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {v8}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v8

    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v9, v9, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mFastConnectInfo:Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;
    invoke-static {v9}, Landroid/net/wifi/p2p/WifiP2pService;->access$2700(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->containsPeer(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_e

    .line 1332
    :cond_d
    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v8, v8, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    const/4 v9, 0x0

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mFoundGoTimeOut:Z
    invoke-static {v8, v9}, Landroid/net/wifi/p2p/WifiP2pService;->access$4702(Landroid/net/wifi/p2p/WifiP2pService;Z)Z

    .line 1333
    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v8, v8, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    const/4 v9, 0x0

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mFoundGo:Z
    invoke-static {v8, v9}, Landroid/net/wifi/p2p/WifiP2pService;->access$4802(Landroid/net/wifi/p2p/WifiP2pService;Z)Z

    .line 1334
    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v9, 0x2205e

    const-wide/16 v10, 0xbb8

    invoke-virtual {v8, v9, v10, v11}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendMessageDelayed(IJ)V

    .line 1335
    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v10, 0x23009

    invoke-static {}, Landroid/net/wifi/p2p/WifiP2pService;->access$7504()I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v9

    const-wide/16 v10, 0x7530

    invoke-virtual {v8, v9, v10, v11}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 1337
    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const-string v9, "Send FAST_CONNECT_FIND_GO_TIMED_OUT message"

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v8, v9}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1340
    :cond_e
    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v8}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v8

    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v9, v9, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mFastConnectInfo:Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;
    invoke-static {v9}, Landroid/net/wifi/p2p/WifiP2pService;->access$2700(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/net/wifi/WifiNative;->getGroupCapability(Ljava/lang/String;)I

    move-result v3

    .line 1341
    .local v3, gc2:I
    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {v8}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v8

    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v9, v9, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mFastConnectInfo:Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;
    invoke-static {v9}, Landroid/net/wifi/p2p/WifiP2pService;->access$2700(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v8, v9, v3}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->updateGroupCapability(Ljava/lang/String;I)V

    .line 1342
    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    new-instance v9, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v9}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    #setter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v8, v9}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6002(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 1343
    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v8}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v8

    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v9, v9, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mFastConnectInfo:Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;
    invoke-static {v9}, Landroid/net/wifi/p2p/WifiP2pService;->access$2700(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->deviceAddress:Ljava/lang/String;

    iput-object v9, v8, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 1344
    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v8}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v8

    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v9, v9, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mFastConnectInfo:Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;
    invoke-static {v9}, Landroid/net/wifi/p2p/WifiP2pService;->access$2700(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    move-result-object v9

    iget v9, v9, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->networkId:I

    iput v9, v8, Landroid/net/wifi/p2p/WifiP2pConfig;->netId:I

    .line 1345
    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v8}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/wifi/WifiNative;->p2pStopFind()Z

    .line 1348
    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Fast connect join Group, is peer GO? "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v10

    iget-object v11, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v11, v11, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mFastConnectInfo:Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;
    invoke-static {v11}, Landroid/net/wifi/p2p/WifiP2pService;->access$2700(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    move-result-object v11

    iget-object v11, v11, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->isGroupOwner(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v8, v9}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 1349
    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v8}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v8

    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v9, v9, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mFastConnectInfo:Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;
    invoke-static {v9}, Landroid/net/wifi/p2p/WifiP2pService;->access$2700(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    move-result-object v9

    iget v9, v9, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->networkId:I

    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v10, v10, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mFastConnectInfo:Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;
    invoke-static {v10}, Landroid/net/wifi/p2p/WifiP2pService;->access$2700(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    move-result-object v10

    iget-object v10, v10, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/net/wifi/WifiNative;->p2pReinvoke(ILjava/lang/String;)Z

    .line 1350
    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroupNegotiationState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;
    invoke-static {v9}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;

    move-result-object v9

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v8, v9}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$7600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 1355
    .end local v3           #gc2:I
    :sswitch_b
    invoke-static {}, Landroid/net/wifi/p2p/WifiP2pService;->access$7500()I

    move-result v8

    iget v9, p1, Landroid/os/Message;->arg1:I

    if-ne v8, v9, :cond_0

    .line 1356
    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const-string v9, "FAST CONNECT FIND GO timed out"

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v8, v9}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 1357
    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->handleGroupCreationFailure()V
    invoke-static {v8}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$7700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    .line 1358
    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v8, v8, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    const/4 v9, 0x1

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mFoundGoTimeOut:Z
    invoke-static {v8, v9}, Landroid/net/wifi/p2p/WifiP2pService;->access$4702(Landroid/net/wifi/p2p/WifiP2pService;Z)Z

    .line 1359
    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v8, v8, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    const/4 v9, 0x0

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mFoundGo:Z
    invoke-static {v8, v9}, Landroid/net/wifi/p2p/WifiP2pService;->access$4802(Landroid/net/wifi/p2p/WifiP2pService;Z)Z

    goto/16 :goto_1

    .line 1181
    nop

    :sswitch_data_0
    .sparse-switch
        0x22004 -> :sswitch_2
        0x22007 -> :sswitch_0
        0x2200d -> :sswitch_5
        0x2205a -> :sswitch_7
        0x2205b -> :sswitch_8
        0x2205c -> :sswitch_9
        0x2205d -> :sswitch_a
        0x23009 -> :sswitch_b
        0x24017 -> :sswitch_3
        0x2401d -> :sswitch_6
        0x2401f -> :sswitch_4
        0x24021 -> :sswitch_1
        0x24023 -> :sswitch_1
        0x24024 -> :sswitch_1
    .end sparse-switch
.end method
