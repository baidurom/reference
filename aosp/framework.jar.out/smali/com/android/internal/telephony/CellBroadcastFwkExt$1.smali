.class Lcom/android/internal/telephony/CellBroadcastFwkExt$1;
.super Landroid/os/Handler;
.source "CellBroadcastFwkExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CellBroadcastFwkExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/CellBroadcastFwkExt;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/CellBroadcastFwkExt;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/internal/telephony/CellBroadcastFwkExt$1;->this$0:Lcom/android/internal/telephony/CellBroadcastFwkExt;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/16 v9, 0x65

    .line 71
    const-string v5, "CellBroadcastFwkExt"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "receive message "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/CellBroadcastFwkExt$1;->this$0:Lcom/android/internal/telephony/CellBroadcastFwkExt;

    iget v8, p1, Landroid/os/Message;->what:I

    #calls: Lcom/android/internal/telephony/CellBroadcastFwkExt;->idToString(I)Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/android/internal/telephony/CellBroadcastFwkExt;->access$000(Lcom/android/internal/telephony/CellBroadcastFwkExt;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 129
    const-string v5, "CellBroadcastFwkExt"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unknown CB event "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :goto_0
    return-void

    .line 76
    :pswitch_0
    const-string v5, "CellBroadcastFwkExt"

    const-string v6, "handle EVENT_QUERY_CB_CONFIG"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 78
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_0

    .line 79
    const-string v5, "CellBroadcastFwkExt"

    const-string v6, "fail to query cb config"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 82
    :cond_0
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/CellBroadcastConfigInfo;

    .line 83
    .local v1, cbConfigInfo:Lcom/android/internal/telephony/CellBroadcastConfigInfo;
    iget-object v4, v1, Lcom/android/internal/telephony/CellBroadcastConfigInfo;->channelConfigInfo:Ljava/lang/String;

    .line 85
    .local v4, oldChannelConfig:Ljava/lang/String;
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 86
    .local v2, nextAction:I
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/EtwsNotification;

    .line 87
    .local v3, noti:Lcom/android/internal/telephony/EtwsNotification;
    iget-object v5, p0, Lcom/android/internal/telephony/CellBroadcastFwkExt$1;->this$0:Lcom/android/internal/telephony/CellBroadcastFwkExt;

    #calls: Lcom/android/internal/telephony/CellBroadcastFwkExt;->handleQueriedConfig(Ljava/lang/String;ILcom/android/internal/telephony/EtwsNotification;)V
    invoke-static {v5, v4, v2, v3}, Lcom/android/internal/telephony/CellBroadcastFwkExt;->access$100(Lcom/android/internal/telephony/CellBroadcastFwkExt;Ljava/lang/String;ILcom/android/internal/telephony/EtwsNotification;)V

    goto :goto_0

    .line 92
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v1           #cbConfigInfo:Lcom/android/internal/telephony/CellBroadcastConfigInfo;
    .end local v2           #nextAction:I
    .end local v3           #noti:Lcom/android/internal/telephony/EtwsNotification;
    .end local v4           #oldChannelConfig:Ljava/lang/String;
    :pswitch_1
    const-string v5, "CellBroadcastFwkExt"

    const-string v6, "handle EVENT_OPEN_ETWS_CHANNEL_DONE"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 94
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/EtwsNotification;

    .line 95
    .restart local v3       #noti:Lcom/android/internal/telephony/EtwsNotification;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_3

    .line 96
    const-string v5, "CellBroadcastFwkExt"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "success to open cb channel "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/android/internal/telephony/EtwsNotification;->messageId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 98
    .restart local v2       #nextAction:I
    if-ne v2, v9, :cond_1

    .line 99
    iget-object v5, p0, Lcom/android/internal/telephony/CellBroadcastFwkExt$1;->this$0:Lcom/android/internal/telephony/CellBroadcastFwkExt;

    #calls: Lcom/android/internal/telephony/CellBroadcastFwkExt;->addEtwsNoti(Lcom/android/internal/telephony/EtwsNotification;)V
    invoke-static {v5, v3}, Lcom/android/internal/telephony/CellBroadcastFwkExt;->access$200(Lcom/android/internal/telephony/CellBroadcastFwkExt;Lcom/android/internal/telephony/EtwsNotification;)V

    .line 105
    :goto_1
    iget-object v5, p0, Lcom/android/internal/telephony/CellBroadcastFwkExt$1;->this$0:Lcom/android/internal/telephony/CellBroadcastFwkExt;

    const/4 v6, 0x1

    #calls: Lcom/android/internal/telephony/CellBroadcastFwkExt;->updateDatabase(Z)V
    invoke-static {v5, v6}, Lcom/android/internal/telephony/CellBroadcastFwkExt;->access$400(Lcom/android/internal/telephony/CellBroadcastFwkExt;Z)V

    goto :goto_0

    .line 100
    :cond_1
    const/16 v5, 0x66

    if-ne v2, v5, :cond_2

    .line 101
    iget-object v5, p0, Lcom/android/internal/telephony/CellBroadcastFwkExt$1;->this$0:Lcom/android/internal/telephony/CellBroadcastFwkExt;

    #calls: Lcom/android/internal/telephony/CellBroadcastFwkExt;->removeFirstEtwsNotiThenAdd(Lcom/android/internal/telephony/EtwsNotification;)V
    invoke-static {v5, v3}, Lcom/android/internal/telephony/CellBroadcastFwkExt;->access$300(Lcom/android/internal/telephony/CellBroadcastFwkExt;Lcom/android/internal/telephony/EtwsNotification;)V

    goto :goto_1

    .line 103
    :cond_2
    const-string v5, "CellBroadcastFwkExt"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invalid next action "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 107
    .end local v2           #nextAction:I
    :cond_3
    const-string v5, "CellBroadcastFwkExt"

    const-string v6, "fail to open cb channel"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 112
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v3           #noti:Lcom/android/internal/telephony/EtwsNotification;
    :pswitch_2
    const-string v5, "CellBroadcastFwkExt"

    const-string v6, "handle EVENT_CLOSE_ETWS_CHANNEL_DONE"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 114
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/EtwsNotification;

    .line 115
    .restart local v3       #noti:Lcom/android/internal/telephony/EtwsNotification;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_5

    .line 116
    const-string v5, "CellBroadcastFwkExt"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "success to close cb channel "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/android/internal/telephony/EtwsNotification;->messageId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 118
    .restart local v2       #nextAction:I
    if-ne v2, v9, :cond_4

    .line 119
    iget-object v5, p0, Lcom/android/internal/telephony/CellBroadcastFwkExt$1;->this$0:Lcom/android/internal/telephony/CellBroadcastFwkExt;

    #calls: Lcom/android/internal/telephony/CellBroadcastFwkExt;->removeEtwsNoti(Lcom/android/internal/telephony/EtwsNotification;)V
    invoke-static {v5, v3}, Lcom/android/internal/telephony/CellBroadcastFwkExt;->access$500(Lcom/android/internal/telephony/CellBroadcastFwkExt;Lcom/android/internal/telephony/EtwsNotification;)V

    .line 123
    :goto_2
    iget-object v5, p0, Lcom/android/internal/telephony/CellBroadcastFwkExt$1;->this$0:Lcom/android/internal/telephony/CellBroadcastFwkExt;

    const/4 v6, 0x0

    #calls: Lcom/android/internal/telephony/CellBroadcastFwkExt;->updateDatabase(Z)V
    invoke-static {v5, v6}, Lcom/android/internal/telephony/CellBroadcastFwkExt;->access$400(Lcom/android/internal/telephony/CellBroadcastFwkExt;Z)V

    goto/16 :goto_0

    .line 121
    :cond_4
    const-string v5, "CellBroadcastFwkExt"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invalid next action "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 125
    .end local v2           #nextAction:I
    :cond_5
    const-string v5, "CellBroadcastFwkExt"

    const-string v6, "fail to close cb channel"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 74
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
