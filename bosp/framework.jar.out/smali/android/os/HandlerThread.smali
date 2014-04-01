.class public Landroid/os/HandlerThread;
.super Ljava/lang/Thread;
.source "HandlerThread.java"


# instance fields
.field mLooper:Landroid/os/Looper;

.field mPriority:I

.field mTid:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Landroid/os/HandlerThread;->mTid:I

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/HandlerThread;->mPriority:I

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter "name"
    .parameter "priority"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Landroid/os/HandlerThread;->mTid:I

    .line 43
    iput p2, p0, Landroid/os/HandlerThread;->mPriority:I

    .line 44
    return-void
.end method


# virtual methods
.method public getLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    const/4 v0, 0x0

    .line 89
    :goto_0
    return-object v0

    .line 81
    :cond_0
    monitor-enter p0

    .line 82
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/os/HandlerThread;->mLooper:Landroid/os/Looper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 84
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 85
    :catch_0
    move-exception v0

    goto :goto_1

    .line 88
    :cond_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 89
    iget-object v0, p0, Landroid/os/HandlerThread;->mLooper:Landroid/os/Looper;

    goto :goto_0

    .line 88
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public getThreadId()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Landroid/os/HandlerThread;->mTid:I

    return v0
.end method

.method protected onLooperPrepared()V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method public quit()Z
    .locals 2

    .prologue
    .line 99
    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 100
    .local v0, looper:Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 102
    const/4 v1, 0x1

    .line 104
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 54
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    iput v0, p0, Landroid/os/HandlerThread;->mTid:I

    .line 55
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 56
    monitor-enter p0

    .line 57
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Landroid/os/HandlerThread;->mLooper:Landroid/os/Looper;

    .line 58
    iget-object v0, p0, Landroid/os/HandlerThread;->mLooper:Landroid/os/Looper;

    if-nez v0, :cond_0

    .line 59
    const-string v0, "HandlerThread"

    const-string/jumbo v1, "mLooper is null!"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 62
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    iget v0, p0, Landroid/os/HandlerThread;->mPriority:I

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 64
    invoke-virtual {p0}, Landroid/os/HandlerThread;->onLooperPrepared()V

    .line 65
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Landroid/os/HandlerThread;->mTid:I

    .line 67
    return-void

    .line 62
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
