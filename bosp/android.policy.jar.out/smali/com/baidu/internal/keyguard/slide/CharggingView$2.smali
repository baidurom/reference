.class Lcom/baidu/internal/keyguard/slide/CharggingView$2;
.super Ljava/lang/Object;
.source "CharggingView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/keyguard/slide/CharggingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/internal/keyguard/slide/CharggingView;


# direct methods
.method constructor <init>(Lcom/baidu/internal/keyguard/slide/CharggingView;)V
    .locals 0
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/CharggingView$2;->this$0:Lcom/baidu/internal/keyguard/slide/CharggingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 118
    :goto_0
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/CharggingView$2;->this$0:Lcom/baidu/internal/keyguard/slide/CharggingView;

    #getter for: Lcom/baidu/internal/keyguard/slide/CharggingView;->mIsChargging:Z
    invoke-static {v2}, Lcom/baidu/internal/keyguard/slide/CharggingView;->access$900(Lcom/baidu/internal/keyguard/slide/CharggingView;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 119
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 120
    .local v1, msg1:Landroid/os/Message;
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/CharggingView$2;->this$0:Lcom/baidu/internal/keyguard/slide/CharggingView;

    #getter for: Lcom/baidu/internal/keyguard/slide/CharggingView;->lastCircle:I
    invoke-static {v2}, Lcom/baidu/internal/keyguard/slide/CharggingView;->access$800(Lcom/baidu/internal/keyguard/slide/CharggingView;)I

    move-result v2

    if-ne v2, v5, :cond_0

    .line 121
    iput v4, v1, Landroid/os/Message;->what:I

    .line 122
    iput v6, v1, Landroid/os/Message;->arg1:I

    .line 123
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/CharggingView$2;->this$0:Lcom/baidu/internal/keyguard/slide/CharggingView;

    #setter for: Lcom/baidu/internal/keyguard/slide/CharggingView;->lastCircle:I
    invoke-static {v2, v6}, Lcom/baidu/internal/keyguard/slide/CharggingView;->access$802(Lcom/baidu/internal/keyguard/slide/CharggingView;I)I

    .line 143
    :goto_1
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/CharggingView$2;->this$0:Lcom/baidu/internal/keyguard/slide/CharggingView;

    #getter for: Lcom/baidu/internal/keyguard/slide/CharggingView;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/baidu/internal/keyguard/slide/CharggingView;->access$1000(Lcom/baidu/internal/keyguard/slide/CharggingView;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 145
    const-wide/16 v2, 0x190

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 146
    :catch_0
    move-exception v0

    .line 148
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 124
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_0
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/CharggingView$2;->this$0:Lcom/baidu/internal/keyguard/slide/CharggingView;

    #getter for: Lcom/baidu/internal/keyguard/slide/CharggingView;->lastCircle:I
    invoke-static {v2}, Lcom/baidu/internal/keyguard/slide/CharggingView;->access$800(Lcom/baidu/internal/keyguard/slide/CharggingView;)I

    move-result v2

    if-ne v2, v6, :cond_1

    .line 125
    iput v4, v1, Landroid/os/Message;->what:I

    .line 126
    iput v7, v1, Landroid/os/Message;->arg1:I

    .line 127
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/CharggingView$2;->this$0:Lcom/baidu/internal/keyguard/slide/CharggingView;

    #setter for: Lcom/baidu/internal/keyguard/slide/CharggingView;->lastCircle:I
    invoke-static {v2, v7}, Lcom/baidu/internal/keyguard/slide/CharggingView;->access$802(Lcom/baidu/internal/keyguard/slide/CharggingView;I)I

    goto :goto_1

    .line 128
    :cond_1
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/CharggingView$2;->this$0:Lcom/baidu/internal/keyguard/slide/CharggingView;

    #getter for: Lcom/baidu/internal/keyguard/slide/CharggingView;->lastCircle:I
    invoke-static {v2}, Lcom/baidu/internal/keyguard/slide/CharggingView;->access$800(Lcom/baidu/internal/keyguard/slide/CharggingView;)I

    move-result v2

    if-ne v2, v7, :cond_2

    .line 129
    iput v4, v1, Landroid/os/Message;->what:I

    .line 130
    iput v8, v1, Landroid/os/Message;->arg1:I

    .line 131
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/CharggingView$2;->this$0:Lcom/baidu/internal/keyguard/slide/CharggingView;

    #setter for: Lcom/baidu/internal/keyguard/slide/CharggingView;->lastCircle:I
    invoke-static {v2, v8}, Lcom/baidu/internal/keyguard/slide/CharggingView;->access$802(Lcom/baidu/internal/keyguard/slide/CharggingView;I)I

    goto :goto_1

    .line 134
    :cond_2
    const-wide/16 v2, 0x7d0

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 139
    :goto_2
    iput v4, v1, Landroid/os/Message;->what:I

    .line 140
    iput v5, v1, Landroid/os/Message;->arg1:I

    .line 141
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/CharggingView$2;->this$0:Lcom/baidu/internal/keyguard/slide/CharggingView;

    #setter for: Lcom/baidu/internal/keyguard/slide/CharggingView;->lastCircle:I
    invoke-static {v2, v5}, Lcom/baidu/internal/keyguard/slide/CharggingView;->access$802(Lcom/baidu/internal/keyguard/slide/CharggingView;I)I

    goto :goto_1

    .line 135
    :catch_1
    move-exception v0

    .line 137
    .restart local v0       #e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 151
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v1           #msg1:Landroid/os/Message;
    :cond_3
    return-void
.end method
