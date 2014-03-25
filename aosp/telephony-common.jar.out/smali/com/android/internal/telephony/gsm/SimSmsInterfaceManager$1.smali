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
    .line 131
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 136
    iget v9, p1, Landroid/os/Message;->what:I

    sparse-switch v9, :sswitch_data_0

    .line 306
    :cond_0
    :goto_0
    return-void

    .line 138
    :sswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 139
    .local v1, ar:Landroid/os/AsyncResult;
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mDeleteLock:Ljava/lang/Object;
    invoke-static {v9}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 140
    :try_start_0
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    iget-object v11, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v11, :cond_1

    :goto_1
    #setter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSuccess:Z
    invoke-static {v10, v8}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$102(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;Z)Z

    .line 141
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mDeleteLock:Ljava/lang/Object;
    invoke-static {v7}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    .line 142
    monitor-exit v9

    goto :goto_0

    :catchall_0
    move-exception v7

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    :cond_1
    move v8, v7

    .line 140
    goto :goto_1

    .line 145
    .end local v1           #ar:Landroid/os/AsyncResult;
    :sswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 146
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v9}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$200(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 147
    :try_start_1
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    iget-object v11, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v11, :cond_2

    move v7, v8

    :cond_2
    #setter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSuccess:Z
    invoke-static {v10, v7}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$102(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;Z)Z

    .line 148
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSuccess:Z
    invoke-static {v7}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$100(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v7

    if-ne v7, v8, :cond_3

    .line 150
    :try_start_2
    iget-object v7, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, [I

    check-cast v7, [I

    const/4 v8, 0x0

    aget v4, v7, v8

    .line 151
    .local v4, index:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->smsInsertRet2:Landroid/telephony/SimSmsInsertStatus;
    invoke-static {v8}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$300(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Landroid/telephony/SimSmsInsertStatus;

    move-result-object v8

    iget-object v10, v8, Landroid/telephony/SimSmsInsertStatus;->indexInIcc:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, ","

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v8, Landroid/telephony/SimSmsInsertStatus;->indexInIcc:Ljava/lang/String;

    .line 152
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[insertRaw save one pdu in index "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 162
    .end local v4           #index:I
    :goto_2
    :try_start_3
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v7}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$200(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    .line 163
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 166
    iget-object v7, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v7, :cond_0

    .line 167
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    .line 169
    .local v2, e:Lcom/android/internal/telephony/CommandException;
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot update SMS "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/CommandException$Error;->SIM_MEM_FULL:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v7, v8, :cond_0

    .line 173
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;
    invoke-static {v7}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$400(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Lcom/android/internal/telephony/SMSDispatcher;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/SMSDispatcher;->handleIccFull()V

    goto/16 :goto_0

    .line 153
    .end local v2           #e:Lcom/android/internal/telephony/CommandException;
    :catch_0
    move-exception v2

    .line 154
    .local v2, e:Ljava/lang/ClassCastException;
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/ClassCastException;->printStackTrace()V

    goto :goto_2

    .line 163
    .end local v2           #e:Ljava/lang/ClassCastException;
    :catchall_1
    move-exception v7

    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v7

    .line 155
    :catch_1
    move-exception v3

    .line 156
    .local v3, ex:Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 159
    .end local v3           #ex:Ljava/lang/Exception;
    :cond_3
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    const-string v8, "[insertRaw fail to insert raw into ICC"

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 160
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->smsInsertRet2:Landroid/telephony/SimSmsInsertStatus;
    invoke-static {v8}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$300(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Landroid/telephony/SimSmsInsertStatus;

    move-result-object v8

    iget-object v10, v8, Landroid/telephony/SimSmsInsertStatus;->indexInIcc:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "-1,"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v8, Landroid/telephony/SimSmsInsertStatus;->indexInIcc:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    .line 179
    .end local v1           #ar:Landroid/os/AsyncResult;
    :sswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 180
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSimSmsLock:Ljava/lang/Object;
    invoke-static {v7}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$500(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 181
    :try_start_6
    iget-object v7, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_5

    .line 182
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    iget-object v7, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, Ljava/util/ArrayList;

    #calls: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->buildValidRawData(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    invoke-static {v10, v7}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$700(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v7

    #setter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSms:Ljava/util/List;
    invoke-static {v9, v7}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$602(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;Ljava/util/List;)Ljava/util/List;

    .line 188
    :cond_4
    :goto_3
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSimSmsLock:Ljava/lang/Object;
    invoke-static {v7}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$500(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    .line 189
    monitor-exit v8

    goto/16 :goto_0

    :catchall_2
    move-exception v7

    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v7

    .line 184
    :cond_5
    :try_start_7
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    const-string v9, "Cannot load Sms records"

    invoke-virtual {v7, v9}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 185
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSms:Ljava/util/List;
    invoke-static {v7}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$600(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 186
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSms:Ljava/util/List;
    invoke-static {v7}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$600(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->clear()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_3

    .line 194
    .end local v1           #ar:Landroid/os/AsyncResult;
    :sswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 195
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v9}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$200(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 196
    :try_start_8
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    iget-object v11, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v11, :cond_6

    :goto_4
    #setter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSuccess:Z
    invoke-static {v10, v8}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$102(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;Z)Z

    .line 197
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v7}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$200(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    .line 198
    monitor-exit v9

    goto/16 :goto_0

    :catchall_3
    move-exception v7

    monitor-exit v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v7

    :cond_6
    move v8, v7

    .line 196
    goto :goto_4

    .line 202
    .end local v1           #ar:Landroid/os/AsyncResult;
    :sswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 204
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v7}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$200(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 205
    :try_start_9
    iget-object v7, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_8

    .line 206
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    const/4 v9, 0x1

    #setter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSuccess:Z
    invoke-static {v7, v9}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$102(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;Z)Z

    .line 208
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSimMemStatus:Lcom/mediatek/common/telephony/IccSmsStorageStatus;
    invoke-static {v7}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$800(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Lcom/mediatek/common/telephony/IccSmsStorageStatus;

    move-result-object v7

    if-nez v7, :cond_7

    .line 209
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    new-instance v9, Lcom/mediatek/common/telephony/IccSmsStorageStatus;

    invoke-direct {v9}, Lcom/mediatek/common/telephony/IccSmsStorageStatus;-><init>()V

    #setter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSimMemStatus:Lcom/mediatek/common/telephony/IccSmsStorageStatus;
    invoke-static {v7, v9}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$802(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;Lcom/mediatek/common/telephony/IccSmsStorageStatus;)Lcom/mediatek/common/telephony/IccSmsStorageStatus;

    .line 212
    :cond_7
    iget-object v6, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, Lcom/mediatek/common/telephony/IccSmsStorageStatus;

    .line 214
    .local v6, tmpStatus:Lcom/mediatek/common/telephony/IccSmsStorageStatus;
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSimMemStatus:Lcom/mediatek/common/telephony/IccSmsStorageStatus;
    invoke-static {v7}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$800(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Lcom/mediatek/common/telephony/IccSmsStorageStatus;

    move-result-object v7

    iget v9, v6, Lcom/mediatek/common/telephony/IccSmsStorageStatus;->mUsed:I

    iput v9, v7, Lcom/mediatek/common/telephony/IccSmsStorageStatus;->mUsed:I

    .line 215
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSimMemStatus:Lcom/mediatek/common/telephony/IccSmsStorageStatus;
    invoke-static {v7}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$800(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Lcom/mediatek/common/telephony/IccSmsStorageStatus;

    move-result-object v7

    iget v9, v6, Lcom/mediatek/common/telephony/IccSmsStorageStatus;->mTotal:I

    iput v9, v7, Lcom/mediatek/common/telephony/IccSmsStorageStatus;->mTotal:I

    .line 220
    .end local v6           #tmpStatus:Lcom/mediatek/common/telephony/IccSmsStorageStatus;
    :goto_5
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v7}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$200(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    .line 221
    monitor-exit v8

    goto/16 :goto_0

    :catchall_4
    move-exception v7

    monitor-exit v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v7

    .line 218
    :cond_8
    :try_start_a
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    const-string v9, "Cannot Get Sms SIM Memory Status from SIM"

    invoke-virtual {v7, v9}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto :goto_5

    .line 225
    .end local v1           #ar:Landroid/os/AsyncResult;
    :sswitch_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 226
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSimInsertLock:Ljava/lang/Object;
    invoke-static {v9}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$900(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 227
    :try_start_b
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    iget-object v11, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v11, :cond_9

    move v7, v8

    :cond_9
    #setter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mInsertMessageSuccess:Z
    invoke-static {v10, v7}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$1002(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;Z)Z

    .line 228
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mInsertMessageSuccess:Z
    invoke-static {v7}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$1000(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    move-result v7

    if-ne v7, v8, :cond_a

    .line 230
    :try_start_c
    iget-object v7, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, [I

    check-cast v7, [I

    const/4 v8, 0x0

    aget v4, v7, v8

    .line 231
    .restart local v4       #index:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->smsInsertRet:Landroid/telephony/SimSmsInsertStatus;
    invoke-static {v8}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$1100(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Landroid/telephony/SimSmsInsertStatus;

    move-result-object v8

    iget-object v10, v8, Landroid/telephony/SimSmsInsertStatus;->indexInIcc:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, ","

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v8, Landroid/telephony/SimSmsInsertStatus;->indexInIcc:Ljava/lang/String;

    .line 232
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[insertText save one pdu in index "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    .line 243
    .end local v4           #index:I
    :goto_6
    :try_start_d
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSimInsertLock:Ljava/lang/Object;
    invoke-static {v7}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$900(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    .line 244
    monitor-exit v9

    goto/16 :goto_0

    :catchall_5
    move-exception v7

    monitor-exit v9
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    throw v7

    .line 233
    :catch_2
    move-exception v2

    .line 234
    .restart local v2       #e:Ljava/lang/ClassCastException;
    :try_start_e
    invoke-virtual {v2}, Ljava/lang/ClassCastException;->printStackTrace()V

    goto :goto_6

    .line 235
    .end local v2           #e:Ljava/lang/ClassCastException;
    :catch_3
    move-exception v3

    .line 236
    .restart local v3       #ex:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 239
    .end local v3           #ex:Ljava/lang/Exception;
    :cond_a
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    const-string v8, "[insertText fail to insert sms into ICC"

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 240
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->smsInsertRet:Landroid/telephony/SimSmsInsertStatus;
    invoke-static {v8}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$1100(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Landroid/telephony/SimSmsInsertStatus;

    move-result-object v8

    iget-object v10, v8, Landroid/telephony/SimSmsInsertStatus;->indexInIcc:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "-1,"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v8, Landroid/telephony/SimSmsInsertStatus;->indexInIcc:Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    goto :goto_6

    .line 247
    .end local v1           #ar:Landroid/os/AsyncResult;
    :sswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 248
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSmsParamsLock:Ljava/lang/Object;
    invoke-static {v7}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$1200(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 249
    :try_start_f
    iget-object v7, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    if-nez v7, :cond_b

    .line 251
    :try_start_10
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    iget-object v7, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, Landroid/telephony/SmsParameters;

    #setter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSmsParams:Landroid/telephony/SmsParameters;
    invoke-static {v9, v7}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$1302(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;Landroid/telephony/SmsParameters;)Landroid/telephony/SmsParameters;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6
    .catch Ljava/lang/ClassCastException; {:try_start_10 .. :try_end_10} :catch_4
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_5

    .line 264
    :goto_7
    :try_start_11
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSmsParamsLock:Ljava/lang/Object;
    invoke-static {v7}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$1200(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    .line 265
    monitor-exit v8

    goto/16 :goto_0

    :catchall_6
    move-exception v7

    monitor-exit v8
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    throw v7

    .line 252
    :catch_4
    move-exception v2

    .line 253
    .restart local v2       #e:Ljava/lang/ClassCastException;
    :try_start_12
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    const-string v9, "[EFsmsp fail to get sms params ClassCastException"

    invoke-virtual {v7, v9}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 254
    invoke-virtual {v2}, Ljava/lang/ClassCastException;->printStackTrace()V

    goto :goto_7

    .line 255
    .end local v2           #e:Ljava/lang/ClassCastException;
    :catch_5
    move-exception v3

    .line 256
    .restart local v3       #ex:Ljava/lang/Exception;
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    const-string v9, "[EFsmsp fail to get sms params Exception"

    invoke-virtual {v7, v9}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 257
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 260
    .end local v3           #ex:Ljava/lang/Exception;
    :cond_b
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    const-string v9, "[EFsmsp fail to get sms params"

    invoke-virtual {v7, v9}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 261
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    const/4 v9, 0x0

    #setter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSmsParams:Landroid/telephony/SmsParameters;
    invoke-static {v7, v9}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$1302(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;Landroid/telephony/SmsParameters;)Landroid/telephony/SmsParameters;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    goto :goto_7

    .line 268
    .end local v1           #ar:Landroid/os/AsyncResult;
    :sswitch_7
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 269
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSmsParamsLock:Ljava/lang/Object;
    invoke-static {v7}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$1200(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 270
    :try_start_13
    iget-object v7, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_c

    .line 271
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    const/4 v9, 0x1

    #setter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSmsParamsSuccess:Z
    invoke-static {v7, v9}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$1402(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;Z)Z

    .line 277
    :goto_8
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSmsParamsLock:Ljava/lang/Object;
    invoke-static {v7}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$1200(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    .line 278
    monitor-exit v8

    goto/16 :goto_0

    :catchall_7
    move-exception v7

    monitor-exit v8
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    throw v7

    .line 273
    :cond_c
    :try_start_14
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    const-string v9, "[EFsmsp fail to set sms params"

    invoke-virtual {v7, v9}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 274
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    const/4 v9, 0x0

    #setter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSmsParamsSuccess:Z
    invoke-static {v7, v9}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$1402(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;Z)Z
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    goto :goto_8

    .line 281
    .end local v1           #ar:Landroid/os/AsyncResult;
    :sswitch_8
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 282
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v7}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$200(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 283
    :try_start_15
    iget-object v7, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    if-nez v7, :cond_e

    .line 286
    :try_start_16
    iget-object v7, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, [B

    move-object v0, v7

    check-cast v0, [B

    move-object v5, v0

    .line 287
    .local v5, rawData:[B
    const/4 v7, 0x0

    aget-byte v7, v5, v7

    if-nez v7, :cond_d

    .line 288
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    const-string v9, "sms raw data status is FREE"

    invoke-virtual {v7, v9}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 289
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    const/4 v9, 0x0

    #setter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSmsRawData:Lcom/android/internal/telephony/SmsRawData;
    invoke-static {v7, v9}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$1502(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;Lcom/android/internal/telephony/SmsRawData;)Lcom/android/internal/telephony/SmsRawData;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_8
    .catch Ljava/lang/ClassCastException; {:try_start_16 .. :try_end_16} :catch_6

    .line 302
    .end local v5           #rawData:[B
    :goto_9
    :try_start_17
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v7}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$200(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    .line 303
    monitor-exit v8

    goto/16 :goto_0

    :catchall_8
    move-exception v7

    monitor-exit v8
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_8

    throw v7

    .line 291
    .restart local v5       #rawData:[B
    :cond_d
    :try_start_18
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    new-instance v9, Lcom/android/internal/telephony/SmsRawData;

    invoke-direct {v9, v5}, Lcom/android/internal/telephony/SmsRawData;-><init>([B)V

    #setter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSmsRawData:Lcom/android/internal/telephony/SmsRawData;
    invoke-static {v7, v9}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$1502(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;Lcom/android/internal/telephony/SmsRawData;)Lcom/android/internal/telephony/SmsRawData;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_8
    .catch Ljava/lang/ClassCastException; {:try_start_18 .. :try_end_18} :catch_6

    goto :goto_9

    .line 293
    .end local v5           #rawData:[B
    :catch_6
    move-exception v2

    .line 294
    .restart local v2       #e:Ljava/lang/ClassCastException;
    :try_start_19
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    const-string v9, "fail to get sms raw data ClassCastException"

    invoke-virtual {v7, v9}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 295
    invoke-virtual {v2}, Ljava/lang/ClassCastException;->printStackTrace()V

    .line 296
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    const/4 v9, 0x0

    #setter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSmsRawData:Lcom/android/internal/telephony/SmsRawData;
    invoke-static {v7, v9}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$1502(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;Lcom/android/internal/telephony/SmsRawData;)Lcom/android/internal/telephony/SmsRawData;

    goto :goto_9

    .line 299
    .end local v2           #e:Ljava/lang/ClassCastException;
    :cond_e
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    const-string v9, "fail to get sms raw data rild"

    invoke-virtual {v7, v9}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 300
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    const/4 v9, 0x0

    #setter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSmsRawData:Lcom/android/internal/telephony/SmsRawData;
    invoke-static {v7, v9}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$1502(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;Lcom/android/internal/telephony/SmsRawData;)Lcom/android/internal/telephony/SmsRawData;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_8

    goto :goto_9

    .line 136
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_1
        0x3 -> :sswitch_3
        0x4 -> :sswitch_3
        0x5 -> :sswitch_0
        0x64 -> :sswitch_3
        0x67 -> :sswitch_4
        0x68 -> :sswitch_5
        0x69 -> :sswitch_6
        0x6a -> :sswitch_7
        0x6b -> :sswitch_8
    .end sparse-switch
.end method
