.class Lcom/android/phone/BluetoothPhoneService$1;
.super Landroid/os/Handler;
.source "BluetoothPhoneService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BluetoothPhoneService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BluetoothPhoneService;


# direct methods
.method constructor <init>(Lcom/android/phone/BluetoothPhoneService;)V
    .locals 0
    .parameter

    .prologue
    .line 266
    iput-object p1, p0, Lcom/android/phone/BluetoothPhoneService$1;->this$0:Lcom/android/phone/BluetoothPhoneService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    .line 269
    const-string v4, "BluetoothPhoneService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleMessage: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 334
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 274
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 275
    .local v0, asResult:Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 276
    .local v2, iSimId:I
    const-string v4, "BluetoothPhoneService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleMessage: iSimId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v4, p0, Lcom/android/phone/BluetoothPhoneService$1;->this$0:Lcom/android/phone/BluetoothPhoneService;

    #calls: Lcom/android/phone/BluetoothPhoneService;->getDefaultSIMInternal()I
    invoke-static {v4}, Lcom/android/phone/BluetoothPhoneService;->access$100(Lcom/android/phone/BluetoothPhoneService;)I

    move-result v4

    if-ne v4, v2, :cond_0

    .line 278
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Landroid/telephony/ServiceState;

    .line 279
    .local v3, state:Landroid/telephony/ServiceState;
    iget-object v4, p0, Lcom/android/phone/BluetoothPhoneService$1;->this$0:Lcom/android/phone/BluetoothPhoneService;

    #calls: Lcom/android/phone/BluetoothPhoneService;->updateServiceState(Landroid/telephony/ServiceState;)V
    invoke-static {v4, v3}, Lcom/android/phone/BluetoothPhoneService;->access$200(Lcom/android/phone/BluetoothPhoneService;Landroid/telephony/ServiceState;)V

    goto :goto_0

    .line 293
    .end local v0           #asResult:Landroid/os/AsyncResult;
    .end local v2           #iSimId:I
    .end local v3           #state:Landroid/telephony/ServiceState;
    :pswitch_2
    const/4 v1, 0x0

    .line 294
    .local v1, connection:Lcom/android/internal/telephony/Connection;
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    iget-object v4, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v4, v4, Lcom/android/internal/telephony/Connection;

    if-eqz v4, :cond_1

    .line 295
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    iget-object v1, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .end local v1           #connection:Lcom/android/internal/telephony/Connection;
    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 302
    .restart local v1       #connection:Lcom/android/internal/telephony/Connection;
    :cond_1
    iget-object v4, p0, Lcom/android/phone/BluetoothPhoneService$1;->this$0:Lcom/android/phone/BluetoothPhoneService;

    #calls: Lcom/android/phone/BluetoothPhoneService;->handlePreciseCallStateChange(Lcom/android/internal/telephony/Connection;)V
    invoke-static {v4, v1}, Lcom/android/phone/BluetoothPhoneService;->access$300(Lcom/android/phone/BluetoothPhoneService;Lcom/android/internal/telephony/Connection;)V

    goto :goto_0

    .line 306
    .end local v1           #connection:Lcom/android/internal/telephony/Connection;
    :pswitch_3
    iget-object v4, p0, Lcom/android/phone/BluetoothPhoneService$1;->this$0:Lcom/android/phone/BluetoothPhoneService;

    #calls: Lcom/android/phone/BluetoothPhoneService;->handleListCurrentCalls()V
    invoke-static {v4}, Lcom/android/phone/BluetoothPhoneService;->access$400(Lcom/android/phone/BluetoothPhoneService;)V

    goto :goto_0

    .line 309
    :pswitch_4
    iget-object v4, p0, Lcom/android/phone/BluetoothPhoneService$1;->this$0:Lcom/android/phone/BluetoothPhoneService;

    #calls: Lcom/android/phone/BluetoothPhoneService;->handleQueryPhoneState()V
    invoke-static {v4}, Lcom/android/phone/BluetoothPhoneService;->access$500(Lcom/android/phone/BluetoothPhoneService;)V

    goto :goto_0

    .line 312
    :pswitch_5
    iget-object v4, p0, Lcom/android/phone/BluetoothPhoneService$1;->this$0:Lcom/android/phone/BluetoothPhoneService;

    #calls: Lcom/android/phone/BluetoothPhoneService;->handleCdmaSwapSecondCallState()V
    invoke-static {v4}, Lcom/android/phone/BluetoothPhoneService;->access$600(Lcom/android/phone/BluetoothPhoneService;)V

    goto :goto_0

    .line 315
    :pswitch_6
    iget-object v5, p0, Lcom/android/phone/BluetoothPhoneService$1;->this$0:Lcom/android/phone/BluetoothPhoneService;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    #calls: Lcom/android/phone/BluetoothPhoneService;->handleCdmaSetSecondCallState(Z)V
    invoke-static {v5, v4}, Lcom/android/phone/BluetoothPhoneService;->access$700(Lcom/android/phone/BluetoothPhoneService;Z)V

    goto :goto_0

    .line 323
    :pswitch_7
    const-string v4, "BluetoothPhoneService"

    const-string v5, "handleMessage: receive ring event"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 328
    :pswitch_8
    const-string v4, "RESTRICT_MULTITLAKS"

    #calls: Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/phone/BluetoothPhoneService;->access$800(Ljava/lang/String;)V

    goto :goto_0

    .line 270
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_2
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method
