.class public abstract Lyi/baidupay/AbstractPayServer;
.super Ljava/lang/Object;
.source "AbstractPayServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyi/baidupay/AbstractPayServer$1;,
        Lyi/baidupay/AbstractPayServer$Server;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PayServer"


# instance fields
.field private mServer:Lyi/baidupay/AbstractPayServer$Server;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Lyi/baidupay/AbstractPayServer$Server;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lyi/baidupay/AbstractPayServer$Server;-><init>(Lyi/baidupay/AbstractPayServer;Lyi/baidupay/AbstractPayServer$1;)V

    iput-object v0, p0, Lyi/baidupay/AbstractPayServer;->mServer:Lyi/baidupay/AbstractPayServer$Server;

    return-void
.end method


# virtual methods
.method public abstract doPayment(Lyi/baidupay/PayInfo;Lyi/baidupay/PayResult;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public final getIBinder()Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 69
    const-string v0, "PayServer"

    const-string v1, "do payment: getbinder"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v0, p0, Lyi/baidupay/AbstractPayServer;->mServer:Lyi/baidupay/AbstractPayServer$Server;

    invoke-virtual {v0}, Lyi/baidupay/AbstractPayServer$Server;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method
