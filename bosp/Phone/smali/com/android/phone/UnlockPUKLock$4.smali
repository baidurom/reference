.class Lcom/android/phone/UnlockPUKLock$4;
.super Landroid/os/Handler;
.source "UnlockPUKLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/UnlockPUKLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/UnlockPUKLock;


# direct methods
.method constructor <init>(Lcom/android/phone/UnlockPUKLock;)V
    .locals 0
    .parameter

    .prologue
    .line 676
    iput-object p1, p0, Lcom/android/phone/UnlockPUKLock$4;->this$0:Lcom/android/phone/UnlockPUKLock;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/16 v10, 0x1f6

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 679
    iget-object v5, p0, Lcom/android/phone/UnlockPUKLock$4;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v5, v5, Lcom/android/phone/UnlockPUKLock;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/phone/UnlockPUKLock$4;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v5, v5, Lcom/android/phone/UnlockPUKLock;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 681
    :try_start_0
    iget-object v5, p0, Lcom/android/phone/UnlockPUKLock$4;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v5, v5, Lcom/android/phone/UnlockPUKLock;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 685
    :goto_0
    iget-object v5, p0, Lcom/android/phone/UnlockPUKLock$4;->this$0:Lcom/android/phone/UnlockPUKLock;

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/android/phone/UnlockPUKLock;->progressDialog:Landroid/app/ProgressDialog;

    .line 687
    :cond_0
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 795
    :cond_1
    :goto_1
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 797
    :goto_2
    return-void

    .line 682
    :catch_0
    move-exception v1

    .line 683
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "UnlockPUKLock "

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 691
    .end local v1           #e:Ljava/lang/Exception;
    :pswitch_1
    const-string v5, "UnlockPUKLock "

    const-string v6, "[mHandler][MSG2] +"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    const-string v5, "UnlockPUKLock "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[mHandler][MSG2][Result] : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/android/phone/UnlockPUKLock;->access$100()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    invoke-static {}, Lcom/android/phone/UnlockPUKLock;->access$100()Z

    move-result v5

    if-ne v5, v9, :cond_2

    .line 695
    iget-object v5, p0, Lcom/android/phone/UnlockPUKLock$4;->this$0:Lcom/android/phone/UnlockPUKLock;

    invoke-virtual {v5}, Lcom/android/phone/UnlockPUKLock;->finish()V

    goto :goto_1

    .line 698
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    .line 699
    .local v4, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v5, v6, :cond_1

    .line 700
    iget-object v5, p0, Lcom/android/phone/UnlockPUKLock$4;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v6, p0, Lcom/android/phone/UnlockPUKLock$4;->this$0:Lcom/android/phone/UnlockPUKLock;

    #calls: Lcom/android/phone/UnlockPUKLock;->getRetryPukCount(I)I
    invoke-static {v6, v8}, Lcom/android/phone/UnlockPUKLock;->access$200(Lcom/android/phone/UnlockPUKLock;I)I

    move-result v6

    iput v6, v5, Lcom/android/phone/UnlockPUKLock;->retryCount:I

    .line 701
    const-string v5, "UnlockPUKLock "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[mHandler][MSG2][Single Card][PUK_REQUIRED][New Retry Count] : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/UnlockPUKLock$4;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget v7, v7, Lcom/android/phone/UnlockPUKLock;->retryCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    iget-object v5, p0, Lcom/android/phone/UnlockPUKLock$4;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget v5, v5, Lcom/android/phone/UnlockPUKLock;->retryCount:I

    if-lez v5, :cond_3

    .line 703
    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/phone/UnlockPUKLock$4;->this$0:Lcom/android/phone/UnlockPUKLock;

    const-class v6, Lcom/android/phone/UnlockPUKLock;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 704
    .local v2, intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 705
    .local v0, bundle:Landroid/os/Bundle;
    const-string v5, "PUKPHASE"

    const-string v6, "1"

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    const-string v5, "PUKLEFTRETRIES"

    iget-object v6, p0, Lcom/android/phone/UnlockPUKLock$4;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget v6, v6, Lcom/android/phone/UnlockPUKLock;->retryCount:I

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 707
    const-string v5, "PhoneConstants.GEMINI_SIM_ID_KEY"

    iget-object v6, p0, Lcom/android/phone/UnlockPUKLock$4;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget v6, v6, Lcom/android/phone/UnlockPUKLock;->iSIMMEUnlockNo:I

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 708
    const-string v5, "WRONGCODE"

    const-string v6, "Wrong code."

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 710
    iget-object v5, p0, Lcom/android/phone/UnlockPUKLock$4;->this$0:Lcom/android/phone/UnlockPUKLock;

    invoke-virtual {v5, v2}, Lcom/android/phone/UnlockPUKLock;->startActivity(Landroid/content/Intent;)V

    .line 711
    iget-object v5, p0, Lcom/android/phone/UnlockPUKLock$4;->this$0:Lcom/android/phone/UnlockPUKLock;

    invoke-virtual {v5}, Lcom/android/phone/UnlockPUKLock;->finish()V

    goto/16 :goto_1

    .line 714
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_3
    iget-object v5, p0, Lcom/android/phone/UnlockPUKLock$4;->this$0:Lcom/android/phone/UnlockPUKLock;

    invoke-virtual {v5, v10, v8}, Lcom/android/phone/UnlockPUKLock;->sendVerifyResult(IZ)V

    .line 715
    iget-object v5, p0, Lcom/android/phone/UnlockPUKLock$4;->this$0:Lcom/android/phone/UnlockPUKLock;

    invoke-virtual {v5}, Lcom/android/phone/UnlockPUKLock;->finish()V

    goto/16 :goto_1

    .line 725
    .end local v4           #phone:Lcom/android/internal/telephony/Phone;
    :pswitch_2
    const-string v5, "UnlockPUKLock "

    const-string v6, "[mHandler][MSG3] +"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    const-string v5, "UnlockPUKLock "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[mHandler][MSG3][Result] : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/android/phone/UnlockPUKLock;->access$100()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    invoke-static {}, Lcom/android/phone/UnlockPUKLock;->access$100()Z

    move-result v5

    if-ne v5, v9, :cond_4

    .line 729
    iget-object v5, p0, Lcom/android/phone/UnlockPUKLock$4;->this$0:Lcom/android/phone/UnlockPUKLock;

    invoke-virtual {v5}, Lcom/android/phone/UnlockPUKLock;->finish()V

    goto/16 :goto_1

    .line 732
    :cond_4
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 733
    .local v3, mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    const-string v5, "UnlockPUKLock "

    const-string v6, "[mHandler][MSG3][Gemini Card][SIM1][UnlockPinFail]+"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    invoke-virtual {v3, v8}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v5, v6, :cond_1

    .line 735
    const-string v5, "UnlockPUKLock "

    const-string v6, "[mHandler][MSG3][Gemini Card][SIM1][Still PUK_REQUIRED]"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    iget-object v5, p0, Lcom/android/phone/UnlockPUKLock$4;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v6, p0, Lcom/android/phone/UnlockPUKLock$4;->this$0:Lcom/android/phone/UnlockPUKLock;

    #calls: Lcom/android/phone/UnlockPUKLock;->getRetryPukCount(I)I
    invoke-static {v6, v8}, Lcom/android/phone/UnlockPUKLock;->access$200(Lcom/android/phone/UnlockPUKLock;I)I

    move-result v6

    iput v6, v5, Lcom/android/phone/UnlockPUKLock;->retryCount:I

    .line 737
    const-string v5, "UnlockPUKLock "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[mHandler][MSG3][Gemini Card][SIM1][New Retry Count] : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/UnlockPUKLock$4;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget v7, v7, Lcom/android/phone/UnlockPUKLock;->retryCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    iget-object v5, p0, Lcom/android/phone/UnlockPUKLock$4;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget v5, v5, Lcom/android/phone/UnlockPUKLock;->retryCount:I

    if-lez v5, :cond_5

    .line 739
    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/phone/UnlockPUKLock$4;->this$0:Lcom/android/phone/UnlockPUKLock;

    const-class v6, Lcom/android/phone/UnlockPUKLock;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 740
    .restart local v2       #intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 741
    .restart local v0       #bundle:Landroid/os/Bundle;
    const-string v5, "PUKPHASE"

    const-string v6, "1"

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    const-string v5, "PUKLEFTRETRIES"

    iget-object v6, p0, Lcom/android/phone/UnlockPUKLock$4;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget v6, v6, Lcom/android/phone/UnlockPUKLock;->retryCount:I

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 743
    const-string v5, "PhoneConstants.GEMINI_SIM_ID_KEY"

    iget-object v6, p0, Lcom/android/phone/UnlockPUKLock$4;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget v6, v6, Lcom/android/phone/UnlockPUKLock;->iSIMMEUnlockNo:I

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 744
    const-string v5, "WRONGCODE"

    const-string v6, "Wrong code."

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 746
    iget-object v5, p0, Lcom/android/phone/UnlockPUKLock$4;->this$0:Lcom/android/phone/UnlockPUKLock;

    invoke-virtual {v5, v2}, Lcom/android/phone/UnlockPUKLock;->startActivity(Landroid/content/Intent;)V

    .line 747
    iget-object v5, p0, Lcom/android/phone/UnlockPUKLock$4;->this$0:Lcom/android/phone/UnlockPUKLock;

    invoke-virtual {v5}, Lcom/android/phone/UnlockPUKLock;->finish()V

    goto/16 :goto_1

    .line 750
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_5
    iget-object v5, p0, Lcom/android/phone/UnlockPUKLock$4;->this$0:Lcom/android/phone/UnlockPUKLock;

    invoke-virtual {v5, v10, v8}, Lcom/android/phone/UnlockPUKLock;->sendVerifyResult(IZ)V

    .line 751
    iget-object v5, p0, Lcom/android/phone/UnlockPUKLock$4;->this$0:Lcom/android/phone/UnlockPUKLock;

    invoke-virtual {v5}, Lcom/android/phone/UnlockPUKLock;->finish()V

    goto/16 :goto_1

    .line 761
    .end local v3           #mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    :pswitch_3
    const-string v5, "UnlockPUKLock "

    const-string v6, "[mHandler][MSG4] +"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    const-string v5, "UnlockPUKLock "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[mHandler][MSG4][Result] : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/android/phone/UnlockPUKLock;->access$100()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    invoke-static {}, Lcom/android/phone/UnlockPUKLock;->access$100()Z

    move-result v5

    if-ne v5, v9, :cond_6

    .line 765
    iget-object v5, p0, Lcom/android/phone/UnlockPUKLock$4;->this$0:Lcom/android/phone/UnlockPUKLock;

    invoke-virtual {v5}, Lcom/android/phone/UnlockPUKLock;->finish()V

    goto/16 :goto_2

    .line 768
    :cond_6
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 769
    .restart local v3       #mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    const-string v5, "UnlockPUKLock "

    const-string v6, "[mHandler][MSG3][Gemini Card][SIM2][PUK_REQUIRED][UnlockPinFail]+"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    invoke-virtual {v3, v9}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v5, v6, :cond_1

    .line 771
    const-string v5, "UnlockPUKLock "

    const-string v6, "[mHandler][MSG3][Gemini Card][SIM2][PUK_REQUIRED][Still PUK_REQUIRED]"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    iget-object v5, p0, Lcom/android/phone/UnlockPUKLock$4;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v6, p0, Lcom/android/phone/UnlockPUKLock$4;->this$0:Lcom/android/phone/UnlockPUKLock;

    #calls: Lcom/android/phone/UnlockPUKLock;->getRetryPukCount(I)I
    invoke-static {v6, v9}, Lcom/android/phone/UnlockPUKLock;->access$200(Lcom/android/phone/UnlockPUKLock;I)I

    move-result v6

    iput v6, v5, Lcom/android/phone/UnlockPUKLock;->retryCount:I

    .line 773
    const-string v5, "UnlockPUKLock "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[mHandler][MSG3][Gemini Card][SIM2][New Retry Count] : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/UnlockPUKLock$4;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget v7, v7, Lcom/android/phone/UnlockPUKLock;->retryCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    iget-object v5, p0, Lcom/android/phone/UnlockPUKLock$4;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget v5, v5, Lcom/android/phone/UnlockPUKLock;->retryCount:I

    if-lez v5, :cond_7

    .line 775
    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/phone/UnlockPUKLock$4;->this$0:Lcom/android/phone/UnlockPUKLock;

    const-class v6, Lcom/android/phone/UnlockPUKLock;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 776
    .restart local v2       #intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 777
    .restart local v0       #bundle:Landroid/os/Bundle;
    const-string v5, "PUKPHASE"

    const-string v6, "1"

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    const-string v5, "PUKLEFTRETRIES"

    iget-object v6, p0, Lcom/android/phone/UnlockPUKLock$4;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget v6, v6, Lcom/android/phone/UnlockPUKLock;->retryCount:I

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 779
    const-string v5, "PhoneConstants.GEMINI_SIM_ID_KEY"

    iget-object v6, p0, Lcom/android/phone/UnlockPUKLock$4;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget v6, v6, Lcom/android/phone/UnlockPUKLock;->iSIMMEUnlockNo:I

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 780
    const-string v5, "WRONGCODE"

    const-string v6, "Wrong code."

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 782
    iget-object v5, p0, Lcom/android/phone/UnlockPUKLock$4;->this$0:Lcom/android/phone/UnlockPUKLock;

    invoke-virtual {v5, v2}, Lcom/android/phone/UnlockPUKLock;->startActivity(Landroid/content/Intent;)V

    .line 783
    iget-object v5, p0, Lcom/android/phone/UnlockPUKLock$4;->this$0:Lcom/android/phone/UnlockPUKLock;

    invoke-virtual {v5}, Lcom/android/phone/UnlockPUKLock;->finish()V

    goto/16 :goto_1

    .line 786
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_7
    iget-object v5, p0, Lcom/android/phone/UnlockPUKLock$4;->this$0:Lcom/android/phone/UnlockPUKLock;

    invoke-virtual {v5, v10, v8}, Lcom/android/phone/UnlockPUKLock;->sendVerifyResult(IZ)V

    .line 787
    iget-object v5, p0, Lcom/android/phone/UnlockPUKLock$4;->this$0:Lcom/android/phone/UnlockPUKLock;

    invoke-virtual {v5}, Lcom/android/phone/UnlockPUKLock;->finish()V

    goto/16 :goto_1

    .line 687
    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
