.class Lyi/baidupay/PayManager$InitializerServiceConnection;
.super Ljava/lang/Object;
.source "PayManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyi/baidupay/PayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InitializerServiceConnection"
.end annotation


# instance fields
.field private volatile mContext:Landroid/content/Context;

.field private volatile mInitialized:Z

.field private volatile server:I

.field final synthetic this$0:Lyi/baidupay/PayManager;


# direct methods
.method public constructor <init>(Lyi/baidupay/PayManager;Landroid/content/Context;I)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "serverType"

    .prologue
    .line 467
    iput-object p1, p0, Lyi/baidupay/PayManager$InitializerServiceConnection;->this$0:Lyi/baidupay/PayManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 468
    iput-object p2, p0, Lyi/baidupay/PayManager$InitializerServiceConnection;->mContext:Landroid/content/Context;

    .line 469
    const/4 v0, 0x0

    iput-boolean v0, p0, Lyi/baidupay/PayManager$InitializerServiceConnection;->mInitialized:Z

    .line 470
    iput p3, p0, Lyi/baidupay/PayManager$InitializerServiceConnection;->server:I

    .line 471
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .parameter "name"
    .parameter "service"

    .prologue
    .line 475
    :try_start_0
    iget-boolean v1, p0, Lyi/baidupay/PayManager$InitializerServiceConnection;->mInitialized:Z

    if-nez v1, :cond_0

    .line 476
    const/4 v1, 0x1

    iput-boolean v1, p0, Lyi/baidupay/PayManager$InitializerServiceConnection;->mInitialized:Z

    .line 477
    iget v1, p0, Lyi/baidupay/PayManager$InitializerServiceConnection;->server:I

    const/16 v2, 0x1345

    if-ne v1, v2, :cond_1

    .line 478
    invoke-static {}, Lyi/baidupay/PayManager;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trade server connected:["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    invoke-static {p2}, Lyi/baidupay/ITradeServer$Stub;->asInterface(Landroid/os/IBinder;)Lyi/baidupay/ITradeServer;

    move-result-object v1

    invoke-static {v1}, Lyi/baidupay/PayManager;->access$102(Lyi/baidupay/ITradeServer;)Lyi/baidupay/ITradeServer;

    .line 496
    :cond_0
    :goto_0
    return-void

    .line 480
    :cond_1
    iget v1, p0, Lyi/baidupay/PayManager$InitializerServiceConnection;->server:I

    const/16 v2, 0x1346

    if-ne v1, v2, :cond_0

    .line 481
    invoke-static {}, Lyi/baidupay/PayManager;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pay server connected:["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    invoke-static {p2}, Lyi/baidupay/IPayServer$Stub;->asInterface(Landroid/os/IBinder;)Lyi/baidupay/IPayServer;

    move-result-object v1

    invoke-static {v1}, Lyi/baidupay/PayManager;->access$202(Lyi/baidupay/IPayServer;)Lyi/baidupay/IPayServer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 492
    :catch_0
    move-exception v0

    .line 493
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    invoke-static {}, Lyi/baidupay/PayManager;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "error while initializing: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 494
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    const/4 v1, 0x0

    .line 499
    iget-object v0, p0, Lyi/baidupay/PayManager$InitializerServiceConnection;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Lyi/baidupay/PayManager$InitializerServiceConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 501
    iput-object v1, p0, Lyi/baidupay/PayManager$InitializerServiceConnection;->mContext:Landroid/content/Context;

    .line 502
    invoke-static {v1}, Lyi/baidupay/PayManager;->access$102(Lyi/baidupay/ITradeServer;)Lyi/baidupay/ITradeServer;

    .line 504
    :cond_0
    return-void
.end method
