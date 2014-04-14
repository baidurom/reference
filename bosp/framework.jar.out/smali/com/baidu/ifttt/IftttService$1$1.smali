.class Lcom/baidu/ifttt/IftttService$1$1;
.super Landroid/os/Handler;
.source "IftttService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/ifttt/IftttService$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/baidu/ifttt/IftttService$1;


# direct methods
.method constructor <init>(Lcom/baidu/ifttt/IftttService$1;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/baidu/ifttt/IftttService$1$1;->this$1:Lcom/baidu/ifttt/IftttService$1;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 38
    return-void
.end method
