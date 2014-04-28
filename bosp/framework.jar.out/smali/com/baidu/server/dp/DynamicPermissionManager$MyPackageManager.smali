.class Lcom/baidu/server/dp/DynamicPermissionManager$MyPackageManager;
.super Ljava/lang/Object;
.source "DynamicPermissionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/server/dp/DynamicPermissionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyPackageManager"
.end annotation


# instance fields
.field mIpm:Landroid/content/pm/IPackageManager;

.field final synthetic this$0:Lcom/baidu/server/dp/DynamicPermissionManager;


# direct methods
.method public constructor <init>(Lcom/baidu/server/dp/DynamicPermissionManager;)V
    .locals 1
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/baidu/server/dp/DynamicPermissionManager$MyPackageManager;->this$0:Lcom/baidu/server/dp/DynamicPermissionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/server/dp/DynamicPermissionManager$MyPackageManager;->mIpm:Landroid/content/pm/IPackageManager;

    .line 141
    return-void
.end method


# virtual methods
.method public checkPermission(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "permName"
    .parameter "pkgName"

    .prologue
    .line 134
    :try_start_0
    iget-object v1, p0, Lcom/baidu/server/dp/DynamicPermissionManager$MyPackageManager;->mIpm:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getPackagesForUid(I)[Ljava/lang/String;
    .locals 3
    .parameter "uid"

    .prologue
    .line 127
    :try_start_0
    iget-object v1, p0, Lcom/baidu/server/dp/DynamicPermissionManager$MyPackageManager;->mIpm:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Packag manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
