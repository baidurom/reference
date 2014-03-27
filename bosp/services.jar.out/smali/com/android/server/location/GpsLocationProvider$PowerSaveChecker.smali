.class Lcom/android/server/location/GpsLocationProvider$PowerSaveChecker;
.super Ljava/lang/Object;
.source "GpsLocationProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PowerSaveChecker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GpsLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 496
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$PowerSaveChecker;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 501
    :goto_0
    const/4 v0, 0x0

    .line 502
    .local v0, c:I
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$PowerSaveChecker;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/location/GpsLocationProvider;->access$000(Lcom/android/server/location/GpsLocationProvider;)Ljava/util/ArrayList;

    move-result-object v5

    monitor-enter v5

    .line 503
    :try_start_0
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$PowerSaveChecker;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/location/GpsLocationProvider;->access$000(Lcom/android/server/location/GpsLocationProvider;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 504
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 508
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$PowerSaveChecker;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mEnabled:Z
    invoke-static {v4}, Lcom/android/server/location/GpsLocationProvider;->access$700(Lcom/android/server/location/GpsLocationProvider;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$PowerSaveChecker;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mStarted:Z
    invoke-static {v4}, Lcom/android/server/location/GpsLocationProvider;->access$800(Lcom/android/server/location/GpsLocationProvider;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$PowerSaveChecker;->this$0:Lcom/android/server/location/GpsLocationProvider;

    iget-boolean v4, v4, Lcom/android/server/location/GpsLocationProvider;->mChargerConnected:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$PowerSaveChecker;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mScreenIsOn:Z
    invoke-static {v4}, Lcom/android/server/location/GpsLocationProvider;->access$500(Lcom/android/server/location/GpsLocationProvider;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 510
    if-lez v0, :cond_0

    .line 511
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 513
    .local v2, now:J
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$PowerSaveChecker;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mTTFF:I
    invoke-static {v4}, Lcom/android/server/location/GpsLocationProvider;->access$900(Lcom/android/server/location/GpsLocationProvider;)I

    move-result v4

    if-nez v4, :cond_1

    .line 518
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$PowerSaveChecker;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mFixRequestTime:J
    invoke-static {v4}, Lcom/android/server/location/GpsLocationProvider;->access$1000(Lcom/android/server/location/GpsLocationProvider;)J

    move-result-wide v4

    sub-long v4, v2, v4

    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider$PowerSaveChecker;->this$0:Lcom/android/server/location/GpsLocationProvider;

    iget-wide v6, v6, Lcom/android/server/location/GpsLocationProvider;->mGpsSleepInterval:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 522
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$PowerSaveChecker;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #calls: Lcom/android/server/location/GpsLocationProvider;->long_hibernate()V
    invoke-static {v4}, Lcom/android/server/location/GpsLocationProvider;->access$1100(Lcom/android/server/location/GpsLocationProvider;)V

    .line 539
    .end local v2           #now:J
    :cond_0
    :goto_1
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/32 v4, 0xea60

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 541
    :catch_0
    move-exception v1

    .line 542
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 504
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 529
    .restart local v2       #now:J
    :cond_1
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$PowerSaveChecker;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J
    invoke-static {v4}, Lcom/android/server/location/GpsLocationProvider;->access$1200(Lcom/android/server/location/GpsLocationProvider;)J

    move-result-wide v4

    sub-long v4, v2, v4

    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider$PowerSaveChecker;->this$0:Lcom/android/server/location/GpsLocationProvider;

    iget-wide v6, v6, Lcom/android/server/location/GpsLocationProvider;->mGpsSleepInterval:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 533
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$PowerSaveChecker;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #calls: Lcom/android/server/location/GpsLocationProvider;->long_hibernate()V
    invoke-static {v4}, Lcom/android/server/location/GpsLocationProvider;->access$1100(Lcom/android/server/location/GpsLocationProvider;)V

    goto :goto_1
.end method
