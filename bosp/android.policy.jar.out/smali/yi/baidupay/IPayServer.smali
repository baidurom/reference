.class public interface abstract Lyi/baidupay/IPayServer;
.super Ljava/lang/Object;
.source "IPayServer.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyi/baidupay/IPayServer$Stub;
    }
.end annotation


# virtual methods
.method public abstract doPayment(Lyi/baidupay/PayInfo;Lyi/baidupay/PayResult;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
