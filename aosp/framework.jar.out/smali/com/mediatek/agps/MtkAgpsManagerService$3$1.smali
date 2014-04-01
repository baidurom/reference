.class Lcom/mediatek/agps/MtkAgpsManagerService$3$1;
.super Landroid/os/Handler;
.source "MtkAgpsManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/agps/MtkAgpsManagerService$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/agps/MtkAgpsManagerService$3;


# direct methods
.method constructor <init>(Lcom/mediatek/agps/MtkAgpsManagerService$3;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 339
    iput-object p1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$3$1;->this$1:Lcom/mediatek/agps/MtkAgpsManagerService$3;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 342
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$3$1;->this$1:Lcom/mediatek/agps/MtkAgpsManagerService$3;

    iget-object v0, v0, Lcom/mediatek/agps/MtkAgpsManagerService$3;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    invoke-virtual {v0, p1}, Lcom/mediatek/agps/MtkAgpsManagerService;->gpsMessageHandler(Landroid/os/Message;)V

    .line 343
    return-void
.end method
