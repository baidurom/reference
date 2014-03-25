.class Lcom/baidu/ifttt/IftttService$1;
.super Ljava/lang/Thread;
.source "IftttService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/ifttt/IftttService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/ifttt/IftttService;


# direct methods
.method constructor <init>(Lcom/baidu/ifttt/IftttService;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/baidu/ifttt/IftttService$1;->this$0:Lcom/baidu/ifttt/IftttService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 34
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 35
    iget-object v0, p0, Lcom/baidu/ifttt/IftttService$1;->this$0:Lcom/baidu/ifttt/IftttService;

    new-instance v1, Lcom/baidu/ifttt/IftttService$1$1;

    invoke-direct {v1, p0}, Lcom/baidu/ifttt/IftttService$1$1;-><init>(Lcom/baidu/ifttt/IftttService$1;)V

    #setter for: Lcom/baidu/ifttt/IftttService;->mHandler:Landroid/os/Handler;
    invoke-static {v0, v1}, Lcom/baidu/ifttt/IftttService;->access$002(Lcom/baidu/ifttt/IftttService;Landroid/os/Handler;)Landroid/os/Handler;

    .line 40
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 41
    return-void
.end method
