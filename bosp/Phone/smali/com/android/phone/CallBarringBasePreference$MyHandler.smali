.class Lcom/android/phone/CallBarringBasePreference$MyHandler;
.super Landroid/os/Handler;
.source "CallBarringBasePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallBarringBasePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# static fields
.field private static final MESSAGE_GET_CALLBARRING_STATE:I = 0x0

.field private static final MESSAGE_SET_CALLBARRING_STATE:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallBarringBasePreference;


# direct methods
.method private constructor <init>(Lcom/android/phone/CallBarringBasePreference;)V
    .locals 0
    .parameter

    .prologue
    .line 318
    iput-object p1, p0, Lcom/android/phone/CallBarringBasePreference$MyHandler;->this$0:Lcom/android/phone/CallBarringBasePreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/CallBarringBasePreference;Lcom/android/phone/CallBarringBasePreference$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 318
    invoke-direct {p0, p1}, Lcom/android/phone/CallBarringBasePreference$MyHandler;-><init>(Lcom/android/phone/CallBarringBasePreference;)V

    return-void
.end method

.method private handleGetCallBarringResponse(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 368
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 374
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_2

    .line 375
    iget-object v6, p0, Lcom/android/phone/CallBarringBasePreference$MyHandler;->this$0:Lcom/android/phone/CallBarringBasePreference;

    #setter for: Lcom/android/phone/CallBarringBasePreference;->bResult:Z
    invoke-static {v6, v9}, Lcom/android/phone/CallBarringBasePreference;->access$902(Lcom/android/phone/CallBarringBasePreference;Z)Z

    .line 380
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    .line 381
    .local v1, ce:Lcom/android/internal/telephony/CommandException;
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v6, v7, :cond_0

    .line 382
    const/16 v2, 0x2bc

    .line 388
    .local v2, errorid:I
    :goto_0
    iget-object v6, p0, Lcom/android/phone/CallBarringBasePreference$MyHandler;->this$0:Lcom/android/phone/CallBarringBasePreference;

    #getter for: Lcom/android/phone/CallBarringBasePreference;->mCallBarringInterface:Lcom/android/phone/CallBarringInterface;
    invoke-static {v6}, Lcom/android/phone/CallBarringBasePreference;->access$700(Lcom/android/phone/CallBarringBasePreference;)Lcom/android/phone/CallBarringInterface;

    move-result-object v6

    invoke-interface {v6, v2}, Lcom/android/phone/CallBarringInterface;->setErrorState(I)V

    .line 392
    :try_start_0
    iget-object v6, p0, Lcom/android/phone/CallBarringBasePreference$MyHandler;->this$0:Lcom/android/phone/CallBarringBasePreference;

    #getter for: Lcom/android/phone/CallBarringBasePreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;
    invoke-static {v6}, Lcom/android/phone/CallBarringBasePreference;->access$300(Lcom/android/phone/CallBarringBasePreference;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/CallBarringBasePreference$MyHandler;->this$0:Lcom/android/phone/CallBarringBasePreference;

    invoke-interface {v6, v7, v2}, Lcom/android/phone/TimeConsumingPreferenceListener;->onError(Landroid/preference/Preference;I)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 438
    .end local v1           #ce:Lcom/android/internal/telephony/CommandException;
    .end local v2           #errorid:I
    :goto_1
    iget v6, p1, Landroid/os/Message;->arg2:I

    if-nez v6, :cond_5

    .line 439
    iget-object v6, p0, Lcom/android/phone/CallBarringBasePreference$MyHandler;->this$0:Lcom/android/phone/CallBarringBasePreference;

    #getter for: Lcom/android/phone/CallBarringBasePreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;
    invoke-static {v6}, Lcom/android/phone/CallBarringBasePreference;->access$300(Lcom/android/phone/CallBarringBasePreference;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/CallBarringBasePreference$MyHandler;->this$0:Lcom/android/phone/CallBarringBasePreference;

    invoke-interface {v6, v7, v10}, Lcom/android/phone/TimeConsumingPreferenceListener;->onFinished(Landroid/preference/Preference;Z)V

    .line 443
    :goto_2
    return-void

    .line 383
    .restart local v1       #ce:Lcom/android/internal/telephony/CommandException;
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v6, v7, :cond_1

    .line 384
    const/16 v2, 0x320

    .restart local v2       #errorid:I
    goto :goto_0

    .line 386
    .end local v2           #errorid:I
    :cond_1
    const/16 v2, 0x12c

    .restart local v2       #errorid:I
    goto :goto_0

    .line 405
    .end local v1           #ce:Lcom/android/internal/telephony/CommandException;
    .end local v2           #errorid:I
    :cond_2
    iget-object v6, p0, Lcom/android/phone/CallBarringBasePreference$MyHandler;->this$0:Lcom/android/phone/CallBarringBasePreference;

    invoke-virtual {v6, v10}, Lcom/android/phone/CallBarringBasePreference;->setEnabled(Z)V

    .line 406
    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [I

    move-object v3, v6

    check-cast v3, [I

    .line 407
    .local v3, ints:[I
    if-eqz v3, :cond_4

    array-length v6, v3

    if-lez v6, :cond_4

    .line 408
    iget-object v6, p0, Lcom/android/phone/CallBarringBasePreference$MyHandler;->this$0:Lcom/android/phone/CallBarringBasePreference;

    #setter for: Lcom/android/phone/CallBarringBasePreference;->bResult:Z
    invoke-static {v6, v10}, Lcom/android/phone/CallBarringBasePreference;->access$902(Lcom/android/phone/CallBarringBasePreference;Z)Z

    .line 409
    aget v5, v3, v9

    .line 411
    .local v5, value:I
    const-string v6, "Settings/CallBarringBasePreference"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Current value = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  Current serviceClass = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/CallBarringBasePreference$MyHandler;->this$0:Lcom/android/phone/CallBarringBasePreference;

    #getter for: Lcom/android/phone/CallBarringBasePreference;->mServiceClass:I
    invoke-static {v8}, Lcom/android/phone/CallBarringBasePreference;->access$1000(Lcom/android/phone/CallBarringBasePreference;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    iget-object v6, p0, Lcom/android/phone/CallBarringBasePreference$MyHandler;->this$0:Lcom/android/phone/CallBarringBasePreference;

    #getter for: Lcom/android/phone/CallBarringBasePreference;->mServiceClass:I
    invoke-static {v6}, Lcom/android/phone/CallBarringBasePreference;->access$1000(Lcom/android/phone/CallBarringBasePreference;)I

    move-result v6

    and-int/2addr v5, v6

    .line 414
    const-string v6, "Settings/CallBarringBasePreference"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "After value & mServiceClass = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    const/4 v4, 0x0

    .line 418
    .local v4, summary:Ljava/lang/String;
    if-nez v5, :cond_3

    .line 419
    iget-object v6, p0, Lcom/android/phone/CallBarringBasePreference$MyHandler;->this$0:Lcom/android/phone/CallBarringBasePreference;

    #getter for: Lcom/android/phone/CallBarringBasePreference;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/phone/CallBarringBasePreference;->access$200(Lcom/android/phone/CallBarringBasePreference;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0b0281

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 420
    iget-object v6, p0, Lcom/android/phone/CallBarringBasePreference$MyHandler;->this$0:Lcom/android/phone/CallBarringBasePreference;

    invoke-virtual {v6, v9}, Lcom/android/phone/CallBarringBasePreference;->setChecked(Z)V

    .line 429
    :goto_3
    iget-object v6, p0, Lcom/android/phone/CallBarringBasePreference$MyHandler;->this$0:Lcom/android/phone/CallBarringBasePreference;

    invoke-virtual {v6, v4}, Lcom/android/phone/CallBarringBasePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 422
    :cond_3
    iget-object v6, p0, Lcom/android/phone/CallBarringBasePreference$MyHandler;->this$0:Lcom/android/phone/CallBarringBasePreference;

    #getter for: Lcom/android/phone/CallBarringBasePreference;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/phone/CallBarringBasePreference;->access$200(Lcom/android/phone/CallBarringBasePreference;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0b0282

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 426
    iget-object v6, p0, Lcom/android/phone/CallBarringBasePreference$MyHandler;->this$0:Lcom/android/phone/CallBarringBasePreference;

    invoke-virtual {v6, v10}, Lcom/android/phone/CallBarringBasePreference;->setChecked(Z)V

    .line 427
    iget-object v6, p0, Lcom/android/phone/CallBarringBasePreference$MyHandler;->this$0:Lcom/android/phone/CallBarringBasePreference;

    #getter for: Lcom/android/phone/CallBarringBasePreference;->mCallBarringInterface:Lcom/android/phone/CallBarringInterface;
    invoke-static {v6}, Lcom/android/phone/CallBarringBasePreference;->access$700(Lcom/android/phone/CallBarringBasePreference;)Lcom/android/phone/CallBarringInterface;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/CallBarringBasePreference$MyHandler;->this$0:Lcom/android/phone/CallBarringBasePreference;

    #getter for: Lcom/android/phone/CallBarringBasePreference;->mFacility:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/phone/CallBarringBasePreference;->access$400(Lcom/android/phone/CallBarringBasePreference;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/android/phone/CallBarringInterface;->doCallBarringRefresh(Ljava/lang/String;)V

    goto :goto_3

    .line 431
    .end local v4           #summary:Ljava/lang/String;
    .end local v5           #value:I
    :cond_4
    iget-object v6, p0, Lcom/android/phone/CallBarringBasePreference$MyHandler;->this$0:Lcom/android/phone/CallBarringBasePreference;

    #setter for: Lcom/android/phone/CallBarringBasePreference;->bResult:Z
    invoke-static {v6, v9}, Lcom/android/phone/CallBarringBasePreference;->access$902(Lcom/android/phone/CallBarringBasePreference;Z)Z

    goto/16 :goto_1

    .line 441
    .end local v3           #ints:[I
    :cond_5
    iget-object v6, p0, Lcom/android/phone/CallBarringBasePreference$MyHandler;->this$0:Lcom/android/phone/CallBarringBasePreference;

    #getter for: Lcom/android/phone/CallBarringBasePreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;
    invoke-static {v6}, Lcom/android/phone/CallBarringBasePreference;->access$300(Lcom/android/phone/CallBarringBasePreference;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/CallBarringBasePreference$MyHandler;->this$0:Lcom/android/phone/CallBarringBasePreference;

    invoke-interface {v6, v7, v9}, Lcom/android/phone/TimeConsumingPreferenceListener;->onFinished(Landroid/preference/Preference;Z)V

    goto/16 :goto_2

    .line 394
    .restart local v1       #ce:Lcom/android/internal/telephony/CommandException;
    .restart local v2       #errorid:I
    :catch_0
    move-exception v6

    goto/16 :goto_1
.end method

.method private handleSetCallBarringResponse(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    .line 336
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 337
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_2

    .line 343
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    .line 344
    .local v1, ce:Lcom/android/internal/telephony/CommandException;
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v3, v4, :cond_0

    .line 345
    const/16 v2, 0x2bc

    .line 351
    .local v2, errorid:I
    :goto_0
    iget-object v3, p0, Lcom/android/phone/CallBarringBasePreference$MyHandler;->this$0:Lcom/android/phone/CallBarringBasePreference;

    #getter for: Lcom/android/phone/CallBarringBasePreference;->mCallBarringInterface:Lcom/android/phone/CallBarringInterface;
    invoke-static {v3}, Lcom/android/phone/CallBarringBasePreference;->access$700(Lcom/android/phone/CallBarringBasePreference;)Lcom/android/phone/CallBarringInterface;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/android/phone/CallBarringInterface;->setErrorState(I)V

    .line 352
    iget-object v3, p0, Lcom/android/phone/CallBarringBasePreference$MyHandler;->this$0:Lcom/android/phone/CallBarringBasePreference;

    #getter for: Lcom/android/phone/CallBarringBasePreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;
    invoke-static {v3}, Lcom/android/phone/CallBarringBasePreference;->access$300(Lcom/android/phone/CallBarringBasePreference;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/CallBarringBasePreference$MyHandler;->this$0:Lcom/android/phone/CallBarringBasePreference;

    invoke-interface {v3, v4, v6}, Lcom/android/phone/TimeConsumingPreferenceListener;->onFinished(Landroid/preference/Preference;Z)V

    .line 353
    iget-object v3, p0, Lcom/android/phone/CallBarringBasePreference$MyHandler;->this$0:Lcom/android/phone/CallBarringBasePreference;

    #getter for: Lcom/android/phone/CallBarringBasePreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;
    invoke-static {v3}, Lcom/android/phone/CallBarringBasePreference;->access$300(Lcom/android/phone/CallBarringBasePreference;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/CallBarringBasePreference$MyHandler;->this$0:Lcom/android/phone/CallBarringBasePreference;

    invoke-interface {v3, v4, v2}, Lcom/android/phone/TimeConsumingPreferenceListener;->onError(Landroid/preference/Preference;I)V

    .line 364
    .end local v1           #ce:Lcom/android/internal/telephony/CommandException;
    .end local v2           #errorid:I
    :goto_1
    return-void

    .line 346
    .restart local v1       #ce:Lcom/android/internal/telephony/CommandException;
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v3, v4, :cond_1

    .line 347
    const/16 v2, 0x320

    .restart local v2       #errorid:I
    goto :goto_0

    .line 349
    .end local v2           #errorid:I
    :cond_1
    const/16 v2, 0x12c

    .restart local v2       #errorid:I
    goto :goto_0

    .line 361
    .end local v1           #ce:Lcom/android/internal/telephony/CommandException;
    .end local v2           #errorid:I
    :cond_2
    iget-object v3, p0, Lcom/android/phone/CallBarringBasePreference$MyHandler;->this$0:Lcom/android/phone/CallBarringBasePreference;

    iget-object v4, p0, Lcom/android/phone/CallBarringBasePreference$MyHandler;->this$0:Lcom/android/phone/CallBarringBasePreference;

    #getter for: Lcom/android/phone/CallBarringBasePreference;->mFacility:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/CallBarringBasePreference;->access$400(Lcom/android/phone/CallBarringBasePreference;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    #calls: Lcom/android/phone/CallBarringBasePreference;->getCallState(Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static {v3, v4, v5, v6}, Lcom/android/phone/CallBarringBasePreference;->access$800(Lcom/android/phone/CallBarringBasePreference;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 324
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 332
    :goto_0
    return-void

    .line 326
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/phone/CallBarringBasePreference$MyHandler;->handleGetCallBarringResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 329
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/phone/CallBarringBasePreference$MyHandler;->handleSetCallBarringResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 324
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
