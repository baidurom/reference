.class Lcom/android/phone/PhoneApp$1;
.super Landroid/os/Handler;
.source "PhoneApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneApp;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneApp;)V
    .locals 0
    .parameter

    .prologue
    .line 399
    iput-object p1, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 27
    .parameter "msg"

    .prologue
    .line 403
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v23, v0

    sparse-switch v23, :sswitch_data_0

    .line 754
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 410
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/android/server/sip/SipService;->start(Landroid/content/Context;)V

    goto :goto_0

    .line 429
    :sswitch_2
    const-string v23, "PhoneApp"

    const-string v24, "handle EVENT_SIM_NETWORK_LOCKED +"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    new-instance v14, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v23, v0

    const-class v24, Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v14, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 431
    .local v14, intent3:Landroid/content/Intent;
    const/high16 v23, 0x1000

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V

    .line 433
    const-string v23, "PhoneApp"

    const-string v24, "handle EVENT_SIM_NETWORK_LOCKED -"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 445
    .end local v14           #intent3:Landroid/content/Intent;
    :sswitch_3
    const-string v23, "PhoneApp"

    const-string v24, "[Received][EVENT_SIM1_NETWORK_LOCKED]"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    const-string v23, "PhoneApp"

    const-string v24, "handle EVENT_SIM1_NETWORK_LOCKED +"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    new-instance v12, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v23, v0

    const-class v24, Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v12, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 450
    .local v12, intent:Landroid/content/Intent;
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 451
    .local v8, bundle:Landroid/os/Bundle;
    const-string v23, "PhoneConstants.GEMINI_SIM_ID_KEY"

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 452
    invoke-virtual {v12, v8}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 453
    const/high16 v23, 0x1000

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V

    .line 455
    const-string v23, "PhoneApp"

    const-string v24, "handle EVENT_SIM1_NETWORK_LOCKED -"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 471
    .end local v8           #bundle:Landroid/os/Bundle;
    .end local v12           #intent:Landroid/content/Intent;
    :sswitch_4
    const-string v23, "PhoneApp"

    const-string v24, "[Received][EVENT_SIM2_NETWORK_LOCKED]"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    const-string v23, "PhoneApp"

    const-string v24, "handle EVENT_SIM2_NETWORK_LOCKED +"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    new-instance v13, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v23, v0

    const-class v24, Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v13, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 477
    .local v13, intent2:Landroid/content/Intent;
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 478
    .local v9, bundle2:Landroid/os/Bundle;
    const-string v23, "PhoneConstants.GEMINI_SIM_ID_KEY"

    const/16 v24, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 479
    invoke-virtual {v13, v9}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 480
    const/high16 v23, 0x1000

    move/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V

    .line 482
    const-string v23, "PhoneApp"

    const-string v24, "handle EVENT_SIM2_NETWORK_LOCKED -"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 495
    .end local v9           #bundle2:Landroid/os/Bundle;
    .end local v13           #intent2:Landroid/content/Intent;
    :sswitch_5
    const-string v23, "PhoneApp"

    const-string v24, "- updating in-call notification from handler..."

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    goto/16 :goto_0

    .line 500
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lcom/android/phone/NotificationMgr;->showDataDisconnectedRoaming(I)V

    goto/16 :goto_0

    .line 504
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/phone/NotificationMgr;->hideDataDisconnectedRoaming()V

    goto/16 :goto_0

    .line 508
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v23, v0

    #getter for: Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static/range {v23 .. v23}, Lcom/android/phone/PhoneApp;->access$400(Lcom/android/phone/PhoneApp;)Lcom/android/phone/InCallScreen;

    move-result-object v23

    if-nez v23, :cond_0

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Landroid/os/AsyncResult;

    move-object/from16 v0, v25

    move/from16 v1, v26

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v23

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingUssdMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 516
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v23, v0

    #getter for: Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static/range {v23 .. v23}, Lcom/android/phone/PhoneApp;->access$400(Lcom/android/phone/PhoneApp;)Lcom/android/phone/InCallScreen;

    move-result-object v23

    if-nez v23, :cond_0

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Landroid/os/AsyncResult;

    move-object/from16 v0, v25

    move/from16 v1, v26

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v23

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingUssdMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 524
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/android/phone/InCallUiState;->setPendingUssdMessage(Landroid/os/Message;)V

    .line 525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Landroid/os/AsyncResult;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    #calls: Lcom/android/phone/PhoneApp;->onMMIComplete(Landroid/os/AsyncResult;)V
    invoke-static {v0, v1}, Lcom/android/phone/PhoneApp;->access$500(Lcom/android/phone/PhoneApp;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 529
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/android/phone/InCallUiState;->setPendingUssdMessage(Landroid/os/Message;)V

    .line 530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Landroid/os/AsyncResult;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    #calls: Lcom/android/phone/PhoneApp;->onMMIComplete2(Landroid/os/AsyncResult;)V
    invoke-static {v0, v1}, Lcom/android/phone/PhoneApp;->access$600(Lcom/android/phone/PhoneApp;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 534
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Lcom/android/phone/PhoneUtils;->cancelMmiCodeExt(Lcom/android/internal/telephony/Phone;I)Z

    goto/16 :goto_0

    .line 538
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-static/range {v23 .. v24}, Lcom/android/phone/PhoneUtils;->cancelMmiCodeExt(Lcom/android/internal/telephony/Phone;I)Z

    goto/16 :goto_0

    .line 547
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v16

    .line 549
    .local v16, phoneState:Lcom/android/internal/telephony/PhoneConstants$State;
    sget-object v23, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_1

    .line 553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v23

    if-nez v23, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/phone/PhoneApp;->isBluetoothHeadsetAudioOn()Z

    move-result v23

    if-nez v23, :cond_1

    .line 554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v23

    if-nez v23, :cond_2

    .line 556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/android/phone/PhoneUtils;->restoreSpeakerMode(Landroid/content/Context;)V

    .line 565
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->updateProximitySensorMode(Lcom/android/internal/telephony/PhoneConstants$State;)V

    .line 568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v23, v0

    #getter for: Lcom/android/phone/PhoneApp;->mTtyEnabled:Z
    invoke-static/range {v23 .. v23}, Lcom/android/phone/PhoneApp;->access$700(Lcom/android/phone/PhoneApp;)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 569
    const/16 v23, 0xe

    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneApp$1;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp$1;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 560
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v23

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v23 .. v25}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    goto :goto_1

    .line 577
    .end local v16           #phoneState:Lcom/android/internal/telephony/PhoneConstants$State;
    :sswitch_f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    const-string v24, "READY"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v23, v0

    #getter for: Lcom/android/phone/PhoneApp;->mPUKEntryActivity:Landroid/app/Activity;
    invoke-static/range {v23 .. v23}, Lcom/android/phone/PhoneApp;->access$800(Lcom/android/phone/PhoneApp;)Landroid/app/Activity;

    move-result-object v23

    if-eqz v23, :cond_3

    .line 582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v23, v0

    #getter for: Lcom/android/phone/PhoneApp;->mPUKEntryActivity:Landroid/app/Activity;
    invoke-static/range {v23 .. v23}, Lcom/android/phone/PhoneApp;->access$800(Lcom/android/phone/PhoneApp;)Landroid/app/Activity;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/app/Activity;->finish()V

    .line 583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    #setter for: Lcom/android/phone/PhoneApp;->mPUKEntryActivity:Landroid/app/Activity;
    invoke-static/range {v23 .. v24}, Lcom/android/phone/PhoneApp;->access$802(Lcom/android/phone/PhoneApp;Landroid/app/Activity;)Landroid/app/Activity;

    .line 585
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v23, v0

    #getter for: Lcom/android/phone/PhoneApp;->mPUKEntryProgressDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v23 .. v23}, Lcom/android/phone/PhoneApp;->access$900(Lcom/android/phone/PhoneApp;)Landroid/app/ProgressDialog;

    move-result-object v23

    if-eqz v23, :cond_0

    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v23, v0

    #getter for: Lcom/android/phone/PhoneApp;->mPUKEntryProgressDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v23 .. v23}, Lcom/android/phone/PhoneApp;->access$900(Lcom/android/phone/PhoneApp;)Landroid/app/ProgressDialog;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/app/ProgressDialog;->dismiss()V

    .line 587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    #setter for: Lcom/android/phone/PhoneApp;->mPUKEntryProgressDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v23 .. v24}, Lcom/android/phone/PhoneApp;->access$902(Lcom/android/phone/PhoneApp;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    goto/16 :goto_0

    .line 599
    :sswitch_10
    const/4 v11, 0x0

    .line 600
    .local v11, inDockMode:Z
    sget v23, Lcom/android/phone/PhoneApp;->mDockState:I

    if-eqz v23, :cond_4

    .line 601
    const/4 v11, 0x1

    .line 603
    :cond_4
    const-string v23, "PhoneApp"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "received EVENT_DOCK_STATE_CHANGED. Phone inDock = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v16

    .line 607
    .restart local v16       #phoneState:Lcom/android/internal/telephony/PhoneConstants$State;
    sget-object v23, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v23

    if-nez v23, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/phone/PhoneApp;->isBluetoothHeadsetAudioOn()Z

    move-result v23

    if-nez v23, :cond_0

    .line 609
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v23

    const/16 v24, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-static {v0, v11, v1}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/phone/PhoneApp;->updateInCallScreen()V

    goto/16 :goto_0

    .line 617
    .end local v11           #inDockMode:Z
    .end local v16           #phoneState:Lcom/android/internal/telephony/PhoneConstants$State;
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v23

    if-eqz v23, :cond_5

    .line 618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v23, v0

    #getter for: Lcom/android/phone/PhoneApp;->mPreferredTtyMode:I
    invoke-static/range {v23 .. v23}, Lcom/android/phone/PhoneApp;->access$1000(Lcom/android/phone/PhoneApp;)I

    move-result v22

    .line 622
    .local v22, ttyMode:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v22

    #calls: Lcom/android/phone/PhoneApp;->convertTTYmodeToRadio(I)I
    invoke-static {v0, v1}, Lcom/android/phone/PhoneApp;->access$1100(Lcom/android/phone/PhoneApp;I)I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    move-object/from16 v25, v0

    const/16 v26, 0x10

    invoke-virtual/range {v25 .. v26}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v25

    invoke-interface/range {v23 .. v25}, Lcom/android/internal/telephony/Phone;->setTTYMode(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 620
    .end local v22           #ttyMode:I
    :cond_5
    const/16 v22, 0x0

    .restart local v22       #ttyMode:I
    goto :goto_2

    .line 626
    .end local v22           #ttyMode:I
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    #calls: Lcom/android/phone/PhoneApp;->handleQueryTTYModeResponse(Landroid/os/Message;)V
    invoke-static {v0, v1}, Lcom/android/phone/PhoneApp;->access$1200(Lcom/android/phone/PhoneApp;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 630
    :sswitch_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    #calls: Lcom/android/phone/PhoneApp;->handleSetTTYModeResponse(Landroid/os/Message;)V
    invoke-static {v0, v1}, Lcom/android/phone/PhoneApp;->access$1300(Lcom/android/phone/PhoneApp;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 634
    :sswitch_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lcom/android/phone/PhoneApp;->handleTimeout(I)V

    goto/16 :goto_0

    .line 638
    :sswitch_15
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    .line 639
    .local v7, ar:Landroid/os/AsyncResult;
    new-instance v15, Landroid/content/Intent;

    const-string v23, "com.android.phone.NETWORK_MODE_CHANGE_RESPONSE"

    move-object/from16 v0, v23

    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 640
    .local v15, it:Landroid/content/Intent;
    iget-object v0, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v23, v0

    if-nez v23, :cond_6

    .line 641
    const-string v23, "com.android.phone.NETWORK_MODE_CHANGE_RESPONSE"

    const/16 v24, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 642
    const-string v23, "NEW_NETWORK_MODE"

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v24, v0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 647
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Lcom/android/phone/PhoneApp;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 644
    :cond_6
    const-string v23, "com.android.phone.NETWORK_MODE_CHANGE_RESPONSE"

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 645
    const-string v23, "com.android.phone.OLD_NETWORK_MODE"

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_3

    .line 652
    .end local v7           #ar:Landroid/os/AsyncResult;
    .end local v15           #it:Landroid/content/Intent;
    :sswitch_16
    const-string v23, "PhoneApp"

    const-string v24, "mHandler.handleMessage() : EVENT_TOUCH_ANSWER_VT"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/phone/PhoneApp;->getInCallScreenInstance()Lcom/android/phone/InCallScreen;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/phone/InCallScreen;->getInCallTouchUi()Lcom/android/phone/InCallTouchUi;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/phone/InCallTouchUi;->touchAnswerCall()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 655
    :catch_0
    move-exception v10

    .line 656
    .local v10, e:Ljava/lang/Exception;
    const-string v23, "PhoneApp"

    const-string v24, "mHandler.handleMessage() : the InCallScreen Instance is null , so cannot answer incoming VT call"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 661
    .end local v10           #e:Ljava/lang/Exception;
    :sswitch_17
    invoke-static {}, Lcom/android/phone/PhoneUtils;->showIncomingCallUi()V

    goto/16 :goto_0

    .line 665
    :sswitch_18
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/AsyncResult;

    .line 666
    .local v18, result:Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    .line 667
    .local v4, active:I
    if-nez v18, :cond_7

    .line 668
    const-string v23, "PhoneApp"

    const-string v24, "ymm---handleSetStateResponse,ar is null"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 671
    :cond_7
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    .line 672
    const-string v23, "PhoneApp"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "ymm---handleSetStateResponse: ar.exception="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v23, v0

    #getter for: Lcom/android/phone/PhoneApp;->mSetStateCount:I
    invoke-static/range {v23 .. v23}, Lcom/android/phone/PhoneApp;->access$1400(Lcom/android/phone/PhoneApp;)I

    move-result v23

    const/16 v24, 0xa

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_8

    .line 674
    const-string v23, "PhoneApp"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "ymm---tried "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v25, v0

    #getter for: Lcom/android/phone/PhoneApp;->mSetStateCount:I
    invoke-static/range {v25 .. v25}, Lcom/android/phone/PhoneApp;->access$1400(Lcom/android/phone/PhoneApp;)I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "times, don\'t retry anymore"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 677
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    new-instance v24, Lcom/android/phone/PhoneApp$1$1;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lcom/android/phone/PhoneApp$1$1;-><init>(Lcom/android/phone/PhoneApp$1;I)V

    const-wide/16 v25, 0x1388

    invoke-virtual/range {v23 .. v26}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 691
    .end local v4           #active:I
    .end local v18           #result:Landroid/os/AsyncResult;
    :sswitch_19
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/AsyncResult;

    .line 692
    .local v19, result1:Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    .line 693
    .local v5, active1:I
    if-nez v19, :cond_9

    .line 694
    const-string v23, "PhoneApp"

    const-string v24, "ymm---handleSetStateResponse,ar is null"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 697
    :cond_9
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    .line 698
    const-string v23, "PhoneApp"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "ymm---handleSetStateResponse: ar.exception="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v23, v0

    #getter for: Lcom/android/phone/PhoneApp;->mSetStateCount:I
    invoke-static/range {v23 .. v23}, Lcom/android/phone/PhoneApp;->access$1400(Lcom/android/phone/PhoneApp;)I

    move-result v23

    const/16 v24, 0xa

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_a

    .line 700
    const-string v23, "PhoneApp"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "ymm---tried "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v25, v0

    #getter for: Lcom/android/phone/PhoneApp;->mSetStateCount:I
    invoke-static/range {v25 .. v25}, Lcom/android/phone/PhoneApp;->access$1400(Lcom/android/phone/PhoneApp;)I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "times, don\'t retry anymore"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 703
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    new-instance v24, Lcom/android/phone/PhoneApp$1$2;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5}, Lcom/android/phone/PhoneApp$1$2;-><init>(Lcom/android/phone/PhoneApp$1;I)V

    const-wide/16 v25, 0x1388

    invoke-virtual/range {v23 .. v26}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 717
    .end local v5           #active1:I
    .end local v19           #result1:Landroid/os/AsyncResult;
    :sswitch_1a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Landroid/os/AsyncResult;

    .line 718
    .local v20, result2:Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    .line 719
    .local v6, active2:I
    if-nez v20, :cond_b

    .line 720
    const-string v23, "PhoneApp"

    const-string v24, "ymm---handleSetStateResponse,ar is null"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 723
    :cond_b
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    .line 724
    const-string v23, "PhoneApp"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "ymm---handleSetStateResponse: ar.exception="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v23, v0

    #getter for: Lcom/android/phone/PhoneApp;->mSetStateCount:I
    invoke-static/range {v23 .. v23}, Lcom/android/phone/PhoneApp;->access$1400(Lcom/android/phone/PhoneApp;)I

    move-result v23

    const/16 v24, 0xa

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_c

    .line 726
    const-string v23, "PhoneApp"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "ymm---tried "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v25, v0

    #getter for: Lcom/android/phone/PhoneApp;->mSetStateCount:I
    invoke-static/range {v25 .. v25}, Lcom/android/phone/PhoneApp;->access$1400(Lcom/android/phone/PhoneApp;)I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "times, don\'t retry anymore"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 729
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    new-instance v24, Lcom/android/phone/PhoneApp$1$3;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6}, Lcom/android/phone/PhoneApp$1$3;-><init>(Lcom/android/phone/PhoneApp$1;I)V

    const-wide/16 v25, 0x1388

    invoke-virtual/range {v23 .. v26}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 745
    .end local v6           #active2:I
    .end local v20           #result2:Landroid/os/AsyncResult;
    :sswitch_1b
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v21, v0

    .line 746
    .local v21, slotId:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v17, v0

    .line 747
    .local v17, requestType:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    move-object/from16 v23, v0

    new-instance v24, Lcom/android/phone/PhoneApp$1$4;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/phone/PhoneApp$1$4;-><init>(Lcom/android/phone/PhoneApp$1;)V

    move-object/from16 v0, v23

    move/from16 v1, v21

    move/from16 v2, v17

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/CellConnService/CellConnMgr;->handleCellConn(IILjava/lang/Runnable;)I

    goto/16 :goto_0

    .line 403
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_2
        0x7 -> :sswitch_e
        0x8 -> :sswitch_f
        0x9 -> :sswitch_5
        0xa -> :sswitch_6
        0xb -> :sswitch_7
        0xc -> :sswitch_0
        0xd -> :sswitch_10
        0xe -> :sswitch_11
        0xf -> :sswitch_12
        0x10 -> :sswitch_13
        0x11 -> :sswitch_1
        0x12 -> :sswitch_14
        0x13 -> :sswitch_3
        0x15 -> :sswitch_4
        0x1e -> :sswitch_16
        0x33 -> :sswitch_8
        0x34 -> :sswitch_a
        0x35 -> :sswitch_c
        0x36 -> :sswitch_9
        0x37 -> :sswitch_b
        0x38 -> :sswitch_d
        0x39 -> :sswitch_17
        0x3e8 -> :sswitch_18
        0x3e9 -> :sswitch_19
        0x3ea -> :sswitch_1a
        0x1770 -> :sswitch_1b
        0x271b -> :sswitch_15
    .end sparse-switch
.end method
