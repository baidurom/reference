.class public interface abstract Lyi/baidupay/ITradeServer;
.super Ljava/lang/Object;
.source "ITradeServer.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyi/baidupay/ITradeServer$Stub;
    }
.end annotation


# virtual methods
.method public abstract checkTradeResult(Lyi/baidupay/Trade;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract createTradeNo(Lyi/baidupay/NewTradeInfo;Lyi/baidupay/NewTradeResult;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
