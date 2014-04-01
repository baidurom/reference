.class Lcom/baidu/service/QuickBootService$2;
.super Landroid/os/Handler;
.source "QuickBootService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/service/QuickBootService;->enableQuickBootService(IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/service/QuickBootService;


# direct methods
.method constructor <init>(Lcom/baidu/service/QuickBootService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 148
    iput-object p1, p0, Lcom/baidu/service/QuickBootService$2;->this$0:Lcom/baidu/service/QuickBootService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 151
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 161
    :goto_0
    return-void

    .line 153
    :pswitch_0
    iget-object v2, p0, Lcom/baidu/service/QuickBootService$2;->this$0:Lcom/baidu/service/QuickBootService;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v0, :cond_0

    :goto_1
    #calls: Lcom/baidu/service/QuickBootService;->handleStartQuickBoot(Z)V
    invoke-static {v2, v0}, Lcom/baidu/service/QuickBootService;->access$300(Lcom/baidu/service/QuickBootService;Z)V

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    .line 156
    :pswitch_1
    iget-object v2, p0, Lcom/baidu/service/QuickBootService$2;->this$0:Lcom/baidu/service/QuickBootService;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v0, :cond_1

    :goto_2
    #calls: Lcom/baidu/service/QuickBootService;->handleCharger(Z)V
    invoke-static {v2, v0}, Lcom/baidu/service/QuickBootService;->access$400(Lcom/baidu/service/QuickBootService;Z)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_2

    .line 159
    :pswitch_2
    iget-object v2, p0, Lcom/baidu/service/QuickBootService$2;->this$0:Lcom/baidu/service/QuickBootService;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v0, :cond_2

    :goto_3
    #calls: Lcom/baidu/service/QuickBootService;->handleShowNotice(Z)V
    invoke-static {v2, v0}, Lcom/baidu/service/QuickBootService;->access$500(Lcom/baidu/service/QuickBootService;Z)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_3

    .line 151
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
