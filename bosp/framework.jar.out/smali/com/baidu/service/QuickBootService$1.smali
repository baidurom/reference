.class Lcom/baidu/service/QuickBootService$1;
.super Landroid/content/BroadcastReceiver;
.source "QuickBootService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/service/QuickBootService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/service/QuickBootService;


# direct methods
.method constructor <init>(Lcom/baidu/service/QuickBootService;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/baidu/service/QuickBootService$1;->this$0:Lcom/baidu/service/QuickBootService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    .line 98
    const-string v1, "android.intent.action.ACTION_QUICKBOOT_POWEROFF_ALARM"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 99
    iget-object v1, p0, Lcom/baidu/service/QuickBootService$1;->this$0:Lcom/baidu/service/QuickBootService;

    #getter for: Lcom/baidu/service/QuickBootService;->mWorkState:I
    invoke-static {v1}, Lcom/baidu/service/QuickBootService;->access$000(Lcom/baidu/service/QuickBootService;)I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/baidu/service/QuickBootService$1;->this$0:Lcom/baidu/service/QuickBootService;

    #getter for: Lcom/baidu/service/QuickBootService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/baidu/service/QuickBootService;->access$100(Lcom/baidu/service/QuickBootService;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/baidu/service/QuickBootService$1;->this$0:Lcom/baidu/service/QuickBootService;

    #getter for: Lcom/baidu/service/QuickBootService;->mLongPressWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/baidu/service/QuickBootService;->access$200(Lcom/baidu/service/QuickBootService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 101
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 102
    .local v0, msg:Landroid/os/Message;
    iput v3, v0, Landroid/os/Message;->what:I

    .line 103
    iput v3, v0, Landroid/os/Message;->arg1:I

    .line 105
    iget-object v1, p0, Lcom/baidu/service/QuickBootService$1;->this$0:Lcom/baidu/service/QuickBootService;

    #getter for: Lcom/baidu/service/QuickBootService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/baidu/service/QuickBootService;->access$100(Lcom/baidu/service/QuickBootService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 106
    iget-object v1, p0, Lcom/baidu/service/QuickBootService$1;->this$0:Lcom/baidu/service/QuickBootService;

    #getter for: Lcom/baidu/service/QuickBootService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/baidu/service/QuickBootService;->access$100(Lcom/baidu/service/QuickBootService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 108
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    const-string v1, "QuickBootService"

    const-string/jumbo v2, "poweroff alarm alert!!!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_1
    return-void
.end method
