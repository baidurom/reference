.class Landroid/net/wifi/WifiStateMachine$7;
.super Landroid/content/BroadcastReceiver;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/WifiStateMachine;->initializeExtra()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;

.field final synthetic val$isHotspotAlwaysOnWhilePlugged:Z


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 5428
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$7;->this$0:Landroid/net/wifi/WifiStateMachine;

    iput-boolean p2, p0, Landroid/net/wifi/WifiStateMachine$7;->val$isHotspotAlwaysOnWhilePlugged:Z

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 5431
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 5432
    .local v1, action:Ljava/lang/String;
    const-string v7, "WifiStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onReceive, action:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5433
    const-string v7, "com.mtk.beamplus.activated"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 5434
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$7;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mBeamPlusStarted:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v7}, Landroid/net/wifi/WifiStateMachine;->access$18400(Landroid/net/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5435
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$7;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v8, 0x200ad

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 5492
    :cond_0
    :goto_0
    return-void

    .line 5436
    :cond_1
    const-string v7, "com.mtk.beamplus.deactivated"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 5437
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$7;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mBeamPlusStarted:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v7}, Landroid/net/wifi/WifiStateMachine;->access$18400(Landroid/net/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5438
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$7;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v8, 0x200ad

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 5439
    :cond_2
    const-string v7, "com.android.server.WifiManager.action.STOP_HOTSPOT"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 5440
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$7;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/net/wifi/WifiStateMachine;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 5441
    const/4 v6, 0x0

    .line 5443
    .local v6, wifiSavedState:I
    :try_start_0
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$7;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v7}, Landroid/net/wifi/WifiStateMachine;->access$100(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "wifi_saved_state"

    invoke-static {v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 5448
    :goto_1
    const-string v7, "WifiStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received stop hotspot intent, wifiSavedState:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5449
    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 5450
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$7;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$7;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v7}, Landroid/net/wifi/WifiStateMachine;->access$100(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v9, "wifi"

    invoke-virtual {v7, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v8, v7}, Landroid/net/wifi/WifiStateMachine;->access$22902(Landroid/net/wifi/WifiStateMachine;Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiManager;

    .line 5451
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$7;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v7}, Landroid/net/wifi/WifiStateMachine;->access$22900(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 5452
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$7;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v7}, Landroid/net/wifi/WifiStateMachine;->access$100(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "wifi_saved_state"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 5445
    :catch_0
    move-exception v2

    .line 5446
    .local v2, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v7, "WifiStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SettingNotFoundException:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 5454
    .end local v2           #e:Landroid/provider/Settings$SettingNotFoundException;
    .end local v6           #wifiSavedState:I
    :cond_3
    const-string v7, "com.mediatek.common.wifi.AUTOCONNECT_SETTINGS_CHANGE"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 5455
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$7;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v8, 0x2008d

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 5456
    :cond_4
    const-string v7, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 5457
    const-string v7, "android.hardware.display.extra.WIFI_DISPLAY_STATUS"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/hardware/display/WifiDisplayStatus;

    .line 5459
    .local v5, status:Landroid/hardware/display/WifiDisplayStatus;
    const-string v7, "WifiStateMachine"

    const-string v8, "Received ACTION_WIFI_DISPLAY_STATUS_CHANGED."

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5460
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$7;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->setWfdConnected(Landroid/hardware/display/WifiDisplayStatus;)V
    invoke-static {v7, v5}, Landroid/net/wifi/WifiStateMachine;->access$23000(Landroid/net/wifi/WifiStateMachine;Landroid/hardware/display/WifiDisplayStatus;)V

    .line 5461
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$7;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v8, 0x200ad

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 5462
    .end local v5           #status:Landroid/hardware/display/WifiDisplayStatus;
    :cond_5
    const-string v7, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 5463
    iget-boolean v7, p0, Landroid/net/wifi/WifiStateMachine$7;->val$isHotspotAlwaysOnWhilePlugged:Z

    if-eqz v7, :cond_0

    .line 5464
    const-string/jumbo v7, "plugged"

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 5465
    .local v4, pluggedType:I
    const-string v7, "WifiStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ACTION_BATTERY_CHANGED pluggedType:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mPluggedType:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$7;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mPluggedType:I
    invoke-static {v9}, Landroid/net/wifi/WifiStateMachine;->access$21700(Landroid/net/wifi/WifiStateMachine;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5466
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$7;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mPluggedType:I
    invoke-static {v7}, Landroid/net/wifi/WifiStateMachine;->access$21700(Landroid/net/wifi/WifiStateMachine;)I

    move-result v7

    if-eq v7, v4, :cond_0

    .line 5467
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$7;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mPluggedType:I
    invoke-static {v7, v4}, Landroid/net/wifi/WifiStateMachine;->access$21702(Landroid/net/wifi/WifiStateMachine;I)I

    .line 5468
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$7;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDuration:I
    invoke-static {v7}, Landroid/net/wifi/WifiStateMachine;->access$21600(Landroid/net/wifi/WifiStateMachine;)I

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$7;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mPluggedType:I
    invoke-static {v7}, Landroid/net/wifi/WifiStateMachine;->access$21700(Landroid/net/wifi/WifiStateMachine;)I

    move-result v7

    if-nez v7, :cond_6

    .line 5469
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$7;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mClientNum:I
    invoke-static {v7}, Landroid/net/wifi/WifiStateMachine;->access$21400(Landroid/net/wifi/WifiStateMachine;)I

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$7;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v7}, Landroid/net/wifi/WifiStateMachine;->access$23100(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v7

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$7;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mTetheredState:Lcom/android/internal/util/State;
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$21100(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v8

    if-ne v7, v8, :cond_0

    .line 5470
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$7;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v7}, Landroid/net/wifi/WifiStateMachine;->access$11900(Landroid/net/wifi/WifiStateMachine;)Landroid/app/AlarmManager;

    move-result-object v7

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$7;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mIntentStopHotspot:Landroid/app/PendingIntent;
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$21800(Landroid/net/wifi/WifiStateMachine;)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 5471
    const-string v7, "WifiStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Set alarm for ACTION_BATTERY_CHANGED changed, mDuration:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$7;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDuration:I
    invoke-static {v9}, Landroid/net/wifi/WifiStateMachine;->access$21600(Landroid/net/wifi/WifiStateMachine;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5472
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$7;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v7}, Landroid/net/wifi/WifiStateMachine;->access$11900(Landroid/net/wifi/WifiStateMachine;)Landroid/app/AlarmManager;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-object v11, p0, Landroid/net/wifi/WifiStateMachine$7;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDuration:I
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$21600(Landroid/net/wifi/WifiStateMachine;)I

    move-result v11

    int-to-long v11, v11

    const-wide/32 v13, 0x493e0

    mul-long/2addr v11, v13

    add-long/2addr v9, v11

    iget-object v11, p0, Landroid/net/wifi/WifiStateMachine$7;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mIntentStopHotspot:Landroid/app/PendingIntent;
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$21800(Landroid/net/wifi/WifiStateMachine;)Landroid/app/PendingIntent;

    move-result-object v11

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 5476
    :cond_6
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$7;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v7}, Landroid/net/wifi/WifiStateMachine;->access$11900(Landroid/net/wifi/WifiStateMachine;)Landroid/app/AlarmManager;

    move-result-object v7

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$7;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mIntentStopHotspot:Landroid/app/PendingIntent;
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$21800(Landroid/net/wifi/WifiStateMachine;)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 5480
    .end local v4           #pluggedType:I
    :cond_7
    const-string v7, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 5481
    const-string/jumbo v7, "ss"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5482
    .local v3, iccState:Ljava/lang/String;
    const-string v7, "WifiStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "iccState:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5483
    const-string v7, "LOADED"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 5486
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$7;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v8, 0x2008f

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 5487
    .end local v3           #iccState:Ljava/lang/String;
    :cond_8
    const-string v7, "android.intent.action.DUAL_SIM_MODE"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 5488
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$7;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v8, 0x2008f

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 5489
    :cond_9
    const-string v7, "com.android.server.WifiManager.action.STOP_SCAN"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 5490
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$7;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v8, 0x200af

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    goto/16 :goto_0
.end method
