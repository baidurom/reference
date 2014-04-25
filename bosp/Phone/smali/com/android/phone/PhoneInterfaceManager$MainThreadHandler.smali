.class final Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;
.super Landroid/os/Handler;
.source "PhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MainThreadHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneInterfaceManager;


# direct methods
.method private constructor <init>(Lcom/android/phone/PhoneInterfaceManager;)V
    .locals 0
    .parameter

    .prologue
    .line 255
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/PhoneInterfaceManager;Lcom/android/phone/PhoneInterfaceManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 255
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;-><init>(Lcom/android/phone/PhoneInterfaceManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 39
    .parameter "msg"

    .prologue
    .line 262
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 1004
    :pswitch_0
    const-string v2, "PhoneInterfaceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MainThreadHandler: unexpected message code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    :cond_0
    :goto_0
    return-void

    .line 266
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 267
    .local v36, request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Lcom/android/phone/PhoneInterfaceManager$PinMmiGemini;

    .line 268
    .local v35, pinmmi:Lcom/android/phone/PhoneInterfaceManager$PinMmiGemini;
    move-object/from16 v0, v35

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$PinMmiGemini;->simId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 269
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    move-object/from16 v0, v35

    iget-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$PinMmiGemini;->dialString:Ljava/lang/String;

    move-object/from16 v0, v35

    iget-object v4, v0, Lcom/android/phone/PhoneInterfaceManager$PinMmiGemini;->simId:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->handlePinMmiGemini(Ljava/lang/String;I)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v36

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 285
    :goto_1
    monitor-enter v36

    .line 286
    :try_start_0
    invoke-virtual/range {v36 .. v36}, Ljava/lang/Object;->notifyAll()V

    .line 287
    monitor-exit v36

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v36
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 274
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    move-object/from16 v0, v35

    iget-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$PinMmiGemini;->dialString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->handlePinMmi(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v36

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_1

    .line 291
    .end local v35           #pinmmi:Lcom/android/phone/PhoneInterfaceManager$PinMmiGemini;
    .end local v36           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 292
    .restart local v36       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    const/4 v2, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 296
    .local v9, onCompleted:Landroid/os/Message;
    move-object/from16 v0, v36

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    if-nez v2, :cond_2

    .line 297
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2, v9}, Lcom/android/internal/telephony/Phone;->getNeighboringCids(Landroid/os/Message;)V

    goto :goto_0

    .line 299
    :cond_2
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Ljava/lang/Integer;

    .line 300
    .local v38, simId:Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v9, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getNeighboringCidsGemini(Landroid/os/Message;I)V

    goto/16 :goto_0

    .line 306
    .end local v9           #onCompleted:Landroid/os/Message;
    .end local v36           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    .end local v38           #simId:Ljava/lang/Integer;
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/AsyncResult;

    .line 307
    .local v19, ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 308
    .restart local v36       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_3

    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_3

    .line 309
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, v36

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 315
    :goto_2
    monitor-enter v36

    .line 316
    :try_start_1
    invoke-virtual/range {v36 .. v36}, Ljava/lang/Object;->notifyAll()V

    .line 317
    monitor-exit v36

    goto/16 :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v36
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2

    .line 312
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v36

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_2

    .line 324
    .end local v19           #ar:Landroid/os/AsyncResult;
    .end local v36           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_4
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->isVTRinging()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 328
    :try_start_2
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getInCallScreenInstance()Lcom/android/phone/InCallScreen;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->getInCallTouchUi()Lcom/android/phone/InCallTouchUi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/InCallTouchUi;->touchAnswerCall()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 329
    :catch_0
    move-exception v2

    goto/16 :goto_0

    .line 334
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    #calls: Lcom/android/phone/PhoneInterfaceManager;->answerRingingCallInternal()V
    invoke-static {v2}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;)V

    goto/16 :goto_0

    .line 345
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    #calls: Lcom/android/phone/PhoneInterfaceManager;->silenceRingerInternal()V
    invoke-static {v2}, Lcom/android/phone/PhoneInterfaceManager;->access$100(Lcom/android/phone/PhoneInterfaceManager;)V

    goto/16 :goto_0

    .line 353
    :pswitch_6
    :try_start_3
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getInCallScreenInstance()Lcom/android/phone/InCallScreen;

    move-result-object v28

    .line 354
    .local v28, ics:Lcom/android/phone/InCallScreen;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->isVTActive()Z

    move-result v2

    if-nez v2, :cond_5

    .line 355
    invoke-virtual/range {v28 .. v28}, Lcom/android/phone/InCallScreen;->getVTInCallScreenInstance()Lcom/android/phone/VTInCallScreenProxy;

    move-result-object v2

    sget-object v3, Lcom/android/phone/VTCallUtils$VTScreenMode;->VT_SCREEN_CLOSE:Lcom/android/phone/VTCallUtils$VTScreenMode;

    invoke-virtual {v2, v3}, Lcom/android/phone/VTInCallScreenProxy;->setVTScreenMode(Lcom/android/phone/VTCallUtils$VTScreenMode;)V

    .line 359
    :goto_3
    invoke-virtual/range {v28 .. v28}, Lcom/android/phone/InCallScreen;->getVTInCallScreenInstance()Lcom/android/phone/VTInCallScreenProxy;

    move-result-object v2

    invoke-virtual/range {v28 .. v28}, Lcom/android/phone/InCallScreen;->getVTInCallScreenInstance()Lcom/android/phone/VTInCallScreenProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/VTInCallScreenProxy;->getVTScreenMode()Lcom/android/phone/VTCallUtils$VTScreenMode;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/phone/VTInCallScreenProxy;->updateVTScreen(Lcom/android/phone/VTCallUtils$VTScreenMode;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 366
    .end local v28           #ics:Lcom/android/phone/InCallScreen;
    :goto_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 367
    .restart local v36       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    const/16 v26, 0x0

    .line 368
    .local v26, hungUp:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v33

    .line 369
    .local v33, phoneType:I
    const/4 v2, 0x2

    move/from16 v0, v33

    if-ne v0, v2, :cond_6

    .line 372
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->hangupRingingAndActive(Lcom/android/internal/telephony/Phone;)Z

    move-result v26

    .line 380
    :goto_5
    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v36

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 382
    monitor-enter v36

    .line 383
    :try_start_4
    invoke-virtual/range {v36 .. v36}, Ljava/lang/Object;->notifyAll()V

    .line 384
    monitor-exit v36

    goto/16 :goto_0

    :catchall_2
    move-exception v2

    monitor-exit v36
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v2

    .line 357
    .end local v26           #hungUp:Z
    .end local v33           #phoneType:I
    .end local v36           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    .restart local v28       #ics:Lcom/android/phone/InCallScreen;
    :cond_5
    :try_start_5
    invoke-virtual/range {v28 .. v28}, Lcom/android/phone/InCallScreen;->getVTInCallScreenInstance()Lcom/android/phone/VTInCallScreenProxy;

    move-result-object v2

    sget-object v3, Lcom/android/phone/VTCallUtils$VTScreenMode;->VT_SCREEN_OPEN:Lcom/android/phone/VTCallUtils$VTScreenMode;

    invoke-virtual {v2, v3}, Lcom/android/phone/VTInCallScreenProxy;->setVTScreenMode(Lcom/android/phone/VTCallUtils$VTScreenMode;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    .line 360
    .end local v28           #ics:Lcom/android/phone/InCallScreen;
    :catch_1
    move-exception v2

    goto :goto_4

    .line 373
    .restart local v26       #hungUp:Z
    .restart local v33       #phoneType:I
    .restart local v36       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :cond_6
    const/4 v2, 0x1

    move/from16 v0, v33

    if-ne v0, v2, :cond_7

    .line 375
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    move-result v26

    goto :goto_5

    .line 377
    :cond_7
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected phone type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 394
    .end local v26           #hungUp:Z
    .end local v33           #phoneType:I
    .end local v36           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_7
    :try_start_6
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getInCallScreenInstance()Lcom/android/phone/InCallScreen;

    move-result-object v29

    .line 395
    .local v29, ics2:Lcom/android/phone/InCallScreen;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->isVTActive()Z

    move-result v2

    if-nez v2, :cond_8

    .line 396
    invoke-virtual/range {v29 .. v29}, Lcom/android/phone/InCallScreen;->getVTInCallScreenInstance()Lcom/android/phone/VTInCallScreenProxy;

    move-result-object v2

    sget-object v3, Lcom/android/phone/VTCallUtils$VTScreenMode;->VT_SCREEN_CLOSE:Lcom/android/phone/VTCallUtils$VTScreenMode;

    invoke-virtual {v2, v3}, Lcom/android/phone/VTInCallScreenProxy;->setVTScreenMode(Lcom/android/phone/VTCallUtils$VTScreenMode;)V

    .line 400
    :goto_6
    invoke-virtual/range {v29 .. v29}, Lcom/android/phone/InCallScreen;->getVTInCallScreenInstance()Lcom/android/phone/VTInCallScreenProxy;

    move-result-object v2

    invoke-virtual/range {v29 .. v29}, Lcom/android/phone/InCallScreen;->getVTInCallScreenInstance()Lcom/android/phone/VTInCallScreenProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/VTInCallScreenProxy;->getVTScreenMode()Lcom/android/phone/VTCallUtils$VTScreenMode;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/phone/VTInCallScreenProxy;->updateVTScreen(Lcom/android/phone/VTCallUtils$VTScreenMode;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 405
    .end local v29           #ics2:Lcom/android/phone/InCallScreen;
    :goto_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 406
    .restart local v36       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    const/16 v27, 0x0

    .line 407
    .local v27, hungUpGemini:Z
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v38, v0

    .line 409
    .local v38, simId:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CMD_END_CALL_GEMINI: msg.arg1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v38

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$200(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 411
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    move/from16 v0, v38

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhoneTypeGemini(I)I

    move-result v34

    .line 413
    .local v34, phoneTypeGemini:I
    const/4 v2, 0x2

    move/from16 v0, v34

    if-ne v0, v2, :cond_9

    .line 414
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->hangupRingingAndActive(Lcom/android/internal/telephony/Phone;)Z

    move-result v27

    .line 422
    :goto_8
    invoke-static/range {v27 .. v27}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v36

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 423
    monitor-enter v36

    .line 424
    :try_start_7
    invoke-virtual/range {v36 .. v36}, Ljava/lang/Object;->notifyAll()V

    .line 425
    monitor-exit v36

    goto/16 :goto_0

    :catchall_3
    move-exception v2

    monitor-exit v36
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v2

    .line 398
    .end local v27           #hungUpGemini:Z
    .end local v34           #phoneTypeGemini:I
    .end local v36           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    .end local v38           #simId:I
    .restart local v29       #ics2:Lcom/android/phone/InCallScreen;
    :cond_8
    :try_start_8
    invoke-virtual/range {v29 .. v29}, Lcom/android/phone/InCallScreen;->getVTInCallScreenInstance()Lcom/android/phone/VTInCallScreenProxy;

    move-result-object v2

    sget-object v3, Lcom/android/phone/VTCallUtils$VTScreenMode;->VT_SCREEN_OPEN:Lcom/android/phone/VTCallUtils$VTScreenMode;

    invoke-virtual {v2, v3}, Lcom/android/phone/VTInCallScreenProxy;->setVTScreenMode(Lcom/android/phone/VTCallUtils$VTScreenMode;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_6

    .line 401
    .end local v29           #ics2:Lcom/android/phone/InCallScreen;
    :catch_2
    move-exception v2

    goto :goto_7

    .line 415
    .restart local v27       #hungUpGemini:Z
    .restart local v34       #phoneTypeGemini:I
    .restart local v36       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    .restart local v38       #simId:I
    :cond_9
    const/4 v2, 0x1

    move/from16 v0, v34

    if-ne v0, v2, :cond_a

    .line 416
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    move-result v27

    goto :goto_8

    .line 418
    :cond_a
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected phone type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 435
    .end local v27           #hungUpGemini:Z
    .end local v34           #phoneTypeGemini:I
    .end local v36           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    .end local v38           #simId:I
    :pswitch_8
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->isVTRinging()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 439
    :try_start_9
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getInCallScreenInstance()Lcom/android/phone/InCallScreen;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->getInCallTouchUi()Lcom/android/phone/InCallTouchUi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/InCallTouchUi;->touchAnswerCall()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_0

    .line 440
    :catch_3
    move-exception v2

    goto/16 :goto_0

    .line 445
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    #calls: Lcom/android/phone/PhoneInterfaceManager;->answerRingingCallInternal()V
    invoke-static {v2}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;)V

    goto/16 :goto_0

    .line 457
    :pswitch_9
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 458
    .restart local v36       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    const/16 v2, 0x20

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 460
    .restart local v9       #onCompleted:Landroid/os/Message;
    move-object/from16 v0, v36

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 463
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Lcom/android/phone/PhoneInterfaceManager$ScAddrGemini;

    .line 464
    .local v37, sca:Lcom/android/phone/PhoneInterfaceManager$ScAddrGemini;
    move-object/from16 v0, v37

    iget v0, v0, Lcom/android/phone/PhoneInterfaceManager$ScAddrGemini;->simId:I

    move/from16 v38, v0

    .line 466
    .restart local v38       #simId:I
    const-string v2, "PhoneInterfaceManager"

    const-string v3, "[sca get sc gemini"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    move/from16 v0, v38

    invoke-virtual {v2, v9, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getSmscAddressGemini(Landroid/os/Message;I)V

    goto/16 :goto_0

    .line 476
    .end local v9           #onCompleted:Landroid/os/Message;
    .end local v36           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    .end local v37           #sca:Lcom/android/phone/PhoneInterfaceManager$ScAddrGemini;
    .end local v38           #simId:I
    :pswitch_a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/AsyncResult;

    .line 477
    .restart local v19       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 479
    .restart local v36       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_c

    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_c

    .line 480
    const-string v2, "PhoneInterfaceManager"

    const-string v3, "[sca get result"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, v36

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 487
    :goto_9
    monitor-enter v36

    .line 488
    :try_start_a
    const-string v2, "PhoneInterfaceManager"

    const-string v3, "[sca notify sleep thread"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    invoke-virtual/range {v36 .. v36}, Ljava/lang/Object;->notifyAll()V

    .line 490
    monitor-exit v36

    goto/16 :goto_0

    :catchall_4
    move-exception v2

    monitor-exit v36
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw v2

    .line 483
    :cond_c
    const-string v2, "PhoneInterfaceManager"

    const-string v3, "[sca Fail to get sc address"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    new-instance v2, Ljava/lang/String;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v36

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_9

    .line 494
    .end local v19           #ar:Landroid/os/AsyncResult;
    .end local v36           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 495
    .restart local v36       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    const/16 v2, 0x22

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 497
    .restart local v9       #onCompleted:Landroid/os/Message;
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Lcom/android/phone/PhoneInterfaceManager$ScAddrGemini;

    .line 498
    .restart local v37       #sca:Lcom/android/phone/PhoneInterfaceManager$ScAddrGemini;
    move-object/from16 v0, v37

    iget v2, v0, Lcom/android/phone/PhoneInterfaceManager$ScAddrGemini;->simId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 502
    const-string v2, "PhoneInterfaceManager"

    const-string v3, "[sca set sc gemini"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    move-object/from16 v0, v37

    iget-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$ScAddrGemini;->scAddr:Ljava/lang/String;

    move-object/from16 v0, v37

    iget v4, v0, Lcom/android/phone/PhoneInterfaceManager$ScAddrGemini;->simId:I

    invoke-virtual {v2, v3, v9, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setSmscAddressGemini(Ljava/lang/String;Landroid/os/Message;I)V

    goto/16 :goto_0

    .line 511
    .end local v9           #onCompleted:Landroid/os/Message;
    .end local v36           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    .end local v37           #sca:Lcom/android/phone/PhoneInterfaceManager$ScAddrGemini;
    :pswitch_c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/AsyncResult;

    .line 512
    .restart local v19       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 513
    .restart local v36       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_d

    .line 514
    const-string v2, "PhoneInterfaceManager"

    const-string v3, "[sca Fail: set sc address"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    :goto_a
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, v36

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 520
    monitor-enter v36

    .line 521
    :try_start_b
    invoke-virtual/range {v36 .. v36}, Ljava/lang/Object;->notifyAll()V

    .line 522
    monitor-exit v36

    goto/16 :goto_0

    :catchall_5
    move-exception v2

    monitor-exit v36
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    throw v2

    .line 516
    :cond_d
    const-string v2, "PhoneInterfaceManager"

    const-string v3, "[sca Done: set sc address"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 528
    .end local v19           #ar:Landroid/os/AsyncResult;
    .end local v36           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 529
    .restart local v36       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;

    .line 531
    .local v30, parameters:Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;
    const/16 v2, 0x10

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 532
    .restart local v9       #onCompleted:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    move-object/from16 v0, v30

    iget v3, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->cla:I

    move-object/from16 v0, v30

    iget v4, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->command:I

    move-object/from16 v0, v30

    iget v5, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p1:I

    move-object/from16 v0, v30

    iget v6, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p2:I

    move-object/from16 v0, v30

    iget v7, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p3:I

    move-object/from16 v0, v30

    iget-object v8, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->data:Ljava/lang/String;

    invoke-interface/range {v2 .. v9}, Lcom/android/internal/telephony/IccCard;->exchangeSimIO(IIIIILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 539
    .end local v9           #onCompleted:Landroid/os/Message;
    .end local v30           #parameters:Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;
    .end local v36           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/AsyncResult;

    .line 540
    .restart local v19       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 541
    .restart local v36       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_f

    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_f

    .line 542
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, v36

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 543
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x0

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$302(Lcom/android/phone/PhoneInterfaceManager;I)I

    .line 553
    :cond_e
    :goto_b
    monitor-enter v36

    :try_start_c
    invoke-virtual/range {v36 .. v36}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v36

    goto/16 :goto_0

    :catchall_6
    move-exception v2

    monitor-exit v36
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    throw v2

    .line 545
    :cond_f
    new-instance v3, Lcom/android/internal/telephony/IccIoResult;

    const/16 v4, 0x6f

    const/4 v5, 0x0

    const/4 v2, 0x0

    check-cast v2, [B

    invoke-direct {v3, v4, v5, v2}, Lcom/android/internal/telephony/IccIoResult;-><init>(II[B)V

    move-object/from16 v0, v36

    iput-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 546
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x1

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$302(Lcom/android/phone/PhoneInterfaceManager;I)I

    .line 547
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_e

    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v2, v2, Lcom/android/internal/telephony/CommandException;

    if-eqz v2, :cond_e

    .line 549
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->INVALID_PARAMETER:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v2, v3, :cond_e

    .line 551
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x5

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$302(Lcom/android/phone/PhoneInterfaceManager;I)I

    goto :goto_b

    .line 557
    .end local v19           #ar:Landroid/os/AsyncResult;
    .end local v36           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 558
    .restart local v36       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;

    .line 560
    .local v31, parameters1:Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;
    const/16 v2, 0x28

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 561
    .restart local v9       #onCompleted:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    move-object/from16 v0, v31

    iget v3, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->cla:I

    move-object/from16 v0, v31

    iget v4, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->command:I

    move-object/from16 v0, v31

    iget v5, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p1:I

    move-object/from16 v0, v31

    iget v6, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p2:I

    move-object/from16 v0, v31

    iget v7, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p3:I

    move-object/from16 v0, v31

    iget-object v8, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->data:Ljava/lang/String;

    invoke-interface/range {v2 .. v9}, Lcom/android/internal/telephony/IccCard;->exchangeSimIO(IIIIILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 568
    .end local v9           #onCompleted:Landroid/os/Message;
    .end local v31           #parameters1:Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;
    .end local v36           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_10
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 569
    .restart local v36       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;

    .line 571
    .local v32, parameters2:Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;
    const/16 v2, 0x29

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 572
    .restart local v9       #onCompleted:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    move-object/from16 v0, v32

    iget v3, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->cla:I

    move-object/from16 v0, v32

    iget v4, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->command:I

    move-object/from16 v0, v32

    iget v5, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p1:I

    move-object/from16 v0, v32

    iget v6, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p2:I

    move-object/from16 v0, v32

    iget v7, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p3:I

    move-object/from16 v0, v32

    iget-object v8, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->data:Ljava/lang/String;

    invoke-interface/range {v2 .. v9}, Lcom/android/internal/telephony/IccCard;->exchangeSimIO(IIIIILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 580
    .end local v9           #onCompleted:Landroid/os/Message;
    .end local v32           #parameters2:Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;
    .end local v36           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_11
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/AsyncResult;

    .line 581
    .restart local v19       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 582
    .restart local v36       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_12

    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_12

    .line 583
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, v36

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 584
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v3, 0x28

    if-ne v2, v3, :cond_11

    .line 585
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x0

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError1:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$402(Lcom/android/phone/PhoneInterfaceManager;I)I

    .line 603
    :cond_10
    :goto_c
    monitor-enter v36

    :try_start_d
    invoke-virtual/range {v36 .. v36}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v36

    goto/16 :goto_0

    :catchall_7
    move-exception v2

    monitor-exit v36
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    throw v2

    .line 587
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x0

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError2:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$502(Lcom/android/phone/PhoneInterfaceManager;I)I

    goto :goto_c

    .line 589
    :cond_12
    new-instance v3, Lcom/android/internal/telephony/IccIoResult;

    const/16 v4, 0x6f

    const/4 v5, 0x0

    const/4 v2, 0x0

    check-cast v2, [B

    invoke-direct {v3, v4, v5, v2}, Lcom/android/internal/telephony/IccIoResult;-><init>(II[B)V

    move-object/from16 v0, v36

    iput-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 590
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v3, 0x28

    if-ne v2, v3, :cond_13

    .line 591
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x1

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError1:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$402(Lcom/android/phone/PhoneInterfaceManager;I)I

    .line 594
    :goto_d
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_10

    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v2, v2, Lcom/android/internal/telephony/CommandException;

    if-eqz v2, :cond_10

    .line 596
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->INVALID_PARAMETER:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v2, v3, :cond_10

    .line 598
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v3, 0x28

    if-ne v2, v3, :cond_14

    .line 599
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x5

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError1:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$402(Lcom/android/phone/PhoneInterfaceManager;I)I

    goto :goto_c

    .line 593
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x1

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError2:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$502(Lcom/android/phone/PhoneInterfaceManager;I)I

    goto :goto_d

    .line 601
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x5

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError2:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$502(Lcom/android/phone/PhoneInterfaceManager;I)I

    goto :goto_c

    .line 608
    .end local v19           #ar:Landroid/os/AsyncResult;
    .end local v36           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_12
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 609
    .restart local v36       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;

    .line 611
    .local v20, argument:Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;
    const/16 v2, 0xa

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 613
    .restart local v9       #onCompleted:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v10

    move-object/from16 v0, v20

    iget v11, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->cla:I

    move-object/from16 v0, v20

    iget v12, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->command:I

    move-object/from16 v0, v20

    iget v13, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->channel:I

    move-object/from16 v0, v20

    iget v14, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p1:I

    move-object/from16 v0, v20

    iget v15, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p2:I

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p3:I

    move/from16 v16, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->data:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v18, v9

    invoke-interface/range {v10 .. v18}, Lcom/android/internal/telephony/IccCard;->exchangeAPDU(IIIIIILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 620
    .end local v9           #onCompleted:Landroid/os/Message;
    .end local v20           #argument:Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;
    .end local v36           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_13
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/AsyncResult;

    .line 621
    .restart local v19       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 622
    .restart local v36       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_16

    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_16

    .line 623
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, v36

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 624
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x0

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$302(Lcom/android/phone/PhoneInterfaceManager;I)I

    .line 638
    :cond_15
    :goto_e
    monitor-enter v36

    .line 639
    :try_start_e
    invoke-virtual/range {v36 .. v36}, Ljava/lang/Object;->notifyAll()V

    .line 640
    monitor-exit v36

    goto/16 :goto_0

    :catchall_8
    move-exception v2

    monitor-exit v36
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    throw v2

    .line 626
    :cond_16
    new-instance v3, Lcom/android/internal/telephony/IccIoResult;

    const/16 v4, 0x6f

    const/4 v5, 0x0

    const/4 v2, 0x0

    check-cast v2, [B

    invoke-direct {v3, v4, v5, v2}, Lcom/android/internal/telephony/IccIoResult;-><init>(II[B)V

    move-object/from16 v0, v36

    iput-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 628
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x1

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$302(Lcom/android/phone/PhoneInterfaceManager;I)I

    .line 629
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_15

    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v2, v2, Lcom/android/internal/telephony/CommandException;

    if-eqz v2, :cond_15

    .line 631
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->INVALID_PARAMETER:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v2, v3, :cond_15

    .line 634
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x5

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$302(Lcom/android/phone/PhoneInterfaceManager;I)I

    goto :goto_e

    .line 644
    .end local v19           #ar:Landroid/os/AsyncResult;
    .end local v36           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_14
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 645
    .restart local v36       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;

    .line 647
    .local v21, argument1:Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;
    const/16 v2, 0x1d

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 649
    .restart local v9       #onCompleted:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v10

    move-object/from16 v0, v21

    iget v11, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->cla:I

    move-object/from16 v0, v21

    iget v12, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->command:I

    move-object/from16 v0, v21

    iget v13, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->channel:I

    move-object/from16 v0, v21

    iget v14, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p1:I

    move-object/from16 v0, v21

    iget v15, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p2:I

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p3:I

    move/from16 v16, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->data:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v18, v9

    invoke-interface/range {v10 .. v18}, Lcom/android/internal/telephony/IccCard;->exchangeAPDU(IIIIIILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 656
    .end local v9           #onCompleted:Landroid/os/Message;
    .end local v21           #argument1:Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;
    .end local v36           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_15
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 657
    .restart local v36       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;

    .line 659
    .local v22, argument2:Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;
    const/16 v2, 0x1e

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 661
    .restart local v9       #onCompleted:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v10

    move-object/from16 v0, v22

    iget v11, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->cla:I

    move-object/from16 v0, v22

    iget v12, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->command:I

    move-object/from16 v0, v22

    iget v13, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->channel:I

    move-object/from16 v0, v22

    iget v14, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p1:I

    move-object/from16 v0, v22

    iget v15, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p2:I

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p3:I

    move/from16 v16, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->data:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v18, v9

    invoke-interface/range {v10 .. v18}, Lcom/android/internal/telephony/IccCard;->exchangeAPDU(IIIIIILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 669
    .end local v9           #onCompleted:Landroid/os/Message;
    .end local v22           #argument2:Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;
    .end local v36           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_16
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/AsyncResult;

    .line 670
    .restart local v19       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 671
    .restart local v36       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_19

    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_19

    .line 672
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, v36

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 673
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v3, 0x1d

    if-ne v2, v3, :cond_18

    .line 674
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x0

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError1:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$402(Lcom/android/phone/PhoneInterfaceManager;I)I

    .line 696
    :cond_17
    :goto_f
    monitor-enter v36

    .line 697
    :try_start_f
    invoke-virtual/range {v36 .. v36}, Ljava/lang/Object;->notifyAll()V

    .line 698
    monitor-exit v36

    goto/16 :goto_0

    :catchall_9
    move-exception v2

    monitor-exit v36
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    throw v2

    .line 676
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x0

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError2:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$502(Lcom/android/phone/PhoneInterfaceManager;I)I

    goto :goto_f

    .line 678
    :cond_19
    new-instance v3, Lcom/android/internal/telephony/IccIoResult;

    const/16 v4, 0x6f

    const/4 v5, 0x0

    const/4 v2, 0x0

    check-cast v2, [B

    invoke-direct {v3, v4, v5, v2}, Lcom/android/internal/telephony/IccIoResult;-><init>(II[B)V

    move-object/from16 v0, v36

    iput-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 680
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v3, 0x1d

    if-ne v2, v3, :cond_1a

    .line 681
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x1

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError1:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$402(Lcom/android/phone/PhoneInterfaceManager;I)I

    .line 684
    :goto_10
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_17

    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v2, v2, Lcom/android/internal/telephony/CommandException;

    if-eqz v2, :cond_17

    .line 686
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->INVALID_PARAMETER:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v2, v3, :cond_17

    .line 689
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v3, 0x1d

    if-ne v2, v3, :cond_1b

    .line 690
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x5

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError1:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$402(Lcom/android/phone/PhoneInterfaceManager;I)I

    goto :goto_f

    .line 683
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x1

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError2:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$502(Lcom/android/phone/PhoneInterfaceManager;I)I

    goto :goto_10

    .line 692
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x5

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError2:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$502(Lcom/android/phone/PhoneInterfaceManager;I)I

    goto :goto_f

    .line 702
    .end local v19           #ar:Landroid/os/AsyncResult;
    .end local v36           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_17
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 703
    .restart local v36       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    const/16 v2, 0xc

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 705
    .restart local v9       #onCompleted:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    move-object/from16 v0, v36

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-interface {v3, v2, v9}, Lcom/android/internal/telephony/IccCard;->openLogicalChannel(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 710
    .end local v9           #onCompleted:Landroid/os/Message;
    .end local v36           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_18
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/AsyncResult;

    .line 711
    .restart local v19       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 712
    .restart local v36       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1d

    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_1d

    .line 713
    new-instance v3, Ljava/lang/Integer;

    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    const/4 v4, 0x0

    aget v2, v2, v4

    invoke-direct {v3, v2}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v36

    iput-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 714
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x0

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$302(Lcom/android/phone/PhoneInterfaceManager;I)I

    .line 733
    :cond_1c
    :goto_11
    monitor-enter v36

    .line 734
    :try_start_10
    invoke-virtual/range {v36 .. v36}, Ljava/lang/Object;->notifyAll()V

    .line 735
    monitor-exit v36

    goto/16 :goto_0

    :catchall_a
    move-exception v2

    monitor-exit v36
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_a

    throw v2

    .line 716
    :cond_1d
    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v36

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 717
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x1

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$302(Lcom/android/phone/PhoneInterfaceManager;I)I

    .line 718
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_1c

    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v2, v2, Lcom/android/internal/telephony/CommandException;

    if-eqz v2, :cond_1c

    .line 720
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->MISSING_RESOURCE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v2, v3, :cond_1e

    .line 723
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x2

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$302(Lcom/android/phone/PhoneInterfaceManager;I)I

    goto :goto_11

    .line 725
    :cond_1e
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->NO_SUCH_ELEMENT:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v2, v3, :cond_1c

    .line 728
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x3

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$302(Lcom/android/phone/PhoneInterfaceManager;I)I

    goto :goto_11

    .line 739
    .end local v19           #ar:Landroid/os/AsyncResult;
    .end local v36           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_19
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 740
    .restart local v36       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    const/16 v2, 0x24

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 742
    .restart local v9       #onCompleted:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    move-object/from16 v0, v36

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-interface {v3, v2, v9}, Lcom/android/internal/telephony/IccCard;->openLogicalChannel(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 747
    .end local v9           #onCompleted:Landroid/os/Message;
    .end local v36           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_1a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 748
    .restart local v36       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    const/16 v2, 0x25

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 750
    .restart local v9       #onCompleted:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    move-object/from16 v0, v36

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-interface {v3, v2, v9}, Lcom/android/internal/telephony/IccCard;->openLogicalChannel(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 756
    .end local v9           #onCompleted:Landroid/os/Message;
    .end local v36           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_1b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/AsyncResult;

    .line 757
    .restart local v19       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 758
    .restart local v36       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_21

    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_21

    .line 759
    new-instance v3, Ljava/lang/Integer;

    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    const/4 v4, 0x0

    aget v2, v2, v4

    invoke-direct {v3, v2}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v36

    iput-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 760
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v3, 0x24

    if-ne v2, v3, :cond_20

    .line 761
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x0

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError1:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$402(Lcom/android/phone/PhoneInterfaceManager;I)I

    .line 791
    :cond_1f
    :goto_12
    monitor-enter v36

    .line 792
    :try_start_11
    invoke-virtual/range {v36 .. v36}, Ljava/lang/Object;->notifyAll()V

    .line 793
    monitor-exit v36

    goto/16 :goto_0

    :catchall_b
    move-exception v2

    monitor-exit v36
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_b

    throw v2

    .line 763
    :cond_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x0

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError2:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$502(Lcom/android/phone/PhoneInterfaceManager;I)I

    goto :goto_12

    .line 765
    :cond_21
    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v36

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 766
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v3, 0x24

    if-ne v2, v3, :cond_22

    .line 767
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x1

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError1:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$402(Lcom/android/phone/PhoneInterfaceManager;I)I

    .line 770
    :goto_13
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_1f

    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v2, v2, Lcom/android/internal/telephony/CommandException;

    if-eqz v2, :cond_1f

    .line 772
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->MISSING_RESOURCE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v2, v3, :cond_24

    .line 775
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v3, 0x24

    if-ne v2, v3, :cond_23

    .line 776
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x2

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError1:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$402(Lcom/android/phone/PhoneInterfaceManager;I)I

    goto :goto_12

    .line 769
    :cond_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x1

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError2:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$502(Lcom/android/phone/PhoneInterfaceManager;I)I

    goto :goto_13

    .line 778
    :cond_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x2

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError2:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$502(Lcom/android/phone/PhoneInterfaceManager;I)I

    goto :goto_12

    .line 780
    :cond_24
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->NO_SUCH_ELEMENT:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v2, v3, :cond_1f

    .line 783
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v3, 0x24

    if-ne v2, v3, :cond_25

    .line 784
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x3

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError1:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$402(Lcom/android/phone/PhoneInterfaceManager;I)I

    goto/16 :goto_12

    .line 786
    :cond_25
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x3

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError2:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$502(Lcom/android/phone/PhoneInterfaceManager;I)I

    goto/16 :goto_12

    .line 797
    .end local v19           #ar:Landroid/os/AsyncResult;
    .end local v36           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_1c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 798
    .restart local v36       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    const/16 v2, 0xe

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 800
    .restart local v9       #onCompleted:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    move-object/from16 v0, v36

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v3, v2, v9}, Lcom/android/internal/telephony/IccCard;->closeLogicalChannel(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 806
    .end local v9           #onCompleted:Landroid/os/Message;
    .end local v36           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_1d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/AsyncResult;

    .line 807
    .restart local v19       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 808
    .restart local v36       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_27

    .line 809
    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v36

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 810
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x0

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$302(Lcom/android/phone/PhoneInterfaceManager;I)I

    .line 823
    :cond_26
    :goto_14
    monitor-enter v36

    .line 824
    :try_start_12
    invoke-virtual/range {v36 .. v36}, Ljava/lang/Object;->notifyAll()V

    .line 825
    monitor-exit v36

    goto/16 :goto_0

    :catchall_c
    move-exception v2

    monitor-exit v36
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_c

    throw v2

    .line 812
    :cond_27
    new-instance v2, Ljava/lang/Integer;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v36

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 813
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x1

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$302(Lcom/android/phone/PhoneInterfaceManager;I)I

    .line 814
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_26

    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v2, v2, Lcom/android/internal/telephony/CommandException;

    if-eqz v2, :cond_26

    .line 816
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->INVALID_PARAMETER:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v2, v3, :cond_26

    .line 819
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x5

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$302(Lcom/android/phone/PhoneInterfaceManager;I)I

    goto :goto_14

    .line 829
    .end local v19           #ar:Landroid/os/AsyncResult;
    .end local v36           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_1e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 830
    .restart local v36       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    const/16 v2, 0x26

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 832
    .restart local v9       #onCompleted:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    move-object/from16 v0, v36

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v3, v2, v9}, Lcom/android/internal/telephony/IccCard;->closeLogicalChannel(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 838
    .end local v9           #onCompleted:Landroid/os/Message;
    .end local v36           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_1f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 839
    .restart local v36       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    const/16 v2, 0x27

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 841
    .restart local v9       #onCompleted:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    move-object/from16 v0, v36

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v3, v2, v9}, Lcom/android/internal/telephony/IccCard;->closeLogicalChannel(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 848
    .end local v9           #onCompleted:Landroid/os/Message;
    .end local v36           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_20
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/AsyncResult;

    .line 849
    .restart local v19       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 850
    .restart local v36       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2a

    .line 851
    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v36

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 852
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v3, 0x26

    if-ne v2, v3, :cond_29

    .line 853
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x0

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError1:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$402(Lcom/android/phone/PhoneInterfaceManager;I)I

    .line 874
    :cond_28
    :goto_15
    monitor-enter v36

    .line 875
    :try_start_13
    invoke-virtual/range {v36 .. v36}, Ljava/lang/Object;->notifyAll()V

    .line 876
    monitor-exit v36

    goto/16 :goto_0

    :catchall_d
    move-exception v2

    monitor-exit v36
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_d

    throw v2

    .line 855
    :cond_29
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x0

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError2:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$502(Lcom/android/phone/PhoneInterfaceManager;I)I

    goto :goto_15

    .line 857
    :cond_2a
    new-instance v2, Ljava/lang/Integer;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v36

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 858
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v3, 0x26

    if-ne v2, v3, :cond_2b

    .line 859
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x1

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError1:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$402(Lcom/android/phone/PhoneInterfaceManager;I)I

    .line 862
    :goto_16
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_28

    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v2, v2, Lcom/android/internal/telephony/CommandException;

    if-eqz v2, :cond_28

    .line 864
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->INVALID_PARAMETER:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v2, v3, :cond_28

    .line 867
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v3, 0x26

    if-ne v2, v3, :cond_2c

    .line 868
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x5

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError1:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$402(Lcom/android/phone/PhoneInterfaceManager;I)I

    goto :goto_15

    .line 861
    :cond_2b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x1

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError2:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$502(Lcom/android/phone/PhoneInterfaceManager;I)I

    goto :goto_16

    .line 870
    :cond_2c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x5

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError2:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$502(Lcom/android/phone/PhoneInterfaceManager;I)I

    goto :goto_15

    .line 880
    .end local v19           #ar:Landroid/os/AsyncResult;
    .end local v36           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_21
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 881
    .restart local v36       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    const/16 v2, 0x12

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 883
    .restart local v9       #onCompleted:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-interface {v2, v9}, Lcom/android/internal/telephony/IccCard;->iccGetATR(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 887
    .end local v9           #onCompleted:Landroid/os/Message;
    .end local v36           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_22
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/AsyncResult;

    .line 888
    .restart local v19       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 889
    .restart local v36       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2d

    .line 890
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, v36

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 891
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x0

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$302(Lcom/android/phone/PhoneInterfaceManager;I)I

    .line 896
    :goto_17
    monitor-enter v36

    .line 897
    :try_start_14
    invoke-virtual/range {v36 .. v36}, Ljava/lang/Object;->notifyAll()V

    .line 898
    monitor-exit v36

    goto/16 :goto_0

    :catchall_e
    move-exception v2

    monitor-exit v36
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_e

    throw v2

    .line 893
    :cond_2d
    const-string v2, ""

    move-object/from16 v0, v36

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 894
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x1

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$302(Lcom/android/phone/PhoneInterfaceManager;I)I

    goto :goto_17

    .line 902
    .end local v19           #ar:Landroid/os/AsyncResult;
    .end local v36           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_23
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 903
    .restart local v36       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    const/16 v2, 0x2a

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 905
    .restart local v9       #onCompleted:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-interface {v2, v9}, Lcom/android/internal/telephony/IccCard;->iccGetATR(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 909
    .end local v9           #onCompleted:Landroid/os/Message;
    .end local v36           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_24
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 910
    .restart local v36       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    const/16 v2, 0x2b

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 912
    .restart local v9       #onCompleted:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-interface {v2, v9}, Lcom/android/internal/telephony/IccCard;->iccGetATR(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 917
    .end local v9           #onCompleted:Landroid/os/Message;
    .end local v36           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_25
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/AsyncResult;

    .line 918
    .restart local v19       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 919
    .restart local v36       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2f

    .line 920
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, v36

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 921
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v3, 0x2a

    if-ne v2, v3, :cond_2e

    .line 922
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x0

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError1:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$402(Lcom/android/phone/PhoneInterfaceManager;I)I

    .line 932
    :goto_18
    monitor-enter v36

    .line 933
    :try_start_15
    invoke-virtual/range {v36 .. v36}, Ljava/lang/Object;->notifyAll()V

    .line 934
    monitor-exit v36

    goto/16 :goto_0

    :catchall_f
    move-exception v2

    monitor-exit v36
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_f

    throw v2

    .line 924
    :cond_2e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x0

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError2:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$502(Lcom/android/phone/PhoneInterfaceManager;I)I

    goto :goto_18

    .line 926
    :cond_2f
    const-string v2, ""

    move-object/from16 v0, v36

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 927
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v3, 0x2a

    if-ne v2, v3, :cond_30

    .line 928
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x1

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError1:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$402(Lcom/android/phone/PhoneInterfaceManager;I)I

    goto :goto_18

    .line 930
    :cond_30
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x1

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError2:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$502(Lcom/android/phone/PhoneInterfaceManager;I)I

    goto :goto_18

    .line 938
    .end local v19           #ar:Landroid/os/AsyncResult;
    .end local v36           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_26
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 939
    .restart local v36       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;

    .line 940
    .local v23, argument3:Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;
    const/16 v2, 0x2f

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 942
    .restart local v9       #onCompleted:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->data:Ljava/lang/String;

    invoke-interface {v2, v3, v9}, Lcom/android/internal/telephony/IccCard;->openLogicalChannelWithSw(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 946
    .end local v9           #onCompleted:Landroid/os/Message;
    .end local v23           #argument3:Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;
    .end local v36           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_27
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/AsyncResult;

    .line 947
    .restart local v19       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 948
    .restart local v36       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, v36

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 949
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_31

    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_31

    .line 950
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x0

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$302(Lcom/android/phone/PhoneInterfaceManager;I)I

    .line 956
    :goto_19
    monitor-enter v36

    .line 957
    :try_start_16
    invoke-virtual/range {v36 .. v36}, Ljava/lang/Object;->notifyAll()V

    .line 958
    monitor-exit v36

    goto/16 :goto_0

    :catchall_10
    move-exception v2

    monitor-exit v36
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_10

    throw v2

    .line 952
    :cond_31
    new-instance v3, Lcom/android/internal/telephony/IccIoResult;

    const/16 v4, 0xff

    const/16 v5, 0xff

    const/4 v2, 0x0

    check-cast v2, [B

    invoke-direct {v3, v4, v5, v2}, Lcom/android/internal/telephony/IccIoResult;-><init>(II[B)V

    move-object/from16 v0, v36

    iput-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 954
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x1

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$302(Lcom/android/phone/PhoneInterfaceManager;I)I

    goto :goto_19

    .line 962
    .end local v19           #ar:Landroid/os/AsyncResult;
    .end local v36           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_28
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 963
    .restart local v36       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;

    .line 964
    .local v24, argument4:Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;
    const/16 v2, 0x30

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 966
    .restart local v9       #onCompleted:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    move-object/from16 v0, v24

    iget-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->data:Ljava/lang/String;

    invoke-interface {v2, v3, v9}, Lcom/android/internal/telephony/IccCard;->openLogicalChannelWithSw(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 971
    .end local v9           #onCompleted:Landroid/os/Message;
    .end local v24           #argument4:Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;
    .end local v36           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_29
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 972
    .restart local v36       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;

    .line 973
    .local v25, argument5:Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;
    const/16 v2, 0x31

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 975
    .restart local v9       #onCompleted:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->data:Ljava/lang/String;

    invoke-interface {v2, v3, v9}, Lcom/android/internal/telephony/IccCard;->openLogicalChannelWithSw(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 981
    .end local v9           #onCompleted:Landroid/os/Message;
    .end local v25           #argument5:Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;
    .end local v36           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_2a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/AsyncResult;

    .line 982
    .restart local v19       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 983
    .restart local v36       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, v36

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 984
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_33

    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_33

    .line 985
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v3, 0x30

    if-ne v2, v3, :cond_32

    .line 986
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x0

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError1:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$402(Lcom/android/phone/PhoneInterfaceManager;I)I

    .line 997
    :goto_1a
    monitor-enter v36

    .line 998
    :try_start_17
    invoke-virtual/range {v36 .. v36}, Ljava/lang/Object;->notifyAll()V

    .line 999
    monitor-exit v36

    goto/16 :goto_0

    :catchall_11
    move-exception v2

    monitor-exit v36
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_11

    throw v2

    .line 988
    :cond_32
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x0

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError2:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$502(Lcom/android/phone/PhoneInterfaceManager;I)I

    goto :goto_1a

    .line 990
    :cond_33
    new-instance v3, Lcom/android/internal/telephony/IccIoResult;

    const/16 v4, 0xff

    const/16 v5, 0xff

    const/4 v2, 0x0

    check-cast v2, [B

    invoke-direct {v3, v4, v5, v2}, Lcom/android/internal/telephony/IccIoResult;-><init>(II[B)V

    move-object/from16 v0, v36

    iput-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 992
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v3, 0x30

    if-ne v2, v3, :cond_34

    .line 993
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x1

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError1:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$402(Lcom/android/phone/PhoneInterfaceManager;I)I

    goto :goto_1a

    .line 995
    :cond_34
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x1

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError2:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$502(Lcom/android/phone/PhoneInterfaceManager;I)I

    goto :goto_1a

    .line 262
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_12
        :pswitch_13
        :pswitch_17
        :pswitch_18
        :pswitch_1c
        :pswitch_1d
        :pswitch_d
        :pswitch_e
        :pswitch_21
        :pswitch_22
        :pswitch_14
        :pswitch_15
        :pswitch_19
        :pswitch_1a
        :pswitch_1e
        :pswitch_1f
        :pswitch_f
        :pswitch_10
        :pswitch_23
        :pswitch_24
        :pswitch_16
        :pswitch_16
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_1b
        :pswitch_1b
        :pswitch_20
        :pswitch_20
        :pswitch_11
        :pswitch_11
        :pswitch_25
        :pswitch_25
        :pswitch_26
        :pswitch_28
        :pswitch_29
        :pswitch_27
        :pswitch_2a
        :pswitch_2a
    .end packed-switch
.end method
