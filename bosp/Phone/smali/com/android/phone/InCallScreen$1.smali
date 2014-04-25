.class Lcom/android/phone/InCallScreen$1;
.super Landroid/os/Handler;
.source "InCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 418
    iput-object p1, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    .line 421
    iget-object v7, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mIsDestroyed:Z
    invoke-static {v7}, Lcom/android/phone/InCallScreen;->access$000(Lcom/android/phone/InCallScreen;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 422
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$100()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Handler: ignoring message "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "; we\'re destroyed!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/phone/InCallScreen;->access$200(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 427
    :cond_0
    iget-object v7, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z
    invoke-static {v7}, Lcom/android/phone/InCallScreen;->access$300(Lcom/android/phone/InCallScreen;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 428
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$100()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Handler: handling message "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " while not in foreground"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/phone/InCallScreen;->access$200(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 436
    :cond_1
    iget v7, p1, Landroid/os/Message;->what:I

    sparse-switch v7, :sswitch_data_0

    .line 765
    const-string v7, "InCallScreen"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mHandler: unexpected message: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    :cond_2
    :goto_0
    return-void

    .line 439
    :sswitch_0
    iget-object v8, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    invoke-virtual {v8, v7}, Lcom/android/phone/InCallScreen;->onSuppServiceFailed(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 444
    :sswitch_1
    iget-object v8, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    invoke-virtual {v8, v7}, Lcom/android/phone/InCallScreen;->onSuppServiceNotification(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 449
    :sswitch_2
    iget-object v8, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    invoke-virtual {v8, v7}, Lcom/android/phone/InCallScreen;->onSuppCrssSuppServiceNotification(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 454
    :sswitch_3
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$100()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const-string v8, "----------------------------------------InCallScreen Phone state change----------------------------------"

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/phone/InCallScreen;->access$200(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 455
    :cond_3
    iget-object v8, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    #calls: Lcom/android/phone/InCallScreen;->onPhoneStateChanged(Landroid/os/AsyncResult;)V
    invoke-static {v8, v7}, Lcom/android/phone/InCallScreen;->access$400(Lcom/android/phone/InCallScreen;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 460
    :sswitch_4
    iget-object v8, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    iget v9, p1, Landroid/os/Message;->what:I

    #calls: Lcom/android/phone/InCallScreen;->onDisconnect(Landroid/os/AsyncResult;I)V
    invoke-static {v8, v7, v9}, Lcom/android/phone/InCallScreen;->access$500(Lcom/android/phone/InCallScreen;Landroid/os/AsyncResult;I)V

    .line 461
    const/4 v7, 0x0

    invoke-static {v7}, Lcom/baidu/phone/BaiduPhoneUtils;->setIpCall(Z)V

    goto :goto_0

    .line 466
    :sswitch_5
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$600()I

    move-result v7

    iget v8, p1, Landroid/os/Message;->arg1:I

    if-ne v7, v8, :cond_4

    invoke-static {}, Lcom/android/phone/InCallScreen;->access$600()I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_6

    .line 475
    :cond_4
    iget-object v7, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v7}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnected()Z

    move-result v7

    if-nez v7, :cond_5

    .line 476
    iget v7, p1, Landroid/os/Message;->arg1:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_7

    .line 481
    iget-object v7, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->restoreSpeakerMode(Landroid/content/Context;)V

    .line 494
    :cond_5
    :goto_1
    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-static {v7}, Lcom/android/phone/InCallScreen;->access$602(I)I

    .line 496
    :cond_6
    iget-object v7, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->updateScreen()V
    invoke-static {v7}, Lcom/android/phone/InCallScreen;->access$700(Lcom/android/phone/InCallScreen;)V

    .line 502
    iget-object v7, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/BaiduInCallTouchUi;
    invoke-static {v7}, Lcom/android/phone/InCallScreen;->access$800(Lcom/android/phone/InCallScreen;)Lcom/android/phone/BaiduInCallTouchUi;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/phone/BaiduInCallTouchUi;->refreshAudioModePopup()V

    .line 503
    iget-object v7, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mVTInCallScreen:Lcom/android/phone/VTInCallScreenProxy;
    invoke-static {v7}, Lcom/android/phone/InCallScreen;->access$900(Lcom/android/phone/InCallScreen;)Lcom/android/phone/VTInCallScreenProxy;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/phone/VTInCallScreenProxy;->refreshAudioModePopup()V

    goto/16 :goto_0

    .line 485
    :cond_7
    iget-object v7, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    goto :goto_1

    .line 508
    :sswitch_6
    iget-object v8, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v8, v7, v9}, Lcom/android/phone/InCallScreen;->onMMIInitiate(Landroid/os/AsyncResult;I)V

    goto/16 :goto_0

    .line 512
    :sswitch_7
    iget-object v8, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    const/4 v9, 0x0

    invoke-virtual {v8, v7, v9}, Lcom/android/phone/InCallScreen;->onMMIInitiate(Landroid/os/AsyncResult;I)V

    goto/16 :goto_0

    .line 516
    :sswitch_8
    iget-object v8, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    const/4 v9, 0x1

    invoke-virtual {v8, v7, v9}, Lcom/android/phone/InCallScreen;->onMMIInitiate(Landroid/os/AsyncResult;I)V

    goto/16 :goto_0

    .line 520
    :sswitch_9
    iget-object v7, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const/4 v8, 0x0

    #calls: Lcom/android/phone/InCallScreen;->onMMICancel(I)V
    invoke-static {v7, v8}, Lcom/android/phone/InCallScreen;->access$1000(Lcom/android/phone/InCallScreen;I)V

    goto/16 :goto_0

    .line 524
    :sswitch_a
    iget-object v7, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const/4 v8, 0x1

    #calls: Lcom/android/phone/InCallScreen;->onMMICancel(I)V
    invoke-static {v7, v8}, Lcom/android/phone/InCallScreen;->access$1000(Lcom/android/phone/InCallScreen;I)V

    goto/16 :goto_0

    .line 533
    :sswitch_b
    const/16 v7, 0xc9

    invoke-virtual {p0, v7}, Lcom/android/phone/InCallScreen$1;->hasMessages(I)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 534
    const/16 v7, 0xc9

    invoke-virtual {p0, v7}, Lcom/android/phone/InCallScreen$1;->removeMessages(I)V

    .line 539
    :cond_8
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    iget-object v5, v7, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/telephony/MmiCode;

    .line 541
    .local v5, mmiCode:Lcom/android/internal/telephony/MmiCode;
    iget-object v7, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v7}, Lcom/android/phone/InCallScreen;->access$1100(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/Phone;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    .line 542
    .local v6, phoneType:I
    const/4 v7, 0x2

    if-ne v6, v7, :cond_9

    .line 543
    iget-object v7, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v7}, Lcom/android/phone/InCallScreen;->access$1100(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/Phone;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;
    invoke-static {v8}, Lcom/android/phone/InCallScreen;->access$1200(Lcom/android/phone/InCallScreen;)Lcom/android/phone/PhoneApp;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v7, v8, v5, v9, v10}, Lcom/android/phone/PhoneUtils;->displayMMIComplete(Lcom/android/internal/telephony/Phone;Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Landroid/app/AlertDialog;)V

    goto/16 :goto_0

    .line 544
    :cond_9
    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 545
    invoke-interface {v5}, Lcom/android/internal/telephony/MmiCode;->getState()Lcom/android/internal/telephony/MmiCode$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    if-eq v7, v8, :cond_2

    .line 546
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$100()Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const-string v8, "Got MMI_COMPLETE, finishing InCallScreen..."

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/phone/InCallScreen;->access$200(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 547
    :cond_a
    iget-object v7, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v7}, Lcom/android/phone/InCallScreen;->access$1300(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v7, v8, :cond_b

    .line 548
    iget-object v7, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v7}, Lcom/android/phone/InCallScreen;->endInCallScreenSession()V

    .line 553
    :goto_2
    iget-object v7, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;
    invoke-static {v7}, Lcom/android/phone/InCallScreen;->access$1400(Lcom/android/phone/InCallScreen;)Landroid/app/Dialog;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 554
    iget-object v7, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;
    invoke-static {v7}, Lcom/android/phone/InCallScreen;->access$1400(Lcom/android/phone/InCallScreen;)Landroid/app/Dialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Dialog;->dismiss()V

    .line 555
    iget-object v7, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const/4 v8, 0x0

    #setter for: Lcom/android/phone/InCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;
    invoke-static {v7, v8}, Lcom/android/phone/InCallScreen;->access$1402(Lcom/android/phone/InCallScreen;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 556
    iget-object v7, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const-string v8, "Got MMI_COMPLETE, Phone isn\'t in idle, dismiss the start progress dialog..."

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/phone/InCallScreen;->access$200(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 550
    :cond_b
    iget-object v7, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const-string v8, "Got MMI_COMPLETE, Phone isn\'t in idle, don\'t finishing InCallScreen..."

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/phone/InCallScreen;->access$200(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    goto :goto_2

    .line 564
    .end local v5           #mmiCode:Lcom/android/internal/telephony/MmiCode;
    .end local v6           #phoneType:I
    :sswitch_c
    iget-object v8, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    iget v9, p1, Landroid/os/Message;->arg1:I

    int-to-char v9, v9

    #calls: Lcom/android/phone/InCallScreen;->handlePostOnDialChars(Landroid/os/AsyncResult;C)V
    invoke-static {v8, v7, v9}, Lcom/android/phone/InCallScreen;->access$1500(Lcom/android/phone/InCallScreen;Landroid/os/AsyncResult;C)V

    goto/16 :goto_0

    .line 568
    :sswitch_d
    iget-object v7, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->addVoiceMailNumberPanel()V
    invoke-static {v7}, Lcom/android/phone/InCallScreen;->access$1600(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    .line 572
    :sswitch_e
    iget-object v7, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->dontAddVoiceMailNumber()V
    invoke-static {v7}, Lcom/android/phone/InCallScreen;->access$1700(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    .line 576
    :sswitch_f
    iget-object v7, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const-string v8, "mHandler() DELAYED_CLEANUP_AFTER_DISCONNECT  : SIM1"

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/phone/InCallScreen;->access$200(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 577
    iget-object v7, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const/16 v8, 0x6c

    invoke-virtual {v7, v8}, Lcom/android/phone/InCallScreen;->delayedCleanupAfterDisconnect(I)V

    goto/16 :goto_0

    .line 581
    :sswitch_10
    iget-object v7, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const-string v8, "mHandler() DELAYED_CLEANUP_AFTER_DISCONNECT  : SIM2"

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/phone/InCallScreen;->access$200(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 582
    iget-object v7, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const/16 v8, 0x93

    invoke-virtual {v7, v8}, Lcom/android/phone/InCallScreen;->delayedCleanupAfterDisconnect(I)V

    goto/16 :goto_0

    .line 592
    :sswitch_11
    iget-object v7, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->updateScreen()V
    invoke-static {v7}, Lcom/android/phone/InCallScreen;->access$700(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    .line 596
    :sswitch_12
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$100()Z

    move-result v7

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const-string v8, "Received PHONE_CDMA_CALL_WAITING event ..."

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/phone/InCallScreen;->access$200(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 597
    :cond_c
    iget-object v7, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v7}, Lcom/android/phone/InCallScreen;->access$1300(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    .line 600
    .local v2, cn:Lcom/android/internal/telephony/Connection;
    if-eqz v2, :cond_2

    .line 603
    iget-object v7, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->updateScreen()V
    invoke-static {v7}, Lcom/android/phone/InCallScreen;->access$700(Lcom/android/phone/InCallScreen;)V

    .line 604
    iget-object v7, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;
    invoke-static {v7}, Lcom/android/phone/InCallScreen;->access$1200(Lcom/android/phone/InCallScreen;)Lcom/android/phone/PhoneApp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/phone/PhoneApp;->updateWakeState()V

    goto/16 :goto_0

    .line 609
    .end local v2           #cn:Lcom/android/internal/telephony/Connection;
    :sswitch_13
    iget-object v7, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;
    invoke-static {v7}, Lcom/android/phone/InCallScreen;->access$1200(Lcom/android/phone/InCallScreen;)Lcom/android/phone/PhoneApp;

    move-result-object v7

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v7, :cond_2

    .line 610
    iget-object v7, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;
    invoke-static {v7}, Lcom/android/phone/InCallScreen;->access$1200(Lcom/android/phone/InCallScreen;)Lcom/android/phone/PhoneApp;

    move-result-object v7

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v7}, Lcom/android/phone/OtaUtils;->onOtaCloseSpcNotice()V

    goto/16 :goto_0

    .line 615
    :sswitch_14
    iget-object v7, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;
    invoke-static {v7}, Lcom/android/phone/InCallScreen;->access$1200(Lcom/android/phone/InCallScreen;)Lcom/android/phone/PhoneApp;

    move-result-object v7

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v7, :cond_2

    .line 616
    iget-object v7, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;
    invoke-static {v7}, Lcom/android/phone/InCallScreen;->access$1200(Lcom/android/phone/InCallScreen;)Lcom/android/phone/PhoneApp;

    move-result-object v7

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v7}, Lcom/android/phone/OtaUtils;->onOtaCloseFailureNotice()V

    goto/16 :goto_0

    .line 621
    :sswitch_15
    iget-object v7, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;
    invoke-static {v7}, Lcom/android/phone/InCallScreen;->access$1800(Lcom/android/phone/InCallScreen;)Landroid/app/AlertDialog;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 622
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$100()Z

    move-result v7

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const-string v8, "- DISMISSING mPausePromptDialog."

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/phone/InCallScreen;->access$200(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 623
    :cond_d
    iget-object v7, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;
    invoke-static {v7}, Lcom/android/phone/InCallScreen;->access$1800(Lcom/android/phone/InCallScreen;)Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog;->dismiss()V

    .line 624
    iget-object v7, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const/4 v8, 0x0

    #setter for: Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;
    invoke-static {v7, v8}, Lcom/android/phone/InCallScreen;->access$1802(Lcom/android/phone/InCallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 629
    :sswitch_16
    iget-object v7, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;
    invoke-static {v7}, Lcom/android/phone/InCallScreen;->access$1200(Lcom/android/phone/InCallScreen;)Lcom/android/phone/PhoneApp;

    move-result-object v7

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/android/phone/InCallUiState;->providerOverlayVisible:Z

    .line 630
    iget-object v7, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->updateProviderOverlay()V
    invoke-static {v7}, Lcom/android/phone/InCallScreen;->access$1900(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    .line 634
    :sswitch_17
    iget-object v7, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const-string v8, "handleMessage FAKE_INCOMING_CALL_WIDGET"

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/phone/InCallScreen;->access$200(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 635
    iget-object v7, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/BaiduInCallTouchUi;
    invoke-static {v7}, Lcom/android/phone/InCallScreen;->access$800(Lcom/android/phone/InCallScreen;)Lcom/android/phone/BaiduInCallTouchUi;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v8}, Lcom/android/phone/InCallScreen;->access$1300(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/phone/BaiduInCallTouchUi;->updateState(Lcom/android/internal/telephony/CallManager;)V

    .line 636
    iget-object v7, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;
    invoke-static {v7}, Lcom/android/phone/InCallScreen;->access$2000(Lcom/android/phone/InCallScreen;)Landroid/app/AlertDialog;

    move-result-object v7

    if-eqz v7, :cond_e

    iget-object v7, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;
    invoke-static {v7}, Lcom/android/phone/InCallScreen;->access$2000(Lcom/android/phone/InCallScreen;)Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 637
    iget-object v7, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;
    invoke-static {v7}, Lcom/android/phone/InCallScreen;->access$2000(Lcom/android/phone/InCallScreen;)Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog;->dismiss()V

    .line 638
    iget-object v7, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const/4 v8, 0x0

    #setter for: Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;
    invoke-static {v7, v8}, Lcom/android/phone/InCallScreen;->access$2002(Lcom/android/phone/InCallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 640
    :cond_e
    iget-object v7, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    new-instance v8, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x7f0b01b2

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f0b0035

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    #setter for: Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;
    invoke-static {v7, v8}, Lcom/android/phone/InCallScreen;->access$2002(Lcom/android/phone/InCallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 645
    iget-object v7, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;
    invoke-static {v7}, Lcom/android/phone/InCallScreen;->access$2000(Lcom/android/phone/InCallScreen;)Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/view/Window;->addFlags(I)V

    .line 646
    iget-object v7, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;
    invoke-static {v7}, Lcom/android/phone/InCallScreen;->access$2000(Lcom/android/phone/InCallScreen;)Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 652
    :sswitch_18
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/phone/PhoneApp;->isVTRinging()Z

    move-result v7

    if-nez v7, :cond_2

    .line 672
    const/4 v0, 0x0

    .line 673
    .local v0, AutoAnswer:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v7}, Lcom/android/phone/InCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "EnableAutoAnswer"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 674
    if-eqz v0, :cond_2

    const-string v7, "true"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 676
    iget-object v7, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v7}, Lcom/android/phone/InCallScreen;->access$1300(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 677
    iget-object v7, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v7}, Lcom/android/phone/InCallScreen;->access$1300(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    goto/16 :goto_0

    .line 689
    .end local v0           #AutoAnswer:Ljava/lang/String;
    :sswitch_19
    iget-object v7, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-static {}, Lcom/android/phone/PhoneRecorderHandler;->getInstance()Lcom/android/phone/PhoneRecorderHandler;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/PhoneRecorderHandler;->getPhoneRecorderState()I

    move-result v8

    invoke-static {}, Lcom/android/phone/PhoneRecorderHandler;->getInstance()Lcom/android/phone/PhoneRecorderHandler;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/phone/PhoneRecorderHandler;->getCustomValue()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/android/phone/InCallScreen;->requestUpdateRecordState(II)V

    goto/16 :goto_0

    .line 694
    :sswitch_1a
    iget-object v7, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->updateScreen()V
    invoke-static {v7}, Lcom/android/phone/InCallScreen;->access$700(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    .line 699
    :sswitch_1b
    iget-object v7, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->onIncomingRing()V
    invoke-static {v7}, Lcom/android/phone/InCallScreen;->access$2100(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    .line 704
    :sswitch_1c
    iget-object v7, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->onNewRingingConnection()V
    invoke-static {v7}, Lcom/android/phone/InCallScreen;->access$2200(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    .line 708
    :sswitch_1d
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$100()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 709
    iget-object v7, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const-string v8, "- handler : VT_VOICE_ANSWER_OVER ! "

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/phone/InCallScreen;->access$200(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 710
    :cond_f
    iget-object v7, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v7}, Lcom/android/phone/InCallScreen;->getInVoiceAnswerVideoCall()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 711
    iget-object v7, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/phone/InCallScreen;->setInVoiceAnswerVideoCall(Z)V

    .line 713
    iget-object v7, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const/16 v8, 0x93

    invoke-virtual {v7, v8}, Lcom/android/phone/InCallScreen;->delayedCleanupAfterDisconnect(I)V

    .line 715
    iget-object v7, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const/16 v8, 0x6c

    invoke-virtual {v7, v8}, Lcom/android/phone/InCallScreen;->delayedCleanupAfterDisconnect(I)V

    goto/16 :goto_0

    .line 721
    :sswitch_1e
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 722
    .local v1, ar:Landroid/os/AsyncResult;
    iget-object v7, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, [I

    check-cast v7, [I

    const/4 v8, 0x0

    aget v7, v7, v8

    const/4 v8, 0x1

    if-ne v7, v8, :cond_10

    .line 723
    iget-object v7, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const-string v8, "- handler : PHONE_SPEECH_INFO enabled!"

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/phone/InCallScreen;->access$200(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 724
    iget-object v7, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const/4 v8, 0x1

    #setter for: Lcom/android/phone/InCallScreen;->mSpeechEnabled:Z
    invoke-static {v7, v8}, Lcom/android/phone/InCallScreen;->access$2302(Lcom/android/phone/InCallScreen;Z)Z

    .line 726
    iget-object v7, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mInCallControlState:Lcom/android/phone/InCallControlState;
    invoke-static {v7}, Lcom/android/phone/InCallScreen;->access$2400(Lcom/android/phone/InCallScreen;)Lcom/android/phone/InCallControlState;

    move-result-object v7

    iget-boolean v7, v7, Lcom/android/phone/InCallControlState;->dialpadEnabled:Z

    if-nez v7, :cond_2

    .line 727
    iget-object v7, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const-string v8, "- handler : PHONE_SPEECH_INFO updateInCallTouchUi!"

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/phone/InCallScreen;->access$200(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 728
    iget-object v7, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->updateInCallTouchUi()V
    invoke-static {v7}, Lcom/android/phone/InCallScreen;->access$2500(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    .line 732
    :cond_10
    iget-object v7, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const-string v8, "- handler : PHONE_SPEECH_INFO disabled!"

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/phone/InCallScreen;->access$200(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 733
    iget-object v7, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const/4 v8, 0x0

    #setter for: Lcom/android/phone/InCallScreen;->mSpeechEnabled:Z
    invoke-static {v7, v8}, Lcom/android/phone/InCallScreen;->access$2302(Lcom/android/phone/InCallScreen;Z)Z

    goto/16 :goto_0

    .line 737
    .end local v1           #ar:Landroid/os/AsyncResult;
    :sswitch_1f
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$100()Z

    move-result v7

    if-eqz v7, :cond_11

    .line 738
    iget-object v7, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const-string v8, "- handler : VT_EM_AUTO_ANSWER ! "

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/phone/InCallScreen;->access$200(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 740
    :cond_11
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/phone/PhoneApp;->isVTRinging()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 741
    iget-object v7, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v7}, Lcom/android/phone/InCallScreen;->getInCallTouchUi()Lcom/android/phone/InCallTouchUi;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/phone/InCallTouchUi;->touchAnswerCall()V

    goto/16 :goto_0

    .line 746
    :sswitch_20
    iget-object v7, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;
    invoke-static {v7}, Lcom/android/phone/InCallScreen;->access$1200(Lcom/android/phone/InCallScreen;)Lcom/android/phone/PhoneApp;

    move-result-object v7

    iget-object v4, v7, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    .line 747
    .local v4, inCallUiState:Lcom/android/phone/InCallUiState;
    const/4 v3, 0x0

    .line 748
    .local v3, handledStartupError:Z
    invoke-virtual {v4}, Lcom/android/phone/InCallUiState;->hasPendingCallStatusCode()Z

    move-result v7

    if-eqz v7, :cond_13

    .line 749
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$100()Z

    move-result v7

    if-eqz v7, :cond_12

    iget-object v7, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const-string v8, "- DELAY_TO_FINISH_INCALLSCREEN: need to show status indication!"

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/phone/InCallScreen;->access$200(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 750
    :cond_12
    iget-object v7, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v4}, Lcom/android/phone/InCallUiState;->getPendingCallStatusCode()Lcom/android/phone/Constants$CallStatusCode;

    move-result-object v8

    #calls: Lcom/android/phone/InCallScreen;->showStatusIndication(Lcom/android/phone/Constants$CallStatusCode;)V
    invoke-static {v7, v8}, Lcom/android/phone/InCallScreen;->access$2600(Lcom/android/phone/InCallScreen;Lcom/android/phone/Constants$CallStatusCode;)V

    .line 755
    const/4 v3, 0x1

    .line 758
    sget-object v7, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v4, v7}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    goto/16 :goto_0

    .line 760
    :cond_13
    iget-object v7, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v7}, Lcom/android/phone/InCallScreen;->access$1300(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v7, v8, :cond_2

    .line 761
    iget-object v7, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v7}, Lcom/android/phone/InCallScreen;->finish()V

    goto/16 :goto_0

    .line 436
    :sswitch_data_0
    .sparse-switch
        -0x4 -> :sswitch_1e
        -0x2 -> :sswitch_1e
        0x33 -> :sswitch_7
        0x34 -> :sswitch_b
        0x35 -> :sswitch_9
        0x36 -> :sswitch_8
        0x37 -> :sswitch_b
        0x38 -> :sswitch_a
        0x65 -> :sswitch_3
        0x66 -> :sswitch_4
        0x67 -> :sswitch_5
        0x68 -> :sswitch_c
        0x6a -> :sswitch_d
        0x6b -> :sswitch_e
        0x6c -> :sswitch_f
        0x6e -> :sswitch_0
        0x72 -> :sswitch_11
        0x73 -> :sswitch_12
        0x76 -> :sswitch_13
        0x77 -> :sswitch_14
        0x78 -> :sswitch_15
        0x79 -> :sswitch_16
        0x7a -> :sswitch_1a
        0x7b -> :sswitch_1b
        0x7c -> :sswitch_1c
        0x7d -> :sswitch_18
        0x82 -> :sswitch_19
        0x8c -> :sswitch_1
        0x8d -> :sswitch_2
        0x8e -> :sswitch_0
        0x8f -> :sswitch_3
        0x90 -> :sswitch_4
        0x91 -> :sswitch_2
        0x92 -> :sswitch_c
        0x93 -> :sswitch_10
        0x94 -> :sswitch_1
        0x95 -> :sswitch_1b
        0x96 -> :sswitch_1c
        0xa0 -> :sswitch_17
        0xa1 -> :sswitch_1d
        0xc9 -> :sswitch_6
        0xca -> :sswitch_1f
        0xcb -> :sswitch_20
    .end sparse-switch
.end method
