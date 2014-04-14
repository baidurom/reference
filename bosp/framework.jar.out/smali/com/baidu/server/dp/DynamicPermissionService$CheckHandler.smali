.class Lcom/baidu/server/dp/DynamicPermissionService$CheckHandler;
.super Landroid/os/Handler;
.source "DynamicPermissionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/server/dp/DynamicPermissionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/server/dp/DynamicPermissionService;


# direct methods
.method public constructor <init>(Lcom/baidu/server/dp/DynamicPermissionService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 1359
    iput-object p1, p0, Lcom/baidu/server/dp/DynamicPermissionService$CheckHandler;->this$0:Lcom/baidu/server/dp/DynamicPermissionService;

    .line 1360
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1361
    return-void
.end method


# virtual methods
.method doHandleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 1368
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1382
    :goto_0
    return-void

    .line 1370
    :pswitch_0
    iget-object v1, p0, Lcom/baidu/server/dp/DynamicPermissionService$CheckHandler;->this$0:Lcom/baidu/server/dp/DynamicPermissionService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/baidu/server/dp/DynamicPermissionService$CheckRequest;

    #calls: Lcom/baidu/server/dp/DynamicPermissionService;->handleCheckRequest(Lcom/baidu/server/dp/DynamicPermissionService$CheckRequest;)V
    invoke-static {v1, v0}, Lcom/baidu/server/dp/DynamicPermissionService;->access$1100(Lcom/baidu/server/dp/DynamicPermissionService;Lcom/baidu/server/dp/DynamicPermissionService$CheckRequest;)V

    goto :goto_0

    .line 1373
    :pswitch_1
    iget-object v1, p0, Lcom/baidu/server/dp/DynamicPermissionService$CheckHandler;->this$0:Lcom/baidu/server/dp/DynamicPermissionService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/baidu/server/dp/DynamicPermissionService$UserDecision;

    #calls: Lcom/baidu/server/dp/DynamicPermissionService;->handleUdTimeout(Lcom/baidu/server/dp/DynamicPermissionService$UserDecision;)V
    invoke-static {v1, v0}, Lcom/baidu/server/dp/DynamicPermissionService;->access$1200(Lcom/baidu/server/dp/DynamicPermissionService;Lcom/baidu/server/dp/DynamicPermissionService$UserDecision;)V

    goto :goto_0

    .line 1376
    :pswitch_2
    iget-object v1, p0, Lcom/baidu/server/dp/DynamicPermissionService$CheckHandler;->this$0:Lcom/baidu/server/dp/DynamicPermissionService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/baidu/server/dp/DynamicPermissionService$UserDecision;

    #calls: Lcom/baidu/server/dp/DynamicPermissionService;->handleTdTimeout(Lcom/baidu/server/dp/DynamicPermissionService$UserDecision;)V
    invoke-static {v1, v0}, Lcom/baidu/server/dp/DynamicPermissionService;->access$1300(Lcom/baidu/server/dp/DynamicPermissionService;Lcom/baidu/server/dp/DynamicPermissionService$UserDecision;)V

    goto :goto_0

    .line 1379
    :pswitch_3
    iget-object v1, p0, Lcom/baidu/server/dp/DynamicPermissionService$CheckHandler;->this$0:Lcom/baidu/server/dp/DynamicPermissionService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/baidu/server/dp/DynamicPermissionService$LogEntry;

    #calls: Lcom/baidu/server/dp/DynamicPermissionService;->handleWriteLog(Lcom/baidu/server/dp/DynamicPermissionService$LogEntry;)V
    invoke-static {v1, v0}, Lcom/baidu/server/dp/DynamicPermissionService;->access$1400(Lcom/baidu/server/dp/DynamicPermissionService;Lcom/baidu/server/dp/DynamicPermissionService$LogEntry;)V

    goto :goto_0

    .line 1368
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 1364
    invoke-virtual {p0, p1}, Lcom/baidu/server/dp/DynamicPermissionService$CheckHandler;->doHandleMessage(Landroid/os/Message;)V

    .line 1365
    return-void
.end method
