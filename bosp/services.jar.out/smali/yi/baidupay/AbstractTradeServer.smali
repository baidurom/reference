.class public abstract Lyi/baidupay/AbstractTradeServer;
.super Ljava/lang/Object;
.source "AbstractTradeServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyi/baidupay/AbstractTradeServer$1;,
        Lyi/baidupay/AbstractTradeServer$Server;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TradeServer"


# instance fields
.field private mServer:Lyi/baidupay/AbstractTradeServer$Server;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Lyi/baidupay/AbstractTradeServer$Server;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lyi/baidupay/AbstractTradeServer$Server;-><init>(Lyi/baidupay/AbstractTradeServer;Lyi/baidupay/AbstractTradeServer$1;)V

    iput-object v0, p0, Lyi/baidupay/AbstractTradeServer;->mServer:Lyi/baidupay/AbstractTradeServer$Server;

    .line 38
    return-void
.end method


# virtual methods
.method public abstract checkTradeResult(Lyi/baidupay/Trade;)Ljava/lang/String;
.end method

.method public abstract createTradeNo(Lyi/baidupay/NewTradeInfo;Lyi/baidupay/NewTradeResult;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public final getIBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lyi/baidupay/AbstractTradeServer;->mServer:Lyi/baidupay/AbstractTradeServer$Server;

    invoke-virtual {v0}, Lyi/baidupay/AbstractTradeServer$Server;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method
