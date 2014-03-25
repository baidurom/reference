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
    .line 523
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$PowerSaveChecker;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 528
    :goto_0
    const/4 v0, 0x0

    .line 529
    .local v0, c:I
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$PowerSaveChecker;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/location/GpsLocationProvider;->access$000(Lcom/android/server/location/GpsLocationProvider;)Ljava/util/ArrayList;

    move-result-object v5

    monitor-enter v5

    .line 530
    :try_start_0
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$PowerSaveChecker;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/location/GpsLocationProvider;->access$000(Lcom/android/server/location/GpsLocationProvider;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 531
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 532
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$100()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 533
    const-string v4, "GpsLocationProvider"

    const-string v5, "Checking started=%b ac=%b, screen=%b, listeners=%d, mTimeToFirstFix=%d, mFixRequestTime=%d, mLastFixTime=%d"

    const/4 v6, 0x7

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider$PowerSaveChecker;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mStarted:Z
    invoke-static {v7}, Lcom/android/server/location/GpsLocationProvider;->access$1200(Lcom/android/server/location/GpsLocationProvider;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v10

    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider$PowerSaveChecker;->this$0:Lcom/android/server/location/GpsLocationProvider;

    iget-boolean v7, v7, Lcom/android/server/location/GpsLocationProvider;->mChargerConnected:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v11

    const/4 v7, 0x2

    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider$PowerSaveChecker;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mScreenIsOn:Z
    invoke-static {v8}, Lcom/android/server/location/GpsLocationProvider;->access$700(Lcom/android/server/location/GpsLocationProvider;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider$PowerSaveChecker;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mTimeToFirstFix:I
    invoke-static {v8}, Lcom/android/server/location/GpsLocationProvider;->access$1300(Lcom/android/server/location/GpsLocationProvider;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x5

    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider$PowerSaveChecker;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mFixRequestTime:J
    invoke-static {v8}, Lcom/android/server/location/GpsLocationProvider;->access$1400(Lcom/android/server/location/GpsLocationProvider;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x6

    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider$PowerSaveChecker;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J
    invoke-static {v8}, Lcom/android/server/location/GpsLocationProvider;->access$1500(Lcom/android/server/location/GpsLocationProvider;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    :cond_0
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$PowerSaveChecker;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mEnabled:Z
    invoke-static {v4}, Lcom/android/server/location/GpsLocationProvider;->access$1600(Lcom/android/server/location/GpsLocationProvider;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$PowerSaveChecker;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mStarted:Z
    invoke-static {v4}, Lcom/android/server/location/GpsLocationProvider;->access$1200(Lcom/android/server/location/GpsLocationProvider;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$PowerSaveChecker;->this$0:Lcom/android/server/location/GpsLocationProvider;

    iget-boolean v4, v4, Lcom/android/server/location/GpsLocationProvider;->mChargerConnected:Z

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$PowerSaveChecker;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mScreenIsOn:Z
    invoke-static {v4}, Lcom/android/server/location/GpsLocationProvider;->access$700(Lcom/android/server/location/GpsLocationProvider;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 537
    if-lez v0, :cond_3

    .line 538
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 540
    .local v2, now:J
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$PowerSaveChecker;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mTimeToFirstFix:I
    invoke-static {v4}, Lcom/android/server/location/GpsLocationProvider;->access$1300(Lcom/android/server/location/GpsLocationProvider;)I

    move-result v4

    if-nez v4, :cond_4

    .line 542
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$100()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 543
    const-string v4, "GpsLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "from request lasts "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider$PowerSaveChecker;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mFixRequestTime:J
    invoke-static {v6}, Lcom/android/server/location/GpsLocationProvider;->access$1400(Lcom/android/server/location/GpsLocationProvider;)J

    move-result-wide v6

    sub-long v6, v2, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :cond_1
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$PowerSaveChecker;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mFixRequestTime:J
    invoke-static {v4}, Lcom/android/server/location/GpsLocationProvider;->access$1400(Lcom/android/server/location/GpsLocationProvider;)J

    move-result-wide v4

    sub-long v4, v2, v4

    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider$PowerSaveChecker;->this$0:Lcom/android/server/location/GpsLocationProvider;

    iget-wide v6, v6, Lcom/android/server/location/GpsLocationProvider;->mGpsSleepInterval:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    .line 547
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$100()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 548
    const-string v4, "GpsLocationProvider"

    const-string v5, "from request is %d seconds ready to sleep"

    new-array v6, v11, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider$PowerSaveChecker;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mFixRequestTime:J
    invoke-static {v7}, Lcom/android/server/location/GpsLocationProvider;->access$1400(Lcom/android/server/location/GpsLocationProvider;)J

    move-result-wide v7

    sub-long v7, v2, v7

    long-to-int v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    :cond_2
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$PowerSaveChecker;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #calls: Lcom/android/server/location/GpsLocationProvider;->long_hibernate()V
    invoke-static {v4}, Lcom/android/server/location/GpsLocationProvider;->access$1700(Lcom/android/server/location/GpsLocationProvider;)V

    .line 566
    .end local v2           #now:J
    :cond_3
    :goto_1
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/32 v4, 0xea60

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 568
    :catch_0
    move-exception v1

    .line 569
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 531
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 552
    .restart local v2       #now:J
    :cond_4
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$100()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 553
    const-string v4, "GpsLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "from last fix lasts "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider$PowerSaveChecker;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J
    invoke-static {v6}, Lcom/android/server/location/GpsLocationProvider;->access$1500(Lcom/android/server/location/GpsLocationProvider;)J

    move-result-wide v6

    sub-long v6, v2, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    :cond_5
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$PowerSaveChecker;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J
    invoke-static {v4}, Lcom/android/server/location/GpsLocationProvider;->access$1500(Lcom/android/server/location/GpsLocationProvider;)J

    move-result-wide v4

    sub-long v4, v2, v4

    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider$PowerSaveChecker;->this$0:Lcom/android/server/location/GpsLocationProvider;

    iget-wide v6, v6, Lcom/android/server/location/GpsLocationProvider;->mGpsSleepInterval:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    .line 558
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$100()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 559
    const-string v4, "GpsLocationProvider"

    const-string v5, "from last fix is %d seconds ready to sleep"

    new-array v6, v11, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider$PowerSaveChecker;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J
    invoke-static {v7}, Lcom/android/server/location/GpsLocationProvider;->access$1500(Lcom/android/server/location/GpsLocationProvider;)J

    move-result-wide v7

    sub-long v7, v2, v7

    long-to-int v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    :cond_6
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$PowerSaveChecker;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #calls: Lcom/android/server/location/GpsLocationProvider;->long_hibernate()V
    invoke-static {v4}, Lcom/android/server/location/GpsLocationProvider;->access$1700(Lcom/android/server/location/GpsLocationProvider;)V

    goto :goto_1
.end method
