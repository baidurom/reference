.class Lcom/android/server/pm/PackageManagerService$1;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->freeStorageAndNotify(JLandroid/content/pm/IPackageDataObserver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$freeStorageSize:J

.field final synthetic val$observer:Landroid/content/pm/IPackageDataObserver;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;JLandroid/content/pm/IPackageDataObserver;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1781
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$1;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-wide p2, p0, Lcom/android/server/pm/PackageManagerService$1;->val$freeStorageSize:J

    iput-object p4, p0, Lcom/android/server/pm/PackageManagerService$1;->val$observer:Landroid/content/pm/IPackageDataObserver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1783
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$1;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v2, p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1784
    const/4 v1, -0x1

    .line 1785
    .local v1, retCode:I
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$1;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    iget-wide v3, p0, Lcom/android/server/pm/PackageManagerService$1;->val$freeStorageSize:J

    invoke-virtual {v2, v3, v4}, Lcom/android/server/pm/Installer;->freeCache(J)I

    move-result v1

    .line 1786
    if-gez v1, :cond_0

    .line 1787
    const-string v2, "PackageManager"

    const-string v3, "Couldn\'t clear application caches"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1789
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$1;->val$observer:Landroid/content/pm/IPackageDataObserver;

    if-eqz v2, :cond_1

    .line 1791
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$1;->val$observer:Landroid/content/pm/IPackageDataObserver;

    const/4 v4, 0x0

    if-ltz v1, :cond_2

    const/4 v2, 0x1

    :goto_0
    invoke-interface {v3, v4, v2}, Landroid/content/pm/IPackageDataObserver;->onRemoveCompleted(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1796
    :cond_1
    :goto_1
    return-void

    .line 1791
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 1792
    :catch_0
    move-exception v0

    .line 1793
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "PackageManager"

    const-string v3, "RemoveException when invoking call back"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
