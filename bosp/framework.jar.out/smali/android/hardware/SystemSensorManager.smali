.class public Landroid/hardware/SystemSensorManager;
.super Landroid/hardware/SensorManager;
.source "SystemSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/SystemSensorManager$ListenerDelegate;,
        Landroid/hardware/SystemSensorManager$SensorThread;
    }
.end annotation


# static fields
.field private static MagUsed_OriUsed:I = 0x0

.field private static final SENSOR_DISABLE:I = -0x1

.field private static SensorFirstUsed:Z

.field private static callerPid:I

.field private static first_time_stamp:J

.field private static sFullSensorsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field

.field static sHandleToSensor:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field

.field static final sListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/SystemSensorManager$ListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field static sPool:Landroid/hardware/SensorManager$SensorEventPool;

.field private static sQueue:I

.field private static sSensorModuleInitialized:Z

.field private static sSensorThread:Landroid/hardware/SystemSensorManager$SensorThread;


# instance fields
.field final mAppContextImpl:Landroid/content/Context;

.field final mMainLooper:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 52
    sput-boolean v2, Landroid/hardware/SystemSensorManager;->sSensorModuleInitialized:Z

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/hardware/SystemSensorManager;->sFullSensorsList:Ljava/util/ArrayList;

    .line 60
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/hardware/SystemSensorManager;->sHandleToSensor:Landroid/util/SparseArray;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    .line 72
    sput-boolean v2, Landroid/hardware/SystemSensorManager;->SensorFirstUsed:Z

    .line 73
    sput v2, Landroid/hardware/SystemSensorManager;->MagUsed_OriUsed:I

    .line 74
    const-wide/16 v0, 0x0

    sput-wide v0, Landroid/hardware/SystemSensorManager;->first_time_stamp:J

    .line 75
    sput v2, Landroid/hardware/SystemSensorManager;->callerPid:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 9
    .parameter "context"
    .parameter "mainLooper"

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x1

    .line 368
    invoke-direct {p0}, Landroid/hardware/SensorManager;-><init>()V

    .line 369
    iput-object p1, p0, Landroid/hardware/SystemSensorManager;->mAppContextImpl:Landroid/content/Context;

    .line 370
    iput-object p2, p0, Landroid/hardware/SystemSensorManager;->mMainLooper:Landroid/os/Looper;

    .line 372
    sget-object v5, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v5

    .line 373
    :try_start_0
    sget-boolean v6, Landroid/hardware/SystemSensorManager;->sSensorModuleInitialized:Z

    if-nez v6, :cond_3

    .line 374
    const/4 v6, 0x1

    sput-boolean v6, Landroid/hardware/SystemSensorManager;->sSensorModuleInitialized:Z

    .line 376
    invoke-static {}, Landroid/hardware/SystemSensorManager;->nativeClassInit()V

    .line 379
    invoke-static {}, Landroid/hardware/SystemSensorManager;->sensors_module_init()I

    .line 380
    sget-object v1, Landroid/hardware/SystemSensorManager;->sFullSensorsList:Ljava/util/ArrayList;

    .line 381
    .local v1, fullList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/Sensor;>;"
    const/4 v2, 0x0

    .line 384
    .local v2, i:I
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "wind_disable_proximity"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v0, :cond_4

    .line 387
    .local v0, disableProximity:Z
    :cond_0
    :goto_0
    new-instance v3, Landroid/hardware/Sensor;

    invoke-direct {v3}, Landroid/hardware/Sensor;-><init>()V

    .line 388
    .local v3, sensor:Landroid/hardware/Sensor;
    invoke-static {v3, v2}, Landroid/hardware/SystemSensorManager;->sensors_module_get_next_sensor(Landroid/hardware/Sensor;I)I

    move-result v2

    .line 390
    if-ltz v2, :cond_2

    .line 395
    if-eqz v0, :cond_1

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    const/16 v6, 0x8

    if-eq v4, v6, :cond_2

    .line 396
    :cond_1
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    sget-object v4, Landroid/hardware/SystemSensorManager;->sHandleToSensor:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getHandle()I

    move-result v6

    invoke-virtual {v4, v6, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 401
    :cond_2
    if-gtz v2, :cond_0

    .line 403
    new-instance v4, Landroid/hardware/SensorManager$SensorEventPool;

    sget-object v6, Landroid/hardware/SystemSensorManager;->sFullSensorsList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    invoke-direct {v4, v6}, Landroid/hardware/SensorManager$SensorEventPool;-><init>(I)V

    sput-object v4, Landroid/hardware/SystemSensorManager;->sPool:Landroid/hardware/SensorManager$SensorEventPool;

    .line 404
    new-instance v4, Landroid/hardware/SystemSensorManager$SensorThread;

    invoke-direct {v4}, Landroid/hardware/SystemSensorManager$SensorThread;-><init>()V

    sput-object v4, Landroid/hardware/SystemSensorManager;->sSensorThread:Landroid/hardware/SystemSensorManager$SensorThread;

    .line 406
    .end local v0           #disableProximity:Z
    .end local v1           #fullList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/Sensor;>;"
    .end local v2           #i:I
    .end local v3           #sensor:Landroid/hardware/Sensor;
    :cond_3
    monitor-exit v5

    .line 407
    return-void

    .restart local v1       #fullList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/Sensor;>;"
    .restart local v2       #i:I
    :cond_4
    move v0, v4

    .line 384
    goto :goto_0

    .line 406
    .end local v1           #fullList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/Sensor;>;"
    .end local v2           #i:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 6
    .parameter "mainLooper"

    .prologue
    .line 409
    invoke-direct {p0}, Landroid/hardware/SensorManager;-><init>()V

    .line 410
    iput-object p1, p0, Landroid/hardware/SystemSensorManager;->mMainLooper:Landroid/os/Looper;

    .line 411
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/hardware/SystemSensorManager;->mAppContextImpl:Landroid/content/Context;

    .line 413
    sget-object v4, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 414
    :try_start_0
    sget-boolean v3, Landroid/hardware/SystemSensorManager;->sSensorModuleInitialized:Z

    if-nez v3, :cond_2

    .line 415
    const/4 v3, 0x1

    sput-boolean v3, Landroid/hardware/SystemSensorManager;->sSensorModuleInitialized:Z

    .line 417
    invoke-static {}, Landroid/hardware/SystemSensorManager;->nativeClassInit()V

    .line 420
    invoke-static {}, Landroid/hardware/SystemSensorManager;->sensors_module_init()I

    .line 421
    sget-object v0, Landroid/hardware/SystemSensorManager;->sFullSensorsList:Ljava/util/ArrayList;

    .line 422
    .local v0, fullList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/Sensor;>;"
    const/4 v1, 0x0

    .line 424
    .local v1, i:I
    :cond_0
    new-instance v2, Landroid/hardware/Sensor;

    invoke-direct {v2}, Landroid/hardware/Sensor;-><init>()V

    .line 425
    .local v2, sensor:Landroid/hardware/Sensor;
    invoke-static {v2, v1}, Landroid/hardware/SystemSensorManager;->sensors_module_get_next_sensor(Landroid/hardware/Sensor;I)I

    move-result v1

    .line 427
    if-ltz v1, :cond_1

    .line 430
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    sget-object v3, Landroid/hardware/SystemSensorManager;->sHandleToSensor:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getHandle()I

    move-result v5

    invoke-virtual {v3, v5, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 433
    :cond_1
    if-gtz v1, :cond_0

    .line 435
    new-instance v3, Landroid/hardware/SensorManager$SensorEventPool;

    sget-object v5, Landroid/hardware/SystemSensorManager;->sFullSensorsList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    invoke-direct {v3, v5}, Landroid/hardware/SensorManager$SensorEventPool;-><init>(I)V

    sput-object v3, Landroid/hardware/SystemSensorManager;->sPool:Landroid/hardware/SensorManager$SensorEventPool;

    .line 436
    new-instance v3, Landroid/hardware/SystemSensorManager$SensorThread;

    invoke-direct {v3}, Landroid/hardware/SystemSensorManager$SensorThread;-><init>()V

    sput-object v3, Landroid/hardware/SystemSensorManager;->sSensorThread:Landroid/hardware/SystemSensorManager$SensorThread;

    .line 438
    .end local v0           #fullList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/Sensor;>;"
    .end local v1           #i:I
    .end local v2           #sensor:Landroid/hardware/Sensor;
    :cond_2
    monitor-exit v4

    .line 439
    return-void

    .line 438
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 50
    sget v0, Landroid/hardware/SystemSensorManager;->sQueue:I

    return v0
.end method

.method static synthetic access$002(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    sput p0, Landroid/hardware/SystemSensorManager;->sQueue:I

    return p0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 50
    sget-boolean v0, Landroid/hardware/SystemSensorManager;->SensorFirstUsed:Z

    return v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    sput-boolean p0, Landroid/hardware/SystemSensorManager;->SensorFirstUsed:Z

    return p0
.end method

.method static synthetic access$300()J
    .locals 2

    .prologue
    .line 50
    sget-wide v0, Landroid/hardware/SystemSensorManager;->first_time_stamp:J

    return-wide v0
.end method

.method static synthetic access$400(Landroid/hardware/SystemSensorManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/hardware/SystemSensorManager;->needToast()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 50
    sget v0, Landroid/hardware/SystemSensorManager;->MagUsed_OriUsed:I

    return v0
.end method

.method private disableSensorLocked(Landroid/hardware/Sensor;)Z
    .locals 8
    .parameter "sensor"

    .prologue
    const/4 v5, 0x1

    .line 475
    const/4 v4, 0x0

    .line 476
    .local v4, result:Z
    sget-object v6, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SystemSensorManager$ListenerDelegate;

    .line 477
    .local v1, i:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    invoke-virtual {v1, p1}, Landroid/hardware/SystemSensorManager$ListenerDelegate;->hasSensor(Landroid/hardware/Sensor;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 495
    .end local v1           #i:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    :goto_0
    return v5

    .line 482
    :cond_1
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v3

    .line 483
    .local v3, name:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v0

    .line 484
    .local v0, handle:I
    sget v6, Landroid/hardware/SystemSensorManager;->sQueue:I

    const/4 v7, -0x1

    invoke-static {v6, v3, v0, v7}, Landroid/hardware/SystemSensorManager;->sensors_enable_sensor(ILjava/lang/String;II)Z

    move-result v4

    .line 486
    if-ne v4, v5, :cond_3

    .line 487
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    .line 488
    sget v5, Landroid/hardware/SystemSensorManager;->MagUsed_OriUsed:I

    and-int/lit8 v5, v5, 0x2

    sput v5, Landroid/hardware/SystemSensorManager;->MagUsed_OriUsed:I

    .line 492
    :cond_2
    :goto_1
    const-string v5, "SensorManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "disableSensorLocked MagUsed_OriUsed ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Landroid/hardware/SystemSensorManager;->MagUsed_OriUsed:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move v5, v4

    .line 495
    goto :goto_0

    .line 489
    :cond_4
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    .line 490
    sget v5, Landroid/hardware/SystemSensorManager;->MagUsed_OriUsed:I

    and-int/lit8 v5, v5, 0x1

    sput v5, Landroid/hardware/SystemSensorManager;->MagUsed_OriUsed:I

    goto :goto_1
.end method

.method private enableSensorLocked(Landroid/hardware/Sensor;I)Z
    .locals 8
    .parameter "sensor"
    .parameter "delay"

    .prologue
    const/4 v7, 0x1

    .line 448
    const/4 v4, 0x0

    .line 449
    .local v4, result:Z
    sget-object v5, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SystemSensorManager$ListenerDelegate;

    .line 450
    .local v1, i:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    invoke-virtual {v1, p1}, Landroid/hardware/SystemSensorManager$ListenerDelegate;->hasSensor(Landroid/hardware/Sensor;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 451
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v3

    .line 452
    .local v3, name:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v0

    .line 453
    .local v0, handle:I
    sget v5, Landroid/hardware/SystemSensorManager;->sQueue:I

    invoke-static {v5, v3, v0, p2}, Landroid/hardware/SystemSensorManager;->sensors_enable_sensor(ILjava/lang/String;II)Z

    move-result v4

    .line 458
    .end local v0           #handle:I
    .end local v1           #i:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    .end local v3           #name:Ljava/lang/String;
    :cond_1
    if-ne v4, v7, :cond_3

    .line 459
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    .line 460
    sput-boolean v7, Landroid/hardware/SystemSensorManager;->SensorFirstUsed:Z

    .line 461
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sput-wide v5, Landroid/hardware/SystemSensorManager;->first_time_stamp:J

    .line 462
    sget v5, Landroid/hardware/SystemSensorManager;->MagUsed_OriUsed:I

    or-int/lit8 v5, v5, 0x1

    sput v5, Landroid/hardware/SystemSensorManager;->MagUsed_OriUsed:I

    .line 468
    :cond_2
    :goto_0
    const-string v5, "SensorManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "enableSensorLocked MagUsed_OriUsed ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Landroid/hardware/SystemSensorManager;->MagUsed_OriUsed:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    :cond_3
    return v4

    .line 463
    :cond_4
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    .line 464
    sput-boolean v7, Landroid/hardware/SystemSensorManager;->SensorFirstUsed:Z

    .line 465
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sput-wide v5, Landroid/hardware/SystemSensorManager;->first_time_stamp:J

    .line 466
    sget v5, Landroid/hardware/SystemSensorManager;->MagUsed_OriUsed:I

    or-int/lit8 v5, v5, 0x2

    sput v5, Landroid/hardware/SystemSensorManager;->MagUsed_OriUsed:I

    goto :goto_0
.end method

.method private getCurProcessName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "callerPid"

    .prologue
    .line 80
    move v3, p2

    .line 81
    .local v3, pid:I
    const-string v4, "activity"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 82
    .local v2, mActivityManager:Landroid/app/ActivityManager;
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 83
    .local v0, appProcess:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, v3, :cond_0

    .line 85
    iget-object v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 88
    .end local v0           #appProcess:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :goto_0
    return-object v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private static native nativeClassInit()V
.end method

.method private needToast()Z
    .locals 5

    .prologue
    .line 93
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    sput v2, Landroid/hardware/SystemSensorManager;->callerPid:I

    .line 94
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mAppContextImpl:Landroid/content/Context;

    sget v3, Landroid/hardware/SystemSensorManager;->callerPid:I

    invoke-direct {p0, v2, v3}, Landroid/hardware/SystemSensorManager;->getCurProcessName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, callerName:Ljava/lang/String;
    const/4 v1, 0x0

    .line 96
    .local v1, needtoast:Z
    const-string v2, "SensorManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "caller name ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const-string v2, "compass"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "zhinanzhen"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 101
    :cond_0
    const/4 v1, 0x1

    .line 104
    :cond_1
    return v1
.end method

.method static native sensors_create_queue()I
.end method

.method static native sensors_data_poll(I[F[I[J)I
.end method

.method static native sensors_destroy_queue(I)V
.end method

.method static native sensors_enable_sensor(ILjava/lang/String;II)Z
.end method

.method private static native sensors_module_get_next_sensor(Landroid/hardware/Sensor;I)I
.end method

.method private static native sensors_module_init()I
.end method


# virtual methods
.method protected getFullSensorList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 444
    sget-object v0, Landroid/hardware/SystemSensorManager;->sFullSensorsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected registerListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z
    .locals 7
    .parameter "listener"
    .parameter "sensor"
    .parameter "delay"
    .parameter "handler"

    .prologue
    .line 502
    const/4 v4, 0x1

    .line 503
    .local v4, result:Z
    sget-object v6, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v6

    .line 505
    const/4 v2, 0x0

    .line 506
    .local v2, l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    :try_start_0
    sget-object v5, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SystemSensorManager$ListenerDelegate;

    .line 507
    .local v0, i:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    invoke-virtual {v0}, Landroid/hardware/SystemSensorManager$ListenerDelegate;->getListener()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    if-ne v5, p1, :cond_0

    .line 508
    move-object v2, v0

    move-object v3, v2

    .line 514
    .end local v0           #i:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    .end local v2           #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    .local v3, l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    :goto_0
    if-nez v3, :cond_4

    .line 515
    :try_start_1
    new-instance v2, Landroid/hardware/SystemSensorManager$ListenerDelegate;

    invoke-direct {v2, p0, p1, p2, p4}, Landroid/hardware/SystemSensorManager$ListenerDelegate;-><init>(Landroid/hardware/SystemSensorManager;Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;Landroid/os/Handler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 516
    .end local v3           #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    .restart local v2       #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    :try_start_2
    sget-object v5, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 518
    sget-object v5, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 519
    sget-object v5, Landroid/hardware/SystemSensorManager;->sSensorThread:Landroid/hardware/SystemSensorManager$SensorThread;

    invoke-virtual {v5}, Landroid/hardware/SystemSensorManager$SensorThread;->startLocked()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 520
    invoke-direct {p0, p2, p3}, Landroid/hardware/SystemSensorManager;->enableSensorLocked(Landroid/hardware/Sensor;I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 522
    sget-object v5, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 523
    const/4 v4, 0x0

    .line 542
    :cond_1
    :goto_1
    monitor-exit v6

    .line 544
    return v4

    .line 527
    :cond_2
    sget-object v5, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 528
    const/4 v4, 0x0

    goto :goto_1

    .line 532
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 534
    .end local v2           #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    .restart local v3       #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    :cond_4
    :try_start_3
    invoke-virtual {v3, p2}, Landroid/hardware/SystemSensorManager$ListenerDelegate;->hasSensor(Landroid/hardware/Sensor;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 535
    invoke-virtual {v3, p2}, Landroid/hardware/SystemSensorManager$ListenerDelegate;->addSensor(Landroid/hardware/Sensor;)V

    .line 536
    invoke-direct {p0, p2, p3}, Landroid/hardware/SystemSensorManager;->enableSensorLocked(Landroid/hardware/Sensor;I)Z

    move-result v5

    if-nez v5, :cond_5

    .line 538
    invoke-virtual {v3, p2}, Landroid/hardware/SystemSensorManager$ListenerDelegate;->removeSensor(Landroid/hardware/Sensor;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 539
    const/4 v4, 0x0

    move-object v2, v3

    .end local v3           #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    .restart local v2       #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    goto :goto_1

    .line 542
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    :goto_2
    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    .end local v2           #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3           #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    .restart local v2       #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    goto :goto_2

    .end local v2           #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    .restart local v3       #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    :cond_5
    move-object v2, v3

    .end local v3           #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    .restart local v2       #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    goto :goto_1

    :cond_6
    move-object v3, v2

    .end local v2           #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    .restart local v3       #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    goto :goto_0
.end method

.method protected unregisterListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    .locals 7
    .parameter "listener"
    .parameter "sensor"

    .prologue
    .line 550
    sget-object v6, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v6

    .line 551
    :try_start_0
    sget-object v5, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 552
    .local v4, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_1

    .line 553
    sget-object v5, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SystemSensorManager$ListenerDelegate;

    .line 554
    .local v2, l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    invoke-virtual {v2}, Landroid/hardware/SystemSensorManager$ListenerDelegate;->getListener()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, p1, :cond_2

    .line 555
    if-nez p2, :cond_0

    .line 556
    sget-object v5, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 558
    invoke-virtual {v2}, Landroid/hardware/SystemSensorManager$ListenerDelegate;->getSensors()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    .line 559
    .local v3, s:Landroid/hardware/Sensor;
    invoke-direct {p0, v3}, Landroid/hardware/SystemSensorManager;->disableSensorLocked(Landroid/hardware/Sensor;)Z

    goto :goto_1

    .line 570
    .end local v0           #i:I
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    .end local v3           #s:Landroid/hardware/Sensor;
    .end local v4           #size:I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 561
    .restart local v0       #i:I
    .restart local v2       #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    .restart local v4       #size:I
    :cond_0
    :try_start_1
    invoke-virtual {v2, p2}, Landroid/hardware/SystemSensorManager$ListenerDelegate;->removeSensor(Landroid/hardware/Sensor;)I

    move-result v5

    if-nez v5, :cond_1

    .line 564
    sget-object v5, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 565
    invoke-direct {p0, p2}, Landroid/hardware/SystemSensorManager;->disableSensorLocked(Landroid/hardware/Sensor;)Z

    .line 570
    .end local v2           #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    :cond_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 571
    return-void

    .line 552
    .restart local v2       #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
