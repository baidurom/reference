.class public Lcom/baidu/service/power/PowerStatsUtil;
.super Ljava/lang/Object;
.source "PowerStatsUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/service/power/PowerStatsUtil$BatterySipper;
    }
.end annotation


# static fields
.field public static DEBUG:Z = false

.field public static TAG:Ljava/lang/String; = null

.field private static final UID_ANDROID_MEDIA:Ljava/lang/String; = "android.media"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, "PowerStatsUtil"

    sput-object v0, Lcom/baidu/service/power/PowerStatsUtil;->TAG:Ljava/lang/String;

    .line 35
    const/4 v0, 0x1

    sput-boolean v0, Lcom/baidu/service/power/PowerStatsUtil;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method private static getAverageDataCost(Lcom/android/internal/os/BatteryStatsImpl;Lcom/android/internal/os/PowerProfile;I)D
    .locals 26
    .parameter "stats"
    .parameter "power"
    .parameter "which"

    .prologue
    .line 273
    const-wide/32 v6, 0xf4240

    .line 274
    .local v6, WIFI_BPS:J
    const-wide/32 v2, 0x30d40

    .line 275
    .local v2, MOBILE_BPS:J
    const-string/jumbo v22, "wifi.active"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v22

    const-wide v24, 0x40ac200000000000L

    div-double v8, v22, v24

    .line 277
    .local v8, WIFI_POWER:D
    const-string/jumbo v22, "radio.active"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v22

    const-wide v24, 0x40ac200000000000L

    div-double v4, v22, v24

    .line 279
    .local v4, MOBILE_POWER:D
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getMobileTcpBytesReceived(I)J

    move-result-wide v22

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getMobileTcpBytesSent(I)J

    move-result-wide v24

    add-long v14, v22, v24

    .line 281
    .local v14, mobileData:J
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getTotalTcpBytesReceived(I)J

    move-result-wide v22

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getTotalTcpBytesSent(I)J

    move-result-wide v24

    add-long v22, v22, v24

    sub-long v20, v22, v14

    .line 283
    .local v20, wifiData:J
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->getRadioDataUptime()J

    move-result-wide v22

    const-wide/16 v24, 0x3e8

    div-long v16, v22, v24

    .line 284
    .local v16, radioDataUptimeMs:J
    const-wide/16 v22, 0x0

    cmp-long v22, v16, v22

    if-eqz v22, :cond_0

    const-wide/16 v22, 0x8

    mul-long v22, v22, v14

    const-wide/16 v24, 0x3e8

    mul-long v22, v22, v24

    div-long v10, v22, v16

    .line 288
    .local v10, mobileBps:J
    :goto_0
    const-wide/16 v22, 0x8

    div-long v22, v10, v22

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v22, v0

    div-double v12, v4, v22

    .line 289
    .local v12, mobileCostPerByte:D
    const-wide v22, 0x40fe848000000000L

    div-double v18, v8, v22

    .line 290
    .local v18, wifiCostPerByte:D
    add-long v22, v20, v14

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-eqz v22, :cond_1

    .line 291
    long-to-double v0, v14

    move-wide/from16 v22, v0

    mul-double v22, v22, v12

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v24, v0

    mul-double v24, v24, v18

    add-double v22, v22, v24

    add-long v24, v14, v20

    move-wide/from16 v0, v24

    long-to-double v0, v0

    move-wide/from16 v24, v0

    div-double v22, v22, v24

    .line 294
    :goto_1
    return-wide v22

    .line 284
    .end local v10           #mobileBps:J
    .end local v12           #mobileCostPerByte:D
    .end local v18           #wifiCostPerByte:D
    :cond_0
    const-wide/32 v10, 0x30d40

    goto :goto_0

    .line 294
    .restart local v10       #mobileBps:J
    .restart local v12       #mobileCostPerByte:D
    .restart local v18       #wifiCostPerByte:D
    :cond_1
    const-wide/16 v22, 0x0

    goto :goto_1
.end method

.method private static getLabelFromUid(Landroid/content/Context;I)Ljava/lang/String;
    .locals 20
    .parameter "context"
    .parameter "uid"

    .prologue
    .line 300
    const/4 v10, 0x0

    .line 301
    .local v10, name:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    .line 302
    .local v16, pm:Landroid/content/pm/PackageManager;
    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 303
    .local v5, defaultActivityIcon:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v13

    .line 304
    .local v13, packages:[Ljava/lang/String;
    if-nez v13, :cond_0

    .line 305
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    .line 342
    :goto_0
    return-object v17

    .line 308
    :cond_0
    array-length v0, v13

    move/from16 v17, v0

    move/from16 v0, v17

    new-array v12, v0, [Ljava/lang/String;

    .line 309
    .local v12, packageLabels:[Ljava/lang/String;
    const/16 v17, 0x0

    const/16 v18, 0x0

    array-length v0, v13

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v13, v0, v12, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 312
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    array-length v0, v12

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v6, v0, :cond_2

    .line 314
    :try_start_0
    aget-object v17, v12, v6

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 315
    .local v3, ai:Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 316
    .local v8, label:Ljava/lang/CharSequence;
    if-eqz v8, :cond_1

    .line 317
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v12, v6
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 312
    .end local v3           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v8           #label:Ljava/lang/CharSequence;
    :cond_1
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 323
    :cond_2
    array-length v0, v12

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 324
    const/16 v17, 0x0

    aget-object v10, v12, v17

    :cond_3
    :goto_3
    move-object/from16 v17, v10

    .line 342
    goto :goto_0

    .line 327
    :cond_4
    move-object v4, v13

    .local v4, arr$:[Ljava/lang/String;
    array-length v9, v4

    .local v9, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_4
    if-ge v7, v9, :cond_3

    aget-object v15, v4, v7

    .line 329
    .local v15, pkgName:Ljava/lang/String;
    const/16 v17, 0x0

    :try_start_1
    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v15, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v14

    .line 330
    .local v14, pi:Landroid/content/pm/PackageInfo;
    iget v0, v14, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    move/from16 v17, v0

    if-eqz v17, :cond_5

    .line 331
    iget v0, v14, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    move/from16 v17, v0

    iget-object v0, v14, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v15, v1, v2}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v11

    .line 333
    .local v11, nm:Ljava/lang/CharSequence;
    if-eqz v11, :cond_5

    .line 334
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v10

    goto :goto_3

    .line 338
    .end local v11           #nm:Ljava/lang/CharSequence;
    .end local v14           #pi:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v17

    .line 327
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 319
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v7           #i$:I
    .end local v9           #len$:I
    .end local v15           #pkgName:Ljava/lang/String;
    :catch_1
    move-exception v17

    goto :goto_2
.end method

.method public static getTopApp(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 97
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v36

    .line 56
    .local v36, pm:Landroid/content/pm/PackageManager;
    const-wide/16 v70, 0x0

    .line 57
    .local v70, totalAppPower:D
    new-instance v40, Ljava/util/ArrayList;

    invoke-direct/range {v40 .. v40}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .local v40, powerList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/service/power/PowerStatsUtil$BatterySipper;>;"
    const-string v91, "batteryinfo"

    invoke-static/range {v91 .. v91}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v91

    invoke-static/range {v91 .. v91}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v9

    .line 61
    .local v9, batteryStats:Lcom/android/internal/app/IBatteryStats;
    const/16 v58, 0x0

    .line 62
    .local v58, stats:Lcom/android/internal/os/BatteryStatsImpl;
    const/16 v86, 0x0

    .line 64
    .local v86, which:I
    :try_start_0
    invoke-interface {v9}, Lcom/android/internal/app/IBatteryStats;->getStatistics()[B

    move-result-object v15

    .line 65
    .local v15, data:[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v35

    .line 66
    .local v35, parcel:Landroid/os/Parcel;
    const/16 v91, 0x0

    array-length v0, v15

    move/from16 v92, v0

    move-object/from16 v0, v35

    move/from16 v1, v91

    move/from16 v2, v92

    invoke-virtual {v0, v15, v1, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 67
    const/16 v91, 0x0

    move-object/from16 v0, v35

    move/from16 v1, v91

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 68
    sget-object v91, Lcom/android/internal/os/BatteryStatsImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v91

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v91

    move-object/from16 v0, v91

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v58, v0

    .line 70
    move-object/from16 v0, v58

    move/from16 v1, v86

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->distributeWorkLocked(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    new-instance v41, Lcom/android/internal/os/PowerProfile;

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    .line 78
    .local v41, powerProfile:Lcom/android/internal/os/PowerProfile;
    const-string/jumbo v91, "sensor"

    move-object/from16 v0, p0

    move-object/from16 v1, v91

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Landroid/hardware/SensorManager;

    .line 80
    .local v52, sensorManager:Landroid/hardware/SensorManager;
    invoke-virtual/range {v41 .. v41}, Lcom/android/internal/os/PowerProfile;->getNumSpeedSteps()I

    move-result v57

    .line 81
    .local v57, speedSteps:I
    move/from16 v0, v57

    new-array v0, v0, [D

    move-object/from16 v39, v0

    .line 82
    .local v39, powerCpuNormal:[D
    move/from16 v0, v57

    new-array v12, v0, [J

    .line 83
    .local v12, cpuSpeedStepTimes:[J
    const/16 v32, 0x0

    .local v32, p:I
    :goto_0
    move/from16 v0, v32

    move/from16 v1, v57

    if-ge v0, v1, :cond_1

    .line 84
    const-string v91, "cpu.active"

    move-object/from16 v0, v41

    move-object/from16 v1, v91

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v91

    aput-wide v91, v39, v32

    .line 83
    add-int/lit8 v32, v32, 0x1

    goto :goto_0

    .line 71
    .end local v12           #cpuSpeedStepTimes:[J
    .end local v15           #data:[B
    .end local v32           #p:I
    .end local v35           #parcel:Landroid/os/Parcel;
    .end local v39           #powerCpuNormal:[D
    .end local v41           #powerProfile:Lcom/android/internal/os/PowerProfile;
    .end local v52           #sensorManager:Landroid/hardware/SensorManager;
    .end local v57           #speedSteps:I
    :catch_0
    move-exception v16

    .line 72
    .local v16, e:Landroid/os/RemoteException;
    sget-object v91, Lcom/baidu/service/power/PowerStatsUtil;->TAG:Ljava/lang/String;

    const-string v92, "RemoteException:"

    move-object/from16 v0, v91

    move-object/from16 v1, v92

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    const/16 v48, 0x0

    .line 269
    .end local v16           #e:Landroid/os/RemoteException;
    :cond_0
    return-object v48

    .line 87
    .restart local v12       #cpuSpeedStepTimes:[J
    .restart local v15       #data:[B
    .restart local v32       #p:I
    .restart local v35       #parcel:Landroid/os/Parcel;
    .restart local v39       #powerCpuNormal:[D
    .restart local v41       #powerProfile:Lcom/android/internal/os/PowerProfile;
    .restart local v52       #sensorManager:Landroid/hardware/SensorManager;
    .restart local v57       #speedSteps:I
    :cond_1
    move-object/from16 v0, v58

    move-object/from16 v1, v41

    move/from16 v2, v86

    invoke-static {v0, v1, v2}, Lcom/baidu/service/power/PowerStatsUtil;->getAverageDataCost(Lcom/android/internal/os/BatteryStatsImpl;Lcom/android/internal/os/PowerProfile;I)D

    move-result-wide v6

    .line 88
    .local v6, averageCostPerByte:D
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v91

    const-wide/16 v93, 0x3e8

    mul-long v91, v91, v93

    move-object/from16 v0, v58

    move-wide/from16 v1, v91

    move/from16 v3, v86

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryRealtime(JI)J

    move-result-wide v74

    .line 90
    .local v74, uSecTime:J
    invoke-virtual/range {v58 .. v58}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStats()Landroid/util/SparseArray;

    move-result-object v77

    .line 91
    .local v77, uidStats:Landroid/util/SparseArray;,"Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual/range {v77 .. v77}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 92
    .local v4, NU:I
    const/16 v28, 0x0

    .end local v32           #p:I
    .local v28, iu:I
    :goto_1
    move/from16 v0, v28

    if-ge v0, v4, :cond_1e

    .line 93
    move-object/from16 v0, v77

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v73

    check-cast v73, Landroid/os/BatteryStats$Uid;

    .line 94
    .local v73, u:Landroid/os/BatteryStats$Uid;
    invoke-virtual/range {v73 .. v73}, Landroid/os/BatteryStats$Uid;->getProcessStats()Ljava/util/Map;

    move-result-object v44

    .line 95
    .local v44, processStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    const-wide/16 v37, 0x0

    .line 96
    .local v37, power:D
    const-wide/16 v32, 0x0

    .line 97
    .local v32, p:D
    const-wide/16 v22, 0x0

    .line 98
    .local v22, highestDrain:D
    const/16 v34, 0x0

    .line 99
    .local v34, packageWithHighestDrain:Ljava/lang/String;
    const-wide/16 v13, 0x0

    .line 100
    .local v13, cpuTime:J
    const-wide/16 v10, 0x0

    .line 101
    .local v10, cpuFgTime:J
    const-wide/16 v84, 0x0

    .line 102
    .local v84, wakelockTime:J
    const-wide/16 v20, 0x0

    .line 103
    .local v20, gpsTime:J
    const/16 v59, 0x0

    .line 104
    .local v59, status:I
    invoke-interface/range {v44 .. v44}, Ljava/util/Map;->size()I

    move-result v91

    if-lez v91, :cond_9

    .line 107
    invoke-interface/range {v44 .. v44}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v91

    invoke-interface/range {v91 .. v91}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .local v24, i$:Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v91

    if-eqz v91, :cond_9

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map$Entry;

    .line 108
    .local v17, ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Landroid/os/BatteryStats$Uid$Proc;

    .line 109
    .local v45, ps:Landroid/os/BatteryStats$Uid$Proc;
    move-object/from16 v0, v45

    move/from16 v1, v86

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v79

    .line 110
    .local v79, userTime:J
    move-object/from16 v0, v45

    move/from16 v1, v86

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v61

    .line 111
    .local v61, systemTime:J
    move-object/from16 v0, v45

    move/from16 v1, v86

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v18

    .line 112
    .local v18, foregroundTime:J
    const-wide/16 v91, 0xa

    mul-long v91, v91, v18

    add-long v10, v10, v91

    .line 113
    add-long v91, v79, v61

    const-wide/16 v93, 0xa

    mul-long v68, v91, v93

    .line 114
    .local v68, tmpCpuTime:J
    const/16 v72, 0x0

    .line 116
    .local v72, totalTimeAtSpeeds:I
    const/16 v60, 0x0

    .local v60, step:I
    :goto_3
    move/from16 v0, v60

    move/from16 v1, v57

    if-ge v0, v1, :cond_3

    .line 117
    move-object/from16 v0, v45

    move/from16 v1, v60

    move/from16 v2, v86

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid$Proc;->getTimeAtCpuSpeedStep(II)J

    move-result-wide v91

    aput-wide v91, v12, v60

    .line 118
    move/from16 v0, v72

    int-to-long v0, v0

    move-wide/from16 v91, v0

    aget-wide v93, v12, v60

    add-long v91, v91, v93

    move-wide/from16 v0, v91

    long-to-int v0, v0

    move/from16 v72, v0

    .line 116
    add-int/lit8 v60, v60, 0x1

    goto :goto_3

    .line 120
    :cond_3
    if-nez v72, :cond_4

    const/16 v72, 0x1

    .line 122
    :cond_4
    const-wide/16 v42, 0x0

    .line 123
    .local v42, processPower:D
    const/16 v60, 0x0

    :goto_4
    move/from16 v0, v60

    move/from16 v1, v57

    if-ge v0, v1, :cond_5

    .line 124
    aget-wide v91, v12, v60

    move-wide/from16 v0, v91

    long-to-double v0, v0

    move-wide/from16 v91, v0

    move/from16 v0, v72

    int-to-double v0, v0

    move-wide/from16 v93, v0

    div-double v46, v91, v93

    .line 125
    .local v46, ratio:D
    move-wide/from16 v0, v68

    long-to-double v0, v0

    move-wide/from16 v91, v0

    mul-double v91, v91, v46

    aget-wide v93, v39, v60

    mul-double v91, v91, v93

    add-double v42, v42, v91

    .line 123
    add-int/lit8 v60, v60, 0x1

    goto :goto_4

    .line 127
    .end local v46           #ratio:D
    :cond_5
    add-long v13, v13, v68

    .line 128
    sget-boolean v91, Lcom/baidu/service/power/PowerStatsUtil;->DEBUG:Z

    if-eqz v91, :cond_6

    const-wide/16 v91, 0x0

    cmpl-double v91, v42, v91

    if-eqz v91, :cond_6

    .line 129
    sget-object v91, Lcom/baidu/service/power/PowerStatsUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v92, "process %s, cpu power=%.2f"

    const/16 v93, 0x2

    move/from16 v0, v93

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v93, v0

    const/16 v94, 0x0

    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v95

    aput-object v95, v93, v94

    const/16 v94, 0x1

    const-wide v95, 0x408f400000000000L

    div-double v95, v42, v95

    invoke-static/range {v95 .. v96}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v95

    aput-object v95, v93, v94

    invoke-static/range {v92 .. v93}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v92

    invoke-static/range {v91 .. v92}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_6
    add-double v37, v37, v42

    .line 133
    if-eqz v34, :cond_7

    const-string v91, "*"

    move-object/from16 v0, v34

    move-object/from16 v1, v91

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v91

    if-eqz v91, :cond_8

    .line 135
    :cond_7
    move-wide/from16 v22, v42

    .line 136
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v34

    .end local v34           #packageWithHighestDrain:Ljava/lang/String;
    check-cast v34, Ljava/lang/String;

    .restart local v34       #packageWithHighestDrain:Ljava/lang/String;
    goto/16 :goto_2

    .line 137
    :cond_8
    cmpg-double v91, v22, v42

    if-gez v91, :cond_2

    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v91

    check-cast v91, Ljava/lang/String;

    const-string v92, "*"

    invoke-virtual/range {v91 .. v92}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v91

    if-nez v91, :cond_2

    .line 139
    move-wide/from16 v22, v42

    .line 140
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v34

    .end local v34           #packageWithHighestDrain:Ljava/lang/String;
    check-cast v34, Ljava/lang/String;

    .restart local v34       #packageWithHighestDrain:Ljava/lang/String;
    goto/16 :goto_2

    .line 144
    .end local v17           #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v18           #foregroundTime:J
    .end local v24           #i$:Ljava/util/Iterator;
    .end local v42           #processPower:D
    .end local v45           #ps:Landroid/os/BatteryStats$Uid$Proc;
    .end local v60           #step:I
    .end local v61           #systemTime:J
    .end local v68           #tmpCpuTime:J
    .end local v72           #totalTimeAtSpeeds:I
    .end local v79           #userTime:J
    :cond_9
    cmp-long v91, v10, v13

    if-lez v91, :cond_b

    .line 145
    const-wide/16 v91, 0x2710

    add-long v91, v91, v13

    cmp-long v91, v10, v91

    if-lez v91, :cond_a

    .line 146
    sget-object v91, Lcom/baidu/service/power/PowerStatsUtil;->TAG:Ljava/lang/String;

    const-string v92, "WARNING! Cputime is more than 10 seconds behind Foreground time"

    invoke-static/range {v91 .. v92}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_a
    move-wide v13, v10

    .line 150
    :cond_b
    const-wide v91, 0x408f400000000000L

    div-double v37, v37, v91

    .line 153
    invoke-virtual/range {v73 .. v73}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Ljava/util/Map;

    move-result-object v83

    .line 155
    .local v83, wakelockStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-interface/range {v83 .. v83}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v91

    invoke-interface/range {v91 .. v91}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .restart local v24       #i$:Ljava/util/Iterator;
    :cond_c
    :goto_5
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v91

    if-eqz v91, :cond_d

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v82

    check-cast v82, Ljava/util/Map$Entry;

    .line 156
    .local v82, wakelockEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-interface/range {v82 .. v82}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v81

    check-cast v81, Landroid/os/BatteryStats$Uid$Wakelock;

    .line 159
    .local v81, wakelock:Landroid/os/BatteryStats$Uid$Wakelock;
    const/16 v91, 0x0

    move-object/from16 v0, v81

    move/from16 v1, v91

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v67

    .line 160
    .local v67, timer:Landroid/os/BatteryStats$Timer;
    if-eqz v67, :cond_c

    .line 161
    move-object/from16 v0, v67

    move-wide/from16 v1, v74

    move/from16 v3, v86

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v91

    add-long v84, v84, v91

    goto :goto_5

    .line 164
    .end local v67           #timer:Landroid/os/BatteryStats$Timer;
    .end local v81           #wakelock:Landroid/os/BatteryStats$Uid$Wakelock;
    .end local v82           #wakelockEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    :cond_d
    const-wide/16 v91, 0x3e8

    div-long v84, v84, v91

    .line 167
    move-wide/from16 v0, v84

    long-to-double v0, v0

    move-wide/from16 v91, v0

    const-string v93, "cpu.awake"

    move-object/from16 v0, v41

    move-object/from16 v1, v93

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v93

    mul-double v91, v91, v93

    const-wide v93, 0x408f400000000000L

    div-double v32, v91, v93

    .line 169
    add-double v37, v37, v32

    .line 170
    sget-boolean v91, Lcom/baidu/service/power/PowerStatsUtil;->DEBUG:Z

    if-eqz v91, :cond_e

    const-wide/16 v91, 0x0

    cmpl-double v91, v32, v91

    if-eqz v91, :cond_e

    sget-object v91, Lcom/baidu/service/power/PowerStatsUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v92, "wakelock power=%.2f"

    const/16 v93, 0x1

    move/from16 v0, v93

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v93, v0

    const/16 v94, 0x0

    invoke-static/range {v32 .. v33}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v95

    aput-object v95, v93, v94

    invoke-static/range {v92 .. v93}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v92

    invoke-static/range {v91 .. v92}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_e
    move-object/from16 v0, v73

    move/from16 v1, v86

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getTcpBytesReceived(I)J

    move-result-wide v63

    .line 174
    .local v63, tcpBytesReceived:J
    move-object/from16 v0, v73

    move/from16 v1, v86

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getTcpBytesSent(I)J

    move-result-wide v65

    .line 175
    .local v65, tcpBytesSent:J
    add-long v91, v63, v65

    move-wide/from16 v0, v91

    long-to-double v0, v0

    move-wide/from16 v91, v0

    mul-double v32, v91, v6

    .line 176
    add-double v37, v37, v32

    .line 177
    sget-boolean v91, Lcom/baidu/service/power/PowerStatsUtil;->DEBUG:Z

    if-eqz v91, :cond_f

    const-wide/16 v91, 0x0

    cmpl-double v91, v32, v91

    if-eqz v91, :cond_f

    sget-object v91, Lcom/baidu/service/power/PowerStatsUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v92, "tcp power=%.2f"

    const/16 v93, 0x1

    move/from16 v0, v93

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v93, v0

    const/16 v94, 0x0

    invoke-static/range {v32 .. v33}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v95

    aput-object v95, v93, v94

    invoke-static/range {v92 .. v93}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v92

    invoke-static/range {v91 .. v92}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_f
    move-object/from16 v0, v73

    move-wide/from16 v1, v74

    move/from16 v3, v86

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    move-result-wide v91

    const-wide/16 v93, 0x3e8

    div-long v87, v91, v93

    .line 181
    .local v87, wifiRunningTimeMs:J
    move-wide/from16 v0, v87

    long-to-double v0, v0

    move-wide/from16 v91, v0

    const-string/jumbo v93, "wifi.on"

    move-object/from16 v0, v41

    move-object/from16 v1, v93

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v93

    mul-double v91, v91, v93

    const-wide v93, 0x408f400000000000L

    div-double v32, v91, v93

    .line 183
    add-double v37, v37, v32

    .line 184
    sget-boolean v91, Lcom/baidu/service/power/PowerStatsUtil;->DEBUG:Z

    if-eqz v91, :cond_10

    const-wide/16 v91, 0x0

    cmpl-double v91, v32, v91

    if-eqz v91, :cond_10

    sget-object v91, Lcom/baidu/service/power/PowerStatsUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v92, "wifi running power=%.2f"

    const/16 v93, 0x1

    move/from16 v0, v93

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v93, v0

    const/16 v94, 0x0

    invoke-static/range {v32 .. v33}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v95

    aput-object v95, v93, v94

    invoke-static/range {v92 .. v93}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v92

    invoke-static/range {v91 .. v92}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_10
    move-object/from16 v0, v73

    move-wide/from16 v1, v74

    move/from16 v3, v86

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Uid;->getWifiScanTime(JI)J

    move-result-wide v91

    const-wide/16 v93, 0x3e8

    div-long v89, v91, v93

    .line 188
    .local v89, wifiScanTimeMs:J
    move-wide/from16 v0, v89

    long-to-double v0, v0

    move-wide/from16 v91, v0

    const-string/jumbo v93, "wifi.scan"

    move-object/from16 v0, v41

    move-object/from16 v1, v93

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v93

    mul-double v91, v91, v93

    const-wide v93, 0x408f400000000000L

    div-double v32, v91, v93

    .line 190
    add-double v37, v37, v32

    .line 191
    sget-boolean v91, Lcom/baidu/service/power/PowerStatsUtil;->DEBUG:Z

    if-eqz v91, :cond_11

    const-wide/16 v91, 0x0

    cmpl-double v91, v32, v91

    if-eqz v91, :cond_11

    sget-object v91, Lcom/baidu/service/power/PowerStatsUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v92, "wifi scanning power=%.2f"

    const/16 v93, 0x1

    move/from16 v0, v93

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v93, v0

    const/16 v94, 0x0

    invoke-static/range {v32 .. v33}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v95

    aput-object v95, v93, v94

    invoke-static/range {v92 .. v93}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v92

    invoke-static/range {v91 .. v92}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_11
    invoke-virtual/range {v73 .. v73}, Landroid/os/BatteryStats$Uid;->getSensorStats()Ljava/util/Map;

    move-result-object v53

    .line 196
    .local v53, sensorStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;+Landroid/os/BatteryStats$Uid$Sensor;>;"
    invoke-interface/range {v53 .. v53}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v91

    invoke-interface/range {v91 .. v91}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :cond_12
    :goto_6
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v91

    if-eqz v91, :cond_14

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Ljava/util/Map$Entry;

    .line 197
    .local v51, sensorEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;+Landroid/os/BatteryStats$Uid$Sensor;>;"
    invoke-interface/range {v51 .. v51}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Landroid/os/BatteryStats$Uid$Sensor;

    .line 198
    .local v49, sensor:Landroid/os/BatteryStats$Uid$Sensor;
    invoke-virtual/range {v49 .. v49}, Landroid/os/BatteryStats$Uid$Sensor;->getHandle()I

    move-result v56

    .line 199
    .local v56, sensorType:I
    invoke-virtual/range {v49 .. v49}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v67

    .line 200
    .restart local v67       #timer:Landroid/os/BatteryStats$Timer;
    move-object/from16 v0, v67

    move-wide/from16 v1, v74

    move/from16 v3, v86

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v91

    const-wide/16 v93, 0x3e8

    div-long v54, v91, v93

    .line 201
    .local v54, sensorTime:J
    const-wide/16 v30, 0x0

    .line 202
    .local v30, multiplier:D
    packed-switch v56, :pswitch_data_0

    .line 208
    move-object/from16 v0, v52

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v50

    .line 210
    .local v50, sensorData:Landroid/hardware/Sensor;
    if-eqz v50, :cond_13

    .line 211
    invoke-virtual/range {v50 .. v50}, Landroid/hardware/Sensor;->getPower()F

    move-result v91

    move/from16 v0, v91

    float-to-double v0, v0

    move-wide/from16 v30, v0

    .line 214
    .end local v50           #sensorData:Landroid/hardware/Sensor;
    :cond_13
    :goto_7
    move-wide/from16 v0, v54

    long-to-double v0, v0

    move-wide/from16 v91, v0

    mul-double v91, v91, v30

    const-wide v93, 0x408f400000000000L

    div-double v32, v91, v93

    .line 215
    add-double v37, v37, v32

    .line 216
    sget-boolean v91, Lcom/baidu/service/power/PowerStatsUtil;->DEBUG:Z

    if-eqz v91, :cond_12

    const-wide/16 v91, 0x0

    cmpl-double v91, v32, v91

    if-eqz v91, :cond_12

    .line 217
    sget-object v91, Lcom/baidu/service/power/PowerStatsUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v92, "sensor %s power=%.2f"

    const/16 v93, 0x2

    move/from16 v0, v93

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v93, v0

    const/16 v94, 0x0

    invoke-virtual/range {v49 .. v49}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v95

    aput-object v95, v93, v94

    const/16 v94, 0x1

    invoke-static/range {v32 .. v33}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v95

    aput-object v95, v93, v94

    invoke-static/range {v92 .. v93}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v92

    invoke-static/range {v91 .. v92}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 204
    :pswitch_0
    const-string v91, "gps.on"

    move-object/from16 v0, v41

    move-object/from16 v1, v91

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v30

    .line 205
    move-wide/from16 v20, v54

    .line 206
    goto :goto_7

    .line 221
    .end local v30           #multiplier:D
    .end local v49           #sensor:Landroid/os/BatteryStats$Uid$Sensor;
    .end local v51           #sensorEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .end local v54           #sensorTime:J
    .end local v56           #sensorType:I
    .end local v67           #timer:Landroid/os/BatteryStats$Timer;
    :cond_14
    const/16 v26, 0x0

    .line 222
    .local v26, isOtherUser:Z
    invoke-virtual/range {v73 .. v73}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v91

    invoke-static/range {v91 .. v91}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v78

    .line 223
    .local v78, userId:I
    const-wide/16 v91, 0x0

    cmpl-double v91, v37, v91

    if-nez v91, :cond_15

    invoke-virtual/range {v73 .. v73}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v91

    if-nez v91, :cond_16

    .line 224
    :cond_15
    invoke-virtual/range {v73 .. v73}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v91

    const/16 v92, 0x3f2

    move/from16 v0, v91

    move/from16 v1, v92

    if-ne v0, v1, :cond_17

    .line 92
    .end local v34           #packageWithHighestDrain:Ljava/lang/String;
    :cond_16
    :goto_8
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_1

    .line 226
    .restart local v34       #packageWithHighestDrain:Ljava/lang/String;
    :cond_17
    invoke-virtual/range {v73 .. v73}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v91

    const/16 v92, 0x7d0

    move/from16 v0, v91

    move/from16 v1, v92

    if-eq v0, v1, :cond_16

    .line 228
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v91

    move/from16 v0, v78

    move/from16 v1, v91

    if-eq v0, v1, :cond_18

    invoke-virtual/range {v73 .. v73}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v91

    invoke-static/range {v91 .. v91}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v91

    const/16 v92, 0x2710

    move/from16 v0, v91

    move/from16 v1, v92

    if-lt v0, v1, :cond_18

    .line 230
    const/16 v26, 0x1

    goto :goto_8

    .line 232
    :cond_18
    invoke-virtual/range {v73 .. v73}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v91

    const/16 v92, 0x2710

    move/from16 v0, v91

    move/from16 v1, v92

    if-gt v0, v1, :cond_19

    .line 233
    invoke-virtual/range {v73 .. v73}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v91

    const/16 v92, 0x3e8

    move/from16 v0, v91

    move/from16 v1, v92

    if-ne v0, v1, :cond_16

    goto :goto_8

    .line 235
    :cond_19
    invoke-virtual/range {v73 .. v73}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v91

    move-object/from16 v0, v36

    move/from16 v1, v91

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v76

    .line 236
    .local v76, uidName:Ljava/lang/String;
    const/4 v5, 0x0

    .line 237
    .local v5, actualName:Ljava/lang/String;
    if-eqz v76, :cond_1a

    .line 238
    const/16 v91, 0x3a

    move-object/from16 v0, v76

    move/from16 v1, v91

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v25

    .line 239
    .local v25, index:I
    if-ltz v25, :cond_1d

    .line 240
    const/16 v91, 0x0

    move-object/from16 v0, v76

    move/from16 v1, v91

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 244
    .end local v25           #index:I
    :cond_1a
    :goto_9
    if-eqz v5, :cond_1b

    const-string v91, "android.media"

    move-object/from16 v0, v91

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v91

    if-nez v91, :cond_16

    .line 247
    :cond_1b
    invoke-virtual/range {v73 .. v73}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v91

    move-object/from16 v0, p0

    move/from16 v1, v91

    invoke-static {v0, v1}, Lcom/baidu/service/power/PowerStatsUtil;->getLabelFromUid(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v29

    .line 248
    .local v29, label:Ljava/lang/String;
    new-instance v91, Lcom/baidu/service/power/PowerStatsUtil$BatterySipper;

    if-eqz v29, :cond_1c

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v34

    .end local v34           #packageWithHighestDrain:Ljava/lang/String;
    :cond_1c
    move-object/from16 v0, v91

    move-object/from16 v1, v34

    move-wide/from16 v2, v37

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/service/power/PowerStatsUtil$BatterySipper;-><init>(Ljava/lang/String;D)V

    move-object/from16 v0, v40

    move-object/from16 v1, v91

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    add-double v70, v70, v37

    goto/16 :goto_8

    .line 242
    .end local v29           #label:Ljava/lang/String;
    .restart local v25       #index:I
    .restart local v34       #packageWithHighestDrain:Ljava/lang/String;
    :cond_1d
    move-object/from16 v5, v76

    goto :goto_9

    .line 256
    .end local v5           #actualName:Ljava/lang/String;
    .end local v10           #cpuFgTime:J
    .end local v13           #cpuTime:J
    .end local v20           #gpsTime:J
    .end local v22           #highestDrain:D
    .end local v24           #i$:Ljava/util/Iterator;
    .end local v25           #index:I
    .end local v26           #isOtherUser:Z
    .end local v32           #p:D
    .end local v34           #packageWithHighestDrain:Ljava/lang/String;
    .end local v37           #power:D
    .end local v44           #processStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v53           #sensorStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .end local v59           #status:I
    .end local v63           #tcpBytesReceived:J
    .end local v65           #tcpBytesSent:J
    .end local v73           #u:Landroid/os/BatteryStats$Uid;
    .end local v76           #uidName:Ljava/lang/String;
    .end local v78           #userId:I
    .end local v83           #wakelockStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v84           #wakelockTime:J
    .end local v87           #wifiRunningTimeMs:J
    .end local v89           #wifiScanTimeMs:J
    :cond_1e
    new-instance v48, Ljava/util/ArrayList;

    invoke-direct/range {v48 .. v48}, Ljava/util/ArrayList;-><init>()V

    .line 257
    .local v48, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static/range {v40 .. v40}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 258
    invoke-virtual/range {v40 .. v40}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .line 259
    .local v27, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/baidu/service/power/PowerStatsUtil$BatterySipper;>;"
    const/4 v8, 0x0

    .line 260
    .local v8, b:Lcom/baidu/service/power/PowerStatsUtil$BatterySipper;
    :cond_1f
    :goto_a
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v91

    if-eqz v91, :cond_0

    .line 261
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .end local v8           #b:Lcom/baidu/service/power/PowerStatsUtil$BatterySipper;
    check-cast v8, Lcom/baidu/service/power/PowerStatsUtil$BatterySipper;

    .line 262
    .restart local v8       #b:Lcom/baidu/service/power/PowerStatsUtil$BatterySipper;
    iget-wide v0, v8, Lcom/baidu/service/power/PowerStatsUtil$BatterySipper;->power:D

    move-wide/from16 v91, v0

    div-double v91, v91, v70

    move-wide/from16 v0, v91

    iput-wide v0, v8, Lcom/baidu/service/power/PowerStatsUtil$BatterySipper;->percent:D

    .line 263
    sget-object v91, Lcom/baidu/service/power/PowerStatsUtil;->TAG:Ljava/lang/String;

    new-instance v92, Ljava/lang/StringBuilder;

    invoke-direct/range {v92 .. v92}, Ljava/lang/StringBuilder;-><init>()V

    const-string v93, "get app: "

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    iget-object v0, v8, Lcom/baidu/service/power/PowerStatsUtil$BatterySipper;->pkgLabel:Ljava/lang/String;

    move-object/from16 v93, v0

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    iget-wide v0, v8, Lcom/baidu/service/power/PowerStatsUtil$BatterySipper;->percent:D

    move-wide/from16 v93, v0

    invoke-virtual/range {v92 .. v94}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v92

    invoke-virtual/range {v92 .. v92}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v92

    invoke-static/range {v91 .. v92}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    invoke-virtual/range {v48 .. v48}, Ljava/util/ArrayList;->size()I

    move-result v91

    const/16 v92, 0x3

    move/from16 v0, v91

    move/from16 v1, v92

    if-ge v0, v1, :cond_1f

    iget-wide v0, v8, Lcom/baidu/service/power/PowerStatsUtil$BatterySipper;->percent:D

    move-wide/from16 v91, v0

    const-wide v93, 0x3fc999999999999aL

    cmpl-double v91, v91, v93

    if-lez v91, :cond_1f

    .line 265
    iget-object v0, v8, Lcom/baidu/service/power/PowerStatsUtil$BatterySipper;->pkgLabel:Ljava/lang/String;

    move-object/from16 v91, v0

    move-object/from16 v0, v48

    move-object/from16 v1, v91

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    sget-object v91, Lcom/baidu/service/power/PowerStatsUtil;->TAG:Ljava/lang/String;

    new-instance v92, Ljava/lang/StringBuilder;

    invoke-direct/range {v92 .. v92}, Ljava/lang/StringBuilder;-><init>()V

    const-string v93, "get most app: "

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    iget-object v0, v8, Lcom/baidu/service/power/PowerStatsUtil$BatterySipper;->pkgLabel:Ljava/lang/String;

    move-object/from16 v93, v0

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    const-string v93, " "

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    iget-wide v0, v8, Lcom/baidu/service/power/PowerStatsUtil$BatterySipper;->percent:D

    move-wide/from16 v93, v0

    invoke-virtual/range {v92 .. v94}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v92

    invoke-virtual/range {v92 .. v92}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v92

    invoke-static/range {v91 .. v92}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 202
    nop

    :pswitch_data_0
    .packed-switch -0x2710
        :pswitch_0
    .end packed-switch
.end method
