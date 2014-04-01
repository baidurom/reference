.class public interface abstract Lcom/mediatek/epo/IMtkEpoStatusListener;
.super Ljava/lang/Object;
.source "IMtkEpoStatusListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/epo/IMtkEpoStatusListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onStatusChanged(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
