.class Landroid/server/BluetoothAdapterStateMachine$BluetoothOn;
.super Lcom/android/internal/util/State;
.source "BluetoothAdapterStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothAdapterStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BluetoothOn"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothAdapterStateMachine;


# direct methods
.method private constructor <init>(Landroid/server/BluetoothAdapterStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 502
    iput-object p1, p0, Landroid/server/BluetoothAdapterStateMachine$BluetoothOn;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/server/BluetoothAdapterStateMachine;Landroid/server/BluetoothAdapterStateMachine$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 502
    invoke-direct {p0, p1}, Landroid/server/BluetoothAdapterStateMachine$BluetoothOn;-><init>(Landroid/server/BluetoothAdapterStateMachine;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enter BluetoothOn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$BluetoothOn;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #calls: Landroid/server/BluetoothAdapterStateMachine;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v1}, Landroid/server/BluetoothAdapterStateMachine;->access$6100(Landroid/server/BluetoothAdapterStateMachine;)Landroid/os/Message;

    move-result-object v1

    iget v1, v1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Landroid/server/BluetoothAdapterStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v0}, Landroid/server/BluetoothAdapterStateMachine;->access$700(Ljava/lang/String;)V

    .line 507
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 7
    .parameter "message"

    .prologue
    const/16 v6, 0x37

    const/4 v2, 0x0

    .line 510
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BluetoothOn process message: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Landroid/server/BluetoothAdapterStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v1}, Landroid/server/BluetoothAdapterStateMachine;->access$700(Ljava/lang/String;)V

    .line 512
    const/4 v0, 0x1

    .line 513
    .local v0, retValue:Z
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    move v0, v2

    .line 571
    .end local v0           #retValue:Z
    :cond_0
    :goto_0
    return v0

    .line 515
    .restart local v0       #retValue:Z
    :sswitch_0
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$BluetoothOn;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #calls: Landroid/server/BluetoothAdapterStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, p1}, Landroid/server/BluetoothAdapterStateMachine;->access$6200(Landroid/server/BluetoothAdapterStateMachine;Landroid/os/Message;)V

    .line 517
    :sswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 518
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$BluetoothOn;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #calls: Landroid/server/BluetoothAdapterStateMachine;->persistSwitchSetting(Z)V
    invoke-static {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->access$1200(Landroid/server/BluetoothAdapterStateMachine;Z)V

    .line 521
    :cond_1
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$BluetoothOn;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v1}, Landroid/server/BluetoothAdapterStateMachine;->access$2700(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothService;

    move-result-object v1

    invoke-virtual {v1}, Landroid/server/BluetoothService;->isDiscovering()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 522
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$BluetoothOn;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v1}, Landroid/server/BluetoothAdapterStateMachine;->access$2700(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothService;

    move-result-object v1

    invoke-virtual {v1}, Landroid/server/BluetoothService;->cancelDiscovery()Z

    .line 524
    :cond_2
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$BluetoothOn;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v1}, Landroid/server/BluetoothAdapterStateMachine;->access$2700(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothService;

    move-result-object v1

    invoke-virtual {v1}, Landroid/server/BluetoothService;->isApplicationStateChangeTrackerEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 525
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$BluetoothOn;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v2, p0, Landroid/server/BluetoothAdapterStateMachine$BluetoothOn;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mPerProcessState:Landroid/server/BluetoothAdapterStateMachine$PerProcessState;
    invoke-static {v2}, Landroid/server/BluetoothAdapterStateMachine;->access$4100(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothAdapterStateMachine$PerProcessState;

    move-result-object v2

    #calls: Landroid/server/BluetoothAdapterStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->access$6300(Landroid/server/BluetoothAdapterStateMachine;Lcom/android/internal/util/IState;)V

    .line 526
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$BluetoothOn;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v2, p0, Landroid/server/BluetoothAdapterStateMachine$BluetoothOn;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/server/BluetoothAdapterStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    #calls: Landroid/server/BluetoothAdapterStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->access$6400(Landroid/server/BluetoothAdapterStateMachine;Landroid/os/Message;)V

    goto :goto_0

    .line 531
    :cond_3
    :sswitch_2
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$BluetoothOn;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    const/16 v3, 0xd

    #calls: Landroid/server/BluetoothAdapterStateMachine;->broadcastState(I)V
    invoke-static {v1, v3}, Landroid/server/BluetoothAdapterStateMachine;->access$900(Landroid/server/BluetoothAdapterStateMachine;I)V

    .line 532
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$BluetoothOn;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$BluetoothOn;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mSwitching:Landroid/server/BluetoothAdapterStateMachine$Switching;
    invoke-static {v3}, Landroid/server/BluetoothAdapterStateMachine;->access$3700(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothAdapterStateMachine$Switching;

    move-result-object v3

    #calls: Landroid/server/BluetoothAdapterStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v3}, Landroid/server/BluetoothAdapterStateMachine;->access$6500(Landroid/server/BluetoothAdapterStateMachine;Lcom/android/internal/util/IState;)V

    .line 533
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$BluetoothOn;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v1}, Landroid/server/BluetoothAdapterStateMachine;->access$2700(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothService;

    move-result-object v1

    invoke-virtual {v1}, Landroid/server/BluetoothService;->getAdapterConnectionState()I

    move-result v1

    if-eqz v1, :cond_5

    .line 535
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$BluetoothOn;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v1}, Landroid/server/BluetoothAdapterStateMachine;->access$2700(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothService;

    move-result-object v1

    invoke-virtual {v1}, Landroid/server/BluetoothService;->disconnectDevices()V

    .line 536
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$BluetoothOn;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    const/16 v3, 0x67

    const-wide/16 v4, 0xbb8

    invoke-virtual {v1, v3, v4, v5}, Landroid/server/BluetoothAdapterStateMachine;->sendMessageDelayed(IJ)V

    .line 544
    :goto_1
    iget v1, p1, Landroid/os/Message;->what:I

    if-eq v1, v6, :cond_4

    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$BluetoothOn;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v1}, Landroid/server/BluetoothAdapterStateMachine;->access$2700(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothService;

    move-result-object v1

    invoke-virtual {v1}, Landroid/server/BluetoothService;->isAirplaneModeOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 546
    :cond_4
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$BluetoothOn;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #calls: Landroid/server/BluetoothAdapterStateMachine;->allProcessesCallback(Z)V
    invoke-static {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->access$6600(Landroid/server/BluetoothAdapterStateMachine;Z)V

    .line 547
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$BluetoothOn;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v2, p0, Landroid/server/BluetoothAdapterStateMachine$BluetoothOn;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-virtual {v2, v6}, Landroid/server/BluetoothAdapterStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    #calls: Landroid/server/BluetoothAdapterStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->access$6700(Landroid/server/BluetoothAdapterStateMachine;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 539
    :cond_5
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$BluetoothOn;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v1}, Landroid/server/BluetoothAdapterStateMachine;->access$2700(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothService;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/server/BluetoothService;->switchConnectable(Z)V

    .line 540
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$BluetoothOn;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    const/16 v3, 0x69

    const-wide/16 v4, 0x1388

    invoke-virtual {v1, v3, v4, v5}, Landroid/server/BluetoothAdapterStateMachine;->sendMessageDelayed(IJ)V

    goto :goto_1

    .line 552
    :sswitch_3
    const-string v1, "BluetoothAdapterStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BluetoothOn received: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 555
    :sswitch_4
    iget-object v2, p0, Landroid/server/BluetoothAdapterStateMachine$BluetoothOn;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    const/4 v3, 0x1

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/IBluetoothStateChangeCallback;

    #calls: Landroid/server/BluetoothAdapterStateMachine;->perProcessCallback(ZLandroid/bluetooth/IBluetoothStateChangeCallback;)V
    invoke-static {v2, v3, v1}, Landroid/server/BluetoothAdapterStateMachine;->access$2500(Landroid/server/BluetoothAdapterStateMachine;ZLandroid/bluetooth/IBluetoothStateChangeCallback;)V

    goto/16 :goto_0

    .line 558
    :sswitch_5
    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$BluetoothOn;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/IBluetoothStateChangeCallback;

    #calls: Landroid/server/BluetoothAdapterStateMachine;->perProcessCallback(ZLandroid/bluetooth/IBluetoothStateChangeCallback;)V
    invoke-static {v3, v2, v1}, Landroid/server/BluetoothAdapterStateMachine;->access$2500(Landroid/server/BluetoothAdapterStateMachine;ZLandroid/bluetooth/IBluetoothStateChangeCallback;)V

    goto/16 :goto_0

    .line 561
    :sswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 565
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$BluetoothOn;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$BluetoothOn;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    const/16 v4, 0x6a

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/server/BluetoothAdapterStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 513
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_1
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0x36 -> :sswitch_6
        0x37 -> :sswitch_2
        0x38 -> :sswitch_3
        0x6a -> :sswitch_0
    .end sparse-switch
.end method
