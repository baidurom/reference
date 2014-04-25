.class Lcom/android/phone/UnlockPUK2Lock$4;
.super Landroid/os/Handler;
.source "UnlockPUK2Lock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/UnlockPUK2Lock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/UnlockPUK2Lock;


# direct methods
.method constructor <init>(Lcom/android/phone/UnlockPUK2Lock;)V
    .locals 0
    .parameter

    .prologue
    .line 644
    iput-object p1, p0, Lcom/android/phone/UnlockPUK2Lock$4;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/16 v7, 0x1f9

    const/4 v6, 0x0

    .line 646
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 647
    .local v0, ar:Landroid/os/AsyncResult;
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 735
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 736
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$4;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget-object v3, v3, Lcom/android/phone/UnlockPUK2Lock;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 737
    return-void

    .line 651
    :pswitch_1
    const-string v3, "UnlockPUK2Lock "

    const-string v4, "[mHandler][MSG2] +"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_1

    .line 653
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$4;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$4;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    #calls: Lcom/android/phone/UnlockPUK2Lock;->getRetryPuk2Count(I)I
    invoke-static {v4, v6}, Lcom/android/phone/UnlockPUK2Lock;->access$100(Lcom/android/phone/UnlockPUK2Lock;I)I

    move-result v4

    iput v4, v3, Lcom/android/phone/UnlockPUK2Lock;->retryCount:I

    .line 654
    const-string v3, "UnlockPUK2Lock "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[mHandler][MSG2][Single Card][PUK_REQUIRED][New Retry Count] : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/UnlockPUK2Lock$4;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget v5, v5, Lcom/android/phone/UnlockPUK2Lock;->retryCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$4;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget v3, v3, Lcom/android/phone/UnlockPUK2Lock;->retryCount:I

    if-lez v3, :cond_0

    .line 656
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$4;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    const-class v4, Lcom/android/phone/UnlockPUK2Lock;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 657
    .local v2, intent:Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 658
    .local v1, bundle:Landroid/os/Bundle;
    const-string v3, "PUKPHASE"

    const-string v4, "1"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    const-string v3, "PUKLEFTRETRIES"

    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$4;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget v4, v4, Lcom/android/phone/UnlockPUK2Lock;->retryCount:I

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 660
    const-string v3, "PhoneConstants.GEMINI_SIM_ID_KEY"

    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$4;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget v4, v4, Lcom/android/phone/UnlockPUK2Lock;->iSIMMEUnlockNo:I

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 661
    const-string v3, "WRONGCODE"

    const-string v4, "Wrong code."

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 663
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$4;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    invoke-virtual {v3, v2}, Lcom/android/phone/UnlockPUK2Lock;->startActivity(Landroid/content/Intent;)V

    .line 664
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$4;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    invoke-virtual {v3}, Lcom/android/phone/UnlockPUK2Lock;->finish()V

    goto :goto_0

    .line 667
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_0
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$4;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    invoke-virtual {v3, v7, v6}, Lcom/android/phone/UnlockPUK2Lock;->sendVerifyResult(IZ)V

    .line 668
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$4;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    invoke-virtual {v3}, Lcom/android/phone/UnlockPUK2Lock;->finish()V

    goto/16 :goto_0

    .line 672
    :cond_1
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$4;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    invoke-virtual {v3}, Lcom/android/phone/UnlockPUK2Lock;->finish()V

    goto/16 :goto_0

    .line 679
    :pswitch_2
    const-string v3, "UnlockPUK2Lock "

    const-string v4, "[mHandler][MSG3] +"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_3

    .line 681
    const-string v3, "UnlockPUK2Lock "

    const-string v4, "[mHandler][MSG3][Gemini Card][SIM1][UnlockPinFail]+"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$4;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$4;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    #calls: Lcom/android/phone/UnlockPUK2Lock;->getRetryPuk2Count(I)I
    invoke-static {v4, v6}, Lcom/android/phone/UnlockPUK2Lock;->access$100(Lcom/android/phone/UnlockPUK2Lock;I)I

    move-result v4

    iput v4, v3, Lcom/android/phone/UnlockPUK2Lock;->retryCount:I

    .line 683
    const-string v3, "UnlockPUK2Lock "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[mHandler][MSG3][Gemini Card][SIM1][New Retry Count] : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/UnlockPUK2Lock$4;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget v5, v5, Lcom/android/phone/UnlockPUK2Lock;->retryCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$4;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget v3, v3, Lcom/android/phone/UnlockPUK2Lock;->retryCount:I

    if-lez v3, :cond_2

    .line 685
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$4;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    const-class v4, Lcom/android/phone/UnlockPUK2Lock;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 686
    .restart local v2       #intent:Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 687
    .restart local v1       #bundle:Landroid/os/Bundle;
    const-string v3, "PUKPHASE"

    const-string v4, "1"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    const-string v3, "PUKLEFTRETRIES"

    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$4;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget v4, v4, Lcom/android/phone/UnlockPUK2Lock;->retryCount:I

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 689
    const-string v3, "PhoneConstants.GEMINI_SIM_ID_KEY"

    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$4;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget v4, v4, Lcom/android/phone/UnlockPUK2Lock;->iSIMMEUnlockNo:I

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 690
    const-string v3, "WRONGCODE"

    const-string v4, "Wrong code."

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 692
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$4;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    invoke-virtual {v3, v2}, Lcom/android/phone/UnlockPUK2Lock;->startActivity(Landroid/content/Intent;)V

    .line 693
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$4;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    invoke-virtual {v3}, Lcom/android/phone/UnlockPUK2Lock;->finish()V

    goto/16 :goto_0

    .line 696
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_2
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$4;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    invoke-virtual {v3, v7, v6}, Lcom/android/phone/UnlockPUK2Lock;->sendVerifyResult(IZ)V

    .line 697
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$4;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    invoke-virtual {v3}, Lcom/android/phone/UnlockPUK2Lock;->finish()V

    goto/16 :goto_0

    .line 701
    :cond_3
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$4;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    invoke-virtual {v3}, Lcom/android/phone/UnlockPUK2Lock;->finish()V

    goto/16 :goto_0

    .line 708
    :pswitch_3
    const-string v3, "UnlockPUK2Lock "

    const-string v4, "[mHandler][MSG4] +"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_5

    .line 711
    const-string v3, "UnlockPUK2Lock "

    const-string v4, "[mHandler][MSG3][Gemini Card][SIM2][PUK_REQUIRED][UnlockPinFail]+"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$4;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$4;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    const/4 v5, 0x1

    #calls: Lcom/android/phone/UnlockPUK2Lock;->getRetryPuk2Count(I)I
    invoke-static {v4, v5}, Lcom/android/phone/UnlockPUK2Lock;->access$100(Lcom/android/phone/UnlockPUK2Lock;I)I

    move-result v4

    iput v4, v3, Lcom/android/phone/UnlockPUK2Lock;->retryCount:I

    .line 713
    const-string v3, "UnlockPUK2Lock "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[mHandler][MSG3][Gemini Card][SIM2][New Retry Count] : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/UnlockPUK2Lock$4;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget v5, v5, Lcom/android/phone/UnlockPUK2Lock;->retryCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$4;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget v3, v3, Lcom/android/phone/UnlockPUK2Lock;->retryCount:I

    if-lez v3, :cond_4

    .line 715
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$4;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    const-class v4, Lcom/android/phone/UnlockPUK2Lock;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 716
    .restart local v2       #intent:Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 717
    .restart local v1       #bundle:Landroid/os/Bundle;
    const-string v3, "PUKPHASE"

    const-string v4, "1"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    const-string v3, "PUKLEFTRETRIES"

    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$4;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget v4, v4, Lcom/android/phone/UnlockPUK2Lock;->retryCount:I

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 719
    const-string v3, "PhoneConstants.GEMINI_SIM_ID_KEY"

    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$4;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget v4, v4, Lcom/android/phone/UnlockPUK2Lock;->iSIMMEUnlockNo:I

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 720
    const-string v3, "WRONGCODE"

    const-string v4, "Wrong code."

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 722
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$4;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    invoke-virtual {v3, v2}, Lcom/android/phone/UnlockPUK2Lock;->startActivity(Landroid/content/Intent;)V

    .line 723
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$4;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    invoke-virtual {v3}, Lcom/android/phone/UnlockPUK2Lock;->finish()V

    goto/16 :goto_0

    .line 726
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_4
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$4;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    invoke-virtual {v3, v7, v6}, Lcom/android/phone/UnlockPUK2Lock;->sendVerifyResult(IZ)V

    .line 727
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$4;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    invoke-virtual {v3}, Lcom/android/phone/UnlockPUK2Lock;->finish()V

    goto/16 :goto_0

    .line 730
    :cond_5
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$4;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    invoke-virtual {v3}, Lcom/android/phone/UnlockPUK2Lock;->finish()V

    goto/16 :goto_0

    .line 647
    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
