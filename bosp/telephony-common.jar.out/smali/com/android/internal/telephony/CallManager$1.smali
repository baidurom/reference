.class Lcom/android/internal/telephony/CallManager$1;
.super Landroid/os/Handler;
.source "CallManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CallManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/CallManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/CallManager;)V
    .locals 0
    .parameter

    .prologue
    .line 2448
    iput-object p1, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 17
    .parameter "msg"

    .prologue
    .line 2455
    const-string v14, "CallManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " handleMessage msgid:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2457
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    sparse-switch v14, :sswitch_data_0

    .line 2832
    :cond_0
    :goto_0
    return-void

    .line 2462
    :sswitch_0
    const-string v14, "CallManager"

    const-string v15, " handleMessage (EVENT_DISCONNECT)"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2463
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    add-int/lit8 v14, v14, -0x64

    div-int/lit8 v9, v14, 0x64

    .line 2464
    .local v9, index:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v14, v14, Lcom/android/internal/telephony/CallManager;->mDisconnectRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v15, v14, v9

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    invoke-virtual {v15, v14}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2465
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v15, v14, Lcom/android/internal/telephony/CallManager;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    invoke-virtual {v15, v14}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2466
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    #calls: Lcom/android/internal/telephony/CallManager;->handle3GSwitchLock()V
    invoke-static {v14}, Lcom/android/internal/telephony/CallManager;->access$000(Lcom/android/internal/telephony/CallManager;)V

    .line 2470
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    #calls: Lcom/android/internal/telephony/CallManager;->clearEspeechInfo()Z
    invoke-static {v14}, Lcom/android/internal/telephony/CallManager;->access$100(Lcom/android/internal/telephony/CallManager;)Z

    goto :goto_0

    .line 2476
    .end local v9           #index:I
    :sswitch_1
    const-string v14, "CallManager"

    const-string v15, " handleMessage (EVENT_PRECISE_CALL_STATE_CHANGED)"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2477
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    add-int/lit8 v14, v14, -0x65

    div-int/lit8 v9, v14, 0x64

    .line 2478
    .restart local v9       #index:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v14, v14, Lcom/android/internal/telephony/CallManager;->mPreciseCallStateRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v15, v14, v9

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    invoke-virtual {v15, v14}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2479
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v15, v14, Lcom/android/internal/telephony/CallManager;->mPreciseCallStateRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    invoke-virtual {v15, v14}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2480
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    #calls: Lcom/android/internal/telephony/CallManager;->handle3GSwitchLock()V
    invoke-static {v14}, Lcom/android/internal/telephony/CallManager;->access$000(Lcom/android/internal/telephony/CallManager;)V

    .line 2483
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    #calls: Lcom/android/internal/telephony/CallManager;->checkIfExistsFollowingAction()Z
    invoke-static {v14}, Lcom/android/internal/telephony/CallManager;->access$200(Lcom/android/internal/telephony/CallManager;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2484
    :catch_0
    move-exception v14

    goto :goto_0

    .line 2493
    .end local v9           #index:I
    :sswitch_2
    const-string v14, "CallManager"

    const-string v15, " handleMessage (EVENT_VOICE_CALL_INCOMING_INDICATION)"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2495
    const/4 v11, 0x0

    .line 2496
    .local v11, isECCExists:Z
    const/4 v12, 0x0

    .line 2497
    .local v12, isRejectNewRingCall:Z
    const/4 v10, 0x0

    .line 2498
    .local v10, isDisconnected:Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v14}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v14

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v14}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v14

    if-eqz v14, :cond_1

    .line 2500
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v14}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 2501
    .local v1, activeCallAddress:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v14}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v14

    sget-object v15, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v14, v15, :cond_5

    const/4 v10, 0x1

    .line 2502
    :goto_1
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isSpecialEmergencyNumber(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_6

    const/4 v11, 0x1

    .line 2504
    :goto_2
    const-string v14, "CallManager"

    const-string v15, "Reject incoming call since ECC call exists."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2507
    .end local v1           #activeCallAddress:Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v14}, Lcom/android/internal/telephony/CallManager;->getRingingCallCount()I

    move-result v14

    if-lez v14, :cond_2

    .line 2508
    const/4 v12, 0x1

    .line 2516
    :cond_2
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    iget-object v7, v14, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 2517
    .local v7, gsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;
    if-eqz v11, :cond_3

    if-eqz v10, :cond_4

    :cond_3
    if-eqz v12, :cond_7

    .line 2518
    :cond_4
    const/4 v14, 0x0

    invoke-virtual {v7, v14}, Lcom/android/internal/telephony/gsm/GSMPhone;->setIncomingCallIndicationResponse(Z)V

    goto/16 :goto_0

    .line 2501
    .end local v7           #gsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;
    .restart local v1       #activeCallAddress:Ljava/lang/String;
    :cond_5
    const/4 v10, 0x0

    goto :goto_1

    .line 2502
    :cond_6
    const/4 v11, 0x0

    goto :goto_2

    .line 2520
    .end local v1           #activeCallAddress:Ljava/lang/String;
    .restart local v7       #gsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;
    :cond_7
    const/4 v14, 0x1

    invoke-virtual {v7, v14}, Lcom/android/internal/telephony/gsm/GSMPhone;->setIncomingCallIndicationResponse(Z)V

    goto/16 :goto_0

    .line 2528
    .end local v7           #gsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;
    .end local v10           #isDisconnected:Z
    .end local v11           #isECCExists:Z
    .end local v12           #isRejectNewRingCall:Z
    :sswitch_3
    const-string v14, "CallManager"

    const-string v15, " handleMessage (EVENT_RADIO_OFF_OR_NOT_AVAILABLE)"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2533
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    #calls: Lcom/android/internal/telephony/CallManager;->clearEspeechInfo()Z
    invoke-static {v14}, Lcom/android/internal/telephony/CallManager;->access$100(Lcom/android/internal/telephony/CallManager;)Z

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_0

    .line 2534
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    const/4 v15, 0x0

    #calls: Lcom/android/internal/telephony/CallManager;->setAudioMode(I)V
    invoke-static {v14, v15}, Lcom/android/internal/telephony/CallManager;->access$300(Lcom/android/internal/telephony/CallManager;I)V

    goto/16 :goto_0

    .line 2542
    :sswitch_4
    const-string v14, "CallManager"

    const-string v15, " handleMessage (EVENT_NEW_RINGING_CONNECTION)"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2546
    const/4 v3, 0x0

    .line 2547
    .local v3, bECCExists:Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v14}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v14

    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v14}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v14

    if-eqz v14, :cond_8

    .line 2549
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v14}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 2550
    .restart local v1       #activeCallAddress:Ljava/lang/String;
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_b

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isSpecialEmergencyNumber(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_b

    const/4 v3, 0x1

    .line 2552
    :goto_3
    const-string v14, "CallManager"

    const-string v15, "Reject incoming call since ECC call exists."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2554
    .end local v1           #activeCallAddress:Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v14}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v14

    if-nez v14, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    #calls: Lcom/android/internal/telephony/CallManager;->hasMoreThanOneRingingCall()Z
    invoke-static {v14}, Lcom/android/internal/telephony/CallManager;->access$400(Lcom/android/internal/telephony/CallManager;)Z

    move-result v14

    if-eqz v14, :cond_c

    :cond_9
    const/4 v4, 0x1

    .line 2556
    .local v4, bMoMtConflict:Z
    :goto_4
    if-nez v3, :cond_a

    if-eqz v4, :cond_d

    .line 2557
    :cond_a
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    iget-object v5, v14, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/telephony/Connection;

    .line 2559
    .local v5, c:Lcom/android/internal/telephony/Connection;
    :try_start_1
    const-string v14, "CallManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "silently drop incoming call: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2560
    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 2561
    :catch_1
    move-exception v6

    .line 2562
    .local v6, e:Lcom/android/internal/telephony/CallStateException;
    const-string v14, "CallManager"

    const-string v15, "new ringing connection"

    invoke-static {v14, v15, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 2550
    .end local v4           #bMoMtConflict:Z
    .end local v5           #c:Lcom/android/internal/telephony/Connection;
    .end local v6           #e:Lcom/android/internal/telephony/CallStateException;
    .restart local v1       #activeCallAddress:Ljava/lang/String;
    :cond_b
    const/4 v3, 0x0

    goto :goto_3

    .line 2554
    .end local v1           #activeCallAddress:Ljava/lang/String;
    :cond_c
    const/4 v4, 0x0

    goto :goto_4

    .line 2565
    .restart local v4       #bMoMtConflict:Z
    :cond_d
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    add-int/lit8 v14, v14, -0x66

    div-int/lit8 v9, v14, 0x64

    .line 2566
    .restart local v9       #index:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v14, v14, Lcom/android/internal/telephony/CallManager;->mNewRingingConnectionRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v15, v14, v9

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    invoke-virtual {v15, v14}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2567
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v15, v14, Lcom/android/internal/telephony/CallManager;->mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    invoke-virtual {v15, v14}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2575
    .end local v3           #bECCExists:Z
    .end local v4           #bMoMtConflict:Z
    .end local v9           #index:I
    :sswitch_5
    const-string v14, "CallManager"

    const-string v15, " handleMessage (EVENT_UNKNOWN_CONNECTION)"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2576
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    add-int/lit8 v14, v14, -0x67

    div-int/lit8 v9, v14, 0x64

    .line 2577
    .restart local v9       #index:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v14, v14, Lcom/android/internal/telephony/CallManager;->mUnknownConnectionRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v15, v14, v9

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    invoke-virtual {v15, v14}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2578
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v15, v14, Lcom/android/internal/telephony/CallManager;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    invoke-virtual {v15, v14}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2584
    .end local v9           #index:I
    :sswitch_6
    const-string v14, "CallManager"

    const-string v15, " handleMessage (EVENT_INCOMING_RING)"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2586
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v14}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v14

    if-nez v14, :cond_0

    .line 2587
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    add-int/lit8 v14, v14, -0x68

    div-int/lit8 v9, v14, 0x64

    .line 2588
    .restart local v9       #index:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v14, v14, Lcom/android/internal/telephony/CallManager;->mIncomingRingRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v15, v14, v9

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    invoke-virtual {v15, v14}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2589
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v15, v14, Lcom/android/internal/telephony/CallManager;->mIncomingRingRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    invoke-virtual {v15, v14}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2596
    .end local v9           #index:I
    :sswitch_7
    const-string v14, "CallManager"

    const-string v15, " handleMessage (EVENT_RINGBACK_TONE)"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2597
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    add-int/lit8 v14, v14, -0x69

    div-int/lit8 v9, v14, 0x64

    .line 2598
    .restart local v9       #index:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v14, v14, Lcom/android/internal/telephony/CallManager;->mRingbackToneRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v15, v14, v9

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    invoke-virtual {v15, v14}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2599
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v15, v14, Lcom/android/internal/telephony/CallManager;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    invoke-virtual {v15, v14}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2605
    .end local v9           #index:I
    :sswitch_8
    const-string v14, "CallManager"

    const-string v15, " handleMessage (EVENT_IN_CALL_VOICE_PRIVACY_ON)"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2606
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    add-int/lit8 v14, v14, -0x6a

    div-int/lit8 v9, v14, 0x64

    .line 2607
    .restart local v9       #index:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v14, v14, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOnRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v15, v14, v9

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    invoke-virtual {v15, v14}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2608
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v15, v14, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    invoke-virtual {v15, v14}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2614
    .end local v9           #index:I
    :sswitch_9
    const-string v14, "CallManager"

    const-string v15, " handleMessage (EVENT_IN_CALL_VOICE_PRIVACY_OFF)"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2615
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    add-int/lit8 v14, v14, -0x6b

    div-int/lit8 v9, v14, 0x64

    .line 2616
    .restart local v9       #index:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v14, v14, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOffRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v15, v14, v9

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    invoke-virtual {v15, v14}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2617
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v15, v14, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    invoke-virtual {v15, v14}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2623
    .end local v9           #index:I
    :sswitch_a
    const-string v14, "CallManager"

    const-string v15, " handleMessage (EVENT_CALL_WAITING)"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2624
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    add-int/lit8 v14, v14, -0x6c

    div-int/lit8 v9, v14, 0x64

    .line 2625
    .restart local v9       #index:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v14, v14, Lcom/android/internal/telephony/CallManager;->mCallWaitingRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v15, v14, v9

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    invoke-virtual {v15, v14}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2626
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v15, v14, Lcom/android/internal/telephony/CallManager;->mCallWaitingRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    invoke-virtual {v15, v14}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2632
    .end local v9           #index:I
    :sswitch_b
    const-string v14, "CallManager"

    const-string v15, " handleMessage (EVENT_DISPLAY_INFO)"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2633
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    add-int/lit8 v14, v14, -0x6d

    div-int/lit8 v9, v14, 0x64

    .line 2634
    .restart local v9       #index:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v14, v14, Lcom/android/internal/telephony/CallManager;->mDisplayInfoRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v15, v14, v9

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    invoke-virtual {v15, v14}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2635
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v15, v14, Lcom/android/internal/telephony/CallManager;->mDisplayInfoRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    invoke-virtual {v15, v14}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2641
    .end local v9           #index:I
    :sswitch_c
    const-string v14, "CallManager"

    const-string v15, " handleMessage (EVENT_SIGNAL_INFO)"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2642
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    add-int/lit8 v14, v14, -0x6e

    div-int/lit8 v9, v14, 0x64

    .line 2643
    .restart local v9       #index:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v14, v14, Lcom/android/internal/telephony/CallManager;->mSignalInfoRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v15, v14, v9

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    invoke-virtual {v15, v14}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2644
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v15, v14, Lcom/android/internal/telephony/CallManager;->mSignalInfoRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    invoke-virtual {v15, v14}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2650
    .end local v9           #index:I
    :sswitch_d
    const-string v14, "CallManager"

    const-string v15, " handleMessage (EVENT_CDMA_OTA_STATUS_CHANGE)"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2651
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    add-int/lit8 v14, v14, -0x6f

    div-int/lit8 v9, v14, 0x64

    .line 2652
    .restart local v9       #index:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v14, v14, Lcom/android/internal/telephony/CallManager;->mCdmaOtaStatusChangeRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v15, v14, v9

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    invoke-virtual {v15, v14}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2653
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v15, v14, Lcom/android/internal/telephony/CallManager;->mCdmaOtaStatusChangeRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    invoke-virtual {v15, v14}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2659
    .end local v9           #index:I
    :sswitch_e
    const-string v14, "CallManager"

    const-string v15, " handleMessage (EVENT_RESEND_INCALL_MUTE)"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2660
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    add-int/lit8 v14, v14, -0x70

    div-int/lit8 v9, v14, 0x64

    .line 2661
    .restart local v9       #index:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v14, v14, Lcom/android/internal/telephony/CallManager;->mResendIncallMuteRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v15, v14, v9

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    invoke-virtual {v15, v14}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2662
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v15, v14, Lcom/android/internal/telephony/CallManager;->mResendIncallMuteRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    invoke-virtual {v15, v14}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2668
    .end local v9           #index:I
    :sswitch_f
    const-string v14, "CallManager"

    const-string v15, " handleMessage (EVENT_MMI_INITIATE)"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2669
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    add-int/lit8 v14, v14, -0x71

    div-int/lit8 v9, v14, 0x64

    .line 2670
    .restart local v9       #index:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v14, v14, Lcom/android/internal/telephony/CallManager;->mMmiInitiateRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v15, v14, v9

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    invoke-virtual {v15, v14}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2671
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v15, v14, Lcom/android/internal/telephony/CallManager;->mMmiInitiateRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    invoke-virtual {v15, v14}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2677
    .end local v9           #index:I
    :sswitch_10
    const-string v14, "CallManager"

    const-string v15, " handleMessage (EVENT_MMI_COMPLETE)"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2678
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    add-int/lit8 v14, v14, -0x72

    div-int/lit8 v9, v14, 0x64

    .line 2679
    .restart local v9       #index:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v14, v14, Lcom/android/internal/telephony/CallManager;->mMmiCompleteRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v15, v14, v9

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    invoke-virtual {v15, v14}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2680
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v15, v14, Lcom/android/internal/telephony/CallManager;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    invoke-virtual {v15, v14}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2686
    .end local v9           #index:I
    :sswitch_11
    const-string v14, "CallManager"

    const-string v15, " handleMessage (EVENT_ECM_TIMER_RESET)"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2687
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    add-int/lit8 v14, v14, -0x73

    div-int/lit8 v9, v14, 0x64

    .line 2688
    .restart local v9       #index:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v14, v14, Lcom/android/internal/telephony/CallManager;->mEcmTimerResetRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v15, v14, v9

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    invoke-virtual {v15, v14}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2689
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v15, v14, Lcom/android/internal/telephony/CallManager;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    invoke-virtual {v15, v14}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2695
    .end local v9           #index:I
    :sswitch_12
    const-string v14, "CallManager"

    const-string v15, " handleMessage (EVENT_SUBSCRIPTION_INFO_READY)"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2696
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    add-int/lit8 v14, v14, -0x74

    div-int/lit8 v9, v14, 0x64

    .line 2697
    .restart local v9       #index:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v14, v14, Lcom/android/internal/telephony/CallManager;->mSubscriptionInfoReadyRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v15, v14, v9

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    invoke-virtual {v15, v14}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2698
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v15, v14, Lcom/android/internal/telephony/CallManager;->mSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    invoke-virtual {v15, v14}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2704
    .end local v9           #index:I
    :sswitch_13
    const-string v14, "CallManager"

    const-string v15, " handleMessage (EVENT_SUPP_SERVICE_FAILED)"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2705
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    add-int/lit8 v14, v14, -0x75

    div-int/lit8 v9, v14, 0x64

    .line 2706
    .restart local v9       #index:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v14, v14, Lcom/android/internal/telephony/CallManager;->mSuppServiceFailedRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v15, v14, v9

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    invoke-virtual {v15, v14}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2707
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v15, v14, Lcom/android/internal/telephony/CallManager;->mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    invoke-virtual {v15, v14}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2710
    const-string v14, "CallManager"

    const-string v15, "Reset WaitingForHoldRequest variables since hold request is failed."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2711
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    sget-object v15, Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;->NONE:Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;

    #setter for: Lcom/android/internal/telephony/CallManager;->mWaitingReasonForHold:Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;
    invoke-static {v14, v15}, Lcom/android/internal/telephony/CallManager;->access$502(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;)Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;

    .line 2712
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    const/4 v15, 0x0

    #setter for: Lcom/android/internal/telephony/CallManager;->bWaitingForHoldRequest:Z
    invoke-static {v14, v15}, Lcom/android/internal/telephony/CallManager;->access$602(Lcom/android/internal/telephony/CallManager;Z)Z

    .line 2715
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    #getter for: Lcom/android/internal/telephony/CallManager;->mCurrentAudioMode:I
    invoke-static {v14}, Lcom/android/internal/telephony/CallManager;->access$700(Lcom/android/internal/telephony/CallManager;)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_0

    .line 2716
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    #calls: Lcom/android/internal/telephony/CallManager;->getContext()Landroid/content/Context;
    invoke-static {v14}, Lcom/android/internal/telephony/CallManager;->access$800(Lcom/android/internal/telephony/CallManager;)Landroid/content/Context;

    move-result-object v14

    const-string v15, "audio"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    .line 2717
    .local v2, audioManager:Landroid/media/AudioManager;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    #getter for: Lcom/android/internal/telephony/CallManager;->mCurrentAudioMode:I
    invoke-static {v14}, Lcom/android/internal/telephony/CallManager;->access$700(Lcom/android/internal/telephony/CallManager;)I

    move-result v14

    invoke-virtual {v2, v14}, Landroid/media/AudioManager;->setMode(I)V

    .line 2718
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    const/4 v15, -0x1

    #setter for: Lcom/android/internal/telephony/CallManager;->mCurrentAudioMode:I
    invoke-static {v14, v15}, Lcom/android/internal/telephony/CallManager;->access$702(Lcom/android/internal/telephony/CallManager;I)I

    goto/16 :goto_0

    .line 2726
    .end local v2           #audioManager:Landroid/media/AudioManager;
    .end local v9           #index:I
    :sswitch_14
    const-string v14, "CallManager"

    const-string v15, " handleMessage (EVENT_SERVICE_STATE_CHANGED)"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2727
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    add-int/lit8 v14, v14, -0x76

    div-int/lit8 v9, v14, 0x64

    .line 2728
    .restart local v9       #index:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v14, v14, Lcom/android/internal/telephony/CallManager;->mServiceStateChangedRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v15, v14, v9

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    invoke-virtual {v15, v14}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2729
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v15, v14, Lcom/android/internal/telephony/CallManager;->mServiceStateChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    invoke-virtual {v15, v14}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2735
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    #calls: Lcom/android/internal/telephony/CallManager;->clearEspeechInfo()Z
    invoke-static {v14}, Lcom/android/internal/telephony/CallManager;->access$100(Lcom/android/internal/telephony/CallManager;)Z

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_0

    .line 2736
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    const/4 v15, 0x0

    #calls: Lcom/android/internal/telephony/CallManager;->setAudioMode(I)V
    invoke-static {v14, v15}, Lcom/android/internal/telephony/CallManager;->access$300(Lcom/android/internal/telephony/CallManager;I)V

    goto/16 :goto_0

    .line 2745
    .end local v9           #index:I
    :sswitch_15
    const-string v14, "CallManager"

    const-string v15, " handleMessage (EVENT_POST_DIAL_CHARACTER)"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2747
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    add-int/lit8 v14, v14, -0x77

    div-int/lit8 v9, v14, 0x64

    .line 2748
    .restart local v9       #index:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v14, v14, Lcom/android/internal/telephony/CallManager;->mPostDialCharacterRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v14, v14, v9

    invoke-virtual {v14}, Landroid/os/RegistrantList;->size()I

    move-result v14

    if-ge v8, v14, :cond_e

    .line 2750
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v14, v14, Lcom/android/internal/telephony/CallManager;->mPostDialCharacterRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v14, v14, v9

    invoke-virtual {v14, v8}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/Registrant;

    invoke-virtual {v14}, Landroid/os/Registrant;->messageForRegistrant()Landroid/os/Message;

    move-result-object v13

    .line 2751
    .local v13, notifyMsg:Landroid/os/Message;
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v14, v13, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2752
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    iput v14, v13, Landroid/os/Message;->arg1:I

    .line 2753
    invoke-virtual {v13}, Landroid/os/Message;->sendToTarget()V

    .line 2748
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 2755
    .end local v13           #notifyMsg:Landroid/os/Message;
    :cond_e
    const/4 v8, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v14, v14, Lcom/android/internal/telephony/CallManager;->mPostDialCharacterRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v14}, Landroid/os/RegistrantList;->size()I

    move-result v14

    if-ge v8, v14, :cond_0

    .line 2757
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v14, v14, Lcom/android/internal/telephony/CallManager;->mPostDialCharacterRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v14, v8}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/Registrant;

    invoke-virtual {v14}, Landroid/os/Registrant;->messageForRegistrant()Landroid/os/Message;

    move-result-object v13

    .line 2758
    .restart local v13       #notifyMsg:Landroid/os/Message;
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v14, v13, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2759
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    iput v14, v13, Landroid/os/Message;->arg1:I

    .line 2760
    invoke-virtual {v13}, Landroid/os/Message;->sendToTarget()V

    .line 2755
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 2768
    .end local v8           #i:I
    .end local v9           #index:I
    .end local v13           #notifyMsg:Landroid/os/Message;
    :sswitch_16
    const-string v14, "CallManager"

    const-string v15, " handleMessage (EVENT_SPEECH_INFO)"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2769
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v0, p1

    #calls: Lcom/android/internal/telephony/CallManager;->handleSpeechInfo(Landroid/os/Message;)Z
    invoke-static {v14, v0}, Lcom/android/internal/telephony/CallManager;->access$900(Lcom/android/internal/telephony/CallManager;Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 2776
    :sswitch_17
    const-string v14, "CallManager"

    const-string v15, " handleMessage (EVENT_VT_RING_INFO)"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2777
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    add-int/lit8 v14, v14, -0x7a

    div-int/lit8 v9, v14, 0x64

    .line 2778
    .restart local v9       #index:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v14, v14, Lcom/android/internal/telephony/CallManager;->mVtRingInfoRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v15, v14, v9

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    invoke-virtual {v15, v14}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2779
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v15, v14, Lcom/android/internal/telephony/CallManager;->mVtRingInfoRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    invoke-virtual {v15, v14}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2785
    .end local v9           #index:I
    :sswitch_18
    const-string v14, "CallManager"

    const-string v15, " handleMessage (EVENT_VT_STATUS_INFO)"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2788
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    #calls: Lcom/android/internal/telephony/CallManager;->setVTSpeechCall(Landroid/os/AsyncResult;)V
    invoke-static {v15, v14}, Lcom/android/internal/telephony/CallManager;->access$1000(Lcom/android/internal/telephony/CallManager;Landroid/os/AsyncResult;)V

    .line 2789
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    add-int/lit8 v14, v14, -0x79

    div-int/lit8 v9, v14, 0x64

    .line 2790
    .restart local v9       #index:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v14, v14, Lcom/android/internal/telephony/CallManager;->mVtStatusInfoRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v15, v14, v9

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    invoke-virtual {v15, v14}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2791
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v15, v14, Lcom/android/internal/telephony/CallManager;->mVtStatusInfoRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    invoke-virtual {v15, v14}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2797
    .end local v9           #index:I
    :sswitch_19
    const-string v14, "CallManager"

    const-string v15, " handleMessage (EVENT_CRSS_SUPP_SERVICE_NOTIFICATION)"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2798
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    add-int/lit8 v14, v14, -0x7b

    div-int/lit8 v9, v14, 0x64

    .line 2799
    .restart local v9       #index:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v14, v14, Lcom/android/internal/telephony/CallManager;->mCrssSuppServiceNotificationRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v15, v14, v9

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    invoke-virtual {v15, v14}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2800
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v15, v14, Lcom/android/internal/telephony/CallManager;->mCrssSuppServiceNotificationRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    invoke-virtual {v15, v14}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2806
    .end local v9           #index:I
    :sswitch_1a
    const-string v14, "CallManager"

    const-string v15, " handleMessage (EVENT_SUPP_SERVICE_NOTIFICATION)"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2807
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    add-int/lit8 v14, v14, -0x7c

    div-int/lit8 v9, v14, 0x64

    .line 2808
    .restart local v9       #index:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v14, v14, Lcom/android/internal/telephony/CallManager;->mSuppServiceNotificationRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v15, v14, v9

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    invoke-virtual {v15, v14}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2809
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v15, v14, Lcom/android/internal/telephony/CallManager;->mSuppServiceNotificationRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    invoke-virtual {v15, v14}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2815
    .end local v9           #index:I
    :sswitch_1b
    const-string v14, "CallManager"

    const-string v15, " handleMessage (EVENT_VT_REPLACE_DISCONNECT)"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2816
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    add-int/lit8 v14, v14, -0x7d

    div-int/lit8 v9, v14, 0x64

    .line 2817
    .restart local v9       #index:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v14, v14, Lcom/android/internal/telephony/CallManager;->mVtReplaceDisconnectRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v15, v14, v9

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    invoke-virtual {v15, v14}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2818
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v15, v14, Lcom/android/internal/telephony/CallManager;->mVtReplaceDisconnectRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    invoke-virtual {v15, v14}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2825
    .end local v9           #index:I
    :sswitch_1c
    const-string v14, "CallManager"

    const-string v15, " handleMessage (EVENT_CIPHER_INDICATION)"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2826
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    add-int/lit8 v14, v14, -0x7d

    div-int/lit8 v9, v14, 0x64

    .line 2827
    .restart local v9       #index:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v14, v14, Lcom/android/internal/telephony/CallManager;->mCipherIndicationRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v15, v14, v9

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    invoke-virtual {v15, v14}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2828
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v15, v14, Lcom/android/internal/telephony/CallManager;->mCipherIndicationRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    invoke-virtual {v15, v14}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2457
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_1
        0x66 -> :sswitch_4
        0x67 -> :sswitch_5
        0x68 -> :sswitch_6
        0x69 -> :sswitch_7
        0x6a -> :sswitch_8
        0x6b -> :sswitch_9
        0x6c -> :sswitch_a
        0x6d -> :sswitch_b
        0x6e -> :sswitch_c
        0x6f -> :sswitch_d
        0x70 -> :sswitch_e
        0x71 -> :sswitch_f
        0x72 -> :sswitch_10
        0x73 -> :sswitch_11
        0x74 -> :sswitch_12
        0x75 -> :sswitch_13
        0x76 -> :sswitch_14
        0x77 -> :sswitch_15
        0x78 -> :sswitch_16
        0x79 -> :sswitch_18
        0x7a -> :sswitch_17
        0x7b -> :sswitch_19
        0x7c -> :sswitch_1a
        0x7d -> :sswitch_1b
        0x7e -> :sswitch_2
        0x7f -> :sswitch_3
        0x80 -> :sswitch_1c
        0xc8 -> :sswitch_0
        0xc9 -> :sswitch_1
        0xca -> :sswitch_4
        0xcb -> :sswitch_5
        0xcc -> :sswitch_6
        0xcd -> :sswitch_7
        0xce -> :sswitch_8
        0xcf -> :sswitch_9
        0xd0 -> :sswitch_a
        0xd1 -> :sswitch_b
        0xd2 -> :sswitch_c
        0xd3 -> :sswitch_d
        0xd4 -> :sswitch_e
        0xd5 -> :sswitch_f
        0xd6 -> :sswitch_10
        0xd7 -> :sswitch_11
        0xd8 -> :sswitch_12
        0xd9 -> :sswitch_13
        0xda -> :sswitch_14
        0xdb -> :sswitch_15
        0xdc -> :sswitch_16
        0xdd -> :sswitch_18
        0xde -> :sswitch_17
        0xdf -> :sswitch_19
        0xe0 -> :sswitch_1a
        0xe1 -> :sswitch_1b
        0xe2 -> :sswitch_2
        0xe3 -> :sswitch_3
        0xe4 -> :sswitch_1c
        0x12c -> :sswitch_0
        0x12d -> :sswitch_1
        0x12e -> :sswitch_4
        0x12f -> :sswitch_5
        0x130 -> :sswitch_6
        0x131 -> :sswitch_7
        0x132 -> :sswitch_8
        0x133 -> :sswitch_9
        0x134 -> :sswitch_a
        0x135 -> :sswitch_b
        0x136 -> :sswitch_c
        0x137 -> :sswitch_d
        0x138 -> :sswitch_e
        0x139 -> :sswitch_f
        0x13a -> :sswitch_10
        0x13b -> :sswitch_11
        0x13c -> :sswitch_12
        0x13d -> :sswitch_13
        0x13e -> :sswitch_14
        0x13f -> :sswitch_15
        0x140 -> :sswitch_16
        0x141 -> :sswitch_18
        0x142 -> :sswitch_17
        0x143 -> :sswitch_19
        0x144 -> :sswitch_1a
        0x145 -> :sswitch_1b
        0x146 -> :sswitch_2
        0x147 -> :sswitch_3
        0x148 -> :sswitch_1c
        0x190 -> :sswitch_0
        0x191 -> :sswitch_1
        0x192 -> :sswitch_4
        0x193 -> :sswitch_5
        0x194 -> :sswitch_6
        0x195 -> :sswitch_7
        0x196 -> :sswitch_8
        0x197 -> :sswitch_9
        0x198 -> :sswitch_a
        0x199 -> :sswitch_b
        0x19a -> :sswitch_c
        0x19b -> :sswitch_d
        0x19c -> :sswitch_e
        0x19d -> :sswitch_f
        0x19e -> :sswitch_10
        0x19f -> :sswitch_11
        0x1a0 -> :sswitch_12
        0x1a1 -> :sswitch_13
        0x1a2 -> :sswitch_14
        0x1a3 -> :sswitch_15
        0x1a4 -> :sswitch_16
        0x1a5 -> :sswitch_18
        0x1a6 -> :sswitch_17
        0x1a7 -> :sswitch_19
        0x1a8 -> :sswitch_1a
        0x1a9 -> :sswitch_1b
        0x1aa -> :sswitch_2
        0x1ab -> :sswitch_3
        0x1ac -> :sswitch_1c
    .end sparse-switch
.end method
