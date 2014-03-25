.class Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;
.super Landroid/os/Handler;
.source "RuimSmsInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 96
    iget v8, p1, Landroid/os/Message;->what:I

    sparse-switch v8, :sswitch_data_0

    .line 203
    :goto_0
    return-void

    .line 98
    :sswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 99
    .local v1, ar:Landroid/os/AsyncResult;
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 100
    :try_start_0
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    iget-object v10, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v10, :cond_0

    :goto_1
    #setter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSuccess:Z
    invoke-static {v9, v6}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$102(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;Z)Z

    .line 101
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 102
    monitor-exit v8

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    :cond_0
    move v6, v7

    .line 100
    goto :goto_1

    .line 105
    .end local v1           #ar:Landroid/os/AsyncResult;
    :sswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 106
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 107
    :try_start_1
    iget-object v6, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_2

    .line 108
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    iget-object v6, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    #calls: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->buildValidRawData(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    invoke-static {v9, v6}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$300(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v6

    #setter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSms:Ljava/util/List;
    invoke-static {v8, v6}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$202(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;Ljava/util/List;)Ljava/util/List;

    .line 114
    :cond_1
    :goto_2
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 115
    monitor-exit v7

    goto :goto_0

    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v6

    .line 110
    :cond_2
    :try_start_2
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    const-string v8, "Cannot load Sms records"

    invoke-virtual {v6, v8}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 111
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSms:Ljava/util/List;
    invoke-static {v6}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$200(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 112
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSms:Ljava/util/List;
    invoke-static {v6}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$200(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    .line 121
    .end local v1           #ar:Landroid/os/AsyncResult;
    :sswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 123
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 124
    :try_start_3
    iget-object v6, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_4

    .line 125
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    const/4 v8, 0x1

    #setter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSuccess:Z
    invoke-static {v6, v8}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$102(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;Z)Z

    .line 127
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSimMemStatus:Lcom/mediatek/common/telephony/IccSmsStorageStatus;
    invoke-static {v6}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$400(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;)Lcom/mediatek/common/telephony/IccSmsStorageStatus;

    move-result-object v6

    if-nez v6, :cond_3

    .line 128
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    new-instance v8, Lcom/mediatek/common/telephony/IccSmsStorageStatus;

    invoke-direct {v8}, Lcom/mediatek/common/telephony/IccSmsStorageStatus;-><init>()V

    #setter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSimMemStatus:Lcom/mediatek/common/telephony/IccSmsStorageStatus;
    invoke-static {v6, v8}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$402(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;Lcom/mediatek/common/telephony/IccSmsStorageStatus;)Lcom/mediatek/common/telephony/IccSmsStorageStatus;

    .line 131
    :cond_3
    iget-object v5, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Lcom/mediatek/common/telephony/IccSmsStorageStatus;

    .line 132
    .local v5, tmpStatus:Lcom/mediatek/common/telephony/IccSmsStorageStatus;
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSimMemStatus:Lcom/mediatek/common/telephony/IccSmsStorageStatus;
    invoke-static {v6}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$400(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;)Lcom/mediatek/common/telephony/IccSmsStorageStatus;

    move-result-object v6

    iget v8, v5, Lcom/mediatek/common/telephony/IccSmsStorageStatus;->mUsed:I

    iput v8, v6, Lcom/mediatek/common/telephony/IccSmsStorageStatus;->mUsed:I

    .line 133
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSimMemStatus:Lcom/mediatek/common/telephony/IccSmsStorageStatus;
    invoke-static {v6}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$400(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;)Lcom/mediatek/common/telephony/IccSmsStorageStatus;

    move-result-object v6

    iget v8, v5, Lcom/mediatek/common/telephony/IccSmsStorageStatus;->mTotal:I

    iput v8, v6, Lcom/mediatek/common/telephony/IccSmsStorageStatus;->mTotal:I

    .line 138
    .end local v5           #tmpStatus:Lcom/mediatek/common/telephony/IccSmsStorageStatus;
    :goto_3
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 139
    monitor-exit v7

    goto/16 :goto_0

    :catchall_2
    move-exception v6

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v6

    .line 136
    :cond_4
    :try_start_4
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    const-string v8, "Cannot Get Sms SIM Memory Status from RUIM"

    invoke-virtual {v6, v8}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    .line 143
    .end local v1           #ar:Landroid/os/AsyncResult;
    :sswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 144
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 145
    :try_start_5
    iget-object v6, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-nez v6, :cond_6

    .line 147
    :try_start_6
    iget-object v6, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [B

    move-object v0, v6

    check-cast v0, [B

    move-object v3, v0

    .line 148
    .local v3, rawData:[B
    const/4 v6, 0x0

    aget-byte v6, v3, v6

    if-nez v6, :cond_5

    .line 149
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    const-string/jumbo v8, "sms raw data status is FREE"

    invoke-virtual {v6, v8}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 150
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    const/4 v8, 0x0

    #setter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSmsRawData:Lcom/android/internal/telephony/SmsRawData;
    invoke-static {v6, v8}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$502(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;Lcom/android/internal/telephony/SmsRawData;)Lcom/android/internal/telephony/SmsRawData;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_0

    .line 163
    .end local v3           #rawData:[B
    :goto_4
    :try_start_7
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 164
    monitor-exit v7

    goto/16 :goto_0

    :catchall_3
    move-exception v6

    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v6

    .line 152
    .restart local v3       #rawData:[B
    :cond_5
    :try_start_8
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    new-instance v8, Lcom/android/internal/telephony/SmsRawData;

    invoke-direct {v8, v3}, Lcom/android/internal/telephony/SmsRawData;-><init>([B)V

    #setter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSmsRawData:Lcom/android/internal/telephony/SmsRawData;
    invoke-static {v6, v8}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$502(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;Lcom/android/internal/telephony/SmsRawData;)Lcom/android/internal/telephony/SmsRawData;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_4

    .line 154
    .end local v3           #rawData:[B
    :catch_0
    move-exception v2

    .line 155
    .local v2, e:Ljava/lang/ClassCastException;
    :try_start_9
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    const-string v8, "fail to get sms raw data ClassCastException"

    invoke-virtual {v6, v8}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v2}, Ljava/lang/ClassCastException;->printStackTrace()V

    .line 157
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    const/4 v8, 0x0

    #setter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSmsRawData:Lcom/android/internal/telephony/SmsRawData;
    invoke-static {v6, v8}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$502(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;Lcom/android/internal/telephony/SmsRawData;)Lcom/android/internal/telephony/SmsRawData;

    goto :goto_4

    .line 160
    .end local v2           #e:Ljava/lang/ClassCastException;
    :cond_6
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    const-string v8, "fail to get sms raw data rild"

    invoke-virtual {v6, v8}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 161
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    const/4 v8, 0x0

    #setter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSmsRawData:Lcom/android/internal/telephony/SmsRawData;
    invoke-static {v6, v8}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$502(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;Lcom/android/internal/telephony/SmsRawData;)Lcom/android/internal/telephony/SmsRawData;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_4

    .line 168
    .end local v1           #ar:Landroid/os/AsyncResult;
    :sswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 169
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 170
    :try_start_a
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    if-eqz v1, :cond_8

    iget-object v10, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v10, :cond_8

    :goto_5
    #setter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSuccess:Z
    invoke-static {v9, v6}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$102(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;Z)Z

    .line 171
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSuccess:Z
    invoke-static {v6}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$100(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 172
    iget-object v6, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [Ljava/lang/String;

    move-object v0, v6

    check-cast v0, [Ljava/lang/String;

    move-object v4, v0

    .line 173
    .local v4, result:[Ljava/lang/String;
    if-eqz v4, :cond_7

    array-length v6, v4

    const/4 v7, 0x2

    if-ne v6, v7, :cond_7

    .line 174
    const/4 v6, 0x0

    aget-object v6, v4, v6

    if-eqz v6, :cond_9

    const/4 v6, 0x0

    aget-object v6, v4, v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_9

    .line 175
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    const/4 v7, 0x0

    aget-object v7, v4, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    #setter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mUpdateIndex:I
    invoke-static {v6, v7}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$602(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;I)I

    .line 181
    :goto_6
    const/4 v6, 0x1

    aget-object v6, v4, v6

    if-eqz v6, :cond_a

    const/4 v6, 0x1

    aget-object v6, v4, v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_a

    .line 182
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    const/4 v7, 0x1

    aget-object v7, v4, v7

    #setter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->feedbackRawPdu:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$702(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;Ljava/lang/String;)Ljava/lang/String;

    .line 189
    .end local v4           #result:[Ljava/lang/String;
    :cond_7
    :goto_7
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 190
    monitor-exit v8

    goto/16 :goto_0

    :catchall_4
    move-exception v6

    monitor-exit v8
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw v6

    :cond_8
    move v6, v7

    .line 170
    goto :goto_5

    .line 177
    .restart local v4       #result:[Ljava/lang/String;
    :cond_9
    :try_start_b
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    const-string v7, "Dont get one avalible index after writeSMSToRuim."

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 178
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    const/4 v7, -0x1

    #setter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mUpdateIndex:I
    invoke-static {v6, v7}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$602(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;I)I

    goto :goto_6

    .line 184
    :cond_a
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    const-string v7, "Dont get one avalible feedbackRawPdu after writeSMSToRuim."

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 185
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    const-string v7, ""

    #setter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->feedbackRawPdu:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$702(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;Ljava/lang/String;)Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    goto :goto_7

    .line 193
    .end local v1           #ar:Landroid/os/AsyncResult;
    .end local v4           #result:[Ljava/lang/String;
    :sswitch_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 194
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 195
    if-eqz v1, :cond_b

    .line 196
    :try_start_c
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    iget-object v10, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v10, :cond_c

    :goto_8
    #setter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSuccess:Z
    invoke-static {v9, v6}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$102(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;Z)Z

    .line 197
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 199
    :cond_b
    monitor-exit v8

    goto/16 :goto_0

    :catchall_5
    move-exception v6

    monitor-exit v8
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    throw v6

    :cond_c
    move v6, v7

    .line 196
    goto :goto_8

    .line 96
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x3 -> :sswitch_2
        0x65 -> :sswitch_3
        0x66 -> :sswitch_4
        0x67 -> :sswitch_5
    .end sparse-switch
.end method
