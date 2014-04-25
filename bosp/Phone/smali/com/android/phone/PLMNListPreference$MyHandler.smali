.class Lcom/android/phone/PLMNListPreference$MyHandler;
.super Landroid/os/Handler;
.source "PLMNListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PLMNListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# static fields
.field private static final MESSAGE_GET_PLMN_CAPIBILITY:I = 0x2

.field private static final MESSAGE_GET_PLMN_LIST:I = 0x0

.field private static final MESSAGE_SET_PLMN_LIST:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/phone/PLMNListPreference;


# direct methods
.method private constructor <init>(Lcom/android/phone/PLMNListPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 490
    iput-object p1, p0, Lcom/android/phone/PLMNListPreference$MyHandler;->this$0:Lcom/android/phone/PLMNListPreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/PLMNListPreference;Lcom/android/phone/PLMNListPreference$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 490
    invoke-direct {p0, p1}, Lcom/android/phone/PLMNListPreference$MyHandler;-><init>(Lcom/android/phone/PLMNListPreference;)V

    return-void
.end method


# virtual methods
.method public handleGetPLMNCapibilityResponse(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 560
    const-string v1, "Settings/PLMNListPreference"

    const-string v2, "handleGetPLMNCapibilityResponse: done"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 564
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 565
    const-string v1, "Settings/PLMNListPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleGetPLMNCapibilityResponse with exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    :goto_0
    return-void

    .line 567
    :cond_0
    iget-object v1, p0, Lcom/android/phone/PLMNListPreference$MyHandler;->this$0:Lcom/android/phone/PLMNListPreference;

    #getter for: Lcom/android/phone/PLMNListPreference;->mCapability:Lcom/android/phone/PLMNListPreference$SIMCapability;
    invoke-static {v1}, Lcom/android/phone/PLMNListPreference;->access$800(Lcom/android/phone/PLMNListPreference;)Lcom/android/phone/PLMNListPreference$SIMCapability;

    move-result-object v2

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    check-cast v1, [I

    invoke-virtual {v2, v1}, Lcom/android/phone/PLMNListPreference$SIMCapability;->setCapability([I)V

    goto :goto_0
.end method

.method public handleGetPLMNResponse(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 512
    const-string v2, "Settings/PLMNListPreference"

    const-string v3, "handleGetPLMNResponse: done"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    iget v2, p1, Landroid/os/Message;->arg2:I

    if-nez v2, :cond_1

    .line 515
    iget-object v2, p0, Lcom/android/phone/PLMNListPreference$MyHandler;->this$0:Lcom/android/phone/PLMNListPreference;

    iget-object v3, p0, Lcom/android/phone/PLMNListPreference$MyHandler;->this$0:Lcom/android/phone/PLMNListPreference;

    #getter for: Lcom/android/phone/PLMNListPreference;->mPLMNListContainer:Landroid/preference/PreferenceCategory;
    invoke-static {v3}, Lcom/android/phone/PLMNListPreference;->access$100(Lcom/android/phone/PLMNListPreference;)Landroid/preference/PreferenceCategory;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/phone/PLMNListPreference;->onFinished(Landroid/preference/Preference;Z)V

    .line 520
    :goto_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 521
    .local v0, ar:Landroid/os/AsyncResult;
    const/4 v1, 0x0

    .line 522
    .local v1, isUserException:Z
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_2

    .line 523
    const-string v2, "Settings/PLMNListPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetPLMNResponse with exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    iget-object v2, p0, Lcom/android/phone/PLMNListPreference$MyHandler;->this$0:Lcom/android/phone/PLMNListPreference;

    #getter for: Lcom/android/phone/PLMNListPreference;->mPLMNList:Ljava/util/List;
    invoke-static {v2}, Lcom/android/phone/PLMNListPreference;->access$200(Lcom/android/phone/PLMNListPreference;)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_0

    .line 526
    iget-object v2, p0, Lcom/android/phone/PLMNListPreference$MyHandler;->this$0:Lcom/android/phone/PLMNListPreference;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/android/phone/PLMNListPreference;->mPLMNList:Ljava/util/List;
    invoke-static {v2, v3}, Lcom/android/phone/PLMNListPreference;->access$202(Lcom/android/phone/PLMNListPreference;Ljava/util/List;)Ljava/util/List;

    .line 531
    :cond_0
    :goto_1
    return-void

    .line 517
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v1           #isUserException:Z
    :cond_1
    iget-object v2, p0, Lcom/android/phone/PLMNListPreference$MyHandler;->this$0:Lcom/android/phone/PLMNListPreference;

    iget-object v3, p0, Lcom/android/phone/PLMNListPreference$MyHandler;->this$0:Lcom/android/phone/PLMNListPreference;

    #getter for: Lcom/android/phone/PLMNListPreference;->mPLMNListContainer:Landroid/preference/PreferenceCategory;
    invoke-static {v3}, Lcom/android/phone/PLMNListPreference;->access$100(Lcom/android/phone/PLMNListPreference;)Landroid/preference/PreferenceCategory;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/phone/PLMNListPreference;->onFinished(Landroid/preference/Preference;Z)V

    goto :goto_0

    .line 529
    .restart local v0       #ar:Landroid/os/AsyncResult;
    .restart local v1       #isUserException:Z
    :cond_2
    iget-object v3, p0, Lcom/android/phone/PLMNListPreference$MyHandler;->this$0:Lcom/android/phone/PLMNListPreference;

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    #calls: Lcom/android/phone/PLMNListPreference;->refreshPreference(Ljava/util/ArrayList;)V
    invoke-static {v3, v2}, Lcom/android/phone/PLMNListPreference;->access$300(Lcom/android/phone/PLMNListPreference;Ljava/util/ArrayList;)V

    goto :goto_1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 496
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 508
    :goto_0
    return-void

    .line 498
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/android/phone/PLMNListPreference$MyHandler;->handleGetPLMNResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 501
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/android/phone/PLMNListPreference$MyHandler;->handleSetPLMNResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 505
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/android/phone/PLMNListPreference$MyHandler;->handleGetPLMNCapibilityResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 496
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public handleSetPLMNResponse(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    .line 534
    const-string v2, "Settings/PLMNListPreference"

    const-string v3, "handleSetPLMNResponse: done"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    iget-object v2, p0, Lcom/android/phone/PLMNListPreference$MyHandler;->this$0:Lcom/android/phone/PLMNListPreference;

    invoke-static {v2}, Lcom/android/phone/PLMNListPreference;->access$410(Lcom/android/phone/PLMNListPreference;)I

    .line 540
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 541
    .local v0, ar:Landroid/os/AsyncResult;
    const/4 v1, 0x0

    .line 542
    .local v1, isUserException:Z
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_1

    .line 543
    const-string v2, "Settings/PLMNListPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetPLMNResponse with exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    :goto_0
    iget-object v2, p0, Lcom/android/phone/PLMNListPreference$MyHandler;->this$0:Lcom/android/phone/PLMNListPreference;

    #getter for: Lcom/android/phone/PLMNListPreference;->numbers:I
    invoke-static {v2}, Lcom/android/phone/PLMNListPreference;->access$400(Lcom/android/phone/PLMNListPreference;)I

    move-result v2

    if-nez v2, :cond_0

    .line 551
    invoke-static {}, Lcom/android/phone/CallSettings;->isMultipleSim()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 557
    :cond_0
    :goto_1
    return-void

    .line 546
    :cond_1
    const-string v2, "Settings/PLMNListPreference"

    const-string v3, "handleSetPLMNResponse: with OK result!"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 554
    :cond_2
    iget-object v2, p0, Lcom/android/phone/PLMNListPreference$MyHandler;->this$0:Lcom/android/phone/PLMNListPreference;

    #getter for: Lcom/android/phone/PLMNListPreference;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/phone/PLMNListPreference;->access$700(Lcom/android/phone/PLMNListPreference;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/PLMNListPreference$MyHandler;->this$0:Lcom/android/phone/PLMNListPreference;

    #getter for: Lcom/android/phone/PLMNListPreference;->mHandler:Lcom/android/phone/PLMNListPreference$MyHandler;
    invoke-static {v3}, Lcom/android/phone/PLMNListPreference;->access$600(Lcom/android/phone/PLMNListPreference;)Lcom/android/phone/PLMNListPreference$MyHandler;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/phone/PLMNListPreference$MyHandler;->this$0:Lcom/android/phone/PLMNListPreference;

    #getter for: Lcom/android/phone/PLMNListPreference;->mSlotId:I
    invoke-static {v5}, Lcom/android/phone/PLMNListPreference;->access$500(Lcom/android/phone/PLMNListPreference;)I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/phone/PLMNListPreference$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->getPreferedOperatorList(Landroid/os/Message;)V

    goto :goto_1
.end method
