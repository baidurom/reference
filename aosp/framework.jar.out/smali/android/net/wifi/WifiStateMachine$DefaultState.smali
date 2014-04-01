.class Landroid/net/wifi/WifiStateMachine$DefaultState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 1979
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 7
    .parameter "message"

    .prologue
    const/4 v1, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1982
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$DefaultState;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 1983
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 2119
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error! unhandled message"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v1, v3}, Landroid/net/wifi/WifiStateMachine;->access$500(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 2122
    :goto_0
    :sswitch_0
    return v2

    .line 1985
    :sswitch_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-nez v1, :cond_0

    .line 1986
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    const v3, 0x11001

    invoke-virtual {v1, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    goto :goto_0

    .line 1988
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WifiP2pService connection failure, error="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v1, v3}, Landroid/net/wifi/WifiStateMachine;->access$500(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto :goto_0

    .line 1992
    :sswitch_2
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WifiP2pService channel lost, message.arg1 ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v1, v3}, Landroid/net/wifi/WifiStateMachine;->access$500(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto :goto_0

    .line 1997
    :sswitch_3
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    #setter for: Landroid/net/wifi/WifiStateMachine;->mBluetoothConnectionActive:Z
    invoke-static {v4, v1}, Landroid/net/wifi/WifiStateMachine;->access$802(Landroid/net/wifi/WifiStateMachine;Z)Z

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    .line 2019
    :sswitch_4
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$900(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, p1, v4, v1}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto :goto_0

    .line 2023
    :sswitch_5
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$900(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x0

    invoke-virtual {v1, p1, v3, v4}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    goto :goto_0

    .line 2026
    :sswitch_6
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$900(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, p1, v4, v1}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto :goto_0

    .line 2029
    :sswitch_7
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v2, :cond_2

    move v3, v2

    :cond_2
    #setter for: Landroid/net/wifi/WifiStateMachine;->mEnableRssiPolling:Z
    invoke-static {v1, v3}, Landroid/net/wifi/WifiStateMachine;->access$1002(Landroid/net/wifi/WifiStateMachine;Z)Z

    goto/16 :goto_0

    .line 2032
    :sswitch_8
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v2, :cond_3

    move v3, v2

    :cond_3
    #setter for: Landroid/net/wifi/WifiStateMachine;->mEnableBackgroundScan:Z
    invoke-static {v1, v3}, Landroid/net/wifi/WifiStateMachine;->access$1102(Landroid/net/wifi/WifiStateMachine;Z)Z

    goto/16 :goto_0

    .line 2085
    :sswitch_9
    const-string v1, "WifiStateMachine"

    const-string v4, "Supplicant hung"

    invoke-static {v1, v4}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2086
    invoke-static {}, Landroid/net/wifi/WifiNative;->killSupplicant()Z

    .line 2087
    invoke-static {}, Landroid/net/wifi/WifiNative;->closeSupplicantConnection()V

    .line 2089
    :sswitch_a
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiStateMachine;->setWifiEnabled(Z)V

    .line 2090
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiStateMachine;->setWifiEnabled(Z)V

    goto/16 :goto_0

    .line 2094
    :sswitch_b
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$900(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    const/16 v3, 0xb

    new-instance v4, Landroid/net/wifi/WpsResult;

    sget-object v5, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    invoke-direct {v4, v5}, Landroid/net/wifi/WpsResult;-><init>(Landroid/net/wifi/WpsResult$Status;)V

    invoke-virtual {v1, p1, v3, v4}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 2099
    :sswitch_c
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$100(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v5, "wifi"

    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v4, v1}, Landroid/net/wifi/WifiStateMachine;->access$202(Landroid/net/wifi/WifiStateMachine;Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiManager;

    .line 2100
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$200(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 2101
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, p1}, Landroid/net/wifi/WifiStateMachine;->access$1200(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2104
    :sswitch_d
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v2, :cond_4

    move v3, v2

    :cond_4
    invoke-static {v3}, Landroid/net/wifi/WifiNative;->setTxPowerEnabledCommand(Z)Z

    move-result v0

    .line 2105
    .local v0, ok:Z
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$900(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_5

    move v1, v2

    :cond_5
    invoke-virtual {v3, p1, v4, v1}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 2108
    .end local v0           #ok:Z
    :sswitch_e
    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3}, Landroid/net/wifi/WifiNative;->setTxPowerCommand(I)Z

    move-result v0

    .line 2109
    .restart local v0       #ok:Z
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$900(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_6

    move v1, v2

    :cond_6
    invoke-virtual {v3, p1, v4, v1}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 2113
    .end local v0           #ok:Z
    :sswitch_f
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v3, p1, Landroid/os/Message;->arg1:I

    #setter for: Landroid/net/wifi/WifiStateMachine;->mConnectPolicy:I
    invoke-static {v1, v3}, Landroid/net/wifi/WifiStateMachine;->access$1302(Landroid/net/wifi/WifiStateMachine;I)I

    .line 2114
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v3, p1, Landroid/os/Message;->arg2:I

    #setter for: Landroid/net/wifi/WifiStateMachine;->mCellToWiFiPolicy:I
    invoke-static {v1, v3}, Landroid/net/wifi/WifiStateMachine;->access$1402(Landroid/net/wifi/WifiStateMachine;I)I

    .line 2115
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$900(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1, v3, v2}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 1983
    nop

    :sswitch_data_0
    .sparse-switch
        0x11000 -> :sswitch_1
        0x11004 -> :sswitch_2
        0x20001 -> :sswitch_0
        0x20002 -> :sswitch_0
        0x2000b -> :sswitch_0
        0x2000c -> :sswitch_0
        0x2000d -> :sswitch_0
        0x2000e -> :sswitch_0
        0x20011 -> :sswitch_0
        0x20012 -> :sswitch_0
        0x20015 -> :sswitch_0
        0x20016 -> :sswitch_0
        0x20017 -> :sswitch_0
        0x20018 -> :sswitch_0
        0x20019 -> :sswitch_0
        0x2001a -> :sswitch_0
        0x2001b -> :sswitch_0
        0x2001c -> :sswitch_0
        0x2001d -> :sswitch_0
        0x2001e -> :sswitch_0
        0x2001f -> :sswitch_3
        0x20033 -> :sswitch_4
        0x20034 -> :sswitch_4
        0x20035 -> :sswitch_4
        0x20036 -> :sswitch_4
        0x20037 -> :sswitch_0
        0x20038 -> :sswitch_4
        0x20039 -> :sswitch_0
        0x2003a -> :sswitch_0
        0x2003b -> :sswitch_4
        0x20047 -> :sswitch_0
        0x20048 -> :sswitch_0
        0x20049 -> :sswitch_0
        0x2004a -> :sswitch_0
        0x2004b -> :sswitch_0
        0x2004c -> :sswitch_0
        0x2004d -> :sswitch_0
        0x20050 -> :sswitch_0
        0x20052 -> :sswitch_7
        0x20053 -> :sswitch_0
        0x20056 -> :sswitch_0
        0x20057 -> :sswitch_0
        0x20058 -> :sswitch_0
        0x20059 -> :sswitch_b
        0x2005a -> :sswitch_0
        0x2005b -> :sswitch_8
        0x2008c -> :sswitch_4
        0x2008d -> :sswitch_f
        0x2008e -> :sswitch_0
        0x200a0 -> :sswitch_4
        0x200a1 -> :sswitch_5
        0x200a2 -> :sswitch_4
        0x200a3 -> :sswitch_4
        0x200a4 -> :sswitch_4
        0x200a5 -> :sswitch_4
        0x200a6 -> :sswitch_4
        0x200a7 -> :sswitch_4
        0x200a8 -> :sswitch_5
        0x200a9 -> :sswitch_6
        0x200aa -> :sswitch_4
        0x200ab -> :sswitch_d
        0x200ac -> :sswitch_e
        0x23001 -> :sswitch_c
        0x24001 -> :sswitch_0
        0x24002 -> :sswitch_0
        0x24003 -> :sswitch_0
        0x24004 -> :sswitch_0
        0x24005 -> :sswitch_0
        0x24006 -> :sswitch_0
        0x24007 -> :sswitch_0
        0x24008 -> :sswitch_0
        0x24009 -> :sswitch_a
        0x2403c -> :sswitch_9
        0x30004 -> :sswitch_0
        0x30005 -> :sswitch_0
    .end sparse-switch
.end method
