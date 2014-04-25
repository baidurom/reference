.class Lcom/android/phone/UnlockPIN2Lock$4;
.super Landroid/os/Handler;
.source "UnlockPIN2Lock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/UnlockPIN2Lock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/UnlockPIN2Lock;


# direct methods
.method constructor <init>(Lcom/android/phone/UnlockPIN2Lock;)V
    .locals 0
    .parameter

    .prologue
    .line 573
    iput-object p1, p0, Lcom/android/phone/UnlockPIN2Lock$4;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 575
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 576
    .local v0, ar:Landroid/os/AsyncResult;
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 694
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 695
    iget-object v5, p0, Lcom/android/phone/UnlockPIN2Lock$4;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    iget-object v5, v5, Lcom/android/phone/UnlockPIN2Lock;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    .line 696
    return-void

    .line 579
    :pswitch_1
    const-string v5, "UnlockPIN2Lock "

    const-string v6, "[mHandler][MSG2] +"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    .line 581
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 582
    .local v3, phone:Lcom/android/internal/telephony/Phone;
    iget-object v5, p0, Lcom/android/phone/UnlockPIN2Lock$4;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    iget-object v6, p0, Lcom/android/phone/UnlockPIN2Lock$4;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    #calls: Lcom/android/phone/UnlockPIN2Lock;->getRetryPin2Count(I)I
    invoke-static {v6, v8}, Lcom/android/phone/UnlockPIN2Lock;->access$100(Lcom/android/phone/UnlockPIN2Lock;I)I

    move-result v6

    iput v6, v5, Lcom/android/phone/UnlockPIN2Lock;->retryCount:I

    .line 583
    const-string v5, "UnlockPIN2Lock "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[mHandler][MSG2][Single Card][PIN_REQUIRED][New Retry Count] : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/UnlockPIN2Lock$4;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    iget v7, v7, Lcom/android/phone/UnlockPIN2Lock;->retryCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    iget-object v5, p0, Lcom/android/phone/UnlockPIN2Lock$4;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    iget v5, v5, Lcom/android/phone/UnlockPIN2Lock;->retryCount:I

    if-lez v5, :cond_0

    .line 585
    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/phone/UnlockPIN2Lock$4;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    const-class v6, Lcom/android/phone/UnlockPIN2Lock;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 586
    .local v2, intent:Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 587
    .local v1, bundle:Landroid/os/Bundle;
    const-string v5, "PUKLEFTRETRIES"

    iget-object v6, p0, Lcom/android/phone/UnlockPIN2Lock$4;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    iget v6, v6, Lcom/android/phone/UnlockPIN2Lock;->retryCount:I

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 588
    const-string v5, "PhoneConstants.GEMINI_SIM_ID_KEY"

    sget v6, Lcom/android/phone/UnlockPIN2Lock;->iSIMMEUnlockNo:I

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 589
    const-string v5, "WRONGCODE"

    const-string v6, "Wrong code."

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 591
    iget-object v5, p0, Lcom/android/phone/UnlockPIN2Lock$4;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    invoke-virtual {v5, v2}, Lcom/android/phone/UnlockPIN2Lock;->startActivity(Landroid/content/Intent;)V

    .line 592
    iget-object v5, p0, Lcom/android/phone/UnlockPIN2Lock$4;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    invoke-virtual {v5}, Lcom/android/phone/UnlockPIN2Lock;->finish()V

    goto :goto_0

    .line 595
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_0
    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/phone/UnlockPIN2Lock$4;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    const-class v6, Lcom/android/phone/UnlockPUK2Lock;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 596
    .restart local v2       #intent:Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 597
    .restart local v1       #bundle:Landroid/os/Bundle;
    iget-object v5, p0, Lcom/android/phone/UnlockPIN2Lock$4;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    #calls: Lcom/android/phone/UnlockPIN2Lock;->getRetryPuk2Count(I)I
    invoke-static {v5, v8}, Lcom/android/phone/UnlockPIN2Lock;->access$200(Lcom/android/phone/UnlockPIN2Lock;I)I

    move-result v4

    .line 598
    .local v4, retryPUKCount:I
    const-string v5, "PUKPHASE"

    const-string v6, "1"

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    const-string v5, "PUKLEFTRETRIES"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 600
    const-string v5, "PhoneConstants.GEMINI_SIM_ID_KEY"

    sget v6, Lcom/android/phone/UnlockPIN2Lock;->iSIMMEUnlockNo:I

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 601
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 602
    iget-object v5, p0, Lcom/android/phone/UnlockPIN2Lock$4;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    invoke-virtual {v5, v2}, Lcom/android/phone/UnlockPIN2Lock;->startActivity(Landroid/content/Intent;)V

    .line 603
    iget-object v5, p0, Lcom/android/phone/UnlockPIN2Lock$4;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    invoke-virtual {v5}, Lcom/android/phone/UnlockPIN2Lock;->finish()V

    goto/16 :goto_0

    .line 608
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #phone:Lcom/android/internal/telephony/Phone;
    .end local v4           #retryPUKCount:I
    :cond_1
    iget-object v5, p0, Lcom/android/phone/UnlockPIN2Lock$4;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    invoke-virtual {v5}, Lcom/android/phone/UnlockPIN2Lock;->finish()V

    goto/16 :goto_0

    .line 615
    :pswitch_2
    const-string v5, "UnlockPIN2Lock "

    const-string v6, "[mHandler][MSG3] +"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_3

    .line 619
    const-string v5, "UnlockPIN2Lock "

    const-string v6, "[mHandler][MSG3][Gemini Card][SIM1][UnlockPinFail]+"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    const-string v5, "UnlockPIN2Lock "

    const-string v6, "[mHandler][MSG3][Gemini Card][SIM1][Still PIN_REQUIRED]"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    iget-object v5, p0, Lcom/android/phone/UnlockPIN2Lock$4;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    iget-object v6, p0, Lcom/android/phone/UnlockPIN2Lock$4;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    #calls: Lcom/android/phone/UnlockPIN2Lock;->getRetryPin2Count(I)I
    invoke-static {v6, v8}, Lcom/android/phone/UnlockPIN2Lock;->access$100(Lcom/android/phone/UnlockPIN2Lock;I)I

    move-result v6

    iput v6, v5, Lcom/android/phone/UnlockPIN2Lock;->retryCount:I

    .line 623
    const-string v5, "UnlockPIN2Lock "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[mHandler][MSG3][Gemini Card][SIM1][New Retry Count] : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/UnlockPIN2Lock$4;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    iget v7, v7, Lcom/android/phone/UnlockPIN2Lock;->retryCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    iget-object v5, p0, Lcom/android/phone/UnlockPIN2Lock$4;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    iget v5, v5, Lcom/android/phone/UnlockPIN2Lock;->retryCount:I

    if-lez v5, :cond_2

    .line 625
    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/phone/UnlockPIN2Lock$4;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    const-class v6, Lcom/android/phone/UnlockPIN2Lock;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 626
    .restart local v2       #intent:Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 627
    .restart local v1       #bundle:Landroid/os/Bundle;
    const-string v5, "PUKLEFTRETRIES"

    iget-object v6, p0, Lcom/android/phone/UnlockPIN2Lock$4;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    iget v6, v6, Lcom/android/phone/UnlockPIN2Lock;->retryCount:I

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 628
    const-string v5, "PhoneConstants.GEMINI_SIM_ID_KEY"

    sget v6, Lcom/android/phone/UnlockPIN2Lock;->iSIMMEUnlockNo:I

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 629
    const-string v5, "WRONGCODE"

    const-string v6, "Wrong code."

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 631
    iget-object v5, p0, Lcom/android/phone/UnlockPIN2Lock$4;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    invoke-virtual {v5, v2}, Lcom/android/phone/UnlockPIN2Lock;->startActivity(Landroid/content/Intent;)V

    .line 632
    iget-object v5, p0, Lcom/android/phone/UnlockPIN2Lock$4;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    invoke-virtual {v5}, Lcom/android/phone/UnlockPIN2Lock;->finish()V

    goto/16 :goto_0

    .line 635
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_2
    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/phone/UnlockPIN2Lock$4;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    const-class v6, Lcom/android/phone/UnlockPUK2Lock;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 636
    .restart local v2       #intent:Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 637
    .restart local v1       #bundle:Landroid/os/Bundle;
    iget-object v5, p0, Lcom/android/phone/UnlockPIN2Lock$4;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    #calls: Lcom/android/phone/UnlockPIN2Lock;->getRetryPuk2Count(I)I
    invoke-static {v5, v8}, Lcom/android/phone/UnlockPIN2Lock;->access$200(Lcom/android/phone/UnlockPIN2Lock;I)I

    move-result v4

    .line 638
    .restart local v4       #retryPUKCount:I
    const-string v5, "PUKPHASE"

    const-string v6, "1"

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    const-string v5, "PUKLEFTRETRIES"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 640
    const-string v5, "PhoneConstants.GEMINI_SIM_ID_KEY"

    sget v6, Lcom/android/phone/UnlockPIN2Lock;->iSIMMEUnlockNo:I

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 641
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 642
    iget-object v5, p0, Lcom/android/phone/UnlockPIN2Lock$4;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    invoke-virtual {v5, v2}, Lcom/android/phone/UnlockPIN2Lock;->startActivity(Landroid/content/Intent;)V

    .line 643
    iget-object v5, p0, Lcom/android/phone/UnlockPIN2Lock$4;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    invoke-virtual {v5}, Lcom/android/phone/UnlockPIN2Lock;->finish()V

    goto/16 :goto_0

    .line 648
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v4           #retryPUKCount:I
    :cond_3
    iget-object v5, p0, Lcom/android/phone/UnlockPIN2Lock$4;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    invoke-virtual {v5}, Lcom/android/phone/UnlockPIN2Lock;->finish()V

    .line 649
    iget-object v5, p0, Lcom/android/phone/UnlockPIN2Lock$4;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    iget-object v5, v5, Lcom/android/phone/UnlockPIN2Lock;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    goto/16 :goto_0

    .line 656
    :pswitch_3
    const-string v5, "UnlockPIN2Lock "

    const-string v6, "[mHandler][MSG4] +"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_5

    .line 658
    const-string v5, "UnlockPIN2Lock "

    const-string v6, "[mHandler][MSG3][Gemini Card][SIM2][PIN_REQUIRED][UnlockPinFail]+"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    const-string v5, "UnlockPIN2Lock "

    const-string v6, "[mHandler][MSG3][Gemini Card][SIM2][PIN_REQUIRED][Still PIN_REQUIRED]"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    iget-object v5, p0, Lcom/android/phone/UnlockPIN2Lock$4;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    iget-object v6, p0, Lcom/android/phone/UnlockPIN2Lock$4;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    #calls: Lcom/android/phone/UnlockPIN2Lock;->getRetryPin2Count(I)I
    invoke-static {v6, v9}, Lcom/android/phone/UnlockPIN2Lock;->access$100(Lcom/android/phone/UnlockPIN2Lock;I)I

    move-result v6

    iput v6, v5, Lcom/android/phone/UnlockPIN2Lock;->retryCount:I

    .line 661
    const-string v5, "UnlockPIN2Lock "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[mHandler][MSG3][Gemini Card][SIM2][New Retry Count] : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/UnlockPIN2Lock$4;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    iget v7, v7, Lcom/android/phone/UnlockPIN2Lock;->retryCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    iget-object v5, p0, Lcom/android/phone/UnlockPIN2Lock$4;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    iget v5, v5, Lcom/android/phone/UnlockPIN2Lock;->retryCount:I

    if-lez v5, :cond_4

    .line 663
    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/phone/UnlockPIN2Lock$4;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    const-class v6, Lcom/android/phone/UnlockPIN2Lock;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 664
    .restart local v2       #intent:Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 665
    .restart local v1       #bundle:Landroid/os/Bundle;
    const-string v5, "PUKLEFTRETRIES"

    iget-object v6, p0, Lcom/android/phone/UnlockPIN2Lock$4;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    iget v6, v6, Lcom/android/phone/UnlockPIN2Lock;->retryCount:I

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 666
    const-string v5, "PhoneConstants.GEMINI_SIM_ID_KEY"

    sget v6, Lcom/android/phone/UnlockPIN2Lock;->iSIMMEUnlockNo:I

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 667
    const-string v5, "WRONGCODE"

    const-string v6, "Wrong code."

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 669
    iget-object v5, p0, Lcom/android/phone/UnlockPIN2Lock$4;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    invoke-virtual {v5, v2}, Lcom/android/phone/UnlockPIN2Lock;->startActivity(Landroid/content/Intent;)V

    .line 670
    iget-object v5, p0, Lcom/android/phone/UnlockPIN2Lock$4;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    invoke-virtual {v5}, Lcom/android/phone/UnlockPIN2Lock;->finish()V

    .line 671
    iget-object v5, p0, Lcom/android/phone/UnlockPIN2Lock$4;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    iget-object v5, v5, Lcom/android/phone/UnlockPIN2Lock;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    goto/16 :goto_0

    .line 674
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_4
    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/phone/UnlockPIN2Lock$4;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    const-class v6, Lcom/android/phone/UnlockPUK2Lock;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 675
    .restart local v2       #intent:Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 676
    .restart local v1       #bundle:Landroid/os/Bundle;
    iget-object v5, p0, Lcom/android/phone/UnlockPIN2Lock$4;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    #calls: Lcom/android/phone/UnlockPIN2Lock;->getRetryPuk2Count(I)I
    invoke-static {v5, v9}, Lcom/android/phone/UnlockPIN2Lock;->access$200(Lcom/android/phone/UnlockPIN2Lock;I)I

    move-result v4

    .line 677
    .restart local v4       #retryPUKCount:I
    const-string v5, "PUKPHASE"

    const-string v6, "1"

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    const-string v5, "PUKLEFTRETRIES"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 679
    const-string v5, "PhoneConstants.GEMINI_SIM_ID_KEY"

    sget v6, Lcom/android/phone/UnlockPIN2Lock;->iSIMMEUnlockNo:I

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 680
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 681
    iget-object v5, p0, Lcom/android/phone/UnlockPIN2Lock$4;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    invoke-virtual {v5, v2}, Lcom/android/phone/UnlockPIN2Lock;->startActivity(Landroid/content/Intent;)V

    .line 682
    iget-object v5, p0, Lcom/android/phone/UnlockPIN2Lock$4;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    invoke-virtual {v5}, Lcom/android/phone/UnlockPIN2Lock;->finish()V

    .line 683
    iget-object v5, p0, Lcom/android/phone/UnlockPIN2Lock$4;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    iget-object v5, v5, Lcom/android/phone/UnlockPIN2Lock;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    goto/16 :goto_0

    .line 688
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v4           #retryPUKCount:I
    :cond_5
    iget-object v5, p0, Lcom/android/phone/UnlockPIN2Lock$4;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    invoke-virtual {v5}, Lcom/android/phone/UnlockPIN2Lock;->finish()V

    .line 689
    iget-object v5, p0, Lcom/android/phone/UnlockPIN2Lock$4;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    iget-object v5, v5, Lcom/android/phone/UnlockPIN2Lock;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    goto/16 :goto_0

    .line 576
    nop

    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
