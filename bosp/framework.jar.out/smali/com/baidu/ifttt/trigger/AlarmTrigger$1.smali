.class Lcom/baidu/ifttt/trigger/AlarmTrigger$1;
.super Landroid/content/BroadcastReceiver;
.source "AlarmTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/ifttt/trigger/AlarmTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/ifttt/trigger/AlarmTrigger;


# direct methods
.method constructor <init>(Lcom/baidu/ifttt/trigger/AlarmTrigger;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/baidu/ifttt/trigger/AlarmTrigger$1;->this$0:Lcom/baidu/ifttt/trigger/AlarmTrigger;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/baidu/ifttt/trigger/AlarmTrigger$1;->this$0:Lcom/baidu/ifttt/trigger/AlarmTrigger;

    iget-object v0, v0, Lcom/baidu/ifttt/trigger/AlarmTrigger;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/ifttt/trigger/AlarmTrigger$1$1;

    invoke-direct {v1, p0}, Lcom/baidu/ifttt/trigger/AlarmTrigger$1$1;-><init>(Lcom/baidu/ifttt/trigger/AlarmTrigger$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 100
    return-void
.end method
