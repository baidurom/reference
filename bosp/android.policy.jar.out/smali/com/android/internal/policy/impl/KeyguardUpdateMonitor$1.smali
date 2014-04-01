.class Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$1;
.super Landroid/os/Handler;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .locals 0
    .parameter

    .prologue
    .line 369
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 372
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 489
    :cond_0
    :goto_0
    return-void

    .line 374
    :sswitch_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #calls: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleTimeUpdate()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$000(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    goto :goto_0

    .line 377
    :sswitch_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;

    #calls: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleBatteryUpdate(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;)V
    invoke-static {v2, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$100(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;)V

    goto :goto_0

    .line 380
    :sswitch_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #calls: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleCarrierInfoUpdate()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$200(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    goto :goto_0

    .line 383
    :sswitch_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;

    #calls: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleSimStateChange(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;)V
    invoke-static {v2, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$300(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;)V

    goto :goto_0

    .line 386
    :sswitch_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->updateResources()V

    goto :goto_0

    .line 389
    :sswitch_5
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleRingerModeChange(I)V

    goto :goto_0

    .line 392
    :sswitch_6
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handlePhoneStateChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 395
    :sswitch_7
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #calls: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleClockVisibilityChanged()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$400(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    goto :goto_0

    .line 398
    :sswitch_8
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleDeviceProvisioned()V

    goto :goto_0

    .line 401
    :sswitch_9
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v2, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleMultithemLockscreenEnalbe(Ljava/lang/Integer;)V

    goto :goto_0

    .line 405
    :sswitch_a
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #calls: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleBootupModePick()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$500(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    goto :goto_0

    .line 409
    :sswitch_b
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget v2, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleSIMInfoChanged(I)V
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;I)V

    goto :goto_0

    .line 413
    :sswitch_c
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->DEBUG:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$700(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "KeyguardUpdateMonitor"

    const-string v2, "handleUNLOCK_KEYGUARD"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$800(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 415
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$800(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;->onUnlockKeyguard()V

    .line 414
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 421
    .end local v0           #i:I
    :sswitch_d
    const-string v1, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "msg.arg1 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    const-string v1, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "msg.arg2 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-nez v1, :cond_2

    .line 425
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #calls: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleGprsTypePickSim1()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$900(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    goto/16 :goto_0

    .line 427
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleGprsTypePickSim2()V

    goto/16 :goto_0

    .line 432
    :sswitch_e
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    const/4 v2, 0x0

    #setter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPINFlag:I
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1002(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;I)I

    goto/16 :goto_0

    .line 436
    :sswitch_f
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleMissedCall(I)V

    goto/16 :goto_0

    .line 439
    :sswitch_10
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleWallpaperSet()V

    goto/16 :goto_0

    .line 443
    :sswitch_11
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleDMKeyguardUpdate()V

    goto/16 :goto_0

    .line 447
    :sswitch_12
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    #calls: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleSIMCardChanged(II)V
    invoke-static {v1, v2, v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1100(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;II)V

    goto/16 :goto_0

    .line 451
    :sswitch_13
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #calls: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleDelaySIMCardChanged()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1200(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    goto/16 :goto_0

    .line 455
    :sswitch_14
    const-string v1, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSG_KEYGUARD_UPDATE_LAYOUT, msg.arg1="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleLockScreenUpdateLayout(I)V

    goto/16 :goto_0

    .line 461
    :sswitch_15
    const-string v1, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSG_KEYGUARD_SIM_NAME_UPDATE, msg.arg1="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget v2, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleSIMNameUpdate(I)V
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1300(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;I)V

    goto/16 :goto_0

    .line 466
    :sswitch_16
    const-string v1, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSG_MODEM_RESET, msg.arg1="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget v2, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleRadioStateChanged(I)V
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1400(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;I)V

    goto/16 :goto_0

    .line 471
    :sswitch_17
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #calls: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handle3GSwitchEvent()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1500(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    goto/16 :goto_0

    .line 476
    :sswitch_18
    const-string v1, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSG_SYSTEM_STATE, msg.arg1="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget v2, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleSystemStateChanged(I)V
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;I)V

    goto/16 :goto_0

    .line 482
    :sswitch_19
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #calls: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleDownloadCalibrationDataUpdate()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1700(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    goto/16 :goto_0

    .line 486
    :sswitch_1a
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v2, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleStatubarExpandEnalbe(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 372
    :sswitch_data_0
    .sparse-switch
        0x12d -> :sswitch_0
        0x12e -> :sswitch_1
        0x12f -> :sswitch_2
        0x130 -> :sswitch_3
        0x131 -> :sswitch_5
        0x132 -> :sswitch_6
        0x133 -> :sswitch_7
        0x134 -> :sswitch_8
        0x135 -> :sswitch_c
        0x136 -> :sswitch_f
        0x137 -> :sswitch_10
        0x138 -> :sswitch_11
        0x139 -> :sswitch_12
        0x13a -> :sswitch_13
        0x13b -> :sswitch_4
        0x13c -> :sswitch_b
        0x13d -> :sswitch_e
        0x13e -> :sswitch_14
        0x13f -> :sswitch_15
        0x140 -> :sswitch_16
        0x141 -> :sswitch_17
        0x142 -> :sswitch_a
        0x143 -> :sswitch_d
        0x144 -> :sswitch_18
        0x145 -> :sswitch_19
        0x147 -> :sswitch_9
        0x1f5 -> :sswitch_1a
    .end sparse-switch
.end method
