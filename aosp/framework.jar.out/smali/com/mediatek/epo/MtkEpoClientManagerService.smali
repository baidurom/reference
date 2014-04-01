.class public Lcom/mediatek/epo/MtkEpoClientManagerService;
.super Lcom/mediatek/epo/IMtkEpoClientManager$Stub;
.source "MtkEpoClientManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/epo/MtkEpoClientManagerService$GpsStatusObserver;
    }
.end annotation


# static fields
.field private static final EPOMD5_FILE_PATH:Ljava/lang/String; = "/data/misc/EPO.MD5"

.field private static final EPOTMP_FILE_PATH:Ljava/lang/String; = "/data/misc/EPOTMP.DAT"

.field private static final EPO_FILE_PATH:Ljava/lang/String; = "/data/misc/EPO.DAT"

.field private static final STATUS_IDLE:I = 0x0

.field private static final STATUS_START:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MtkEpoClientManagerService"

.field private static final UPDATE_FAILURE:I = 0x1

.field private static final UPDATE_SUCCESS:I


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAutoUpdate:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mCurrentProgress:I

.field private mDownloadHandler:Landroid/os/Handler;

.field private mDownloadThread:Ljava/lang/Thread;

.field private mEpoEnable:Z

.field private mEpoStatus:I

.field private mGpsStatusObserver:Lcom/mediatek/epo/MtkEpoClientManagerService$GpsStatusObserver;

.field mListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/epo/IMtkEpoStatusListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLock:Ljava/lang/Object;

.field private mManualStop:Z

.field private mProfileAddr:Ljava/lang/String;

.field private mProfilePassword:Ljava/lang/String;

.field private mProfilePort:I

.field private mProfileUserName:Ljava/lang/String;

.field private mRetryTimes:I

.field private mTimeout:I

.field private mTimeoutIntent:Landroid/app/PendingIntent;

.field private mTimerStatus:I

.field private mUpdatePeriod:J

.field private mUpdateResult:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 131
    invoke-direct {p0}, Lcom/mediatek/epo/IMtkEpoClientManager$Stub;-><init>()V

    .line 93
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mContext:Landroid/content/Context;

    .line 110
    iput-boolean v4, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mEpoEnable:Z

    .line 111
    iput v4, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mTimerStatus:I

    .line 112
    iput v4, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mEpoStatus:I

    .line 113
    iput-boolean v4, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mManualStop:Z

    .line 114
    const-wide/32 v1, 0x5265c00

    iput-wide v1, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mUpdatePeriod:J

    .line 115
    iput-boolean v4, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mAutoUpdate:Z

    .line 116
    iput v4, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mUpdateResult:I

    .line 117
    const/4 v1, 0x5

    iput v1, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mRetryTimes:I

    .line 118
    const/16 v1, 0x2710

    iput v1, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mTimeout:I

    .line 119
    const/16 v1, 0x12c

    iput v1, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mCurrentProgress:I

    .line 121
    const-string v1, "epo.mediatek.com"

    iput-object v1, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mProfileAddr:Ljava/lang/String;

    .line 122
    const/16 v1, 0x15

    iput v1, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mProfilePort:I

    .line 123
    const-string v1, "epo_alps"

    iput-object v1, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mProfileUserName:Ljava/lang/String;

    .line 124
    const-string v1, "epo_alps"

    iput-object v1, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mProfilePassword:Ljava/lang/String;

    .line 127
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mLock:Ljava/lang/Object;

    .line 129
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mListenerList:Ljava/util/List;

    .line 180
    new-instance v1, Lcom/mediatek/epo/MtkEpoClientManagerService$1;

    invoke-direct {v1, p0}, Lcom/mediatek/epo/MtkEpoClientManagerService$1;-><init>(Lcom/mediatek/epo/MtkEpoClientManagerService;)V

    iput-object v1, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 449
    new-instance v1, Lcom/mediatek/epo/MtkEpoClientManagerService$2;

    invoke-direct {v1, p0}, Lcom/mediatek/epo/MtkEpoClientManagerService$2;-><init>(Lcom/mediatek/epo/MtkEpoClientManagerService;)V

    iput-object v1, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mDownloadThread:Ljava/lang/Thread;

    .line 132
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 133
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "******** MtkEpoClientManagerService constructor ********"

    invoke-direct {p0, v1}, Lcom/mediatek/epo/MtkEpoClientManagerService;->log(Ljava/lang/String;)V

    .line 134
    iput-object p1, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mContext:Landroid/content/Context;

    .line 136
    const-string v1, "MTK_EPO_TIMEOUT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 137
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    iget-object v1, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 140
    new-instance v1, Lcom/mediatek/epo/MtkEpoClientManagerService$GpsStatusObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, p0, v2}, Lcom/mediatek/epo/MtkEpoClientManagerService$GpsStatusObserver;-><init>(Lcom/mediatek/epo/MtkEpoClientManagerService;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mGpsStatusObserver:Lcom/mediatek/epo/MtkEpoClientManagerService$GpsStatusObserver;

    .line 141
    iget-object v1, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "location_providers_allowed"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mGpsStatusObserver:Lcom/mediatek/epo/MtkEpoClientManagerService$GpsStatusObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 145
    iget-object v1, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 146
    iget-object v1, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "MTK_EPO_TIMEOUT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v4, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mTimeoutIntent:Landroid/app/PendingIntent;

    .line 148
    iget-object v1, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mDownloadThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 150
    invoke-direct {p0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->deleteEpoFile()V

    .line 151
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/epo/MtkEpoClientManagerService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/mediatek/epo/MtkEpoClientManagerService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/epo/MtkEpoClientManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->checkBeforeDownload()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/mediatek/epo/MtkEpoClientManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->checkBeforeStartTimer()V

    return-void
.end method

.method static synthetic access$302(Lcom/mediatek/epo/MtkEpoClientManagerService;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mDownloadHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$400(Lcom/mediatek/epo/MtkEpoClientManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->startEpoDownload()V

    return-void
.end method

.method private addListener(Ljava/util/List;Lcom/mediatek/epo/IMtkEpoStatusListener;)V
    .locals 3
    .parameter
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/epo/IMtkEpoStatusListener;",
            ">;",
            "Lcom/mediatek/epo/IMtkEpoStatusListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 580
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/epo/IMtkEpoStatusListener;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 581
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/epo/IMtkEpoStatusListener;

    invoke-interface {v1}, Lcom/mediatek/epo/IMtkEpoStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p2}, Lcom/mediatek/epo/IMtkEpoStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 586
    :goto_1
    return-void

    .line 580
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 585
    :cond_1
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private calculateHashValue()Ljava/lang/String;
    .locals 13

    .prologue
    .line 287
    const/4 v6, 0x0

    .line 288
    .local v6, hashValue:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    const-string v11, "/data/misc/EPOTMP.DAT"

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 290
    .local v0, EPOFile:Ljava/io/File;
    if-eqz v0, :cond_0

    .line 292
    :try_start_0
    const-string v11, "MD5"

    invoke-static {v11}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v8

    .line 293
    .local v8, md5:Ljava/security/MessageDigest;
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 295
    .local v5, fis:Ljava/io/FileInputStream;
    const/16 v11, 0x400

    new-array v1, v11, [B

    .line 296
    .local v1, buffer:[B
    const/4 v2, 0x0

    .line 297
    .local v2, count:I
    :goto_0
    invoke-virtual {v5, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    const/4 v11, -0x1

    if-eq v2, v11, :cond_1

    .line 298
    const/4 v11, 0x0

    invoke-virtual {v8, v1, v11, v2}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 315
    .end local v1           #buffer:[B
    .end local v2           #count:I
    .end local v5           #fis:Ljava/io/FileInputStream;
    .end local v8           #md5:Ljava/security/MessageDigest;
    :catch_0
    move-exception v4

    .line 316
    .local v4, ex:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/mediatek/epo/MtkEpoClientManagerService;->loge(Ljava/lang/String;)V

    .line 319
    .end local v4           #ex:Ljava/lang/Exception;
    :cond_0
    :goto_1
    return-object v6

    .line 300
    .restart local v1       #buffer:[B
    .restart local v2       #count:I
    .restart local v5       #fis:Ljava/io/FileInputStream;
    .restart local v8       #md5:Ljava/security/MessageDigest;
    :cond_1
    :try_start_1
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 302
    invoke-virtual {v8}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    .line 304
    .local v3, digest:[B
    new-instance v9, Ljava/lang/StringBuilder;

    array-length v11, v3

    mul-int/lit8 v11, v11, 0x2

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 305
    .local v9, sb:Ljava/lang/StringBuilder;
    const/4 v10, 0x0

    .line 306
    .local v10, tmp:Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2
    array-length v11, v3

    if-ge v7, v11, :cond_3

    .line 308
    aget-byte v11, v3, v7

    and-int/lit16 v11, v11, 0xff

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    .line 309
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2

    .line 310
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "0"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 312
    :cond_2
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 314
    :cond_3
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    goto :goto_1
.end method

.method private checkBeforeDownload()I
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 404
    iput-boolean v2, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mManualStop:Z

    .line 406
    iget-boolean v3, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mEpoEnable:Z

    if-nez v3, :cond_0

    .line 407
    const-string v1, "WARNING: EPO is disabled"

    invoke-direct {p0, v1}, Lcom/mediatek/epo/MtkEpoClientManagerService;->log(Ljava/lang/String;)V

    .line 408
    invoke-direct {p0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->stopTimer()V

    .line 409
    const/4 v1, 0x3

    .line 438
    :goto_0
    return v1

    .line 412
    :cond_0
    iget-object v3, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 413
    :try_start_0
    iget v4, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mEpoStatus:I

    if-ne v4, v1, :cond_1

    .line 414
    const-string v2, "WARNING: download procedure is running"

    invoke-direct {p0, v2}, Lcom/mediatek/epo/MtkEpoClientManagerService;->log(Ljava/lang/String;)V

    .line 415
    monitor-exit v3

    goto :goto_0

    .line 437
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 419
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->isNetworkAvailable()Z

    move-result v0

    .line 422
    .local v0, isNetworkEnabled:Z
    if-eqz v0, :cond_2

    .line 423
    const/4 v1, 0x1

    iput v1, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mEpoStatus:I

    .line 424
    invoke-direct {p0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->sendMessageToStartDownload()V

    .line 437
    monitor-exit v3

    move v1, v2

    .line 438
    goto :goto_0

    .line 426
    :cond_2
    const/4 v2, 0x1

    iput v2, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mUpdateResult:I

    .line 428
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WARNING: isNetworkEnabled="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/epo/MtkEpoClientManagerService;->log(Ljava/lang/String;)V

    .line 430
    iget-boolean v2, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mAutoUpdate:Z

    if-ne v2, v1, :cond_3

    .line 431
    invoke-direct {p0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->startTimer()V

    .line 435
    :goto_1
    const/4 v1, 0x2

    monitor-exit v3

    goto :goto_0

    .line 433
    :cond_3
    invoke-direct {p0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->stopTimer()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private checkBeforeStartTimer()V
    .locals 2

    .prologue
    .line 386
    iget-boolean v0, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mAutoUpdate:Z

    if-nez v0, :cond_0

    .line 387
    const-string v0, "WARNING: auto update is disabled"

    invoke-direct {p0, v0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->log(Ljava/lang/String;)V

    .line 401
    :goto_0
    return-void

    .line 391
    :cond_0
    iget v0, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mUpdateResult:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const-string v0, "/data/misc/EPO.DAT"

    invoke-direct {p0, v0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->fileExist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 393
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->checkBeforeDownload()I

    goto :goto_0

    .line 395
    :cond_2
    iget v0, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mTimerStatus:I

    if-nez v0, :cond_3

    .line 396
    invoke-direct {p0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->startTimer()V

    goto :goto_0

    .line 398
    :cond_3
    const-string v0, "WARNING: the timer is already running"

    invoke-direct {p0, v0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private deleteEpoFile()V
    .locals 2

    .prologue
    .line 169
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/EPOTMP.DAT"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 170
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 171
    new-instance v0, Ljava/io/File;

    .end local v0           #file:Ljava/io/File;
    const-string v1, "/data/misc/EPO.MD5"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 172
    .restart local v0       #file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 173
    return-void
.end method

.method private dumpListener(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/epo/IMtkEpoStatusListener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 598
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/epo/IMtkEpoStatusListener;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "===================== size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/epo/MtkEpoClientManagerService;->log(Ljava/lang/String;)V

    .line 599
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 600
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "i="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/epo/IMtkEpoStatusListener;

    invoke-interface {v1}, Lcom/mediatek/epo/IMtkEpoStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/epo/MtkEpoClientManagerService;->log(Ljava/lang/String;)V

    .line 599
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 602
    :cond_0
    return-void
.end method

.method private epoDownload()Z
    .locals 10

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 466
    invoke-direct {p0, v8}, Lcom/mediatek/epo/MtkEpoClientManagerService;->update2Mmi(I)V

    .line 467
    iget-object v1, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mProfileAddr:Ljava/lang/String;

    iget v2, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mProfilePort:I

    iget-object v3, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mProfileUserName:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mProfilePassword:Ljava/lang/String;

    const-string v5, "EPO.DAT"

    const-string v6, "/data/misc/EPOTMP.DAT"

    iget v7, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mTimeout:I

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/mediatek/epo/MtkEpoClientManagerService;->ftpDownload(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v8

    .line 499
    :goto_0
    return v0

    .line 471
    :cond_0
    iget-boolean v0, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mManualStop:Z

    if-ne v0, v9, :cond_1

    move v0, v9

    .line 472
    goto :goto_0

    .line 473
    :cond_1
    const/16 v0, 0x19

    invoke-direct {p0, v0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->update2Mmi(I)V

    .line 475
    iget-object v1, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mProfileAddr:Ljava/lang/String;

    iget v2, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mProfilePort:I

    iget-object v3, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mProfileUserName:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mProfilePassword:Ljava/lang/String;

    const-string v5, "EPO.MD5"

    const-string v6, "/data/misc/EPO.MD5"

    iget v7, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mTimeout:I

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/mediatek/epo/MtkEpoClientManagerService;->ftpDownload(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v8

    .line 477
    goto :goto_0

    .line 479
    :cond_2
    iget-boolean v0, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mManualStop:Z

    if-ne v0, v9, :cond_3

    move v0, v9

    .line 480
    goto :goto_0

    .line 481
    :cond_3
    const/16 v0, 0x32

    invoke-direct {p0, v0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->update2Mmi(I)V

    .line 483
    invoke-direct {p0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->isEPOFileValid()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v8

    .line 484
    goto :goto_0

    .line 486
    :cond_4
    iget-boolean v0, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mManualStop:Z

    if-ne v0, v9, :cond_5

    move v0, v9

    .line 487
    goto :goto_0

    .line 488
    :cond_5
    const/16 v0, 0x4b

    invoke-direct {p0, v0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->update2Mmi(I)V

    .line 490
    invoke-direct {p0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->updateEpoFile2Mnl()Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v8

    .line 491
    goto :goto_0

    .line 493
    :cond_6
    iget-boolean v0, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mManualStop:Z

    if-ne v0, v9, :cond_7

    move v0, v9

    .line 494
    goto :goto_0

    .line 495
    :cond_7
    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->update2Mmi(I)V

    .line 497
    invoke-direct {p0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->deleteEpoFile()V

    move v0, v9

    .line 499
    goto :goto_0
.end method

.method private fileExist(Ljava/lang/String;)Z
    .locals 2
    .parameter "fileName"

    .prologue
    .line 176
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 177
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method private ftpDownload(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 13
    .parameter "addr"
    .parameter "port"
    .parameter "account"
    .parameter "password"
    .parameter "fileName"
    .parameter "destination"
    .parameter "timeout"

    .prologue
    .line 216
    const/4 v3, 0x0

    .line 217
    .local v3, count:I
    const/4 v9, 0x0

    .line 218
    .local v9, total:I
    const/4 v7, 0x0

    .line 219
    .local v7, in:Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 220
    .local v2, connection:Ljava/net/URLConnection;
    const/4 v5, 0x0

    .line 221
    .local v5, fos:Ljava/io/FileOutputStream;
    const/16 v11, 0x400

    new-array v1, v11, [B

    .line 222
    .local v1, b:[B
    const/4 v8, 0x0

    .line 225
    .local v8, success:Z
    :try_start_0
    new-instance v10, Ljava/net/URL;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ftp://"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p4

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "@"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "//"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p5

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 227
    .local v10, url:Ljava/net/URL;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "url="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/mediatek/epo/MtkEpoClientManagerService;->log(Ljava/lang/String;)V

    .line 228
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "dest="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p6

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " timeout="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p7

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/mediatek/epo/MtkEpoClientManagerService;->log(Ljava/lang/String;)V

    .line 230
    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 231
    move/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 232
    move/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 233
    const/4 v11, 0x1

    invoke-virtual {v2, v11}, Ljava/net/URLConnection;->setPassiveMode(Z)V

    .line 234
    const-string v11, "before connect"

    invoke-direct {p0, v11}, Lcom/mediatek/epo/MtkEpoClientManagerService;->log(Ljava/lang/String;)V

    .line 235
    invoke-virtual {v2}, Ljava/net/URLConnection;->connect()V

    .line 236
    const-string v11, "after connect"

    invoke-direct {p0, v11}, Lcom/mediatek/epo/MtkEpoClientManagerService;->log(Ljava/lang/String;)V

    .line 238
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 239
    new-instance v6, Ljava/io/FileOutputStream;

    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p6

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 241
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .local v6, fos:Ljava/io/FileOutputStream;
    :goto_0
    :try_start_1
    invoke-virtual {v7, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-ltz v3, :cond_2

    .line 242
    add-int/2addr v9, v3

    .line 243
    const/4 v11, 0x0

    invoke-virtual {v6, v1, v11, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8

    goto :goto_0

    .line 249
    :catch_0
    move-exception v4

    move-object v5, v6

    .line 250
    .end local v6           #fos:Ljava/io/FileOutputStream;
    .end local v10           #url:Ljava/net/URL;
    .local v4, e:Ljava/net/MalformedURLException;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    :goto_1
    :try_start_2
    invoke-virtual {v4}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 257
    if-eqz v7, :cond_0

    .line 258
    :try_start_3
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 259
    :cond_0
    if-eqz v5, :cond_1

    .line 260
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 265
    .end local v4           #e:Ljava/net/MalformedURLException;
    :cond_1
    :goto_2
    return v8

    .line 246
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    .restart local v10       #url:Ljava/net/URL;
    :cond_2
    :try_start_4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "total="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " count="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/mediatek/epo/MtkEpoClientManagerService;->log(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8

    .line 247
    const/4 v8, 0x1

    .line 257
    if-eqz v7, :cond_3

    .line 258
    :try_start_5
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 259
    :cond_3
    if-eqz v6, :cond_4

    .line 260
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_4
    move-object v5, v6

    .line 263
    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 261
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v4

    .line 262
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    move-object v5, v6

    .line 264
    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 261
    .end local v10           #url:Ljava/net/URL;
    .local v4, e:Ljava/net/MalformedURLException;
    :catch_2
    move-exception v4

    .line 262
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 251
    .end local v4           #e:Ljava/io/IOException;
    :catch_3
    move-exception v4

    .line 252
    .restart local v4       #e:Ljava/io/IOException;
    :goto_3
    :try_start_6
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 257
    if-eqz v7, :cond_5

    .line 258
    :try_start_7
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 259
    :cond_5
    if-eqz v5, :cond_1

    .line 260
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_2

    .line 261
    :catch_4
    move-exception v4

    .line 262
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 253
    .end local v4           #e:Ljava/io/IOException;
    :catch_5
    move-exception v4

    .line 254
    .local v4, e:Ljava/lang/Exception;
    :goto_4
    :try_start_8
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 257
    if-eqz v7, :cond_6

    .line 258
    :try_start_9
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 259
    :cond_6
    if-eqz v5, :cond_1

    .line 260
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_2

    .line 261
    :catch_6
    move-exception v4

    .line 262
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 256
    .end local v4           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v11

    .line 257
    :goto_5
    if-eqz v7, :cond_7

    .line 258
    :try_start_a
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 259
    :cond_7
    if-eqz v5, :cond_8

    .line 260
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 263
    :cond_8
    :goto_6
    throw v11

    .line 261
    :catch_7
    move-exception v4

    .line 262
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 256
    .end local v4           #e:Ljava/io/IOException;
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    .restart local v10       #url:Ljava/net/URL;
    :catchall_1
    move-exception v11

    move-object v5, v6

    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    goto :goto_5

    .line 253
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    :catch_8
    move-exception v4

    move-object v5, v6

    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    goto :goto_4

    .line 251
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    :catch_9
    move-exception v4

    move-object v5, v6

    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 249
    .end local v10           #url:Ljava/net/URL;
    :catch_a
    move-exception v4

    goto/16 :goto_1
.end method

.method private getHashValue()Ljava/lang/String;
    .locals 12

    .prologue
    .line 324
    const/4 v6, 0x0

    .line 325
    .local v6, hashValue:Ljava/lang/String;
    const/4 v0, 0x0

    .line 328
    .local v0, MD5File:Ljava/io/File;
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v10, "/data/misc/EPO.MD5"

    invoke-direct {v1, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 329
    .end local v0           #MD5File:Ljava/io/File;
    .local v1, MD5File:Ljava/io/File;
    if-eqz v1, :cond_2

    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 330
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 331
    .local v5, fis:Ljava/io/FileInputStream;
    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 332
    .local v8, reader:Ljava/io/InputStreamReader;
    if-nez v8, :cond_0

    .line 333
    const-string v10, "ERR: retrieve input stream reader failed..."

    invoke-direct {p0, v10}, Lcom/mediatek/epo/MtkEpoClientManagerService;->loge(Ljava/lang/String;)V

    move-object v0, v1

    .end local v1           #MD5File:Ljava/io/File;
    .restart local v0       #MD5File:Ljava/io/File;
    move-object v7, v6

    .line 353
    .end local v5           #fis:Ljava/io/FileInputStream;
    .end local v6           #hashValue:Ljava/lang/String;
    .end local v8           #reader:Ljava/io/InputStreamReader;
    .local v7, hashValue:Ljava/lang/String;
    :goto_0
    return-object v7

    .line 337
    .end local v0           #MD5File:Ljava/io/File;
    .end local v7           #hashValue:Ljava/lang/String;
    .restart local v1       #MD5File:Ljava/io/File;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    .restart local v6       #hashValue:Ljava/lang/String;
    .restart local v8       #reader:Ljava/io/InputStreamReader;
    :cond_0
    const/16 v10, 0x46

    new-array v2, v10, [C

    .line 339
    .local v2, buffer:[C
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 341
    .local v9, sb:Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual {v8, v2}, Ljava/io/InputStreamReader;->read([C)I

    move-result v3

    .local v3, count:I
    const/4 v10, -0x1

    if-eq v3, v10, :cond_1

    .line 342
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 350
    .end local v2           #buffer:[C
    .end local v3           #count:I
    .end local v5           #fis:Ljava/io/FileInputStream;
    .end local v8           #reader:Ljava/io/InputStreamReader;
    .end local v9           #sb:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v4

    move-object v0, v1

    .line 351
    .end local v1           #MD5File:Ljava/io/File;
    .restart local v0       #MD5File:Ljava/io/File;
    .local v4, ex:Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/mediatek/epo/MtkEpoClientManagerService;->loge(Ljava/lang/String;)V

    .end local v4           #ex:Ljava/lang/Exception;
    :goto_3
    move-object v7, v6

    .line 353
    .end local v6           #hashValue:Ljava/lang/String;
    .restart local v7       #hashValue:Ljava/lang/String;
    goto :goto_0

    .line 345
    .end local v0           #MD5File:Ljava/io/File;
    .end local v7           #hashValue:Ljava/lang/String;
    .restart local v1       #MD5File:Ljava/io/File;
    .restart local v2       #buffer:[C
    .restart local v3       #count:I
    .restart local v5       #fis:Ljava/io/FileInputStream;
    .restart local v6       #hashValue:Ljava/lang/String;
    .restart local v8       #reader:Ljava/io/InputStreamReader;
    .restart local v9       #sb:Ljava/lang/StringBuilder;
    :cond_1
    const/4 v10, 0x0

    const/16 v11, 0x20

    :try_start_2
    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 347
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 348
    invoke-virtual {v8}, Ljava/io/InputStreamReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .end local v2           #buffer:[C
    .end local v3           #count:I
    .end local v5           #fis:Ljava/io/FileInputStream;
    .end local v8           #reader:Ljava/io/InputStreamReader;
    .end local v9           #sb:Ljava/lang/StringBuilder;
    :cond_2
    move-object v0, v1

    .line 352
    .end local v1           #MD5File:Ljava/io/File;
    .restart local v0       #MD5File:Ljava/io/File;
    goto :goto_3

    .line 350
    :catch_1
    move-exception v4

    goto :goto_2
.end method

.method private isEPOFileValid()Z
    .locals 3

    .prologue
    .line 270
    invoke-direct {p0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->calculateHashValue()Ljava/lang/String;

    move-result-object v0

    .line 271
    .local v0, EPOHashValue:Ljava/lang/String;
    invoke-direct {p0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->getHashValue()Ljava/lang/String;

    move-result-object v1

    .line 273
    .local v1, initialHashValue:Ljava/lang/String;
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 274
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 275
    const/4 v2, 0x1

    .line 283
    :goto_0
    return v2

    .line 277
    :cond_0
    const-string v2, "ERR: Epo file is invalid"

    invoke-direct {p0, v2}, Lcom/mediatek/epo/MtkEpoClientManagerService;->loge(Ljava/lang/String;)V

    .line 283
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 280
    :cond_1
    const-string v2, "ERR: Hash value is null..."

    invoke-direct {p0, v2}, Lcom/mediatek/epo/MtkEpoClientManagerService;->loge(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private isGpsAvailable()Z
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isNetworkAvailable()Z
    .locals 4

    .prologue
    .line 158
    iget-object v2, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 160
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 161
    .local v1, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 162
    const/4 v2, 0x1

    .line 164
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 194
    const-string v0, "[MtkEpoClientManagerService]"

    invoke-static {v0, p1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 197
    const-string v0, "[MtkEpoClientManagerService]"

    invoke-static {v0, p1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    return-void
.end method

.method private removeListener(Ljava/util/List;Lcom/mediatek/epo/IMtkEpoStatusListener;)V
    .locals 3
    .parameter
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/epo/IMtkEpoStatusListener;",
            ">;",
            "Lcom/mediatek/epo/IMtkEpoStatusListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 589
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/epo/IMtkEpoStatusListener;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 590
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/epo/IMtkEpoStatusListener;

    invoke-interface {v1}, Lcom/mediatek/epo/IMtkEpoStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p2}, Lcom/mediatek/epo/IMtkEpoStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 591
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 595
    :cond_0
    return-void

    .line 589
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private sendDataToAllListener(Ljava/util/List;I)V
    .locals 4
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/epo/IMtkEpoStatusListener;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 605
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/epo/IMtkEpoStatusListener;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 607
    :try_start_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/epo/IMtkEpoStatusListener;

    invoke-interface {v2, p2}, Lcom/mediatek/epo/IMtkEpoStatusListener;->onStatusChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 605
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 608
    :catch_0
    move-exception v0

    .line 609
    .local v0, e:Landroid/os/RemoteException;
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/epo/IMtkEpoStatusListener;

    invoke-direct {p0, p1, v2}, Lcom/mediatek/epo/MtkEpoClientManagerService;->removeListener(Ljava/util/List;Lcom/mediatek/epo/IMtkEpoStatusListener;)V

    .line 610
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WARNING: RemoteException e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " len="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/epo/MtkEpoClientManagerService;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 613
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method private sendMessageToStartDownload()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 442
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 443
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mDownloadHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 444
    iput v2, v0, Landroid/os/Message;->what:I

    .line 445
    iget-object v1, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mDownloadHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 446
    return-void
.end method

.method private sendStatusUpdate()V
    .locals 3

    .prologue
    .line 558
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.epo.STATUS_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 559
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "status"

    iget-boolean v2, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mEpoEnable:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 560
    const-string v1, "auto"

    iget-boolean v2, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mAutoUpdate:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 561
    iget-object v1, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 562
    return-void
.end method

.method private startEpoDownload()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 503
    const/4 v1, 0x1

    .line 504
    .local v1, ret:Z
    const-string/jumbo v2, "startEpoDownload ++"

    invoke-direct {p0, v2}, Lcom/mediatek/epo/MtkEpoClientManagerService;->log(Ljava/lang/String;)V

    .line 505
    invoke-direct {p0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->stopTimer()V

    .line 507
    const/16 v2, 0xc8

    invoke-direct {p0, v2}, Lcom/mediatek/epo/MtkEpoClientManagerService;->update2Mmi(I)V

    .line 510
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mRetryTimes:I

    if-ge v0, v2, :cond_0

    .line 511
    invoke-direct {p0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->epoDownload()Z

    move-result v1

    .line 512
    if-ne v1, v4, :cond_1

    .line 517
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "download ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/epo/MtkEpoClientManagerService;->log(Ljava/lang/String;)V

    .line 519
    iget-object v3, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 520
    :try_start_0
    iget-boolean v2, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mManualStop:Z

    if-ne v2, v4, :cond_2

    .line 521
    const/4 v2, 0x0

    iput v2, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mUpdateResult:I

    .line 522
    const/16 v2, 0xcb

    invoke-direct {p0, v2}, Lcom/mediatek/epo/MtkEpoClientManagerService;->update2Mmi(I)V

    .line 530
    :goto_1
    iget-boolean v2, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mAutoUpdate:Z

    if-ne v2, v4, :cond_4

    .line 531
    invoke-direct {p0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->startTimer()V

    .line 535
    :goto_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mManualStop:Z

    .line 536
    const/4 v2, 0x0

    iput v2, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mEpoStatus:I

    .line 537
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 538
    const/16 v2, 0x12c

    invoke-direct {p0, v2}, Lcom/mediatek/epo/MtkEpoClientManagerService;->update2Mmi(I)V

    .line 539
    const-string/jumbo v2, "startEpoDownload --"

    invoke-direct {p0, v2}, Lcom/mediatek/epo/MtkEpoClientManagerService;->log(Ljava/lang/String;)V

    .line 540
    return-void

    .line 514
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WARNING: retry download="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/epo/MtkEpoClientManagerService;->log(Ljava/lang/String;)V

    .line 510
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 523
    :cond_2
    if-ne v1, v4, :cond_3

    .line 524
    const/4 v2, 0x0

    :try_start_1
    iput v2, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mUpdateResult:I

    .line 525
    const/16 v2, 0xc9

    invoke-direct {p0, v2}, Lcom/mediatek/epo/MtkEpoClientManagerService;->update2Mmi(I)V

    goto :goto_1

    .line 537
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 527
    :cond_3
    const/4 v2, 0x1

    :try_start_2
    iput v2, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mUpdateResult:I

    .line 528
    const/16 v2, 0xca

    invoke-direct {p0, v2}, Lcom/mediatek/epo/MtkEpoClientManagerService;->update2Mmi(I)V

    goto :goto_1

    .line 533
    :cond_4
    invoke-direct {p0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->stopTimer()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method private startTimer()V
    .locals 6

    .prologue
    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "set timer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mUpdatePeriod:J

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sec"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->log(Ljava/lang/String;)V

    .line 203
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mTimerStatus:I

    .line 204
    iget-object v0, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mUpdatePeriod:J

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 205
    return-void
.end method

.method private stopTimer()V
    .locals 2

    .prologue
    .line 208
    const-string v0, "cancel timer"

    invoke-direct {p0, v0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->log(Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 210
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mTimerStatus:I

    .line 211
    return-void
.end method

.method private update2Mmi(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 550
    iput p1, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mCurrentProgress:I

    .line 552
    iget-object v0, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mListenerList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/mediatek/epo/MtkEpoClientManagerService;->sendDataToAllListener(Ljava/util/List;I)V

    .line 553
    return-void
.end method

.method private updateEpoFile2Mnl()Z
    .locals 3

    .prologue
    .line 358
    iget-object v1, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mContext:Landroid/content/Context;

    const-string v2, "location"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 361
    .local v0, locationManager:Landroid/location/LocationManager;
    invoke-virtual {v0}, Landroid/location/LocationManager;->updateEPOFile()I

    move-result v1

    if-eqz v1, :cond_0

    .line 362
    const-string v1, "ERR: updateEpoFile2Mnl failed"

    invoke-direct {p0, v1}, Lcom/mediatek/epo/MtkEpoClientManagerService;->loge(Ljava/lang/String;)V

    .line 363
    const/4 v1, 0x0

    .line 365
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addStatusListener(Lcom/mediatek/epo/IMtkEpoStatusListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 616
    iget-object v0, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mListenerList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/mediatek/epo/MtkEpoClientManagerService;->addListener(Ljava/util/List;Lcom/mediatek/epo/IMtkEpoStatusListener;)V

    .line 618
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[addStatusListener] len="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mListenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->log(Ljava/lang/String;)V

    .line 619
    return-void
.end method

.method public disable()V
    .locals 1

    .prologue
    .line 713
    const-string v0, "[disable]"

    invoke-direct {p0, v0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->log(Ljava/lang/String;)V

    .line 714
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mEpoEnable:Z

    .line 715
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mManualStop:Z

    .line 716
    invoke-direct {p0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->stopTimer()V

    .line 717
    invoke-direct {p0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->sendStatusUpdate()V

    .line 718
    return-void
.end method

.method public enable()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 705
    const-string v0, "[enable]"

    invoke-direct {p0, v0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->log(Ljava/lang/String;)V

    .line 706
    iput-boolean v1, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mEpoEnable:Z

    .line 707
    iget-boolean v0, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mAutoUpdate:Z

    if-ne v0, v1, :cond_0

    .line 708
    invoke-direct {p0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->checkBeforeStartTimer()V

    .line 710
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->sendStatusUpdate()V

    .line 711
    return-void
.end method

.method public enableAutoDownload(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    const/4 v2, 0x1

    .line 565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[enableAutoDownload] enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->log(Ljava/lang/String;)V

    .line 566
    iput-boolean p1, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mAutoUpdate:Z

    .line 567
    if-ne p1, v2, :cond_1

    iget-boolean v0, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mEpoEnable:Z

    if-ne v0, v2, :cond_1

    .line 568
    iget v0, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mTimerStatus:I

    if-nez v0, :cond_0

    .line 569
    invoke-direct {p0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->checkBeforeStartTimer()V

    .line 576
    :goto_0
    invoke-direct {p0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->sendStatusUpdate()V

    .line 577
    return-void

    .line 571
    :cond_0
    const-string v0, "WARNING: timer is already running"

    invoke-direct {p0, v0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 574
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->stopTimer()V

    goto :goto_0
.end method

.method public extraCommand(Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 3
    .parameter "cmd"
    .parameter "extra"

    .prologue
    .line 684
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[extraCommand] cmd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/epo/MtkEpoClientManagerService;->log(Ljava/lang/String;)V

    .line 686
    const-string v1, "USING_XML"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 687
    new-instance v0, Lcom/mediatek/epo/MtkEpoXmlLoader;

    invoke-direct {v0}, Lcom/mediatek/epo/MtkEpoXmlLoader;-><init>()V

    .line 688
    .local v0, epoXmlLoader:Lcom/mediatek/epo/MtkEpoXmlLoader;
    const-string v1, "/etc/epo_conf.xml"

    invoke-virtual {v0, v1}, Lcom/mediatek/epo/MtkEpoXmlLoader;->updateEpoProfile(Ljava/lang/String;)V

    .line 689
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/epo/MtkEpoClientManagerService;->log(Ljava/lang/String;)V

    .line 691
    invoke-virtual {v0}, Lcom/mediatek/epo/MtkEpoXmlLoader;->getEpoEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 692
    invoke-virtual {p0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->enable()V

    .line 694
    :cond_0
    invoke-virtual {v0}, Lcom/mediatek/epo/MtkEpoXmlLoader;->getAutoEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 695
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/mediatek/epo/MtkEpoClientManagerService;->enableAutoDownload(Z)V

    .line 698
    :cond_1
    invoke-virtual {v0}, Lcom/mediatek/epo/MtkEpoXmlLoader;->getUpdatePeriod()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mUpdatePeriod:J

    .line 701
    .end local v0           #epoXmlLoader:Lcom/mediatek/epo/MtkEpoXmlLoader;
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public getAutoDownloadStatus()Z
    .locals 1

    .prologue
    .line 628
    iget-boolean v0, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mAutoUpdate:Z

    return v0
.end method

.method public getEpoFileInfo()Lcom/mediatek/epo/MtkEpoFileInfo;
    .locals 5

    .prologue
    .line 632
    iget-object v3, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mContext:Landroid/content/Context;

    const-string v4, "location"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    .line 634
    .local v1, locationManager:Landroid/location/LocationManager;
    const/4 v3, 0x3

    new-array v2, v3, [J

    .line 635
    .local v2, times:[J
    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getFileTime([J)I

    move-result v3

    if-eqz v3, :cond_0

    .line 636
    const-string v3, "ERR: getFileTime failure"

    invoke-direct {p0, v3}, Lcom/mediatek/epo/MtkEpoClientManagerService;->log(Ljava/lang/String;)V

    .line 637
    const/4 v0, 0x0

    .line 643
    :goto_0
    return-object v0

    .line 639
    :cond_0
    new-instance v0, Lcom/mediatek/epo/MtkEpoFileInfo;

    invoke-direct {v0}, Lcom/mediatek/epo/MtkEpoFileInfo;-><init>()V

    .line 640
    .local v0, fileInfo:Lcom/mediatek/epo/MtkEpoFileInfo;
    const/4 v3, 0x0

    aget-wide v3, v2, v3

    iput-wide v3, v0, Lcom/mediatek/epo/MtkEpoFileInfo;->startTime:J

    .line 641
    const/4 v3, 0x1

    aget-wide v3, v2, v3

    iput-wide v3, v0, Lcom/mediatek/epo/MtkEpoFileInfo;->downloadTime:J

    .line 642
    const/4 v3, 0x2

    aget-wide v3, v2, v3

    iput-wide v3, v0, Lcom/mediatek/epo/MtkEpoFileInfo;->expireTime:J

    goto :goto_0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 724
    iget v0, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mCurrentProgress:I

    return v0
.end method

.method public getStatus()Z
    .locals 1

    .prologue
    .line 720
    iget-boolean v0, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mEpoEnable:Z

    return v0
.end method

.method public getUpdatePeriod()J
    .locals 2

    .prologue
    .line 665
    iget-wide v0, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mUpdatePeriod:J

    return-wide v0
.end method

.method public removeStatusListener(Lcom/mediatek/epo/IMtkEpoStatusListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 622
    iget-object v0, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mListenerList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/mediatek/epo/MtkEpoClientManagerService;->removeListener(Ljava/util/List;Lcom/mediatek/epo/IMtkEpoStatusListener;)V

    .line 624
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[removeStatusListener] len="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mListenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->log(Ljava/lang/String;)V

    .line 625
    return-void
.end method

.method public setProfile(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "addr"
    .parameter "port"
    .parameter "userName"
    .parameter "password"

    .prologue
    .line 677
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setProfile] addr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " port="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " userName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " password="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->log(Ljava/lang/String;)V

    .line 678
    iput-object p1, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mProfileAddr:Ljava/lang/String;

    .line 679
    iput p2, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mProfilePort:I

    .line 680
    iput-object p3, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mProfileUserName:Ljava/lang/String;

    .line 681
    iput-object p4, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mProfilePassword:Ljava/lang/String;

    .line 682
    return-void
.end method

.method public setRetryTimes(I)V
    .locals 2
    .parameter "times"

    .prologue
    .line 673
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setRetryTimes] times="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->log(Ljava/lang/String;)V

    .line 674
    iput p1, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mRetryTimes:I

    .line 675
    return-void
.end method

.method public setTimeout(I)V
    .locals 2
    .parameter "timeout"

    .prologue
    .line 669
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setTimeout] timeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->log(Ljava/lang/String;)V

    .line 670
    iput p1, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mTimeout:I

    .line 671
    return-void
.end method

.method public setUpdatePeriod(J)V
    .locals 2
    .parameter "interval"

    .prologue
    .line 657
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setUpdatePeriod] interval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->log(Ljava/lang/String;)V

    .line 658
    iput-wide p1, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mUpdatePeriod:J

    .line 660
    iget-boolean v0, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mAutoUpdate:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 661
    invoke-direct {p0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->startTimer()V

    .line 663
    :cond_0
    return-void
.end method

.method public startDownload()I
    .locals 1

    .prologue
    .line 648
    const-string v0, "[startDownload]"

    invoke-direct {p0, v0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->log(Ljava/lang/String;)V

    .line 649
    invoke-direct {p0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->checkBeforeDownload()I

    move-result v0

    return v0
.end method

.method public stopDownload()V
    .locals 1

    .prologue
    .line 652
    const-string v0, "[stopDownload]"

    invoke-direct {p0, v0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->log(Ljava/lang/String;)V

    .line 653
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mManualStop:Z

    .line 654
    return-void
.end method
