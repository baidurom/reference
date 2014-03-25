.class Lcom/android/internal/telephony/UiccCard$2;
.super Landroid/os/Handler;
.source "UiccCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/UiccCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/UiccCard;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/UiccCard;)V
    .locals 0
    .parameter

    .prologue
    .line 455
    iput-object p1, p0, Lcom/android/internal/telephony/UiccCard$2;->this$0:Lcom/android/internal/telephony/UiccCard;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 458
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCard$2;->this$0:Lcom/android/internal/telephony/UiccCard;

    #getter for: Lcom/android/internal/telephony/UiccCard;->mDestroyed:Z
    invoke-static {v4}, Lcom/android/internal/telephony/UiccCard;->access$300(Lcom/android/internal/telephony/UiccCard;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 459
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCard$2;->this$0:Lcom/android/internal/telephony/UiccCard;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received message "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] while being destroyed. Ignoring."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/internal/telephony/UiccCard;->loge(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/UiccCard;->access$400(Lcom/android/internal/telephony/UiccCard;Ljava/lang/String;)V

    .line 540
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 465
    :cond_1
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 538
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCard$2;->this$0:Lcom/android/internal/telephony/UiccCard;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown Event "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/internal/telephony/UiccCard;->loge(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/UiccCard;->access$400(Lcom/android/internal/telephony/UiccCard;Ljava/lang/String;)V

    goto :goto_0

    .line 468
    :sswitch_1
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 469
    .local v1, defaultPhone:Lcom/android/internal/telephony/Phone;
    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .end local v1           #defaultPhone:Lcom/android/internal/telephony/Phone;
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCard$2;->this$0:Lcom/android/internal/telephony/UiccCard;

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccCard;->getMySimId()I

    move-result v4

    invoke-virtual {v1, v4, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->onSimHotSwap(IZ)V

    goto :goto_0

    .line 485
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 486
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_2

    .line 487
    const-string v4, "RIL_UiccCard"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in SIM access with exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    :cond_2
    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Message;

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v4, v5, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 492
    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Message;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 496
    .end local v0           #ar:Landroid/os/AsyncResult;
    :sswitch_3
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCard$2;->this$0:Lcom/android/internal/telephony/UiccCard;

    #getter for: Lcom/android/internal/telephony/UiccCard;->mIccRecords:Lcom/android/internal/telephony/IccRecords;
    invoke-static {v4}, Lcom/android/internal/telephony/UiccCard;->access$500(Lcom/android/internal/telephony/UiccCard;)Lcom/android/internal/telephony/IccRecords;

    move-result-object v4

    instance-of v4, v4, Lcom/android/internal/telephony/gsm/SIMRecords;

    if-eqz v4, :cond_3

    .line 497
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCard$2;->this$0:Lcom/android/internal/telephony/UiccCard;

    iget-object v5, p0, Lcom/android/internal/telephony/UiccCard$2;->this$0:Lcom/android/internal/telephony/UiccCard;

    #getter for: Lcom/android/internal/telephony/UiccCard;->mIccRecords:Lcom/android/internal/telephony/IccRecords;
    invoke-static {v5}, Lcom/android/internal/telephony/UiccCard;->access$500(Lcom/android/internal/telephony/UiccCard;)Lcom/android/internal/telephony/IccRecords;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v5

    #setter for: Lcom/android/internal/telephony/UiccCard;->mGsmImsi:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/internal/telephony/UiccCard;->access$602(Lcom/android/internal/telephony/UiccCard;Ljava/lang/String;)Ljava/lang/String;

    .line 498
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCard$2;->this$0:Lcom/android/internal/telephony/UiccCard;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mGsmImsi = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/UiccCard$2;->this$0:Lcom/android/internal/telephony/UiccCard;

    #getter for: Lcom/android/internal/telephony/UiccCard;->mGsmImsi:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/internal/telephony/UiccCard;->access$600(Lcom/android/internal/telephony/UiccCard;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/internal/telephony/UiccCard;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/UiccCard;->access$100(Lcom/android/internal/telephony/UiccCard;Ljava/lang/String;)V

    .line 499
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCard$2;->this$0:Lcom/android/internal/telephony/UiccCard;

    #getter for: Lcom/android/internal/telephony/UiccCard;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;
    invoke-static {v4}, Lcom/android/internal/telephony/UiccCard;->access$700(Lcom/android/internal/telephony/UiccCard;)Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v4

    const/16 v5, 0x6f22

    const-string v6, "3F007F25"

    const/16 v7, 0x11

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/UiccCard$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 501
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCard$2;->this$0:Lcom/android/internal/telephony/UiccCard;

    #getter for: Lcom/android/internal/telephony/UiccCard;->mIccRecords:Lcom/android/internal/telephony/IccRecords;
    invoke-static {v4}, Lcom/android/internal/telephony/UiccCard;->access$500(Lcom/android/internal/telephony/UiccCard;)Lcom/android/internal/telephony/IccRecords;

    move-result-object v4

    instance-of v4, v4, Lcom/android/internal/telephony/cdma/RuimRecords;

    if-eqz v4, :cond_0

    .line 502
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCard$2;->this$0:Lcom/android/internal/telephony/UiccCard;

    iget-object v5, p0, Lcom/android/internal/telephony/UiccCard$2;->this$0:Lcom/android/internal/telephony/UiccCard;

    #getter for: Lcom/android/internal/telephony/UiccCard;->mIccRecords:Lcom/android/internal/telephony/IccRecords;
    invoke-static {v5}, Lcom/android/internal/telephony/UiccCard;->access$500(Lcom/android/internal/telephony/UiccCard;)Lcom/android/internal/telephony/IccRecords;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v5

    #setter for: Lcom/android/internal/telephony/UiccCard;->mCdmaImsi:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/internal/telephony/UiccCard;->access$802(Lcom/android/internal/telephony/UiccCard;Ljava/lang/String;)Ljava/lang/String;

    .line 503
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCard$2;->this$0:Lcom/android/internal/telephony/UiccCard;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCdmaImsi = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/UiccCard$2;->this$0:Lcom/android/internal/telephony/UiccCard;

    #getter for: Lcom/android/internal/telephony/UiccCard;->mCdmaImsi:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/internal/telephony/UiccCard;->access$800(Lcom/android/internal/telephony/UiccCard;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/internal/telephony/UiccCard;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/UiccCard;->access$100(Lcom/android/internal/telephony/UiccCard;Ljava/lang/String;)V

    .line 504
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCard$2;->this$0:Lcom/android/internal/telephony/UiccCard;

    #getter for: Lcom/android/internal/telephony/UiccCard;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;
    invoke-static {v4}, Lcom/android/internal/telephony/UiccCard;->access$700(Lcom/android/internal/telephony/UiccCard;)Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v4

    const/16 v5, 0x6f07

    const-string v6, "3F007F20"

    const/16 v7, 0x10

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/UiccCard$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 509
    :sswitch_4
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCard$2;->this$0:Lcom/android/internal/telephony/UiccCard;

    const-string v5, "handleMessage (EVENT_GET_CDMA_IMSI_DONE)"

    #calls: Lcom/android/internal/telephony/UiccCard;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/UiccCard;->access$100(Lcom/android/internal/telephony/UiccCard;Ljava/lang/String;)V

    .line 510
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCard$2;->this$0:Lcom/android/internal/telephony/UiccCard;

    #setter for: Lcom/android/internal/telephony/UiccCard;->mGetImsiDoneFlag:Z
    invoke-static {v4, v7}, Lcom/android/internal/telephony/UiccCard;->access$902(Lcom/android/internal/telephony/UiccCard;Z)Z

    .line 511
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 512
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_4

    .line 513
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    move-object v2, v4

    check-cast v2, [B

    .line 514
    .local v2, mCdmaRawData:[B
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCard$2;->this$0:Lcom/android/internal/telephony/UiccCard;

    iget-object v5, p0, Lcom/android/internal/telephony/UiccCard$2;->this$0:Lcom/android/internal/telephony/UiccCard;

    #calls: Lcom/android/internal/telephony/UiccCard;->parseCdmaImsi([B)Ljava/lang/String;
    invoke-static {v5, v2}, Lcom/android/internal/telephony/UiccCard;->access$1000(Lcom/android/internal/telephony/UiccCard;[B)Ljava/lang/String;

    move-result-object v5

    #setter for: Lcom/android/internal/telephony/UiccCard;->mCdmaImsi:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/internal/telephony/UiccCard;->access$802(Lcom/android/internal/telephony/UiccCard;Ljava/lang/String;)Ljava/lang/String;

    .line 515
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCard$2;->this$0:Lcom/android/internal/telephony/UiccCard;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCdmaImsi = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/UiccCard$2;->this$0:Lcom/android/internal/telephony/UiccCard;

    #getter for: Lcom/android/internal/telephony/UiccCard;->mCdmaImsi:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/internal/telephony/UiccCard;->access$800(Lcom/android/internal/telephony/UiccCard;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/internal/telephony/UiccCard;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/UiccCard;->access$100(Lcom/android/internal/telephony/UiccCard;Ljava/lang/String;)V

    .line 519
    .end local v2           #mCdmaRawData:[B
    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCard$2;->this$0:Lcom/android/internal/telephony/UiccCard;

    const-string v5, "notify GET_CDMA_IMSI_DONE"

    #calls: Lcom/android/internal/telephony/UiccCard;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/UiccCard;->access$100(Lcom/android/internal/telephony/UiccCard;Ljava/lang/String;)V

    .line 520
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCard$2;->this$0:Lcom/android/internal/telephony/UiccCard;

    #getter for: Lcom/android/internal/telephony/UiccCard;->mDualImsiReadyRegistrants:Landroid/os/RegistrantList;
    invoke-static {v4}, Lcom/android/internal/telephony/UiccCard;->access$1100(Lcom/android/internal/telephony/UiccCard;)Landroid/os/RegistrantList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto/16 :goto_0

    .line 517
    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCard$2;->this$0:Lcom/android/internal/telephony/UiccCard;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/internal/telephony/UiccCard;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/UiccCard;->access$100(Lcom/android/internal/telephony/UiccCard;Ljava/lang/String;)V

    goto :goto_1

    .line 523
    .end local v0           #ar:Landroid/os/AsyncResult;
    :sswitch_5
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCard$2;->this$0:Lcom/android/internal/telephony/UiccCard;

    #setter for: Lcom/android/internal/telephony/UiccCard;->mGetImsiDoneFlag:Z
    invoke-static {v4, v7}, Lcom/android/internal/telephony/UiccCard;->access$902(Lcom/android/internal/telephony/UiccCard;Z)Z

    .line 524
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCard$2;->this$0:Lcom/android/internal/telephony/UiccCard;

    const-string v5, "handleMessage (EVENT_GET_GSM_IMSI_DONE)"

    #calls: Lcom/android/internal/telephony/UiccCard;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/UiccCard;->access$100(Lcom/android/internal/telephony/UiccCard;Ljava/lang/String;)V

    .line 525
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 526
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    move-object v3, v4

    check-cast v3, [B

    .line 527
    .local v3, mGsmRawData:[B
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_5

    .line 528
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCard$2;->this$0:Lcom/android/internal/telephony/UiccCard;

    aget-byte v5, v3, v6

    invoke-static {v3, v7, v5}, Lcom/android/internal/telephony/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v5

    #setter for: Lcom/android/internal/telephony/UiccCard;->mGsmImsi:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/internal/telephony/UiccCard;->access$602(Lcom/android/internal/telephony/UiccCard;Ljava/lang/String;)Ljava/lang/String;

    .line 529
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCard$2;->this$0:Lcom/android/internal/telephony/UiccCard;

    iget-object v5, p0, Lcom/android/internal/telephony/UiccCard$2;->this$0:Lcom/android/internal/telephony/UiccCard;

    #getter for: Lcom/android/internal/telephony/UiccCard;->mGsmImsi:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/telephony/UiccCard;->access$600(Lcom/android/internal/telephony/UiccCard;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/UiccCard$2;->this$0:Lcom/android/internal/telephony/UiccCard;

    #getter for: Lcom/android/internal/telephony/UiccCard;->mGsmImsi:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/internal/telephony/UiccCard;->access$600(Lcom/android/internal/telephony/UiccCard;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    #setter for: Lcom/android/internal/telephony/UiccCard;->mGsmImsi:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/internal/telephony/UiccCard;->access$602(Lcom/android/internal/telephony/UiccCard;Ljava/lang/String;)Ljava/lang/String;

    .line 530
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCard$2;->this$0:Lcom/android/internal/telephony/UiccCard;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mGsmImsi = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/UiccCard$2;->this$0:Lcom/android/internal/telephony/UiccCard;

    #getter for: Lcom/android/internal/telephony/UiccCard;->mGsmImsi:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/internal/telephony/UiccCard;->access$600(Lcom/android/internal/telephony/UiccCard;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/internal/telephony/UiccCard;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/UiccCard;->access$100(Lcom/android/internal/telephony/UiccCard;Ljava/lang/String;)V

    .line 534
    :goto_2
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCard$2;->this$0:Lcom/android/internal/telephony/UiccCard;

    const-string v5, "notify GET_GSM_IMSI_DONE"

    #calls: Lcom/android/internal/telephony/UiccCard;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/UiccCard;->access$100(Lcom/android/internal/telephony/UiccCard;Ljava/lang/String;)V

    .line 535
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCard$2;->this$0:Lcom/android/internal/telephony/UiccCard;

    #getter for: Lcom/android/internal/telephony/UiccCard;->mDualImsiReadyRegistrants:Landroid/os/RegistrantList;
    invoke-static {v4}, Lcom/android/internal/telephony/UiccCard;->access$1100(Lcom/android/internal/telephony/UiccCard;)Landroid/os/RegistrantList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto/16 :goto_0

    .line 532
    :cond_5
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCard$2;->this$0:Lcom/android/internal/telephony/UiccCard;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/internal/telephony/UiccCard;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/UiccCard;->access$100(Lcom/android/internal/telephony/UiccCard;Ljava/lang/String;)V

    goto :goto_2

    .line 465
    nop

    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_1
        0xe -> :sswitch_0
        0xf -> :sswitch_3
        0x10 -> :sswitch_5
        0x11 -> :sswitch_4
        0x64 -> :sswitch_2
        0x65 -> :sswitch_2
        0x66 -> :sswitch_2
        0x67 -> :sswitch_2
        0x68 -> :sswitch_2
        0x69 -> :sswitch_2
    .end sparse-switch
.end method
