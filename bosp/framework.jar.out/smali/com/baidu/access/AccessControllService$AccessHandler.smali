.class Lcom/baidu/access/AccessControllService$AccessHandler;
.super Landroid/os/Handler;
.source "AccessControllService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/access/AccessControllService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccessHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/access/AccessControllService;


# direct methods
.method public constructor <init>(Lcom/baidu/access/AccessControllService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 196
    iput-object p1, p0, Lcom/baidu/access/AccessControllService$AccessHandler;->this$0:Lcom/baidu/access/AccessControllService;

    .line 197
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 198
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 203
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 208
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 210
    :goto_0
    return-void

    .line 205
    :pswitch_0
    iget-object v0, p0, Lcom/baidu/access/AccessControllService$AccessHandler;->this$0:Lcom/baidu/access/AccessControllService;

    #calls: Lcom/baidu/access/AccessControllService;->writeBlockDb()V
    invoke-static {v0}, Lcom/baidu/access/AccessControllService;->access$000(Lcom/baidu/access/AccessControllService;)V

    goto :goto_0

    .line 203
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method
