.class Lcom/android/phone/PowerOnUnlockSIMLock$5;
.super Landroid/os/Handler;
.source "PowerOnUnlockSIMLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PowerOnUnlockSIMLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PowerOnUnlockSIMLock;


# direct methods
.method constructor <init>(Lcom/android/phone/PowerOnUnlockSIMLock;)V
    .locals 0
    .parameter

    .prologue
    .line 296
    iput-object p1, p0, Lcom/android/phone/PowerOnUnlockSIMLock$5;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 16
    .parameter "msg"

    .prologue
    .line 298
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 299
    .local v10, ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 439
    :goto_0
    return-void

    .line 302
    :sswitch_0
    const-string v1, "PowerOnUnlockSIMLock "

    const-string v2, "[mHandler][UNLOCK_ICC_SML_COMPLETE]+"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object v1, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_2

    .line 310
    const-string v1, "PowerOnUnlockSIMLock "

    const-string v2, "[mHandler][UNLOCK_ICC_SML_COMPLETE][GEMINI Card]+"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v15

    check-cast v15, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 312
    .local v15, mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PowerOnUnlockSIMLock$5;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    iget v1, v1, Lcom/android/phone/PowerOnUnlockSIMLock;->iSIMMEUnlockNo:I

    if-nez v1, :cond_1

    .line 313
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PowerOnUnlockSIMLock$5;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    #getter for: Lcom/android/phone/PowerOnUnlockSIMLock;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/PowerOnUnlockSIMLock;->access$100(Lcom/android/phone/PowerOnUnlockSIMLock;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x6e

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v8

    .line 314
    .local v8, callback_query:Landroid/os/Message;
    const/4 v1, 0x0

    invoke-virtual {v15, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-static {}, Lcom/android/phone/PowerOnUnlockSIMLock;->access$200()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v8}, Lcom/android/internal/telephony/IccCard;->QueryIccNetworkLock(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 320
    .end local v8           #callback_query:Landroid/os/Message;
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PowerOnUnlockSIMLock$5;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    #getter for: Lcom/android/phone/PowerOnUnlockSIMLock;->mUnlockResultNotify:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/phone/PowerOnUnlockSIMLock;->access$300(Lcom/android/phone/PowerOnUnlockSIMLock;)Landroid/widget/TextView;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PowerOnUnlockSIMLock$5;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    const v3, 0x7f0b03f8

    invoke-virtual {v2, v3}, Lcom/android/phone/PowerOnUnlockSIMLock;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PowerOnUnlockSIMLock$5;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    iget-object v1, v1, Lcom/android/phone/PowerOnUnlockSIMLock;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0

    .line 315
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PowerOnUnlockSIMLock$5;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    iget v1, v1, Lcom/android/phone/PowerOnUnlockSIMLock;->iSIMMEUnlockNo:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 316
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PowerOnUnlockSIMLock$5;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    #getter for: Lcom/android/phone/PowerOnUnlockSIMLock;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/PowerOnUnlockSIMLock;->access$100(Lcom/android/phone/PowerOnUnlockSIMLock;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x6e

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v8

    .line 317
    .restart local v8       #callback_query:Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v15, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-static {}, Lcom/android/phone/PowerOnUnlockSIMLock;->access$200()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v8}, Lcom/android/internal/telephony/IccCard;->QueryIccNetworkLock(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_1

    .line 323
    .end local v8           #callback_query:Landroid/os/Message;
    .end local v15           #mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    :cond_2
    const-string v1, "PowerOnUnlockSIMLock "

    const-string v2, "[mHandler][GEMINI]+"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const-string v1, "PowerOnUnlockSIMLock "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[mHandler][iSIMMEUnlockNo] : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PowerOnUnlockSIMLock$5;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    iget v3, v3, Lcom/android/phone/PowerOnUnlockSIMLock;->iSIMMEUnlockNo:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    const-string v1, "PowerOnUnlockSIMLock "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[mHandler][lockCategory] : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/phone/PowerOnUnlockSIMLock;->access$200()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PowerOnUnlockSIMLock$5;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PowerOnUnlockSIMLock$5;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    iget-object v2, v2, Lcom/android/phone/PowerOnUnlockSIMLock;->SIM1MELockStatus:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PowerOnUnlockSIMLock$5;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    iget-object v3, v3, Lcom/android/phone/PowerOnUnlockSIMLock;->SIM2MELockStatus:[I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/PowerOnUnlockSIMLock$5;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    iget v4, v4, Lcom/android/phone/PowerOnUnlockSIMLock;->iSIMMEUnlockNo:I

    invoke-static {v2, v3, v4}, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->resetISIMMELockStatus([I[II)I

    move-result v2

    iput v2, v1, Lcom/android/phone/PowerOnUnlockSIMLock;->iSIMMELockStatus:I

    .line 327
    const-string v1, "PowerOnUnlockSIMLock "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[mHandler][UNLOCK_ICC_SML_COMPLETE][iSIMMELockStatus][new] : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PowerOnUnlockSIMLock$5;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    iget v3, v3, Lcom/android/phone/PowerOnUnlockSIMLock;->iSIMMELockStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PowerOnUnlockSIMLock$5;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    iget v1, v1, Lcom/android/phone/PowerOnUnlockSIMLock;->iSIMMELockStatus:I

    if-eqz v1, :cond_3

    .line 330
    new-instance v14, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PowerOnUnlockSIMLock$5;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    const-class v2, Lcom/android/phone/PowerOnUnlockSIMLock;

    invoke-direct {v14, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 331
    .local v14, intent2:Landroid/content/Intent;
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 332
    .local v12, bundle2:Landroid/os/Bundle;
    const-string v1, "PhoneConstants.GEMINI_SIM_ID_KEY"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PowerOnUnlockSIMLock$5;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    iget v2, v2, Lcom/android/phone/PowerOnUnlockSIMLock;->iSIMMEUnlockNo:I

    invoke-virtual {v12, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 333
    const-string v1, "SIMMELOCKSTATUS"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PowerOnUnlockSIMLock$5;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    iget v2, v2, Lcom/android/phone/PowerOnUnlockSIMLock;->iSIMMELockStatus:I

    invoke-virtual {v12, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 335
    invoke-virtual {v14, v12}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 336
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PowerOnUnlockSIMLock$5;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    invoke-virtual {v1, v14}, Lcom/android/phone/PowerOnUnlockSIMLock;->startActivity(Landroid/content/Intent;)V

    .line 337
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PowerOnUnlockSIMLock$5;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    invoke-virtual {v1}, Lcom/android/phone/PowerOnUnlockSIMLock;->finish()V

    .line 338
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PowerOnUnlockSIMLock$5;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    iget-object v1, v1, Lcom/android/phone/PowerOnUnlockSIMLock;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    goto/16 :goto_0

    .line 342
    .end local v12           #bundle2:Landroid/os/Bundle;
    .end local v14           #intent2:Landroid/content/Intent;
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PowerOnUnlockSIMLock$5;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    iget v1, v1, Lcom/android/phone/PowerOnUnlockSIMLock;->iSIMMEUnlockNo:I

    if-nez v1, :cond_5

    .line 344
    sget-object v1, Lcom/android/phone/PhoneApp;->arySIMLockStatus:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 345
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PowerOnUnlockSIMLock$5;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    const/4 v2, 0x0

    const/4 v3, 0x2

    #calls: Lcom/android/phone/PowerOnUnlockSIMLock;->setSimLockScreenDone(II)V
    invoke-static {v1, v2, v3}, Lcom/android/phone/PowerOnUnlockSIMLock;->access$400(Lcom/android/phone/PowerOnUnlockSIMLock;II)V

    .line 346
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PowerOnUnlockSIMLock$5;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    iget-object v1, v1, Lcom/android/phone/PowerOnUnlockSIMLock;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 348
    sget-object v1, Lcom/android/phone/PhoneApp;->arySIMLockStatus:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 349
    new-instance v13, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PowerOnUnlockSIMLock$5;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    const-class v2, Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    invoke-direct {v13, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 350
    .local v13, intent:Landroid/content/Intent;
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 351
    .local v11, bundle:Landroid/os/Bundle;
    const-string v1, "PhoneConstants.GEMINI_SIM_ID_KEY"

    const/4 v2, 0x1

    invoke-virtual {v11, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 352
    invoke-virtual {v13, v11}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 353
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PowerOnUnlockSIMLock$5;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    invoke-virtual {v1, v13}, Lcom/android/phone/PowerOnUnlockSIMLock;->startActivity(Landroid/content/Intent;)V

    .line 355
    .end local v11           #bundle:Landroid/os/Bundle;
    .end local v13           #intent:Landroid/content/Intent;
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PowerOnUnlockSIMLock$5;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    invoke-virtual {v1}, Lcom/android/phone/PowerOnUnlockSIMLock;->finish()V

    .line 356
    const-string v1, "PowerOnUnlockSIMLock "

    const-string v2, "[mHandler][UNLOCK_ICC_SML_COMPLETE][SIM1][Finished]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 359
    :cond_5
    sget-object v1, Lcom/android/phone/PhoneApp;->arySIMLockStatus:[I

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 360
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PowerOnUnlockSIMLock$5;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    const/4 v2, 0x1

    const/4 v3, 0x2

    #calls: Lcom/android/phone/PowerOnUnlockSIMLock;->setSimLockScreenDone(II)V
    invoke-static {v1, v2, v3}, Lcom/android/phone/PowerOnUnlockSIMLock;->access$400(Lcom/android/phone/PowerOnUnlockSIMLock;II)V

    .line 361
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PowerOnUnlockSIMLock$5;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    iget-object v1, v1, Lcom/android/phone/PowerOnUnlockSIMLock;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 363
    sget-object v1, Lcom/android/phone/PhoneApp;->arySIMLockStatus:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    .line 364
    new-instance v13, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PowerOnUnlockSIMLock$5;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    const-class v2, Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    invoke-direct {v13, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 365
    .restart local v13       #intent:Landroid/content/Intent;
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 366
    .restart local v11       #bundle:Landroid/os/Bundle;
    const-string v1, "PhoneConstants.GEMINI_SIM_ID_KEY"

    const/4 v2, 0x0

    invoke-virtual {v11, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 367
    invoke-virtual {v13, v11}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 368
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PowerOnUnlockSIMLock$5;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    invoke-virtual {v1, v13}, Lcom/android/phone/PowerOnUnlockSIMLock;->startActivity(Landroid/content/Intent;)V

    .line 370
    .end local v11           #bundle:Landroid/os/Bundle;
    .end local v13           #intent:Landroid/content/Intent;
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PowerOnUnlockSIMLock$5;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    invoke-virtual {v1}, Lcom/android/phone/PowerOnUnlockSIMLock;->finish()V

    .line 371
    const-string v1, "PowerOnUnlockSIMLock "

    const-string v2, "[mHandler][UNLOCK_ICC_SML_COMPLETE][SIM2][Finished]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 383
    :sswitch_1
    const-string v1, "PowerOnUnlockSIMLock "

    const-string v2, "[mHandler][UNLOCK_ICC_SML_QUERYLEFTTIMES]+"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iget-object v1, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_7

    .line 434
    :goto_2
    const-string v1, "PowerOnUnlockSIMLock "

    const-string v2, "[mHandler][UNLOCK_ICC_SML_QUERYLEFTTIMES]-"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 389
    :cond_7
    iget-object v1, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    move-object v9, v1

    check-cast v9, [I

    .line 390
    .local v9, LockState:[I
    const/4 v1, 0x2

    aget v1, v9, v1

    if-lez v1, :cond_8

    .line 392
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PowerOnUnlockSIMLock$5;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    const/4 v2, 0x2

    aget v2, v9, v2

    iput v2, v1, Lcom/android/phone/PowerOnUnlockSIMLock;->mPwdLeftChances:I

    .line 393
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PowerOnUnlockSIMLock$5;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    #getter for: Lcom/android/phone/PowerOnUnlockSIMLock;->mUnlockRetriesNotify:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/phone/PowerOnUnlockSIMLock;->access$500(Lcom/android/phone/PowerOnUnlockSIMLock;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PowerOnUnlockSIMLock$5;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    const v4, 0x7f0b03f2

    invoke-virtual {v3, v4}, Lcom/android/phone/PowerOnUnlockSIMLock;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PowerOnUnlockSIMLock$5;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    iget v3, v3, Lcom/android/phone/PowerOnUnlockSIMLock;->mPwdLeftChances:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 394
    const-string v1, "PowerOnUnlockSIMLock "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[mHandler][UNLOCK_ICC_SML_QUERYLEFTTIMES][query Left times]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PowerOnUnlockSIMLock$5;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    iget v3, v3, Lcom/android/phone/PowerOnUnlockSIMLock;->mPwdLeftChances:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 396
    :cond_8
    const-string v1, "PowerOnUnlockSIMLock "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[mHandler][UNLOCK_ICC_SML_QUERYLEFTTIMES][no chances to unlock current SIM Slot]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PowerOnUnlockSIMLock$5;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    iget v3, v3, Lcom/android/phone/PowerOnUnlockSIMLock;->iSIMMEUnlockNo:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PowerOnUnlockSIMLock$5;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    const/16 v2, 0x1f7

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/PowerOnUnlockSIMLock;->sendVerifyResult(IZ)V

    .line 399
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PowerOnUnlockSIMLock$5;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    iget v1, v1, Lcom/android/phone/PowerOnUnlockSIMLock;->iSIMMEUnlockNo:I

    if-nez v1, :cond_a

    .line 400
    sget-object v1, Lcom/android/phone/PhoneApp;->arySIMLockStatus:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 401
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/phone/PowerOnUnlockSIMLock;->access$602(I)I

    .line 402
    const-string v1, "PowerOnUnlockSIMLock "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[changed][arySIMLockStatus]: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/PhoneApp;->arySIMLockStatus:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/PhoneApp;->arySIMLockStatus:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PowerOnUnlockSIMLock$5;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    invoke-virtual {v1}, Lcom/android/phone/PowerOnUnlockSIMLock;->finish()V

    .line 404
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PowerOnUnlockSIMLock$5;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    const/4 v2, 0x0

    const/4 v3, 0x2

    #calls: Lcom/android/phone/PowerOnUnlockSIMLock;->setSimLockScreenDone(II)V
    invoke-static {v1, v2, v3}, Lcom/android/phone/PowerOnUnlockSIMLock;->access$400(Lcom/android/phone/PowerOnUnlockSIMLock;II)V

    .line 405
    sget-object v1, Lcom/android/phone/PhoneApp;->arySIMLockStatus:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_9

    .line 406
    new-instance v13, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PowerOnUnlockSIMLock$5;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    const-class v2, Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    invoke-direct {v13, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 407
    .restart local v13       #intent:Landroid/content/Intent;
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 408
    .restart local v11       #bundle:Landroid/os/Bundle;
    const-string v1, "PhoneConstants.GEMINI_SIM_ID_KEY"

    const/4 v2, 0x1

    invoke-virtual {v11, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 409
    invoke-virtual {v13, v11}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 410
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PowerOnUnlockSIMLock$5;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    invoke-virtual {v1, v13}, Lcom/android/phone/PowerOnUnlockSIMLock;->startActivity(Landroid/content/Intent;)V

    .line 428
    .end local v11           #bundle:Landroid/os/Bundle;
    .end local v13           #intent:Landroid/content/Intent;
    :cond_9
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PowerOnUnlockSIMLock$5;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    invoke-virtual {v1}, Lcom/android/phone/PowerOnUnlockSIMLock;->finish()V

    goto/16 :goto_0

    .line 413
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PowerOnUnlockSIMLock$5;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    iget v1, v1, Lcom/android/phone/PowerOnUnlockSIMLock;->iSIMMEUnlockNo:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_9

    .line 414
    sget-object v1, Lcom/android/phone/PhoneApp;->arySIMLockStatus:[I

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 415
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/phone/PowerOnUnlockSIMLock;->access$702(I)I

    .line 416
    const-string v1, "PowerOnUnlockSIMLock "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[changed][arySIMLockStatus]: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/PhoneApp;->arySIMLockStatus:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/PhoneApp;->arySIMLockStatus:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PowerOnUnlockSIMLock$5;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    invoke-virtual {v1}, Lcom/android/phone/PowerOnUnlockSIMLock;->finish()V

    .line 418
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PowerOnUnlockSIMLock$5;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    const/4 v2, 0x1

    const/4 v3, 0x2

    #calls: Lcom/android/phone/PowerOnUnlockSIMLock;->setSimLockScreenDone(II)V
    invoke-static {v1, v2, v3}, Lcom/android/phone/PowerOnUnlockSIMLock;->access$400(Lcom/android/phone/PowerOnUnlockSIMLock;II)V

    .line 419
    sget-object v1, Lcom/android/phone/PhoneApp;->arySIMLockStatus:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_9

    .line 420
    new-instance v13, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PowerOnUnlockSIMLock$5;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    const-class v2, Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    invoke-direct {v13, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 421
    .restart local v13       #intent:Landroid/content/Intent;
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 422
    .restart local v11       #bundle:Landroid/os/Bundle;
    const-string v1, "PhoneConstants.GEMINI_SIM_ID_KEY"

    const/4 v2, 0x0

    invoke-virtual {v11, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 423
    invoke-virtual {v13, v11}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 424
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PowerOnUnlockSIMLock$5;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    invoke-virtual {v1, v13}, Lcom/android/phone/PowerOnUnlockSIMLock;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 299
    :sswitch_data_0
    .sparse-switch
        0x6e -> :sswitch_1
        0x78 -> :sswitch_0
    .end sparse-switch
.end method
