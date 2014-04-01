.class Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;
.super Ljava/lang/Object;
.source "SipSessionGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SessionTimer"
.end annotation


# instance fields
.field private mRunning:Z

.field final synthetic this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;


# direct methods
.method constructor <init>(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V
    .locals 1
    .parameter

    .prologue
    .line 579
    iput-object p1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 580
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;->mRunning:Z

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 579
    iget-boolean v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;->mRunning:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 579
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;->timeout()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 579
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;->sleep(I)V

    return-void
.end method

.method private declared-synchronized sleep(I)V
    .locals 3
    .parameter "timeout"

    .prologue
    .line 608
    monitor-enter p0

    mul-int/lit16 v1, p1, 0x3e8

    int-to-long v1, v1

    :try_start_0
    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 612
    :goto_0
    monitor-exit p0

    return-void

    .line 609
    :catch_0
    move-exception v0

    .line 610
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_1
    const-string v1, "SipSession"

    const-string/jumbo v2, "session timer interrupted!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 608
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private timeout()V
    .locals 5

    .prologue
    .line 597
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v1, v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    monitor-enter v1

    .line 600
    :try_start_0
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    const/4 v2, -0x5

    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v3, v3, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/sip/SipSessionGroup;->access$1200(Lcom/android/server/sip/SipSessionGroup;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, #string@sipError_session_timeout#t

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onError(ILjava/lang/String;)V
    invoke-static {v0, v2, v3}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->access$000(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;ILjava/lang/String;)V

    .line 603
    monitor-exit v1

    .line 604
    return-void

    .line 603
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method declared-synchronized cancel()V
    .locals 1

    .prologue
    .line 592
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;->mRunning:Z

    .line 593
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 594
    monitor-exit p0

    return-void

    .line 592
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method start(I)V
    .locals 3
    .parameter "timeout"

    .prologue
    .line 583
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer$1;-><init>(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;I)V

    const-string v2, "SipSessionTimerThread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 589
    return-void
.end method
