.class Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SupplicantStartedState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 2505
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 6

    .prologue
    .line 2508
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 2509
    const v2, 0xc365

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 2511
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v3, 0x0

    #setter for: Landroid/net/wifi/WifiStateMachine;->mIsScanMode:Z
    invoke-static {v2, v3}, Landroid/net/wifi/WifiStateMachine;->access$5502(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 2513
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$5600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 2515
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$100(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wifi_supplicant_scan_interval_ms"

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDefaultSupplicantScanIntervalMs:I
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$5700(Landroid/net/wifi/WifiStateMachine;)I

    move-result v4

    int-to-long v4, v4

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 2518
    .local v0, supplicantScanIntervalMs:J
    long-to-int v2, v0

    div-int/lit16 v2, v2, 0x3e8

    invoke-static {v2}, Landroid/net/wifi/WifiNative;->setScanIntervalCommand(I)V

    .line 2519
    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 2744
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$5600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 2745
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 21
    .parameter "message"

    .prologue
    .line 2522
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static/range {v17 .. v18}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 2524
    const/4 v6, 0x1

    .line 2525
    .local v6, eventLoggingEnabled:Z
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v17, v0

    sparse-switch v17, :sswitch_data_0

    .line 2734
    const/16 v17, 0x0

    .line 2739
    :goto_0
    return v17

    .line 2527
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v18, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mSupplicantStoppingState:Lcom/android/internal/util/State;
    invoke-static/range {v18 .. v18}, Landroid/net/wifi/WifiStateMachine;->access$5800(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v18

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v17 .. v18}, Landroid/net/wifi/WifiStateMachine;->access$5900(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 2736
    :cond_0
    :goto_1
    if-eqz v6, :cond_1

    .line 2737
    const v17, 0xc366

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Landroid/util/EventLog;->writeEvent(II)I

    .line 2739
    :cond_1
    const/16 v17, 0x1

    goto :goto_0

    .line 2530
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    const-string v18, "Connection lost, restart supplicant"

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static/range {v17 .. v18}, Landroid/net/wifi/WifiStateMachine;->access$500(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 2531
    invoke-static {}, Landroid/net/wifi/WifiNative;->killSupplicant()Z

    .line 2532
    invoke-static {}, Landroid/net/wifi/WifiNative;->closeSupplicantConnection()V

    .line 2533
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiStateMachine;->access$5600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 2534
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    #calls: Landroid/net/wifi/WifiStateMachine;->handleNetworkDisconnect()V
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiStateMachine;->access$6000(Landroid/net/wifi/WifiStateMachine;)V

    .line 2535
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    #calls: Landroid/net/wifi/WifiStateMachine;->sendSupplicantConnectionChangedBroadcast(Z)V
    invoke-static/range {v17 .. v18}, Landroid/net/wifi/WifiStateMachine;->access$4900(Landroid/net/wifi/WifiStateMachine;Z)V

    .line 2536
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mSupplicantStateTracker:Landroid/net/wifi/SupplicantStateTracker;
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiStateMachine;->access$4200(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/SupplicantStateTracker;

    move-result-object v17

    const v18, 0x2006f

    invoke-virtual/range {v17 .. v18}, Landroid/net/wifi/SupplicantStateTracker;->sendMessage(I)V

    .line 2537
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWpsStateMachine:Landroid/net/wifi/WpsStateMachine;
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiStateMachine;->access$4300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WpsStateMachine;

    move-result-object v17

    const v18, 0x2007a

    invoke-virtual/range {v17 .. v18}, Landroid/net/wifi/WpsStateMachine;->sendMessage(I)V

    .line 2538
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v18, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDriverLoadedState:Lcom/android/internal/util/State;
    invoke-static/range {v18 .. v18}, Landroid/net/wifi/WifiStateMachine;->access$1300(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v18

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v17 .. v18}, Landroid/net/wifi/WifiStateMachine;->access$6100(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 2539
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    const v18, 0x2000b

    const-wide/16 v19, 0x1388

    invoke-virtual/range {v17 .. v20}, Landroid/net/wifi/WifiStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_1

    .line 2542
    :sswitch_2
    const/4 v6, 0x0

    .line 2543
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    invoke-static {}, Landroid/net/wifi/WifiNative;->scanResultsCommand()Ljava/lang/String;

    move-result-object v18

    #calls: Landroid/net/wifi/WifiStateMachine;->setScanResults(Ljava/lang/String;)V
    invoke-static/range {v17 .. v18}, Landroid/net/wifi/WifiStateMachine;->access$6200(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 2544
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    #calls: Landroid/net/wifi/WifiStateMachine;->sendScanResultsAvailableBroadcast()V
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiStateMachine;->access$6300(Landroid/net/wifi/WifiStateMachine;)V

    .line 2545
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    #setter for: Landroid/net/wifi/WifiStateMachine;->mScanResultIsPending:Z
    invoke-static/range {v17 .. v18}, Landroid/net/wifi/WifiStateMachine;->access$6402(Landroid/net/wifi/WifiStateMachine;Z)Z

    goto/16 :goto_1

    .line 2548
    :sswitch_3
    invoke-static {}, Landroid/net/wifi/WifiNative;->pingCommand()Z

    move-result v13

    .line 2549
    .local v13, ok:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiStateMachine;->access$900(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v18

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v19, v0

    if-eqz v13, :cond_2

    const/16 v17, 0x1

    :goto_2
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    :cond_2
    const/16 v17, -0x1

    goto :goto_2

    .line 2552
    .end local v13           #ok:Z
    :sswitch_4
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    .line 2553
    .local v4, config:Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiStateMachine;->access$900(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v17

    const v18, 0x20034

    invoke-static {v4}, Landroid/net/wifi/WifiConfigStore;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v19

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 2557
    .end local v4           #config:Landroid/net/wifi/WifiConfiguration;
    :sswitch_5
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiConfigStore;->removeNetwork(I)Z

    move-result v13

    .line 2558
    .restart local v13       #ok:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiStateMachine;->access$900(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v18

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v19, v0

    if-eqz v13, :cond_3

    const/16 v17, 0x1

    :goto_3
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    :cond_3
    const/16 v17, -0x1

    goto :goto_3

    .line 2561
    .end local v13           #ok:Z
    :sswitch_6
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v17, v0

    const/16 v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    const/16 v17, 0x1

    :goto_4
    move/from16 v0, v18

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/net/wifi/WifiConfigStore;->enableNetwork(IZ)Z

    move-result v13

    .line 2562
    .restart local v13       #ok:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiStateMachine;->access$900(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v18

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v19, v0

    if-eqz v13, :cond_5

    const/16 v17, 0x1

    :goto_5
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 2561
    .end local v13           #ok:Z
    :cond_4
    const/16 v17, 0x0

    goto :goto_4

    .line 2562
    .restart local v13       #ok:Z
    :cond_5
    const/16 v17, -0x1

    goto :goto_5

    .line 2565
    .end local v13           #ok:Z
    :sswitch_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15

    .line 2566
    .local v15, time:J
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mLastEnableAllNetworksTime:J
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiStateMachine;->access$6500(Landroid/net/wifi/WifiStateMachine;)J

    move-result-wide v17

    sub-long v17, v15, v17

    const-wide/32 v19, 0x927c0

    cmp-long v17, v17, v19

    if-lez v17, :cond_0

    .line 2567
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->enableAllNetworks()V

    .line 2568
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-wide v1, v15

    #setter for: Landroid/net/wifi/WifiStateMachine;->mLastEnableAllNetworksTime:J
    invoke-static {v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$6502(Landroid/net/wifi/WifiStateMachine;J)J

    goto/16 :goto_1

    .line 2572
    .end local v15           #time:J
    :sswitch_8
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Landroid/net/wifi/WifiConfigStore;->disableNetwork(II)Z

    move-result v13

    .line 2573
    .restart local v13       #ok:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiStateMachine;->access$900(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v18

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v19, v0

    if-eqz v13, :cond_6

    const/16 v17, 0x1

    :goto_6
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    :cond_6
    const/16 v17, -0x1

    goto :goto_6

    .line 2576
    .end local v13           #ok:Z
    :sswitch_9
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/String;

    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiNative;->addToBlacklistCommand(Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 2579
    :sswitch_a
    invoke-static {}, Landroid/net/wifi/WifiNative;->clearBlacklistCommand()Z

    goto/16 :goto_1

    .line 2582
    :sswitch_b
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->saveConfig()Z

    move-result v13

    .line 2583
    .restart local v13       #ok:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiStateMachine;->access$900(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v18

    const v19, 0x2003b

    if-eqz v13, :cond_7

    const/16 v17, 0x1

    :goto_7
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    .line 2586
    const-string v17, "backup"

    invoke-static/range {v17 .. v17}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v8

    .line 2588
    .local v8, ibm:Landroid/app/backup/IBackupManager;
    if-eqz v8, :cond_0

    .line 2590
    :try_start_0
    const-string v17, "com.android.providers.settings"

    move-object/from16 v0, v17

    invoke-interface {v8, v0}, Landroid/app/backup/IBackupManager;->dataChanged(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 2591
    :catch_0
    move-exception v17

    goto/16 :goto_1

    .line 2583
    .end local v8           #ibm:Landroid/app/backup/IBackupManager;
    :cond_7
    const/16 v17, -0x1

    goto :goto_7

    .line 2598
    .end local v13           #ok:Z
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    const-string v18, "Failed to start soft AP with a running supplicant"

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static/range {v17 .. v18}, Landroid/net/wifi/WifiStateMachine;->access$500(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 2599
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    const/16 v18, 0xe

    #calls: Landroid/net/wifi/WifiStateMachine;->setWifiApState(I)V
    invoke-static/range {v17 .. v18}, Landroid/net/wifi/WifiStateMachine;->access$2200(Landroid/net/wifi/WifiStateMachine;I)V

    goto/16 :goto_1

    .line 2602
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v17, v0

    const/16 v19, 0x2

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    const/16 v17, 0x1

    :goto_8
    move-object/from16 v0, v18

    move/from16 v1, v17

    #setter for: Landroid/net/wifi/WifiStateMachine;->mIsScanMode:Z
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$5502(Landroid/net/wifi/WifiStateMachine;Z)Z

    goto/16 :goto_1

    :cond_8
    const/16 v17, 0x0

    goto :goto_8

    .line 2605
    :sswitch_e
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    .line 2606
    .restart local v4       #config:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v4}, Landroid/net/wifi/WifiConfigStore;->saveNetwork(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/NetworkUpdateResult;

    goto/16 :goto_1

    .line 2609
    .end local v4           #config:Landroid/net/wifi/WifiConfiguration;
    :sswitch_f
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiConfigStore;->forgetNetwork(I)V

    .line 2610
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mSupplicantStateTracker:Landroid/net/wifi/SupplicantStateTracker;
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiStateMachine;->access$4200(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/SupplicantStateTracker;

    move-result-object v17

    const v18, 0x20058

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/net/wifi/SupplicantStateTracker;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 2614
    :sswitch_10
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->saveAPPriority()Z

    move-result v13

    .line 2615
    .restart local v13       #ok:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiStateMachine;->access$900(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v18

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v19, v0

    if-eqz v13, :cond_9

    const/16 v17, 0x1

    :goto_9
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    .line 2618
    const-string v17, "backup"

    invoke-static/range {v17 .. v17}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v8

    .line 2620
    .restart local v8       #ibm:Landroid/app/backup/IBackupManager;
    if-eqz v8, :cond_0

    .line 2622
    :try_start_1
    const-string v17, "com.android.providers.settings"

    move-object/from16 v0, v17

    invoke-interface {v8, v0}, Landroid/app/backup/IBackupManager;->dataChanged(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 2623
    :catch_1
    move-exception v17

    goto/16 :goto_1

    .line 2615
    .end local v8           #ibm:Landroid/app/backup/IBackupManager;
    :cond_9
    const/16 v17, -0x1

    goto :goto_9

    .line 2629
    .end local v13           #ok:Z
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Landroid/net/wifi/WifiStateMachine;->setConnectPolicy(II)V

    .line 2630
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiStateMachine;->access$900(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v17

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 2633
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    #calls: Landroid/net/wifi/WifiStateMachine;->updateAutoConnectSettings()V
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiStateMachine;->access$6600(Landroid/net/wifi/WifiStateMachine;)V

    goto/16 :goto_1

    .line 2637
    :sswitch_13
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/String;

    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiNative;->doWpsPbcCommand(Ljava/lang/String;)Z

    move-result v13

    .line 2638
    .restart local v13       #ok:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiStateMachine;->access$900(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v18

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v19, v0

    if-eqz v13, :cond_a

    const/16 v17, 0x1

    :goto_a
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    :cond_a
    const/16 v17, -0x1

    goto :goto_a

    .line 2641
    .end local v13           #ok:Z
    :sswitch_14
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/String;

    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiNative;->doWpsPinCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2642
    .local v14, result:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiStateMachine;->access$900(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v17

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2, v14}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 2645
    .end local v14           #result:Ljava/lang/String;
    :sswitch_15
    invoke-static {}, Landroid/net/wifi/WifiNative;->doWpsAbortCommand()Z

    move-result v13

    .line 2646
    .restart local v13       #ok:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiStateMachine;->access$900(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v18

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v19, v0

    if-eqz v13, :cond_b

    const/16 v17, 0x1

    :goto_b
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    .line 2648
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    #calls: Landroid/net/wifi/WifiStateMachine;->disableAllNetworks(Z)V
    invoke-static/range {v17 .. v18}, Landroid/net/wifi/WifiStateMachine;->access$4700(Landroid/net/wifi/WifiStateMachine;Z)V

    goto/16 :goto_1

    .line 2646
    :cond_b
    const/16 v17, -0x1

    goto :goto_b

    .line 2652
    .end local v13           #ok:Z
    :sswitch_16
    invoke-static {}, Landroid/net/wifi/WifiNative;->doCTIATestOnCommand()Z

    move-result v13

    .line 2653
    .restart local v13       #ok:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiStateMachine;->access$900(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v18

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v19, v0

    if-eqz v13, :cond_c

    const/16 v17, 0x1

    :goto_c
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    :cond_c
    const/16 v17, -0x1

    goto :goto_c

    .line 2656
    .end local v13           #ok:Z
    :sswitch_17
    invoke-static {}, Landroid/net/wifi/WifiNative;->doCTIATestOffCommand()Z

    move-result v13

    .line 2657
    .restart local v13       #ok:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiStateMachine;->access$900(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v18

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v19, v0

    if-eqz v13, :cond_d

    const/16 v17, 0x1

    :goto_d
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    :cond_d
    const/16 v17, -0x1

    goto :goto_d

    .line 2660
    .end local v13           #ok:Z
    :sswitch_18
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiNative;->doCTIATestRateCommand(I)Z

    move-result v13

    .line 2661
    .restart local v13       #ok:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiStateMachine;->access$900(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v18

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v19, v0

    if-eqz v13, :cond_e

    const/16 v17, 0x1

    :goto_e
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    :cond_e
    const/16 v17, -0x1

    goto :goto_e

    .line 2664
    .end local v13           #ok:Z
    :sswitch_19
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiNative;->doCTIATestPowerCommand(I)Z

    move-result v13

    .line 2665
    .restart local v13       #ok:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiStateMachine;->access$900(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v18

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v19, v0

    if-eqz v13, :cond_f

    const/16 v17, 0x1

    :goto_f
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    :cond_f
    const/16 v17, -0x1

    goto :goto_f

    .line 2668
    .end local v13           #ok:Z
    :sswitch_1a
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Landroid/net/wifi/WifiNative;->doCTIATestSetCommand(II)Z

    move-result v13

    .line 2669
    .restart local v13       #ok:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiStateMachine;->access$900(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v18

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v19, v0

    if-eqz v13, :cond_10

    const/16 v17, 0x1

    :goto_10
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    :cond_10
    const/16 v17, -0x1

    goto :goto_10

    .line 2672
    .end local v13           #ok:Z
    :sswitch_1b
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiNative;->doCTIATestGetCommand(I)Ljava/lang/String;

    move-result-object v14

    .line 2673
    .restart local v14       #result:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiStateMachine;->access$900(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v17

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2, v14}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 2676
    .end local v14           #result:Ljava/lang/String;
    :sswitch_1c
    const/4 v12, -0x1

    .line 2677
    .local v12, networkId:I
    invoke-static {}, Landroid/net/wifi/WifiNative;->listNetworksCommand()Ljava/lang/String;

    move-result-object v11

    .line 2678
    .local v11, listStr:Ljava/lang/String;
    if-eqz v11, :cond_12

    .line 2679
    const-string v17, "\n"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 2681
    .local v10, lines:[Ljava/lang/String;
    const/4 v7, 0x1

    .local v7, i:I
    :goto_11
    array-length v0, v10

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v7, v0, :cond_12

    .line 2682
    aget-object v17, v10, v7

    const-string v18, "[CURRENT]"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_11

    .line 2683
    aget-object v17, v10, v7

    const-string v18, "\t"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 2685
    .local v9, items:[Ljava/lang/String;
    const/16 v17, 0x0

    :try_start_2
    aget-object v17, v9, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v12

    .line 2681
    .end local v9           #items:[Ljava/lang/String;
    :cond_11
    :goto_12
    add-int/lit8 v7, v7, 0x1

    goto :goto_11

    .line 2686
    .restart local v9       #items:[Ljava/lang/String;
    :catch_2
    move-exception v5

    .line 2687
    .local v5, e:Ljava/lang/NumberFormatException;
    const-string v17, "WifiStateMachine"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Exception: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v5}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 2692
    .end local v5           #e:Ljava/lang/NumberFormatException;
    .end local v7           #i:I
    .end local v9           #items:[Ljava/lang/String;
    .end local v10           #lines:[Ljava/lang/String;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiStateMachine;->access$900(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v17

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2, v12}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 2695
    .end local v11           #listStr:Ljava/lang/String;
    .end local v12           #networkId:I
    :sswitch_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    #calls: Landroid/net/wifi/WifiStateMachine;->fetchRssiAndLinkSpeedNative()V
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiStateMachine;->access$6700(Landroid/net/wifi/WifiStateMachine;)V

    .line 2696
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiStateMachine;->access$900(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v17

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;I)V

    goto/16 :goto_1

    .line 2699
    :sswitch_1e
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 2700
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiStateMachine;->access$100(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v17

    new-instance v18, Landroid/content/Intent;

    const-string v19, "android.net.wifi.WPS_SUCCESS"

    invoke-direct/range {v18 .. v19}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 2704
    :sswitch_1f
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 2705
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiStateMachine;->access$100(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v17

    new-instance v18, Landroid/content/Intent;

    const-string v19, "android.net.wifi.WPS_ERROR"

    invoke-direct/range {v18 .. v19}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 2709
    :sswitch_20
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 2710
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiStateMachine;->access$100(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v17

    new-instance v18, Landroid/content/Intent;

    const-string v19, "android.net.wifi.WPS_OVERLAP"

    invoke-direct/range {v18 .. v19}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 2714
    :sswitch_21
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 2715
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiStateMachine;->access$100(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v17

    new-instance v18, Landroid/content/Intent;

    const-string v19, "android.net.wifi.WPS_NO_OVERLAP"

    invoke-direct/range {v18 .. v19}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 2719
    :sswitch_22
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 2720
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiStateMachine;->access$100(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v17

    new-instance v18, Landroid/content/Intent;

    const-string v19, "android.net.wifi.WPS_AP_PIN"

    invoke-direct/range {v18 .. v19}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 2724
    :sswitch_23
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 2725
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiStateMachine;->access$100(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v17

    new-instance v18, Landroid/content/Intent;

    const-string v19, "android.net.wifi.WPS_AP_PBC"

    invoke-direct/range {v18 .. v19}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 2729
    :sswitch_24
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 2730
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiStateMachine;->access$100(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v17

    new-instance v18, Landroid/content/Intent;

    const-string v19, "android.net.wifi.WPS_CRED"

    invoke-direct/range {v18 .. v19}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 2525
    nop

    :sswitch_data_0
    .sparse-switch
        0x2000c -> :sswitch_0
        0x20015 -> :sswitch_c
        0x20033 -> :sswitch_3
        0x20034 -> :sswitch_4
        0x20035 -> :sswitch_5
        0x20036 -> :sswitch_6
        0x20037 -> :sswitch_7
        0x20038 -> :sswitch_8
        0x20039 -> :sswitch_9
        0x2003a -> :sswitch_a
        0x2003b -> :sswitch_b
        0x20048 -> :sswitch_d
        0x20057 -> :sswitch_e
        0x20058 -> :sswitch_f
        0x2008c -> :sswitch_10
        0x2008d -> :sswitch_11
        0x2008e -> :sswitch_12
        0x200a0 -> :sswitch_13
        0x200a1 -> :sswitch_14
        0x200a2 -> :sswitch_15
        0x200a3 -> :sswitch_16
        0x200a4 -> :sswitch_17
        0x200a5 -> :sswitch_18
        0x200a6 -> :sswitch_19
        0x200a7 -> :sswitch_1a
        0x200a8 -> :sswitch_1b
        0x200a9 -> :sswitch_1c
        0x200aa -> :sswitch_1d
        0x24002 -> :sswitch_1
        0x24005 -> :sswitch_2
        0x24033 -> :sswitch_1e
        0x24034 -> :sswitch_1f
        0x24035 -> :sswitch_20
        0x24036 -> :sswitch_21
        0x24037 -> :sswitch_22
        0x24038 -> :sswitch_23
        0x24039 -> :sswitch_24
    .end sparse-switch
.end method
