.class Lcom/android/phone/CdmaCallForwardEditPreference$MyHandler;
.super Landroid/os/Handler;
.source "CdmaCallForwardEditPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CdmaCallForwardEditPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# static fields
.field private static final MESSAGE_GET_CF:I = 0x0

.field private static final MESSAGE_SET_CF:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/phone/CdmaCallForwardEditPreference;


# direct methods
.method private constructor <init>(Lcom/android/phone/CdmaCallForwardEditPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/phone/CdmaCallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CdmaCallForwardEditPreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/CdmaCallForwardEditPreference;Lcom/android/phone/CdmaCallForwardEditPreference$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/android/phone/CdmaCallForwardEditPreference$MyHandler;-><init>(Lcom/android/phone/CdmaCallForwardEditPreference;)V

    return-void
.end method

.method private handleGetCFResponse(Landroid/os/Message;)V
    .locals 13
    .parameter "msg"

    .prologue
    const/4 v12, 0x0

    const/16 v11, 0x190

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 127
    iget v7, p1, Landroid/os/Message;->arg2:I

    if-ne v7, v9, :cond_1

    .line 128
    iget-object v7, p0, Lcom/android/phone/CdmaCallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CdmaCallForwardEditPreference;

    iget-object v7, v7, Lcom/android/phone/CdmaCallForwardEditPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v8, p0, Lcom/android/phone/CdmaCallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CdmaCallForwardEditPreference;

    invoke-interface {v7, v8, v10}, Lcom/android/phone/TimeConsumingPreferenceListener;->onFinished(Landroid/preference/Preference;Z)V

    .line 133
    :goto_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 135
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v7, p0, Lcom/android/phone/CdmaCallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CdmaCallForwardEditPreference;

    iput-object v12, v7, Lcom/android/phone/CdmaCallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    .line 136
    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v7, :cond_2

    .line 138
    iget-object v7, p0, Lcom/android/phone/CdmaCallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CdmaCallForwardEditPreference;

    iget-object v8, v7, Lcom/android/phone/CdmaCallForwardEditPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v9, p0, Lcom/android/phone/CdmaCallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CdmaCallForwardEditPreference;

    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v7, Lcom/android/internal/telephony/CommandException;

    invoke-interface {v8, v9, v7}, Lcom/android/phone/TimeConsumingPreferenceListener;->onException(Landroid/preference/Preference;Lcom/android/internal/telephony/CommandException;)V

    .line 191
    :cond_0
    :goto_1
    iget-object v7, p0, Lcom/android/phone/CdmaCallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CdmaCallForwardEditPreference;

    #calls: Lcom/android/phone/CdmaCallForwardEditPreference;->updateSummaryText()V
    invoke-static {v7}, Lcom/android/phone/CdmaCallForwardEditPreference;->access$200(Lcom/android/phone/CdmaCallForwardEditPreference;)V

    .line 192
    return-void

    .line 130
    .end local v0           #ar:Landroid/os/AsyncResult;
    :cond_1
    iget-object v7, p0, Lcom/android/phone/CdmaCallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CdmaCallForwardEditPreference;

    iget-object v7, v7, Lcom/android/phone/CdmaCallForwardEditPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v8, p0, Lcom/android/phone/CdmaCallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CdmaCallForwardEditPreference;

    invoke-interface {v7, v8, v9}, Lcom/android/phone/TimeConsumingPreferenceListener;->onFinished(Landroid/preference/Preference;Z)V

    goto :goto_0

    .line 141
    .restart local v0       #ar:Landroid/os/AsyncResult;
    :cond_2
    iget-object v7, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v7, v7, Ljava/lang/Throwable;

    if-eqz v7, :cond_3

    .line 142
    iget-object v7, p0, Lcom/android/phone/CdmaCallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CdmaCallForwardEditPreference;

    iget-object v7, v7, Lcom/android/phone/CdmaCallForwardEditPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v8, p0, Lcom/android/phone/CdmaCallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CdmaCallForwardEditPreference;

    invoke-interface {v7, v8, v11}, Lcom/android/phone/TimeConsumingPreferenceListener;->onError(Landroid/preference/Preference;I)V

    .line 144
    :cond_3
    iget-object v7, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, [Lcom/android/internal/telephony/CallForwardInfo;

    move-object v2, v7

    check-cast v2, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 145
    .local v2, cfInfoArray:[Lcom/android/internal/telephony/CallForwardInfo;
    array-length v7, v2

    if-nez v7, :cond_4

    .line 147
    iget-object v7, p0, Lcom/android/phone/CdmaCallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CdmaCallForwardEditPreference;

    invoke-virtual {v7, v10}, Lcom/android/phone/CdmaCallForwardEditPreference;->setEnabled(Z)V

    .line 148
    iget-object v7, p0, Lcom/android/phone/CdmaCallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CdmaCallForwardEditPreference;

    iget-object v7, v7, Lcom/android/phone/CdmaCallForwardEditPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v8, p0, Lcom/android/phone/CdmaCallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CdmaCallForwardEditPreference;

    invoke-interface {v7, v8, v11}, Lcom/android/phone/TimeConsumingPreferenceListener;->onError(Landroid/preference/Preference;I)V

    goto :goto_1

    .line 150
    :cond_4
    const/4 v3, 0x0

    .local v3, i:I
    array-length v5, v2

    .local v5, length:I
    :goto_2
    if-ge v3, v5, :cond_0

    .line 153
    iget-object v7, p0, Lcom/android/phone/CdmaCallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CdmaCallForwardEditPreference;

    #getter for: Lcom/android/phone/CdmaCallForwardEditPreference;->mServiceClass:I
    invoke-static {v7}, Lcom/android/phone/CdmaCallForwardEditPreference;->access$100(Lcom/android/phone/CdmaCallForwardEditPreference;)I

    move-result v7

    aget-object v8, v2, v3

    iget v8, v8, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/2addr v7, v8

    if-eqz v7, :cond_5

    .line 155
    aget-object v4, v2, v3

    .line 156
    .local v4, info:Lcom/android/internal/telephony/CallForwardInfo;
    iget-object v7, p0, Lcom/android/phone/CdmaCallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CdmaCallForwardEditPreference;

    invoke-virtual {v7, v4}, Lcom/android/phone/CdmaCallForwardEditPreference;->handleCallForwardResult(Lcom/android/internal/telephony/CallForwardInfo;)V

    .line 162
    iget v7, p1, Landroid/os/Message;->arg2:I

    if-ne v7, v9, :cond_5

    iget v7, p1, Landroid/os/Message;->arg1:I

    if-nez v7, :cond_5

    iget v7, v4, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v7, v9, :cond_5

    .line 166
    iget-object v7, p0, Lcom/android/phone/CdmaCallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CdmaCallForwardEditPreference;

    iget v7, v7, Lcom/android/phone/CdmaCallForwardEditPreference;->reason:I

    packed-switch v7, :pswitch_data_0

    .line 174
    iget-object v7, p0, Lcom/android/phone/CdmaCallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CdmaCallForwardEditPreference;

    invoke-virtual {v7}, Lcom/android/phone/CdmaCallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0c007a

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 176
    .local v6, s:Ljava/lang/CharSequence;
    :goto_3
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/phone/CdmaCallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CdmaCallForwardEditPreference;

    invoke-virtual {v7}, Lcom/android/phone/CdmaCallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 177
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v7, 0x7f0c0084

    invoke-virtual {v1, v7, v12}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 178
    iget-object v7, p0, Lcom/android/phone/CdmaCallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CdmaCallForwardEditPreference;

    invoke-virtual {v7}, Lcom/android/phone/CdmaCallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0c007c

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 179
    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 180
    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 181
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    .line 150
    .end local v1           #builder:Landroid/app/AlertDialog$Builder;
    .end local v4           #info:Lcom/android/internal/telephony/CallForwardInfo;
    .end local v6           #s:Ljava/lang/CharSequence;
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 168
    .restart local v4       #info:Lcom/android/internal/telephony/CallForwardInfo;
    :pswitch_0
    iget-object v7, p0, Lcom/android/phone/CdmaCallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CdmaCallForwardEditPreference;

    invoke-virtual {v7}, Lcom/android/phone/CdmaCallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0c0070

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 169
    .restart local v6       #s:Ljava/lang/CharSequence;
    goto :goto_3

    .line 171
    .end local v6           #s:Ljava/lang/CharSequence;
    :pswitch_1
    iget-object v7, p0, Lcom/android/phone/CdmaCallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CdmaCallForwardEditPreference;

    invoke-virtual {v7}, Lcom/android/phone/CdmaCallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0c0075

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 172
    .restart local v6       #s:Ljava/lang/CharSequence;
    goto :goto_3

    .line 166
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleSetCFResponse(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    .line 195
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 197
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 202
    :cond_0
    iget-object v1, p0, Lcom/android/phone/CdmaCallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CdmaCallForwardEditPreference;

    iget-object v1, v1, Lcom/android/phone/CdmaCallForwardEditPreference;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/CdmaCallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CdmaCallForwardEditPreference;

    iget v2, v2, Lcom/android/phone/CdmaCallForwardEditPreference;->reason:I

    const/4 v3, 0x0

    iget v4, p1, Landroid/os/Message;->arg1:I

    const/4 v5, 0x1

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/android/phone/CdmaCallForwardEditPreference$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    .line 204
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 114
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 122
    :goto_0
    return-void

    .line 116
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/phone/CdmaCallForwardEditPreference$MyHandler;->handleGetCFResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 119
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/phone/CdmaCallForwardEditPreference$MyHandler;->handleSetCFResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 114
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
