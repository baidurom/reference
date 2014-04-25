.class Lcom/android/phone/Modem3GCapabilitySwitch$MyHandler;
.super Landroid/os/Handler;
.source "Modem3GCapabilitySwitch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/Modem3GCapabilitySwitch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# static fields
.field private static final MESSAGE_GET_PREFERRED_NETWORK_TYPE:I = 0x0

.field private static final MESSAGE_SET_PREFERRED_NETWORK_TYPE:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/phone/Modem3GCapabilitySwitch;


# direct methods
.method private constructor <init>(Lcom/android/phone/Modem3GCapabilitySwitch;)V
    .locals 0
    .parameter

    .prologue
    .line 358
    iput-object p1, p0, Lcom/android/phone/Modem3GCapabilitySwitch$MyHandler;->this$0:Lcom/android/phone/Modem3GCapabilitySwitch;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/Modem3GCapabilitySwitch;Lcom/android/phone/Modem3GCapabilitySwitch$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 358
    invoke-direct {p0, p1}, Lcom/android/phone/Modem3GCapabilitySwitch$MyHandler;-><init>(Lcom/android/phone/Modem3GCapabilitySwitch;)V

    return-void
.end method

.method private handleGetPreferredNetworkTypeResponse(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 377
    const-string v4, "Settings/Modem3GCapabilitySwitch"

    const-string v5, "-------------[handleGetPreferredNetworkTypeResponse]--------------"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    const-string v4, "Settings/Modem3GCapabilitySwitch"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-------------[arg1="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]--------------"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    const-string v4, "Settings/Modem3GCapabilitySwitch"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-------------[arg2="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]--------------"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    const-string v4, "Settings/Modem3GCapabilitySwitch"

    const-string v5, "-------------[MESSAGE_SET_PREFERRED_NETWORK_TYPE=1]--------------"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-object v4, p0, Lcom/android/phone/Modem3GCapabilitySwitch$MyHandler;->this$0:Lcom/android/phone/Modem3GCapabilitySwitch;

    #getter for: Lcom/android/phone/Modem3GCapabilitySwitch;->pd:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/phone/Modem3GCapabilitySwitch;->access$100(Lcom/android/phone/Modem3GCapabilitySwitch;)Landroid/app/ProgressDialog;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/Modem3GCapabilitySwitch$MyHandler;->this$0:Lcom/android/phone/Modem3GCapabilitySwitch;

    #getter for: Lcom/android/phone/Modem3GCapabilitySwitch;->pd:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/phone/Modem3GCapabilitySwitch;->access$100(Lcom/android/phone/Modem3GCapabilitySwitch;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p1, Landroid/os/Message;->arg2:I

    if-ne v4, v8, :cond_0

    .line 383
    :try_start_0
    const-string v4, "Settings/Modem3GCapabilitySwitch"

    const-string v5, "-------------[dismiss pd dialog]--------------"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iget-object v4, p0, Lcom/android/phone/Modem3GCapabilitySwitch$MyHandler;->this$0:Lcom/android/phone/Modem3GCapabilitySwitch;

    #getter for: Lcom/android/phone/Modem3GCapabilitySwitch;->pd:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/phone/Modem3GCapabilitySwitch;->access$100(Lcom/android/phone/Modem3GCapabilitySwitch;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    :cond_0
    :goto_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 391
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_5

    .line 392
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    check-cast v4, [I

    aget v2, v4, v7

    .line 395
    .local v2, modemNetworkMode:I
    const-string v4, "Settings/Modem3GCapabilitySwitch"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleGetPreferredNetworkTypeResponse: modemNetworkMode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    iget-object v4, p0, Lcom/android/phone/Modem3GCapabilitySwitch$MyHandler;->this$0:Lcom/android/phone/Modem3GCapabilitySwitch;

    #getter for: Lcom/android/phone/Modem3GCapabilitySwitch;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v4}, Lcom/android/phone/Modem3GCapabilitySwitch;->access$200(Lcom/android/phone/Modem3GCapabilitySwitch;)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "preferred_network_mode"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 405
    .local v3, settingsNetworkMode:I
    const-string v4, "Settings/Modem3GCapabilitySwitch"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleGetPreferredNetworkTypeReponse: settingsNetworkMode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    if-eqz v2, :cond_1

    if-eq v2, v8, :cond_1

    const/4 v4, 0x2

    if-eq v2, v4, :cond_1

    if-eq v2, v9, :cond_1

    const/4 v4, 0x4

    if-eq v2, v4, :cond_1

    const/4 v4, 0x5

    if-eq v2, v4, :cond_1

    const/4 v4, 0x6

    if-eq v2, v4, :cond_1

    const/4 v4, 0x7

    if-ne v2, v4, :cond_4

    .line 419
    :cond_1
    const-string v4, "Settings/Modem3GCapabilitySwitch"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleGetPreferredNetworkTypeResponse: if 1: modemNetworkMode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    if-eq v2, v3, :cond_2

    .line 426
    const-string v4, "Settings/Modem3GCapabilitySwitch"

    const-string v5, "handleGetPreferredNetworkTypeResponse: if 2: modemNetworkMode != settingsNetworkMode"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    move v3, v2

    .line 433
    const-string v4, "Settings/Modem3GCapabilitySwitch"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleGetPreferredNetworkTypeResponse: if 2: settingsNetworkMode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iget-object v4, p0, Lcom/android/phone/Modem3GCapabilitySwitch$MyHandler;->this$0:Lcom/android/phone/Modem3GCapabilitySwitch;

    #getter for: Lcom/android/phone/Modem3GCapabilitySwitch;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v4}, Lcom/android/phone/Modem3GCapabilitySwitch;->access$200(Lcom/android/phone/Modem3GCapabilitySwitch;)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "preferred_network_mode"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 443
    :cond_2
    if-ne v2, v9, :cond_3

    .line 444
    const/4 v2, 0x0

    .line 445
    const/4 v3, 0x0

    .line 447
    :cond_3
    iget-object v4, p0, Lcom/android/phone/Modem3GCapabilitySwitch$MyHandler;->this$0:Lcom/android/phone/Modem3GCapabilitySwitch;

    #getter for: Lcom/android/phone/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;
    invoke-static {v4}, Lcom/android/phone/Modem3GCapabilitySwitch;->access$300(Lcom/android/phone/Modem3GCapabilitySwitch;)Landroid/preference/ListPreference;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 448
    iget-object v4, p0, Lcom/android/phone/Modem3GCapabilitySwitch$MyHandler;->this$0:Lcom/android/phone/Modem3GCapabilitySwitch;

    #calls: Lcom/android/phone/Modem3GCapabilitySwitch;->UpdatePreferredNetworkModeSummary(I)V
    invoke-static {v4, v2}, Lcom/android/phone/Modem3GCapabilitySwitch;->access$400(Lcom/android/phone/Modem3GCapabilitySwitch;I)V

    .line 457
    .end local v2           #modemNetworkMode:I
    .end local v3           #settingsNetworkMode:I
    :goto_1
    return-void

    .line 385
    .end local v0           #ar:Landroid/os/AsyncResult;
    :catch_0
    move-exception v1

    .line 386
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "Settings/Modem3GCapabilitySwitch"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 451
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #ar:Landroid/os/AsyncResult;
    .restart local v2       #modemNetworkMode:I
    .restart local v3       #settingsNetworkMode:I
    :cond_4
    const-string v4, "Settings/Modem3GCapabilitySwitch"

    const-string v5, "handleGetPreferredNetworkTypeResponse: else: reset to default"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    invoke-direct {p0}, Lcom/android/phone/Modem3GCapabilitySwitch$MyHandler;->resetNetworkModeToDefault()V

    goto :goto_1

    .line 455
    .end local v2           #modemNetworkMode:I
    .end local v3           #settingsNetworkMode:I
    :cond_5
    const-string v4, "Settings/Modem3GCapabilitySwitch"

    const-string v5, "handleGetPreferredNetworkTypeResponse(), response exist exception"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private handleSetPreferredNetworkTypeResponse(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x3e9

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 460
    const-string v2, "Settings/Modem3GCapabilitySwitch"

    const-string v3, "-------------[handleSetPreferredNetworkTypeResponse]--------------"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 463
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, p0, Lcom/android/phone/Modem3GCapabilitySwitch$MyHandler;->this$0:Lcom/android/phone/Modem3GCapabilitySwitch;

    iget-object v2, v2, Lcom/android/phone/Modem3GCapabilitySwitch;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v2}, Lcom/android/phone/PhoneInterfaceManager;->get3GCapabilitySIM()I

    move-result v1

    .line 464
    .local v1, slot:I
    invoke-static {}, Lcom/android/phone/CallSettings;->isMultipleSim()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 465
    iget-object v2, p0, Lcom/android/phone/Modem3GCapabilitySwitch$MyHandler;->this$0:Lcom/android/phone/Modem3GCapabilitySwitch;

    #getter for: Lcom/android/phone/Modem3GCapabilitySwitch;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    invoke-static {v2}, Lcom/android/phone/Modem3GCapabilitySwitch;->access$500(Lcom/android/phone/Modem3GCapabilitySwitch;)Lcom/android/internal/telephony/gemini/GeminiPhone;

    move-result-object v2

    invoke-virtual {p0, v4, v6, v5, v7}, Lcom/android/phone/Modem3GCapabilitySwitch$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPreferredNetworkTypeGemini(Landroid/os/Message;I)V

    .line 469
    :goto_0
    return-void

    .line 467
    :cond_0
    iget-object v2, p0, Lcom/android/phone/Modem3GCapabilitySwitch$MyHandler;->this$0:Lcom/android/phone/Modem3GCapabilitySwitch;

    #getter for: Lcom/android/phone/Modem3GCapabilitySwitch;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/phone/Modem3GCapabilitySwitch;->access$200(Lcom/android/phone/Modem3GCapabilitySwitch;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {p0, v4, v6, v5, v7}, Lcom/android/phone/Modem3GCapabilitySwitch$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    goto :goto_0
.end method

.method private resetNetworkModeToDefault()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 473
    iget-object v1, p0, Lcom/android/phone/Modem3GCapabilitySwitch$MyHandler;->this$0:Lcom/android/phone/Modem3GCapabilitySwitch;

    #getter for: Lcom/android/phone/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;
    invoke-static {v1}, Lcom/android/phone/Modem3GCapabilitySwitch;->access$300(Lcom/android/phone/Modem3GCapabilitySwitch;)Landroid/preference/ListPreference;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 475
    iget-object v1, p0, Lcom/android/phone/Modem3GCapabilitySwitch$MyHandler;->this$0:Lcom/android/phone/Modem3GCapabilitySwitch;

    #getter for: Lcom/android/phone/Modem3GCapabilitySwitch;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/phone/Modem3GCapabilitySwitch;->access$200(Lcom/android/phone/Modem3GCapabilitySwitch;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_network_mode"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 479
    iget-object v1, p0, Lcom/android/phone/Modem3GCapabilitySwitch$MyHandler;->this$0:Lcom/android/phone/Modem3GCapabilitySwitch;

    iget-object v1, v1, Lcom/android/phone/Modem3GCapabilitySwitch;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v1}, Lcom/android/phone/PhoneInterfaceManager;->get3GCapabilitySIM()I

    move-result v0

    .line 480
    .local v0, slot:I
    invoke-static {}, Lcom/android/phone/CallSettings;->isMultipleSim()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 481
    iget-object v1, p0, Lcom/android/phone/Modem3GCapabilitySwitch$MyHandler;->this$0:Lcom/android/phone/Modem3GCapabilitySwitch;

    #getter for: Lcom/android/phone/Modem3GCapabilitySwitch;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    invoke-static {v1}, Lcom/android/phone/Modem3GCapabilitySwitch;->access$500(Lcom/android/phone/Modem3GCapabilitySwitch;)Lcom/android/internal/telephony/gemini/GeminiPhone;

    move-result-object v1

    invoke-virtual {p0, v4}, Lcom/android/phone/Modem3GCapabilitySwitch$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v3, v2, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setPreferredNetworkTypeGemini(ILandroid/os/Message;I)V

    .line 487
    :goto_0
    return-void

    .line 484
    :cond_0
    iget-object v1, p0, Lcom/android/phone/Modem3GCapabilitySwitch$MyHandler;->this$0:Lcom/android/phone/Modem3GCapabilitySwitch;

    #getter for: Lcom/android/phone/Modem3GCapabilitySwitch;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/phone/Modem3GCapabilitySwitch;->access$200(Lcom/android/phone/Modem3GCapabilitySwitch;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {p0, v4}, Lcom/android/phone/Modem3GCapabilitySwitch$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 365
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 374
    :goto_0
    return-void

    .line 367
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/phone/Modem3GCapabilitySwitch$MyHandler;->handleGetPreferredNetworkTypeResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 371
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/phone/Modem3GCapabilitySwitch$MyHandler;->handleSetPreferredNetworkTypeResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 365
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
