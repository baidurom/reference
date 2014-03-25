.class Lyi/support/v1/menu/AnsycTaskExecutor;
.super Ljava/lang/Object;
.source "AnsycTaskExecutor.java"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mTask:Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lyi/support/v1/menu/AnsycTaskExecutor;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 15
    iget-object v0, p0, Lyi/support/v1/menu/AnsycTaskExecutor;->mTask:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 16
    iget-object v0, p0, Lyi/support/v1/menu/AnsycTaskExecutor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lyi/support/v1/menu/AnsycTaskExecutor;->mTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lyi/support/v1/menu/AnsycTaskExecutor;->mTask:Ljava/lang/Runnable;

    .line 19
    :cond_0
    return-void
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "task"

    .prologue
    .line 10
    invoke-virtual {p0}, Lyi/support/v1/menu/AnsycTaskExecutor;->cancel()V

    .line 11
    iget-object v0, p0, Lyi/support/v1/menu/AnsycTaskExecutor;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lyi/support/v1/menu/AnsycTaskExecutor;->mTask:Ljava/lang/Runnable;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 12
    return-void
.end method
