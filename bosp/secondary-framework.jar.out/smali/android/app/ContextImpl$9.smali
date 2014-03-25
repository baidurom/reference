.class final Landroid/app/ContextImpl$9;
.super Landroid/app/ContextImpl$ServiceFetcher;
.source "ContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 361
    invoke-direct {p0}, Landroid/app/ContextImpl$ServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 8
    .parameter "ctx"

    .prologue
    .line 363
    const/4 v3, 0x0

    .line 365
    .local v3, mobileMgr:Lcom/mediatek/common/mom/IMobileManager;
    :try_start_0
    const-string v5, "mobile"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 366
    .local v1, b:Landroid/os/IBinder;
    invoke-static {v1}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/mom/IMobileManagerService;

    move-result-object v4

    .line 367
    .local v4, service:Lcom/mediatek/common/mom/IMobileManagerService;
    const-class v5, Lcom/mediatek/common/mom/IMobileManager;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    aput-object v4, v6, v7

    invoke-static {v5, v6}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/mediatek/common/mom/IMobileManager;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    .end local v1           #b:Landroid/os/IBinder;
    .end local v4           #service:Lcom/mediatek/common/mom/IMobileManagerService;
    :goto_0
    return-object v3

    .line 368
    :catch_0
    move-exception v2

    .line 369
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
