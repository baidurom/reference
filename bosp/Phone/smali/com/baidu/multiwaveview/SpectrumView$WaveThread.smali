.class Lcom/baidu/multiwaveview/SpectrumView$WaveThread;
.super Ljava/lang/Thread;
.source "SpectrumView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/multiwaveview/SpectrumView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WaveThread"
.end annotation


# instance fields
.field isRunning:Z

.field private runThread:Ljava/lang/Thread;

.field final synthetic this$0:Lcom/baidu/multiwaveview/SpectrumView;


# direct methods
.method constructor <init>(Lcom/baidu/multiwaveview/SpectrumView;)V
    .locals 1
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/baidu/multiwaveview/SpectrumView$WaveThread;->this$0:Lcom/baidu/multiwaveview/SpectrumView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/multiwaveview/SpectrumView$WaveThread;->isRunning:Z

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/baidu/multiwaveview/SpectrumView$WaveThread;->runThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/baidu/multiwaveview/SpectrumView$WaveThread;->runThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 94
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/multiwaveview/SpectrumView$WaveThread;->isRunning:Z

    .line 95
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 99
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/baidu/multiwaveview/SpectrumView$WaveThread;->isRunning:Z

    .line 100
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/multiwaveview/SpectrumView$WaveThread;->runThread:Ljava/lang/Thread;

    .line 101
    :goto_0
    iget-boolean v1, p0, Lcom/baidu/multiwaveview/SpectrumView$WaveThread;->isRunning:Z

    if-eqz v1, :cond_0

    .line 103
    const-wide/16 v1, 0x5

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 105
    iget-object v1, p0, Lcom/baidu/multiwaveview/SpectrumView$WaveThread;->this$0:Lcom/baidu/multiwaveview/SpectrumView;

    #calls: Lcom/baidu/multiwaveview/SpectrumView;->updateData()V
    invoke-static {v1}, Lcom/baidu/multiwaveview/SpectrumView;->access$000(Lcom/baidu/multiwaveview/SpectrumView;)V

    .line 107
    iget-object v1, p0, Lcom/baidu/multiwaveview/SpectrumView$WaveThread;->this$0:Lcom/baidu/multiwaveview/SpectrumView;

    iget-object v1, v1, Lcom/baidu/multiwaveview/SpectrumView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 112
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_0
    return-void
.end method
