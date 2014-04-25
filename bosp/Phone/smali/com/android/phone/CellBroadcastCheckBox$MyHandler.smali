.class Lcom/android/phone/CellBroadcastCheckBox$MyHandler;
.super Landroid/os/Handler;
.source "CellBroadcastCheckBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CellBroadcastCheckBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CellBroadcastCheckBox;


# direct methods
.method private constructor <init>(Lcom/android/phone/CellBroadcastCheckBox;)V
    .locals 0
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/phone/CellBroadcastCheckBox$MyHandler;->this$0:Lcom/android/phone/CellBroadcastCheckBox;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/CellBroadcastCheckBox;Lcom/android/phone/CellBroadcastCheckBox$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 171
    invoke-direct {p0, p1}, Lcom/android/phone/CellBroadcastCheckBox$MyHandler;-><init>(Lcom/android/phone/CellBroadcastCheckBox;)V

    return-void
.end method

.method private handleGetStateResponse(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/16 v8, 0x190

    const/16 v7, 0x12c

    const/16 v6, 0x64

    const/4 v5, 0x0

    .line 185
    iget v3, p1, Landroid/os/Message;->arg2:I

    if-ne v3, v6, :cond_2

    .line 186
    iget-object v3, p0, Lcom/android/phone/CellBroadcastCheckBox$MyHandler;->this$0:Lcom/android/phone/CellBroadcastCheckBox;

    #getter for: Lcom/android/phone/CellBroadcastCheckBox;->mListener:Lcom/android/phone/TimeConsumingPreferenceListener;
    invoke-static {v3}, Lcom/android/phone/CellBroadcastCheckBox;->access$100(Lcom/android/phone/CellBroadcastCheckBox;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 201
    :cond_0
    :goto_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 202
    .local v0, ar:Landroid/os/AsyncResult;
    if-nez v0, :cond_4

    .line 203
    const-string v3, "Settings/CellBroadcastCheckBox"

    const-string v4, "handleGetStateResponse,ar is null"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget v3, p1, Landroid/os/Message;->arg2:I

    if-ne v3, v6, :cond_3

    .line 205
    iget-object v3, p0, Lcom/android/phone/CellBroadcastCheckBox$MyHandler;->this$0:Lcom/android/phone/CellBroadcastCheckBox;

    invoke-virtual {v3, v5}, Lcom/android/phone/CellBroadcastCheckBox;->setChecked(Z)V

    .line 206
    iget-object v3, p0, Lcom/android/phone/CellBroadcastCheckBox$MyHandler;->this$0:Lcom/android/phone/CellBroadcastCheckBox;

    invoke-virtual {v3, v5}, Lcom/android/phone/CellBroadcastCheckBox;->setEnabled(Z)V

    .line 250
    :cond_1
    :goto_1
    return-void

    .line 191
    .end local v0           #ar:Landroid/os/AsyncResult;
    :cond_2
    iget-object v3, p0, Lcom/android/phone/CellBroadcastCheckBox$MyHandler;->this$0:Lcom/android/phone/CellBroadcastCheckBox;

    #getter for: Lcom/android/phone/CellBroadcastCheckBox;->mListener:Lcom/android/phone/TimeConsumingPreferenceListener;
    invoke-static {v3}, Lcom/android/phone/CellBroadcastCheckBox;->access$100(Lcom/android/phone/CellBroadcastCheckBox;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 193
    iget-object v3, p0, Lcom/android/phone/CellBroadcastCheckBox$MyHandler;->this$0:Lcom/android/phone/CellBroadcastCheckBox;

    #getter for: Lcom/android/phone/CellBroadcastCheckBox;->mListener:Lcom/android/phone/TimeConsumingPreferenceListener;
    invoke-static {v3}, Lcom/android/phone/CellBroadcastCheckBox;->access$100(Lcom/android/phone/CellBroadcastCheckBox;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/CellBroadcastCheckBox$MyHandler;->this$0:Lcom/android/phone/CellBroadcastCheckBox;

    invoke-interface {v3, v4, v5}, Lcom/android/phone/TimeConsumingPreferenceListener;->onFinished(Landroid/preference/Preference;Z)V

    .line 194
    iget-object v3, p0, Lcom/android/phone/CellBroadcastCheckBox$MyHandler;->this$0:Lcom/android/phone/CellBroadcastCheckBox;

    #getter for: Lcom/android/phone/CellBroadcastCheckBox;->lastCheckStatus:Z
    invoke-static {v3}, Lcom/android/phone/CellBroadcastCheckBox;->access$200(Lcom/android/phone/CellBroadcastCheckBox;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 196
    new-instance v1, Lcom/android/phone/RecoverChannelSettings;

    iget-object v3, p0, Lcom/android/phone/CellBroadcastCheckBox$MyHandler;->this$0:Lcom/android/phone/CellBroadcastCheckBox;

    iget v3, v3, Lcom/android/phone/CellBroadcastCheckBox;->mSimId:I

    iget-object v4, p0, Lcom/android/phone/CellBroadcastCheckBox$MyHandler;->this$0:Lcom/android/phone/CellBroadcastCheckBox;

    invoke-virtual {v4}, Lcom/android/phone/CellBroadcastCheckBox;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/android/phone/RecoverChannelSettings;-><init>(ILandroid/content/ContentResolver;)V

    .line 197
    .local v1, setting:Lcom/android/phone/RecoverChannelSettings;
    invoke-virtual {v1}, Lcom/android/phone/RecoverChannelSettings;->updateChannelStatus()V

    goto :goto_0

    .line 208
    .end local v1           #setting:Lcom/android/phone/RecoverChannelSettings;
    .restart local v0       #ar:Landroid/os/AsyncResult;
    :cond_3
    iget-object v3, p0, Lcom/android/phone/CellBroadcastCheckBox$MyHandler;->this$0:Lcom/android/phone/CellBroadcastCheckBox;

    #getter for: Lcom/android/phone/CellBroadcastCheckBox;->mListener:Lcom/android/phone/TimeConsumingPreferenceListener;
    invoke-static {v3}, Lcom/android/phone/CellBroadcastCheckBox;->access$100(Lcom/android/phone/CellBroadcastCheckBox;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 209
    iget-object v3, p0, Lcom/android/phone/CellBroadcastCheckBox$MyHandler;->this$0:Lcom/android/phone/CellBroadcastCheckBox;

    #getter for: Lcom/android/phone/CellBroadcastCheckBox;->mListener:Lcom/android/phone/TimeConsumingPreferenceListener;
    invoke-static {v3}, Lcom/android/phone/CellBroadcastCheckBox;->access$100(Lcom/android/phone/CellBroadcastCheckBox;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/CellBroadcastCheckBox$MyHandler;->this$0:Lcom/android/phone/CellBroadcastCheckBox;

    invoke-interface {v3, v4, v7}, Lcom/android/phone/TimeConsumingPreferenceListener;->onError(Landroid/preference/Preference;I)V

    goto :goto_1

    .line 213
    :cond_4
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_6

    .line 216
    iget v3, p1, Landroid/os/Message;->arg2:I

    if-ne v3, v6, :cond_5

    .line 217
    iget-object v3, p0, Lcom/android/phone/CellBroadcastCheckBox$MyHandler;->this$0:Lcom/android/phone/CellBroadcastCheckBox;

    invoke-virtual {v3, v5}, Lcom/android/phone/CellBroadcastCheckBox;->setChecked(Z)V

    .line 218
    iget-object v3, p0, Lcom/android/phone/CellBroadcastCheckBox$MyHandler;->this$0:Lcom/android/phone/CellBroadcastCheckBox;

    invoke-virtual {v3, v5}, Lcom/android/phone/CellBroadcastCheckBox;->setEnabled(Z)V

    goto :goto_1

    .line 220
    :cond_5
    iget-object v3, p0, Lcom/android/phone/CellBroadcastCheckBox$MyHandler;->this$0:Lcom/android/phone/CellBroadcastCheckBox;

    #getter for: Lcom/android/phone/CellBroadcastCheckBox;->mListener:Lcom/android/phone/TimeConsumingPreferenceListener;
    invoke-static {v3}, Lcom/android/phone/CellBroadcastCheckBox;->access$100(Lcom/android/phone/CellBroadcastCheckBox;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 221
    iget-object v3, p0, Lcom/android/phone/CellBroadcastCheckBox$MyHandler;->this$0:Lcom/android/phone/CellBroadcastCheckBox;

    #getter for: Lcom/android/phone/CellBroadcastCheckBox;->mListener:Lcom/android/phone/TimeConsumingPreferenceListener;
    invoke-static {v3}, Lcom/android/phone/CellBroadcastCheckBox;->access$100(Lcom/android/phone/CellBroadcastCheckBox;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/CellBroadcastCheckBox$MyHandler;->this$0:Lcom/android/phone/CellBroadcastCheckBox;

    invoke-interface {v3, v4, v7}, Lcom/android/phone/TimeConsumingPreferenceListener;->onError(Landroid/preference/Preference;I)V

    goto :goto_1

    .line 225
    :cond_6
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/Throwable;

    if-eqz v3, :cond_8

    .line 226
    iget v3, p1, Landroid/os/Message;->arg2:I

    if-ne v3, v6, :cond_7

    .line 227
    iget-object v3, p0, Lcom/android/phone/CellBroadcastCheckBox$MyHandler;->this$0:Lcom/android/phone/CellBroadcastCheckBox;

    invoke-virtual {v3, v5}, Lcom/android/phone/CellBroadcastCheckBox;->setChecked(Z)V

    .line 228
    iget-object v3, p0, Lcom/android/phone/CellBroadcastCheckBox$MyHandler;->this$0:Lcom/android/phone/CellBroadcastCheckBox;

    invoke-virtual {v3, v5}, Lcom/android/phone/CellBroadcastCheckBox;->setEnabled(Z)V

    goto/16 :goto_1

    .line 230
    :cond_7
    iget-object v3, p0, Lcom/android/phone/CellBroadcastCheckBox$MyHandler;->this$0:Lcom/android/phone/CellBroadcastCheckBox;

    #getter for: Lcom/android/phone/CellBroadcastCheckBox;->mListener:Lcom/android/phone/TimeConsumingPreferenceListener;
    invoke-static {v3}, Lcom/android/phone/CellBroadcastCheckBox;->access$100(Lcom/android/phone/CellBroadcastCheckBox;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 231
    iget-object v3, p0, Lcom/android/phone/CellBroadcastCheckBox$MyHandler;->this$0:Lcom/android/phone/CellBroadcastCheckBox;

    #getter for: Lcom/android/phone/CellBroadcastCheckBox;->mListener:Lcom/android/phone/TimeConsumingPreferenceListener;
    invoke-static {v3}, Lcom/android/phone/CellBroadcastCheckBox;->access$100(Lcom/android/phone/CellBroadcastCheckBox;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/CellBroadcastCheckBox$MyHandler;->this$0:Lcom/android/phone/CellBroadcastCheckBox;

    invoke-interface {v3, v4, v8}, Lcom/android/phone/TimeConsumingPreferenceListener;->onError(Landroid/preference/Preference;I)V

    goto/16 :goto_1

    .line 235
    :cond_8
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_9

    .line 236
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    .line 237
    .local v2, state:Ljava/lang/Boolean;
    iget-object v3, p0, Lcom/android/phone/CellBroadcastCheckBox$MyHandler;->this$0:Lcom/android/phone/CellBroadcastCheckBox;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/phone/CellBroadcastCheckBox;->setChecked(Z)V

    goto/16 :goto_1

    .line 239
    .end local v2           #state:Ljava/lang/Boolean;
    :cond_9
    iget v3, p1, Landroid/os/Message;->arg2:I

    if-ne v3, v6, :cond_a

    .line 240
    iget-object v3, p0, Lcom/android/phone/CellBroadcastCheckBox$MyHandler;->this$0:Lcom/android/phone/CellBroadcastCheckBox;

    invoke-virtual {v3, v5}, Lcom/android/phone/CellBroadcastCheckBox;->setChecked(Z)V

    .line 241
    iget-object v3, p0, Lcom/android/phone/CellBroadcastCheckBox$MyHandler;->this$0:Lcom/android/phone/CellBroadcastCheckBox;

    invoke-virtual {v3, v5}, Lcom/android/phone/CellBroadcastCheckBox;->setEnabled(Z)V

    goto/16 :goto_1

    .line 243
    :cond_a
    iget-object v3, p0, Lcom/android/phone/CellBroadcastCheckBox$MyHandler;->this$0:Lcom/android/phone/CellBroadcastCheckBox;

    #getter for: Lcom/android/phone/CellBroadcastCheckBox;->mListener:Lcom/android/phone/TimeConsumingPreferenceListener;
    invoke-static {v3}, Lcom/android/phone/CellBroadcastCheckBox;->access$100(Lcom/android/phone/CellBroadcastCheckBox;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 244
    iget-object v3, p0, Lcom/android/phone/CellBroadcastCheckBox$MyHandler;->this$0:Lcom/android/phone/CellBroadcastCheckBox;

    #getter for: Lcom/android/phone/CellBroadcastCheckBox;->mListener:Lcom/android/phone/TimeConsumingPreferenceListener;
    invoke-static {v3}, Lcom/android/phone/CellBroadcastCheckBox;->access$100(Lcom/android/phone/CellBroadcastCheckBox;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/CellBroadcastCheckBox$MyHandler;->this$0:Lcom/android/phone/CellBroadcastCheckBox;

    invoke-interface {v3, v4, v8}, Lcom/android/phone/TimeConsumingPreferenceListener;->onError(Landroid/preference/Preference;I)V

    goto/16 :goto_1
.end method

.method private handleSetStateResponse(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/16 v3, 0x12c

    .line 253
    iget v1, p1, Landroid/os/Message;->arg2:I

    const/16 v2, 0x65

    if-ne v1, v2, :cond_0

    .line 254
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 255
    .local v0, ar:Landroid/os/AsyncResult;
    if-nez v0, :cond_1

    .line 256
    const-string v1, "Settings/CellBroadcastCheckBox"

    const-string v2, "handleSetStateResponse,ar is null"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v1, p0, Lcom/android/phone/CellBroadcastCheckBox$MyHandler;->this$0:Lcom/android/phone/CellBroadcastCheckBox;

    #getter for: Lcom/android/phone/CellBroadcastCheckBox;->mListener:Lcom/android/phone/TimeConsumingPreferenceListener;
    invoke-static {v1}, Lcom/android/phone/CellBroadcastCheckBox;->access$100(Lcom/android/phone/CellBroadcastCheckBox;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CellBroadcastCheckBox$MyHandler;->this$0:Lcom/android/phone/CellBroadcastCheckBox;

    invoke-interface {v1, v2, v3}, Lcom/android/phone/TimeConsumingPreferenceListener;->onError(Landroid/preference/Preference;I)V

    .line 270
    .end local v0           #ar:Landroid/os/AsyncResult;
    :cond_0
    :goto_0
    return-void

    .line 260
    .restart local v0       #ar:Landroid/os/AsyncResult;
    :cond_1
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_2

    .line 263
    iget-object v1, p0, Lcom/android/phone/CellBroadcastCheckBox$MyHandler;->this$0:Lcom/android/phone/CellBroadcastCheckBox;

    #getter for: Lcom/android/phone/CellBroadcastCheckBox;->mListener:Lcom/android/phone/TimeConsumingPreferenceListener;
    invoke-static {v1}, Lcom/android/phone/CellBroadcastCheckBox;->access$100(Lcom/android/phone/CellBroadcastCheckBox;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 264
    iget-object v1, p0, Lcom/android/phone/CellBroadcastCheckBox$MyHandler;->this$0:Lcom/android/phone/CellBroadcastCheckBox;

    #getter for: Lcom/android/phone/CellBroadcastCheckBox;->mListener:Lcom/android/phone/TimeConsumingPreferenceListener;
    invoke-static {v1}, Lcom/android/phone/CellBroadcastCheckBox;->access$100(Lcom/android/phone/CellBroadcastCheckBox;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CellBroadcastCheckBox$MyHandler;->this$0:Lcom/android/phone/CellBroadcastCheckBox;

    invoke-interface {v1, v2, v3}, Lcom/android/phone/TimeConsumingPreferenceListener;->onError(Landroid/preference/Preference;I)V

    goto :goto_0

    .line 266
    :cond_2
    const-string v1, "Settings/CellBroadcastCheckBox"

    const-string v2, "handleSetStateResponse: re get ok"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v1, p0, Lcom/android/phone/CellBroadcastCheckBox$MyHandler;->this$0:Lcom/android/phone/CellBroadcastCheckBox;

    const/4 v2, 0x0

    #calls: Lcom/android/phone/CellBroadcastCheckBox;->getCBState(Z)V
    invoke-static {v1, v2}, Lcom/android/phone/CellBroadcastCheckBox;->access$300(Lcom/android/phone/CellBroadcastCheckBox;Z)V

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 174
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 182
    :goto_0
    return-void

    .line 176
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/phone/CellBroadcastCheckBox$MyHandler;->handleGetStateResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 179
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/phone/CellBroadcastCheckBox$MyHandler;->handleSetStateResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 174
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
