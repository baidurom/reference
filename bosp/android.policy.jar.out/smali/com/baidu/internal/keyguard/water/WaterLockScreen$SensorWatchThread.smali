.class Lcom/baidu/internal/keyguard/water/WaterLockScreen$SensorWatchThread;
.super Ljava/lang/Thread;
.source "WaterLockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/keyguard/water/WaterLockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SensorWatchThread"
.end annotation


# instance fields
.field private MAX_SENSOR_DURATION:J

.field final synthetic this$0:Lcom/baidu/internal/keyguard/water/WaterLockScreen;


# direct methods
.method private constructor <init>(Lcom/baidu/internal/keyguard/water/WaterLockScreen;)V
    .locals 2
    .parameter

    .prologue
    .line 491
    iput-object p1, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen$SensorWatchThread;->this$0:Lcom/baidu/internal/keyguard/water/WaterLockScreen;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 493
    const-wide/16 v0, 0x3a98

    iput-wide v0, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen$SensorWatchThread;->MAX_SENSOR_DURATION:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/internal/keyguard/water/WaterLockScreen;Lcom/baidu/internal/keyguard/water/WaterLockScreen$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 491
    invoke-direct {p0, p1}, Lcom/baidu/internal/keyguard/water/WaterLockScreen$SensorWatchThread;-><init>(Lcom/baidu/internal/keyguard/water/WaterLockScreen;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/high16 v8, 0x3f80

    .line 497
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 499
    :goto_0
    iget-object v3, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen$SensorWatchThread;->this$0:Lcom/baidu/internal/keyguard/water/WaterLockScreen;

    #getter for: Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mShowing:Z
    invoke-static {v3}, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->access$300(Lcom/baidu/internal/keyguard/water/WaterLockScreen;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 501
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen$SensorWatchThread;->this$0:Lcom/baidu/internal/keyguard/water/WaterLockScreen;

    #getter for: Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mSensorWatchStartTime:J
    invoke-static {v5}, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->access$400(Lcom/baidu/internal/keyguard/water/WaterLockScreen;)J

    move-result-wide v5

    sub-long v1, v3, v5

    .line 502
    .local v1, past:J
    const-string v3, "WaterLockScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "past:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    long-to-float v5, v1

    mul-float/2addr v5, v8

    iget-wide v6, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen$SensorWatchThread;->MAX_SENSOR_DURATION:J

    long-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    iget-wide v3, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen$SensorWatchThread;->MAX_SENSOR_DURATION:J

    cmp-long v3, v1, v3

    if-ltz v3, :cond_1

    .line 504
    const-string v3, "WaterLockScreen"

    const-string v4, "timeout to stop gles"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    iget-object v3, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen$SensorWatchThread;->this$0:Lcom/baidu/internal/keyguard/water/WaterLockScreen;

    #getter for: Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v3}, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->access$600(Lcom/baidu/internal/keyguard/water/WaterLockScreen;)Landroid/hardware/SensorManager;

    move-result-object v3

    invoke-static {}, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->access$500()Lcom/baidu/internal/keyguard/water/textureview/AppTextureListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 506
    invoke-static {}, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->access$500()Lcom/baidu/internal/keyguard/water/textureview/AppTextureListener;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/internal/keyguard/water/textureview/AppTextureListener;->stopRedraw()V

    .line 519
    .end local v1           #past:J
    :cond_0
    return-void

    .line 509
    .restart local v1       #past:J
    :cond_1
    invoke-static {}, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->access$500()Lcom/baidu/internal/keyguard/water/textureview/AppTextureListener;

    move-result-object v3

    long-to-float v4, v1

    mul-float/2addr v4, v8

    iget-wide v5, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen$SensorWatchThread;->MAX_SENSOR_DURATION:J

    long-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/baidu/internal/keyguard/water/textureview/AppTextureListener;->setPast(F)V

    .line 511
    iget-object v3, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen$SensorWatchThread;->this$0:Lcom/baidu/internal/keyguard/water/WaterLockScreen;

    #getter for: Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mSensorWatchObject:Ljava/lang/Object;
    invoke-static {v3}, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->access$700(Lcom/baidu/internal/keyguard/water/WaterLockScreen;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 513
    :try_start_0
    iget-object v3, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen$SensorWatchThread;->this$0:Lcom/baidu/internal/keyguard/water/WaterLockScreen;

    #getter for: Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mSensorWatchObject:Ljava/lang/Object;
    invoke-static {v3}, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->access$700(Lcom/baidu/internal/keyguard/water/WaterLockScreen;)Ljava/lang/Object;

    move-result-object v3

    const-wide/16 v5, 0x3e8

    invoke-virtual {v3, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 517
    :goto_1
    :try_start_1
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 514
    :catch_0
    move-exception v0

    .line 515
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
