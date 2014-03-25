.class public Lyi/baidupay/FakeTradeServer;
.super Lyi/baidupay/AbstractTradeServer;
.source "FakeTradeServer.java"


# static fields
.field private static DEBUG:Z

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "FakeTradeServer"

    sput-object v0, Lyi/baidupay/FakeTradeServer;->TAG:Ljava/lang/String;

    .line 24
    const/4 v0, 0x1

    sput-boolean v0, Lyi/baidupay/FakeTradeServer;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lyi/baidupay/AbstractTradeServer;-><init>()V

    .line 31
    return-void
.end method


# virtual methods
.method public checkTradeResult(Lyi/baidupay/Trade;)Ljava/lang/String;
    .locals 2
    .parameter "trade"

    .prologue
    .line 57
    sget-boolean v0, Lyi/baidupay/FakeTradeServer;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lyi/baidupay/FakeTradeServer;->TAG:Ljava/lang/String;

    const-string v1, "create new trade"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_0
    iget-object v0, p1, Lyi/baidupay/Trade;->tradeNo:Ljava/lang/String;

    const-string v1, "trade0x23234234"

    if-ne v0, v1, :cond_1

    .line 59
    const-string v0, "OK"

    .line 61
    :goto_0
    return-object v0

    :cond_1
    const-string v0, "CANCEL"

    goto :goto_0
.end method

.method public createTradeNo(Lyi/baidupay/NewTradeInfo;Lyi/baidupay/NewTradeResult;)V
    .locals 2
    .parameter "newTrade"
    .parameter "result"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 41
    sget-boolean v0, Lyi/baidupay/FakeTradeServer;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lyi/baidupay/FakeTradeServer;->TAG:Ljava/lang/String;

    const-string v1, "create new trade"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :cond_0
    const-string v0, "trade0x23234234"

    iput-object v0, p2, Lyi/baidupay/NewTradeResult;->tradeNo:Ljava/lang/String;

    .line 43
    const-string v0, "20101231155500"

    iput-object v0, p2, Lyi/baidupay/NewTradeResult;->timeStamp:Ljava/lang/String;

    .line 44
    const-string v0, "www.baifubao.com"

    iput-object v0, p2, Lyi/baidupay/NewTradeResult;->payUrl:Ljava/lang/String;

    .line 45
    const-string v0, "asldkfja2343"

    iput-object v0, p2, Lyi/baidupay/NewTradeResult;->serverSign:Ljava/lang/String;

    .line 46
    return-void
.end method
