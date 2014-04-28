.class public Lcom/baidu/server/dp/SyncTransaction;
.super Ljava/lang/Object;
.source "SyncTransaction.java"

# interfaces
.implements Lcom/baidu/server/dp/Transaction;


# static fields
.field private static final TAG:Ljava/lang/String; = "DynamicPermissionService"


# instance fields
.field private mTransport:Lcom/baidu/server/dp/ISyncTransport;


# direct methods
.method public constructor <init>(Lcom/baidu/server/dp/ISyncTransport;)V
    .locals 0
    .parameter "it"

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/baidu/server/dp/SyncTransaction;->mTransport:Lcom/baidu/server/dp/ISyncTransport;

    .line 13
    return-void
.end method


# virtual methods
.method public trans(ILandroid/content/Context;)V
    .locals 3
    .parameter "grant"
    .parameter "context"

    .prologue
    .line 16
    :try_start_0
    iget-object v1, p0, Lcom/baidu/server/dp/SyncTransaction;->mTransport:Lcom/baidu/server/dp/ISyncTransport;

    invoke-interface {v1, p1}, Lcom/baidu/server/dp/ISyncTransport;->localTrans(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    :goto_0
    return-void

    .line 17
    :catch_0
    move-exception v0

    .line 18
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "DynamicPermissionService"

    const-string v2, "Client may be dead."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
