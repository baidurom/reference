.class Lcom/android/phone/CdmaNetworkSelectListPreference$MyHandler;
.super Landroid/os/Handler;
.source "CdmaNetworkSelectListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CdmaNetworkSelectListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# static fields
.field private static final MESSAGE_GET_PREFERRED_NETWORK_TYPE:I = 0x0

.field private static final MESSAGE_SET_PREFERRED_NETWORK_TYPE:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/phone/CdmaNetworkSelectListPreference;


# direct methods
.method private constructor <init>(Lcom/android/phone/CdmaNetworkSelectListPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/phone/CdmaNetworkSelectListPreference$MyHandler;->this$0:Lcom/android/phone/CdmaNetworkSelectListPreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/CdmaNetworkSelectListPreference;Lcom/android/phone/CdmaNetworkSelectListPreference$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/phone/CdmaNetworkSelectListPreference$MyHandler;-><init>(Lcom/android/phone/CdmaNetworkSelectListPreference;)V

    return-void
.end method

.method private handleGetPreferredNetworkTypeResponse(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    .line 111
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 113
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_2

    .line 114
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    aget v2, v3, v6

    .line 115
    .local v2, type:I
    const-string v1, "CDMA/EvDo"

    .line 116
    .local v1, networkTypeSetting:Ljava/lang/String;
    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    .line 117
    const-string v1, "CDMA only"

    .line 121
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/phone/CdmaNetworkSelectListPreference$MyHandler;->this$0:Lcom/android/phone/CdmaNetworkSelectListPreference;

    #calls: Lcom/android/phone/CdmaNetworkSelectListPreference;->setNetworkTypeSettingValue(Ljava/lang/String;)V
    invoke-static {v3, v1}, Lcom/android/phone/CdmaNetworkSelectListPreference;->access$100(Lcom/android/phone/CdmaNetworkSelectListPreference;Ljava/lang/String;)V

    .line 122
    iget-object v3, p0, Lcom/android/phone/CdmaNetworkSelectListPreference$MyHandler;->this$0:Lcom/android/phone/CdmaNetworkSelectListPreference;

    invoke-virtual {v3}, Lcom/android/phone/CdmaNetworkSelectListPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "SelectedNetworkType"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 124
    const-string v3, "CdmaNetworkSelectListPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get preferred network type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .end local v1           #networkTypeSetting:Ljava/lang/String;
    .end local v2           #type:I
    :goto_1
    return-void

    .line 118
    .restart local v1       #networkTypeSetting:Ljava/lang/String;
    .restart local v2       #type:I
    :cond_1
    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    .line 119
    const-string v1, "EvDo only"

    goto :goto_0

    .line 127
    .end local v1           #networkTypeSetting:Ljava/lang/String;
    .end local v2           #type:I
    :cond_2
    const-string v3, "CdmaNetworkSelectListPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get preferred network type, exception="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v3, p0, Lcom/android/phone/CdmaNetworkSelectListPreference$MyHandler;->this$0:Lcom/android/phone/CdmaNetworkSelectListPreference;

    invoke-virtual {v3, v6}, Lcom/android/phone/CdmaNetworkSelectListPreference;->setEnabled(Z)V

    goto :goto_1
.end method

.method private handleSetPreferredNetworkTypeResponse(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    .line 134
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 136
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 138
    iget-object v1, p0, Lcom/android/phone/CdmaNetworkSelectListPreference$MyHandler;->this$0:Lcom/android/phone/CdmaNetworkSelectListPreference;

    invoke-virtual {v1, v4}, Lcom/android/phone/CdmaNetworkSelectListPreference;->setEnabled(Z)V

    .line 140
    const-string v1, "CdmaNetworkSelectListPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set preferred network type, exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v1, p0, Lcom/android/phone/CdmaNetworkSelectListPreference$MyHandler;->this$0:Lcom/android/phone/CdmaNetworkSelectListPreference;

    #getter for: Lcom/android/phone/CdmaNetworkSelectListPreference;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/phone/CdmaNetworkSelectListPreference;->access$200(Lcom/android/phone/CdmaNetworkSelectListPreference;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {p0, v4}, Lcom/android/phone/CdmaNetworkSelectListPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 146
    :goto_0
    return-void

    .line 144
    :cond_0
    const-string v1, "CdmaNetworkSelectListPreference"

    const-string v2, "set preferred network type done"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 98
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 108
    :goto_0
    return-void

    .line 100
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/phone/CdmaNetworkSelectListPreference$MyHandler;->handleGetPreferredNetworkTypeResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 104
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/phone/CdmaNetworkSelectListPreference$MyHandler;->handleSetPreferredNetworkTypeResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 98
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
