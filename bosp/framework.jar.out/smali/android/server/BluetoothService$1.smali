.class Landroid/server/BluetoothService$1;
.super Landroid/os/Handler;
.source "BluetoothService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothService;


# direct methods
.method constructor <init>(Landroid/server/BluetoothService;)V
    .locals 0
    .parameter

    .prologue
    .line 527
    iput-object p1, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    .line 530
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 568
    :cond_0
    :goto_0
    return-void

    .line 532
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 533
    .local v0, address:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 534
    iget-object v4, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v4, v0}, Landroid/server/BluetoothService;->sendUuidIntent(Ljava/lang/String;)V

    .line 535
    iget-object v4, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v4, v0}, Landroid/server/BluetoothService;->makeServiceChannelCallbacks(Ljava/lang/String;)V

    goto :goto_0

    .line 539
    .end local v0           #address:Ljava/lang/String;
    :pswitch_1
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 540
    .local v2, mode:I
    iget-object v4, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    #calls: Landroid/server/BluetoothService;->isEnabledInternal()Z
    invoke-static {v4}, Landroid/server/BluetoothService;->access$000(Landroid/server/BluetoothService;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 544
    iget-object v4, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    const/16 v5, 0x15

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Landroid/server/BluetoothService;->setScanMode(II)Z

    goto :goto_0

    .line 548
    .end local v2           #mode:I
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 549
    .restart local v0       #address:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 550
    iget-object v4, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;
    invoke-static {v4}, Landroid/server/BluetoothService;->access$100(Landroid/server/BluetoothService;)Landroid/server/BluetoothBondState;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/server/BluetoothBondState;->getAttempt(Ljava/lang/String;)I

    move-result v1

    .line 556
    .local v1, attempt:I
    if-lez v1, :cond_1

    const/4 v4, 0x2

    if-gt v1, v4, :cond_1

    .line 557
    iget-object v4, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;
    invoke-static {v4}, Landroid/server/BluetoothService;->access$100(Landroid/server/BluetoothService;)Landroid/server/BluetoothBondState;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/server/BluetoothBondState;->attempt(Ljava/lang/String;)V

    .line 558
    iget-object v4, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v4, v0}, Landroid/server/BluetoothService;->createBond(Ljava/lang/String;)Z

    goto :goto_0

    .line 561
    :cond_1
    if-lez v1, :cond_0

    iget-object v4, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;
    invoke-static {v4}, Landroid/server/BluetoothService;->access$100(Landroid/server/BluetoothService;)Landroid/server/BluetoothBondState;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/server/BluetoothBondState;->clearPinAttempts(Ljava/lang/String;)V

    goto :goto_0

    .line 564
    .end local v0           #address:Ljava/lang/String;
    .end local v1           #attempt:I
    :pswitch_3
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/util/Pair;

    .line 565
    .local v3, pair:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v5, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    #calls: Landroid/server/BluetoothService;->checkAndRemoveRecord(II)V
    invoke-static {v5, v6, v4}, Landroid/server/BluetoothService;->access$200(Landroid/server/BluetoothService;II)V

    goto :goto_0

    .line 530
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method
