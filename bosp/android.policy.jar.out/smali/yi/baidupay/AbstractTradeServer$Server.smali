.class Lyi/baidupay/AbstractTradeServer$Server;
.super Lyi/baidupay/ITradeServer$Stub;
.source "AbstractTradeServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyi/baidupay/AbstractTradeServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Server"
.end annotation


# instance fields
.field final synthetic this$0:Lyi/baidupay/AbstractTradeServer;


# direct methods
.method private constructor <init>(Lyi/baidupay/AbstractTradeServer;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lyi/baidupay/AbstractTradeServer$Server;->this$0:Lyi/baidupay/AbstractTradeServer;

    invoke-direct {p0}, Lyi/baidupay/ITradeServer$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lyi/baidupay/AbstractTradeServer;Lyi/baidupay/AbstractTradeServer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lyi/baidupay/AbstractTradeServer$Server;-><init>(Lyi/baidupay/AbstractTradeServer;)V

    return-void
.end method


# virtual methods
.method public checkTradeResult(Lyi/baidupay/Trade;)Ljava/lang/String;
    .locals 5
    .parameter "trade"

    .prologue
    const/4 v4, 0x2

    .line 77
    const-string v1, ""

    .line 80
    .local v1, ret:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lyi/baidupay/AbstractTradeServer$Server;->this$0:Lyi/baidupay/AbstractTradeServer;

    invoke-virtual {v2, p1}, Lyi/baidupay/AbstractTradeServer;->checkTradeResult(Lyi/baidupay/Trade;)Ljava/lang/String;

    move-result-object v1

    .line 81
    const-string v2, "TradeServer"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    const-string v2, "TradeServer"

    const-string v3, "createTradeNo: result"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :cond_0
    :goto_0
    return-object v1

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, e:Ljava/lang/UnsupportedOperationException;
    const-string v2, "TradeServer"

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 86
    const-string v2, "TradeServer"

    const-string v3, "createTradeNo"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public createTradeNo(Lyi/baidupay/NewTradeInfo;Lyi/baidupay/NewTradeResult;)V
    .locals 4
    .parameter "newTrade"
    .parameter "result"

    .prologue
    const/4 v3, 0x2

    .line 61
    :try_start_0
    iget-object v1, p0, Lyi/baidupay/AbstractTradeServer$Server;->this$0:Lyi/baidupay/AbstractTradeServer;

    invoke-virtual {v1, p1, p2}, Lyi/baidupay/AbstractTradeServer;->createTradeNo(Lyi/baidupay/NewTradeInfo;Lyi/baidupay/NewTradeResult;)V

    .line 62
    const-string v1, "TradeServer"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    const-string v1, "TradeServer"

    const-string v2, "createTradeNo: result"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "TradeServer"

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    const-string v1, "TradeServer"

    const-string v2, "createTradeNo"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 69
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 70
    .local v0, e:Ljava/lang/UnsupportedOperationException;
    const-string v1, "TradeServer"

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    const-string v1, "TradeServer"

    const-string v2, "createTradeNo"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
