.class Lcom/android/server/ConnectivityService$MyHandler;
.super Landroid/os/Handler;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method public constructor <init>(Lcom/android/server/ConnectivityService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 2652
    iput-object p1, p0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    .line 2653
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2654
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 22
    .parameter "msg"

    .prologue
    .line 2659
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v18, v0

    sparse-switch v18, :sswitch_data_0

    .line 2807
    :cond_0
    :goto_0
    return-void

    .line 2661
    :sswitch_0
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/net/NetworkInfo;

    .line 2662
    .local v8, info:Landroid/net/NetworkInfo;
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getType()I

    move-result v16

    .line 2663
    .local v16, type:I
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v15

    .line 2667
    .local v15, state:Landroid/net/NetworkInfo$State;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "ConnectivityChange for "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ": "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Lcom/android/server/ConnectivityService;->access$200(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    .line 2679
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getType()I

    move-result v18

    and-int/lit8 v18, v18, 0x7

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v19

    and-int/lit8 v19, v19, 0x3f

    shl-int/lit8 v19, v19, 0x3

    or-int v18, v18, v19

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v19

    shl-int/lit8 v19, v19, 0x9

    or-int v7, v18, v19

    .line 2682
    .local v7, eventLogParam:I
    const v18, 0xc364

    move/from16 v0, v18

    invoke-static {v0, v7}, Landroid/util/EventLog;->writeEvent(II)I

    .line 2685
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v18

    sget-object v19, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 2687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    #calls: Lcom/android/server/ConnectivityService;->handleConnectionFailure(Landroid/net/NetworkInfo;)V
    invoke-static {v0, v8}, Lcom/android/server/ConnectivityService;->access$900(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V

    goto/16 :goto_0

    .line 2688
    :cond_1
    sget-object v18, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v18

    if-ne v15, v0, :cond_2

    .line 2689
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    #calls: Lcom/android/server/ConnectivityService;->handleDisconnect(Landroid/net/NetworkInfo;)V
    invoke-static {v0, v8}, Lcom/android/server/ConnectivityService;->access$1000(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V

    goto/16 :goto_0

    .line 2690
    :cond_2
    sget-object v18, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v18

    if-ne v15, v0, :cond_5

    .line 2698
    const-string v18, "ConnectivityService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Change to Suspend_State due to reason="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " with network="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2699
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v18

    const-string v19, "2GVoiceCallStarted"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_3

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_3

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v18

    if-nez v18, :cond_4

    .line 2703
    :cond_3
    const-string v18, "CDS/Srv"

    const-string v19, "Suspend PS TX/RX Temporarily without deactivating PDP context"

    invoke-static/range {v18 .. v19}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    #calls: Lcom/android/server/ConnectivityService;->sendSuspendedBroadcast(Landroid/net/NetworkInfo;)V
    invoke-static {v0, v8}, Lcom/android/server/ConnectivityService;->access$1100(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V

    goto/16 :goto_0

    .line 2706
    :cond_4
    const-string v18, "CDS/Srv"

    const-string v19, "Switch to Suspend:invoke handleDisconnect()"

    invoke-static/range {v18 .. v19}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2707
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    #calls: Lcom/android/server/ConnectivityService;->handleDisconnect(Landroid/net/NetworkInfo;)V
    invoke-static {v0, v8}, Lcom/android/server/ConnectivityService;->access$1000(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V

    goto/16 :goto_0

    .line 2709
    :cond_5
    sget-object v18, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v18

    if-ne v15, v0, :cond_0

    .line 2710
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    #calls: Lcom/android/server/ConnectivityService;->handleConnect(Landroid/net/NetworkInfo;)V
    invoke-static {v0, v8}, Lcom/android/server/ConnectivityService;->access$1200(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V

    goto/16 :goto_0

    .line 2714
    .end local v7           #eventLogParam:I
    .end local v8           #info:Landroid/net/NetworkInfo;
    .end local v15           #state:Landroid/net/NetworkInfo$State;
    .end local v16           #type:I
    :sswitch_1
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/net/NetworkInfo;

    .line 2718
    .restart local v8       #info:Landroid/net/NetworkInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v18, v0

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getType()I

    move-result v19

    const/16 v20, 0x0

    #calls: Lcom/android/server/ConnectivityService;->handleConnectivityChange(IZ)V
    invoke-static/range {v18 .. v20}, Lcom/android/server/ConnectivityService;->access$1300(Lcom/android/server/ConnectivityService;IZ)V

    goto/16 :goto_0

    .line 2721
    .end local v8           #info:Landroid/net/NetworkInfo;
    :sswitch_2
    const/4 v4, 0x0

    .line 2722
    .local v4, causedBy:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 2723
    :try_start_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v20, v0

    #getter for: Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockSerialNumber:I
    invoke-static/range {v20 .. v20}, Lcom/android/server/ConnectivityService;->access$1400(Lcom/android/server/ConnectivityService;)I

    move-result v20

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static/range {v18 .. v18}, Lcom/android/server/ConnectivityService;->access$1500(Lcom/android/server/ConnectivityService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v18

    if-eqz v18, :cond_6

    .line 2725
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static/range {v18 .. v18}, Lcom/android/server/ConnectivityService;->access$1500(Lcom/android/server/ConnectivityService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2726
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockCausedBy:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/android/server/ConnectivityService;->access$1600(Lcom/android/server/ConnectivityService;)Ljava/lang/String;

    move-result-object v4

    .line 2728
    :cond_6
    monitor-exit v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2729
    if-eqz v4, :cond_0

    .line 2730
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "NetTransition Wakelock for "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " released by timeout"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Lcom/android/server/ConnectivityService;->access$200(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2728
    :catchall_0
    move-exception v18

    :try_start_1
    monitor-exit v19
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v18

    .line 2734
    .end local v4           #causedBy:Ljava/lang/String;
    :sswitch_3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/server/ConnectivityService$FeatureUser;

    .line 2735
    .local v17, u:Lcom/android/server/ConnectivityService$FeatureUser;
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/ConnectivityService$FeatureUser;->expire()V

    goto/16 :goto_0

    .line 2739
    .end local v17           #u:Lcom/android/server/ConnectivityService$FeatureUser;
    :sswitch_4
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    .line 2740
    .local v11, netType:I
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    .line 2741
    .local v5, condition:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    #calls: Lcom/android/server/ConnectivityService;->handleInetConditionChange(II)V
    invoke-static {v0, v11, v5}, Lcom/android/server/ConnectivityService;->access$1700(Lcom/android/server/ConnectivityService;II)V

    goto/16 :goto_0

    .line 2746
    .end local v5           #condition:I
    .end local v11           #netType:I
    :sswitch_5
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    .line 2747
    .restart local v11       #netType:I
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg2:I

    .line 2748
    .local v14, sequence:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    #calls: Lcom/android/server/ConnectivityService;->handleInetConditionHoldEnd(II)V
    invoke-static {v0, v11, v14}, Lcom/android/server/ConnectivityService;->access$1800(Lcom/android/server/ConnectivityService;II)V

    goto/16 :goto_0

    .line 2753
    .end local v11           #netType:I
    .end local v14           #sequence:I
    :sswitch_6
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    .line 2754
    .local v13, preference:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    #calls: Lcom/android/server/ConnectivityService;->handleSetNetworkPreference(I)V
    invoke-static {v0, v13}, Lcom/android/server/ConnectivityService;->access$1900(Lcom/android/server/ConnectivityService;I)V

    goto/16 :goto_0

    .line 2759
    .end local v13           #preference:I
    :sswitch_7
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    const/4 v6, 0x1

    .line 2760
    .local v6, enabled:Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    #calls: Lcom/android/server/ConnectivityService;->handleSetMobileData(Z)V
    invoke-static {v0, v6}, Lcom/android/server/ConnectivityService;->access$2000(Lcom/android/server/ConnectivityService;Z)V

    goto/16 :goto_0

    .line 2759
    .end local v6           #enabled:Z
    :cond_7
    const/4 v6, 0x0

    goto :goto_1

    .line 2765
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v18, v0

    #calls: Lcom/android/server/ConnectivityService;->handleDeprecatedGlobalHttpProxy()V
    invoke-static/range {v18 .. v18}, Lcom/android/server/ConnectivityService;->access$2100(Lcom/android/server/ConnectivityService;)V

    goto/16 :goto_0

    .line 2770
    :sswitch_9
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    const/4 v10, 0x1

    .line 2771
    .local v10, met:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    #calls: Lcom/android/server/ConnectivityService;->handleSetDependencyMet(IZ)V
    invoke-static {v0, v1, v10}, Lcom/android/server/ConnectivityService;->access$2200(Lcom/android/server/ConnectivityService;IZ)V

    goto/16 :goto_0

    .line 2770
    .end local v10           #met:Z
    :cond_8
    const/4 v10, 0x0

    goto :goto_2

    .line 2776
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I
    invoke-static/range {v18 .. v18}, Lcom/android/server/ConnectivityService;->access$2300(Lcom/android/server/ConnectivityService;)I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    .line 2777
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v19, v0

    #getter for: Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I
    invoke-static/range {v19 .. v19}, Lcom/android/server/ConnectivityService;->access$2300(Lcom/android/server/ConnectivityService;)I

    move-result v19

    #calls: Lcom/android/server/ConnectivityService;->handleDnsConfigurationChange(I)V
    invoke-static/range {v18 .. v19}, Lcom/android/server/ConnectivityService;->access$2400(Lcom/android/server/ConnectivityService;I)V

    goto/16 :goto_0

    .line 2783
    :sswitch_b
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/content/Intent;

    .line 2784
    .local v9, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    #calls: Lcom/android/server/ConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V
    invoke-static {v0, v9}, Lcom/android/server/ConnectivityService;->access$2500(Lcom/android/server/ConnectivityService;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2788
    .end local v9           #intent:Landroid/content/Intent;
    :sswitch_c
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    .line 2789
    .local v12, networkType:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    const/4 v6, 0x1

    .line 2790
    .restart local v6       #enabled:Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    #calls: Lcom/android/server/ConnectivityService;->handleSetPolicyDataEnable(IZ)V
    invoke-static {v0, v12, v6}, Lcom/android/server/ConnectivityService;->access$2600(Lcom/android/server/ConnectivityService;IZ)V

    goto/16 :goto_0

    .line 2789
    .end local v6           #enabled:Z
    :cond_9
    const/4 v6, 0x0

    goto :goto_3

    .line 2795
    .end local v12           #networkType:I
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_a

    const/16 v18, 0x1

    move/from16 v19, v18

    :goto_4
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/app/Notification;

    move-object/from16 v0, v20

    move/from16 v1, v19

    move/from16 v2, v21

    move-object/from16 v3, v18

    #calls: Lcom/android/server/ConnectivityService;->handleNotificationChange(ZILandroid/app/Notification;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/ConnectivityService;->access$2700(Lcom/android/server/ConnectivityService;ZILandroid/app/Notification;)V

    goto/16 :goto_0

    :cond_a
    const/16 v18, 0x0

    move/from16 v19, v18

    goto :goto_4

    .line 2801
    :sswitch_e
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    const/4 v6, 0x1

    .line 2802
    .restart local v6       #enabled:Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    #calls: Lcom/android/server/ConnectivityService;->handleMobileDataEnabled(Z)V
    invoke-static {v0, v6}, Lcom/android/server/ConnectivityService;->access$2800(Lcom/android/server/ConnectivityService;Z)V

    goto/16 :goto_0

    .line 2801
    .end local v6           #enabled:Z
    :cond_b
    const/4 v6, 0x0

    goto :goto_5

    .line 2659
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_1
        0x65 -> :sswitch_3
        0x67 -> :sswitch_6
        0x68 -> :sswitch_4
        0x69 -> :sswitch_5
        0x6b -> :sswitch_7
        0x6c -> :sswitch_2
        0x6d -> :sswitch_8
        0x6e -> :sswitch_9
        0x6f -> :sswitch_a
        0x70 -> :sswitch_b
        0x71 -> :sswitch_c
        0x72 -> :sswitch_d
        0x73 -> :sswitch_e
    .end sparse-switch
.end method
