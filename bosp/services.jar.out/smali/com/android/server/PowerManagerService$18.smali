.class Lcom/android/server/PowerManagerService$18;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/PowerManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 3818
    iput-object p1, p0, Lcom/android/server/PowerManagerService$18;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 3880
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 12
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 3820
    iget-object v6, p0, Lcom/android/server/PowerManagerService$18;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;
    invoke-static {v6}, Lcom/android/server/PowerManagerService;->access$500(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;

    move-result-object v7

    monitor-enter v7

    .line 3822
    :try_start_0
    iget-object v6, p0, Lcom/android/server/PowerManagerService$18;->this$0:Lcom/android/server/PowerManagerService;

    #calls: Lcom/android/server/PowerManagerService;->isScreenTurningOffLocked()Z
    invoke-static {v6}, Lcom/android/server/PowerManagerService;->access$8100(Lcom/android/server/PowerManagerService;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3823
    monitor-exit v7

    .line 3876
    :goto_0
    return-void

    .line 3826
    :cond_0
    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v8, 0x0

    aget v6, v6, v8

    float-to-int v3, v6

    .line 3827
    .local v3, value:I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 3831
    .local v1, milliseconds:J
    iget-object v6, p0, Lcom/android/server/PowerManagerService$18;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mHighestLightSensorValue:I
    invoke-static {v6}, Lcom/android/server/PowerManagerService;->access$1600(Lcom/android/server/PowerManagerService;)I

    move-result v6

    if-le v3, v6, :cond_2

    .line 3833
    iget-object v6, p0, Lcom/android/server/PowerManagerService$18;->this$0:Lcom/android/server/PowerManagerService;

    iget-object v8, p0, Lcom/android/server/PowerManagerService$18;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLcdBacklightValues:[I
    invoke-static {v8}, Lcom/android/server/PowerManagerService;->access$8200(Lcom/android/server/PowerManagerService;)[I

    move-result-object v8

    #calls: Lcom/android/server/PowerManagerService;->getAutoBrightnessValue(I[I)I
    invoke-static {v6, v3, v8}, Lcom/android/server/PowerManagerService;->access$8300(Lcom/android/server/PowerManagerService;I[I)I

    move-result v0

    .line 3834
    .local v0, lcdValue:I
    iget-object v6, p0, Lcom/android/server/PowerManagerService$18;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightSensorScreenBrightnessWait:I
    invoke-static {v6}, Lcom/android/server/PowerManagerService;->access$1700(Lcom/android/server/PowerManagerService;)I

    move-result v6

    if-ne v6, v0, :cond_1

    .line 3838
    monitor-exit v7

    goto :goto_0

    .line 3875
    .end local v0           #lcdValue:I
    .end local v1           #milliseconds:J
    .end local v3           #value:I
    :catchall_0
    move-exception v4

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 3844
    .restart local v0       #lcdValue:I
    .restart local v1       #milliseconds:J
    .restart local v3       #value:I
    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/android/server/PowerManagerService$18;->this$0:Lcom/android/server/PowerManagerService;

    #setter for: Lcom/android/server/PowerManagerService;->mLightSensorScreenBrightnessWait:I
    invoke-static {v6, v0}, Lcom/android/server/PowerManagerService;->access$1702(Lcom/android/server/PowerManagerService;I)I

    .line 3851
    .end local v0           #lcdValue:I
    :cond_2
    iget-object v6, p0, Lcom/android/server/PowerManagerService$18;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightSensorValue:F
    invoke-static {v6}, Lcom/android/server/PowerManagerService;->access$1500(Lcom/android/server/PowerManagerService;)F

    move-result v6

    const/high16 v8, -0x4080

    cmpl-float v6, v6, v8

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/server/PowerManagerService$18;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLastScreenOnTime:J
    invoke-static {v6}, Lcom/android/server/PowerManagerService;->access$8400(Lcom/android/server/PowerManagerService;)J

    move-result-wide v8

    iget-object v6, p0, Lcom/android/server/PowerManagerService$18;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightSensorWarmupTime:I
    invoke-static {v6}, Lcom/android/server/PowerManagerService;->access$8500(Lcom/android/server/PowerManagerService;)I

    move-result v6

    int-to-long v10, v6

    add-long/2addr v8, v10

    cmp-long v6, v1, v8

    if-gez v6, :cond_5

    .line 3854
    :cond_3
    iget-object v4, p0, Lcom/android/server/PowerManagerService$18;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$5700(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/PowerManagerService$18;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mAutoBrightnessTask:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$8600(Lcom/android/server/PowerManagerService;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3855
    iget-object v4, p0, Lcom/android/server/PowerManagerService$18;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v5, 0x0

    #setter for: Lcom/android/server/PowerManagerService;->mLightSensorPendingDecrease:Z
    invoke-static {v4, v5}, Lcom/android/server/PowerManagerService;->access$7102(Lcom/android/server/PowerManagerService;Z)Z

    .line 3856
    iget-object v4, p0, Lcom/android/server/PowerManagerService$18;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v5, 0x0

    #setter for: Lcom/android/server/PowerManagerService;->mLightSensorPendingIncrease:Z
    invoke-static {v4, v5}, Lcom/android/server/PowerManagerService;->access$7202(Lcom/android/server/PowerManagerService;Z)Z

    .line 3857
    iget-object v4, p0, Lcom/android/server/PowerManagerService$18;->this$0:Lcom/android/server/PowerManagerService;

    #calls: Lcom/android/server/PowerManagerService;->lightSensorChangedLocked(I)V
    invoke-static {v4, v3}, Lcom/android/server/PowerManagerService;->access$3100(Lcom/android/server/PowerManagerService;I)V

    .line 3875
    :cond_4
    :goto_1
    monitor-exit v7

    goto :goto_0

    .line 3859
    :cond_5
    int-to-float v6, v3

    iget-object v8, p0, Lcom/android/server/PowerManagerService$18;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightSensorValue:F
    invoke-static {v8}, Lcom/android/server/PowerManagerService;->access$1500(Lcom/android/server/PowerManagerService;)F

    move-result v8

    cmpl-float v6, v6, v8

    if-lez v6, :cond_6

    iget-object v6, p0, Lcom/android/server/PowerManagerService$18;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightSensorPendingDecrease:Z
    invoke-static {v6}, Lcom/android/server/PowerManagerService;->access$7100(Lcom/android/server/PowerManagerService;)Z

    move-result v6

    if-nez v6, :cond_8

    :cond_6
    int-to-float v6, v3

    iget-object v8, p0, Lcom/android/server/PowerManagerService$18;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightSensorValue:F
    invoke-static {v8}, Lcom/android/server/PowerManagerService;->access$1500(Lcom/android/server/PowerManagerService;)F

    move-result v8

    cmpg-float v6, v6, v8

    if-gez v6, :cond_7

    iget-object v6, p0, Lcom/android/server/PowerManagerService$18;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightSensorPendingIncrease:Z
    invoke-static {v6}, Lcom/android/server/PowerManagerService;->access$7200(Lcom/android/server/PowerManagerService;)Z

    move-result v6

    if-nez v6, :cond_8

    :cond_7
    int-to-float v6, v3

    iget-object v8, p0, Lcom/android/server/PowerManagerService$18;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightSensorValue:F
    invoke-static {v8}, Lcom/android/server/PowerManagerService;->access$1500(Lcom/android/server/PowerManagerService;)F

    move-result v8

    cmpl-float v6, v6, v8

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/server/PowerManagerService$18;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightSensorPendingDecrease:Z
    invoke-static {v6}, Lcom/android/server/PowerManagerService;->access$7100(Lcom/android/server/PowerManagerService;)Z

    move-result v6

    if-nez v6, :cond_c

    iget-object v6, p0, Lcom/android/server/PowerManagerService$18;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightSensorPendingIncrease:Z
    invoke-static {v6}, Lcom/android/server/PowerManagerService;->access$7200(Lcom/android/server/PowerManagerService;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 3864
    :cond_8
    iget-object v6, p0, Lcom/android/server/PowerManagerService$18;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/server/PowerManagerService;->access$5700(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v6

    iget-object v8, p0, Lcom/android/server/PowerManagerService$18;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mAutoBrightnessTask:Ljava/lang/Runnable;
    invoke-static {v8}, Lcom/android/server/PowerManagerService;->access$8600(Lcom/android/server/PowerManagerService;)Ljava/lang/Runnable;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3865
    iget-object v8, p0, Lcom/android/server/PowerManagerService$18;->this$0:Lcom/android/server/PowerManagerService;

    int-to-float v6, v3

    iget-object v9, p0, Lcom/android/server/PowerManagerService$18;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightSensorValue:F
    invoke-static {v9}, Lcom/android/server/PowerManagerService;->access$1500(Lcom/android/server/PowerManagerService;)F

    move-result v9

    cmpg-float v6, v6, v9

    if-gez v6, :cond_a

    move v6, v4

    :goto_2
    #setter for: Lcom/android/server/PowerManagerService;->mLightSensorPendingDecrease:Z
    invoke-static {v8, v6}, Lcom/android/server/PowerManagerService;->access$7102(Lcom/android/server/PowerManagerService;Z)Z

    .line 3866
    iget-object v6, p0, Lcom/android/server/PowerManagerService$18;->this$0:Lcom/android/server/PowerManagerService;

    int-to-float v8, v3

    iget-object v9, p0, Lcom/android/server/PowerManagerService$18;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightSensorValue:F
    invoke-static {v9}, Lcom/android/server/PowerManagerService;->access$1500(Lcom/android/server/PowerManagerService;)F

    move-result v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_b

    :goto_3
    #setter for: Lcom/android/server/PowerManagerService;->mLightSensorPendingIncrease:Z
    invoke-static {v6, v4}, Lcom/android/server/PowerManagerService;->access$7202(Lcom/android/server/PowerManagerService;Z)Z

    .line 3867
    iget-object v4, p0, Lcom/android/server/PowerManagerService$18;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightSensorPendingDecrease:Z
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$7100(Lcom/android/server/PowerManagerService;)Z

    move-result v4

    if-nez v4, :cond_9

    iget-object v4, p0, Lcom/android/server/PowerManagerService$18;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightSensorPendingIncrease:Z
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$7200(Lcom/android/server/PowerManagerService;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3868
    :cond_9
    iget-object v4, p0, Lcom/android/server/PowerManagerService$18;->this$0:Lcom/android/server/PowerManagerService;

    int-to-float v5, v3

    #setter for: Lcom/android/server/PowerManagerService;->mLightSensorPendingValue:F
    invoke-static {v4, v5}, Lcom/android/server/PowerManagerService;->access$7302(Lcom/android/server/PowerManagerService;F)F

    .line 3869
    iget-object v4, p0, Lcom/android/server/PowerManagerService$18;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$5700(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/PowerManagerService$18;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mAutoBrightnessTask:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$8600(Lcom/android/server/PowerManagerService;)Ljava/lang/Runnable;

    move-result-object v5

    const-wide/16 v8, 0x4b0

    invoke-virtual {v4, v5, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    :cond_a
    move v6, v5

    .line 3865
    goto :goto_2

    :cond_b
    move v4, v5

    .line 3866
    goto :goto_3

    .line 3872
    :cond_c
    iget-object v4, p0, Lcom/android/server/PowerManagerService$18;->this$0:Lcom/android/server/PowerManagerService;

    int-to-float v5, v3

    #setter for: Lcom/android/server/PowerManagerService;->mLightSensorPendingValue:F
    invoke-static {v4, v5}, Lcom/android/server/PowerManagerService;->access$7302(Lcom/android/server/PowerManagerService;F)F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1
.end method
