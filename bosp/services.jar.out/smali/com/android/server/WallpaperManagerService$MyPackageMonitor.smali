.class Lcom/android/server/WallpaperManagerService$MyPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WallpaperManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyPackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WallpaperManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/WallpaperManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 267
    iput-object p1, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method doPackagesChangedLocked(ZLcom/android/server/WallpaperManagerService$WallpaperData;)Z
    .locals 10
    .parameter "doit"
    .parameter "wallpaper"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 340
    const/4 v1, 0x0

    .line 341
    .local v1, changed:Z
    iget-object v3, p2, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v3, :cond_1

    .line 342
    iget-object v3, p2, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->isPackageDisappearing(Ljava/lang/String;)I

    move-result v0

    .line 344
    .local v0, change:I
    if-eq v0, v8, :cond_0

    if-ne v0, v7, :cond_1

    .line 346
    :cond_0
    const/4 v1, 0x1

    .line 347
    if-eqz p1, :cond_1

    .line 348
    const-string v3, "WallpaperService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wallpaper uninstalled, removing: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget v4, p2, Lcom/android/server/WallpaperManagerService$WallpaperData;->userId:I

    invoke-virtual {v3, v6, v4}, Lcom/android/server/WallpaperManagerService;->clearWallpaperLocked(ZI)V

    .line 354
    .end local v0           #change:I
    :cond_1
    iget-object v3, p2, Lcom/android/server/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v3, :cond_3

    .line 355
    iget-object v3, p2, Lcom/android/server/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->isPackageDisappearing(Ljava/lang/String;)I

    move-result v0

    .line 357
    .restart local v0       #change:I
    if-eq v0, v8, :cond_2

    if-ne v0, v7, :cond_3

    .line 359
    :cond_2
    iput-object v9, p2, Lcom/android/server/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    .line 362
    .end local v0           #change:I
    :cond_3
    iget-object v3, p2, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v3, :cond_4

    iget-object v3, p2, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->isPackageModified(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 365
    :try_start_0
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v3, v3, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p2, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    :cond_4
    :goto_0
    iget-object v3, p2, Lcom/android/server/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v3, :cond_5

    iget-object v3, p2, Lcom/android/server/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->isPackageModified(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 376
    :try_start_1
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v3, v3, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p2, Lcom/android/server/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 382
    :cond_5
    :goto_1
    return v1

    .line 367
    :catch_0
    move-exception v2

    .line 368
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "WallpaperService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wallpaper component gone, removing: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget v4, p2, Lcom/android/server/WallpaperManagerService$WallpaperData;->userId:I

    invoke-virtual {v3, v6, v4}, Lcom/android/server/WallpaperManagerService;->clearWallpaperLocked(ZI)V

    goto :goto_0

    .line 378
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v2

    .line 379
    .restart local v2       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    iput-object v9, p2, Lcom/android/server/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    goto :goto_1
.end method

.method public onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .locals 6
    .parameter "intent"
    .parameter "packages"
    .parameter "uid"
    .parameter "doit"

    .prologue
    .line 318
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v5, v4, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 319
    const/4 v0, 0x0

    .line 320
    .local v0, changed:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v4, v4, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 321
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v4, v4, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/WallpaperManagerService$WallpaperData;

    .line 322
    .local v3, wallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;
    invoke-virtual {p0, p4, v3}, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->doPackagesChangedLocked(ZLcom/android/server/WallpaperManagerService$WallpaperData;)Z

    move-result v2

    .line 323
    .local v2, res:Z
    or-int/2addr v0, v2

    .line 320
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 325
    .end local v2           #res:Z
    .end local v3           #wallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;
    :cond_0
    monitor-exit v5

    return v0

    .line 326
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .locals 4
    .parameter "packageName"

    .prologue
    .line 291
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v3, v2, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 292
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v2, v2, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 293
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v2, v2, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WallpaperManagerService$WallpaperData;

    .line 294
    .local v1, wallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;
    iget-object v2, v1, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 292
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 298
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->doPackagesChangedLocked(ZLcom/android/server/WallpaperManagerService$WallpaperData;)Z

    goto :goto_1

    .line 300
    .end local v1           #wallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 301
    return-void
.end method

.method public onPackageUpdateFinished(Ljava/lang/String;I)V
    .locals 7
    .parameter "packageName"
    .parameter "uid"

    .prologue
    .line 270
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v4, v3, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 271
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v3, v3, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 272
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v3, v3, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/WallpaperManagerService$WallpaperData;

    .line 273
    .local v2, wallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;
    iget-object v3, v2, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 275
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperUpdating:Z

    .line 276
    iget-object v0, v2, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 277
    .local v0, comp:Landroid/content/ComponentName;
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    invoke-virtual {v3, v2}, Lcom/android/server/WallpaperManagerService;->clearWallpaperComponentLocked(Lcom/android/server/WallpaperManagerService$WallpaperData;)V

    .line 279
    iget v3, v2, Lcom/android/server/WallpaperManagerService$WallpaperData;->userId:I

    iget-object v5, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget v5, v5, Lcom/android/server/WallpaperManagerService;->mCurrentUserId:I

    if-ne v3, v5, :cond_0

    iget-object v3, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v0, v5, v6, v2}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/WallpaperManagerService$WallpaperData;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 281
    const-string v3, "WallpaperService"

    const-string v5, "Wallpaper no longer available; reverting to default"

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    const/4 v5, 0x0

    iget v6, v2, Lcom/android/server/WallpaperManagerService$WallpaperData;->userId:I

    invoke-virtual {v3, v5, v6}, Lcom/android/server/WallpaperManagerService;->clearWallpaperLocked(ZI)V

    .line 271
    .end local v0           #comp:Landroid/content/ComponentName;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 286
    .end local v2           #wallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;
    :cond_1
    monitor-exit v4

    .line 287
    return-void

    .line 286
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public onPackageUpdateStarted(Ljava/lang/String;I)V
    .locals 4
    .parameter "packageName"
    .parameter "uid"

    .prologue
    .line 305
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v3, v2, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 306
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v2, v2, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 307
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v2, v2, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WallpaperManagerService$WallpaperData;

    .line 308
    .local v1, wallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;
    iget-object v2, v1, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 310
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperUpdating:Z

    .line 306
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 313
    .end local v1           #wallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;
    :cond_1
    monitor-exit v3

    .line 314
    return-void

    .line 313
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public onSomePackagesChanged()V
    .locals 4

    .prologue
    .line 331
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v3, v2, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 332
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v2, v2, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 333
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v2, v2, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WallpaperManagerService$WallpaperData;

    .line 334
    .local v1, wallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;
    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->doPackagesChangedLocked(ZLcom/android/server/WallpaperManagerService$WallpaperData;)Z

    .line 332
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 336
    .end local v1           #wallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;
    :cond_0
    monitor-exit v3

    .line 337
    return-void

    .line 336
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
