.class Lcom/android/server/BluetoothManagerService$BluetoothHandler;
.super Landroid/os/Handler;
.source "BluetoothManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BluetoothManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BluetoothHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BluetoothManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/BluetoothManagerService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 694
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    .line 695
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 696
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 27
    .parameter "msg"

    .prologue
    .line 700
    const-string v22, "BluetoothManagerService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Message: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v22, v0

    sparse-switch v22, :sswitch_data_0

    .line 1097
    :cond_0
    :goto_0
    return-void

    .line 703
    :sswitch_0
    const-string v22, "BluetoothManagerService"

    const-string v23, "MESSAGE_GET_NAME_AND_ADDRESS"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;
    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v23

    monitor-enter v23

    .line 706
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->access$1300(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v22

    if-nez v22, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/BluetoothManagerService;->mBinding:Z
    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->access$1400(Lcom/android/server/BluetoothManagerService;)Z

    move-result v22

    if-nez v22, :cond_2

    .line 707
    const-string v22, "BluetoothManagerService"

    const-string v24, "Binding to service to get name and address"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;
    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v22

    const/16 v24, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->setGetNameAddressOnly(Z)V

    .line 710
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v22

    const/16 v24, 0x64

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v19

    .line 711
    .local v19, timeoutMsg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v22

    const-wide/16 v24, 0xbb8

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 712
    new-instance v9, Landroid/content/Intent;

    const-class v22, Landroid/bluetooth/IBluetooth;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 713
    .local v9, i:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;
    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->access$1500(Lcom/android/server/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    #getter for: Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v24

    const/16 v25, 0x1

    const/16 v26, -0x2

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v9, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;II)Z

    move-result v22

    if-nez v22, :cond_1

    .line 715
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v22

    const/16 v24, 0x64

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 716
    const-string v22, "BluetoothManagerService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "fail to bind to: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-class v25, Landroid/bluetooth/IBluetooth;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    .end local v9           #i:Landroid/content/Intent;
    .end local v19           #timeoutMsg:Landroid/os/Message;
    :goto_1
    monitor-exit v23

    goto/16 :goto_0

    :catchall_0
    move-exception v22

    monitor-exit v23
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v22

    .line 718
    .restart local v9       #i:Landroid/content/Intent;
    .restart local v19       #timeoutMsg:Landroid/os/Message;
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    const/16 v24, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v24

    #setter for: Lcom/android/server/BluetoothManagerService;->mBinding:Z
    invoke-static {v0, v1}, Lcom/android/server/BluetoothManagerService;->access$1402(Lcom/android/server/BluetoothManagerService;Z)Z

    goto :goto_1

    .line 722
    .end local v9           #i:Landroid/content/Intent;
    .end local v19           #timeoutMsg:Landroid/os/Message;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v22

    const/16 v24, 0xc9

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v17

    .line 723
    .local v17, saveMsg:Landroid/os/Message;
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v17

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 724
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->access$1300(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v22

    if-eqz v22, :cond_3

    .line 725
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 729
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v22

    const-wide/16 v24, 0x1f4

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 736
    .end local v17           #saveMsg:Landroid/os/Message;
    :sswitch_1
    const/16 v20, 0x0

    .line 737
    .local v20, unbind:Z
    const-string v22, "BluetoothManagerService"

    const-string v23, "MESSAGE_SAVE_NAME_AND_ADDRESS"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;
    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v23

    monitor-enter v23

    .line 739
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/BluetoothManagerService;->mEnable:Z
    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->access$1600(Lcom/android/server/BluetoothManagerService;)Z

    move-result v22

    if-nez v22, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->access$1300(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v22

    if-eqz v22, :cond_4

    .line 741
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->access$1300(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Landroid/bluetooth/IBluetooth;->enable()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 746
    :cond_4
    :goto_2
    :try_start_4
    monitor-exit v23
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 747
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->access$1300(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v22

    if-eqz v22, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    const/16 v24, 0x0

    #calls: Lcom/android/server/BluetoothManagerService;->waitForOnOff(ZZ)Z
    invoke-static/range {v22 .. v24}, Lcom/android/server/BluetoothManagerService;->access$1700(Lcom/android/server/BluetoothManagerService;ZZ)Z

    .line 748
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;
    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v23

    monitor-enter v23

    .line 749
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->access$1300(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-object v22

    if-eqz v22, :cond_b

    .line 750
    const/4 v10, 0x0

    .line 751
    .local v10, name:Ljava/lang/String;
    const/4 v5, 0x0

    .line 753
    .local v5, address:Ljava/lang/String;
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->access$1300(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Landroid/bluetooth/IBluetooth;->getName()Ljava/lang/String;

    move-result-object v10

    .line 754
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->access$1300(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Landroid/bluetooth/IBluetooth;->getAddress()Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    move-result-object v5

    .line 759
    :goto_3
    if-eqz v10, :cond_9

    if-eqz v5, :cond_9

    .line 760
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    #calls: Lcom/android/server/BluetoothManagerService;->storeNameAndAddress(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v10, v5}, Lcom/android/server/BluetoothManagerService;->access$100(Lcom/android/server/BluetoothManagerService;Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;
    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->isGetNameAddressOnly()Z

    move-result v22

    if-eqz v22, :cond_6

    .line 762
    const/16 v20, 0x1

    .line 777
    :cond_6
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/BluetoothManagerService;->mEnable:Z
    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->access$1600(Lcom/android/server/BluetoothManagerService;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-result v22

    if-nez v22, :cond_7

    .line 779
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->access$1300(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Landroid/bluetooth/IBluetooth;->disable()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_2

    .line 791
    .end local v5           #address:Ljava/lang/String;
    .end local v10           #name:Ljava/lang/String;
    :cond_7
    :goto_5
    :try_start_9
    monitor-exit v23
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 792
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/BluetoothManagerService;->mEnable:Z
    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->access$1600(Lcom/android/server/BluetoothManagerService;)Z

    move-result v22

    if-nez v22, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->access$1300(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v22

    if-eqz v22, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x1

    #calls: Lcom/android/server/BluetoothManagerService;->waitForOnOff(ZZ)Z
    invoke-static/range {v22 .. v24}, Lcom/android/server/BluetoothManagerService;->access$1700(Lcom/android/server/BluetoothManagerService;ZZ)Z

    .line 793
    :cond_8
    if-eqz v20, :cond_0

    .line 794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->unbindAndFinish()V

    goto/16 :goto_0

    .line 742
    :catch_0
    move-exception v7

    .line 743
    .local v7, e:Landroid/os/RemoteException;
    :try_start_a
    const-string v22, "BluetoothManagerService"

    const-string v24, "Unable to call enable()"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 746
    .end local v7           #e:Landroid/os/RemoteException;
    :catchall_1
    move-exception v22

    monitor-exit v23
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    throw v22

    .line 755
    .restart local v5       #address:Ljava/lang/String;
    .restart local v10       #name:Ljava/lang/String;
    :catch_1
    move-exception v13

    .line 756
    .local v13, re:Landroid/os/RemoteException;
    :try_start_b
    const-string v22, "BluetoothManagerService"

    const-string v24, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 791
    .end local v5           #address:Ljava/lang/String;
    .end local v10           #name:Ljava/lang/String;
    .end local v13           #re:Landroid/os/RemoteException;
    :catchall_2
    move-exception v22

    monitor-exit v23
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    throw v22

    .line 765
    .restart local v5       #address:Ljava/lang/String;
    .restart local v10       #name:Ljava/lang/String;
    :cond_9
    :try_start_c
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    const/16 v24, 0x3

    move/from16 v0, v22

    move/from16 v1, v24

    if-ge v0, v1, :cond_a

    .line 766
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v22

    const/16 v24, 0xc9

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v16

    .line 767
    .local v16, retryMsg:Landroid/os/Message;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v16

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 768
    const-string v22, "BluetoothManagerService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Retrying name/address remote retrieval and save.....Retry count ="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v16

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v22

    const-wide/16 v24, 0x1f4

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_4

    .line 771
    .end local v16           #retryMsg:Landroid/os/Message;
    :cond_a
    const-string v22, "BluetoothManagerService"

    const-string v24, "Maximum name/address remote retrieval retry exceeded"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;
    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->isGetNameAddressOnly()Z

    move-result v22

    if-eqz v22, :cond_6

    .line 773
    const/16 v20, 0x1

    goto/16 :goto_4

    .line 780
    :catch_2
    move-exception v7

    .line 781
    .restart local v7       #e:Landroid/os/RemoteException;
    const-string v22, "BluetoothManagerService"

    const-string v24, "Unable to call disable()"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .line 788
    .end local v5           #address:Ljava/lang/String;
    .end local v7           #e:Landroid/os/RemoteException;
    .end local v10           #name:Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v22

    const/16 v24, 0xc8

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 789
    .local v8, getMsg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto/16 :goto_5

    .line 800
    .end local v8           #getMsg:Landroid/os/Message;
    .end local v20           #unbind:Z
    :sswitch_2
    const-string v22, "BluetoothManagerService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "MESSAGE_ENABLE: mBluetooth = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    #getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$1300(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v22

    const/16 v23, 0x2a

    invoke-virtual/range {v22 .. v23}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 803
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    #setter for: Lcom/android/server/BluetoothManagerService;->mEnable:Z
    invoke-static/range {v22 .. v23}, Lcom/android/server/BluetoothManagerService;->access$1602(Lcom/android/server/BluetoothManagerService;Z)Z

    .line 804
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    const/16 v24, 0x1

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_c

    const/16 v22, 0x1

    :goto_6
    move-object/from16 v0, v23

    move/from16 v1, v22

    #calls: Lcom/android/server/BluetoothManagerService;->handleEnable(Z)V
    invoke-static {v0, v1}, Lcom/android/server/BluetoothManagerService;->access$1800(Lcom/android/server/BluetoothManagerService;Z)V

    goto/16 :goto_0

    :cond_c
    const/16 v22, 0x0

    goto :goto_6

    .line 808
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v22

    const/16 v23, 0x2a

    invoke-virtual/range {v22 .. v23}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 809
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/BluetoothManagerService;->mEnable:Z
    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->access$1600(Lcom/android/server/BluetoothManagerService;)Z

    move-result v22

    if-eqz v22, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->access$1300(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v22

    if-eqz v22, :cond_d

    .line 810
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    const/16 v24, 0x0

    #calls: Lcom/android/server/BluetoothManagerService;->waitForOnOff(ZZ)Z
    invoke-static/range {v22 .. v24}, Lcom/android/server/BluetoothManagerService;->access$1700(Lcom/android/server/BluetoothManagerService;ZZ)Z

    .line 811
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    #setter for: Lcom/android/server/BluetoothManagerService;->mEnable:Z
    invoke-static/range {v22 .. v23}, Lcom/android/server/BluetoothManagerService;->access$1602(Lcom/android/server/BluetoothManagerService;Z)Z

    .line 812
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    #calls: Lcom/android/server/BluetoothManagerService;->handleDisable()V
    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->access$1900(Lcom/android/server/BluetoothManagerService;)V

    .line 813
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    #calls: Lcom/android/server/BluetoothManagerService;->waitForOnOff(ZZ)Z
    invoke-static/range {v22 .. v24}, Lcom/android/server/BluetoothManagerService;->access$1700(Lcom/android/server/BluetoothManagerService;ZZ)Z

    goto/16 :goto_0

    .line 815
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    #setter for: Lcom/android/server/BluetoothManagerService;->mEnable:Z
    invoke-static/range {v22 .. v23}, Lcom/android/server/BluetoothManagerService;->access$1602(Lcom/android/server/BluetoothManagerService;Z)Z

    .line 816
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    #calls: Lcom/android/server/BluetoothManagerService;->handleDisable()V
    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->access$1900(Lcom/android/server/BluetoothManagerService;)V

    goto/16 :goto_0

    .line 822
    :sswitch_4
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/bluetooth/IBluetoothManagerCallback;

    .line 823
    .local v6, callback:Landroid/bluetooth/IBluetoothManagerCallback;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->access$2000(Lcom/android/server/BluetoothManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result v4

    .line 824
    .local v4, added:Z
    const-string v22, "BluetoothManagerService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Added callback: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    if-nez v6, :cond_e

    const-string v6, "null"

    .end local v6           #callback:Landroid/bluetooth/IBluetoothManagerCallback;
    :cond_e
    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ":"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 829
    .end local v4           #added:Z
    :sswitch_5
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/bluetooth/IBluetoothManagerCallback;

    .line 830
    .restart local v6       #callback:Landroid/bluetooth/IBluetoothManagerCallback;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->access$2000(Lcom/android/server/BluetoothManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result v14

    .line 831
    .local v14, removed:Z
    const-string v22, "BluetoothManagerService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Removed callback: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    if-nez v6, :cond_f

    const-string v6, "null"

    .end local v6           #callback:Landroid/bluetooth/IBluetoothManagerCallback;
    :cond_f
    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ":"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 836
    .end local v14           #removed:Z
    :sswitch_6
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/bluetooth/IBluetoothStateChangeCallback;

    .line 837
    .local v6, callback:Landroid/bluetooth/IBluetoothStateChangeCallback;
    const-string v22, "BluetoothManagerService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Register callback = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/BluetoothManagerService;->mStateChangeCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->access$2100(Lcom/android/server/BluetoothManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    goto/16 :goto_0

    .line 843
    .end local v6           #callback:Landroid/bluetooth/IBluetoothStateChangeCallback;
    :sswitch_7
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/bluetooth/IBluetoothStateChangeCallback;

    .line 844
    .restart local v6       #callback:Landroid/bluetooth/IBluetoothStateChangeCallback;
    const-string v22, "BluetoothManagerService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Unregister callback = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/BluetoothManagerService;->mStateChangeCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->access$2100(Lcom/android/server/BluetoothManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    goto/16 :goto_0

    .line 850
    .end local v6           #callback:Landroid/bluetooth/IBluetoothStateChangeCallback;
    :sswitch_8
    const-string v22, "BluetoothManagerService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "MESSAGE_BLUETOOTH_SERVICE_CONNECTED: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/IBinder;

    .line 853
    .local v18, service:Landroid/os/IBinder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;
    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v23

    monitor-enter v23

    .line 854
    :try_start_d
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    const/16 v24, 0x2

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_10

    .line 855
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    invoke-static/range {v18 .. v18}, Landroid/bluetooth/IBluetoothGatt$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothGatt;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    #setter for: Lcom/android/server/BluetoothManagerService;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;
    invoke-static {v0, v1}, Lcom/android/server/BluetoothManagerService;->access$2202(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IBluetoothGatt;)Landroid/bluetooth/IBluetoothGatt;

    .line 856
    monitor-exit v23

    goto/16 :goto_0

    .line 898
    :catchall_3
    move-exception v22

    monitor-exit v23
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    throw v22

    .line 860
    :cond_10
    :try_start_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v22

    const/16 v24, 0x64

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 862
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v24

    #setter for: Lcom/android/server/BluetoothManagerService;->mBinding:Z
    invoke-static {v0, v1}, Lcom/android/server/BluetoothManagerService;->access$1402(Lcom/android/server/BluetoothManagerService;Z)Z

    .line 863
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    invoke-static/range {v18 .. v18}, Landroid/bluetooth/IBluetooth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    #setter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static {v0, v1}, Lcom/android/server/BluetoothManagerService;->access$1302(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;

    .line 865
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;
    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->isGetNameAddressOnly()Z

    move-result v22

    if-eqz v22, :cond_11

    .line 867
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v22

    const/16 v24, 0xc8

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 868
    .restart local v8       #getMsg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 869
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/BluetoothManagerService;->mEnable:Z
    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->access$1600(Lcom/android/server/BluetoothManagerService;)Z

    move-result v22

    if-nez v22, :cond_11

    monitor-exit v23

    goto/16 :goto_0

    .line 872
    .end local v8           #getMsg:Landroid/os/Message;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;
    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v22

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->setGetNameAddressOnly(Z)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 875
    :try_start_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->access$1300(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    #getter for: Lcom/android/server/BluetoothManagerService;->mBluetoothCallback:Landroid/bluetooth/IBluetoothCallback;
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$2300(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetoothCallback;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetooth;->registerCallback(Landroid/bluetooth/IBluetoothCallback;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_3

    .line 880
    :goto_7
    :try_start_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    #calls: Lcom/android/server/BluetoothManagerService;->sendBluetoothServiceUpCallback()V
    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->access$2400(Lcom/android/server/BluetoothManagerService;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 884
    :try_start_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/BluetoothManagerService;->mQuietEnable:Z
    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->access$2500(Lcom/android/server/BluetoothManagerService;)Z

    move-result v22

    if-nez v22, :cond_13

    .line 885
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->access$1300(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Landroid/bluetooth/IBluetooth;->enable()Z

    move-result v22

    if-nez v22, :cond_12

    .line 886
    const-string v22, "BluetoothManagerService"

    const-string v24, "IBluetooth.enable() returned false"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_4

    .line 898
    :cond_12
    :goto_8
    :try_start_12
    monitor-exit v23
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    .line 900
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/BluetoothManagerService;->mEnable:Z
    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->access$1600(Lcom/android/server/BluetoothManagerService;)Z

    move-result v22

    if-nez v22, :cond_0

    .line 901
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    const/16 v24, 0x0

    #calls: Lcom/android/server/BluetoothManagerService;->waitForOnOff(ZZ)Z
    invoke-static/range {v22 .. v24}, Lcom/android/server/BluetoothManagerService;->access$1700(Lcom/android/server/BluetoothManagerService;ZZ)Z

    .line 902
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    #calls: Lcom/android/server/BluetoothManagerService;->handleDisable()V
    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->access$1900(Lcom/android/server/BluetoothManagerService;)V

    .line 903
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    #calls: Lcom/android/server/BluetoothManagerService;->waitForOnOff(ZZ)Z
    invoke-static/range {v22 .. v24}, Lcom/android/server/BluetoothManagerService;->access$1700(Lcom/android/server/BluetoothManagerService;ZZ)Z

    goto/16 :goto_0

    .line 876
    :catch_3
    move-exception v13

    .line 877
    .restart local v13       #re:Landroid/os/RemoteException;
    :try_start_13
    const-string v22, "BluetoothManagerService"

    const-string v24, "Unable to register BluetoothCallback"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    goto :goto_7

    .line 891
    .end local v13           #re:Landroid/os/RemoteException;
    :cond_13
    :try_start_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->access$1300(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Landroid/bluetooth/IBluetooth;->enableNoAutoConnect()Z

    move-result v22

    if-nez v22, :cond_12

    .line 892
    const-string v22, "BluetoothManagerService"

    const-string v24, "IBluetooth.enableNoAutoConnect() returned false"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_4

    goto :goto_8

    .line 895
    :catch_4
    move-exception v7

    .line 896
    .restart local v7       #e:Landroid/os/RemoteException;
    :try_start_15
    const-string v22, "BluetoothManagerService"

    const-string v24, "Unable to call enable()"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    goto :goto_8

    .line 908
    .end local v7           #e:Landroid/os/RemoteException;
    .end local v18           #service:Landroid/os/IBinder;
    :sswitch_9
    const-string v22, "BluetoothManagerService"

    const-string v23, "MESSAGE_TIMEOUT_BIND"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;
    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v23

    monitor-enter v23

    .line 910
    :try_start_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v24

    #setter for: Lcom/android/server/BluetoothManagerService;->mBinding:Z
    invoke-static {v0, v1}, Lcom/android/server/BluetoothManagerService;->access$1402(Lcom/android/server/BluetoothManagerService;Z)Z

    .line 911
    monitor-exit v23

    goto/16 :goto_0

    :catchall_4
    move-exception v22

    monitor-exit v23
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    throw v22

    .line 916
    :sswitch_a
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    .line 917
    .local v12, prevState:I
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg2:I

    .line 918
    .local v11, newState:I
    const-string v22, "BluetoothManagerService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "MESSAGE_BLUETOOTH_STATE_CHANGE: prevState = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", newState="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    #setter for: Lcom/android/server/BluetoothManagerService;->mState:I
    invoke-static {v0, v11}, Lcom/android/server/BluetoothManagerService;->access$2602(Lcom/android/server/BluetoothManagerService;I)I

    .line 920
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    #calls: Lcom/android/server/BluetoothManagerService;->bluetoothStateChangeHandler(II)V
    invoke-static {v0, v12, v11}, Lcom/android/server/BluetoothManagerService;->access$2700(Lcom/android/server/BluetoothManagerService;II)V

    .line 923
    const/16 v22, 0xb

    move/from16 v0, v22

    if-ne v12, v0, :cond_14

    const/16 v22, 0xa

    move/from16 v0, v22

    if-ne v11, v0, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->access$1300(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v22

    if-eqz v22, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/BluetoothManagerService;->mEnable:Z
    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->access$1600(Lcom/android/server/BluetoothManagerService;)Z

    move-result v22

    if-eqz v22, :cond_14

    .line 926
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    #calls: Lcom/android/server/BluetoothManagerService;->recoverBluetoothServiceFromError()V
    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->access$2800(Lcom/android/server/BluetoothManagerService;)V

    .line 928
    :cond_14
    const/16 v22, 0xc

    move/from16 v0, v22

    if-ne v11, v0, :cond_0

    .line 930
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/BluetoothManagerService;->mErrorRecoveryRetryCounter:I
    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->access$2900(Lcom/android/server/BluetoothManagerService;)I

    move-result v22

    if-eqz v22, :cond_0

    .line 931
    const-string v22, "BluetoothManagerService"

    const-string v23, "bluetooth is recovered from error"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    #setter for: Lcom/android/server/BluetoothManagerService;->mErrorRecoveryRetryCounter:I
    invoke-static/range {v22 .. v23}, Lcom/android/server/BluetoothManagerService;->access$2902(Lcom/android/server/BluetoothManagerService;I)I

    goto/16 :goto_0

    .line 939
    .end local v11           #newState:I
    .end local v12           #prevState:I
    :sswitch_b
    const-string v22, "BluetoothManagerService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "MESSAGE_BLUETOOTH_SERVICE_DISCONNECTED: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;
    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v23

    monitor-enter v23

    .line 941
    :try_start_17
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    const/16 v24, 0x1

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_1a

    .line 943
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->access$1300(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v22

    if-nez v22, :cond_15

    monitor-exit v23

    goto/16 :goto_0

    .line 952
    :catchall_5
    move-exception v22

    monitor-exit v23
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    throw v22

    .line 944
    :cond_15
    :try_start_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    #setter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static {v0, v1}, Lcom/android/server/BluetoothManagerService;->access$1302(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;

    .line 952
    monitor-exit v23
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_5

    .line 954
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/BluetoothManagerService;->mEnable:Z
    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->access$1600(Lcom/android/server/BluetoothManagerService;)Z

    move-result v22

    if-eqz v22, :cond_16

    .line 955
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    #setter for: Lcom/android/server/BluetoothManagerService;->mEnable:Z
    invoke-static/range {v22 .. v23}, Lcom/android/server/BluetoothManagerService;->access$1602(Lcom/android/server/BluetoothManagerService;Z)Z

    .line 957
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v22

    const/16 v23, 0x2a

    invoke-virtual/range {v22 .. v23}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v15

    .line 959
    .local v15, restartMsg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v22

    const-wide/16 v23, 0xc8

    move-object/from16 v0, v22

    move-wide/from16 v1, v23

    invoke-virtual {v0, v15, v1, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 963
    .end local v15           #restartMsg:Landroid/os/Message;
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;
    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->isGetNameAddressOnly()Z

    move-result v22

    if-nez v22, :cond_0

    .line 964
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    #calls: Lcom/android/server/BluetoothManagerService;->sendBluetoothServiceDownCallback()V
    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->access$3000(Lcom/android/server/BluetoothManagerService;)V

    .line 968
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/BluetoothManagerService;->mState:I
    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->access$2600(Lcom/android/server/BluetoothManagerService;)I

    move-result v22

    const/16 v23, 0xb

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/BluetoothManagerService;->mState:I
    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->access$2600(Lcom/android/server/BluetoothManagerService;)I

    move-result v22

    const/16 v23, 0xc

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_18

    .line 970
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    const/16 v23, 0xc

    const/16 v24, 0xd

    #calls: Lcom/android/server/BluetoothManagerService;->bluetoothStateChangeHandler(II)V
    invoke-static/range {v22 .. v24}, Lcom/android/server/BluetoothManagerService;->access$2700(Lcom/android/server/BluetoothManagerService;II)V

    .line 972
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    const/16 v23, 0xd

    #setter for: Lcom/android/server/BluetoothManagerService;->mState:I
    invoke-static/range {v22 .. v23}, Lcom/android/server/BluetoothManagerService;->access$2602(Lcom/android/server/BluetoothManagerService;I)I

    .line 974
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/BluetoothManagerService;->mState:I
    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->access$2600(Lcom/android/server/BluetoothManagerService;)I

    move-result v22

    const/16 v23, 0xd

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_19

    .line 975
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    const/16 v23, 0xd

    const/16 v24, 0xa

    #calls: Lcom/android/server/BluetoothManagerService;->bluetoothStateChangeHandler(II)V
    invoke-static/range {v22 .. v24}, Lcom/android/server/BluetoothManagerService;->access$2700(Lcom/android/server/BluetoothManagerService;II)V

    .line 979
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v22

    const/16 v23, 0x3c

    invoke-virtual/range {v22 .. v23}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 980
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    const/16 v23, 0xa

    #setter for: Lcom/android/server/BluetoothManagerService;->mState:I
    invoke-static/range {v22 .. v23}, Lcom/android/server/BluetoothManagerService;->access$2602(Lcom/android/server/BluetoothManagerService;I)I

    goto/16 :goto_0

    .line 945
    :cond_1a
    :try_start_19
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    const/16 v24, 0x2

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_1b

    .line 946
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    #setter for: Lcom/android/server/BluetoothManagerService;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;
    invoke-static {v0, v1}, Lcom/android/server/BluetoothManagerService;->access$2202(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IBluetoothGatt;)Landroid/bluetooth/IBluetoothGatt;

    .line 947
    monitor-exit v23

    goto/16 :goto_0

    .line 949
    :cond_1b
    const-string v22, "BluetoothManagerService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Bad msg.arg1: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    monitor-exit v23
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_5

    goto/16 :goto_0

    .line 986
    :sswitch_c
    const-string v22, "BluetoothManagerService"

    const-string v23, "MESSAGE_RESTART_BLUETOOTH_SERVICE: Restart IBluetooth service"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    #setter for: Lcom/android/server/BluetoothManagerService;->mEnable:Z
    invoke-static/range {v22 .. v23}, Lcom/android/server/BluetoothManagerService;->access$1602(Lcom/android/server/BluetoothManagerService;Z)Z

    .line 992
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    #getter for: Lcom/android/server/BluetoothManagerService;->mQuietEnable:Z
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->access$2500(Lcom/android/server/BluetoothManagerService;)Z

    move-result v23

    #calls: Lcom/android/server/BluetoothManagerService;->handleEnable(Z)V
    invoke-static/range {v22 .. v23}, Lcom/android/server/BluetoothManagerService;->access$1800(Lcom/android/server/BluetoothManagerService;Z)V

    goto/16 :goto_0

    .line 998
    :sswitch_d
    const-string v22, "BluetoothManagerService"

    const-string v23, "MESSAGE_TIMEOUT_UNBIND"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;
    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v23

    monitor-enter v23

    .line 1000
    :try_start_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v24

    #setter for: Lcom/android/server/BluetoothManagerService;->mUnbinding:Z
    invoke-static {v0, v1}, Lcom/android/server/BluetoothManagerService;->access$3102(Lcom/android/server/BluetoothManagerService;Z)Z

    .line 1001
    monitor-exit v23

    goto/16 :goto_0

    :catchall_6
    move-exception v22

    monitor-exit v23
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_6

    throw v22

    .line 1008
    :sswitch_e
    const-string v22, "BluetoothManagerService"

    const-string v23, "MESSAGE_USER_SWITCHED"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v22

    const/16 v23, 0x12c

    invoke-virtual/range {v22 .. v23}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 1012
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/BluetoothManagerService;->mEnable:Z
    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->access$1600(Lcom/android/server/BluetoothManagerService;)Z

    move-result v22

    if-eqz v22, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->access$1300(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v22

    if-eqz v22, :cond_21

    .line 1013
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;
    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v23

    monitor-enter v23

    .line 1014
    :try_start_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->access$1300(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_7

    move-result-object v22

    if-eqz v22, :cond_1c

    .line 1017
    :try_start_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->access$1300(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    #getter for: Lcom/android/server/BluetoothManagerService;->mBluetoothCallback:Landroid/bluetooth/IBluetoothCallback;
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$2300(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetoothCallback;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetooth;->unregisterCallback(Landroid/bluetooth/IBluetoothCallback;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_7
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_1c} :catch_5

    .line 1022
    :cond_1c
    :goto_9
    :try_start_1d
    monitor-exit v23
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_7

    .line 1024
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/BluetoothManagerService;->mState:I
    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->access$2600(Lcom/android/server/BluetoothManagerService;)I

    move-result v22

    const/16 v23, 0xd

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1d

    .line 1026
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    #getter for: Lcom/android/server/BluetoothManagerService;->mState:I
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->access$2600(Lcom/android/server/BluetoothManagerService;)I

    move-result v23

    const/16 v24, 0xa

    #calls: Lcom/android/server/BluetoothManagerService;->bluetoothStateChangeHandler(II)V
    invoke-static/range {v22 .. v24}, Lcom/android/server/BluetoothManagerService;->access$2700(Lcom/android/server/BluetoothManagerService;II)V

    .line 1027
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    const/16 v23, 0xa

    #setter for: Lcom/android/server/BluetoothManagerService;->mState:I
    invoke-static/range {v22 .. v23}, Lcom/android/server/BluetoothManagerService;->access$2602(Lcom/android/server/BluetoothManagerService;I)I

    .line 1029
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/BluetoothManagerService;->mState:I
    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->access$2600(Lcom/android/server/BluetoothManagerService;)I

    move-result v22

    const/16 v23, 0xa

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1e

    .line 1030
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    #getter for: Lcom/android/server/BluetoothManagerService;->mState:I
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->access$2600(Lcom/android/server/BluetoothManagerService;)I

    move-result v23

    const/16 v24, 0xb

    #calls: Lcom/android/server/BluetoothManagerService;->bluetoothStateChangeHandler(II)V
    invoke-static/range {v22 .. v24}, Lcom/android/server/BluetoothManagerService;->access$2700(Lcom/android/server/BluetoothManagerService;II)V

    .line 1031
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    const/16 v23, 0xb

    #setter for: Lcom/android/server/BluetoothManagerService;->mState:I
    invoke-static/range {v22 .. v23}, Lcom/android/server/BluetoothManagerService;->access$2602(Lcom/android/server/BluetoothManagerService;I)I

    .line 1034
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    const/16 v24, 0x0

    #calls: Lcom/android/server/BluetoothManagerService;->waitForOnOff(ZZ)Z
    invoke-static/range {v22 .. v24}, Lcom/android/server/BluetoothManagerService;->access$1700(Lcom/android/server/BluetoothManagerService;ZZ)Z

    .line 1036
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/BluetoothManagerService;->mState:I
    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->access$2600(Lcom/android/server/BluetoothManagerService;)I

    move-result v22

    const/16 v23, 0xb

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1f

    .line 1037
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    #getter for: Lcom/android/server/BluetoothManagerService;->mState:I
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->access$2600(Lcom/android/server/BluetoothManagerService;)I

    move-result v23

    const/16 v24, 0xc

    #calls: Lcom/android/server/BluetoothManagerService;->bluetoothStateChangeHandler(II)V
    invoke-static/range {v22 .. v24}, Lcom/android/server/BluetoothManagerService;->access$2700(Lcom/android/server/BluetoothManagerService;II)V

    .line 1041
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    #calls: Lcom/android/server/BluetoothManagerService;->handleDisable()V
    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->access$1900(Lcom/android/server/BluetoothManagerService;)V

    .line 1043
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    const/16 v23, 0xc

    const/16 v24, 0xd

    #calls: Lcom/android/server/BluetoothManagerService;->bluetoothStateChangeHandler(II)V
    invoke-static/range {v22 .. v24}, Lcom/android/server/BluetoothManagerService;->access$2700(Lcom/android/server/BluetoothManagerService;II)V

    .line 1046
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x1

    #calls: Lcom/android/server/BluetoothManagerService;->waitForOnOff(ZZ)Z
    invoke-static/range {v22 .. v24}, Lcom/android/server/BluetoothManagerService;->access$1700(Lcom/android/server/BluetoothManagerService;ZZ)Z

    .line 1048
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    const/16 v23, 0xd

    const/16 v24, 0xa

    #calls: Lcom/android/server/BluetoothManagerService;->bluetoothStateChangeHandler(II)V
    invoke-static/range {v22 .. v24}, Lcom/android/server/BluetoothManagerService;->access$2700(Lcom/android/server/BluetoothManagerService;II)V

    .line 1050
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    #calls: Lcom/android/server/BluetoothManagerService;->sendBluetoothServiceDownCallback()V
    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->access$3000(Lcom/android/server/BluetoothManagerService;)V

    .line 1051
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;
    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v23

    monitor-enter v23

    .line 1052
    :try_start_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->access$1300(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v22

    if-eqz v22, :cond_20

    .line 1053
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    #setter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static {v0, v1}, Lcom/android/server/BluetoothManagerService;->access$1302(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;

    .line 1055
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;
    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->access$1500(Lcom/android/server/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    #getter for: Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1057
    :cond_20
    monitor-exit v23
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_8

    .line 1058
    const-wide/16 v22, 0x64

    invoke-static/range {v22 .. v23}, Landroid/os/SystemClock;->sleep(J)V

    .line 1060
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v22

    const/16 v23, 0x3c

    invoke-virtual/range {v22 .. v23}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 1061
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    const/16 v23, 0xa

    #setter for: Lcom/android/server/BluetoothManagerService;->mState:I
    invoke-static/range {v22 .. v23}, Lcom/android/server/BluetoothManagerService;->access$2602(Lcom/android/server/BluetoothManagerService;I)I

    .line 1063
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    #getter for: Lcom/android/server/BluetoothManagerService;->mQuietEnable:Z
    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->access$2500(Lcom/android/server/BluetoothManagerService;)Z

    move-result v23

    #calls: Lcom/android/server/BluetoothManagerService;->handleEnable(Z)V
    invoke-static/range {v22 .. v23}, Lcom/android/server/BluetoothManagerService;->access$1800(Lcom/android/server/BluetoothManagerService;Z)V

    goto/16 :goto_0

    .line 1018
    :catch_5
    move-exception v13

    .line 1019
    .restart local v13       #re:Landroid/os/RemoteException;
    :try_start_1f
    const-string v22, "BluetoothManagerService"

    const-string v24, "Unable to unregister"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_9

    .line 1022
    .end local v13           #re:Landroid/os/RemoteException;
    :catchall_7
    move-exception v22

    monitor-exit v23
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_7

    throw v22

    .line 1057
    :catchall_8
    move-exception v22

    :try_start_20
    monitor-exit v23
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_8

    throw v22

    .line 1064
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/BluetoothManagerService;->mBinding:Z
    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->access$1400(Lcom/android/server/BluetoothManagerService;)Z

    move-result v22

    if-nez v22, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->access$1300(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v22

    if-eqz v22, :cond_0

    .line 1065
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v22

    const/16 v23, 0x12c

    invoke-virtual/range {v22 .. v23}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v21

    .line 1066
    .local v21, userMsg:Landroid/os/Message;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/os/Message;->arg2:I

    .line 1069
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v22

    const-wide/16 v23, 0xc8

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move-wide/from16 v2, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1071
    const-string v22, "BluetoothManagerService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "delay MESSAGE_USER_SWITCHED "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v21

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1079
    .end local v21           #userMsg:Landroid/os/Message;
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    #calls: Lcom/android/server/BluetoothManagerService;->confirmEnable()V
    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->access$3200(Lcom/android/server/BluetoothManagerService;)V

    goto/16 :goto_0

    .line 1084
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    #calls: Lcom/android/server/BluetoothManagerService;->rejectEnable()V
    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->access$3300(Lcom/android/server/BluetoothManagerService;)V

    goto/16 :goto_0

    .line 1091
    :sswitch_11
    const-string v22, "BluetoothManagerService"

    const-string v23, "MESSAGE_WHOLE_CHIP_RESET"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    #calls: Lcom/android/server/BluetoothManagerService;->handleWholeChipReset()V
    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->access$3400(Lcom/android/server/BluetoothManagerService;)V

    goto/16 :goto_0

    .line 701
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x14 -> :sswitch_4
        0x15 -> :sswitch_5
        0x1e -> :sswitch_6
        0x1f -> :sswitch_7
        0x28 -> :sswitch_8
        0x29 -> :sswitch_b
        0x2a -> :sswitch_c
        0x3c -> :sswitch_a
        0x64 -> :sswitch_9
        0x65 -> :sswitch_d
        0xc8 -> :sswitch_0
        0xc9 -> :sswitch_1
        0x12c -> :sswitch_e
        0x1389 -> :sswitch_f
        0x138a -> :sswitch_10
        0x1392 -> :sswitch_11
    .end sparse-switch
.end method
