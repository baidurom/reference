.class Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SupplicantStartingState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 2435
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 2438
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 2439
    const v0, 0xc365

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 2440
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 10
    .parameter "message"

    .prologue
    const/4 v5, 0x1

    const/4 v9, -0x1

    const/4 v4, 0x0

    .line 2443
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 2444
    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_0

    .line 2519
    :goto_0
    return v4

    .line 2446
    :sswitch_0
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v7, "Supplicant connection established"

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 2447
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v7, 0x3

    #calls: Landroid/net/wifi/WifiStateMachine;->setWifiState(I)V
    invoke-static {v6, v7}, Landroid/net/wifi/WifiStateMachine;->access$2300(Landroid/net/wifi/WifiStateMachine;I)V

    .line 2448
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mSupplicantRestartCount:I
    invoke-static {v6, v4}, Landroid/net/wifi/WifiStateMachine;->access$4302(Landroid/net/wifi/WifiStateMachine;I)I

    .line 2451
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mSupplicantStateTracker:Landroid/net/wifi/SupplicantStateTracker;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$4400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/SupplicantStateTracker;

    move-result-object v6

    const v7, 0x2006f

    invoke-virtual {v6, v7}, Landroid/net/wifi/SupplicantStateTracker;->sendMessage(I)V

    .line 2452
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWpsStateMachine:Landroid/net/wifi/WpsStateMachine;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$4500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WpsStateMachine;

    move-result-object v6

    const v7, 0x2007a

    invoke-virtual {v6, v7}, Landroid/net/wifi/WpsStateMachine;->sendMessage(I)V

    .line 2454
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v7, 0x0

    #setter for: Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static {v6, v7}, Landroid/net/wifi/WifiStateMachine;->access$4602(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 2455
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v6, v9}, Landroid/net/wifi/WifiStateMachine;->access$4702(Landroid/net/wifi/WifiStateMachine;I)I

    .line 2456
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mLastSignalLevel:I
    invoke-static {v6, v9}, Landroid/net/wifi/WifiStateMachine;->access$4802(Landroid/net/wifi/WifiStateMachine;I)I

    .line 2458
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$2900(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v6

    invoke-static {}, Landroid/net/wifi/WifiNative;->getMacAddressCommand()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiInfo;->setMacAddress(Ljava/lang/String;)V

    .line 2460
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$100(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/net/wifi/WifiConfigStore;->initialize(Landroid/content/Context;)V

    .line 2463
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->disableAllNetworks(Z)V
    invoke-static {v6, v4}, Landroid/net/wifi/WifiStateMachine;->access$4900(Landroid/net/wifi/WifiStateMachine;Z)V

    .line 2467
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->isAirplaneModeOn()Z
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$5000(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2468
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v6}, Landroid/net/wifi/WifiStateMachine;->syncGetConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 2469
    .local v2, networks:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v2, :cond_2

    .line 2470
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 2471
    .local v1, network:Landroid/net/wifi/WifiConfiguration;
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    aget-object v6, v6, v4

    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v3

    .line 2472
    .local v3, value:Ljava/lang/String;
    const-string v6, "WifiStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "eap value:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2473
    if-eqz v3, :cond_0

    const-string v6, "SIM"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "AKA"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2474
    :cond_1
    iget v6, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v6, v4}, Landroid/net/wifi/WifiConfigStore;->disableNetwork(II)Z

    goto :goto_1

    .line 2481
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #network:Landroid/net/wifi/WifiConfiguration;
    .end local v2           #networks:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v3           #value:Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->sendSupplicantConnectionChangedBroadcast(Z)V
    invoke-static {v4, v5}, Landroid/net/wifi/WifiStateMachine;->access$5100(Landroid/net/wifi/WifiStateMachine;Z)V

    .line 2482
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDriverStartedState:Lcom/android/internal/util/State;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$5200(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v6

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v6}, Landroid/net/wifi/WifiStateMachine;->access$5300(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 2518
    :goto_2
    const v4, 0xc366

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-static {v4, v6}, Landroid/util/EventLog;->writeEvent(II)I

    move v4, v5

    .line 2519
    goto/16 :goto_0

    .line 2485
    :sswitch_1
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$4304(Landroid/net/wifi/WifiStateMachine;)I

    move-result v6

    const/4 v7, 0x5

    if-gt v6, v7, :cond_3

    .line 2486
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v6, "Failed to setup control channel, restart supplicant"

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v4, v6}, Landroid/net/wifi/WifiStateMachine;->access$500(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 2487
    invoke-static {}, Landroid/net/wifi/WifiNative;->killSupplicant()Z

    .line 2488
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDriverLoadedState:Lcom/android/internal/util/State;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$1500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v6

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v6}, Landroid/net/wifi/WifiStateMachine;->access$5400(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 2489
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v6, 0x2000b

    const-wide/16 v7, 0x1388

    invoke-virtual {v4, v6, v7, v8}, Landroid/net/wifi/WifiStateMachine;->sendMessageDelayed(IJ)V

    goto :goto_2

    .line 2491
    :cond_3
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mSupplicantRestartCount:I
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$4300(Landroid/net/wifi/WifiStateMachine;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " times to start supplicant, unload driver"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v6, v7}, Landroid/net/wifi/WifiStateMachine;->access$500(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 2493
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mSupplicantRestartCount:I
    invoke-static {v6, v4}, Landroid/net/wifi/WifiStateMachine;->access$4302(Landroid/net/wifi/WifiStateMachine;I)I

    .line 2494
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDriverLoadedState:Lcom/android/internal/util/State;
    invoke-static {v7}, Landroid/net/wifi/WifiStateMachine;->access$1500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v7

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v6, v7}, Landroid/net/wifi/WifiStateMachine;->access$5500(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 2495
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v8, 0x20002

    const/4 v9, 0x4

    invoke-virtual {v7, v8, v9, v4}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_2

    .line 2513
    :sswitch_2
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v4, p1}, Landroid/net/wifi/WifiStateMachine;->access$5600(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto :goto_2

    .line 2444
    :sswitch_data_0
    .sparse-switch
        0x20001 -> :sswitch_2
        0x20002 -> :sswitch_2
        0x2000b -> :sswitch_2
        0x2000c -> :sswitch_2
        0x2000d -> :sswitch_2
        0x2000e -> :sswitch_2
        0x20015 -> :sswitch_2
        0x20018 -> :sswitch_2
        0x20048 -> :sswitch_2
        0x20049 -> :sswitch_2
        0x2004d -> :sswitch_2
        0x20050 -> :sswitch_2
        0x20054 -> :sswitch_2
        0x20055 -> :sswitch_2
        0x2005a -> :sswitch_2
        0x24001 -> :sswitch_0
        0x24002 -> :sswitch_1
    .end sparse-switch
.end method
