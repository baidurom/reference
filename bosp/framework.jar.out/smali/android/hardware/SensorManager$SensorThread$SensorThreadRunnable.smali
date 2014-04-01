.class Landroid/hardware/SensorManager$SensorThread$SensorThreadRunnable;
.super Ljava/lang/Object;
.source "SensorManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/SensorManager$SensorThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SensorThreadRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/SensorManager$SensorThread;


# direct methods
.method constructor <init>(Landroid/hardware/SensorManager$SensorThread;)V
    .locals 0
    .parameter

    .prologue
    .line 468
    iput-object p1, p0, Landroid/hardware/SensorManager$SensorThread$SensorThreadRunnable;->this$0:Landroid/hardware/SensorManager$SensorThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 469
    return-void
.end method

.method private open()Z
    .locals 1

    .prologue
    .line 475
    invoke-static {}, Landroid/hardware/SensorManager;->sensors_create_queue()I

    move-result v0

    invoke-static {v0}, Landroid/hardware/SensorManager;->access$002(I)I

    .line 476
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 481
    const/4 v10, 0x3

    new-array v9, v10, [F

    .line 482
    .local v9, values:[F
    const/4 v10, 0x1

    new-array v7, v10, [I

    .line 483
    .local v7, status:[I
    const/4 v10, 0x1

    new-array v8, v10, [J

    .line 484
    .local v8, timestamp:[J
    const/4 v10, -0x8

    invoke-static {v10}, Landroid/os/Process;->setThreadPriority(I)V

    .line 486
    invoke-direct {p0}, Landroid/hardware/SensorManager$SensorThread$SensorThreadRunnable;->open()Z

    move-result v10

    if-nez v10, :cond_0

    .line 545
    :goto_0
    return-void

    .line 490
    :cond_0
    monitor-enter p0

    .line 492
    :try_start_0
    iget-object v10, p0, Landroid/hardware/SensorManager$SensorThread$SensorThreadRunnable;->this$0:Landroid/hardware/SensorManager$SensorThread;

    const/4 v11, 0x1

    iput-boolean v11, v10, Landroid/hardware/SensorManager$SensorThread;->mSensorsReady:Z

    .line 493
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 494
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 498
    :goto_1
    invoke-static {}, Landroid/hardware/SensorManager;->access$000()I

    move-result v10

    invoke-static {v10, v9, v7, v8}, Landroid/hardware/SensorManager;->sensors_data_poll(I[F[I[J)I

    move-result v4

    .line 500
    .local v4, sensor:I
    const/4 v10, 0x0

    :try_start_1
    aget v0, v7, v10

    .line 501
    .local v0, accuracy:I
    sget-object v11, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v11
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 502
    const/4 v10, -0x1

    if-eq v4, v10, :cond_1

    :try_start_2
    sget-object v10, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 505
    :cond_1
    const/4 v10, -0x1

    if-ne v4, v10, :cond_2

    sget-object v10, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2

    .line 507
    const-string v10, "SensorManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "_sensors_data_poll() failed, we bail out: sensors="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :cond_2
    invoke-static {}, Landroid/hardware/SensorManager;->access$000()I

    move-result v10

    invoke-static {v10}, Landroid/hardware/SensorManager;->sensors_destroy_queue(I)V

    .line 511
    const/4 v10, 0x0

    invoke-static {v10}, Landroid/hardware/SensorManager;->access$002(I)I

    .line 512
    iget-object v10, p0, Landroid/hardware/SensorManager$SensorThread$SensorThreadRunnable;->this$0:Landroid/hardware/SensorManager$SensorThread;

    const/4 v12, 0x0

    iput-object v12, v10, Landroid/hardware/SensorManager$SensorThread;->mThread:Ljava/lang/Thread;

    .line 513
    monitor-exit v11

    goto :goto_0

    .line 537
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v10
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0

    .line 538
    .end local v0           #accuracy:I
    :catch_0
    move-exception v1

    .line 539
    .local v1, e:Ljava/lang/NullPointerException;
    sget-object v10, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    const-string v10, "SensorManager"

    const-string/jumbo v11, "sListeners -> Null"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    :cond_3
    sget-object v10, Landroid/hardware/SensorManager;->sHandleToSensor:Landroid/util/SparseArray;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const-string v10, "SensorManager"

    const-string/jumbo v11, "sHandleToSensor -> Null"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    :cond_4
    const-string v10, "SensorManager"

    const-string v11, "SensorManager thread.run function error!"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 494
    .end local v1           #e:Ljava/lang/NullPointerException;
    .end local v4           #sensor:I
    :catchall_1
    move-exception v10

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v10

    .line 516
    .restart local v0       #accuracy:I
    .restart local v4       #sensor:I
    :cond_5
    :try_start_5
    sget-object v10, Landroid/hardware/SensorManager;->sHandleToSensor:Landroid/util/SparseArray;

    invoke-virtual {v10, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Sensor;

    .line 517
    .local v5, sensorObject:Landroid/hardware/Sensor;
    if-eqz v5, :cond_7

    .line 520
    sget-object v10, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_2

    move-result v6

    .line 521
    .local v6, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v6, :cond_7

    .line 523
    :try_start_6
    sget-object v10, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorManager$ListenerDelegate;

    .line 524
    .local v3, listener:Landroid/hardware/SensorManager$ListenerDelegate;
    invoke-virtual {v3, v5}, Landroid/hardware/SensorManager$ListenerDelegate;->hasSensor(Landroid/hardware/Sensor;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 527
    invoke-virtual {v3, v5, v9, v8, v0}, Landroid/hardware/SensorManager$ListenerDelegate;->onSensorChangedLocked(Landroid/hardware/Sensor;[F[JI)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_1

    .line 521
    .end local v3           #listener:Landroid/hardware/SensorManager$ListenerDelegate;
    :cond_6
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 530
    :catch_1
    move-exception v1

    .line 531
    .restart local v1       #e:Ljava/lang/NullPointerException;
    :try_start_7
    const-string v10, "SensorManager"

    const-string/jumbo v12, "listener -> Null"

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_3

    .line 535
    .end local v1           #e:Ljava/lang/NullPointerException;
    .end local v2           #i:I
    .end local v5           #sensorObject:Landroid/hardware/Sensor;
    .end local v6           #size:I
    :catch_2
    move-exception v1

    .restart local v1       #e:Ljava/lang/NullPointerException;
    :try_start_8
    const-string v10, "SensorManager"

    const-string/jumbo v12, "sensorObject -> Null"

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    .end local v1           #e:Ljava/lang/NullPointerException;
    :cond_7
    monitor-exit v11
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1
.end method
