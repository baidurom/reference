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
    .line 2446
    iput-object p1, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 16
    .parameter "msg"

    .prologue
    .line 2453
    const-string v13, "CallManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " handleMessage msgid:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->what:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2455
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    sparse-switch v13, :sswitch_data_0

    .line 2828
    :cond_0
    :goto_0
    return-void

    .line 2460
    :sswitch_0
    const-string v13, "CallManager"

    const-string v14, " handleMessage (EVENT_DISCONNECT)"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2461
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    add-int/lit8 v13, v13, -0x64

    div-int/lit8 v9, v13, 0x64

    .line 2462
    .local v9, index:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v13, v13, Lcom/android/internal/telephony/CallManager;->mDisconnectRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v14, v13, v9

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    invoke-virtual {v14, v13}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2463
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v14, v13, Lcom/android/internal/telephony/CallManager;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    invoke-virtual {v14, v13}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2464
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    #calls: Lcom/android/internal/telephony/CallManager;->handle3GSwitchLock()V
    invoke-static {v13}, Lcom/android/internal/telephony/CallManager;->access$000(Lcom/android/internal/telephony/CallManager;)V

    .line 2468
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    #calls: Lcom/android/internal/telephony/CallManager;->clearEspeechInfo()Z
    invoke-static {v13}, Lcom/android/internal/telephony/CallManager;->access$100(Lcom/android/internal/telephony/CallManager;)Z

    goto :goto_0

    .line 2474
    .end local v9           #index:I
    :sswitch_1
    const-string v13, "CallManager"

    const-string v14, " handleMessage (EVENT_PRECISE_CALL_STATE_CHANGED)"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2475
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    add-int/lit8 v13, v13, -0x65

    div-int/lit8 v9, v13, 0x64

    .line 2476
    .restart local v9       #index:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v13, v13, Lcom/android/internal/telephony/CallManager;->mPreciseCallStateRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v14, v13, v9

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    invoke-virtual {v14, v13}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2477
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v14, v13, Lcom/android/internal/telephony/CallManager;->mPreciseCallStateRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    invoke-virtual {v14, v13}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2478
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    #calls: Lcom/android/internal/telephony/CallManager;->handle3GSwitchLock()V
    invoke-static {v13}, Lcom/android/internal/telephony/CallManager;->access$000(Lcom/android/internal/telephony/CallManager;)V

    .line 2481
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    #calls: Lcom/android/internal/telephony/CallManager;->checkIfExistsFollowingAction()Z
    invoke-static {v13}, Lcom/android/internal/telephony/CallManager;->access$200(Lcom/android/internal/telephony/CallManager;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2482
    :catch_0
    move-exception v13

    goto :goto_0

    .line 2491
    .end local v9           #index:I
    :sswitch_2
    const-string v13, "CallManager"

    const-string v14, " handleMessage (EVENT_VOICE_CALL_INCOMING_INDICATION)"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2493
    const/4 v10, 0x0

    .line 2494
    .local v10, isECCExists:Z
    const/4 v11, 0x0

    .line 2495
    .local v11, isRejectNewRingCall:Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v13}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v13

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v13}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v13

    if-eqz v13, :cond_1

    .line 2497
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v13}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 2498
    .local v1, activeCallAddress:Ljava/lang/String;
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isSpecialEmergencyNumber(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_4

    const/4 v10, 0x1

    .line 2500
    :goto_1
    const-string v13, "CallManager"

    const-string v14, "Reject incoming call since ECC call exists."

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2503
    .end local v1           #activeCallAddress:Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v13}, Lcom/android/internal/telephony/CallManager;->getRingingCallCount()I

    move-result v13

    if-lez v13, :cond_2

    .line 2504
    const/4 v11, 0x1

    .line 2512
    :cond_2
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    iget-object v7, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 2513
    .local v7, gsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;
    if-nez v10, :cond_3

    if-eqz v11, :cond_5

    .line 2514
    :cond_3
    const/4 v13, 0x0

    invoke-virtual {v7, v13}, Lcom/android/internal/telephony/gsm/GSMPhone;->setIncomingCallIndicationResponse(Z)V

    goto/16 :goto_0

    .line 2498
    .end local v7           #gsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;
    .restart local v1       #activeCallAddress:Ljava/lang/String;
    :cond_4
    const/4 v10, 0x0

    goto :goto_1

    .line 2516
    .end local v1           #activeCallAddress:Ljava/lang/String;
    .restart local v7       #gsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;
    :cond_5
    const/4 v13, 0x1

    invoke-virtual {v7, v13}, Lcom/android/internal/telephony/gsm/GSMPhone;->setIncomingCallIndicationResponse(Z)V

    goto/16 :goto_0

    .line 2524
    .end local v7           #gsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;
    .end local v10           #isECCExists:Z
    .end local v11           #isRejectNewRingCall:Z
    :sswitch_3
    const-string v13, "CallManager"

    const-string v14, " handleMessage (EVENT_RADIO_OFF_OR_NOT_AVAILABLE)"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2529
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    #calls: Lcom/android/internal/telephony/CallManager;->clearEspeechInfo()Z
    invoke-static {v13}, Lcom/android/internal/telephony/CallManager;->access$100(Lcom/android/internal/telephony/CallManager;)Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_0

    .line 2530
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    const/4 v14, 0x0

    #calls: Lcom/android/internal/telephony/CallManager;->setAudioMode(I)V
    invoke-static {v13, v14}, Lcom/android/internal/telephony/CallManager;->access$300(Lcom/android/internal/telephony/CallManager;I)V

    goto/16 :goto_0

    .line 2538
    :sswitch_4
    const-string v13, "CallManager"

    const-string v14, " handleMessage (EVENT_NEW_RINGING_CONNECTION)"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2542
    const/4 v3, 0x0

    .line 2543
    .local v3, bECCExists:Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v13}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v13

    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v13}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v13

    if-eqz v13, :cond_6

    .line 2545
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v13}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 2546
    .restart local v1       #activeCallAddress:Ljava/lang/String;
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isSpecialEmergencyNumber(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_9

    const/4 v3, 0x1

    .line 2548
    :goto_2
    const-string v13, "CallManager"

    const-string v14, "Reject incoming call since ECC call exists."

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2550
    .end local v1           #activeCallAddress:Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v13}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v13

    if-nez v13, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    #calls: Lcom/android/internal/telephony/CallManager;->hasMoreThanOneRingingCall()Z
    invoke-static {v13}, Lcom/android/internal/telephony/CallManager;->access$400(Lcom/android/internal/telephony/CallManager;)Z

    move-result v13

    if-eqz v13, :cond_a

    :cond_7
    const/4 v4, 0x1

    .line 2552
    .local v4, bMoMtConflict:Z
    :goto_3
    if-nez v3, :cond_8

    if-eqz v4, :cond_b

    .line 2553
    :cond_8
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    iget-object v5, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/telephony/Connection;

    .line 2555
    .local v5, c:Lcom/android/internal/telephony/Connection;
    :try_start_1
    const-string v13, "CallManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "silently drop incoming call: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2556
    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 2557
    :catch_1
    move-exception v6

    .line 2558
    .local v6, e:Lcom/android/internal/telephony/CallStateException;
    const-string v13, "CallManager"

    const-string v14, "new ringing connection"

    invoke-static {v13, v14, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 2546
    .end local v4           #bMoMtConflict:Z
    .end local v5           #c:Lcom/android/internal/telephony/Connection;
    .end local v6           #e:Lcom/android/internal/telephony/CallStateException;
    .restart local v1       #activeCallAddress:Ljava/lang/String;
    :cond_9
    const/4 v3, 0x0

    goto :goto_2

    .line 2550
    .end local v1           #activeCallAddress:Ljava/lang/String;
    :cond_a
    const/4 v4, 0x0

    goto :goto_3

    .line 2561
    .restart local v4       #bMoMtConflict:Z
    :cond_b
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    add-int/lit8 v13, v13, -0x66

    div-int/lit8 v9, v13, 0x64

    .line 2562
    .restart local v9       #index:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v13, v13, Lcom/android/internal/telephony/CallManager;->mNewRingingConnectionRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v14, v13, v9

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    invoke-virtual {v14, v13}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2563
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v14, v13, Lcom/android/internal/telephony/CallManager;->mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    invoke-virtual {v14, v13}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2571
    .end local v3           #bECCExists:Z
    .end local v4           #bMoMtConflict:Z
    .end local v9           #index:I
    :sswitch_5
    const-string v13, "CallManager"

    const-string v14, " handleMessage (EVENT_UNKNOWN_CONNECTION)"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2572
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    add-int/lit8 v13, v13, -0x67

    div-int/lit8 v9, v13, 0x64

    .line 2573
    .restart local v9       #index:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v13, v13, Lcom/android/internal/telephony/CallManager;->mUnknownConnectionRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v14, v13, v9

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    invoke-virtual {v14, v13}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2574
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v14, v13, Lcom/android/internal/telephony/CallManager;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    invoke-virtual {v14, v13}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2580
    .end local v9           #index:I
    :sswitch_6
    const-string v13, "CallManager"

    const-string v14, " handleMessage (EVENT_INCOMING_RING)"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2582
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v13}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v13

    if-nez v13, :cond_0

    .line 2583
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    add-int/lit8 v13, v13, -0x68

    div-int/lit8 v9, v13, 0x64

    .line 2584
    .restart local v9       #index:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v13, v13, Lcom/android/internal/telephony/CallManager;->mIncomingRingRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v14, v13, v9

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    invoke-virtual {v14, v13}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2585
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v14, v13, Lcom/android/internal/telephony/CallManager;->mIncomingRingRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    invoke-virtual {v14, v13}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2592
    .end local v9           #index:I
    :sswitch_7
    const-string v13, "CallManager"

    const-string v14, " handleMessage (EVENT_RINGBACK_TONE)"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2593
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    add-int/lit8 v13, v13, -0x69

    div-int/lit8 v9, v13, 0x64

    .line 2594
    .restart local v9       #index:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v13, v13, Lcom/android/internal/telephony/CallManager;->mRingbackToneRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v14, v13, v9

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    invoke-virtual {v14, v13}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2595
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v14, v13, Lcom/android/internal/telephony/CallManager;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    invoke-virtual {v14, v13}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2601
    .end local v9           #index:I
    :sswitch_8
    const-string v13, "CallManager"

    const-string v14, " handleMessage (EVENT_IN_CALL_VOICE_PRIVACY_ON)"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2602
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    add-int/lit8 v13, v13, -0x6a

    div-int/lit8 v9, v13, 0x64

    .line 2603
    .restart local v9       #index:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v13, v13, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOnRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v14, v13, v9

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    invoke-virtual {v14, v13}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2604
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v14, v13, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    invoke-virtual {v14, v13}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2610
    .end local v9           #index:I
    :sswitch_9
    const-string v13, "CallManager"

    const-string v14, " handleMessage (EVENT_IN_CALL_VOICE_PRIVACY_OFF)"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2611
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    add-int/lit8 v13, v13, -0x6b

    div-int/lit8 v9, v13, 0x64

    .line 2612
    .restart local v9       #index:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v13, v13, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOffRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v14, v13, v9

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    invoke-virtual {v14, v13}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2613
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v14, v13, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    invoke-virtual {v14, v13}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2619
    .end local v9           #index:I
    :sswitch_a
    const-string v13, "CallManager"

    const-string v14, " handleMessage (EVENT_CALL_WAITING)"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2620
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    add-int/lit8 v13, v13, -0x6c

    div-int/lit8 v9, v13, 0x64

    .line 2621
    .restart local v9       #index:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v13, v13, Lcom/android/internal/telephony/CallManager;->mCallWaitingRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v14, v13, v9

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    invoke-virtual {v14, v13}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2622
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v14, v13, Lcom/android/internal/telephony/CallManager;->mCallWaitingRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    invoke-virtual {v14, v13}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2628
    .end local v9           #index:I
    :sswitch_b
    const-string v13, "CallManager"

    const-string v14, " handleMessage (EVENT_DISPLAY_INFO)"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2629
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    add-int/lit8 v13, v13, -0x6d

    div-int/lit8 v9, v13, 0x64

    .line 2630
    .restart local v9       #index:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v13, v13, Lcom/android/internal/telephony/CallManager;->mDisplayInfoRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v14, v13, v9

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    invoke-virtual {v14, v13}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2631
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v14, v13, Lcom/android/internal/telephony/CallManager;->mDisplayInfoRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    invoke-virtual {v14, v13}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2637
    .end local v9           #index:I
    :sswitch_c
    const-string v13, "CallManager"

    const-string v14, " handleMessage (EVENT_SIGNAL_INFO)"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2638
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    add-int/lit8 v13, v13, -0x6e

    div-int/lit8 v9, v13, 0x64

    .line 2639
    .restart local v9       #index:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v13, v13, Lcom/android/internal/telephony/CallManager;->mSignalInfoRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v14, v13, v9

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    invoke-virtual {v14, v13}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2640
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v14, v13, Lcom/android/internal/telephony/CallManager;->mSignalInfoRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    invoke-virtual {v14, v13}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2646
    .end local v9           #index:I
    :sswitch_d
    const-string v13, "CallManager"

    const-string v14, " handleMessage (EVENT_CDMA_OTA_STATUS_CHANGE)"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2647
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    add-int/lit8 v13, v13, -0x6f

    div-int/lit8 v9, v13, 0x64

    .line 2648
    .restart local v9       #index:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v13, v13, Lcom/android/internal/telephony/CallManager;->mCdmaOtaStatusChangeRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v14, v13, v9

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    invoke-virtual {v14, v13}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2649
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v14, v13, Lcom/android/internal/telephony/CallManager;->mCdmaOtaStatusChangeRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    invoke-virtual {v14, v13}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2655
    .end local v9           #index:I
    :sswitch_e
    const-string v13, "CallManager"

    const-string v14, " handleMessage (EVENT_RESEND_INCALL_MUTE)"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2656
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    add-int/lit8 v13, v13, -0x70

    div-int/lit8 v9, v13, 0x64

    .line 2657
    .restart local v9       #index:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v13, v13, Lcom/android/internal/telephony/CallManager;->mResendIncallMuteRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v14, v13, v9

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    invoke-virtual {v14, v13}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2658
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v14, v13, Lcom/android/internal/telephony/CallManager;->mResendIncallMuteRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    invoke-virtual {v14, v13}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2664
    .end local v9           #index:I
    :sswitch_f
    const-string v13, "CallManager"

    const-string v14, " handleMessage (EVENT_MMI_INITIATE)"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2665
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    add-int/lit8 v13, v13, -0x71

    div-int/lit8 v9, v13, 0x64

    .line 2666
    .restart local v9       #index:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v13, v13, Lcom/android/internal/telephony/CallManager;->mMmiInitiateRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v14, v13, v9

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    invoke-virtual {v14, v13}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2667
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v14, v13, Lcom/android/internal/telephony/CallManager;->mMmiInitiateRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    invoke-virtual {v14, v13}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2673
    .end local v9           #index:I
    :sswitch_10
    const-string v13, "CallManager"

    const-string v14, " handleMessage (EVENT_MMI_COMPLETE)"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2674
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    add-int/lit8 v13, v13, -0x72

    div-int/lit8 v9, v13, 0x64

    .line 2675
    .restart local v9       #index:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v13, v13, Lcom/android/internal/telephony/CallManager;->mMmiCompleteRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v14, v13, v9

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    invoke-virtual {v14, v13}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2676
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v14, v13, Lcom/android/internal/telephony/CallManager;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    invoke-virtual {v14, v13}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2682
    .end local v9           #index:I
    :sswitch_11
    const-string v13, "CallManager"

    const-string v14, " handleMessage (EVENT_ECM_TIMER_RESET)"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2683
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    add-int/lit8 v13, v13, -0x73

    div-int/lit8 v9, v13, 0x64

    .line 2684
    .restart local v9       #index:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v13, v13, Lcom/android/internal/telephony/CallManager;->mEcmTimerResetRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v14, v13, v9

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    invoke-virtual {v14, v13}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2685
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v14, v13, Lcom/android/internal/telephony/CallManager;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    invoke-virtual {v14, v13}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2691
    .end local v9           #index:I
    :sswitch_12
    const-string v13, "CallManager"

    const-string v14, " handleMessage (EVENT_SUBSCRIPTION_INFO_READY)"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2692
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    add-int/lit8 v13, v13, -0x74

    div-int/lit8 v9, v13, 0x64

    .line 2693
    .restart local v9       #index:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v13, v13, Lcom/android/internal/telephony/CallManager;->mSubscriptionInfoReadyRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v14, v13, v9

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    invoke-virtual {v14, v13}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2694
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v14, v13, Lcom/android/internal/telephony/CallManager;->mSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    invoke-virtual {v14, v13}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2700
    .end local v9           #index:I
    :sswitch_13
    const-string v13, "CallManager"

    const-string v14, " handleMessage (EVENT_SUPP_SERVICE_FAILED)"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2701
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    add-int/lit8 v13, v13, -0x75

    div-int/lit8 v9, v13, 0x64

    .line 2702
    .restart local v9       #index:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v13, v13, Lcom/android/internal/telephony/CallManager;->mSuppServiceFailedRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v14, v13, v9

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    invoke-virtual {v14, v13}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2703
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v14, v13, Lcom/android/internal/telephony/CallManager;->mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    invoke-virtual {v14, v13}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2706
    const-string v13, "CallManager"

    const-string v14, "Reset WaitingForHoldRequest variables since hold request is failed."

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2707
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    sget-object v14, Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;->NONE:Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;

    #setter for: Lcom/android/internal/telephony/CallManager;->mWaitingReasonForHold:Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;
    invoke-static {v13, v14}, Lcom/android/internal/telephony/CallManager;->access$502(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;)Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;

    .line 2708
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    const/4 v14, 0x0

    #setter for: Lcom/android/internal/telephony/CallManager;->bWaitingForHoldRequest:Z
    invoke-static {v13, v14}, Lcom/android/internal/telephony/CallManager;->access$602(Lcom/android/internal/telephony/CallManager;Z)Z

    .line 2711
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    #getter for: Lcom/android/internal/telephony/CallManager;->mCurrentAudioMode:I
    invoke-static {v13}, Lcom/android/internal/telephony/CallManager;->access$700(Lcom/android/internal/telephony/CallManager;)I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_0

    .line 2712
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    #calls: Lcom/android/internal/telephony/CallManager;->getContext()Landroid/content/Context;
    invoke-static {v13}, Lcom/android/internal/telephony/CallManager;->access$800(Lcom/android/internal/telephony/CallManager;)Landroid/content/Context;

    move-result-object v13

    const-string v14, "audio"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    .line 2713
    .local v2, audioManager:Landroid/media/AudioManager;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    #getter for: Lcom/android/internal/telephony/CallManager;->mCurrentAudioMode:I
    invoke-static {v13}, Lcom/android/internal/telephony/CallManager;->access$700(Lcom/android/internal/telephony/CallManager;)I

    move-result v13

    invoke-virtual {v2, v13}, Landroid/media/AudioManager;->setMode(I)V

    .line 2714
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    const/4 v14, -0x1

    #setter for: Lcom/android/internal/telephony/CallManager;->mCurrentAudioMode:I
    invoke-static {v13, v14}, Lcom/android/internal/telephony/CallManager;->access$702(Lcom/android/internal/telephony/CallManager;I)I

    goto/16 :goto_0

    .line 2722
    .end local v2           #audioManager:Landroid/media/AudioManager;
    .end local v9           #index:I
    :sswitch_14
    const-string v13, "CallManager"

    const-string v14, " handleMessage (EVENT_SERVICE_STATE_CHANGED)"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2723
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    add-int/lit8 v13, v13, -0x76

    div-int/lit8 v9, v13, 0x64

    .line 2724
    .restart local v9       #index:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v13, v13, Lcom/android/internal/telephony/CallManager;->mServiceStateChangedRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v14, v13, v9

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    invoke-virtual {v14, v13}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2725
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v14, v13, Lcom/android/internal/telephony/CallManager;->mServiceStateChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    invoke-virtual {v14, v13}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2731
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    #calls: Lcom/android/internal/telephony/CallManager;->clearEspeechInfo()Z
    invoke-static {v13}, Lcom/android/internal/telephony/CallManager;->access$100(Lcom/android/internal/telephony/CallManager;)Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_0

    .line 2732
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    const/4 v14, 0x0

    #calls: Lcom/android/internal/telephony/CallManager;->setAudioMode(I)V
    invoke-static {v13, v14}, Lcom/android/internal/telephony/CallManager;->access$300(Lcom/android/internal/telephony/CallManager;I)V

    goto/16 :goto_0

    .line 2741
    .end local v9           #index:I
    :sswitch_15
    const-string v13, "CallManager"

    const-string v14, " handleMessage (EVENT_POST_DIAL_CHARACTER)"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2743
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    add-int/lit8 v13, v13, -0x77

    div-int/lit8 v9, v13, 0x64

    .line 2744
    .restart local v9       #index:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v13, v13, Lcom/android/internal/telephony/CallManager;->mPostDialCharacterRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v13, v13, v9

    invoke-virtual {v13}, Landroid/os/RegistrantList;->size()I

    move-result v13

    if-ge v8, v13, :cond_c

    .line 2746
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v13, v13, Lcom/android/internal/telephony/CallManager;->mPostDialCharacterRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v13, v13, v9

    invoke-virtual {v13, v8}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/Registrant;

    invoke-virtual {v13}, Landroid/os/Registrant;->messageForRegistrant()Landroid/os/Message;

    move-result-object v12

    .line 2747
    .local v12, notifyMsg:Landroid/os/Message;
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v13, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2748
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    iput v13, v12, Landroid/os/Message;->arg1:I

    .line 2749
    invoke-virtual {v12}, Landroid/os/Message;->sendToTarget()V

    .line 2744
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 2751
    .end local v12           #notifyMsg:Landroid/os/Message;
    :cond_c
    const/4 v8, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v13, v13, Lcom/android/internal/telephony/CallManager;->mPostDialCharacterRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v13}, Landroid/os/RegistrantList;->size()I

    move-result v13

    if-ge v8, v13, :cond_0

    .line 2753
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v13, v13, Lcom/android/internal/telephony/CallManager;->mPostDialCharacterRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v13, v8}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/Registrant;

    invoke-virtual {v13}, Landroid/os/Registrant;->messageForRegistrant()Landroid/os/Message;

    move-result-object v12

    .line 2754
    .restart local v12       #notifyMsg:Landroid/os/Message;
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v13, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2755
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    iput v13, v12, Landroid/os/Message;->arg1:I

    .line 2756
    invoke-virtual {v12}, Landroid/os/Message;->sendToTarget()V

    .line 2751
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 2764
    .end local v8           #i:I
    .end local v9           #index:I
    .end local v12           #notifyMsg:Landroid/os/Message;
    :sswitch_16
    const-string v13, "CallManager"

    const-string v14, " handleMessage (EVENT_SPEECH_INFO)"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2765
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v0, p1

    #calls: Lcom/android/internal/telephony/CallManager;->handleSpeechInfo(Landroid/os/Message;)Z
    invoke-static {v13, v0}, Lcom/android/internal/telephony/CallManager;->access$900(Lcom/android/internal/telephony/CallManager;Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 2772
    :sswitch_17
    const-string v13, "CallManager"

    const-string v14, " handleMessage (EVENT_VT_RING_INFO)"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2773
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    add-int/lit8 v13, v13, -0x7a

    div-int/lit8 v9, v13, 0x64

    .line 2774
    .restart local v9       #index:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v13, v13, Lcom/android/internal/telephony/CallManager;->mVtRingInfoRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v14, v13, v9

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    invoke-virtual {v14, v13}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2775
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v14, v13, Lcom/android/internal/telephony/CallManager;->mVtRingInfoRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    invoke-virtual {v14, v13}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2781
    .end local v9           #index:I
    :sswitch_18
    const-string v13, "CallManager"

    const-string v14, " handleMessage (EVENT_VT_STATUS_INFO)"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2784
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    #calls: Lcom/android/internal/telephony/CallManager;->setVTSpeechCall(Landroid/os/AsyncResult;)V
    invoke-static {v14, v13}, Lcom/android/internal/telephony/CallManager;->access$1000(Lcom/android/internal/telephony/CallManager;Landroid/os/AsyncResult;)V

    .line 2785
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    add-int/lit8 v13, v13, -0x79

    div-int/lit8 v9, v13, 0x64

    .line 2786
    .restart local v9       #index:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v13, v13, Lcom/android/internal/telephony/CallManager;->mVtStatusInfoRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v14, v13, v9

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    invoke-virtual {v14, v13}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2787
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v14, v13, Lcom/android/internal/telephony/CallManager;->mVtStatusInfoRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    invoke-virtual {v14, v13}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2793
    .end local v9           #index:I
    :sswitch_19
    const-string v13, "CallManager"

    const-string v14, " handleMessage (EVENT_CRSS_SUPP_SERVICE_NOTIFICATION)"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2794
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    add-int/lit8 v13, v13, -0x7b

    div-int/lit8 v9, v13, 0x64

    .line 2795
    .restart local v9       #index:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v13, v13, Lcom/android/internal/telephony/CallManager;->mCrssSuppServiceNotificationRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v14, v13, v9

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    invoke-virtual {v14, v13}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2796
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v14, v13, Lcom/android/internal/telephony/CallManager;->mCrssSuppServiceNotificationRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    invoke-virtual {v14, v13}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2802
    .end local v9           #index:I
    :sswitch_1a
    const-string v13, "CallManager"

    const-string v14, " handleMessage (EVENT_SUPP_SERVICE_NOTIFICATION)"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2803
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    add-int/lit8 v13, v13, -0x7c

    div-int/lit8 v9, v13, 0x64

    .line 2804
    .restart local v9       #index:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v13, v13, Lcom/android/internal/telephony/CallManager;->mSuppServiceNotificationRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v14, v13, v9

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    invoke-virtual {v14, v13}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2805
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v14, v13, Lcom/android/internal/telephony/CallManager;->mSuppServiceNotificationRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    invoke-virtual {v14, v13}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2811
    .end local v9           #index:I
    :sswitch_1b
    const-string v13, "CallManager"

    const-string v14, " handleMessage (EVENT_VT_REPLACE_DISCONNECT)"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2812
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    add-int/lit8 v13, v13, -0x7d

    div-int/lit8 v9, v13, 0x64

    .line 2813
    .restart local v9       #index:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v13, v13, Lcom/android/internal/telephony/CallManager;->mVtReplaceDisconnectRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v14, v13, v9

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    invoke-virtual {v14, v13}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2814
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v14, v13, Lcom/android/internal/telephony/CallManager;->mVtReplaceDisconnectRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    invoke-virtual {v14, v13}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2821
    .end local v9           #index:I
    :sswitch_1c
    const-string v13, "CallManager"

    const-string v14, " handleMessage (EVENT_CIPHER_INDICATION)"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2822
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    add-int/lit8 v13, v13, -0x7d

    div-int/lit8 v9, v13, 0x64

    .line 2823
    .restart local v9       #index:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v13, v13, Lcom/android/internal/telephony/CallManager;->mCipherIndicationRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v14, v13, v9

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    invoke-virtual {v14, v13}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2824
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v14, v13, Lcom/android/internal/telephony/CallManager;->mCipherIndicationRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    invoke-virtual {v14, v13}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2455
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
