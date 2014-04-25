.class Lcom/baidu/internal/keyguard/slide/CharggingView$CharggingThread;
.super Ljava/lang/Thread;
.source "CharggingView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/keyguard/slide/CharggingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CharggingThread"
.end annotation


# instance fields
.field isRunning:Z

.field private runThread:Ljava/lang/Thread;

.field final synthetic this$0:Lcom/baidu/internal/keyguard/slide/CharggingView;


# direct methods
.method constructor <init>(Lcom/baidu/internal/keyguard/slide/CharggingView;)V
    .locals 1
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/CharggingView$CharggingThread;->this$0:Lcom/baidu/internal/keyguard/slide/CharggingView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/internal/keyguard/slide/CharggingView$CharggingThread;->isRunning:Z

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/CharggingView$CharggingThread;->runThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/CharggingView$CharggingThread;->runThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 72
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/internal/keyguard/slide/CharggingView$CharggingThread;->isRunning:Z

    .line 73
    return-void
.end method

.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x4

    const/4 v4, 0x1

    .line 76
    iput-boolean v4, p0, Lcom/baidu/internal/keyguard/slide/CharggingView$CharggingThread;->isRunning:Z

    .line 77
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/CharggingView$CharggingThread;->this$0:Lcom/baidu/internal/keyguard/slide/CharggingView;

    const/4 v3, -0x1

    #setter for: Lcom/baidu/internal/keyguard/slide/CharggingView;->lastCircle:I
    invoke-static {v2, v3}, Lcom/baidu/internal/keyguard/slide/CharggingView;->access$802(Lcom/baidu/internal/keyguard/slide/CharggingView;I)I

    .line 78
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/internal/keyguard/slide/CharggingView$CharggingThread;->runThread:Ljava/lang/Thread;

    .line 79
    :goto_0
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/CharggingView$CharggingThread;->this$0:Lcom/baidu/internal/keyguard/slide/CharggingView;

    #getter for: Lcom/baidu/internal/keyguard/slide/CharggingView;->mIsChargging:Z
    invoke-static {v2}, Lcom/baidu/internal/keyguard/slide/CharggingView;->access$900(Lcom/baidu/internal/keyguard/slide/CharggingView;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/baidu/internal/keyguard/slide/CharggingView$CharggingThread;->isRunning:Z

    if-eqz v2, :cond_6

    .line 81
    :try_start_0
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 82
    .local v1, msg1:Landroid/os/Message;
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/CharggingView$CharggingThread;->this$0:Lcom/baidu/internal/keyguard/slide/CharggingView;

    #getter for: Lcom/baidu/internal/keyguard/slide/CharggingView;->lastCircle:I
    invoke-static {v2}, Lcom/baidu/internal/keyguard/slide/CharggingView;->access$800(Lcom/baidu/internal/keyguard/slide/CharggingView;)I

    move-result v2

    if-eq v2, v5, :cond_0

    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/CharggingView$CharggingThread;->this$0:Lcom/baidu/internal/keyguard/slide/CharggingView;

    #getter for: Lcom/baidu/internal/keyguard/slide/CharggingView;->lastCircle:I
    invoke-static {v2}, Lcom/baidu/internal/keyguard/slide/CharggingView;->access$800(Lcom/baidu/internal/keyguard/slide/CharggingView;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 83
    :cond_0
    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->what:I

    .line 84
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 85
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/CharggingView$CharggingThread;->this$0:Lcom/baidu/internal/keyguard/slide/CharggingView;

    const/4 v3, 0x1

    #setter for: Lcom/baidu/internal/keyguard/slide/CharggingView;->lastCircle:I
    invoke-static {v2, v3}, Lcom/baidu/internal/keyguard/slide/CharggingView;->access$802(Lcom/baidu/internal/keyguard/slide/CharggingView;I)I

    .line 99
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/CharggingView$CharggingThread;->this$0:Lcom/baidu/internal/keyguard/slide/CharggingView;

    #getter for: Lcom/baidu/internal/keyguard/slide/CharggingView;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/baidu/internal/keyguard/slide/CharggingView;->access$1000(Lcom/baidu/internal/keyguard/slide/CharggingView;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 100
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/CharggingView$CharggingThread;->this$0:Lcom/baidu/internal/keyguard/slide/CharggingView;

    #getter for: Lcom/baidu/internal/keyguard/slide/CharggingView;->lastCircle:I
    invoke-static {v2}, Lcom/baidu/internal/keyguard/slide/CharggingView;->access$800(Lcom/baidu/internal/keyguard/slide/CharggingView;)I

    move-result v2

    if-ne v2, v5, :cond_5

    .line 101
    const-wide/16 v2, 0x7d0

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 105
    .end local v1           #msg1:Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 107
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 86
    .end local v0           #e:Ljava/lang/InterruptedException;
    .restart local v1       #msg1:Landroid/os/Message;
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/CharggingView$CharggingThread;->this$0:Lcom/baidu/internal/keyguard/slide/CharggingView;

    #getter for: Lcom/baidu/internal/keyguard/slide/CharggingView;->lastCircle:I
    invoke-static {v2}, Lcom/baidu/internal/keyguard/slide/CharggingView;->access$800(Lcom/baidu/internal/keyguard/slide/CharggingView;)I

    move-result v2

    if-ne v2, v4, :cond_3

    .line 87
    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->what:I

    .line 88
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 89
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/CharggingView$CharggingThread;->this$0:Lcom/baidu/internal/keyguard/slide/CharggingView;

    const/4 v3, 0x2

    #setter for: Lcom/baidu/internal/keyguard/slide/CharggingView;->lastCircle:I
    invoke-static {v2, v3}, Lcom/baidu/internal/keyguard/slide/CharggingView;->access$802(Lcom/baidu/internal/keyguard/slide/CharggingView;I)I

    goto :goto_1

    .line 90
    :cond_3
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/CharggingView$CharggingThread;->this$0:Lcom/baidu/internal/keyguard/slide/CharggingView;

    #getter for: Lcom/baidu/internal/keyguard/slide/CharggingView;->lastCircle:I
    invoke-static {v2}, Lcom/baidu/internal/keyguard/slide/CharggingView;->access$800(Lcom/baidu/internal/keyguard/slide/CharggingView;)I

    move-result v2

    if-ne v2, v6, :cond_4

    .line 91
    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->what:I

    .line 92
    const/4 v2, 0x3

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 93
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/CharggingView$CharggingThread;->this$0:Lcom/baidu/internal/keyguard/slide/CharggingView;

    const/4 v3, 0x3

    #setter for: Lcom/baidu/internal/keyguard/slide/CharggingView;->lastCircle:I
    invoke-static {v2, v3}, Lcom/baidu/internal/keyguard/slide/CharggingView;->access$802(Lcom/baidu/internal/keyguard/slide/CharggingView;I)I

    goto :goto_1

    .line 94
    :cond_4
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/CharggingView$CharggingThread;->this$0:Lcom/baidu/internal/keyguard/slide/CharggingView;

    #getter for: Lcom/baidu/internal/keyguard/slide/CharggingView;->lastCircle:I
    invoke-static {v2}, Lcom/baidu/internal/keyguard/slide/CharggingView;->access$800(Lcom/baidu/internal/keyguard/slide/CharggingView;)I

    move-result v2

    if-ne v2, v7, :cond_1

    .line 95
    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->what:I

    .line 96
    const/4 v2, 0x4

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 97
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/CharggingView$CharggingThread;->this$0:Lcom/baidu/internal/keyguard/slide/CharggingView;

    const/4 v3, 0x4

    #setter for: Lcom/baidu/internal/keyguard/slide/CharggingView;->lastCircle:I
    invoke-static {v2, v3}, Lcom/baidu/internal/keyguard/slide/CharggingView;->access$802(Lcom/baidu/internal/keyguard/slide/CharggingView;I)I

    goto :goto_1

    .line 103
    :cond_5
    const-wide/16 v2, 0x190

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 110
    .end local v1           #msg1:Landroid/os/Message;
    :cond_6
    return-void
.end method
