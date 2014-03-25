.class Landroid/net/wifi/WifiStateMachine$TetheredState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TetheredState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 4938
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method private sendClientsChangedBroadcast()V
    .locals 3

    .prologue
    .line 4940
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.WIFI_HOTSPOT_CLIENTS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4941
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4942
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$100(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4943
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 4947
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$TetheredState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 4948
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mClientNum:I
    invoke-static {v1, v8}, Landroid/net/wifi/WifiStateMachine;->access$21402(Landroid/net/wifi/WifiStateMachine;I)I

    .line 4949
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$21500()Ljava/util/HashMap;

    move-result-object v2

    monitor-enter v2

    .line 4950
    :try_start_0
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$21500()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 4951
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4952
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDuration:I
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$21600(Landroid/net/wifi/WifiStateMachine;)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mPluggedType:I
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$21700(Landroid/net/wifi/WifiStateMachine;)I

    move-result v1

    if-nez v1, :cond_0

    .line 4953
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$11900(Landroid/net/wifi/WifiStateMachine;)Landroid/app/AlarmManager;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mIntentStopHotspot:Landroid/app/PendingIntent;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$21800(Landroid/net/wifi/WifiStateMachine;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 4954
    const-string v1, "WifiStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set alarm for enter TetheredState, mDuration:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDuration:I
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$21600(Landroid/net/wifi/WifiStateMachine;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4955
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$11900(Landroid/net/wifi/WifiStateMachine;)Landroid/app/AlarmManager;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDuration:I
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$21600(Landroid/net/wifi/WifiStateMachine;)I

    move-result v4

    int-to-long v4, v4

    const-wide/32 v6, 0x493e0

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mIntentStopHotspot:Landroid/app/PendingIntent;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$21800(Landroid/net/wifi/WifiStateMachine;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v1, v8, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 4958
    :cond_0
    const-string/jumbo v1, "persist.radio.hotspot.probe.rq"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4959
    .local v0, request:Ljava/lang/String;
    const-string v1, "WifiStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "persist.radio.hotspot.probe.rq:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4960
    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4961
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mHotspotNative:Landroid/net/wifi/WifiNative;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$21900(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiNative;->setApProbeRequestEnabledCommand(Z)Z

    .line 4963
    :cond_1
    const v1, 0xc365

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$TetheredState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 4964
    return-void

    .line 4951
    .end local v0           #request:Ljava/lang/String;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 5085
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDuration:I
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$21600(Landroid/net/wifi/WifiStateMachine;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 5086
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$11900(Landroid/net/wifi/WifiStateMachine;)Landroid/app/AlarmManager;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mIntentStopHotspot:Landroid/app/PendingIntent;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$21800(Landroid/net/wifi/WifiStateMachine;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 5088
    :cond_0
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$21500()Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 5089
    :try_start_0
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$21500()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 5090
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5091
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine$TetheredState;->sendClientsChangedBroadcast()V

    .line 5092
    return-void

    .line 5090
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 16
    .parameter "message"

    .prologue
    .line 4967
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateMachine$TetheredState;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v8, v9}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 4968
    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->what:I

    sparse-switch v8, :sswitch_data_0

    .line 5078
    const/4 v8, 0x0

    .line 5080
    :goto_0
    return v8

    .line 4970
    :sswitch_0
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/net/wifi/WifiStateMachine$TetherStateChange;

    .line 4971
    .local v6, stateChange:Landroid/net/wifi/WifiStateMachine$TetherStateChange;
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v9, v6, Landroid/net/wifi/WifiStateMachine$TetherStateChange;->active:Ljava/util/ArrayList;

    #calls: Landroid/net/wifi/WifiStateMachine;->isWifiTethered(Ljava/util/ArrayList;)Z
    invoke-static {v8, v9}, Landroid/net/wifi/WifiStateMachine;->access$21000(Landroid/net/wifi/WifiStateMachine;Ljava/util/ArrayList;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 4972
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v9, "Tethering reports wifi as untethered!, shut down soft Ap"

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v8, v9}, Landroid/net/wifi/WifiStateMachine;->access$500(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 4973
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/net/wifi/WifiStateMachine;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 4975
    :cond_0
    const/4 v8, 0x1

    goto :goto_0

    .line 4977
    .end local v6           #stateChange:Landroid/net/wifi/WifiStateMachine$TetherStateChange;
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v9, "Untethering before stopping AP"

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v8, v9}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 4978
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/16 v9, 0xa

    #calls: Landroid/net/wifi/WifiStateMachine;->setWifiApState(I)V
    invoke-static {v8, v9}, Landroid/net/wifi/WifiStateMachine;->access$3100(Landroid/net/wifi/WifiStateMachine;I)V

    .line 4979
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->stopTethering()V
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$22000(Landroid/net/wifi/WifiStateMachine;)V

    .line 4980
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mSoftApStoppingState:Lcom/android/internal/util/State;
    invoke-static {v9}, Landroid/net/wifi/WifiStateMachine;->access$22100(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v9

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v8, v9}, Landroid/net/wifi/WifiStateMachine;->access$22200(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 5080
    :cond_1
    :goto_1
    const/4 v8, 0x1

    goto :goto_0

    .line 4983
    :sswitch_2
    const-string v8, "WifiStateMachine"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AP STA CONNECTED:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4984
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$21404(Landroid/net/wifi/WifiStateMachine;)I

    .line 4985
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 4986
    .local v1, address:Ljava/lang/String;
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$21500()Ljava/util/HashMap;

    move-result-object v9

    monitor-enter v9

    .line 4987
    :try_start_0
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$21500()Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 4988
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$21500()Ljava/util/HashMap;

    move-result-object v8

    new-instance v10, Landroid/net/wifi/HotspotClient;

    const/4 v11, 0x0

    invoke-direct {v10, v1, v11}, Landroid/net/wifi/HotspotClient;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v8, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4990
    :cond_2
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4991
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDuration:I
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$21600(Landroid/net/wifi/WifiStateMachine;)I

    move-result v8

    if-eqz v8, :cond_3

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mClientNum:I
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$21400(Landroid/net/wifi/WifiStateMachine;)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    .line 4992
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$11900(Landroid/net/wifi/WifiStateMachine;)Landroid/app/AlarmManager;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mIntentStopHotspot:Landroid/app/PendingIntent;
    invoke-static {v9}, Landroid/net/wifi/WifiStateMachine;->access$21800(Landroid/net/wifi/WifiStateMachine;)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 4994
    :cond_3
    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateMachine$TetheredState;->sendClientsChangedBroadcast()V

    goto :goto_1

    .line 4990
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 4997
    .end local v1           #address:Ljava/lang/String;
    :sswitch_3
    const-string v8, "WifiStateMachine"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AP STA DISCONNECTED:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4998
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$21406(Landroid/net/wifi/WifiStateMachine;)I

    .line 4999
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 5000
    .restart local v1       #address:Ljava/lang/String;
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$21500()Ljava/util/HashMap;

    move-result-object v9

    monitor-enter v9

    .line 5001
    :try_start_2
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$21500()Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/HotspotClient;

    .line 5002
    .local v2, client:Landroid/net/wifi/HotspotClient;
    if-eqz v2, :cond_4

    iget-boolean v8, v2, Landroid/net/wifi/HotspotClient;->isBlocked:Z

    if-nez v8, :cond_4

    .line 5003
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$21500()Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5005
    :cond_4
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5006
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDuration:I
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$21600(Landroid/net/wifi/WifiStateMachine;)I

    move-result v8

    if-eqz v8, :cond_5

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mPluggedType:I
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$21700(Landroid/net/wifi/WifiStateMachine;)I

    move-result v8

    if-nez v8, :cond_5

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mClientNum:I
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$21400(Landroid/net/wifi/WifiStateMachine;)I

    move-result v8

    if-nez v8, :cond_5

    .line 5007
    const-string v8, "WifiStateMachine"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Set alarm for no client, mDuration:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDuration:I
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$21600(Landroid/net/wifi/WifiStateMachine;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5008
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$11900(Landroid/net/wifi/WifiStateMachine;)Landroid/app/AlarmManager;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDuration:I
    invoke-static {v12}, Landroid/net/wifi/WifiStateMachine;->access$21600(Landroid/net/wifi/WifiStateMachine;)I

    move-result v12

    int-to-long v12, v12

    const-wide/32 v14, 0x493e0

    mul-long/2addr v12, v14

    add-long/2addr v10, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mIntentStopHotspot:Landroid/app/PendingIntent;
    invoke-static {v12}, Landroid/net/wifi/WifiStateMachine;->access$21800(Landroid/net/wifi/WifiStateMachine;)Landroid/app/PendingIntent;

    move-result-object v12

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 5011
    :cond_5
    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateMachine$TetheredState;->sendClientsChangedBroadcast()V

    goto/16 :goto_1

    .line 5005
    .end local v2           #client:Landroid/net/wifi/HotspotClient;
    :catchall_1
    move-exception v8

    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v8

    .line 5014
    .end local v1           #address:Ljava/lang/String;
    :sswitch_4
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/net/wifi/WpsInfo;

    .line 5015
    .local v7, wpsConfig:Landroid/net/wifi/WpsInfo;
    iget v8, v7, Landroid/net/wifi/WpsInfo;->setup:I

    packed-switch v8, :pswitch_data_0

    .line 5032
    const-string v8, "WifiStateMachine"

    const-string v9, "Invalid setup for WPS!"

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 5017
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v9, 0x1

    #setter for: Landroid/net/wifi/WifiStateMachine;->mStartApWps:Z
    invoke-static {v8, v9}, Landroid/net/wifi/WifiStateMachine;->access$22302(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 5018
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mHotspotNative:Landroid/net/wifi/WifiNative;
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$21900(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/wifi/WifiNative;->startApWpsPbcCommand()Z

    goto/16 :goto_1

    .line 5021
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mHotspotNative:Landroid/net/wifi/WifiNative;
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$21900(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v8

    iget-object v9, v7, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/net/wifi/WifiNative;->startApWpsCheckPinCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 5022
    .local v5, pin:Ljava/lang/String;
    const-string v8, "WifiStateMachine"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Check pin result:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5023
    if-eqz v5, :cond_6

    .line 5024
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mHotspotNative:Landroid/net/wifi/WifiNative;
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$21900(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/net/wifi/WifiNative;->startApWpsWithPinFromDeviceCommand(Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 5026
    :cond_6
    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.net.wifi.WIFI_WPS_CHECK_PIN_FAIL"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5027
    .local v3, intent:Landroid/content/Intent;
    const/high16 v8, 0x800

    invoke-virtual {v3, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5028
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$100(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v8

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v8, v3, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_1

    .line 5037
    .end local v3           #intent:Landroid/content/Intent;
    .end local v5           #pin:Ljava/lang/String;
    .end local v7           #wpsConfig:Landroid/net/wifi/WpsInfo;
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mHotspotNative:Landroid/net/wifi/WifiNative;
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$21900(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v9

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/net/wifi/HotspotClient;

    iget-object v8, v8, Landroid/net/wifi/HotspotClient;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v9, v8}, Landroid/net/wifi/WifiNative;->blockClientCommand(Ljava/lang/String;)Z

    move-result v4

    .line 5038
    .local v4, ok:Z
    if-eqz v4, :cond_8

    .line 5039
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$21500()Ljava/util/HashMap;

    move-result-object v9

    monitor-enter v9

    .line 5040
    :try_start_4
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$21500()Ljava/util/HashMap;

    move-result-object v10

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/net/wifi/HotspotClient;

    iget-object v8, v8, Landroid/net/wifi/HotspotClient;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/HotspotClient;

    .line 5041
    .restart local v2       #client:Landroid/net/wifi/HotspotClient;
    if-eqz v2, :cond_7

    .line 5042
    const/4 v8, 0x1

    iput-boolean v8, v2, Landroid/net/wifi/HotspotClient;->isBlocked:Z

    .line 5046
    :goto_2
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 5047
    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateMachine$TetheredState;->sendClientsChangedBroadcast()V

    .line 5051
    .end local v2           #client:Landroid/net/wifi/HotspotClient;
    :goto_3
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$22400(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v9

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->what:I

    if-eqz v4, :cond_9

    const/4 v8, 0x1

    :goto_4
    move-object/from16 v0, p1

    invoke-virtual {v9, v0, v10, v8}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 5044
    .restart local v2       #client:Landroid/net/wifi/HotspotClient;
    :cond_7
    :try_start_5
    const-string v10, "WifiStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to get "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/net/wifi/HotspotClient;

    iget-object v8, v8, Landroid/net/wifi/HotspotClient;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 5046
    .end local v2           #client:Landroid/net/wifi/HotspotClient;
    :catchall_2
    move-exception v8

    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v8

    .line 5049
    :cond_8
    const-string v9, "WifiStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to block "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/net/wifi/HotspotClient;

    iget-object v8, v8, Landroid/net/wifi/HotspotClient;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 5051
    :cond_9
    const/4 v8, -0x1

    goto :goto_4

    .line 5054
    .end local v4           #ok:Z
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mHotspotNative:Landroid/net/wifi/WifiNative;
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$21900(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v9

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/net/wifi/HotspotClient;

    iget-object v8, v8, Landroid/net/wifi/HotspotClient;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v9, v8}, Landroid/net/wifi/WifiNative;->unblockClientCommand(Ljava/lang/String;)Z

    move-result v4

    .line 5055
    .restart local v4       #ok:Z
    if-eqz v4, :cond_a

    .line 5056
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$21500()Ljava/util/HashMap;

    move-result-object v9

    monitor-enter v9

    .line 5057
    :try_start_6
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$21500()Ljava/util/HashMap;

    move-result-object v10

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/net/wifi/HotspotClient;

    iget-object v8, v8, Landroid/net/wifi/HotspotClient;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5058
    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 5059
    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateMachine$TetheredState;->sendClientsChangedBroadcast()V

    .line 5063
    :goto_5
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$22400(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v9

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->what:I

    if-eqz v4, :cond_b

    const/4 v8, 0x1

    :goto_6
    move-object/from16 v0, p1

    invoke-virtual {v9, v0, v10, v8}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 5058
    :catchall_3
    move-exception v8

    :try_start_7
    monitor-exit v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v8

    .line 5061
    :cond_a
    const-string v9, "WifiStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to unblock "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/net/wifi/HotspotClient;

    iget-object v8, v8, Landroid/net/wifi/HotspotClient;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 5063
    :cond_b
    const/4 v8, -0x1

    goto :goto_6

    .line 5066
    .end local v4           #ok:Z
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mHotspotNative:Landroid/net/wifi/WifiNative;
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$21900(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v9

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    const/4 v10, 0x1

    if-ne v8, v10, :cond_c

    const/4 v8, 0x1

    :goto_7
    invoke-virtual {v9, v8}, Landroid/net/wifi/WifiNative;->setApProbeRequestEnabledCommand(Z)Z

    move-result v4

    .line 5067
    .restart local v4       #ok:Z
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$22400(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v9

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->what:I

    if-eqz v4, :cond_d

    const/4 v8, 0x1

    :goto_8
    move-object/from16 v0, p1

    invoke-virtual {v9, v0, v10, v8}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 5066
    .end local v4           #ok:Z
    :cond_c
    const/4 v8, 0x0

    goto :goto_7

    .line 5067
    .restart local v4       #ok:Z
    :cond_d
    const/4 v8, -0x1

    goto :goto_8

    .line 5070
    .end local v4           #ok:Z
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mStartApWps:Z
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$22300(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 5071
    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.net.wifi.WIFI_HOTSPOT_OVERLAP"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5072
    .restart local v3       #intent:Landroid/content/Intent;
    const/high16 v8, 0x800

    invoke-virtual {v3, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5073
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$100(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v8

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v8, v3, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 5074
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v9, 0x0

    #setter for: Landroid/net/wifi/WifiStateMachine;->mStartApWps:Z
    invoke-static {v8, v9}, Landroid/net/wifi/WifiStateMachine;->access$22302(Landroid/net/wifi/WifiStateMachine;Z)Z

    goto/16 :goto_1

    .line 4968
    nop

    :sswitch_data_0
    .sparse-switch
        0x20018 -> :sswitch_1
        0x2001d -> :sswitch_0
        0x200aa -> :sswitch_5
        0x200ab -> :sswitch_6
        0x200ac -> :sswitch_4
        0x200ae -> :sswitch_7
        0x2400a -> :sswitch_8
        0x24029 -> :sswitch_3
        0x2402a -> :sswitch_2
    .end sparse-switch

    .line 5015
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
