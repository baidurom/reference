.class Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;
.super Landroid/os/Handler;
.source "SimSmsInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)V
    .locals 0
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 124
    iget v8, p1, Landroid/os/Message;->what:I

    sparse-switch v8, :sswitch_data_0

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 126
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 127
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mDeleteLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 128
    :try_start_0
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    iget-object v10, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v10, :cond_1

    :goto_1
    #setter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSuccess:Z
    invoke-static {v9, v7}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$102(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;Z)Z

    .line 129
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mDeleteLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 130
    monitor-exit v8

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    :cond_1
    move v7, v6

    .line 128
    goto :goto_1

    .line 133
    .end local v0           #ar:Landroid/os/AsyncResult;
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 134
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$200(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 135
    :try_start_1
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    iget-object v10, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v10, :cond_2

    move v6, v7

    :cond_2
    #setter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSuccess:Z
    invoke-static {v9, v6}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$102(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;Z)Z

    .line 136
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSuccess:Z
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$100(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v6

    if-ne v6, v7, :cond_3

    .line 138
    :try_start_2
    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [I

    check-cast v6, [I

    const/4 v7, 0x0

    aget v3, v6, v7

    .line 139
    .local v3, index:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->smsInsertRet2:Landroid/telephony/SimSmsInsertStatus;
    invoke-static {v7}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$300(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Landroid/telephony/SimSmsInsertStatus;

    move-result-object v7

    iget-object v9, v7, Landroid/telephony/SimSmsInsertStatus;->indexInIcc:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ";"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v7, Landroid/telephony/SimSmsInsertStatus;->indexInIcc:Ljava/lang/String;

    .line 140
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[insertRaw save one pdu in index "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 150
    .end local v3           #index:I
    :goto_2
    :try_start_3
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$200(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 151
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 154
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_0

    .line 155
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    .line 157
    .local v1, e:Lcom/android/internal/telephony/CommandException;
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot update SMS "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 160
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/CommandException$Error;->SIM_MEM_FULL:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v6, v7, :cond_0

    .line 161
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$400(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Lcom/android/internal/telephony/SMSDispatcher;

    move-result-object v6

    const/16 v7, 0x9

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 162
    .local v4, rspMsg:Landroid/os/Message;
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 141
    .end local v1           #e:Lcom/android/internal/telephony/CommandException;
    .end local v4           #rspMsg:Landroid/os/Message;
    :catch_0
    move-exception v1

    .line 142
    .local v1, e:Ljava/lang/ClassCastException;
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/ClassCastException;->printStackTrace()V

    goto :goto_2

    .line 151
    .end local v1           #e:Ljava/lang/ClassCastException;
    :catchall_1
    move-exception v6

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v6

    .line 143
    :catch_1
    move-exception v2

    .line 144
    .local v2, ex:Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 147
    .end local v2           #ex:Ljava/lang/Exception;
    :cond_3
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    const-string v7, "[insertRaw fail to insert raw into ICC"

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 148
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->smsInsertRet2:Landroid/telephony/SimSmsInsertStatus;
    invoke-static {v7}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$300(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Landroid/telephony/SimSmsInsertStatus;

    move-result-object v7

    iget-object v9, v7, Landroid/telephony/SimSmsInsertStatus;->indexInIcc:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "-1;"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v7, Landroid/telephony/SimSmsInsertStatus;->indexInIcc:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    .line 168
    .end local v0           #ar:Landroid/os/AsyncResult;
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 169
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSimSmsLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$500(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 170
    :try_start_6
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_5

    .line 171
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    #calls: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->buildValidRawData(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    invoke-static {v9, v6}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$700(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v6

    #setter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSms:Ljava/util/List;
    invoke-static {v8, v6}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$602(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;Ljava/util/List;)Ljava/util/List;

    .line 177
    :cond_4
    :goto_3
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSimSmsLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$500(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 178
    monitor-exit v7

    goto/16 :goto_0

    :catchall_2
    move-exception v6

    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v6

    .line 173
    :cond_5
    :try_start_7
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    const-string v8, "Cannot load Sms records"

    invoke-virtual {v6, v8}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 174
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSms:Ljava/util/List;
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$600(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 175
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSms:Ljava/util/List;
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$600(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->clear()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_3

    .line 182
    .end local v0           #ar:Landroid/os/AsyncResult;
    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 183
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$200(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 184
    :try_start_8
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    iget-object v10, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v10, :cond_6

    :goto_4
    #setter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSuccess:Z
    invoke-static {v9, v7}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$102(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;Z)Z

    .line 185
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$200(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 186
    monitor-exit v8

    goto/16 :goto_0

    :catchall_3
    move-exception v6

    monitor-exit v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v6

    :cond_6
    move v7, v6

    .line 184
    goto :goto_4

    .line 190
    .end local v0           #ar:Landroid/os/AsyncResult;
    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 192
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$200(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 193
    :try_start_9
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_8

    .line 194
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    const/4 v8, 0x1

    #setter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSuccess:Z
    invoke-static {v6, v8}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$102(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;Z)Z

    .line 196
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSimMemStatus:Landroid/telephony/SmsMemoryStatus;
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$800(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Landroid/telephony/SmsMemoryStatus;

    move-result-object v6

    if-nez v6, :cond_7

    .line 197
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    new-instance v8, Landroid/telephony/SmsMemoryStatus;

    invoke-direct {v8}, Landroid/telephony/SmsMemoryStatus;-><init>()V

    #setter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSimMemStatus:Landroid/telephony/SmsMemoryStatus;
    invoke-static {v6, v8}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$802(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;Landroid/telephony/SmsMemoryStatus;)Landroid/telephony/SmsMemoryStatus;

    .line 200
    :cond_7
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Landroid/telephony/SmsMemoryStatus;

    .line 202
    .local v5, tmpStatus:Landroid/telephony/SmsMemoryStatus;
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSimMemStatus:Landroid/telephony/SmsMemoryStatus;
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$800(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Landroid/telephony/SmsMemoryStatus;

    move-result-object v6

    iget v8, v5, Landroid/telephony/SmsMemoryStatus;->mUsed:I

    iput v8, v6, Landroid/telephony/SmsMemoryStatus;->mUsed:I

    .line 203
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSimMemStatus:Landroid/telephony/SmsMemoryStatus;
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$800(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Landroid/telephony/SmsMemoryStatus;

    move-result-object v6

    iget v8, v5, Landroid/telephony/SmsMemoryStatus;->mTotal:I

    iput v8, v6, Landroid/telephony/SmsMemoryStatus;->mTotal:I

    .line 208
    .end local v5           #tmpStatus:Landroid/telephony/SmsMemoryStatus;
    :goto_5
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$200(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 209
    monitor-exit v7

    goto/16 :goto_0

    :catchall_4
    move-exception v6

    monitor-exit v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v6

    .line 206
    :cond_8
    :try_start_a
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    const-string v8, "Cannot Get Sms SIM Memory Status from SIM"

    invoke-virtual {v6, v8}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto :goto_5

    .line 213
    .end local v0           #ar:Landroid/os/AsyncResult;
    :sswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 214
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSimInsertLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$900(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 215
    :try_start_b
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    iget-object v10, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v10, :cond_9

    move v6, v7

    :cond_9
    #setter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mInsertMessageSuccess:Z
    invoke-static {v9, v6}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$1002(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;Z)Z

    .line 216
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mInsertMessageSuccess:Z
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$1000(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    move-result v6

    if-ne v6, v7, :cond_a

    .line 218
    :try_start_c
    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [I

    check-cast v6, [I

    const/4 v7, 0x0

    aget v3, v6, v7

    .line 219
    .restart local v3       #index:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->smsInsertRet:Landroid/telephony/SimSmsInsertStatus;
    invoke-static {v7}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$1100(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Landroid/telephony/SimSmsInsertStatus;

    move-result-object v7

    iget-object v9, v7, Landroid/telephony/SimSmsInsertStatus;->indexInIcc:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ";"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v7, Landroid/telephony/SimSmsInsertStatus;->indexInIcc:Ljava/lang/String;

    .line 220
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[insertText save one pdu in index "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    .line 230
    .end local v3           #index:I
    :goto_6
    :try_start_d
    monitor-exit v8

    goto/16 :goto_0

    :catchall_5
    move-exception v6

    monitor-exit v8
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    throw v6

    .line 221
    :catch_2
    move-exception v1

    .line 222
    .restart local v1       #e:Ljava/lang/ClassCastException;
    :try_start_e
    invoke-virtual {v1}, Ljava/lang/ClassCastException;->printStackTrace()V

    goto :goto_6

    .line 223
    .end local v1           #e:Ljava/lang/ClassCastException;
    :catch_3
    move-exception v2

    .line 224
    .restart local v2       #ex:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 227
    .end local v2           #ex:Ljava/lang/Exception;
    :cond_a
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    const-string v7, "[insertText fail to insert sms into ICC"

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 228
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->smsInsertRet:Landroid/telephony/SimSmsInsertStatus;
    invoke-static {v7}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$1100(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Landroid/telephony/SimSmsInsertStatus;

    move-result-object v7

    iget-object v9, v7, Landroid/telephony/SimSmsInsertStatus;->indexInIcc:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "-1;"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v7, Landroid/telephony/SimSmsInsertStatus;->indexInIcc:Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    goto :goto_6

    .line 124
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_1
        0x3 -> :sswitch_3
        0x4 -> :sswitch_3
        0x5 -> :sswitch_0
        0x67 -> :sswitch_4
        0x68 -> :sswitch_5
    .end sparse-switch
.end method
