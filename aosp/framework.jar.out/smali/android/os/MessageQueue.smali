.class public Landroid/os/MessageQueue;
.super Ljava/lang/Object;
.source "MessageQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/MessageQueue$IdleHandler;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final IS_ENG_BUILD:Z = false

.field private static final MESSAGE_DUMP_SIZE_MAX:I = 0x14


# instance fields
.field private mBlocked:Z

.field private final mIdleHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/MessageQueue$IdleHandler;",
            ">;"
        }
    .end annotation
.end field

.field mMessages:Landroid/os/Message;

.field private mNextBarrierToken:I

.field private mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

.field private mPtr:I

.field private final mQuitAllowed:Z

.field private mQuiting:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/os/MessageQueue;->IS_ENG_BUILD:Z

    return-void
.end method

.method constructor <init>(Z)V
    .locals 1
    .parameter "quitAllowed"

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    .line 107
    iput-boolean p1, p0, Landroid/os/MessageQueue;->mQuitAllowed:Z

    .line 108
    invoke-direct {p0}, Landroid/os/MessageQueue;->nativeInit()V

    .line 109
    return-void
.end method

.method private native nativeDestroy()V
.end method

.method private native nativeInit()V
.end method

.method private native nativePollOnce(II)V
.end method

.method private native nativeWake(I)V
.end method


# virtual methods
.method public final addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V
    .locals 2
    .parameter "handler"

    .prologue
    .line 85
    if-nez p1, :cond_0

    .line 86
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Can\'t add a null IdleHandler"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    monitor-enter p0

    .line 89
    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    monitor-exit p0

    .line 91
    return-void

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final declared-synchronized dumpMessageQueue()Ljava/lang/String;
    .locals 8

    .prologue
    const/16 v7, 0x14

    .line 496
    monitor-enter p0

    :try_start_0
    const-string v1, ""

    .line 497
    .local v1, messageQueue:Ljava/lang/String;
    iget-object v4, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    if-eqz v4, :cond_2

    .line 499
    const-string v4, "MessageQueue"

    const-string v5, "Dump first 20 messages in Queue: "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Dump first "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x14

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " messages in Queue: \n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 501
    iget-object v3, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 503
    .local v3, tempMsg:Landroid/os/Message;
    const/4 v0, 0x0

    .line 504
    .local v0, count:I
    :goto_0
    if-eqz v3, :cond_1

    .line 506
    add-int/lit8 v0, v0, 0x1

    .line 508
    if-gt v0, v7, :cond_0

    .line 512
    :try_start_1
    const-string v4, "MessageQueue"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dump Message in Queue ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Dump Message in Queue ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 521
    :cond_0
    :goto_1
    :try_start_2
    iget-object v3, v3, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_0

    .line 515
    :catch_0
    move-exception v2

    .line 517
    .local v2, re:Ljava/lang/RuntimeException;
    const-string v4, "MessageQueue"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dump Message in Queue ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "): RuntimeException occurred. Ignore this message dump."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 496
    .end local v0           #count:I
    .end local v1           #messageQueue:Ljava/lang/String;
    .end local v2           #re:Ljava/lang/RuntimeException;
    .end local v3           #tempMsg:Landroid/os/Message;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 524
    .restart local v0       #count:I
    .restart local v1       #messageQueue:Ljava/lang/String;
    .restart local v3       #tempMsg:Landroid/os/Message;
    :cond_1
    :try_start_3
    const-string v4, "MessageQueue"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Total Message Count: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Total Message Count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v1

    .line 535
    .end local v0           #count:I
    .end local v3           #tempMsg:Landroid/os/Message;
    :goto_2
    monitor-exit p0

    return-object v1

    .line 532
    :cond_2
    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "mMessages is null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 533
    const-string v4, "MessageQueue"

    const-string/jumbo v5, "mMessages is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method final enqueueMessage(Landroid/os/Message;J)Z
    .locals 8
    .parameter "msg"
    .parameter "when"

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 287
    invoke-virtual {p1}, Landroid/os/Message;->isInUse()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 288
    new-instance v5, Landroid/util/AndroidRuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " This message is already in use."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 290
    :cond_0
    iget-object v6, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v6, :cond_1

    .line 291
    new-instance v5, Landroid/util/AndroidRuntimeException;

    const-string v6, "Message must have a target."

    invoke-direct {v5, v6}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 295
    :cond_1
    monitor-enter p0

    .line 296
    :try_start_0
    iget-boolean v6, p0, Landroid/os/MessageQueue;->mQuiting:Z

    if-eqz v6, :cond_2

    .line 297
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " sending message to a Handler on a dead thread"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 299
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v5, "MessageQueue"

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 300
    monitor-exit p0

    .line 349
    .end local v0           #e:Ljava/lang/RuntimeException;
    :goto_0
    return v1

    .line 304
    :cond_2
    sget-boolean v6, Landroid/os/MessageQueue;->IS_ENG_BUILD:Z

    if-eqz v6, :cond_4

    .line 306
    iget-object v4, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 307
    .local v4, tempP:Landroid/os/Message;
    :goto_1
    if-eqz v4, :cond_4

    .line 309
    if-ne v4, p1, :cond_3

    .line 311
    const-string v5, "MessageQueue"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Warning: Sending the same message instance! Ignored. msg="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    monitor-exit p0

    goto :goto_0

    .line 345
    .end local v4           #tempP:Landroid/os/Message;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 315
    .restart local v4       #tempP:Landroid/os/Message;
    :cond_3
    :try_start_1
    iget-object v4, v4, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_1

    .line 319
    .end local v4           #tempP:Landroid/os/Message;
    :cond_4
    iput-wide p2, p1, Landroid/os/Message;->when:J

    .line 320
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 321
    .local v2, p:Landroid/os/Message;
    if-eqz v2, :cond_5

    const-wide/16 v6, 0x0

    cmp-long v6, p2, v6

    if-eqz v6, :cond_5

    iget-wide v6, v2, Landroid/os/Message;->when:J

    cmp-long v6, p2, v6

    if-gez v6, :cond_7

    .line 323
    :cond_5
    iput-object v2, p1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 324
    iput-object p1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 325
    iget-boolean v1, p0, Landroid/os/MessageQueue;->mBlocked:Z

    .line 345
    .local v1, needWake:Z
    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 346
    if-eqz v1, :cond_6

    .line 347
    iget v6, p0, Landroid/os/MessageQueue;->mPtr:I

    invoke-direct {p0, v6}, Landroid/os/MessageQueue;->nativeWake(I)V

    :cond_6
    move v1, v5

    .line 349
    goto :goto_0

    .line 330
    .end local v1           #needWake:Z
    :cond_7
    :try_start_2
    iget-boolean v6, p0, Landroid/os/MessageQueue;->mBlocked:Z

    if-eqz v6, :cond_8

    iget-object v6, v2, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v6, :cond_8

    invoke-virtual {p1}, Landroid/os/Message;->isAsynchronous()Z

    move-result v6

    if-eqz v6, :cond_8

    move v1, v5

    .line 333
    .restart local v1       #needWake:Z
    :cond_8
    :goto_3
    move-object v3, v2

    .line 334
    .local v3, prev:Landroid/os/Message;
    iget-object v2, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 335
    if-eqz v2, :cond_9

    iget-wide v6, v2, Landroid/os/Message;->when:J

    cmp-long v6, p2, v6

    if-gez v6, :cond_a

    .line 342
    :cond_9
    iput-object v2, p1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 343
    iput-object p1, v3, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_2

    .line 338
    :cond_a
    if-eqz v1, :cond_8

    invoke-virtual {v2}, Landroid/os/Message;->isAsynchronous()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v6

    if-eqz v6, :cond_8

    .line 339
    const/4 v1, 0x0

    goto :goto_3
.end method

.method final enqueueSyncBarrier(J)I
    .locals 6
    .parameter "when"

    .prologue
    .line 233
    monitor-enter p0

    .line 234
    :try_start_0
    iget v3, p0, Landroid/os/MessageQueue;->mNextBarrierToken:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroid/os/MessageQueue;->mNextBarrierToken:I

    .line 235
    .local v3, token:I
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 236
    .local v0, msg:Landroid/os/Message;
    iput v3, v0, Landroid/os/Message;->arg1:I

    .line 238
    const/4 v2, 0x0

    .line 239
    .local v2, prev:Landroid/os/Message;
    iget-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 240
    .local v1, p:Landroid/os/Message;
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-eqz v4, :cond_0

    .line 241
    :goto_0
    if-eqz v1, :cond_0

    iget-wide v4, v1, Landroid/os/Message;->when:J

    cmp-long v4, v4, p1

    if-gtz v4, :cond_0

    .line 242
    move-object v2, v1

    .line 243
    iget-object v1, v1, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_0

    .line 246
    :cond_0
    if-eqz v2, :cond_1

    .line 247
    iput-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 248
    iput-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 253
    :goto_1
    monitor-exit p0

    return v3

    .line 250
    :cond_1
    iput-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 251
    iput-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    goto :goto_1

    .line 254
    .end local v0           #msg:Landroid/os/Message;
    .end local v1           #p:Landroid/os/Message;
    .end local v2           #prev:Landroid/os/Message;
    .end local v3           #token:I
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 114
    :try_start_0
    invoke-direct {p0}, Landroid/os/MessageQueue;->nativeDestroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 118
    return-void

    .line 116
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method final hasMessages(Landroid/os/Handler;ILjava/lang/Object;)Z
    .locals 3
    .parameter "h"
    .parameter "what"
    .parameter "object"

    .prologue
    const/4 v1, 0x0

    .line 353
    if-nez p1, :cond_0

    .line 365
    :goto_0
    return v1

    .line 357
    :cond_0
    monitor-enter p0

    .line 358
    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 359
    .local v0, p:Landroid/os/Message;
    :goto_1
    if-eqz v0, :cond_3

    .line 360
    iget-object v2, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v2, p1, :cond_2

    iget v2, v0, Landroid/os/Message;->what:I

    if-ne v2, p2, :cond_2

    if-eqz p3, :cond_1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v2, p3, :cond_2

    .line 361
    :cond_1
    const/4 v1, 0x1

    monitor-exit p0

    goto :goto_0

    .line 366
    .end local v0           #p:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 363
    .restart local v0       #p:Landroid/os/Message;
    :cond_2
    :try_start_1
    iget-object v0, v0, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_1

    .line 365
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method final hasMessages(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)Z
    .locals 3
    .parameter "h"
    .parameter "r"
    .parameter "object"

    .prologue
    const/4 v1, 0x0

    .line 370
    if-nez p1, :cond_0

    .line 382
    :goto_0
    return v1

    .line 374
    :cond_0
    monitor-enter p0

    .line 375
    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 376
    .local v0, p:Landroid/os/Message;
    :goto_1
    if-eqz v0, :cond_3

    .line 377
    iget-object v2, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v2, p1, :cond_2

    iget-object v2, v0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-ne v2, p2, :cond_2

    if-eqz p3, :cond_1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v2, p3, :cond_2

    .line 378
    :cond_1
    const/4 v1, 0x1

    monitor-exit p0

    goto :goto_0

    .line 383
    .end local v0           #p:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 380
    .restart local v0       #p:Landroid/os/Message;
    :cond_2
    :try_start_1
    iget-object v0, v0, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_1

    .line 382
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method final next()Landroid/os/Message;
    .locals 14

    .prologue
    .line 121
    const/4 v7, -0x1

    .line 122
    .local v7, pendingIdleHandlerCount:I
    const/4 v4, 0x0

    .line 125
    .local v4, nextPollTimeoutMillis:I
    :goto_0
    if-eqz v4, :cond_0

    .line 126
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    .line 128
    :cond_0
    iget v10, p0, Landroid/os/MessageQueue;->mPtr:I

    invoke-direct {p0, v10, v4}, Landroid/os/MessageQueue;->nativePollOnce(II)V

    .line 130
    monitor-enter p0

    .line 131
    :try_start_0
    iget-boolean v10, p0, Landroid/os/MessageQueue;->mQuiting:Z

    if-eqz v10, :cond_1

    .line 132
    const/4 v3, 0x0

    monitor-exit p0

    .line 161
    :goto_1
    return-object v3

    .line 136
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 137
    .local v5, now:J
    const/4 v8, 0x0

    .line 138
    .local v8, prevMsg:Landroid/os/Message;
    iget-object v3, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 139
    .local v3, msg:Landroid/os/Message;
    if-eqz v3, :cond_3

    iget-object v10, v3, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v10, :cond_3

    .line 142
    :cond_2
    move-object v8, v3

    .line 143
    iget-object v3, v3, Landroid/os/Message;->next:Landroid/os/Message;

    .line 144
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/os/Message;->isAsynchronous()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 146
    :cond_3
    if-eqz v3, :cond_8

    .line 147
    iget-wide v10, v3, Landroid/os/Message;->when:J

    cmp-long v10, v5, v10

    if-gez v10, :cond_6

    .line 149
    iget-wide v10, v3, Landroid/os/Message;->when:J

    sub-long/2addr v10, v5

    const-wide/32 v12, 0x7fffffff

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    long-to-int v4, v10

    .line 171
    :goto_2
    if-gez v7, :cond_5

    iget-object v10, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    if-eqz v10, :cond_4

    iget-object v10, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    iget-wide v10, v10, Landroid/os/Message;->when:J

    cmp-long v10, v5, v10

    if-gez v10, :cond_5

    .line 173
    :cond_4
    iget-object v10, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 175
    :cond_5
    if-gtz v7, :cond_9

    .line 177
    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/os/MessageQueue;->mBlocked:Z

    .line 178
    monitor-exit p0

    goto :goto_0

    .line 185
    .end local v3           #msg:Landroid/os/Message;
    .end local v5           #now:J
    .end local v8           #prevMsg:Landroid/os/Message;
    :catchall_0
    move-exception v10

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 152
    .restart local v3       #msg:Landroid/os/Message;
    .restart local v5       #now:J
    .restart local v8       #prevMsg:Landroid/os/Message;
    :cond_6
    const/4 v10, 0x0

    :try_start_1
    iput-boolean v10, p0, Landroid/os/MessageQueue;->mBlocked:Z

    .line 153
    if-eqz v8, :cond_7

    .line 154
    iget-object v10, v3, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v10, v8, Landroid/os/Message;->next:Landroid/os/Message;

    .line 158
    :goto_3
    const/4 v10, 0x0

    iput-object v10, v3, Landroid/os/Message;->next:Landroid/os/Message;

    .line 160
    invoke-virtual {v3}, Landroid/os/Message;->markInUse()V

    .line 161
    monitor-exit p0

    goto :goto_1

    .line 156
    :cond_7
    iget-object v10, v3, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v10, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    goto :goto_3

    .line 165
    :cond_8
    const/4 v4, -0x1

    goto :goto_2

    .line 181
    :cond_9
    iget-object v10, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    if-nez v10, :cond_a

    .line 182
    const/4 v10, 0x4

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    new-array v10, v10, [Landroid/os/MessageQueue$IdleHandler;

    iput-object v10, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    .line 184
    :cond_a
    iget-object v10, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    iget-object v11, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/os/MessageQueue$IdleHandler;

    iput-object v10, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    .line 185
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 189
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    if-ge v0, v7, :cond_c

    .line 190
    iget-object v10, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    aget-object v1, v10, v0

    .line 191
    .local v1, idler:Landroid/os/MessageQueue$IdleHandler;
    iget-object v10, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    const/4 v11, 0x0

    aput-object v11, v10, v0

    .line 193
    const/4 v2, 0x0

    .line 195
    .local v2, keep:Z
    :try_start_2
    invoke-interface {v1}, Landroid/os/MessageQueue$IdleHandler;->queueIdle()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result v2

    .line 200
    :goto_5
    if-nez v2, :cond_b

    .line 201
    monitor-enter p0

    .line 202
    :try_start_3
    iget-object v10, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 203
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 189
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 196
    :catch_0
    move-exception v9

    .line 197
    .local v9, t:Ljava/lang/Throwable;
    const-string v10, "MessageQueue"

    const-string v11, "IdleHandler threw exception"

    invoke-static {v10, v11, v9}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 203
    .end local v9           #t:Ljava/lang/Throwable;
    :catchall_1
    move-exception v10

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v10

    .line 208
    .end local v1           #idler:Landroid/os/MessageQueue$IdleHandler;
    .end local v2           #keep:Z
    :cond_c
    const/4 v7, 0x0

    .line 212
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method final quit()V
    .locals 2

    .prologue
    .line 217
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mQuitAllowed:Z

    if-nez v0, :cond_0

    .line 218
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Main thread not allowed to quit."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_0
    monitor-enter p0

    .line 222
    :try_start_0
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mQuiting:Z

    if-eqz v0, :cond_1

    .line 223
    monitor-exit p0

    .line 228
    :goto_0
    return-void

    .line 225
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/MessageQueue;->mQuiting:Z

    .line 226
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    iget v0, p0, Landroid/os/MessageQueue;->mPtr:I

    invoke-direct {p0, v0}, Landroid/os/MessageQueue;->nativeWake(I)V

    goto :goto_0

    .line 226
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method final removeCallbacksAndMessages(Landroid/os/Handler;Ljava/lang/Object;)V
    .locals 4
    .parameter "h"
    .parameter "object"

    .prologue
    .line 455
    if-nez p1, :cond_0

    .line 485
    :goto_0
    return-void

    .line 459
    :cond_0
    monitor-enter p0

    .line 460
    :try_start_0
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 464
    .local v2, p:Landroid/os/Message;
    :goto_1
    if-eqz v2, :cond_2

    iget-object v3, v2, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v3, p1, :cond_2

    if-eqz p2, :cond_1

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p2, :cond_2

    .line 465
    :cond_1
    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 466
    .local v0, n:Landroid/os/Message;
    iput-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 467
    invoke-virtual {v2}, Landroid/os/Message;->recycle()V

    .line 468
    move-object v2, v0

    .line 469
    goto :goto_1

    .line 472
    .end local v0           #n:Landroid/os/Message;
    :cond_2
    :goto_2
    if-eqz v2, :cond_5

    .line 473
    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 474
    .restart local v0       #n:Landroid/os/Message;
    if-eqz v0, :cond_4

    .line 475
    iget-object v3, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v3, p1, :cond_4

    if-eqz p2, :cond_3

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p2, :cond_4

    .line 476
    :cond_3
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 477
    .local v1, nn:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 478
    iput-object v1, v2, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_2

    .line 484
    .end local v0           #n:Landroid/os/Message;
    .end local v1           #nn:Landroid/os/Message;
    .end local v2           #p:Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 482
    .restart local v0       #n:Landroid/os/Message;
    .restart local v2       #p:Landroid/os/Message;
    :cond_4
    move-object v2, v0

    .line 483
    goto :goto_2

    .line 484
    .end local v0           #n:Landroid/os/Message;
    :cond_5
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public final removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V
    .locals 1
    .parameter "handler"

    .prologue
    .line 101
    monitor-enter p0

    .line 102
    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 103
    monitor-exit p0

    .line 104
    return-void

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final removeMessages(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4
    .parameter "h"
    .parameter "what"
    .parameter "object"

    .prologue
    .line 387
    if-nez p1, :cond_0

    .line 418
    :goto_0
    return-void

    .line 391
    :cond_0
    monitor-enter p0

    .line 392
    :try_start_0
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 396
    .local v2, p:Landroid/os/Message;
    :goto_1
    if-eqz v2, :cond_2

    iget-object v3, v2, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v3, p1, :cond_2

    iget v3, v2, Landroid/os/Message;->what:I

    if-ne v3, p2, :cond_2

    if-eqz p3, :cond_1

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p3, :cond_2

    .line 397
    :cond_1
    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 398
    .local v0, n:Landroid/os/Message;
    iput-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 399
    invoke-virtual {v2}, Landroid/os/Message;->recycle()V

    .line 400
    move-object v2, v0

    .line 401
    goto :goto_1

    .line 404
    .end local v0           #n:Landroid/os/Message;
    :cond_2
    :goto_2
    if-eqz v2, :cond_5

    .line 405
    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 406
    .restart local v0       #n:Landroid/os/Message;
    if-eqz v0, :cond_4

    .line 407
    iget-object v3, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v3, p1, :cond_4

    iget v3, v0, Landroid/os/Message;->what:I

    if-ne v3, p2, :cond_4

    if-eqz p3, :cond_3

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p3, :cond_4

    .line 409
    :cond_3
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 410
    .local v1, nn:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 411
    iput-object v1, v2, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_2

    .line 417
    .end local v0           #n:Landroid/os/Message;
    .end local v1           #nn:Landroid/os/Message;
    .end local v2           #p:Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 415
    .restart local v0       #n:Landroid/os/Message;
    .restart local v2       #p:Landroid/os/Message;
    :cond_4
    move-object v2, v0

    .line 416
    goto :goto_2

    .line 417
    .end local v0           #n:Landroid/os/Message;
    :cond_5
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method final removeMessages(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 4
    .parameter "h"
    .parameter "r"
    .parameter "object"

    .prologue
    .line 421
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 452
    :cond_0
    :goto_0
    return-void

    .line 425
    :cond_1
    monitor-enter p0

    .line 426
    :try_start_0
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 430
    .local v2, p:Landroid/os/Message;
    :goto_1
    if-eqz v2, :cond_3

    iget-object v3, v2, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v3, p1, :cond_3

    iget-object v3, v2, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-ne v3, p2, :cond_3

    if-eqz p3, :cond_2

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p3, :cond_3

    .line 431
    :cond_2
    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 432
    .local v0, n:Landroid/os/Message;
    iput-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 433
    invoke-virtual {v2}, Landroid/os/Message;->recycle()V

    .line 434
    move-object v2, v0

    .line 435
    goto :goto_1

    .line 438
    .end local v0           #n:Landroid/os/Message;
    :cond_3
    :goto_2
    if-eqz v2, :cond_6

    .line 439
    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 440
    .restart local v0       #n:Landroid/os/Message;
    if-eqz v0, :cond_5

    .line 441
    iget-object v3, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v3, p1, :cond_5

    iget-object v3, v0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-ne v3, p2, :cond_5

    if-eqz p3, :cond_4

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p3, :cond_5

    .line 443
    :cond_4
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 444
    .local v1, nn:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 445
    iput-object v1, v2, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_2

    .line 451
    .end local v0           #n:Landroid/os/Message;
    .end local v1           #nn:Landroid/os/Message;
    .end local v2           #p:Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 449
    .restart local v0       #n:Landroid/os/Message;
    .restart local v2       #p:Landroid/os/Message;
    :cond_5
    move-object v2, v0

    .line 450
    goto :goto_2

    .line 451
    .end local v0           #n:Landroid/os/Message;
    :cond_6
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method final removeSyncBarrier(I)V
    .locals 5
    .parameter "token"

    .prologue
    .line 261
    monitor-enter p0

    .line 262
    const/4 v2, 0x0

    .line 263
    .local v2, prev:Landroid/os/Message;
    :try_start_0
    iget-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 264
    .local v1, p:Landroid/os/Message;
    :goto_0
    if-eqz v1, :cond_1

    iget-object v3, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v3, :cond_0

    iget v3, v1, Landroid/os/Message;->arg1:I

    if-eq v3, p1, :cond_1

    .line 265
    :cond_0
    move-object v2, v1

    .line 266
    iget-object v1, v1, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_0

    .line 268
    :cond_1
    if-nez v1, :cond_2

    .line 269
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "The specified message queue synchronization  barrier token has not been posted or has already been removed."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 280
    .end local v1           #p:Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 272
    .restart local v1       #p:Landroid/os/Message;
    :cond_2
    if-eqz v2, :cond_4

    .line 273
    :try_start_1
    iget-object v3, v1, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v3, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 274
    const/4 v0, 0x0

    .line 279
    .local v0, needWake:Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 280
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 281
    if-eqz v0, :cond_3

    .line 282
    iget v3, p0, Landroid/os/MessageQueue;->mPtr:I

    invoke-direct {p0, v3}, Landroid/os/MessageQueue;->nativeWake(I)V

    .line 284
    :cond_3
    return-void

    .line 276
    .end local v0           #needWake:Z
    :cond_4
    :try_start_2
    iget-object v3, v1, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v3, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 277
    iget-object v3, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    iget-object v3, v3, Landroid/os/Message;->target:Landroid/os/Handler;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_6

    :cond_5
    const/4 v0, 0x1

    .restart local v0       #needWake:Z
    :goto_2
    goto :goto_1

    .end local v0           #needWake:Z
    :cond_6
    const/4 v0, 0x0

    goto :goto_2
.end method
