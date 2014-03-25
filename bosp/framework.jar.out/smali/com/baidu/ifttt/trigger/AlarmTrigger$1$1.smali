.class Lcom/baidu/ifttt/trigger/AlarmTrigger$1$1;
.super Ljava/lang/Object;
.source "AlarmTrigger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/ifttt/trigger/AlarmTrigger$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/baidu/ifttt/trigger/AlarmTrigger$1;


# direct methods
.method constructor <init>(Lcom/baidu/ifttt/trigger/AlarmTrigger$1;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/baidu/ifttt/trigger/AlarmTrigger$1$1;->this$1:Lcom/baidu/ifttt/trigger/AlarmTrigger$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/baidu/ifttt/trigger/AlarmTrigger$1$1;->this$1:Lcom/baidu/ifttt/trigger/AlarmTrigger$1;

    iget-object v0, v0, Lcom/baidu/ifttt/trigger/AlarmTrigger$1;->this$0:Lcom/baidu/ifttt/trigger/AlarmTrigger;

    invoke-virtual {v0}, Lcom/baidu/ifttt/trigger/AlarmTrigger;->onTrigger()V

    .line 98
    return-void
.end method
