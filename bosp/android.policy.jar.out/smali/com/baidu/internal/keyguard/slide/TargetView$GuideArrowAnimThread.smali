.class Lcom/baidu/internal/keyguard/slide/TargetView$GuideArrowAnimThread;
.super Ljava/lang/Thread;
.source "TargetView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/keyguard/slide/TargetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GuideArrowAnimThread"
.end annotation


# instance fields
.field isRunning:Z

.field private runThread:Ljava/lang/Thread;

.field final synthetic this$0:Lcom/baidu/internal/keyguard/slide/TargetView;


# direct methods
.method constructor <init>(Lcom/baidu/internal/keyguard/slide/TargetView;)V
    .locals 1
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/TargetView$GuideArrowAnimThread;->this$0:Lcom/baidu/internal/keyguard/slide/TargetView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView$GuideArrowAnimThread;->isRunning:Z

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView$GuideArrowAnimThread;->runThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView$GuideArrowAnimThread;->runThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 100
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView$GuideArrowAnimThread;->isRunning:Z

    .line 101
    return-void
.end method

.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 105
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    iput-object v3, p0, Lcom/baidu/internal/keyguard/slide/TargetView$GuideArrowAnimThread;->runThread:Ljava/lang/Thread;

    .line 106
    :goto_0
    iget-boolean v3, p0, Lcom/baidu/internal/keyguard/slide/TargetView$GuideArrowAnimThread;->isRunning:Z

    if-eqz v3, :cond_1

    .line 108
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    :try_start_0
    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/TargetView$GuideArrowAnimThread;->this$0:Lcom/baidu/internal/keyguard/slide/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/slide/TargetView;->mGuideArrow:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/baidu/internal/keyguard/slide/TargetView;->access$000(Lcom/baidu/internal/keyguard/slide/TargetView;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 109
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 110
    .local v2, msg:Landroid/os/Message;
    const/4 v3, 0x0

    iput v3, v2, Landroid/os/Message;->what:I

    .line 111
    iput v1, v2, Landroid/os/Message;->arg1:I

    .line 112
    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/TargetView$GuideArrowAnimThread;->this$0:Lcom/baidu/internal/keyguard/slide/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/slide/TargetView;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/baidu/internal/keyguard/slide/TargetView;->access$100(Lcom/baidu/internal/keyguard/slide/TargetView;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 113
    const-wide/16 v3, 0x12c

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 108
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 115
    .end local v2           #msg:Landroid/os/Message;
    :cond_0
    const-wide/16 v3, 0x7d0

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 118
    iput-boolean v5, p0, Lcom/baidu/internal/keyguard/slide/TargetView$GuideArrowAnimThread;->isRunning:Z

    goto :goto_0

    .line 121
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #i:I
    :cond_1
    return-void
.end method
