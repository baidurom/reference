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
    .line 33
    const-string v0, "PowerStatsUtil"

    sput-object v0, Lcom/baidu/service/power/PowerStatsUtil;->TAG:Ljava/lang/String;

    .line 34
    const/4 v0, 0x1

    sput-boolean v0, Lcom/baidu/service/power/PowerStatsUtil;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method private static getAverageDataCost(Lcom/android/internal/os/BatteryStatsImpl;Lcom/android/internal/os/PowerProfile;I)D
    .locals 26
    .parameter "stats"
    .parameter "power"
    .parameter "which"

    .prologue
    .line 259
    const-wide/32 v6, 0xf4240

    .line 260
    .local v6, WIFI_BPS:J
    const-wide/32 v2, 0x30d40

    .line 261
    .local v2, MOBILE_BPS:J
    const-string/jumbo v22, "wifi.active"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v22

    const-wide v24, 0x40ac200000000000L

    div-double v8, v22, v24

    .line 263
    .local v8, WIFI_POWER:D
    const-string/jumbo v22, "radio.active"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v22

    const-wide v24, 0x40ac200000000000L

    div-double v4, v22, v24

    .line 265
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

    .line 267
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

    .line 269
    .local v20, wifiData:J
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->getRadioDataUptime()J

    move-result-wide v22

    const-wide/16 v24, 0x3e8

    div-long v16, v22, v24

    .line 270
    .local v16, radioDataUptimeMs:J
    const-wide/16 v22, 0x0

    cmp-long v22, v16, v22

    if-eqz v22, :cond_0

    const-wide/16 v22, 0x8

    mul-long v22, v22, v14

    const-wide/16 v24, 0x3e8

    mul-long v22, v22, v24

    div-long v10, v22, v16

    .line 274
    .local v10, mobileBps:J
    :goto_0
    const-wide/16 v22, 0x8

    div-long v22, v10, v22

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v22, v0

    div-double v12, v4, v22

    .line 275
    .local v12, mobileCostPerByte:D
    const-wide v22, 0x40fe848000000000L

    div-double v18, v8, v22

    .line 276
    .local v18, wifiCostPerByte:D
    add-long v22, v20, v14

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-eqz v22, :cond_1

    .line 277
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

    .line 280
    :goto_1
    return-wide v22

    .line 270
    .end local v10           #mobileBps:J
    .end local v12           #mobileCostPerByte:D
    .end local v18           #wifiCostPerByte:D
    :cond_0
    const-wide/32 v10, 0x30d40

    goto :goto_0

    .line 280
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
    .line 286
    const/4 v10, 0x0

    .line 287
    .local v10, name:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    .line 288
    .local v16, pm:Landroid/content/pm/PackageManager;
    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 289
    .local v5, defaultActivityIcon:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v13

    .line 290
    .local v13, packages:[Ljava/lang/String;
    if-nez v13, :cond_0

    .line 291
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    .line 328
    :goto_0
    return-object v17

    .line 294
    :cond_0
    array-length v0, v13

    move/from16 v17, v0

    move/from16 v0, v17

    new-array v12, v0, [Ljava/lang/String;

    .line 295
    .local v12, packageLabels:[Ljava/lang/String;
    const/16 v17, 0x0

    const/16 v18, 0x0

    array-length v0, v13

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v13, v0, v12, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 298
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    array-length v0, v12

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v6, v0, :cond_2

    .line 300
    :try_start_0
    aget-object v17, v12, v6

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 301
    .local v3, ai:Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 302
    .local v8, label:Ljava/lang/CharSequence;
    if-eqz v8, :cond_1

    .line 303
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v12, v6
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 298
    .end local v3           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v8           #label:Ljava/lang/CharSequence;
    :cond_1
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 309
    :cond_2
    array-length v0, v12

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 310
    const/16 v17, 0x0

    aget-object v10, v12, v17

    :cond_3
    :goto_3
    move-object/from16 v17, v10

    .line 328
    goto :goto_0

    .line 313
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

    .line 315
    .local v15, pkgName:Ljava/lang/String;
    const/16 v17, 0x0

    :try_start_1
    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v15, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v14

    .line 316
    .local v14, pi:Landroid/content/pm/PackageInfo;
    iget v0, v14, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    move/from16 v17, v0

    if-eqz v17, :cond_5

    .line 317
    iget v0, v14, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    move/from16 v17, v0

    iget-object v0, v14, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v15, v1, v2}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v11

    .line 319
    .local v11, nm:Ljava/lang/CharSequence;
    if-eqz v11, :cond_5

    .line 320
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v10

    goto :goto_3

    .line 324
    .end local v11           #nm:Ljava/lang/CharSequence;
    .end local v14           #pi:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v17

    .line 313
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 305
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v7           #i$:I
    .end local v9           #len$:I
    .end local v15           #pkgName:Ljava/lang/String;
    :catch_1
    move-exception v17

    goto :goto_2
.end method

.method public static getTopApp(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 93
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
    .line 54
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v35

    .line 55
    .local v35, pm:Landroid/content/pm/PackageManager;
    const-wide/16 v69, 0x0

    .line 56
    .local v69, totalAppPower:D
    new-instance v39, Ljava/util/ArrayList;

    invoke-direct/range {v39 .. v39}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .local v39, powerList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/service/power/PowerStatsUtil$BatterySipper;>;"
    const-string v87, "batteryinfo"

    invoke-static/range {v87 .. v87}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v87

    invoke-static/range {v87 .. v87}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v9

    .line 60
    .local v9, batteryStats:Lcom/android/internal/app/IBatteryStats;
    const/16 v57, 0x0

    .line 61
    .local v57, stats:Lcom/android/internal/os/BatteryStatsImpl;
    const/16 v84, 0x0

    .line 63
    .local v84, which:I
    :try_start_0
    invoke-interface {v9}, Lcom/android/internal/app/IBatteryStats;->getStatistics()[B

    move-result-object v15

    .line 64
    .local v15, data:[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v34

    .line 65
    .local v34, parcel:Landroid/os/Parcel;
    const/16 v87, 0x0

    array-length v0, v15

    move/from16 v88, v0

    move-object/from16 v0, v34

    move/from16 v1, v87

    move/from16 v2, v88

    invoke-virtual {v0, v15, v1, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 66
    const/16 v87, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v87

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 67
    sget-object v87, Lcom/android/internal/os/BatteryStatsImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v87

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v87

    move-object/from16 v0, v87

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v57, v0

    .line 69
    move-object/from16 v0, v57

    move/from16 v1, v84

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->distributeWorkLocked(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    new-instance v40, Lcom/android/internal/os/PowerProfile;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    .line 77
    .local v40, powerProfile:Lcom/android/internal/os/PowerProfile;
    const-string/jumbo v87, "sensor"

    move-object/from16 v0, p0

    move-object/from16 v1, v87

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Landroid/hardware/SensorManager;

    .line 79
    .local v51, sensorManager:Landroid/hardware/SensorManager;
    invoke-virtual/range {v40 .. v40}, Lcom/android/internal/os/PowerProfile;->getNumSpeedSteps()I

    move-result v56

    .line 80
    .local v56, speedSteps:I
    move/from16 v0, v56

    new-array v0, v0, [D

    move-object/from16 v38, v0

    .line 81
    .local v38, powerCpuNormal:[D
    move/from16 v0, v56

    new-array v12, v0, [J

    .line 82
    .local v12, cpuSpeedStepTimes:[J
    const/16 v31, 0x0

    .local v31, p:I
    :goto_0
    move/from16 v0, v31

    move/from16 v1, v56

    if-ge v0, v1, :cond_1

    .line 83
    const-string v87, "cpu.active"

    move-object/from16 v0, v40

    move-object/from16 v1, v87

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v87

    aput-wide v87, v38, v31

    .line 82
    add-int/lit8 v31, v31, 0x1

    goto :goto_0

    .line 70
    .end local v12           #cpuSpeedStepTimes:[J
    .end local v15           #data:[B
    .end local v31           #p:I
    .end local v34           #parcel:Landroid/os/Parcel;
    .end local v38           #powerCpuNormal:[D
    .end local v40           #powerProfile:Lcom/android/internal/os/PowerProfile;
    .end local v51           #sensorManager:Landroid/hardware/SensorManager;
    .end local v56           #speedSteps:I
    :catch_0
    move-exception v16

    .line 71
    .local v16, e:Landroid/os/RemoteException;
    sget-object v87, Lcom/baidu/service/power/PowerStatsUtil;->TAG:Ljava/lang/String;

    const-string v88, "RemoteException:"

    move-object/from16 v0, v87

    move-object/from16 v1, v88

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    const/16 v47, 0x0

    .line 255
    .end local v16           #e:Landroid/os/RemoteException;
    :cond_0
    return-object v47

    .line 86
    .restart local v12       #cpuSpeedStepTimes:[J
    .restart local v15       #data:[B
    .restart local v31       #p:I
    .restart local v34       #parcel:Landroid/os/Parcel;
    .restart local v38       #powerCpuNormal:[D
    .restart local v40       #powerProfile:Lcom/android/internal/os/PowerProfile;
    .restart local v51       #sensorManager:Landroid/hardware/SensorManager;
    .restart local v56       #speedSteps:I
    :cond_1
    move-object/from16 v0, v57

    move-object/from16 v1, v40

    move/from16 v2, v84

    invoke-static {v0, v1, v2}, Lcom/baidu/service/power/PowerStatsUtil;->getAverageDataCost(Lcom/android/internal/os/BatteryStatsImpl;Lcom/android/internal/os/PowerProfile;I)D

    move-result-wide v6

    .line 87
    .local v6, averageCostPerByte:D
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v87

    const-wide/16 v89, 0x3e8

    mul-long v87, v87, v89

    move-object/from16 v0, v57

    move-wide/from16 v1, v87

    move/from16 v3, v84

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryRealtime(JI)J

    move-result-wide v73

    .line 89
    .local v73, uSecTime:J
    invoke-virtual/range {v57 .. v57}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStats()Landroid/util/SparseArray;

    move-result-object v76

    .line 90
    .local v76, uidStats:Landroid/util/SparseArray;,"Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual/range {v76 .. v76}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 91
    .local v4, NU:I
    const/16 v27, 0x0

    .end local v31           #p:I
    .local v27, iu:I
    :goto_1
    move/from16 v0, v27

    if-ge v0, v4, :cond_1c

    .line 92
    move-object/from16 v0, v76

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v72

    check-cast v72, Landroid/os/BatteryStats$Uid;

    .line 93
    .local v72, u:Landroid/os/BatteryStats$Uid;
    invoke-virtual/range {v72 .. v72}, Landroid/os/BatteryStats$Uid;->getProcessStats()Ljava/util/Map;

    move-result-object v43

    .line 94
    .local v43, processStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    const-wide/16 v36, 0x0

    .line 95
    .local v36, power:D
    const-wide/16 v31, 0x0

    .line 96
    .local v31, p:D
    const-wide/16 v22, 0x0

    .line 97
    .local v22, highestDrain:D
    const/16 v33, 0x0

    .line 98
    .local v33, packageWithHighestDrain:Ljava/lang/String;
    const-wide/16 v13, 0x0

    .line 99
    .local v13, cpuTime:J
    const-wide/16 v10, 0x0

    .line 100
    .local v10, cpuFgTime:J
    const-wide/16 v82, 0x0

    .line 101
    .local v82, wakelockTime:J
    const-wide/16 v20, 0x0

    .line 102
    .local v20, gpsTime:J
    const/16 v58, 0x0

    .line 103
    .local v58, status:I
    invoke-interface/range {v43 .. v43}, Ljava/util/Map;->size()I

    move-result v87

    if-lez v87, :cond_9

    .line 106
    invoke-interface/range {v43 .. v43}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v87

    invoke-interface/range {v87 .. v87}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .local v24, i$:Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v87

    if-eqz v87, :cond_9

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map$Entry;

    .line 107
    .local v17, ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Landroid/os/BatteryStats$Uid$Proc;

    .line 108
    .local v44, ps:Landroid/os/BatteryStats$Uid$Proc;
    move-object/from16 v0, v44

    move/from16 v1, v84

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v77

    .line 109
    .local v77, userTime:J
    move-object/from16 v0, v44

    move/from16 v1, v84

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v60

    .line 110
    .local v60, systemTime:J
    move-object/from16 v0, v44

    move/from16 v1, v84

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v18

    .line 111
    .local v18, foregroundTime:J
    const-wide/16 v87, 0xa

    mul-long v87, v87, v18

    add-long v10, v10, v87

    .line 112
    add-long v87, v77, v60

    const-wide/16 v89, 0xa

    mul-long v67, v87, v89

    .line 113
    .local v67, tmpCpuTime:J
    const/16 v71, 0x0

    .line 115
    .local v71, totalTimeAtSpeeds:I
    const/16 v59, 0x0

    .local v59, step:I
    :goto_3
    move/from16 v0, v59

    move/from16 v1, v56

    if-ge v0, v1, :cond_3

    .line 116
    move-object/from16 v0, v44

    move/from16 v1, v59

    move/from16 v2, v84

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid$Proc;->getTimeAtCpuSpeedStep(II)J

    move-result-wide v87

    aput-wide v87, v12, v59

    .line 117
    move/from16 v0, v71

    int-to-long v0, v0

    move-wide/from16 v87, v0

    aget-wide v89, v12, v59

    add-long v87, v87, v89

    move-wide/from16 v0, v87

    long-to-int v0, v0

    move/from16 v71, v0

    .line 115
    add-int/lit8 v59, v59, 0x1

    goto :goto_3

    .line 119
    :cond_3
    if-nez v71, :cond_4

    const/16 v71, 0x1

    .line 121
    :cond_4
    const-wide/16 v41, 0x0

    .line 122
    .local v41, processPower:D
    const/16 v59, 0x0

    :goto_4
    move/from16 v0, v59

    move/from16 v1, v56

    if-ge v0, v1, :cond_5

    .line 123
    aget-wide v87, v12, v59

    move-wide/from16 v0, v87

    long-to-double v0, v0

    move-wide/from16 v87, v0

    move/from16 v0, v71

    int-to-double v0, v0

    move-wide/from16 v89, v0

    div-double v45, v87, v89

    .line 124
    .local v45, ratio:D
    move-wide/from16 v0, v67

    long-to-double v0, v0

    move-wide/from16 v87, v0

    mul-double v87, v87, v45

    aget-wide v89, v38, v59

    mul-double v87, v87, v89

    add-double v41, v41, v87

    .line 122
    add-int/lit8 v59, v59, 0x1

    goto :goto_4

    .line 126
    .end local v45           #ratio:D
    :cond_5
    add-long v13, v13, v67

    .line 127
    sget-boolean v87, Lcom/baidu/service/power/PowerStatsUtil;->DEBUG:Z

    if-eqz v87, :cond_6

    const-wide/16 v87, 0x0

    cmpl-double v87, v41, v87

    if-eqz v87, :cond_6

    .line 128
    sget-object v87, Lcom/baidu/service/power/PowerStatsUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v88, "process %s, cpu power=%.2f"

    const/16 v89, 0x2

    move/from16 v0, v89

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v89, v0

    const/16 v90, 0x0

    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v91

    aput-object v91, v89, v90

    const/16 v90, 0x1

    const-wide v91, 0x408f400000000000L

    div-double v91, v41, v91

    invoke-static/range {v91 .. v92}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v91

    aput-object v91, v89, v90

    invoke-static/range {v88 .. v89}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v88

    invoke-static/range {v87 .. v88}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_6
    add-double v36, v36, v41

    .line 132
    if-eqz v33, :cond_7

    const-string v87, "*"

    move-object/from16 v0, v33

    move-object/from16 v1, v87

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v87

    if-eqz v87, :cond_8

    .line 134
    :cond_7
    move-wide/from16 v22, v41

    .line 135
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v33

    .end local v33           #packageWithHighestDrain:Ljava/lang/String;
    check-cast v33, Ljava/lang/String;

    .restart local v33       #packageWithHighestDrain:Ljava/lang/String;
    goto/16 :goto_2

    .line 136
    :cond_8
    cmpg-double v87, v22, v41

    if-gez v87, :cond_2

    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v87

    check-cast v87, Ljava/lang/String;

    const-string v88, "*"

    invoke-virtual/range {v87 .. v88}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v87

    if-nez v87, :cond_2

    .line 138
    move-wide/from16 v22, v41

    .line 139
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v33

    .end local v33           #packageWithHighestDrain:Ljava/lang/String;
    check-cast v33, Ljava/lang/String;

    .restart local v33       #packageWithHighestDrain:Ljava/lang/String;
    goto/16 :goto_2

    .line 143
    .end local v17           #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v18           #foregroundTime:J
    .end local v24           #i$:Ljava/util/Iterator;
    .end local v41           #processPower:D
    .end local v44           #ps:Landroid/os/BatteryStats$Uid$Proc;
    .end local v59           #step:I
    .end local v60           #systemTime:J
    .end local v67           #tmpCpuTime:J
    .end local v71           #totalTimeAtSpeeds:I
    .end local v77           #userTime:J
    :cond_9
    cmp-long v87, v10, v13

    if-lez v87, :cond_b

    .line 144
    const-wide/16 v87, 0x2710

    add-long v87, v87, v13

    cmp-long v87, v10, v87

    if-lez v87, :cond_a

    .line 145
    sget-object v87, Lcom/baidu/service/power/PowerStatsUtil;->TAG:Ljava/lang/String;

    const-string v88, "WARNING! Cputime is more than 10 seconds behind Foreground time"

    invoke-static/range {v87 .. v88}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_a
    move-wide v13, v10

    .line 149
    :cond_b
    const-wide v87, 0x408f400000000000L

    div-double v36, v36, v87

    .line 152
    invoke-virtual/range {v72 .. v72}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Ljava/util/Map;

    move-result-object v81

    .line 154
    .local v81, wakelockStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-interface/range {v81 .. v81}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v87

    invoke-interface/range {v87 .. v87}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .restart local v24       #i$:Ljava/util/Iterator;
    :cond_c
    :goto_5
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v87

    if-eqz v87, :cond_d

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v80

    check-cast v80, Ljava/util/Map$Entry;

    .line 155
    .local v80, wakelockEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-interface/range {v80 .. v80}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v79

    check-cast v79, Landroid/os/BatteryStats$Uid$Wakelock;

    .line 158
    .local v79, wakelock:Landroid/os/BatteryStats$Uid$Wakelock;
    const/16 v87, 0x0

    move-object/from16 v0, v79

    move/from16 v1, v87

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v66

    .line 159
    .local v66, timer:Landroid/os/BatteryStats$Timer;
    if-eqz v66, :cond_c

    .line 160
    move-object/from16 v0, v66

    move-wide/from16 v1, v73

    move/from16 v3, v84

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v87

    add-long v82, v82, v87

    goto :goto_5

    .line 163
    .end local v66           #timer:Landroid/os/BatteryStats$Timer;
    .end local v79           #wakelock:Landroid/os/BatteryStats$Uid$Wakelock;
    .end local v80           #wakelockEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    :cond_d
    const-wide/16 v87, 0x3e8

    div-long v82, v82, v87

    .line 166
    move-wide/from16 v0, v82

    long-to-double v0, v0

    move-wide/from16 v87, v0

    const-string v89, "cpu.awake"

    move-object/from16 v0, v40

    move-object/from16 v1, v89

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v89

    mul-double v87, v87, v89

    const-wide v89, 0x408f400000000000L

    div-double v31, v87, v89

    .line 168
    add-double v36, v36, v31

    .line 169
    sget-boolean v87, Lcom/baidu/service/power/PowerStatsUtil;->DEBUG:Z

    if-eqz v87, :cond_e

    const-wide/16 v87, 0x0

    cmpl-double v87, v31, v87

    if-eqz v87, :cond_e

    sget-object v87, Lcom/baidu/service/power/PowerStatsUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v88, "wakelock power=%.2f"

    const/16 v89, 0x1

    move/from16 v0, v89

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v89, v0

    const/16 v90, 0x0

    invoke-static/range {v31 .. v32}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v91

    aput-object v91, v89, v90

    invoke-static/range {v88 .. v89}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v88

    invoke-static/range {v87 .. v88}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_e
    move-object/from16 v0, v72

    move/from16 v1, v84

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getTcpBytesReceived(I)J

    move-result-wide v62

    .line 173
    .local v62, tcpBytesReceived:J
    move-object/from16 v0, v72

    move/from16 v1, v84

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getTcpBytesSent(I)J

    move-result-wide v64

    .line 174
    .local v64, tcpBytesSent:J
    add-long v87, v62, v64

    move-wide/from16 v0, v87

    long-to-double v0, v0

    move-wide/from16 v87, v0

    mul-double v31, v87, v6

    .line 175
    add-double v36, v36, v31

    .line 176
    sget-boolean v87, Lcom/baidu/service/power/PowerStatsUtil;->DEBUG:Z

    if-eqz v87, :cond_f

    const-wide/16 v87, 0x0

    cmpl-double v87, v31, v87

    if-eqz v87, :cond_f

    sget-object v87, Lcom/baidu/service/power/PowerStatsUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v88, "tcp power=%.2f"

    const/16 v89, 0x1

    move/from16 v0, v89

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v89, v0

    const/16 v90, 0x0

    invoke-static/range {v31 .. v32}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v91

    aput-object v91, v89, v90

    invoke-static/range {v88 .. v89}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v88

    invoke-static/range {v87 .. v88}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_f
    move-object/from16 v0, v72

    move-wide/from16 v1, v73

    move/from16 v3, v84

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    move-result-wide v87

    const-wide/16 v89, 0x3e8

    div-long v85, v87, v89

    .line 180
    .local v85, wifiRunningTimeMs:J
    move-wide/from16 v0, v85

    long-to-double v0, v0

    move-wide/from16 v87, v0

    const-string/jumbo v89, "wifi.on"

    move-object/from16 v0, v40

    move-object/from16 v1, v89

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v89

    mul-double v87, v87, v89

    const-wide v89, 0x408f400000000000L

    div-double v31, v87, v89

    .line 182
    add-double v36, v36, v31

    .line 183
    sget-boolean v87, Lcom/baidu/service/power/PowerStatsUtil;->DEBUG:Z

    if-eqz v87, :cond_10

    const-wide/16 v87, 0x0

    cmpl-double v87, v31, v87

    if-eqz v87, :cond_10

    sget-object v87, Lcom/baidu/service/power/PowerStatsUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v88, "wifi running power=%.2f"

    const/16 v89, 0x1

    move/from16 v0, v89

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v89, v0

    const/16 v90, 0x0

    invoke-static/range {v31 .. v32}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v91

    aput-object v91, v89, v90

    invoke-static/range {v88 .. v89}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v88

    invoke-static/range {v87 .. v88}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_10
    invoke-virtual/range {v72 .. v72}, Landroid/os/BatteryStats$Uid;->getSensorStats()Ljava/util/Map;

    move-result-object v52

    .line 188
    .local v52, sensorStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;+Landroid/os/BatteryStats$Uid$Sensor;>;"
    invoke-interface/range {v52 .. v52}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v87

    invoke-interface/range {v87 .. v87}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :cond_11
    :goto_6
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v87

    if-eqz v87, :cond_13

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Ljava/util/Map$Entry;

    .line 189
    .local v50, sensorEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;+Landroid/os/BatteryStats$Uid$Sensor;>;"
    invoke-interface/range {v50 .. v50}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Landroid/os/BatteryStats$Uid$Sensor;

    .line 190
    .local v48, sensor:Landroid/os/BatteryStats$Uid$Sensor;
    invoke-virtual/range {v48 .. v48}, Landroid/os/BatteryStats$Uid$Sensor;->getHandle()I

    move-result v55

    .line 191
    .local v55, sensorType:I
    invoke-virtual/range {v48 .. v48}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v66

    .line 192
    .restart local v66       #timer:Landroid/os/BatteryStats$Timer;
    move-object/from16 v0, v66

    move-wide/from16 v1, v73

    move/from16 v3, v84

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v87

    const-wide/16 v89, 0x3e8

    div-long v53, v87, v89

    .line 193
    .local v53, sensorTime:J
    const-wide/16 v29, 0x0

    .line 194
    .local v29, multiplier:D
    packed-switch v55, :pswitch_data_0

    .line 200
    move-object/from16 v0, v51

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v49

    .line 202
    .local v49, sensorData:Landroid/hardware/Sensor;
    if-eqz v49, :cond_12

    .line 203
    invoke-virtual/range {v49 .. v49}, Landroid/hardware/Sensor;->getPower()F

    move-result v87

    move/from16 v0, v87

    float-to-double v0, v0

    move-wide/from16 v29, v0

    .line 206
    .end local v49           #sensorData:Landroid/hardware/Sensor;
    :cond_12
    :goto_7
    move-wide/from16 v0, v53

    long-to-double v0, v0

    move-wide/from16 v87, v0

    mul-double v87, v87, v29

    const-wide v89, 0x408f400000000000L

    div-double v31, v87, v89

    .line 207
    add-double v36, v36, v31

    .line 208
    sget-boolean v87, Lcom/baidu/service/power/PowerStatsUtil;->DEBUG:Z

    if-eqz v87, :cond_11

    const-wide/16 v87, 0x0

    cmpl-double v87, v31, v87

    if-eqz v87, :cond_11

    .line 209
    sget-object v87, Lcom/baidu/service/power/PowerStatsUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v88, "sensor %s power=%.2f"

    const/16 v89, 0x2

    move/from16 v0, v89

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v89, v0

    const/16 v90, 0x0

    invoke-virtual/range {v48 .. v48}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v91

    aput-object v91, v89, v90

    const/16 v90, 0x1

    invoke-static/range {v31 .. v32}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v91

    aput-object v91, v89, v90

    invoke-static/range {v88 .. v89}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v88

    invoke-static/range {v87 .. v88}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 196
    :pswitch_0
    const-string v87, "gps.on"

    move-object/from16 v0, v40

    move-object/from16 v1, v87

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v29

    .line 197
    move-wide/from16 v20, v53

    .line 198
    goto :goto_7

    .line 213
    .end local v29           #multiplier:D
    .end local v48           #sensor:Landroid/os/BatteryStats$Uid$Sensor;
    .end local v50           #sensorEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .end local v53           #sensorTime:J
    .end local v55           #sensorType:I
    .end local v66           #timer:Landroid/os/BatteryStats$Timer;
    :cond_13
    const-wide/16 v87, 0x0

    cmpl-double v87, v36, v87

    if-nez v87, :cond_14

    invoke-virtual/range {v72 .. v72}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v87

    if-nez v87, :cond_15

    .line 214
    :cond_14
    invoke-virtual/range {v72 .. v72}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v87

    const/16 v88, 0x3f2

    move/from16 v0, v87

    move/from16 v1, v88

    if-ne v0, v1, :cond_16

    .line 91
    .end local v33           #packageWithHighestDrain:Ljava/lang/String;
    :cond_15
    :goto_8
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_1

    .line 216
    .restart local v33       #packageWithHighestDrain:Ljava/lang/String;
    :cond_16
    invoke-virtual/range {v72 .. v72}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v87

    const/16 v88, 0x7d0

    move/from16 v0, v87

    move/from16 v1, v88

    if-eq v0, v1, :cond_15

    .line 218
    invoke-virtual/range {v72 .. v72}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v87

    const/16 v88, 0x2710

    move/from16 v0, v87

    move/from16 v1, v88

    if-gt v0, v1, :cond_17

    .line 219
    invoke-virtual/range {v72 .. v72}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v87

    const/16 v88, 0x3e8

    move/from16 v0, v87

    move/from16 v1, v88

    if-ne v0, v1, :cond_15

    goto :goto_8

    .line 221
    :cond_17
    invoke-virtual/range {v72 .. v72}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v87

    move-object/from16 v0, v35

    move/from16 v1, v87

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v75

    .line 222
    .local v75, uidName:Ljava/lang/String;
    const/4 v5, 0x0

    .line 223
    .local v5, actualName:Ljava/lang/String;
    if-eqz v75, :cond_18

    .line 224
    const/16 v87, 0x3a

    move-object/from16 v0, v75

    move/from16 v1, v87

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v25

    .line 225
    .local v25, index:I
    if-ltz v25, :cond_1b

    .line 226
    const/16 v87, 0x0

    move-object/from16 v0, v75

    move/from16 v1, v87

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 230
    .end local v25           #index:I
    :cond_18
    :goto_9
    if-eqz v5, :cond_19

    const-string v87, "android.media"

    move-object/from16 v0, v87

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v87

    if-nez v87, :cond_15

    .line 233
    :cond_19
    invoke-virtual/range {v72 .. v72}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v87

    move-object/from16 v0, p0

    move/from16 v1, v87

    invoke-static {v0, v1}, Lcom/baidu/service/power/PowerStatsUtil;->getLabelFromUid(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v28

    .line 234
    .local v28, label:Ljava/lang/String;
    new-instance v87, Lcom/baidu/service/power/PowerStatsUtil$BatterySipper;

    if-eqz v28, :cond_1a

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v33

    .end local v33           #packageWithHighestDrain:Ljava/lang/String;
    :cond_1a
    move-object/from16 v0, v87

    move-object/from16 v1, v33

    move-wide/from16 v2, v36

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/service/power/PowerStatsUtil$BatterySipper;-><init>(Ljava/lang/String;D)V

    move-object/from16 v0, v39

    move-object/from16 v1, v87

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    add-double v69, v69, v36

    goto/16 :goto_8

    .line 228
    .end local v28           #label:Ljava/lang/String;
    .restart local v25       #index:I
    .restart local v33       #packageWithHighestDrain:Ljava/lang/String;
    :cond_1b
    move-object/from16 v5, v75

    goto :goto_9

    .line 242
    .end local v5           #actualName:Ljava/lang/String;
    .end local v10           #cpuFgTime:J
    .end local v13           #cpuTime:J
    .end local v20           #gpsTime:J
    .end local v22           #highestDrain:D
    .end local v24           #i$:Ljava/util/Iterator;
    .end local v25           #index:I
    .end local v31           #p:D
    .end local v33           #packageWithHighestDrain:Ljava/lang/String;
    .end local v36           #power:D
    .end local v43           #processStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v52           #sensorStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .end local v58           #status:I
    .end local v62           #tcpBytesReceived:J
    .end local v64           #tcpBytesSent:J
    .end local v72           #u:Landroid/os/BatteryStats$Uid;
    .end local v75           #uidName:Ljava/lang/String;
    .end local v81           #wakelockStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v82           #wakelockTime:J
    .end local v85           #wifiRunningTimeMs:J
    :cond_1c
    new-instance v47, Ljava/util/ArrayList;

    invoke-direct/range {v47 .. v47}, Ljava/util/ArrayList;-><init>()V

    .line 243
    .local v47, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static/range {v39 .. v39}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 244
    invoke-virtual/range {v39 .. v39}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v26

    .line 245
    .local v26, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/baidu/service/power/PowerStatsUtil$BatterySipper;>;"
    const/4 v8, 0x0

    .line 246
    .local v8, b:Lcom/baidu/service/power/PowerStatsUtil$BatterySipper;
    :cond_1d
    :goto_a
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v87

    if-eqz v87, :cond_0

    .line 247
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .end local v8           #b:Lcom/baidu/service/power/PowerStatsUtil$BatterySipper;
    check-cast v8, Lcom/baidu/service/power/PowerStatsUtil$BatterySipper;

    .line 248
    .restart local v8       #b:Lcom/baidu/service/power/PowerStatsUtil$BatterySipper;
    iget-wide v0, v8, Lcom/baidu/service/power/PowerStatsUtil$BatterySipper;->power:D

    move-wide/from16 v87, v0

    div-double v87, v87, v69

    move-wide/from16 v0, v87

    iput-wide v0, v8, Lcom/baidu/service/power/PowerStatsUtil$BatterySipper;->percent:D

    .line 249
    sget-object v87, Lcom/baidu/service/power/PowerStatsUtil;->TAG:Ljava/lang/String;

    new-instance v88, Ljava/lang/StringBuilder;

    invoke-direct/range {v88 .. v88}, Ljava/lang/StringBuilder;-><init>()V

    const-string v89, "get app: "

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    iget-object v0, v8, Lcom/baidu/service/power/PowerStatsUtil$BatterySipper;->pkgLabel:Ljava/lang/String;

    move-object/from16 v89, v0

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    iget-wide v0, v8, Lcom/baidu/service/power/PowerStatsUtil$BatterySipper;->percent:D

    move-wide/from16 v89, v0

    invoke-virtual/range {v88 .. v90}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v88

    invoke-virtual/range {v88 .. v88}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v88

    invoke-static/range {v87 .. v88}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-virtual/range {v47 .. v47}, Ljava/util/ArrayList;->size()I

    move-result v87

    const/16 v88, 0x3

    move/from16 v0, v87

    move/from16 v1, v88

    if-ge v0, v1, :cond_1d

    iget-wide v0, v8, Lcom/baidu/service/power/PowerStatsUtil$BatterySipper;->percent:D

    move-wide/from16 v87, v0

    const-wide v89, 0x3fc999999999999aL

    cmpl-double v87, v87, v89

    if-lez v87, :cond_1d

    .line 251
    iget-object v0, v8, Lcom/baidu/service/power/PowerStatsUtil$BatterySipper;->pkgLabel:Ljava/lang/String;

    move-object/from16 v87, v0

    move-object/from16 v0, v47

    move-object/from16 v1, v87

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    sget-object v87, Lcom/baidu/service/power/PowerStatsUtil;->TAG:Ljava/lang/String;

    new-instance v88, Ljava/lang/StringBuilder;

    invoke-direct/range {v88 .. v88}, Ljava/lang/StringBuilder;-><init>()V

    const-string v89, "get most app: "

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    iget-object v0, v8, Lcom/baidu/service/power/PowerStatsUtil$BatterySipper;->pkgLabel:Ljava/lang/String;

    move-object/from16 v89, v0

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    const-string v89, " "

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    iget-wide v0, v8, Lcom/baidu/service/power/PowerStatsUtil$BatterySipper;->percent:D

    move-wide/from16 v89, v0

    invoke-virtual/range {v88 .. v90}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v88

    invoke-virtual/range {v88 .. v88}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v88

    invoke-static/range {v87 .. v88}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 194
    nop

    :pswitch_data_0
    .packed-switch -0x2710
        :pswitch_0
    .end packed-switch
.end method
