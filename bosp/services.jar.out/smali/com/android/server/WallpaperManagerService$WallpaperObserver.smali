.class Lcom/android/server/WallpaperManagerService$WallpaperObserver;
.super Landroid/os/FileObserver;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WallpaperManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WallpaperObserver"
.end annotation


# instance fields
.field final mWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

.field final mWallpaperDir:Ljava/io/File;

.field final mWallpaperFile:Ljava/io/File;

.field final synthetic this$0:Lcom/android/server/WallpaperManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/WallpaperManagerService;Lcom/android/server/WallpaperManagerService$WallpaperData;)V
    .locals 3
    .parameter
    .parameter "wallpaper"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/WallpaperManagerService;

    .line 110
    iget v0, p2, Lcom/android/server/WallpaperManagerService$WallpaperData;->userId:I

    #calls: Lcom/android/server/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;
    invoke-static {v0}, Lcom/android/server/WallpaperManagerService;->access$000(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x608

    invoke-direct {p0, v0, v1}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 112
    iget v0, p2, Lcom/android/server/WallpaperManagerService$WallpaperData;->userId:I

    #calls: Lcom/android/server/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;
    invoke-static {v0}, Lcom/android/server/WallpaperManagerService;->access$000(I)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->mWallpaperDir:Ljava/io/File;

    .line 113
    iput-object p2, p0, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->mWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

    .line 114
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->mWallpaperDir:Ljava/io/File;

    const-string v2, "wallpaper"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->mWallpaperFile:Ljava/io/File;

    .line 115
    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 10
    .parameter "event"
    .parameter "path"

    .prologue
    const/16 v7, 0x8

    .line 119
    if-nez p2, :cond_0

    .line 143
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v5, v4, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 124
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 125
    .local v2, origId:J
    new-instance v0, Landroid/app/backup/BackupManager;

    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v4, v4, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    .line 126
    .local v0, bm:Landroid/app/backup/BackupManager;
    invoke-virtual {v0}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 127
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 129
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->mWallpaperDir:Ljava/io/File;

    invoke-direct {v1, v4, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 130
    .local v1, changedFile:Ljava/io/File;
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->mWallpaperFile:Ljava/io/File;

    invoke-virtual {v4, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 131
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v6, p0, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->mWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

    #calls: Lcom/android/server/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/WallpaperManagerService$WallpaperData;)V
    invoke-static {v4, v6}, Lcom/android/server/WallpaperManagerService;->access$100(Lcom/android/server/WallpaperManagerService;Lcom/android/server/WallpaperManagerService$WallpaperData;)V

    .line 132
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->mWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

    iget-object v4, v4, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v4, :cond_1

    if-ne p1, v7, :cond_1

    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->mWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

    iget-boolean v4, v4, Lcom/android/server/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    if-eqz v4, :cond_3

    .line 134
    :cond_1
    if-ne p1, v7, :cond_2

    .line 135
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->mWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

    const/4 v6, 0x0

    iput-boolean v6, v4, Lcom/android/server/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    .line 137
    :cond_2
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v6, p0, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->mWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

    iget-object v6, v6, Lcom/android/server/WallpaperManagerService$WallpaperData;->imageWallpaperComponent:Landroid/content/ComponentName;

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->mWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

    invoke-virtual {v4, v6, v7, v8, v9}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/WallpaperManagerService$WallpaperData;)Z

    .line 139
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v6, p0, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->mWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

    #calls: Lcom/android/server/WallpaperManagerService;->saveSettingsLocked(Lcom/android/server/WallpaperManagerService$WallpaperData;)V
    invoke-static {v4, v6}, Lcom/android/server/WallpaperManagerService;->access$200(Lcom/android/server/WallpaperManagerService;Lcom/android/server/WallpaperManagerService$WallpaperData;)V

    .line 142
    :cond_3
    monitor-exit v5

    goto :goto_0

    .end local v0           #bm:Landroid/app/backup/BackupManager;
    .end local v1           #changedFile:Ljava/io/File;
    .end local v2           #origId:J
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method
