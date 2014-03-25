.class public Lcom/baidu/themeanimation/util/FileUtil;
.super Ljava/lang/Object;
.source "FileUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/themeanimation/util/FileUtil$1;,
        Lcom/baidu/themeanimation/util/FileUtil$TaskComparator;,
        Lcom/baidu/themeanimation/util/FileUtil$LoadBitmapTask;,
        Lcom/baidu/themeanimation/util/FileUtil$LoadWallpaperTask;
    }
.end annotation


# static fields
.field public static DESIGH_SCREEN_WIDTH:I = 0x0

.field public static DESIGN_SCREEN_HEIGHT:I = 0x0

.field public static Image_X_SCALE:F = 0.0f

.field public static Image_Y_SCALE:F = 0.0f

.field public static final PRIORITY_HIGH:I = 0x2

.field public static final PRIORITY_LOW:I = 0x0

.field public static final PRIORITY_NORMAL:I = 0x1

.field public static REAL_SCREEN_HEIGHT:I = 0x0

.field public static REAL_SCREEN_WIDTH:I = 0x0

.field private static final TAG:Ljava/lang/String; = "FileUtil"

.field public static WALLPAPER_SCALE:F

.field public static X_SCALE:F

.field public static Y_SCALE:F

.field static final mExecuteServiceSync:Ljava/lang/Object;

.field static mInstance:Lcom/baidu/themeanimation/util/FileUtil;

.field static final mInstanceSync:Ljava/lang/Object;


# instance fields
.field private isTactileFeedbackEnabled:Z

.field mBitmaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public mDensityDpi:I

.field private mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private mExecutorService2:Ljava/util/concurrent/ExecutorService;

.field private mIsThemeChange:Z

.field private mIsWallpaperChanged:Z

.field private mLoadImmediate:Z

.field private mLoadTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/themeanimation/util/FileUtil$LoadBitmapTask;",
            ">;"
        }
    .end annotation
.end field

.field private mLockScreenFilePath:Ljava/lang/String;

.field private mLockWallpaperBitmap:Landroid/graphics/Bitmap;

.field private mStartTime:J

.field private mWallpaperFilePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/high16 v0, 0x3f80

    .line 43
    sput v0, Lcom/baidu/themeanimation/util/FileUtil;->X_SCALE:F

    .line 44
    sput v0, Lcom/baidu/themeanimation/util/FileUtil;->Y_SCALE:F

    .line 45
    sput v0, Lcom/baidu/themeanimation/util/FileUtil;->Image_X_SCALE:F

    .line 46
    sput v0, Lcom/baidu/themeanimation/util/FileUtil;->Image_Y_SCALE:F

    .line 47
    sput v0, Lcom/baidu/themeanimation/util/FileUtil;->WALLPAPER_SCALE:F

    .line 48
    sput v1, Lcom/baidu/themeanimation/util/FileUtil;->REAL_SCREEN_WIDTH:I

    .line 49
    sput v1, Lcom/baidu/themeanimation/util/FileUtil;->REAL_SCREEN_HEIGHT:I

    .line 50
    const/16 v0, 0x1e0

    sput v0, Lcom/baidu/themeanimation/util/FileUtil;->DESIGH_SCREEN_WIDTH:I

    .line 51
    const/16 v0, 0x320

    sput v0, Lcom/baidu/themeanimation/util/FileUtil;->DESIGN_SCREEN_HEIGHT:I

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/baidu/themeanimation/util/FileUtil;->mInstanceSync:Ljava/lang/Object;

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/baidu/themeanimation/util/FileUtil;->mExecuteServiceSync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-boolean v1, p0, Lcom/baidu/themeanimation/util/FileUtil;->mIsWallpaperChanged:Z

    .line 52
    const/16 v0, 0xf0

    iput v0, p0, Lcom/baidu/themeanimation/util/FileUtil;->mDensityDpi:I

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/themeanimation/util/FileUtil;->isTactileFeedbackEnabled:Z

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/themeanimation/util/FileUtil;->mBitmaps:Ljava/util/HashMap;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/themeanimation/util/FileUtil;->mLoadTasks:Ljava/util/List;

    .line 67
    iput-boolean v1, p0, Lcom/baidu/themeanimation/util/FileUtil;->mLoadImmediate:Z

    .line 440
    return-void
.end method

.method static synthetic access$002(Lcom/baidu/themeanimation/util/FileUtil;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/baidu/themeanimation/util/FileUtil;->mLockWallpaperBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$100(Lcom/baidu/themeanimation/util/FileUtil;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/baidu/themeanimation/util/FileUtil;->loadNextLockWallPaper()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/baidu/themeanimation/util/FileUtil;
    .locals 2

    .prologue
    .line 70
    sget-object v1, Lcom/baidu/themeanimation/util/FileUtil;->mInstanceSync:Ljava/lang/Object;

    monitor-enter v1

    .line 71
    :try_start_0
    sget-object v0, Lcom/baidu/themeanimation/util/FileUtil;->mInstance:Lcom/baidu/themeanimation/util/FileUtil;

    if-eqz v0, :cond_0

    .line 72
    sget-object v0, Lcom/baidu/themeanimation/util/FileUtil;->mInstance:Lcom/baidu/themeanimation/util/FileUtil;

    monitor-exit v1

    .line 77
    :goto_0
    return-object v0

    .line 75
    :cond_0
    new-instance v0, Lcom/baidu/themeanimation/util/FileUtil;

    invoke-direct {v0}, Lcom/baidu/themeanimation/util/FileUtil;-><init>()V

    sput-object v0, Lcom/baidu/themeanimation/util/FileUtil;->mInstance:Lcom/baidu/themeanimation/util/FileUtil;

    .line 76
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    sget-object v0, Lcom/baidu/themeanimation/util/FileUtil;->mInstance:Lcom/baidu/themeanimation/util/FileUtil;

    goto :goto_0

    .line 76
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static isPic(Ljava/lang/String;)Z
    .locals 1
    .parameter "file"

    .prologue
    .line 284
    const-string v0, "jpeg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "jpg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "png"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PNG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "JPEG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "JPG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "bmp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "BMP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private load(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 3
    .parameter "path"
    .parameter "target"
    .parameter "isMask"

    .prologue
    .line 374
    :try_start_0
    iget-object v1, p0, Lcom/baidu/themeanimation/util/FileUtil;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_0

    .line 375
    iget-object v1, p0, Lcom/baidu/themeanimation/util/FileUtil;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/baidu/themeanimation/util/FileUtil$LoadBitmapTask;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/baidu/themeanimation/util/FileUtil$LoadBitmapTask;-><init>(Lcom/baidu/themeanimation/util/FileUtil;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    :cond_0
    :goto_0
    return-void

    .line 377
    :catch_0
    move-exception v0

    .line 378
    .local v0, e:Ljava/util/concurrent/RejectedExecutionException;
    invoke-virtual {v0}, Ljava/util/concurrent/RejectedExecutionException;->printStackTrace()V

    goto :goto_0
.end method

.method private loadNextLockWallPaper()Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 291
    invoke-virtual {p0}, Lcom/baidu/themeanimation/util/FileUtil;->getWallpaperChanged()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 293
    :try_start_0
    iget-object v2, p0, Lcom/baidu/themeanimation/util/FileUtil;->mLockWallpaperBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 294
    iget-object v2, p0, Lcom/baidu/themeanimation/util/FileUtil;->mLockWallpaperBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 295
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/baidu/themeanimation/util/FileUtil;->mLockWallpaperBitmap:Landroid/graphics/Bitmap;

    .line 298
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/baidu/themeanimation/util/FileUtil;->getLockWallpaperFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 299
    .local v1, wallpaperFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 300
    invoke-virtual {p0}, Lcom/baidu/themeanimation/util/FileUtil;->getLockWallpaperFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/themeanimation/util/FileUtil;->mLockWallpaperBitmap:Landroid/graphics/Bitmap;

    .line 301
    iget-object v2, p0, Lcom/baidu/themeanimation/util/FileUtil;->mLockWallpaperBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 302
    iget-object v2, p0, Lcom/baidu/themeanimation/util/FileUtil;->mLockWallpaperBitmap:Landroid/graphics/Bitmap;

    sget v3, Lcom/baidu/themeanimation/util/FileUtil;->REAL_SCREEN_WIDTH:I

    int-to-float v3, v3

    sget v4, Lcom/baidu/themeanimation/util/FileUtil;->WALLPAPER_SCALE:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sget v4, Lcom/baidu/themeanimation/util/FileUtil;->REAL_SCREEN_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lcom/baidu/themeanimation/util/FileUtil;->WALLPAPER_SCALE:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/themeanimation/util/FileUtil;->mLockWallpaperBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 312
    :cond_1
    invoke-virtual {p0, v6}, Lcom/baidu/themeanimation/util/FileUtil;->setWallpaperChanged(Z)V

    .line 315
    .end local v1           #wallpaperFile:Ljava/io/File;
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/baidu/themeanimation/util/FileUtil;->mLockWallpaperBitmap:Landroid/graphics/Bitmap;

    return-object v2

    .line 307
    :catch_0
    move-exception v0

    .line 308
    .local v0, e:Ljava/lang/OutOfMemoryError;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 312
    invoke-virtual {p0, v6}, Lcom/baidu/themeanimation/util/FileUtil;->setWallpaperChanged(Z)V

    goto :goto_0

    .line 309
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v0

    .line 310
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 312
    invoke-virtual {p0, v6}, Lcom/baidu/themeanimation/util/FileUtil;->setWallpaperChanged(Z)V

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    invoke-virtual {p0, v6}, Lcom/baidu/themeanimation/util/FileUtil;->setWallpaperChanged(Z)V

    throw v2
.end method


# virtual methods
.method public cacheBitmap(Ljava/lang/String;I)V
    .locals 6
    .parameter "name"
    .parameter "priority"

    .prologue
    .line 516
    new-instance v0, Lcom/baidu/themeanimation/util/FileUtil$LoadBitmapTask;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/baidu/themeanimation/util/FileUtil$LoadBitmapTask;-><init>(Lcom/baidu/themeanimation/util/FileUtil;Ljava/lang/String;Ljava/lang/Object;ZI)V

    .line 517
    .local v0, task:Lcom/baidu/themeanimation/util/FileUtil$LoadBitmapTask;
    iget-boolean v1, p0, Lcom/baidu/themeanimation/util/FileUtil;->mLoadImmediate:Z

    if-eqz v1, :cond_1

    .line 518
    iget-object v1, p0, Lcom/baidu/themeanimation/util/FileUtil;->mExecutorService2:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_0

    .line 519
    iget-object v1, p0, Lcom/baidu/themeanimation/util/FileUtil;->mExecutorService2:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 524
    :cond_0
    :goto_0
    return-void

    .line 522
    :cond_1
    iget-object v1, p0, Lcom/baidu/themeanimation/util/FileUtil;->mLoadTasks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public checkManifest()Z
    .locals 3

    .prologue
    .line 323
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/themeanimation/util/FileUtil;->getLockScreenFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "manifest.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 324
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 325
    const/4 v1, 0x1

    .line 327
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public clearBitmap()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 347
    iget-object v3, p0, Lcom/baidu/themeanimation/util/FileUtil;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v3, :cond_0

    .line 348
    iget-object v3, p0, Lcom/baidu/themeanimation/util/FileUtil;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 349
    iput-object v5, p0, Lcom/baidu/themeanimation/util/FileUtil;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 351
    :cond_0
    iget-object v3, p0, Lcom/baidu/themeanimation/util/FileUtil;->mExecutorService2:Ljava/util/concurrent/ExecutorService;

    if-eqz v3, :cond_1

    .line 352
    iget-object v3, p0, Lcom/baidu/themeanimation/util/FileUtil;->mExecutorService2:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 353
    iput-object v5, p0, Lcom/baidu/themeanimation/util/FileUtil;->mExecutorService2:Ljava/util/concurrent/ExecutorService;

    .line 355
    :cond_1
    iget-object v3, p0, Lcom/baidu/themeanimation/util/FileUtil;->mBitmaps:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 357
    .local v1, keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 358
    .local v2, keySetIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 359
    iget-object v3, p0, Lcom/baidu/themeanimation/util/FileUtil;->mBitmaps:Ljava/util/HashMap;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 360
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_2

    .line 361
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 362
    const/4 v0, 0x0

    goto :goto_0

    .line 365
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_3
    iget-object v3, p0, Lcom/baidu/themeanimation/util/FileUtil;->mBitmaps:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 366
    iget-object v3, p0, Lcom/baidu/themeanimation/util/FileUtil;->mLockWallpaperBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/baidu/themeanimation/util/FileUtil;->mLockWallpaperBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_4

    .line 367
    iget-object v3, p0, Lcom/baidu/themeanimation/util/FileUtil;->mLockWallpaperBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 368
    iput-object v5, p0, Lcom/baidu/themeanimation/util/FileUtil;->mLockWallpaperBitmap:Landroid/graphics/Bitmap;

    .line 370
    :cond_4
    return-void
.end method

.method public excutuLoadTasks()V
    .locals 4

    .prologue
    .line 527
    iget-object v1, p0, Lcom/baidu/themeanimation/util/FileUtil;->mExecutorService2:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_0

    .line 528
    iget-object v1, p0, Lcom/baidu/themeanimation/util/FileUtil;->mLoadTasks:Ljava/util/List;

    new-instance v2, Lcom/baidu/themeanimation/util/FileUtil$TaskComparator;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/baidu/themeanimation/util/FileUtil$TaskComparator;-><init>(Lcom/baidu/themeanimation/util/FileUtil;Lcom/baidu/themeanimation/util/FileUtil$1;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 529
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/baidu/themeanimation/util/FileUtil;->mLoadTasks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 530
    iget-object v2, p0, Lcom/baidu/themeanimation/util/FileUtil;->mExecutorService2:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/baidu/themeanimation/util/FileUtil;->mLoadTasks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v2, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 529
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 533
    .end local v0           #i:I
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/baidu/themeanimation/util/FileUtil;->mLoadImmediate:Z

    .line 534
    return-void
.end method

.method public getBitmapOptions(Ljava/lang/String;)Landroid/graphics/BitmapFactory$Options;
    .locals 5
    .parameter "element"

    .prologue
    const/4 v3, 0x1

    .line 499
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 500
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 501
    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 502
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/themeanimation/util/FileUtil;->getLockScreenFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 503
    .local v2, path:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 505
    :try_start_0
    invoke-static {v2, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 506
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v3, v3

    sget v4, Lcom/baidu/themeanimation/util/FileUtil;->Image_X_SCALE:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 507
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v3, v3

    sget v4, Lcom/baidu/themeanimation/util/FileUtil;->Image_Y_SCALE:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 512
    :cond_0
    :goto_0
    return-object v1

    .line 508
    :catch_0
    move-exception v0

    .line 509
    .local v0, e:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0
.end method

.method public getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "element"

    .prologue
    .line 559
    iget-object v0, p0, Lcom/baidu/themeanimation/util/FileUtil;->mBitmaps:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getCurrentLockWallpaper()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/baidu/themeanimation/util/FileUtil;->mLockWallpaperBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getElementBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "element"

    .prologue
    const/high16 v8, 0x3f80

    .line 453
    const/4 v1, 0x0

    .line 454
    .local v1, bitmap:Landroid/graphics/Bitmap;
    iget-object v7, p0, Lcom/baidu/themeanimation/util/FileUtil;->mBitmaps:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    check-cast v1, Landroid/graphics/Bitmap;

    .line 455
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    if-nez v1, :cond_2

    if-eqz p1, :cond_2

    .line 456
    const/4 v5, 0x0

    .line 458
    .local v5, is:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/baidu/themeanimation/util/FileUtil;->getElementToInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 459
    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 460
    iget-object v7, p0, Lcom/baidu/themeanimation/util/FileUtil;->mBitmaps:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_1

    if-eqz v1, :cond_1

    sget v7, Lcom/baidu/themeanimation/util/FileUtil;->Image_X_SCALE:F

    cmpl-float v7, v7, v8

    if-nez v7, :cond_0

    sget v7, Lcom/baidu/themeanimation/util/FileUtil;->Image_Y_SCALE:F

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_1

    .line 463
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    sget v8, Lcom/baidu/themeanimation/util/FileUtil;->Image_X_SCALE:F

    mul-float/2addr v7, v8

    float-to-int v6, v7

    .line 464
    .local v6, width:I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    sget v8, Lcom/baidu/themeanimation/util/FileUtil;->Image_Y_SCALE:F

    mul-float/2addr v7, v8

    float-to-int v4, v7

    .line 465
    .local v4, height:I
    if-lez v6, :cond_1

    if-lez v4, :cond_1

    .line 466
    const/4 v7, 0x1

    invoke-static {v1, v6, v4, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 467
    .local v2, bmp:Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 468
    const/4 v1, 0x0

    .line 469
    move-object v1, v2

    .line 473
    .end local v2           #bmp:Landroid/graphics/Bitmap;
    .end local v4           #height:I
    .end local v6           #width:I
    :cond_1
    iget-object v7, p0, Lcom/baidu/themeanimation/util/FileUtil;->mBitmaps:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 474
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 475
    const/4 v1, 0x0

    .line 476
    iget-object v7, p0, Lcom/baidu/themeanimation/util/FileUtil;->mBitmaps:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    :goto_0
    if-eqz v5, :cond_2

    .line 485
    :try_start_1
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 492
    .end local v5           #is:Ljava/io/InputStream;
    :cond_2
    :goto_1
    return-object v1

    .line 478
    .restart local v5       #is:Ljava/io/InputStream;
    :cond_3
    :try_start_2
    iget-object v7, p0, Lcom/baidu/themeanimation/util/FileUtil;->mBitmaps:Ljava/util/HashMap;

    invoke-virtual {v7, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 480
    :catch_0
    move-exception v3

    .line 481
    .local v3, e:Ljava/lang/OutOfMemoryError;
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 483
    if-eqz v5, :cond_2

    .line 485
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 486
    :catch_1
    move-exception v3

    .line 487
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 486
    .end local v3           #e:Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 487
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 483
    .end local v3           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    if-eqz v5, :cond_4

    .line 485
    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 488
    :cond_4
    :goto_2
    throw v7

    .line 486
    :catch_3
    move-exception v3

    .line 487
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public getElementToInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 7
    .parameter "element"

    .prologue
    .line 331
    const/4 v2, 0x0

    .line 333
    .local v2, inputStream:Ljava/io/InputStream;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/themeanimation/util/FileUtil;->getLockScreenFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 334
    .local v4, path:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 336
    .local v1, file:Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 338
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #inputStream:Ljava/io/InputStream;
    .local v3, inputStream:Ljava/io/InputStream;
    move-object v2, v3

    .line 343
    .end local v3           #inputStream:Ljava/io/InputStream;
    .restart local v2       #inputStream:Ljava/io/InputStream;
    :cond_0
    :goto_0
    return-object v2

    .line 340
    :catch_0
    move-exception v0

    .line 341
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public getLockScreenFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/baidu/themeanimation/util/FileUtil;->mLockScreenFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getLockWallpaperFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/baidu/themeanimation/util/FileUtil;->mWallpaperFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getThemeChange()Z
    .locals 1

    .prologue
    .line 568
    iget-boolean v0, p0, Lcom/baidu/themeanimation/util/FileUtil;->mIsThemeChange:Z

    return v0
.end method

.method public getWallpaperChanged()Z
    .locals 1

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/baidu/themeanimation/util/FileUtil;->mIsWallpaperChanged:Z

    return v0
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "rootPath"
    .parameter "lockDir"
    .parameter "wallpaperDir"

    .prologue
    .line 162
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 163
    .local v1, dm:Landroid/util/DisplayMetrics;
    const-string v3, "window"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 165
    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v3

    invoke-virtual {v3, v1, p2, p3, p4}, Lcom/baidu/themeanimation/util/FileUtil;->setDensity(Landroid/util/DisplayMetrics;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v3

    const-string v4, "config.xml"

    invoke-virtual {v3, v4}, Lcom/baidu/themeanimation/util/FileUtil;->getElementToInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 168
    .local v0, configStream:Ljava/io/InputStream;
    if-eqz v0, :cond_0

    .line 170
    :try_start_0
    invoke-static {v0}, Lcom/baidu/themeanimation/util/ConfigParser;->parse(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 171
    :catch_0
    move-exception v2

    .line 172
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public isTactileFeedbackEnabled()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/baidu/themeanimation/util/FileUtil;->isTactileFeedbackEnabled:Z

    return v0
.end method

.method public loadWallpaper(Landroid/os/Handler;)V
    .locals 4
    .parameter "handler"

    .prologue
    .line 269
    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/themeanimation/util/FileUtil;->getWallpaperChanged()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 271
    :try_start_0
    iget-object v1, p0, Lcom/baidu/themeanimation/util/FileUtil;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_0

    .line 272
    iget-object v1, p0, Lcom/baidu/themeanimation/util/FileUtil;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/baidu/themeanimation/util/FileUtil$LoadWallpaperTask;

    iget-object v3, p0, Lcom/baidu/themeanimation/util/FileUtil;->mWallpaperFilePath:Ljava/lang/String;

    invoke-direct {v2, p0, v3, p1}, Lcom/baidu/themeanimation/util/FileUtil$LoadWallpaperTask;-><init>(Lcom/baidu/themeanimation/util/FileUtil;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 274
    :catch_0
    move-exception v0

    .line 275
    .local v0, e:Ljava/util/concurrent/RejectedExecutionException;
    invoke-virtual {v0}, Ljava/util/concurrent/RejectedExecutionException;->printStackTrace()V

    goto :goto_0

    .line 278
    .end local v0           #e:Ljava/util/concurrent/RejectedExecutionException;
    :cond_1
    const/16 v1, 0x208

    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public openFile(Landroid/os/Handler;)Ljava/io/InputStream;
    .locals 8
    .parameter "handler"

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x2

    .line 207
    iget-object v5, p0, Lcom/baidu/themeanimation/util/FileUtil;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    if-nez v5, :cond_0

    .line 208
    invoke-static {v6}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    iput-object v5, p0, Lcom/baidu/themeanimation/util/FileUtil;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 210
    :cond_0
    iget-object v5, p0, Lcom/baidu/themeanimation/util/FileUtil;->mExecutorService2:Ljava/util/concurrent/ExecutorService;

    if-nez v5, :cond_1

    .line 211
    invoke-static {v6}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    iput-object v5, p0, Lcom/baidu/themeanimation/util/FileUtil;->mExecutorService2:Ljava/util/concurrent/ExecutorService;

    .line 214
    :cond_1
    new-instance v1, Ljava/io/File;

    iget-object v5, p0, Lcom/baidu/themeanimation/util/FileUtil;->mLockScreenFilePath:Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 215
    .local v1, lockscreenThemeFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_4

    .line 216
    :cond_2
    const-string v5, "FileUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cannot found "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/baidu/themeanimation/util/FileUtil;->mLockScreenFilePath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baidu/themeanimation/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v4

    .line 240
    :cond_3
    :goto_0
    return-object v2

    .line 220
    :cond_4
    const/4 v2, 0x0

    .line 222
    .local v2, manifestStream:Ljava/io/InputStream;
    :try_start_0
    const-string v5, "manifest.xml"

    invoke-virtual {p0, v5}, Lcom/baidu/themeanimation/util/FileUtil;->getElementToInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 223
    if-nez v2, :cond_5

    .line 224
    const-string v5, "FileUtil"

    const-string v6, "cannot found manifestStream.xml!!"

    invoke-static {v5, v6}, Lcom/baidu/themeanimation/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v4

    .line 225
    goto :goto_0

    .line 228
    :cond_5
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/baidu/themeanimation/util/FileUtil;->mWallpaperFilePath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 229
    .local v3, wallpaperFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_6

    .line 230
    iget-object v4, p0, Lcom/baidu/themeanimation/util/FileUtil;->mWallpaperFilePath:Ljava/lang/String;

    const-string v5, ".jpg"

    const-string v6, ".png"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/baidu/themeanimation/util/FileUtil;->mWallpaperFilePath:Ljava/lang/String;

    .line 231
    new-instance v3, Ljava/io/File;

    .end local v3           #wallpaperFile:Ljava/io/File;
    iget-object v4, p0, Lcom/baidu/themeanimation/util/FileUtil;->mWallpaperFilePath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 233
    .restart local v3       #wallpaperFile:Ljava/io/File;
    :cond_6
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 234
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/baidu/themeanimation/util/FileUtil;->setWallpaperChanged(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 237
    .end local v3           #wallpaperFile:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 238
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public printRuntime(Ljava/lang/String;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 563
    const-string v0, "FileUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "time_cast: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/baidu/themeanimation/util/FileUtil;->mStartTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/themeanimation/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/themeanimation/util/FileUtil;->mStartTime:J

    .line 565
    return-void
.end method

.method public setBitmap(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 1
    .parameter "name"
    .parameter "view"

    .prologue
    .line 537
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/baidu/themeanimation/util/FileUtil;->setBitmap(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 538
    return-void
.end method

.method public setBitmap(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 2
    .parameter "name"
    .parameter "target"
    .parameter "isMask"

    .prologue
    .line 541
    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/baidu/themeanimation/util/FileUtil;->mBitmaps:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 542
    instance-of v1, p2, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;

    if-eqz v1, :cond_2

    move-object v0, p2

    .line 543
    check-cast v0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;

    .line 544
    .local v0, elementView:Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;
    if-eqz p3, :cond_1

    .line 545
    iget-object v1, p0, Lcom/baidu/themeanimation/util/FileUtil;->mBitmaps:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->setMask(Landroid/graphics/Bitmap;)V

    .line 546
    invoke-virtual {v0}, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->requestLayout()V

    .line 556
    .end local v0           #elementView:Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;
    .end local p2
    :cond_0
    :goto_0
    return-void

    .line 548
    .restart local v0       #elementView:Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;
    .restart local p2
    :cond_1
    iget-object v1, p0, Lcom/baidu/themeanimation/util/FileUtil;->mBitmaps:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->setImage(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 550
    .end local v0           #elementView:Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;
    :cond_2
    instance-of v1, p2, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 551
    check-cast p2, Landroid/widget/ImageView;

    .end local p2
    iget-object v1, p0, Lcom/baidu/themeanimation/util/FileUtil;->mBitmaps:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 554
    .restart local p2
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/themeanimation/util/FileUtil;->load(Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_0
.end method

.method public setDensity(Landroid/util/DisplayMetrics;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "dm"
    .parameter "rootPath"
    .parameter "lockDir"
    .parameter "wallpaperDir"

    .prologue
    const/16 v9, 0x320

    const/16 v8, 0x1e0

    const/high16 v7, 0x4448

    const/high16 v6, 0x43f0

    const/high16 v5, 0x3f80

    .line 89
    iget v3, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v3, p0, Lcom/baidu/themeanimation/util/FileUtil;->mDensityDpi:I

    .line 90
    sput v8, Lcom/baidu/themeanimation/util/FileUtil;->DESIGH_SCREEN_WIDTH:I

    .line 91
    sput v9, Lcom/baidu/themeanimation/util/FileUtil;->DESIGN_SCREEN_HEIGHT:I

    .line 92
    iget v3, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v3, v4, :cond_4

    .line 93
    iget v3, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v3, Lcom/baidu/themeanimation/util/FileUtil;->REAL_SCREEN_WIDTH:I

    .line 94
    iget v3, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v3, Lcom/baidu/themeanimation/util/FileUtil;->REAL_SCREEN_HEIGHT:I

    .line 101
    :goto_0
    const/4 p1, 0x0

    .line 102
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/advance"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, advance:Ljava/lang/String;
    sput v5, Lcom/baidu/themeanimation/util/FileUtil;->Image_X_SCALE:F

    .line 104
    sput v5, Lcom/baidu/themeanimation/util/FileUtil;->Image_Y_SCALE:F

    .line 105
    const/4 v1, 0x0

    .line 107
    .local v1, file:Ljava/io/File;
    iget v3, p0, Lcom/baidu/themeanimation/util/FileUtil;->mDensityDpi:I

    const/16 v4, 0x140

    if-ne v3, v4, :cond_6

    .line 108
    sget v3, Lcom/baidu/themeanimation/util/FileUtil;->REAL_SCREEN_WIDTH:I

    const/16 v4, 0x2d0

    if-ne v3, v4, :cond_0

    sget v3, Lcom/baidu/themeanimation/util/FileUtil;->REAL_SCREEN_HEIGHT:I

    const/16 v4, 0x500

    if-eq v3, v4, :cond_1

    .line 110
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/advance-xhdpi-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/baidu/themeanimation/util/FileUtil;->REAL_SCREEN_WIDTH:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/baidu/themeanimation/util/FileUtil;->REAL_SCREEN_HEIGHT:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 111
    .local v2, localPath:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    .end local v1           #file:Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 112
    .restart local v1       #file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 113
    move-object v0, v2

    .line 116
    .end local v2           #localPath:Ljava/lang/String;
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_3

    .line 117
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/advance-xhdpi"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 118
    .restart local v2       #localPath:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    .end local v1           #file:Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 119
    .restart local v1       #file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 120
    move-object v0, v2

    .line 121
    sget v3, Lcom/baidu/themeanimation/util/FileUtil;->REAL_SCREEN_WIDTH:I

    int-to-float v3, v3

    const/high16 v4, 0x4434

    div-float/2addr v3, v4

    sput v3, Lcom/baidu/themeanimation/util/FileUtil;->Image_X_SCALE:F

    .line 122
    sget v3, Lcom/baidu/themeanimation/util/FileUtil;->REAL_SCREEN_HEIGHT:I

    int-to-float v3, v3

    const/high16 v4, 0x44a0

    div-float/2addr v3, v4

    sput v3, Lcom/baidu/themeanimation/util/FileUtil;->Image_Y_SCALE:F

    .line 143
    .end local v2           #localPath:Ljava/lang/String;
    :cond_3
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/baidu/themeanimation/util/FileUtil;->setLockScreenFilePath(Ljava/lang/String;)V

    .line 144
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/default_lock_wallpaper.jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/baidu/themeanimation/util/FileUtil;->setLockWallpaperFilePath(Ljava/lang/String;)V

    .line 146
    sget v3, Lcom/baidu/themeanimation/util/FileUtil;->REAL_SCREEN_WIDTH:I

    int-to-float v3, v3

    sget v4, Lcom/baidu/themeanimation/util/FileUtil;->DESIGH_SCREEN_WIDTH:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    sput v3, Lcom/baidu/themeanimation/util/FileUtil;->X_SCALE:F

    .line 147
    sget v3, Lcom/baidu/themeanimation/util/FileUtil;->REAL_SCREEN_HEIGHT:I

    int-to-float v3, v3

    sget v4, Lcom/baidu/themeanimation/util/FileUtil;->DESIGN_SCREEN_HEIGHT:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    sput v3, Lcom/baidu/themeanimation/util/FileUtil;->Y_SCALE:F

    .line 149
    sput v5, Lcom/baidu/themeanimation/util/FileUtil;->WALLPAPER_SCALE:F

    .line 150
    return-void

    .line 96
    .end local v0           #advance:Ljava/lang/String;
    .end local v1           #file:Ljava/io/File;
    :cond_4
    iget v3, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v3, Lcom/baidu/themeanimation/util/FileUtil;->REAL_SCREEN_WIDTH:I

    .line 97
    iget v3, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v3, Lcom/baidu/themeanimation/util/FileUtil;->REAL_SCREEN_HEIGHT:I

    goto/16 :goto_0

    .line 124
    .restart local v0       #advance:Ljava/lang/String;
    .restart local v1       #file:Ljava/io/File;
    .restart local v2       #localPath:Ljava/lang/String;
    :cond_5
    sget v3, Lcom/baidu/themeanimation/util/FileUtil;->REAL_SCREEN_WIDTH:I

    int-to-float v3, v3

    div-float/2addr v3, v6

    sput v3, Lcom/baidu/themeanimation/util/FileUtil;->Image_X_SCALE:F

    .line 125
    sget v3, Lcom/baidu/themeanimation/util/FileUtil;->REAL_SCREEN_HEIGHT:I

    int-to-float v3, v3

    div-float/2addr v3, v7

    sput v3, Lcom/baidu/themeanimation/util/FileUtil;->Image_Y_SCALE:F

    goto :goto_1

    .line 128
    .end local v2           #localPath:Ljava/lang/String;
    :cond_6
    iget v3, p0, Lcom/baidu/themeanimation/util/FileUtil;->mDensityDpi:I

    const/16 v4, 0xf0

    if-ne v3, v4, :cond_3

    .line 129
    sget v3, Lcom/baidu/themeanimation/util/FileUtil;->REAL_SCREEN_WIDTH:I

    if-ne v3, v8, :cond_7

    sget v3, Lcom/baidu/themeanimation/util/FileUtil;->REAL_SCREEN_HEIGHT:I

    if-eq v3, v9, :cond_8

    .line 131
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/advance-hdpi-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/baidu/themeanimation/util/FileUtil;->REAL_SCREEN_WIDTH:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/baidu/themeanimation/util/FileUtil;->REAL_SCREEN_HEIGHT:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 132
    .restart local v2       #localPath:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    .end local v1           #file:Ljava/io/File;
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 133
    .restart local v1       #file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 134
    move-object v0, v2

    .line 137
    .end local v2           #localPath:Ljava/lang/String;
    :cond_8
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_3

    .line 138
    :cond_9
    sget v3, Lcom/baidu/themeanimation/util/FileUtil;->REAL_SCREEN_WIDTH:I

    int-to-float v3, v3

    div-float/2addr v3, v6

    sput v3, Lcom/baidu/themeanimation/util/FileUtil;->Image_X_SCALE:F

    .line 139
    sget v3, Lcom/baidu/themeanimation/util/FileUtil;->REAL_SCREEN_HEIGHT:I

    int-to-float v3, v3

    div-float/2addr v3, v7

    sput v3, Lcom/baidu/themeanimation/util/FileUtil;->Image_Y_SCALE:F

    goto/16 :goto_1
.end method

.method public setLockScreenFilePath(Ljava/lang/String;)V
    .locals 0
    .parameter "lockWallpaperPath"

    .prologue
    .line 195
    iput-object p1, p0, Lcom/baidu/themeanimation/util/FileUtil;->mLockScreenFilePath:Ljava/lang/String;

    .line 196
    return-void
.end method

.method public setLockWallpaperFilePath(Ljava/lang/String;)V
    .locals 0
    .parameter "lockWallpaperPath"

    .prologue
    .line 203
    iput-object p1, p0, Lcom/baidu/themeanimation/util/FileUtil;->mWallpaperFilePath:Ljava/lang/String;

    .line 204
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 2
    .parameter "rootPath"

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/baidu/themeanimation/util/FileUtil;->setLockScreenFilePath(Ljava/lang/String;)V

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "default_lock_wallpaper.jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/util/FileUtil;->setLockWallpaperFilePath(Ljava/lang/String;)V

    .line 180
    return-void
.end method

.method public setTactileFeedbackEnabled(Z)V
    .locals 0
    .parameter "isTactileFeedbackEnabled"

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/baidu/themeanimation/util/FileUtil;->isTactileFeedbackEnabled:Z

    .line 86
    return-void
.end method

.method public setThemeChange(Z)V
    .locals 0
    .parameter "_value"

    .prologue
    .line 572
    iput-boolean p1, p0, Lcom/baidu/themeanimation/util/FileUtil;->mIsThemeChange:Z

    .line 573
    return-void
.end method

.method public setWallpaperChanged(Z)V
    .locals 0
    .parameter "_wallpaperChanged"

    .prologue
    .line 187
    iput-boolean p1, p0, Lcom/baidu/themeanimation/util/FileUtil;->mIsWallpaperChanged:Z

    .line 188
    return-void
.end method

.method public updateScale(II)V
    .locals 2
    .parameter "designWidth"
    .parameter "designHeight"

    .prologue
    .line 153
    sput p1, Lcom/baidu/themeanimation/util/FileUtil;->DESIGH_SCREEN_WIDTH:I

    .line 154
    sput p2, Lcom/baidu/themeanimation/util/FileUtil;->DESIGN_SCREEN_HEIGHT:I

    .line 155
    sget v0, Lcom/baidu/themeanimation/util/FileUtil;->REAL_SCREEN_WIDTH:I

    int-to-float v0, v0

    sget v1, Lcom/baidu/themeanimation/util/FileUtil;->DESIGH_SCREEN_WIDTH:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    sput v0, Lcom/baidu/themeanimation/util/FileUtil;->X_SCALE:F

    .line 156
    sget v0, Lcom/baidu/themeanimation/util/FileUtil;->REAL_SCREEN_HEIGHT:I

    int-to-float v0, v0

    sget v1, Lcom/baidu/themeanimation/util/FileUtil;->DESIGN_SCREEN_HEIGHT:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    sput v0, Lcom/baidu/themeanimation/util/FileUtil;->Y_SCALE:F

    .line 157
    sget v0, Lcom/baidu/themeanimation/util/FileUtil;->X_SCALE:F

    sput v0, Lcom/baidu/themeanimation/util/FileUtil;->Image_X_SCALE:F

    .line 158
    sget v0, Lcom/baidu/themeanimation/util/FileUtil;->Y_SCALE:F

    sput v0, Lcom/baidu/themeanimation/util/FileUtil;->Image_Y_SCALE:F

    .line 159
    return-void
.end method
