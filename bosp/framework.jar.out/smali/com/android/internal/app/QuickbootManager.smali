.class public final Lcom/android/internal/app/QuickbootManager;
.super Ljava/lang/Object;
.source "QuickbootManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/QuickbootManager$Log;
    }
.end annotation


# static fields
.field private static final MAX_RADIO_WAIT_TIME:I = 0x2ee0

.field private static final PHONE_STATE_POLL_SLEEP_MSEC:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "QuickbootManager"

.field private static mAdbState:I

.field static mDebug:Z

.field private static final mDefaultWhiteList:[Ljava/lang/String;

.field private static mInstance:Lcom/android/internal/app/QuickbootManager;

.field private static final mWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mWifiState:I


# instance fields
.field private mAvailable:Z

.field private mQbService:Lcom/baidu/service/IQuickBootService;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/internal/app/QuickbootManager;->mWhiteList:Ljava/util/ArrayList;

    .line 50
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "system"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "com.android.phone"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android.process.acore"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.android.wallpaper"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.android.systemui"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.baidu.home2"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.baidu.baiduclock"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/app/QuickbootManager;->mDefaultWhiteList:[Ljava/lang/String;

    .line 54
    sput-boolean v3, Lcom/android/internal/app/QuickbootManager;->mDebug:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 7

    .prologue
    .line 78
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/internal/app/QuickbootManager;->mAvailable:Z

    .line 79
    sget-object v0, Lcom/android/internal/app/QuickbootManager;->mDefaultWhiteList:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    .line 80
    .local v4, wl:Ljava/lang/String;
    sget-object v5, Lcom/android/internal/app/QuickbootManager;->mWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 85
    .end local v4           #wl:Ljava/lang/String;
    :cond_0
    const-string v5, "QuickBootService"

    invoke-static {v5}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 86
    .local v2, iService:Landroid/os/IBinder;
    if-eqz v2, :cond_1

    .line 87
    invoke-static {v2}, Lcom/baidu/service/IQuickBootService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/baidu/service/IQuickBootService;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/app/QuickbootManager;->mQbService:Lcom/baidu/service/IQuickBootService;

    .line 92
    :goto_1
    return-void

    .line 89
    :cond_1
    const-string v5, "QuickbootManager"

    const-string v6, "QuickBootService not found!"

    invoke-static {v5, v6}, Lcom/android/internal/app/QuickbootManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/internal/app/QuickbootManager;->mAvailable:Z

    goto :goto_1
.end method

.method private enableRadio()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x2ee0

    .line 300
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long v1, v4, v6

    .line 301
    .local v1, endTime:J
    const/4 v4, 0x1

    new-array v0, v4, [Z

    .line 302
    .local v0, done:[Z
    new-instance v3, Lcom/android/internal/app/QuickbootManager$1;

    invoke-direct {v3, p0, v1, v2, v0}, Lcom/android/internal/app/QuickbootManager$1;-><init>(Lcom/android/internal/app/QuickbootManager;J[Z)V

    .line 345
    .local v3, t:Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 347
    const-wide/16 v4, 0x2ee0

    :try_start_0
    invoke-virtual {v3, v4, v5}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    :goto_0
    const/4 v4, 0x0

    aget-boolean v4, v0, v4

    if-nez v4, :cond_0

    .line 351
    const-string v4, "QuickbootManager"

    const-string v5, "Timed out waiting for Radio on."

    invoke-static {v4, v5}, Lcom/android/internal/app/QuickbootManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    :cond_0
    return-void

    .line 348
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private getCurrentInputMethod(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 358
    const/4 v1, 0x0

    .line 359
    .local v1, ret:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "default_input_method"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 360
    .local v0, ime:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 361
    const/4 v2, 0x0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 363
    :cond_0
    return-object v1
.end method

.method public static getInstance()Lcom/android/internal/app/QuickbootManager;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/android/internal/app/QuickbootManager;->mInstance:Lcom/android/internal/app/QuickbootManager;

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Lcom/android/internal/app/QuickbootManager;

    invoke-direct {v0}, Lcom/android/internal/app/QuickbootManager;-><init>()V

    sput-object v0, Lcom/android/internal/app/QuickbootManager;->mInstance:Lcom/android/internal/app/QuickbootManager;

    .line 97
    :cond_0
    sget-object v0, Lcom/android/internal/app/QuickbootManager;->mInstance:Lcom/android/internal/app/QuickbootManager;

    return-object v0
.end method

.method private stopEverything(Landroid/content/Context;)V
    .locals 27
    .parameter "context"

    .prologue
    .line 208
    const-string v23, "activity"

    invoke-static/range {v23 .. v23}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v3

    .line 209
    .local v3, am:Landroid/app/IActivityManager;
    const-string/jumbo v23, "package"

    invoke-static/range {v23 .. v23}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v13

    .line 210
    .local v13, pm:Landroid/content/pm/IPackageManager;
    const-string/jumbo v23, "wallpaper"

    invoke-static/range {v23 .. v23}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/app/IWallpaperManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManager;

    move-result-object v18

    .line 212
    .local v18, wm:Landroid/app/IWallpaperManager;
    if-eqz v3, :cond_1

    if-eqz v13, :cond_1

    if-eqz v18, :cond_1

    .line 216
    :try_start_0
    invoke-interface/range {v18 .. v18}, Landroid/app/IWallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v19

    .line 217
    .local v19, wpInfo:Landroid/app/WallpaperInfo;
    if-eqz v19, :cond_7

    invoke-virtual/range {v19 .. v19}, Landroid/app/WallpaperInfo;->getPackageName()Ljava/lang/String;

    move-result-object v21

    .line 218
    .local v21, wpPkgName:Ljava/lang/String;
    :goto_0
    if-eqz v19, :cond_8

    invoke-virtual/range {v19 .. v19}, Landroid/app/WallpaperInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 219
    .local v20, wpPcsName:Ljava/lang/String;
    :goto_1
    move-object/from16 v0, v21

    invoke-interface {v13, v0}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;)I

    move-result v22

    .line 220
    .local v22, wpUid:I
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/app/QuickbootManager;->getCurrentInputMethod(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 221
    .local v10, inputMethod:Ljava/lang/String;
    const-string v23, "QuickbootManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Wallpaper is "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", input method is "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/android/internal/app/QuickbootManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const/16 v23, 0x64

    const/16 v24, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-interface {v3, v0, v1}, Landroid/app/IActivityManager;->getServices(II)Ljava/util/List;

    move-result-object v16

    .line 224
    .local v16, serviceList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_0
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 226
    .local v9, info:Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v0, v9, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    .line 227
    .local v15, sPkgName:Ljava/lang/String;
    iget-wide v0, v9, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    move-wide/from16 v23, v0

    const-wide/16 v25, 0x0

    cmp-long v23, v23, v25

    if-eqz v23, :cond_0

    if-eqz v15, :cond_0

    sget-object v23, Lcom/android/internal/app/QuickbootManager;->mWhiteList:Ljava/util/ArrayList;

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_0

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_0

    invoke-virtual {v15, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_0

    .line 232
    const-string v23, "QuickbootManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "stopping scheduling service : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/android/internal/app/QuickbootManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-interface {v3, v15}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 265
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v9           #info:Landroid/app/ActivityManager$RunningServiceInfo;
    .end local v10           #inputMethod:Ljava/lang/String;
    .end local v15           #sPkgName:Ljava/lang/String;
    .end local v16           #serviceList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    .end local v19           #wpInfo:Landroid/app/WallpaperInfo;
    .end local v20           #wpPcsName:Ljava/lang/String;
    .end local v21           #wpPkgName:Ljava/lang/String;
    .end local v22           #wpUid:I
    :catch_0
    move-exception v5

    .line 266
    .local v5, e:Landroid/os/RemoteException;
    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    .line 270
    .end local v5           #e:Landroid/os/RemoteException;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 271
    .local v4, cr:Landroid/content/ContentResolver;
    sget v23, Lcom/android/internal/app/QuickbootManager;->mAdbState:I

    if-eqz v23, :cond_2

    .line 272
    const-string v23, "adb_enabled"

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-static {v4, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 274
    :cond_2
    sget v23, Lcom/android/internal/app/QuickbootManager;->mWifiState:I

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_3

    sget v23, Lcom/android/internal/app/QuickbootManager;->mWifiState:I

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_4

    .line 275
    :cond_3
    const-string/jumbo v23, "wifi"

    invoke-static/range {v23 .. v23}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/net/wifi/IWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;

    move-result-object v8

    .line 276
    .local v8, iWifiMgr:Landroid/net/wifi/IWifiManager;
    if-eqz v8, :cond_4

    .line 278
    const/16 v23, 0x0

    :try_start_1
    move/from16 v0, v23

    invoke-interface {v8, v0}, Landroid/net/wifi/IWifiManager;->setWifiEnabledForQb(Z)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 283
    .end local v8           #iWifiMgr:Landroid/net/wifi/IWifiManager;
    :cond_4
    :goto_3
    const-string/jumbo v23, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/net/wifi/WifiManager;

    .line 284
    .local v17, wifiMgr:Landroid/net/wifi/WifiManager;
    if-eqz v17, :cond_6

    .line 285
    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v23

    const/16 v24, 0xc

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_5

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v23

    const/16 v24, 0xd

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_6

    .line 287
    :cond_5
    const-string v23, "QuickbootManager"

    const-string/jumbo v24, "turn off soft ap"

    invoke-static/range {v23 .. v24}, Lcom/android/internal/app/QuickbootManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 292
    :cond_6
    return-void

    .line 217
    .end local v4           #cr:Landroid/content/ContentResolver;
    .end local v17           #wifiMgr:Landroid/net/wifi/WifiManager;
    .restart local v19       #wpInfo:Landroid/app/WallpaperInfo;
    :cond_7
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 218
    .restart local v21       #wpPkgName:Ljava/lang/String;
    :cond_8
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 239
    .restart local v7       #i$:Ljava/util/Iterator;
    .restart local v10       #inputMethod:Ljava/lang/String;
    .restart local v16       #serviceList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    .restart local v20       #wpPcsName:Ljava/lang/String;
    .restart local v22       #wpUid:I
    :cond_9
    :try_start_2
    invoke-interface {v3}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v14

    .line 240
    .local v14, runningProcesses:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_a
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 241
    .local v11, pInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    const-string v23, "QuickbootManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "running process : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget-object v0, v11, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "(uid = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget v0, v11, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ")"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/android/internal/app/QuickbootManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget v0, v11, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-interface {v13, v0}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v12

    .line 243
    .local v12, pkgs:[Ljava/lang/String;
    if-eqz v12, :cond_c

    iget v0, v11, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    move/from16 v23, v0

    const/16 v24, 0x3e8

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_c

    .line 245
    const-string v23, "QuickbootManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "killing packages for uid "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget v0, v11, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ":"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/android/internal/app/QuickbootManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const/4 v6, 0x0

    .local v6, i:I
    :goto_5
    array-length v0, v12

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v6, v0, :cond_c

    .line 247
    const-string v23, "QuickbootManager"

    aget-object v24, v12, v6

    invoke-static/range {v23 .. v24}, Lcom/android/internal/app/QuickbootManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    sget-object v23, Lcom/android/internal/app/QuickbootManager;->mWhiteList:Ljava/util/ArrayList;

    aget-object v24, v12, v6

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_b

    aget-object v23, v12, v6

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_b

    aget-object v23, v12, v6

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_b

    .line 251
    aget-object v23, v12, v6

    move-object/from16 v0, v23

    invoke-interface {v3, v0}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 246
    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 255
    .end local v6           #i:I
    :cond_c
    const-string v23, "QuickbootManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "packages for process "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget-object v0, v11, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget v0, v11, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ")"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/android/internal/app/QuickbootManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_6
    iget-object v0, v11, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v6, v0, :cond_d

    .line 257
    const-string v23, "QuickbootManager"

    iget-object v0, v11, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    move-object/from16 v24, v0

    aget-object v24, v24, v6

    invoke-static/range {v23 .. v24}, Lcom/android/internal/app/QuickbootManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 260
    :cond_d
    iget v0, v11, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    move/from16 v23, v0

    move/from16 v0, v23

    move/from16 v1, v22

    if-ne v0, v1, :cond_a

    iget-object v0, v11, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_a

    .line 261
    const-string v23, "QuickbootManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "killing process "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget-object v0, v11, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget v0, v11, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ")"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/android/internal/app/QuickbootManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget v0, v11, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/os/Process;->killProcess(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_4

    .line 279
    .end local v6           #i:I
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v10           #inputMethod:Ljava/lang/String;
    .end local v11           #pInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v12           #pkgs:[Ljava/lang/String;
    .end local v14           #runningProcesses:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v16           #serviceList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    .end local v19           #wpInfo:Landroid/app/WallpaperInfo;
    .end local v20           #wpPcsName:Ljava/lang/String;
    .end local v21           #wpPkgName:Ljava/lang/String;
    .end local v22           #wpUid:I
    .restart local v4       #cr:Landroid/content/ContentResolver;
    .restart local v8       #iWifiMgr:Landroid/net/wifi/IWifiManager;
    :catch_1
    move-exception v23

    goto/16 :goto_3
.end method


# virtual methods
.method public isQbAvailable()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/android/internal/app/QuickbootManager;->mAvailable:Z

    return v0
.end method

.method public restoreSystemStates(Landroid/content/Context;)V
    .locals 11
    .parameter "context"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 121
    const-string v6, "QuickbootManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "restoreSystemStates(), wifi state = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/android/internal/app/QuickbootManager;->mWifiState:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/internal/app/QuickbootManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 123
    .local v2, cr:Landroid/content/ContentResolver;
    const-string v6, "airplane_mode_on"

    invoke-static {v2, v6, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 124
    .local v0, airModeState:I
    const-string v6, "airplane_mode_toggleable_radios"

    invoke-static {v2, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 127
    .local v5, toggleableRadios:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/internal/app/QuickbootManager;->enableRadio()V

    .line 136
    sget v6, Lcom/android/internal/app/QuickbootManager;->mWifiState:I

    if-ne v6, v10, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    sget v6, Lcom/android/internal/app/QuickbootManager;->mWifiState:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    .line 137
    :cond_1
    const-string/jumbo v6, "wifi"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/net/wifi/IWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;

    move-result-object v4

    .line 138
    .local v4, iWifiMgr:Landroid/net/wifi/IWifiManager;
    if-eqz v4, :cond_2

    .line 140
    const/4 v6, 0x1

    :try_start_0
    invoke-interface {v4, v6}, Landroid/net/wifi/IWifiManager;->setWifiEnabledForQb(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    .end local v4           #iWifiMgr:Landroid/net/wifi/IWifiManager;
    :cond_2
    :goto_0
    const-string v6, "bluetooth_on"

    invoke-static {v2, v6, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 146
    .local v1, btState:I
    if-nez v0, :cond_3

    if-gtz v1, :cond_4

    :cond_3
    if-eqz v0, :cond_5

    if-eqz v5, :cond_5

    const-string v6, "bluetooth"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 148
    :cond_4
    const-string v6, "bluetooth"

    invoke-static {v6}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/bluetooth/IBluetooth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;

    move-result-object v3

    .line 151
    .local v3, iBt:Landroid/bluetooth/IBluetooth;
    if-eqz v3, :cond_5

    .line 153
    :try_start_1
    invoke-interface {v3}, Landroid/bluetooth/IBluetooth;->enable()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 159
    .end local v3           #iBt:Landroid/bluetooth/IBluetooth;
    :cond_5
    :goto_1
    sget v6, Lcom/android/internal/app/QuickbootManager;->mAdbState:I

    if-eqz v6, :cond_6

    .line 160
    const-string v6, "adb_enabled"

    sget v7, Lcom/android/internal/app/QuickbootManager;->mAdbState:I

    invoke-static {v2, v6, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 161
    :cond_6
    const-string/jumbo v6, "persist.sys.shutdown.state"

    const-string v7, "-1"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    return-void

    .line 141
    .end local v1           #btState:I
    .restart local v4       #iWifiMgr:Landroid/net/wifi/IWifiManager;
    :catch_0
    move-exception v6

    goto :goto_0

    .line 154
    .end local v4           #iWifiMgr:Landroid/net/wifi/IWifiManager;
    .restart local v1       #btState:I
    .restart local v3       #iBt:Landroid/bluetooth/IBluetooth;
    :catch_1
    move-exception v6

    goto :goto_1
.end method

.method saveSystemStates(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_on"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/internal/app/QuickbootManager;->mWifiState:I

    .line 110
    const-string v0, "QuickbootManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saveSystemStates() wifi state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/app/QuickbootManager;->mWifiState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/app/QuickbootManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/internal/app/QuickbootManager;->mAdbState:I

    .line 112
    const-string v0, "QuickbootManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saveSystemStates() adb state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/app/QuickbootManager;->mAdbState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/app/QuickbootManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string/jumbo v0, "persist.sys.shutdown.state"

    sget v1, Lcom/android/internal/app/QuickbootManager;->mAdbState:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public shutdown(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 170
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/QuickbootManager;->shutdown(Landroid/content/Context;Landroid/app/AlarmManager$PoweroffAlarm;)Z

    move-result v0

    return v0
.end method

.method public shutdown(Landroid/content/Context;Landroid/app/AlarmManager$PoweroffAlarm;)Z
    .locals 7
    .parameter "context"
    .parameter "poweroffAlarm"

    .prologue
    .line 174
    const-string v3, "QuickbootManager"

    const-string v4, "Now going to enter simulated poweroff state."

    invoke-static {v3, v4}, Lcom/android/internal/app/QuickbootManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string/jumbo v3, "power"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 178
    .local v2, pm:Landroid/os/PowerManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 183
    if-nez p2, :cond_0

    .line 184
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/app/QuickbootManager;->mQbService:Lcom/baidu/service/IQuickBootService;

    const/4 v4, -0x1

    const-wide/16 v5, 0x0

    invoke-interface {v3, v4, v5, v6}, Lcom/baidu/service/IQuickBootService;->enableQuickBootService(IJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/internal/app/QuickbootManager;->stopEverything(Landroid/content/Context;)V

    .line 196
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.ACTION_QUICKBOOT_SHUTDOWN_DONE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 197
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 199
    const/4 v3, 0x1

    .end local v1           #intent:Landroid/content/Intent;
    :goto_1
    return v3

    .line 186
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/app/QuickbootManager;->mQbService:Lcom/baidu/service/IQuickBootService;

    iget v4, p2, Landroid/app/AlarmManager$PoweroffAlarm;->alarmType:I

    iget-wide v5, p2, Landroid/app/AlarmManager$PoweroffAlarm;->when:J

    invoke-interface {v3, v4, v5, v6}, Lcom/baidu/service/IQuickBootService;->enableQuickBootService(IJ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "QuickbootManager"

    const-string v4, "QuickBootService unavailale! enter normal shutdown!"

    invoke-static {v3, v4}, Lcom/android/internal/app/QuickbootManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const/4 v3, 0x0

    goto :goto_1
.end method
