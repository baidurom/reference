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
    .line 120
    iput-object p1, p0, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/WallpaperManagerService;

    .line 121
    iget v0, p2, Lcom/android/server/WallpaperManagerService$WallpaperData;->userId:I

    #calls: Lcom/android/server/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;
    invoke-static {v0}, Lcom/android/server/WallpaperManagerService;->access$000(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x608

    invoke-direct {p0, v0, v1}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 123
    iget v0, p2, Lcom/android/server/WallpaperManagerService$WallpaperData;->userId:I

    #calls: Lcom/android/server/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;
    invoke-static {v0}, Lcom/android/server/WallpaperManagerService;->access$000(I)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->mWallpaperDir:Ljava/io/File;

    .line 124
    iput-object p2, p0, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->mWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

    .line 125
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->mWallpaperDir:Ljava/io/File;

    const-string v2, "wallpaper"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->mWallpaperFile:Ljava/io/File;

    .line 126
    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 11
    .parameter "event"
    .parameter "path"

    .prologue
    const/16 v2, 0x8

    .line 130
    if-nez p2, :cond_0

    .line 154
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v10, v0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 135
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 136
    .local v8, origId:J
    new-instance v6, Landroid/app/backup/BackupManager;

    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v6, v0}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    .line 137
    .local v6, bm:Landroid/app/backup/BackupManager;
    invoke-virtual {v6}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 138
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 140
    new-instance v7, Ljava/io/File;

    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->mWallpaperDir:Ljava/io/File;

    invoke-direct {v7, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 141
    .local v7, changedFile:Ljava/io/File;
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->mWallpaperFile:Ljava/io/File;

    invoke-virtual {v0, v7}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 142
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v1, p0, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->mWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

    #calls: Lcom/android/server/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/WallpaperManagerService$WallpaperData;)V
    invoke-static {v0, v1}, Lcom/android/server/WallpaperManagerService;->access$100(Lcom/android/server/WallpaperManagerService;Lcom/android/server/WallpaperManagerService$WallpaperData;)V

    .line 143
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->mWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    if-ne p1, v2, :cond_1

    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->mWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

    iget-boolean v0, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    if-eqz v0, :cond_3

    .line 145
    :cond_1
    if-ne p1, v2, :cond_2

    .line 146
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->mWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    .line 148
    :cond_2
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/WallpaperManagerService;

    sget-object v1, Lcom/android/server/WallpaperManagerService;->IMAGE_WALLPAPER:Landroid/content/ComponentName;

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->mWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    .line 150
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v1, p0, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->mWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

    #calls: Lcom/android/server/WallpaperManagerService;->saveSettingsLocked(Lcom/android/server/WallpaperManagerService$WallpaperData;)V
    invoke-static {v0, v1}, Lcom/android/server/WallpaperManagerService;->access$200(Lcom/android/server/WallpaperManagerService;Lcom/android/server/WallpaperManagerService$WallpaperData;)V

    .line 153
    :cond_3
    monitor-exit v10

    goto :goto_0

    .end local v6           #bm:Landroid/app/backup/BackupManager;
    .end local v7           #changedFile:Ljava/io/File;
    .end local v8           #origId:J
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
