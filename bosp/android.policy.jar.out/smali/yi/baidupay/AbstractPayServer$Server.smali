.class Lyi/baidupay/AbstractPayServer$Server;
.super Lyi/baidupay/IPayServer$Stub;
.source "AbstractPayServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyi/baidupay/AbstractPayServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Server"
.end annotation


# instance fields
.field final synthetic this$0:Lyi/baidupay/AbstractPayServer;


# direct methods
.method private constructor <init>(Lyi/baidupay/AbstractPayServer;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lyi/baidupay/AbstractPayServer$Server;->this$0:Lyi/baidupay/AbstractPayServer;

    invoke-direct {p0}, Lyi/baidupay/IPayServer$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lyi/baidupay/AbstractPayServer;Lyi/baidupay/AbstractPayServer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lyi/baidupay/AbstractPayServer$Server;-><init>(Lyi/baidupay/AbstractPayServer;)V

    return-void
.end method


# virtual methods
.method public doPayment(Lyi/baidupay/PayInfo;Lyi/baidupay/PayResult;)Ljava/lang/String;
    .locals 5
    .parameter "info"
    .parameter "result"

    .prologue
    const/4 v4, 0x2

    .line 42
    const-string v1, ""

    .line 43
    .local v1, ret:Ljava/lang/String;
    const-string v2, "PayServer"

    const-string v3, "do payment: begin."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :try_start_0
    iget-object v2, p0, Lyi/baidupay/AbstractPayServer$Server;->this$0:Lyi/baidupay/AbstractPayServer;

    invoke-virtual {v2, p1, p2}, Lyi/baidupay/AbstractPayServer;->doPayment(Lyi/baidupay/PayInfo;Lyi/baidupay/PayResult;)Ljava/lang/String;

    move-result-object v1

    .line 46
    const-string v2, "PayServer"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 47
    const-string v2, "PayServer"

    const-string v3, "do payment: result"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 58
    :cond_0
    :goto_0
    return-object v1

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "PayServer"

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 51
    const-string v2, "PayServer"

    const-string v3, "dopayment"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 53
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 54
    .local v0, e:Ljava/lang/UnsupportedOperationException;
    const-string v2, "PayServer"

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 55
    const-string v2, "PayServer"

    const-string v3, "dopayment"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
