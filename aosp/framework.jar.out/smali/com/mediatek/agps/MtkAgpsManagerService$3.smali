.class Lcom/mediatek/agps/MtkAgpsManagerService$3;
.super Ljava/lang/Thread;
.source "MtkAgpsManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/agps/MtkAgpsManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/agps/MtkAgpsManagerService;


# direct methods
.method constructor <init>(Lcom/mediatek/agps/MtkAgpsManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 334
    iput-object p1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$3;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 336
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 337
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 338
    .local v0, looper:Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 339
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$3;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v2, Lcom/mediatek/agps/MtkAgpsManagerService$3$1;

    invoke-direct {v2, p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService$3$1;-><init>(Lcom/mediatek/agps/MtkAgpsManagerService$3;Landroid/os/Looper;)V

    #setter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v1, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$102(Lcom/mediatek/agps/MtkAgpsManagerService;Landroid/os/Handler;)Landroid/os/Handler;

    .line 346
    :cond_0
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 347
    return-void
.end method
