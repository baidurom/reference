.class public Landroid/os/storage/StorageManager;
.super Ljava/lang/Object;
.source "StorageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/storage/StorageManager$1;,
        Landroid/os/storage/StorageManager$ListenerDelegate;,
        Landroid/os/storage/StorageManager$StorageStateChangedStorageEvent;,
        Landroid/os/storage/StorageManager$UmsConnectionChangedStorageEvent;,
        Landroid/os/storage/StorageManager$StorageEvent;,
        Landroid/os/storage/StorageManager$ObbStateChangedStorageEvent;,
        Landroid/os/storage/StorageManager$ObbListenerDelegate;,
        Landroid/os/storage/StorageManager$ObbActionListener;,
        Landroid/os/storage/StorageManager$MountServiceBinderListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_PATH:Ljava/lang/String; = "/mnt/sdcard"

.field private static final PROP_SD_DEFAULT_PATH:Ljava/lang/String; = "persist.sys.sd.defaultpath"

.field private static final TAG:Ljava/lang/String; = "StorageManager"


# instance fields
.field private mBinderListener:Landroid/os/storage/StorageManager$MountServiceBinderListener;

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/storage/StorageManager$ListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mMTKExternalCacheDir:Ljava/io/File;

.field private mMountService:Landroid/os/storage/IMountService;

.field private final mNextNonce:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mObbActionListener:Landroid/os/storage/StorageManager$ObbActionListener;

.field mTgtLooper:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 3
    .parameter "tgtLooper"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 308
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/storage/StorageManager;->mListeners:Ljava/util/List;

    .line 87
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Landroid/os/storage/StorageManager;->mNextNonce:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 108
    new-instance v0, Landroid/os/storage/StorageManager$ObbActionListener;

    invoke-direct {v0, p0, v2}, Landroid/os/storage/StorageManager$ObbActionListener;-><init>(Landroid/os/storage/StorageManager;Landroid/os/storage/StorageManager$1;)V

    iput-object v0, p0, Landroid/os/storage/StorageManager;->mObbActionListener:Landroid/os/storage/StorageManager$ObbActionListener;

    .line 309
    const-string/jumbo v0, "mount"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v0

    iput-object v0, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    .line 310
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    if-nez v0, :cond_0

    .line 311
    const-string v0, "StorageManager"

    const-string v1, "Unable to connect to mount service! - is it running yet?"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :goto_0
    return-void

    .line 314
    :cond_0
    iput-object p1, p0, Landroid/os/storage/StorageManager;->mTgtLooper:Landroid/os/Looper;

    .line 315
    new-instance v0, Landroid/os/storage/StorageManager$MountServiceBinderListener;

    invoke-direct {v0, p0, v2}, Landroid/os/storage/StorageManager$MountServiceBinderListener;-><init>(Landroid/os/storage/StorageManager;Landroid/os/storage/StorageManager$1;)V

    iput-object v0, p0, Landroid/os/storage/StorageManager;->mBinderListener:Landroid/os/storage/StorageManager$MountServiceBinderListener;

    .line 316
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    iget-object v1, p0, Landroid/os/storage/StorageManager;->mBinderListener:Landroid/os/storage/StorageManager$MountServiceBinderListener;

    invoke-interface {v0, v1}, Landroid/os/storage/IMountService;->registerListener(Landroid/os/storage/IMountServiceListener;)V

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/os/storage/StorageManager;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Landroid/os/storage/StorageManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/os/storage/StorageManager;->getNextNonce()I

    move-result v0

    return v0
.end method

.method public static getDefaultPath()Ljava/lang/String;
    .locals 5

    .prologue
    .line 594
    const-string v1, "/mnt/sdcard"

    .line 596
    .local v1, path:Ljava/lang/String;
    :try_start_0
    const-string/jumbo v2, "persist.sys.sd.defaultpath"

    const-string v3, "/mnt/sdcard"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 601
    :goto_0
    const-string v2, "StorageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDefaultPath path="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    return-object v1

    .line 597
    :catch_0
    move-exception v0

    .line 598
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v2, "StorageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IllegalArgumentException when get default path:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getNextNonce()I
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mNextNonce:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    return v0
.end method

.method public static setDefaultPath(Ljava/lang/String;)V
    .locals 4
    .parameter "path"

    .prologue
    .line 611
    const-string v1, "StorageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDefaultPath path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    if-nez p0, :cond_0

    .line 613
    const-string v1, "StorageManager"

    const-string/jumbo v2, "setDefaultPath error! path=null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    :goto_0
    return-void

    .line 618
    :cond_0
    :try_start_0
    const-string/jumbo v1, "persist.sys.sd.defaultpath"

    invoke-static {v1, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 619
    :catch_0
    move-exception v0

    .line 620
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "StorageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IllegalArgumentException when set default path:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public disableUsbMassStorage()V
    .locals 3

    .prologue
    .line 381
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/os/storage/IMountService;->setUsbMassStorageEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    :goto_0
    return-void

    .line 382
    :catch_0
    move-exception v0

    .line 383
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "StorageManager"

    const-string v2, "Failed to disable UMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public enableUsbMassStorage()V
    .locals 3

    .prologue
    .line 368
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/os/storage/IMountService;->setUsbMassStorageEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    :goto_0
    return-void

    .line 369
    :catch_0
    move-exception v0

    .line 370
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "StorageManager"

    const-string v2, "Failed to enable UMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getMTKExternalCacheDir(Ljava/lang/String;)Ljava/io/File;
    .locals 8
    .parameter "packageName"

    .prologue
    const/4 v1, 0x0

    .line 629
    if-nez p1, :cond_0

    .line 630
    const-string v2, "StorageManager"

    const-string/jumbo v3, "packageName = null!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    :goto_0
    return-object v1

    .line 633
    :cond_0
    invoke-static {}, Landroid/os/storage/StorageManager;->getDefaultPath()Ljava/lang/String;

    move-result-object v0

    .line 634
    .local v0, path:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 635
    invoke-static {p1}, Landroid/os/Environment;->getExternalStorageAppCacheDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Landroid/os/storage/StorageManager;->mMTKExternalCacheDir:Ljava/io/File;

    .line 637
    iget-object v2, p0, Landroid/os/storage/StorageManager;->mMTKExternalCacheDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 639
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageAndroidDataDir()Ljava/io/File;

    move-result-object v3

    const-string v4, ".nomedia"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 643
    :goto_1
    iget-object v2, p0, Landroid/os/storage/StorageManager;->mMTKExternalCacheDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_2

    .line 644
    const-string v2, "StorageManager"

    const-string v3, "Unable to create external cache directory"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 649
    :cond_1
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v7, "Android"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v6, "data"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v3, v4, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v4, "cache"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Landroid/os/storage/StorageManager;->mMTKExternalCacheDir:Ljava/io/File;

    .line 651
    iget-object v2, p0, Landroid/os/storage/StorageManager;->mMTKExternalCacheDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 653
    :try_start_1
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v6, "Android"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v5, "data"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v4, ".nomedia"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 657
    :goto_2
    iget-object v2, p0, Landroid/os/storage/StorageManager;->mMTKExternalCacheDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_2

    .line 658
    const-string v2, "StorageManager"

    const-string v3, "Unable to create external cache directory"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 663
    :cond_2
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMTKExternalCacheDir:Ljava/io/File;

    goto/16 :goto_0

    .line 655
    :catch_0
    move-exception v2

    goto :goto_2

    .line 641
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public getMountedObbPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "filename"

    .prologue
    .line 528
    if-nez p1, :cond_0

    .line 529
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "filename cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 533
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v1, p1}, Landroid/os/storage/IMountService;->getMountedObbPath(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 538
    :goto_0
    return-object v1

    .line 534
    :catch_0
    move-exception v0

    .line 535
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "StorageManager"

    const-string v2, "Failed to find mounted path for OBB"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 538
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getVolumeList()[Landroid/os/storage/StorageVolume;
    .locals 7

    .prologue
    .line 560
    :try_start_0
    iget-object v5, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v5}, Landroid/os/storage/IMountService;->getVolumeList()[Landroid/os/Parcelable;

    move-result-object v3

    .line 561
    .local v3, list:[Landroid/os/Parcelable;
    if-nez v3, :cond_1

    const/4 v5, 0x0

    new-array v4, v5, [Landroid/os/storage/StorageVolume;

    .line 570
    .end local v3           #list:[Landroid/os/Parcelable;
    :cond_0
    :goto_0
    return-object v4

    .line 562
    .restart local v3       #list:[Landroid/os/Parcelable;
    :cond_1
    array-length v2, v3

    .line 563
    .local v2, length:I
    new-array v4, v2, [Landroid/os/storage/StorageVolume;

    .line 564
    .local v4, result:[Landroid/os/storage/StorageVolume;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_0

    .line 565
    aget-object v5, v3, v1

    check-cast v5, Landroid/os/storage/StorageVolume;

    aput-object v5, v4, v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 564
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 568
    .end local v1           #i:I
    .end local v2           #length:I
    .end local v3           #list:[Landroid/os/Parcelable;
    .end local v4           #result:[Landroid/os/storage/StorageVolume;
    :catch_0
    move-exception v0

    .line 569
    .local v0, e:Landroid/os/RemoteException;
    const-string v5, "StorageManager"

    const-string v6, "Failed to get volume list"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 570
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public getVolumePaths()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 579
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v3

    .line 580
    .local v3, volumes:[Landroid/os/storage/StorageVolume;
    if-nez v3, :cond_1

    const/4 v2, 0x0

    .line 586
    :cond_0
    return-object v2

    .line 581
    :cond_1
    array-length v0, v3

    .line 582
    .local v0, count:I
    new-array v2, v0, [Ljava/lang/String;

    .line 583
    .local v2, paths:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 584
    aget-object v4, v3, v1

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    .line 583
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "mountPoint"

    .prologue
    .line 547
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v1, p1}, Landroid/os/storage/IMountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 550
    :goto_0
    return-object v1

    .line 548
    :catch_0
    move-exception v0

    .line 549
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "StorageManager"

    const-string v2, "Failed to get volume state"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 550
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isObbMounted(Ljava/lang/String;)Z
    .locals 3
    .parameter "filename"

    .prologue
    .line 505
    if-nez p1, :cond_0

    .line 506
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "filename cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 510
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v1, p1}, Landroid/os/storage/IMountService;->isObbMounted(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 515
    :goto_0
    return v1

    .line 511
    :catch_0
    move-exception v0

    .line 512
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "StorageManager"

    const-string v2, "Failed to check if OBB is mounted"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 515
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isUsbMassStorageConnected()Z
    .locals 3

    .prologue
    .line 395
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v1}, Landroid/os/storage/IMountService;->isUsbMassStorageConnected()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 399
    :goto_0
    return v1

    .line 396
    :catch_0
    move-exception v0

    .line 397
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "StorageManager"

    const-string v2, "Failed to get UMS connection state"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 399
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isUsbMassStorageEnabled()Z
    .locals 3

    .prologue
    .line 410
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v1}, Landroid/os/storage/IMountService;->isUsbMassStorageEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 414
    :goto_0
    return v1

    .line 411
    :catch_0
    move-exception v0

    .line 412
    .local v0, rex:Landroid/os/RemoteException;
    const-string v1, "StorageManager"

    const-string v2, "Failed to get UMS enable state"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 414
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public mountObb(Ljava/lang/String;Ljava/lang/String;Landroid/os/storage/OnObbStateChangeListener;)Z
    .locals 4
    .parameter "filename"
    .parameter "key"
    .parameter "listener"

    .prologue
    .line 439
    if-nez p1, :cond_0

    .line 440
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "filename cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 443
    :cond_0
    if-nez p3, :cond_1

    .line 444
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "listener cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 448
    :cond_1
    :try_start_0
    iget-object v2, p0, Landroid/os/storage/StorageManager;->mObbActionListener:Landroid/os/storage/StorageManager$ObbActionListener;

    invoke-virtual {v2, p3}, Landroid/os/storage/StorageManager$ObbActionListener;->addListener(Landroid/os/storage/OnObbStateChangeListener;)I

    move-result v1

    .line 449
    .local v1, nonce:I
    iget-object v2, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    iget-object v3, p0, Landroid/os/storage/StorageManager;->mObbActionListener:Landroid/os/storage/StorageManager$ObbActionListener;

    invoke-interface {v2, p1, p2, v3, v1}, Landroid/os/storage/IMountService;->mountObb(Ljava/lang/String;Ljava/lang/String;Landroid/os/storage/IObbActionListener;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 450
    const/4 v2, 0x1

    .line 455
    .end local v1           #nonce:I
    :goto_0
    return v2

    .line 451
    :catch_0
    move-exception v0

    .line 452
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "StorageManager"

    const-string v3, "Failed to mount OBB"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 455
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public registerListener(Landroid/os/storage/StorageEventListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 328
    if-nez p1, :cond_0

    .line 335
    :goto_0
    return-void

    .line 332
    :cond_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mListeners:Ljava/util/List;

    monitor-enter v1

    .line 333
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mListeners:Ljava/util/List;

    new-instance v2, Landroid/os/storage/StorageManager$ListenerDelegate;

    invoke-direct {v2, p0, p1}, Landroid/os/storage/StorageManager$ListenerDelegate;-><init>(Landroid/os/storage/StorageManager;Landroid/os/storage/StorageEventListener;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unmountObb(Ljava/lang/String;ZLandroid/os/storage/OnObbStateChangeListener;)Z
    .locals 4
    .parameter "filename"
    .parameter "force"
    .parameter "listener"

    .prologue
    .line 479
    if-nez p1, :cond_0

    .line 480
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "filename cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 483
    :cond_0
    if-nez p3, :cond_1

    .line 484
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "listener cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 488
    :cond_1
    :try_start_0
    iget-object v2, p0, Landroid/os/storage/StorageManager;->mObbActionListener:Landroid/os/storage/StorageManager$ObbActionListener;

    invoke-virtual {v2, p3}, Landroid/os/storage/StorageManager$ObbActionListener;->addListener(Landroid/os/storage/OnObbStateChangeListener;)I

    move-result v1

    .line 489
    .local v1, nonce:I
    iget-object v2, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    iget-object v3, p0, Landroid/os/storage/StorageManager;->mObbActionListener:Landroid/os/storage/StorageManager$ObbActionListener;

    invoke-interface {v2, p1, p2, v3, v1}, Landroid/os/storage/IMountService;->unmountObb(Ljava/lang/String;ZLandroid/os/storage/IObbActionListener;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 490
    const/4 v2, 0x1

    .line 495
    .end local v1           #nonce:I
    :goto_0
    return v2

    .line 491
    :catch_0
    move-exception v0

    .line 492
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "StorageManager"

    const-string v3, "Failed to mount OBB"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 495
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public unregisterListener(Landroid/os/storage/StorageEventListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 345
    if-nez p1, :cond_0

    .line 359
    :goto_0
    return-void

    .line 349
    :cond_0
    iget-object v4, p0, Landroid/os/storage/StorageManager;->mListeners:Ljava/util/List;

    monitor-enter v4

    .line 350
    :try_start_0
    iget-object v3, p0, Landroid/os/storage/StorageManager;->mListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 351
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_1

    .line 352
    iget-object v3, p0, Landroid/os/storage/StorageManager;->mListeners:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager$ListenerDelegate;

    .line 353
    .local v1, l:Landroid/os/storage/StorageManager$ListenerDelegate;
    invoke-virtual {v1}, Landroid/os/storage/StorageManager$ListenerDelegate;->getListener()Landroid/os/storage/StorageEventListener;

    move-result-object v3

    if-ne v3, p1, :cond_2

    .line 354
    iget-object v3, p0, Landroid/os/storage/StorageManager;->mListeners:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 358
    .end local v1           #l:Landroid/os/storage/StorageManager$ListenerDelegate;
    :cond_1
    monitor-exit v4

    goto :goto_0

    .end local v0           #i:I
    .end local v2           #size:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 351
    .restart local v0       #i:I
    .restart local v1       #l:Landroid/os/storage/StorageManager$ListenerDelegate;
    .restart local v2       #size:I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
