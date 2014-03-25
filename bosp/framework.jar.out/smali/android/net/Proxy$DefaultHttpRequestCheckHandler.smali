.class Landroid/net/Proxy$DefaultHttpRequestCheckHandler;
.super Ljava/lang/Object;
.source "Proxy.java"

# interfaces
.implements Lorg/apache/http/client/HttpRequestCheckHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/Proxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultHttpRequestCheckHandler"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 394
    return-void
.end method

.method private checkMoMSSubPermission(Ljava/lang/String;)Z
    .locals 8
    .parameter "subPermission"

    .prologue
    const/4 v4, 0x0

    .line 406
    :try_start_0
    const-string/jumbo v5, "mobile"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 407
    .local v0, binder:Landroid/os/IBinder;
    invoke-static {v0}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/mom/IMobileManagerService;

    move-result-object v2

    .line 408
    .local v2, mMobileManager:Lcom/mediatek/common/mom/IMobileManagerService;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-interface {v2, p1, v5}, Lcom/mediatek/common/mom/IMobileManagerService;->checkPermission(Ljava/lang/String;I)I

    move-result v3

    .line 409
    .local v3, result:I
    if-eqz v3, :cond_0

    .line 410
    const-string v5, "Proxy"

    const-string v6, "[Error]Subpermission is not granted!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    .end local v0           #binder:Landroid/os/IBinder;
    .end local v2           #mMobileManager:Lcom/mediatek/common/mom/IMobileManagerService;
    .end local v3           #result:I
    :goto_0
    return v4

    .line 413
    :catch_0
    move-exception v1

    .line 414
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "Proxy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[Error]Failed to chcek permission: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 418
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #binder:Landroid/os/IBinder;
    .restart local v2       #mMobileManager:Lcom/mediatek/common/mom/IMobileManagerService;
    .restart local v3       #result:I
    :cond_0
    const/4 v4, 0x1

    goto :goto_0
.end method


# virtual methods
.method public checkRequest(Lorg/apache/http/HttpRequest;)Z
    .locals 2
    .parameter "request"

    .prologue
    .line 422
    const-string v0, "Proxy"

    const-string v1, "checkCtaPermission"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    const-string/jumbo v0, "sub-permission.SEND_MMS"

    invoke-direct {p0, v0}, Landroid/net/Proxy$DefaultHttpRequestCheckHandler;->checkMoMSSubPermission(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
