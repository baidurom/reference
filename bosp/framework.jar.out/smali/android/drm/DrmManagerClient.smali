.class public Landroid/drm/DrmManagerClient;
.super Ljava/lang/Object;
.source "DrmManagerClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/drm/DrmManagerClient$DrmOperationListener;,
        Landroid/drm/DrmManagerClient$InfoHandler;,
        Landroid/drm/DrmManagerClient$EventHandler;,
        Landroid/drm/DrmManagerClient$OnErrorListener;,
        Landroid/drm/DrmManagerClient$OnEventListener;,
        Landroid/drm/DrmManagerClient$OnInfoListener;
    }
.end annotation


# static fields
.field private static final ACTION_PROCESS_DRM_INFO:I = 0x3ea

.field private static final ACTION_REMOVE_ALL_RIGHTS:I = 0x3e9

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_UNKNOWN:I = -0x7d0

.field private static final TAG:Ljava/lang/String; = "DrmManagerClient"

.field private static mMTKDrmEable:Ljava/lang/Boolean;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

.field private mInfoHandler:Landroid/drm/DrmManagerClient$InfoHandler;

.field private mNativeContext:I

.field private mOnErrorListener:Landroid/drm/DrmManagerClient$OnErrorListener;

.field private mOnEventListener:Landroid/drm/DrmManagerClient$OnEventListener;

.field private mOnInfoListener:Landroid/drm/DrmManagerClient$OnInfoListener;

.field private mUniqueId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    const-string v0, "drmframework_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 1973
    const/4 v0, 0x0

    sput-object v0, Landroid/drm/DrmManagerClient;->mMTKDrmEable:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    iput-object p1, p0, Landroid/drm/DrmManagerClient;->mContext:Landroid/content/Context;

    .line 265
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "DrmManagerClient.InfoHandler"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 266
    .local v1, infoThread:Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 267
    new-instance v2, Landroid/drm/DrmManagerClient$InfoHandler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Landroid/drm/DrmManagerClient$InfoHandler;-><init>(Landroid/drm/DrmManagerClient;Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/drm/DrmManagerClient;->mInfoHandler:Landroid/drm/DrmManagerClient$InfoHandler;

    .line 269
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "DrmManagerClient.EventHandler"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 270
    .local v0, eventThread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 271
    new-instance v2, Landroid/drm/DrmManagerClient$EventHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Landroid/drm/DrmManagerClient$EventHandler;-><init>(Landroid/drm/DrmManagerClient;Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    .line 274
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v2}, Landroid/drm/DrmManagerClient;->_initialize(Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    .line 275
    const-string v2, "DrmManagerClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DrmManagerClient(), create instance, mUniqueId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", active_thread_count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/ThreadGroup;->activeCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    return-void
.end method

.method private native _acquireDrmInfo(ILandroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;
.end method

.method private native _canHandle(ILjava/lang/String;Ljava/lang/String;)Z
.end method

.method private native _checkRightsStatus(ILjava/lang/String;I)I
.end method

.method private static native _checkSecureTimerStatus()Z
.end method

.method private native _closeConvertSession(II)Landroid/drm/DrmConvertedStatus;
.end method

.method private native _consume(ILjava/lang/String;I)I
.end method

.method private native _convertData(II[B)Landroid/drm/DrmConvertedStatus;
.end method

.method private native _finalize(I)V
.end method

.method private native _getAllSupportInfo(I)[Landroid/drm/DrmSupportInfo;
.end method

.method private native _getConstraints(ILjava/lang/String;I)Landroid/content/ContentValues;
.end method

.method private native _getContentIdFromRights(ILandroid/drm/DrmRights;)Ljava/lang/String;
.end method

.method private static native _getDeviceId()Ljava/lang/String;
.end method

.method private native _getDrmObjectType(ILjava/lang/String;Ljava/lang/String;)I
.end method

.method private native _getMetadata(ILjava/lang/String;)Landroid/content/ContentValues;
.end method

.method private native _getOriginalMimeType(ILjava/lang/String;)Ljava/lang/String;
.end method

.method private static native _getSecureTime()I
.end method

.method private native _initialize(Ljava/lang/Object;)I
.end method

.method private native _installDrmEngine(ILjava/lang/String;)V
.end method

.method private native _installDrmMsg(ILjava/lang/String;)I
.end method

.method private static native _loadClock()I
.end method

.method private native _openConvertSession(ILjava/lang/String;)I
.end method

.method private native _processDrmInfo(ILandroid/drm/DrmInfo;)Landroid/drm/DrmInfoStatus;
.end method

.method private native _removeAllRights(I)I
.end method

.method private native _removeRights(ILjava/lang/String;)I
.end method

.method private static native _saveClock()I
.end method

.method private static native _saveDeviceId(Ljava/lang/String;)I
.end method

.method private static native _saveIMEI(Ljava/lang/String;)I
.end method

.method private native _saveRO(ILandroid/drm/DrmRights;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native _saveRights(ILandroid/drm/DrmRights;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static native _updateClock(I)I
.end method

.method private static native _updateClockBase()I
.end method

.method private static native _updateClockOffset()I
.end method

.method static synthetic access$000(Landroid/drm/DrmManagerClient;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    return v0
.end method

.method static synthetic access$100(Landroid/drm/DrmManagerClient;ILandroid/drm/DrmInfo;)Landroid/drm/DrmInfoStatus;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Landroid/drm/DrmManagerClient;->_processDrmInfo(ILandroid/drm/DrmInfo;)Landroid/drm/DrmInfoStatus;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroid/drm/DrmManagerClient;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->getEventType(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroid/drm/DrmManagerClient;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->getErrorType(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroid/drm/DrmManagerClient;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->_removeAllRights(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnEventListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mOnEventListener:Landroid/drm/DrmManagerClient$OnEventListener;

    return-object v0
.end method

.method static synthetic access$600(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnErrorListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mOnErrorListener:Landroid/drm/DrmManagerClient$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$700(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnInfoListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mOnInfoListener:Landroid/drm/DrmManagerClient$OnInfoListener;

    return-object v0
.end method

.method public static checkSecureTimerStatus()Z
    .locals 1

    .prologue
    .line 1043
    invoke-static {}, Landroid/drm/DrmManagerClient;->_checkSecureTimerStatus()Z

    move-result v0

    return v0
.end method

.method private convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;
    .locals 11
    .parameter "uri"

    .prologue
    .line 792
    const/4 v8, 0x0

    .line 793
    .local v8, path:Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 794
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    .line 795
    .local v10, scheme:Ljava/lang/String;
    if-eqz v10, :cond_0

    const-string v0, ""

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "file"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 797
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    .line 826
    .end local v10           #scheme:Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v8

    .line 799
    .restart local v10       #scheme:Ljava/lang/String;
    :cond_2
    const-string v0, "http"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 800
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 802
    :cond_3
    const-string v0, "content"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 803
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 804
    .local v2, projection:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 806
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 808
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_6

    .line 809
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given Uri could not be found in media store"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 814
    :catch_0
    move-exception v7

    .line 815
    .local v7, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given Uri is not formatted in a way so that it can be found in media store."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 818
    .end local v7           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 819
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 812
    :cond_6
    :try_start_2
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 813
    .local v9, pathIndex:I
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v8

    .line 818
    if-eqz v6, :cond_1

    .line 819
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 823
    .end local v2           #projection:[Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v9           #pathIndex:I
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given Uri scheme is not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1033
    invoke-static {}, Landroid/drm/DrmManagerClient;->_getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getErrorType(I)I
    .locals 1
    .parameter "infoType"

    .prologue
    .line 770
    const/4 v0, -0x1

    .line 772
    .local v0, error:I
    packed-switch p1, :pswitch_data_0

    .line 779
    :goto_0
    return v0

    .line 776
    :pswitch_0
    const/16 v0, 0x7d6

    goto :goto_0

    .line 772
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getEventType(I)I
    .locals 1
    .parameter "infoType"

    .prologue
    .line 757
    const/4 v0, -0x1

    .line 759
    .local v0, eventType:I
    packed-switch p1, :pswitch_data_0

    .line 766
    :goto_0
    return v0

    .line 763
    :pswitch_0
    const/16 v0, 0x3ea

    goto :goto_0

    .line 759
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getSecureTime()I
    .locals 1

    .prologue
    .line 1087
    invoke-static {}, Landroid/drm/DrmManagerClient;->loadClock()I

    .line 1088
    invoke-static {}, Landroid/drm/DrmManagerClient;->_getSecureTime()I

    move-result v0

    return v0
.end method

.method public static isMTKDrmEnable()Z
    .locals 2

    .prologue
    .line 1979
    sget-object v0, Landroid/drm/DrmManagerClient;->mMTKDrmEable:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 1980
    const-string/jumbo v0, "ro.drm.enable"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/drm/DrmManagerClient;->mMTKDrmEable:Ljava/lang/Boolean;

    .line 1982
    :cond_0
    sget-object v0, Landroid/drm/DrmManagerClient;->mMTKDrmEable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static loadClock()I
    .locals 1

    .prologue
    .line 1078
    invoke-static {}, Landroid/drm/DrmManagerClient;->_loadClock()I

    move-result v0

    return v0
.end method

.method public static notify(Ljava/lang/Object;IILjava/lang/String;)V
    .locals 4
    .parameter "thisReference"
    .parameter "uniqueId"
    .parameter "infoType"
    .parameter "message"

    .prologue
    .line 194
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/drm/DrmManagerClient;

    .line 196
    .local v0, instance:Landroid/drm/DrmManagerClient;
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/drm/DrmManagerClient;->mInfoHandler:Landroid/drm/DrmManagerClient$InfoHandler;

    if-eqz v2, :cond_0

    .line 197
    iget-object v2, v0, Landroid/drm/DrmManagerClient;->mInfoHandler:Landroid/drm/DrmManagerClient$InfoHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, p1, p2, p3}, Landroid/drm/DrmManagerClient$InfoHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 199
    .local v1, m:Landroid/os/Message;
    iget-object v2, v0, Landroid/drm/DrmManagerClient;->mInfoHandler:Landroid/drm/DrmManagerClient$InfoHandler;

    invoke-virtual {v2, v1}, Landroid/drm/DrmManagerClient$InfoHandler;->sendMessage(Landroid/os/Message;)Z

    .line 201
    .end local v1           #m:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public static saveClock()I
    .locals 1

    .prologue
    .line 1071
    invoke-static {}, Landroid/drm/DrmManagerClient;->_saveClock()I

    move-result v0

    return v0
.end method

.method public static saveDeviceId(Ljava/lang/String;)I
    .locals 2
    .parameter "id"

    .prologue
    .line 1022
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1023
    :cond_0
    const-string v0, "DrmManagerClient"

    const-string/jumbo v1, "saveDeviceId() : Given device id invalid"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    const/4 v0, -0x1

    .line 1026
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Landroid/drm/DrmManagerClient;->_saveDeviceId(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static saveIMEI(Ljava/lang/String;)I
    .locals 3
    .parameter "imei"

    .prologue
    .line 1010
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1011
    :cond_0
    const-string v0, "DrmManagerClient"

    const-string/jumbo v1, "saveIMEI() : Given IMEI number should be non null and valid"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    const/4 v0, -0x1

    .line 1015
    :goto_0
    return v0

    .line 1014
    :cond_1
    const-string v0, "DrmManagerClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saveIMEI() : IMEI number of this device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    invoke-static {p0}, Landroid/drm/DrmManagerClient;->_saveIMEI(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static showConsume(Landroid/content/Context;Landroid/drm/DrmManagerClient$DrmOperationListener;)V
    .locals 5
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 1220
    const-string v2, "DrmManagerClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "showConsume() : ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1223
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, #string@ok#t

    new-instance v3, Landroid/drm/DrmManagerClient$3;

    invoke-direct {v3, p1}, Landroid/drm/DrmManagerClient$3;-><init>(Landroid/drm/DrmManagerClient$DrmOperationListener;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1232
    const/high16 v2, 0x104

    new-instance v3, Landroid/drm/DrmManagerClient$4;

    invoke-direct {v3, p1}, Landroid/drm/DrmManagerClient$4;-><init>(Landroid/drm/DrmManagerClient$DrmOperationListener;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1241
    const v2, #drawable@ic_dialog_info#t

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x20500be

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x20500bf

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1245
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1246
    .local v1, dialog:Landroid/app/AlertDialog;
    new-instance v2, Landroid/drm/DrmManagerClient$5;

    invoke-direct {v2, p1}, Landroid/drm/DrmManagerClient$5;-><init>(Landroid/drm/DrmManagerClient$DrmOperationListener;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1255
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1256
    return-void
.end method

.method public static showConsumeDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 4
    .parameter "context"
    .parameter "listener"
    .parameter "dismissListener"

    .prologue
    .line 1196
    const-string v2, "DrmManagerClient"

    const-string/jumbo v3, "showConsumeDialog()"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1199
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, #string@ok#t

    invoke-virtual {v0, v2, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1200
    const/high16 v2, 0x104

    invoke-virtual {v0, v2, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1201
    const v2, #drawable@ic_dialog_info#t

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x20500be

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x20500bf

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1205
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1206
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1, p2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1208
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1209
    return-void
.end method

.method public static showForwardForbiddenDialog(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 1155
    const v0, #drawable@ic_dialog_info#t

    invoke-static {p0, v0}, Landroid/drm/DrmManagerClient;->showForwardForbiddenDialog(Landroid/content/Context;I)V

    .line 1156
    return-void
.end method

.method public static showForwardForbiddenDialog(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "iconId"

    .prologue
    .line 1166
    const-string v2, "DrmManagerClient"

    const-string/jumbo v3, "showForwardForbiddenDialog()"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1169
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, #string@ok#t

    new-instance v3, Landroid/drm/DrmManagerClient$2;

    invoke-direct {v3}, Landroid/drm/DrmManagerClient$2;-><init>()V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1176
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x20500b8

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x20500b9

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1180
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1181
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1182
    return-void
.end method

.method public static showSecureTimerInvalid(Landroid/content/Context;Landroid/drm/DrmManagerClient$DrmOperationListener;)V
    .locals 5
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 1126
    const-string v2, "DrmManagerClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "showSecureTimerInvalid() : ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1129
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, #string@ok#t

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1130
    const v2, #drawable@ic_dialog_info#t

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x20500bc

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x20500bd

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1134
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1135
    .local v1, dialog:Landroid/app/AlertDialog;
    new-instance v2, Landroid/drm/DrmManagerClient$1;

    invoke-direct {v2, p1}, Landroid/drm/DrmManagerClient$1;-><init>(Landroid/drm/DrmManagerClient$DrmOperationListener;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1144
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1145
    return-void
.end method

.method public static showSecureTimerInvalidDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 4
    .parameter "context"
    .parameter "clickListener"
    .parameter "dismissListener"

    .prologue
    .line 1103
    const-string v2, "DrmManagerClient"

    const-string/jumbo v3, "showSecureTimerInvalidDialog()"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1106
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, #string@ok#t

    invoke-virtual {v0, v2, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1107
    const v2, #drawable@ic_dialog_info#t

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x20500bc

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x20500bd

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1111
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1112
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1, p2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1114
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1115
    return-void
.end method

.method private toDateTimeString(Ljava/lang/Long;)Ljava/lang/String;
    .locals 7
    .parameter "sec"

    .prologue
    .line 1964
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    invoke-direct {v0, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 1965
    .local v0, date:Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1}, Ljava/text/SimpleDateFormat;-><init>()V

    .line 1966
    .local v1, dateFormat:Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 1967
    .local v2, str:Ljava/lang/String;
    return-object v2
.end method

.method public static updateClock(I)I
    .locals 1
    .parameter "value"

    .prologue
    .line 1064
    invoke-static {p0}, Landroid/drm/DrmManagerClient;->_updateClock(I)I

    move-result v0

    return v0
.end method

.method public static updateClockBase()I
    .locals 1

    .prologue
    .line 1050
    invoke-static {}, Landroid/drm/DrmManagerClient;->_updateClockBase()I

    move-result v0

    return v0
.end method

.method public static updateClockOffset()I
    .locals 1

    .prologue
    .line 1057
    invoke-static {}, Landroid/drm/DrmManagerClient;->_updateClockOffset()I

    move-result v0

    return v0
.end method


# virtual methods
.method public acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;
    .locals 2
    .parameter "drmInfoRequest"

    .prologue
    .line 500
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/drm/DrmInfoRequest;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 501
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given drmInfoRequest is invalid/null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 503
    :cond_1
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1}, Landroid/drm/DrmManagerClient;->_acquireDrmInfo(ILandroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v0

    return-object v0
.end method

.method public acquireRights(Landroid/drm/DrmInfoRequest;)I
    .locals 2
    .parameter "drmInfoRequest"

    .prologue
    .line 521
    invoke-virtual {p0, p1}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v0

    .line 522
    .local v0, drmInfo:Landroid/drm/DrmInfo;
    if-nez v0, :cond_0

    .line 523
    const/16 v1, -0x7d0

    .line 525
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, v0}, Landroid/drm/DrmManagerClient;->processDrmInfo(Landroid/drm/DrmInfo;)I

    move-result v1

    goto :goto_0
.end method

.method public canHandle(Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 2
    .parameter "uri"
    .parameter "mimeType"

    .prologue
    .line 467
    if-eqz p1, :cond_0

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v0, p1, :cond_2

    :cond_0
    if-eqz p2, :cond_1

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 468
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Uri or the mimetype should be non null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 470
    :cond_2
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public canHandle(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "path"
    .parameter "mimeType"

    .prologue
    .line 452
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    if-eqz p2, :cond_1

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 453
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Path or the mimetype should be non null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 455
    :cond_2
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1, p2}, Landroid/drm/DrmManagerClient;->_canHandle(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public checkRightsStatus(Landroid/net/Uri;)I
    .locals 2
    .parameter "uri"

    .prologue
    .line 618
    if-eqz p1, :cond_0

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v0, p1, :cond_1

    .line 619
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given uri is not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 621
    :cond_1
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public checkRightsStatus(Landroid/net/Uri;I)I
    .locals 2
    .parameter "uri"
    .parameter "action"

    .prologue
    .line 655
    if-eqz p1, :cond_0

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v0, p1, :cond_1

    .line 656
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given uri is not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 658
    :cond_1
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public checkRightsStatus(Ljava/lang/String;)I
    .locals 1
    .parameter "path"

    .prologue
    .line 606
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public checkRightsStatus(Ljava/lang/String;I)I
    .locals 3
    .parameter "path"
    .parameter "action"

    .prologue
    .line 634
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/drm/DrmStore$Action;->isValid(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 635
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Given path or action is not valid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 637
    :cond_1
    iget v1, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v1, p1, p2}, Landroid/drm/DrmManagerClient;->_checkRightsStatus(ILjava/lang/String;I)I

    move-result v0

    .line 638
    .local v0, result:I
    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 639
    const-string v1, "DrmManagerClient"

    const-string v2, "checkRightsStatus() : secure timer indicates invalid state"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    const/4 v0, 0x1

    .line 642
    :cond_2
    return v0
.end method

.method public checkRightsStatusForTap(Landroid/net/Uri;I)I
    .locals 2
    .parameter "uri"
    .parameter "action"

    .prologue
    .line 1951
    if-eqz p1, :cond_0

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v0, p1, :cond_1

    .line 1952
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given uri is not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1954
    :cond_1
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/drm/DrmManagerClient;->checkRightsStatusForTap(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public checkRightsStatusForTap(Ljava/lang/String;I)I
    .locals 4
    .parameter "path"
    .parameter "action"

    .prologue
    .line 1925
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/drm/DrmStore$Action;->isValid(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1926
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Given path or action is not valid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1928
    :cond_1
    const-string v1, "DrmManagerClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkRightsStatusForTap(): java api. path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mContext="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/drm/DrmManagerClient;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1930
    iget v1, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v1, p1, p2}, Landroid/drm/DrmManagerClient;->_checkRightsStatus(ILjava/lang/String;I)I

    move-result v0

    .line 1931
    .local v0, result:I
    const-string v1, "DrmManagerClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkRightsStatusForTap(): java api. the result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1933
    return v0
.end method

.method public closeConvertSession(I)Landroid/drm/DrmConvertedStatus;
    .locals 1
    .parameter "convertId"

    .prologue
    .line 753
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1}, Landroid/drm/DrmManagerClient;->_closeConvertSession(II)Landroid/drm/DrmConvertedStatus;

    move-result-object v0

    return-object v0
.end method

.method public consume(Landroid/net/Uri;I)I
    .locals 6
    .parameter "uri"
    .parameter "action"

    .prologue
    const/16 v2, -0x7d0

    .line 976
    if-eqz p1, :cond_0

    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-eq v3, p1, :cond_0

    invoke-static {p2}, Landroid/drm/DrmStore$Action;->isValid(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 977
    :cond_0
    const-string v3, "DrmManagerClient"

    const-string v4, "consume() : Given uri or action is not valid"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    :goto_0
    return v2

    .line 981
    :cond_1
    const/4 v1, 0x0

    .line 983
    .local v1, path:Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 988
    invoke-virtual {p0, v1, p2}, Landroid/drm/DrmManagerClient;->consume(Ljava/lang/String;I)I

    move-result v2

    goto :goto_0

    .line 984
    :catch_0
    move-exception v0

    .line 985
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v3, "DrmManagerClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "consume() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public consume(Ljava/lang/String;I)I
    .locals 2
    .parameter "path"
    .parameter "action"

    .prologue
    .line 999
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/drm/DrmStore$Action;->isValid(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1000
    :cond_0
    const-string v0, "DrmManagerClient"

    const-string v1, "consume() : Given path should be non null or action is not valid"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    const/16 v0, -0x7d0

    .line 1003
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1, p2}, Landroid/drm/DrmManagerClient;->_consume(ILjava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public convertData(I[B)Landroid/drm/DrmConvertedStatus;
    .locals 2
    .parameter "convertId"
    .parameter "inputData"

    .prologue
    .line 735
    if-eqz p2, :cond_0

    array-length v0, p2

    if-gtz v0, :cond_1

    .line 736
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given inputData should be non null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 738
    :cond_1
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1, p2}, Landroid/drm/DrmManagerClient;->_convertData(II[B)Landroid/drm/DrmConvertedStatus;

    move-result-object v0

    return-object v0
.end method

.method protected finalize()V
    .locals 3

    .prologue
    .line 282
    const-string v0, "DrmManagerClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finalize(), release DrmManagerClient instance. mUniqueId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0}, Landroid/drm/DrmManagerClient;->_finalize(I)V

    .line 284
    return-void
.end method

.method public getAvailableDrmEngines()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 329
    iget v4, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v4}, Landroid/drm/DrmManagerClient;->_getAllSupportInfo(I)[Landroid/drm/DrmSupportInfo;

    move-result-object v3

    .line 330
    .local v3, supportInfos:[Landroid/drm/DrmSupportInfo;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 332
    .local v0, descriptions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 333
    aget-object v4, v3, v2

    invoke-virtual {v4}, Landroid/drm/DrmSupportInfo;->getDescriprition()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 336
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v1, v4, [Ljava/lang/String;

    .line 337
    .local v1, drmEngines:[Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    return-object v4
.end method

.method public getConstraints(Landroid/net/Uri;I)Landroid/content/ContentValues;
    .locals 2
    .parameter "uri"
    .parameter "action"

    .prologue
    .line 381
    if-eqz p1, :cond_0

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v0, p1, :cond_1

    .line 382
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Uri should be non null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 384
    :cond_1
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/drm/DrmManagerClient;->getConstraints(Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public getConstraints(Ljava/lang/String;I)Landroid/content/ContentValues;
    .locals 2
    .parameter "path"
    .parameter "action"

    .prologue
    .line 350
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/drm/DrmStore$Action;->isValid(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 351
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given usage or path is invalid/null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 353
    :cond_1
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1, p2}, Landroid/drm/DrmManagerClient;->_getConstraints(ILjava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public getContentIdFromRights(Landroid/drm/DrmRights;)Ljava/lang/String;
    .locals 1
    .parameter "drmRights"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 927
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1}, Landroid/drm/DrmManagerClient;->_getContentIdFromRights(ILandroid/drm/DrmRights;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDrmObjectType(Landroid/net/Uri;Ljava/lang/String;)I
    .locals 4
    .parameter "uri"
    .parameter "mimeType"

    .prologue
    .line 556
    if-eqz p1, :cond_0

    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v2, p1, :cond_2

    :cond_0
    if-eqz p2, :cond_1

    const-string v2, ""

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 557
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Uri or the mimetype should be non null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 559
    :cond_2
    const-string v1, ""

    .line 561
    .local v1, path:Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 566
    :goto_0
    invoke-virtual {p0, v1, p2}, Landroid/drm/DrmManagerClient;->getDrmObjectType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    return v2

    .line 562
    :catch_0
    move-exception v0

    .line 564
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "DrmManagerClient"

    const-string v3, "Given Uri could not be found in media store"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getDrmObjectType(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "path"
    .parameter "mimeType"

    .prologue
    .line 539
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    if-eqz p2, :cond_1

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 540
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Path or the mimetype should be non null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 542
    :cond_2
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1, p2}, Landroid/drm/DrmManagerClient;->_getDrmObjectType(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getMetadata(Landroid/net/Uri;)Landroid/content/ContentValues;
    .locals 2
    .parameter "uri"

    .prologue
    .line 396
    if-eqz p1, :cond_0

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v0, p1, :cond_1

    .line 397
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Uri should be non null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 399
    :cond_1
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/drm/DrmManagerClient;->getMetadata(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public getMetadata(Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 2
    .parameter "path"

    .prologue
    .line 365
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 366
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given path is invalid/null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 368
    :cond_1
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1}, Landroid/drm/DrmManagerClient;->_getMetadata(ILjava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public getMethod(Landroid/net/Uri;)I
    .locals 2
    .parameter "uri"

    .prologue
    .line 1882
    if-eqz p1, :cond_0

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v0, p1, :cond_1

    .line 1883
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given uri is not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1885
    :cond_1
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/drm/DrmManagerClient;->getMethod(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getMethod(Ljava/lang/String;)I
    .locals 4
    .parameter "path"

    .prologue
    .line 1896
    if-eqz p1, :cond_0

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1897
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Given path should be non null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1900
    :cond_1
    invoke-virtual {p0, p1}, Landroid/drm/DrmManagerClient;->getMetadata(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 1901
    .local v0, cv:Landroid/content/ContentValues;
    if-eqz v0, :cond_2

    const-string v2, "drm_method"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1902
    const-string v2, "drm_method"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 1903
    .local v1, m:Ljava/lang/Integer;
    if-eqz v1, :cond_2

    .line 1904
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1907
    .end local v1           #m:Ljava/lang/Integer;
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getOriginalMimeType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .parameter "uri"

    .prologue
    .line 591
    if-eqz p1, :cond_0

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v0, p1, :cond_1

    .line 592
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given uri is not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 594
    :cond_1
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "path"

    .prologue
    .line 577
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 578
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given path should be non null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 580
    :cond_1
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1}, Landroid/drm/DrmManagerClient;->_getOriginalMimeType(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public installDrmEngine(Ljava/lang/String;)V
    .locals 3
    .parameter "engineFilePath"

    .prologue
    .line 436
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 437
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Given engineFilePath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "is not valid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 440
    :cond_1
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1}, Landroid/drm/DrmManagerClient;->_installDrmEngine(ILjava/lang/String;)V

    .line 441
    return-void
.end method

.method public installDrmMsg(Landroid/net/Uri;)I
    .locals 6
    .parameter "uri"

    .prologue
    const/16 v2, -0x7d0

    .line 938
    if-eqz p1, :cond_0

    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v3, p1, :cond_1

    .line 939
    :cond_0
    const-string v3, "DrmManagerClient"

    const-string v4, "installDrmMsg() : Given uri is not valid"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    :goto_0
    return v2

    .line 943
    :cond_1
    const/4 v1, 0x0

    .line 945
    .local v1, path:Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 950
    invoke-virtual {p0, v1}, Landroid/drm/DrmManagerClient;->installDrmMsg(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 946
    :catch_0
    move-exception v0

    .line 947
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v3, "DrmManagerClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "installDrmMsg() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public installDrmMsg(Ljava/lang/String;)I
    .locals 2
    .parameter "path"

    .prologue
    .line 961
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 962
    :cond_0
    const-string v0, "DrmManagerClient"

    const-string v1, "installDrmMsg() : Given path should be non null"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    const/16 v0, -0x7d0

    .line 965
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1}, Landroid/drm/DrmManagerClient;->_installDrmMsg(ILjava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public openConvertSession(Ljava/lang/String;)I
    .locals 2
    .parameter "mimeType"

    .prologue
    .line 715
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 716
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Path or the mimeType should be non null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 718
    :cond_1
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1}, Landroid/drm/DrmManagerClient;->_openConvertSession(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public overlayBitmap(Landroid/content/res/Resources;II)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "res"
    .parameter "bgdBmpId"
    .parameter "frontId"

    .prologue
    .line 1758
    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1759
    .local v0, bgdBmp:Landroid/graphics/Bitmap;
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1760
    .local v2, front:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0, v2}, Landroid/drm/DrmManagerClient;->overlayBitmap(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1761
    .local v1, bmp:Landroid/graphics/Bitmap;
    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1762
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1763
    const/4 v0, 0x0

    .line 1765
    :cond_0
    return-object v1
.end method

.method public overlayBitmap(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "bgdBmp"
    .parameter "front"

    .prologue
    .line 1731
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1732
    :cond_0
    const-string v7, "DrmManagerClient"

    const-string/jumbo v8, "overlayBitmap() : Given background / front pic is null."

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1733
    const/4 v0, 0x0

    .line 1745
    :goto_0
    return-object v0

    .line 1736
    :cond_1
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v8, 0x1

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1737
    .local v0, bMutable:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1738
    .local v3, overlayCanvas:Landroid/graphics/Canvas;
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 1739
    .local v5, overlayWidth:I
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 1740
    .local v4, overlayHeight:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    sub-int v1, v7, v5

    .line 1741
    .local v1, left:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sub-int v6, v7, v4

    .line 1742
    .local v6, top:I
    new-instance v2, Landroid/graphics/Rect;

    add-int v7, v1, v5

    add-int v8, v6, v4

    invoke-direct {v2, v1, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1743
    .local v2, newBounds:Landroid/graphics/Rect;
    invoke-virtual {p2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1744
    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public overlayBitmapSkew(Landroid/content/res/Resources;II)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "res"
    .parameter "bgdBmpId"
    .parameter "frontId"

    .prologue
    .line 1712
    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1713
    .local v0, bgdBmp:Landroid/graphics/Bitmap;
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1714
    .local v2, front:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0, v2}, Landroid/drm/DrmManagerClient;->overlayBitmapSkew(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1715
    .local v1, bmp:Landroid/graphics/Bitmap;
    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1716
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1717
    const/4 v0, 0x0

    .line 1719
    :cond_0
    return-object v1
.end method

.method public overlayBitmapSkew(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 13
    .parameter "bgdBmp"
    .parameter "front"

    .prologue
    .line 1671
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1672
    :cond_0
    const-string v10, "DrmManagerClient"

    const-string/jumbo v11, "overlayBitmapSkew() : Given background / front pic is null."

    invoke-static {v10, v11}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1673
    const/4 v0, 0x0

    .line 1699
    :goto_0
    return-object v0

    .line 1677
    :cond_1
    const/4 v5, 0x0

    .line 1678
    .local v5, offset:I
    iget-object v10, p0, Landroid/drm/DrmManagerClient;->mContext:Landroid/content/Context;

    instance-of v10, v10, Landroid/app/Activity;

    if-eqz v10, :cond_2

    .line 1679
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1680
    .local v3, metric:Landroid/util/DisplayMetrics;
    iget-object v10, p0, Landroid/drm/DrmManagerClient;->mContext:Landroid/content/Context;

    check-cast v10, Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v10

    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1681
    iget v1, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 1682
    .local v1, densityDpi:I
    const/16 v10, 0x3c0

    div-int v5, v10, v1

    .line 1687
    .end local v1           #densityDpi:I
    .end local v3           #metric:Landroid/util/DisplayMetrics;
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    add-int/2addr v10, v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v11, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1690
    .local v0, bMutable:Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1691
    .local v6, overlayCanvas:Landroid/graphics/Canvas;
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v6, p1, v10, v11, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1692
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    .line 1693
    .local v8, overlayWidth:I
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    .line 1694
    .local v7, overlayHeight:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    sub-int v2, v10, v8

    .line 1695
    .local v2, left:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    sub-int v9, v10, v7

    .line 1696
    .local v9, top:I
    new-instance v4, Landroid/graphics/Rect;

    add-int v10, v2, v8

    add-int v11, v9, v7

    invoke-direct {v4, v2, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1697
    .local v4, newBounds:Landroid/graphics/Rect;
    invoke-virtual {p2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1698
    invoke-virtual {p2, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 1684
    .end local v0           #bMutable:Landroid/graphics/Bitmap;
    .end local v2           #left:I
    .end local v4           #newBounds:Landroid/graphics/Rect;
    .end local v6           #overlayCanvas:Landroid/graphics/Canvas;
    .end local v7           #overlayHeight:I
    .end local v8           #overlayWidth:I
    .end local v9           #top:I
    :cond_2
    const-string v10, "DrmManagerClient"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "overlayBitmapSkew() : Given mContext is not an Activity type: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Landroid/drm/DrmManagerClient;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public overlayDrmIcon(Landroid/content/res/Resources;Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "res"
    .parameter "path"
    .parameter "action"
    .parameter "bgdBmpId"

    .prologue
    .line 1865
    invoke-static {p1, p4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1866
    .local v0, bgdBmp:Landroid/graphics/Bitmap;
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/drm/DrmManagerClient;->overlayDrmIcon(Landroid/content/res/Resources;Ljava/lang/String;ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1867
    .local v1, bmp:Landroid/graphics/Bitmap;
    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1868
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1869
    const/4 v0, 0x0

    .line 1871
    :cond_0
    return-object v1
.end method

.method public overlayDrmIcon(Landroid/content/res/Resources;Ljava/lang/String;ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "res"
    .parameter "path"
    .parameter "action"
    .parameter "bgdBmp"

    .prologue
    .line 1832
    invoke-virtual {p0, p2}, Landroid/drm/DrmManagerClient;->getMethod(Ljava/lang/String;)I

    move-result v2

    .line 1833
    .local v2, method:I
    if-nez v2, :cond_0

    .line 1834
    const-string v4, "DrmManagerClient"

    const-string/jumbo v5, "overlayDrmIcon() : not set drm icon because of invalid method"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1851
    .end local p4
    :goto_0
    return-object p4

    .line 1838
    .restart local p4
    :cond_0
    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    .line 1839
    const-string v4, "DrmManagerClient"

    const-string/jumbo v5, "overlayDrmIcon() : not set drm icon because method is FL"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1843
    :cond_1
    invoke-virtual {p0, p2, p3}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;I)I

    move-result v3

    .line 1844
    .local v3, rightsStatus:I
    const/4 v1, -0x1

    .line 1845
    .local v1, lockId:I
    if-nez v3, :cond_2

    .line 1846
    const v1, 0x202003f

    .line 1850
    :goto_1
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1851
    .local v0, front:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, p4, v0}, Landroid/drm/DrmManagerClient;->overlayBitmap(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p4

    goto :goto_0

    .line 1848
    .end local v0           #front:Landroid/graphics/drawable/Drawable;
    :cond_2
    const v1, 0x2020040

    goto :goto_1
.end method

.method public overlayDrmIconSkew(Landroid/content/res/Resources;Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "res"
    .parameter "path"
    .parameter "action"
    .parameter "bgdBmpId"

    .prologue
    .line 1812
    invoke-static {p1, p4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1813
    .local v0, bgdBmp:Landroid/graphics/Bitmap;
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/drm/DrmManagerClient;->overlayDrmIconSkew(Landroid/content/res/Resources;Ljava/lang/String;ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1814
    .local v1, bmp:Landroid/graphics/Bitmap;
    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1815
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1816
    const/4 v0, 0x0

    .line 1818
    :cond_0
    return-object v1
.end method

.method public overlayDrmIconSkew(Landroid/content/res/Resources;Ljava/lang/String;ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "res"
    .parameter "path"
    .parameter "action"
    .parameter "bgdBmp"

    .prologue
    .line 1779
    invoke-virtual {p0, p2}, Landroid/drm/DrmManagerClient;->getMethod(Ljava/lang/String;)I

    move-result v2

    .line 1780
    .local v2, method:I
    if-nez v2, :cond_0

    .line 1781
    const-string v4, "DrmManagerClient"

    const-string/jumbo v5, "overlayDrmIconSkew() : not set drm icon because of invalid method"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1798
    .end local p4
    :goto_0
    return-object p4

    .line 1785
    .restart local p4
    :cond_0
    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    .line 1786
    const-string v4, "DrmManagerClient"

    const-string/jumbo v5, "overlayDrmIconSkew() : not set drm icon because method is FL."

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1790
    :cond_1
    invoke-virtual {p0, p2, p3}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;I)I

    move-result v3

    .line 1791
    .local v3, rightsStatus:I
    const/4 v1, -0x1

    .line 1792
    .local v1, lockId:I
    if-nez v3, :cond_2

    .line 1793
    const v1, 0x202003f

    .line 1797
    :goto_1
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1798
    .local v0, front:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, p4, v0}, Landroid/drm/DrmManagerClient;->overlayBitmapSkew(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p4

    goto :goto_0

    .line 1795
    .end local v0           #front:Landroid/graphics/drawable/Drawable;
    :cond_2
    const v1, 0x2020040

    goto :goto_1
.end method

.method public processDrmInfo(Landroid/drm/DrmInfo;)I
    .locals 4
    .parameter "drmInfo"

    .prologue
    .line 480
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/drm/DrmInfo;->isValid()Z

    move-result v2

    if-nez v2, :cond_1

    .line 481
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Given drmInfo is invalid/null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 483
    :cond_1
    const/16 v1, -0x7d0

    .line 484
    .local v1, result:I
    iget-object v2, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    if-eqz v2, :cond_2

    .line 485
    iget-object v2, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    const/16 v3, 0x3ea

    invoke-virtual {v2, v3, p1}, Landroid/drm/DrmManagerClient$EventHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 486
    .local v0, msg:Landroid/os/Message;
    iget-object v2, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    invoke-virtual {v2, v0}, Landroid/drm/DrmManagerClient$EventHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    .line 488
    .end local v0           #msg:Landroid/os/Message;
    :cond_2
    return v1
.end method

.method public removeAllRights()I
    .locals 4

    .prologue
    .line 696
    const/16 v1, -0x7d0

    .line 697
    .local v1, result:I
    iget-object v2, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    if-eqz v2, :cond_0

    .line 698
    iget-object v2, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    const/16 v3, 0x3e9

    invoke-virtual {v2, v3}, Landroid/drm/DrmManagerClient$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 699
    .local v0, msg:Landroid/os/Message;
    iget-object v2, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    invoke-virtual {v2, v0}, Landroid/drm/DrmManagerClient$EventHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    .line 701
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return v1
.end method

.method public removeRights(Landroid/net/Uri;)I
    .locals 2
    .parameter "uri"

    .prologue
    .line 683
    if-eqz p1, :cond_0

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v0, p1, :cond_1

    .line 684
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given uri is not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 686
    :cond_1
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/drm/DrmManagerClient;->removeRights(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public removeRights(Ljava/lang/String;)I
    .locals 2
    .parameter "path"

    .prologue
    .line 669
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 670
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given path should be non null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 672
    :cond_1
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1}, Landroid/drm/DrmManagerClient;->_removeRights(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public saveRights(Landroid/drm/DrmRights;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "drmRights"
    .parameter "rightsPath"
    .parameter "contentPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 419
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/drm/DrmRights;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 420
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given drmRights or contentPath is not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 422
    :cond_1
    if-eqz p2, :cond_2

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 423
    invoke-virtual {p1}, Landroid/drm/DrmRights;->getData()[B

    move-result-object v0

    invoke-static {p2, v0}, Landroid/drm/DrmUtils;->writeToFile(Ljava/lang/String;[B)V

    .line 425
    :cond_2
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/drm/DrmManagerClient;->_saveRights(ILandroid/drm/DrmRights;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public declared-synchronized setOnErrorListener(Landroid/drm/DrmManagerClient$OnErrorListener;)V
    .locals 1
    .parameter "errorListener"

    .prologue
    .line 317
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 318
    :try_start_0
    iput-object p1, p0, Landroid/drm/DrmManagerClient;->mOnErrorListener:Landroid/drm/DrmManagerClient$OnErrorListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    :cond_0
    monitor-exit p0

    return-void

    .line 317
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setOnEventListener(Landroid/drm/DrmManagerClient$OnEventListener;)V
    .locals 1
    .parameter "eventListener"

    .prologue
    .line 305
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 306
    :try_start_0
    iput-object p1, p0, Landroid/drm/DrmManagerClient;->mOnEventListener:Landroid/drm/DrmManagerClient$OnEventListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    :cond_0
    monitor-exit p0

    return-void

    .line 305
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setOnInfoListener(Landroid/drm/DrmManagerClient$OnInfoListener;)V
    .locals 1
    .parameter "infoListener"

    .prologue
    .line 293
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 294
    :try_start_0
    iput-object p1, p0, Landroid/drm/DrmManagerClient;->mOnInfoListener:Landroid/drm/DrmManagerClient$OnInfoListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    :cond_0
    monitor-exit p0

    return-void

    .line 293
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public showLicenseAcquisition(Landroid/content/Context;Landroid/net/Uri;Landroid/drm/DrmManagerClient$DrmOperationListener;)V
    .locals 5
    .parameter "context"
    .parameter "uri"
    .parameter "listener"

    .prologue
    .line 1577
    if-eqz p2, :cond_0

    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v2, p2, :cond_1

    .line 1578
    :cond_0
    const-string v2, "DrmManagerClient"

    const-string/jumbo v3, "showLicenseAcquisition() : Given uri is not valid"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1590
    :goto_0
    return-void

    .line 1582
    :cond_1
    const/4 v1, 0x0

    .line 1584
    .local v1, path:Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, p2}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1589
    invoke-virtual {p0, p1, v1, p3}, Landroid/drm/DrmManagerClient;->showLicenseAcquisition(Landroid/content/Context;Ljava/lang/String;Landroid/drm/DrmManagerClient$DrmOperationListener;)V

    goto :goto_0

    .line 1585
    :catch_0
    move-exception v0

    .line 1586
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v2, "DrmManagerClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "showLicenseAcquisition() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public showLicenseAcquisition(Landroid/content/Context;Ljava/lang/String;Landroid/drm/DrmManagerClient$DrmOperationListener;)V
    .locals 10
    .parameter "context"
    .parameter "path"
    .parameter "listener"

    .prologue
    const/4 v8, 0x1

    .line 1603
    if-eqz p2, :cond_0

    const-string v7, ""

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1604
    :cond_0
    const-string v7, "DrmManagerClient"

    const-string/jumbo v8, "showLicenseAcquisition() : Given path should be non null"

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1660
    :cond_1
    :goto_0
    return-void

    .line 1607
    :cond_2
    instance-of v7, p1, Landroid/app/Activity;

    if-nez v7, :cond_3

    .line 1608
    const-string v7, "DrmManagerClient"

    const-string/jumbo v8, "showLicenseAcquisition() : Given context is not Activity type"

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1612
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1613
    .local v4, res:Landroid/content/res/Resources;
    invoke-virtual {p0, p2}, Landroid/drm/DrmManagerClient;->getMetadata(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v1

    .line 1614
    .local v1, cv:Landroid/content/ContentValues;
    const/4 v5, 0x0

    .line 1615
    .local v5, rightsIssuer:Ljava/lang/String;
    if-eqz v1, :cond_4

    const-string v7, "drm_rights_issuer"

    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1616
    const-string v7, "drm_rights_issuer"

    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1620
    :cond_4
    if-eqz v5, :cond_5

    const-string v7, "http"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 1621
    :cond_5
    const v7, 0x20500b7

    invoke-static {p1, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 1624
    if-eqz p3, :cond_1

    .line 1625
    const/4 v7, 0x2

    invoke-interface {p3, v7}, Landroid/drm/DrmManagerClient$DrmOperationListener;->onOperated(I)V

    goto :goto_0

    .line 1630
    :cond_6
    move-object v6, v5

    .line 1631
    .local v6, rightsIssuerFinal:Ljava/lang/String;
    const v7, 0x20500b6

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p2, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1633
    .local v3, message:Ljava/lang/String;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1635
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v7, 0x20500b4

    new-instance v8, Landroid/drm/DrmManagerClient$9;

    invoke-direct {v8, p0, v6, p1}, Landroid/drm/DrmManagerClient$9;-><init>(Landroid/drm/DrmManagerClient;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1643
    const/high16 v7, 0x104

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1645
    const v7, #drawable@ic_dialog_info#t

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x20500b5

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1649
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 1650
    .local v2, dialog:Landroid/app/AlertDialog;
    new-instance v7, Landroid/drm/DrmManagerClient$10;

    invoke-direct {v7, p0, p3}, Landroid/drm/DrmManagerClient$10;-><init>(Landroid/drm/DrmManagerClient;Landroid/drm/DrmManagerClient$DrmOperationListener;)V

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1659
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method

.method public showLicenseAcquisitionDialog(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 1469
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/drm/DrmManagerClient;->showLicenseAcquisitionDialog(Landroid/content/Context;Landroid/net/Uri;Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1470
    return-void
.end method

.method public showLicenseAcquisitionDialog(Landroid/content/Context;Landroid/net/Uri;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 5
    .parameter "context"
    .parameter "uri"
    .parameter "dismissListener"

    .prologue
    .line 1493
    if-eqz p2, :cond_0

    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v2, p2, :cond_1

    .line 1494
    :cond_0
    const-string v2, "DrmManagerClient"

    const-string/jumbo v3, "showLicenseAcquisitionDialog() : Given uri is not valid"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1506
    :goto_0
    return-void

    .line 1498
    :cond_1
    const/4 v1, 0x0

    .line 1500
    .local v1, path:Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, p2}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1505
    invoke-virtual {p0, p1, v1, p3}, Landroid/drm/DrmManagerClient;->showLicenseAcquisitionDialog(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 1501
    :catch_0
    move-exception v0

    .line 1502
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v2, "DrmManagerClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "showLicenseAcquisitionDialog() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public showLicenseAcquisitionDialog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "path"

    .prologue
    .line 1480
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/drm/DrmManagerClient;->showLicenseAcquisitionDialog(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1481
    return-void
.end method

.method public showLicenseAcquisitionDialog(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 10
    .parameter "context"
    .parameter "path"
    .parameter "dismissListener"

    .prologue
    const/4 v8, 0x1

    .line 1518
    if-eqz p2, :cond_0

    const-string v7, ""

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1519
    :cond_0
    const-string v7, "DrmManagerClient"

    const-string/jumbo v8, "showLicenseAcquisitionDialog() : Given path should be non null"

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    :goto_0
    return-void

    .line 1522
    :cond_1
    instance-of v7, p1, Landroid/app/Activity;

    if-nez v7, :cond_2

    .line 1523
    const-string v7, "DrmManagerClient"

    const-string/jumbo v8, "showLicenseAcquisitionDialog() : Given context is not Activity type"

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1527
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1528
    .local v4, res:Landroid/content/res/Resources;
    invoke-virtual {p0, p2}, Landroid/drm/DrmManagerClient;->getMetadata(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v1

    .line 1529
    .local v1, cv:Landroid/content/ContentValues;
    const/4 v5, 0x0

    .line 1530
    .local v5, rightsIssuer:Ljava/lang/String;
    if-eqz v1, :cond_3

    const-string v7, "drm_rights_issuer"

    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1531
    const-string v7, "drm_rights_issuer"

    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1535
    :cond_3
    if-eqz v5, :cond_4

    const-string v7, "http"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 1537
    :cond_4
    const v7, 0x20500b7

    invoke-static {p1, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1542
    :cond_5
    move-object v6, v5

    .line 1543
    .local v6, rightsIssuerFinal:Ljava/lang/String;
    const v7, 0x20500b6

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p2, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1545
    .local v3, message:Ljava/lang/String;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1547
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v7, 0x20500b4

    new-instance v8, Landroid/drm/DrmManagerClient$8;

    invoke-direct {v8, p0, v6, p1}, Landroid/drm/DrmManagerClient$8;-><init>(Landroid/drm/DrmManagerClient;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1555
    const/high16 v7, 0x104

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1557
    const v7, #drawable@ic_dialog_info#t

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x20500b5

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1561
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 1562
    .local v2, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v2, p3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1564
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public showProtectionInfoDialog(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 5
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 1266
    if-eqz p2, :cond_0

    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v2, p2, :cond_1

    .line 1267
    :cond_0
    const-string v2, "DrmManagerClient"

    const-string/jumbo v3, "showProtectionInfoDialog() : Given uri is not valid"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    :goto_0
    return-void

    .line 1271
    :cond_1
    const/4 v1, 0x0

    .line 1273
    .local v1, path:Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, p2}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1278
    invoke-virtual {p0, p1, v1}, Landroid/drm/DrmManagerClient;->showProtectionInfoDialog(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 1274
    :catch_0
    move-exception v0

    .line 1275
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v2, "DrmManagerClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "showProtectionInfoDialog() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public showProtectionInfoDialog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 32
    .parameter "context"
    .parameter "path"

    .prologue
    .line 1289
    const-string v28, "DrmManagerClient"

    const-string/jumbo v29, "showProtectionInfoDialog()"

    invoke-static/range {v28 .. v29}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    if-eqz p2, :cond_0

    const-string v28, ""

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_1

    .line 1291
    :cond_0
    const-string v28, "DrmManagerClient"

    const-string/jumbo v29, "showProtectionInfoDialog() : Given path should be non null"

    invoke-static/range {v28 .. v29}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    :goto_0
    return-void

    .line 1295
    :cond_1
    new-instance v6, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1296
    .local v6, builder:Landroid/app/AlertDialog$Builder;
    const v28, 0x2070006

    const/16 v29, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v28

    move-object/from16 v2, v29

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v22

    .line 1299
    .local v22, scrollView:Landroid/view/View;
    const v28, 0x20c000e

    move-object/from16 v0, v22

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 1301
    .local v14, fileNameView:Landroid/widget/TextView;
    if-nez v14, :cond_2

    .line 1302
    const-string v28, "DrmManagerClient"

    const-string/jumbo v29, "showProtectionInfoDialog() : the TextView: fileNameView is null"

    invoke-static/range {v28 .. v29}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1306
    :cond_2
    const-string v28, "/"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v23

    .line 1307
    .local v23, start:I
    const-string v28, "."

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    .line 1308
    .local v9, end:I
    add-int/lit8 v28, v23, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 1309
    .local v13, fileNameStr:Ljava/lang/String;
    invoke-virtual {v14, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1311
    const v28, 0x20c000f

    move-object/from16 v0, v22

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 1313
    .local v17, protectionInfoStatusView:Landroid/widget/TextView;
    if-nez v17, :cond_3

    .line 1314
    const-string v28, "DrmManagerClient"

    const-string/jumbo v29, "showProtectionInfoDialog() : the TextView: protectionInfoStatusView is null"

    invoke-static/range {v28 .. v29}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1318
    :cond_3
    const/16 v28, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;I)I

    move-result v21

    .line 1319
    .local v21, rightsStatus:I
    if-nez v21, :cond_5

    .line 1320
    const v28, 0x20500ad

    move-object/from16 v0, v17

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1325
    :cond_4
    :goto_1
    const v28, 0x20c0010

    move-object/from16 v0, v22

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1326
    .local v5, beginView:Landroid/widget/TextView;
    if-nez v5, :cond_6

    .line 1327
    const-string v28, "DrmManagerClient"

    const-string/jumbo v29, "showProtectionInfoDialog() : the TextView: beginView is null"

    invoke-static/range {v28 .. v29}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1321
    .end local v5           #beginView:Landroid/widget/TextView;
    :cond_5
    const/16 v28, 0x1

    move/from16 v0, v21

    move/from16 v1, v28

    if-ne v0, v1, :cond_4

    .line 1322
    const v28, 0x20500ae

    move-object/from16 v0, v17

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 1330
    .restart local v5       #beginView:Landroid/widget/TextView;
    :cond_6
    const v28, 0x20c0012

    move-object/from16 v0, v22

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 1331
    .local v12, endView:Landroid/widget/TextView;
    if-nez v12, :cond_7

    .line 1332
    const-string v28, "DrmManagerClient"

    const-string/jumbo v29, "showProtectionInfoDialog() : the TextView: endView is null"

    invoke-static/range {v28 .. v29}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1335
    :cond_7
    const v28, 0x20c0014

    move-object/from16 v0, v22

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    .line 1337
    .local v26, useLeftView:Landroid/widget/TextView;
    if-nez v26, :cond_8

    .line 1338
    const-string v28, "DrmManagerClient"

    const-string/jumbo v29, "showProtectionInfoDialog() : the TextView: useLeftView is null"

    invoke-static/range {v28 .. v29}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1341
    :cond_8
    const v28, 0x20c0011

    move-object/from16 v0, v22

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1343
    .local v4, beginValueView:Landroid/widget/TextView;
    if-nez v4, :cond_9

    .line 1344
    const-string v28, "DrmManagerClient"

    const-string/jumbo v29, "showProtectionInfoDialog() : the TextView: beginValueView is null"

    invoke-static/range {v28 .. v29}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1347
    :cond_9
    const v28, 0x20c0013

    move-object/from16 v0, v22

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 1349
    .local v11, endValueView:Landroid/widget/TextView;
    if-nez v11, :cond_a

    .line 1350
    const-string v28, "DrmManagerClient"

    const-string/jumbo v29, "showProtectionInfoDialog() : the TextView: endValueView is null"

    invoke-static/range {v28 .. v29}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1353
    :cond_a
    const v28, 0x20c0015

    move-object/from16 v0, v22

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    .line 1355
    .local v25, useLeftValueView:Landroid/widget/TextView;
    if-nez v25, :cond_b

    .line 1356
    const-string v28, "DrmManagerClient"

    const-string/jumbo v29, "showProtectionInfoDialog() : the TextView: useLeftValueView is null"

    invoke-static/range {v28 .. v29}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1360
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1361
    .local v16, mime:Ljava/lang/String;
    if-nez v16, :cond_c

    .line 1362
    const-string v28, "DrmManagerClient"

    const-string/jumbo v29, "showProtectionInfoDialog() : failed to get the original mime type"

    invoke-static/range {v28 .. v29}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1366
    :cond_c
    invoke-static/range {v16 .. v16}, Landroid/drm/DrmUtils;->getAction(Ljava/lang/String;)I

    move-result v28

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/drm/DrmManagerClient;->getConstraints(Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v27

    .line 1367
    .local v27, values:Landroid/content/ContentValues;
    if-eqz v27, :cond_d

    invoke-virtual/range {v27 .. v27}, Landroid/content/ContentValues;->size()I

    move-result v28

    if-nez v28, :cond_10

    .line 1368
    :cond_d
    const v28, 0x20500b0

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(I)V

    .line 1369
    const-string v28, ""

    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1370
    const-string v28, ""

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1372
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/drm/DrmManagerClient;->getMetadata(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v7

    .line 1373
    .local v7, cv:Landroid/content/ContentValues;
    const/16 v19, 0x0

    .line 1374
    .local v19, rightsIssuer:Ljava/lang/String;
    if-eqz v7, :cond_e

    const-string v28, "drm_rights_issuer"

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_e

    .line 1375
    const-string v28, "drm_rights_issuer"

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1378
    :cond_e
    move-object/from16 v20, v19

    .line 1379
    .local v20, rightsIssuerFinal:Ljava/lang/String;
    if-eqz v20, :cond_f

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->isEmpty()Z

    move-result v28

    if-nez v28, :cond_f

    .line 1380
    const v28, 0x20500b4

    new-instance v29, Landroid/drm/DrmManagerClient$6;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Landroid/drm/DrmManagerClient$6;-><init>(Landroid/drm/DrmManagerClient;Ljava/lang/String;Landroid/content/Context;)V

    move/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v6, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1447
    .end local v7           #cv:Landroid/content/ContentValues;
    .end local v19           #rightsIssuer:Ljava/lang/String;
    .end local v20           #rightsIssuerFinal:Ljava/lang/String;
    :cond_f
    :goto_2
    const v28, #string@ok#t

    new-instance v29, Landroid/drm/DrmManagerClient$7;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/drm/DrmManagerClient$7;-><init>(Landroid/drm/DrmManagerClient;)V

    move/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v6, v0, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1454
    const v28, 0x2050062

    move/from16 v0, v28

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1457
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    .line 1458
    .local v8, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 1391
    .end local v8           #dialog:Landroid/app/AlertDialog;
    :cond_10
    const-string v28, "license_start_time"

    invoke-virtual/range {v27 .. v28}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_13

    .line 1392
    const-string v28, "license_start_time"

    invoke-virtual/range {v27 .. v28}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v24

    .line 1393
    .local v24, startL:Ljava/lang/Long;
    if-nez v24, :cond_11

    .line 1394
    const-string v28, "DrmManagerClient"

    const-string/jumbo v29, "showProtectionInfoDialog() : startL is null"

    invoke-static/range {v28 .. v29}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1397
    :cond_11
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    const-wide/16 v30, -0x1

    cmp-long v28, v28, v30

    if-nez v28, :cond_12

    .line 1398
    const v28, 0x20500af

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(I)V

    .line 1406
    .end local v24           #startL:Ljava/lang/Long;
    :goto_3
    const-string v28, "license_expiry_time"

    invoke-virtual/range {v27 .. v28}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_16

    .line 1407
    const-string v28, "license_expiry_time"

    invoke-virtual/range {v27 .. v28}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    .line 1408
    .local v10, endL:Ljava/lang/Long;
    if-nez v10, :cond_14

    .line 1409
    const-string v28, "DrmManagerClient"

    const-string/jumbo v29, "showProtectionInfoDialog() : endL is null"

    invoke-static/range {v28 .. v29}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1400
    .end local v10           #endL:Ljava/lang/Long;
    .restart local v24       #startL:Ljava/lang/Long;
    :cond_12
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/drm/DrmManagerClient;->toDateTimeString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 1403
    .end local v24           #startL:Ljava/lang/Long;
    :cond_13
    const v28, 0x20500af

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 1413
    .restart local v10       #endL:Ljava/lang/Long;
    :cond_14
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    const-wide/16 v30, -0x1

    cmp-long v28, v28, v30

    if-nez v28, :cond_15

    .line 1414
    const v28, 0x20500af

    move/from16 v0, v28

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(I)V

    .line 1422
    .end local v10           #endL:Ljava/lang/Long;
    :goto_4
    const-string/jumbo v28, "remaining_repeat_count"

    invoke-virtual/range {v27 .. v28}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_1b

    const-string/jumbo v28, "max_repeat_count"

    invoke-virtual/range {v27 .. v28}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_1b

    .line 1424
    const-string/jumbo v28, "remaining_repeat_count"

    invoke-virtual/range {v27 .. v28}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v18

    .line 1425
    .local v18, remainCount:Ljava/lang/Long;
    if-nez v18, :cond_17

    .line 1426
    const-string v28, "DrmManagerClient"

    const-string/jumbo v29, "showProtectionInfoDialog() : remainCount is null"

    invoke-static/range {v28 .. v29}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1416
    .end local v18           #remainCount:Ljava/lang/Long;
    .restart local v10       #endL:Ljava/lang/Long;
    :cond_15
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Landroid/drm/DrmManagerClient;->toDateTimeString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 1419
    .end local v10           #endL:Ljava/lang/Long;
    :cond_16
    const v28, 0x20500af

    move/from16 v0, v28

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    .line 1430
    .restart local v18       #remainCount:Ljava/lang/Long;
    :cond_17
    const-string/jumbo v28, "max_repeat_count"

    invoke-virtual/range {v27 .. v28}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v15

    .line 1431
    .local v15, maxCount:Ljava/lang/Long;
    if-nez v15, :cond_18

    .line 1432
    const-string v28, "DrmManagerClient"

    const-string/jumbo v29, "showProtectionInfoDialog() : maxCount is null"

    invoke-static/range {v28 .. v29}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1436
    :cond_18
    const-string v28, "DrmManagerClient"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "showProtectionInfoDialog() : remainCount="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", maxCount="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1437
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    const-wide/16 v30, -0x1

    cmp-long v28, v28, v30

    if-eqz v28, :cond_19

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    const-wide/16 v30, -0x1

    cmp-long v28, v28, v30

    if-nez v28, :cond_1a

    .line 1438
    :cond_19
    const v28, 0x20500af

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    .line 1440
    :cond_1a
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "/"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v15}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1443
    .end local v15           #maxCount:Ljava/lang/Long;
    .end local v18           #remainCount:Ljava/lang/Long;
    :cond_1b
    const v28, 0x20500af

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2
.end method
