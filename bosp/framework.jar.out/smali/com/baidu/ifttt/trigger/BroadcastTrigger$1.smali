.class Lcom/baidu/ifttt/trigger/BroadcastTrigger$1;
.super Landroid/content/BroadcastReceiver;
.source "BroadcastTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/ifttt/trigger/BroadcastTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/ifttt/trigger/BroadcastTrigger;


# direct methods
.method constructor <init>(Lcom/baidu/ifttt/trigger/BroadcastTrigger;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/baidu/ifttt/trigger/BroadcastTrigger$1;->this$0:Lcom/baidu/ifttt/trigger/BroadcastTrigger;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/baidu/ifttt/trigger/BroadcastTrigger$1;->this$0:Lcom/baidu/ifttt/trigger/BroadcastTrigger;

    #setter for: Lcom/baidu/ifttt/trigger/BroadcastTrigger;->mReceiveIntent:Landroid/content/Intent;
    invoke-static {v0, p2}, Lcom/baidu/ifttt/trigger/BroadcastTrigger;->access$002(Lcom/baidu/ifttt/trigger/BroadcastTrigger;Landroid/content/Intent;)Landroid/content/Intent;

    .line 87
    iget-object v0, p0, Lcom/baidu/ifttt/trigger/BroadcastTrigger$1;->this$0:Lcom/baidu/ifttt/trigger/BroadcastTrigger;

    iget-object v0, v0, Lcom/baidu/ifttt/trigger/BroadcastTrigger;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/ifttt/trigger/BroadcastTrigger$1$1;

    invoke-direct {v1, p0}, Lcom/baidu/ifttt/trigger/BroadcastTrigger$1$1;-><init>(Lcom/baidu/ifttt/trigger/BroadcastTrigger$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 93
    return-void
.end method
