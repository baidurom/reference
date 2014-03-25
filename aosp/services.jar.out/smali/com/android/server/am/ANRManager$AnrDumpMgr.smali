.class public Lcom/android/server/am/ANRManager$AnrDumpMgr;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ANRManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AnrDumpMgr"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/server/am/ANRManager;

.field protected mDumpList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/am/ProcessRecord;",
            "Lcom/android/server/am/ANRManager$AnrDumpRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/android/server/am/ANRManager;)V
    .locals 1
    .parameter

    .prologue
    .line 720
    iput-object p1, p0, Lcom/android/server/am/ANRManager$AnrDumpMgr;->a:Lcom/android/server/am/ANRManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 721
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ANRManager$AnrDumpMgr;->mDumpList:Ljava/util/HashMap;

    return-void
.end method

.method private a(Lcom/android/server/am/ANRManager$AnrDumpRecord;)Z
    .locals 3
    .parameter

    .prologue
    .line 765
    iget-object v1, p0, Lcom/android/server/am/ANRManager$AnrDumpMgr;->mDumpList:Ljava/util/HashMap;

    monitor-enter v1

    .line 766
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ANRManager$AnrDumpMgr;->mDumpList:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/server/am/ANRManager$AnrDumpRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/am/ANRManager$AnrDumpRecord;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 767
    const/4 v0, 0x1

    monitor-exit v1

    .line 769
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 770
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method protected cancelDump(Lcom/android/server/am/ANRManager$AnrDumpRecord;)V
    .locals 3
    .parameter

    .prologue
    .line 724
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ANRManager$AnrDumpRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    if-nez v0, :cond_1

    .line 733
    :cond_0
    :goto_0
    return-void

    .line 726
    :cond_1
    iget-object v0, p1, Lcom/android/server/am/ANRManager$AnrDumpRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 727
    iget-object v1, p0, Lcom/android/server/am/ANRManager$AnrDumpMgr;->mDumpList:Ljava/util/HashMap;

    monitor-enter v1

    .line 728
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ANRManager$AnrDumpMgr;->mDumpList:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ANRManager$AnrDumpRecord;

    .line 729
    if-eqz v0, :cond_2

    .line 730
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/am/ANRManager$AnrDumpRecord;->mIsCancelled:Z

    .line 732
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected dumpAnrDebugInfo(Lcom/android/server/am/ANRManager$AnrDumpRecord;)V
    .locals 4
    .parameter

    .prologue
    .line 774
    if-nez p1, :cond_0

    .line 775
    const-string v0, "ANRManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dumpAnrDebugInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    :goto_0
    return-void

    .line 778
    :cond_0
    const-string v0, "ANRManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dumpAnrDebugInfo begin: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    iget-object v0, p1, Lcom/android/server/am/ANRManager$AnrDumpRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 782
    invoke-static {}, Lcom/android/server/am/ANRManager;->a()Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-eqz v1, :cond_1

    .line 783
    const-string v1, "ANRManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dumpAnrDebugInfo During shutdown skipping ANR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 788
    :cond_1
    iget-boolean v1, v0, Lcom/android/server/am/ProcessRecord;->crashing:Z

    if-eqz v1, :cond_2

    .line 789
    const-string v1, "ANRManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dumpAnrDebugInfo Crashing app skipping ANR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 791
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/am/ANRManager$AnrDumpMgr;->a(Lcom/android/server/am/ANRManager$AnrDumpRecord;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 792
    const-string v0, "ANRManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dumpAnrDebugInfo dump stopped: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 798
    :cond_3
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/ANRManager$AnrDumpMgr;->dumpAnrDebugInfoLocked(Lcom/android/server/am/ANRManager$AnrDumpRecord;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 802
    :goto_1
    const-string v0, "ANRManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dumpAnrDebugInfo end: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 799
    :catch_0
    move-exception v0

    .line 800
    const-string v1, "ANRManager"

    const-string v2, "dumpAnrDebugInfo exception: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method protected dumpAnrDebugInfoLocked(Lcom/android/server/am/ANRManager$AnrDumpRecord;)V
    .locals 11
    .parameter

    .prologue
    const/4 v10, -0x1

    .line 806
    monitor-enter p1

    .line 807
    :try_start_0
    const-string v0, "ANRManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dumpAnrDebugInfoLocked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    invoke-direct {p0, p1}, Lcom/android/server/am/ANRManager$AnrDumpMgr;->a(Lcom/android/server/am/ANRManager$AnrDumpRecord;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 809
    monitor-exit p1

    .line 966
    :goto_0
    return-void

    .line 811
    :cond_0
    iget-object v4, p1, Lcom/android/server/am/ANRManager$AnrDumpRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 812
    iget-object v5, p1, Lcom/android/server/am/ANRManager$AnrDumpRecord;->mParent:Lcom/android/server/am/ActivityRecord;

    .line 813
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 814
    new-instance v7, Landroid/util/SparseArray;

    const/16 v0, 0x14

    invoke-direct {v7, v0}, Landroid/util/SparseArray;-><init>(I)V

    .line 817
    const/4 v0, 0x0

    .line 818
    if-eqz v4, :cond_17

    iget v1, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    if-eq v1, v10, :cond_17

    .line 819
    iget v0, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    iget v1, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v0, v1}, Lcom/android/server/am/ANRManager$BinderWatchdog;->getTimeoutBinderPidList(II)Ljava/util/ArrayList;

    move-result-object v0

    move-object v3, v0

    .line 824
    :goto_1
    iget v0, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 826
    iget v1, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 827
    if-eqz v5, :cond_1

    iget-object v0, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_1

    iget-object v0, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    if-lez v0, :cond_1

    iget-object v0, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v1, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 828
    :cond_1
    iget v0, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    if-eq v1, v0, :cond_2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 830
    :cond_2
    invoke-static {}, Lcom/android/server/am/ANRManager;->a()Lcom/android/server/am/ActivityManagerService;

    sget v0, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    iget v2, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    if-eq v0, v2, :cond_3

    invoke-static {}, Lcom/android/server/am/ANRManager;->a()Lcom/android/server/am/ActivityManagerService;

    sget v0, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v0, v1, :cond_3

    invoke-static {}, Lcom/android/server/am/ANRManager;->a()Lcom/android/server/am/ActivityManagerService;

    sget v0, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 832
    :cond_3
    invoke-static {}, Lcom/android/server/am/ANRManager;->a()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_2
    if-ltz v2, :cond_6

    .line 833
    invoke-static {}, Lcom/android/server/am/ANRManager;->a()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 834
    if-eqz v0, :cond_4

    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v8, :cond_4

    .line 835
    iget v8, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 836
    if-lez v8, :cond_4

    iget v9, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    if-eq v8, v9, :cond_4

    if-eq v8, v1, :cond_4

    invoke-static {}, Lcom/android/server/am/ANRManager;->a()Lcom/android/server/am/ActivityManagerService;

    sget v9, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v8, v9, :cond_4

    .line 837
    iget-boolean v0, v0, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-eqz v0, :cond_5

    .line 838
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 832
    :cond_4
    :goto_3
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_2

    .line 840
    :cond_5
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v7, v8, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    .line 965
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 847
    :cond_6
    if-eqz v3, :cond_8

    :try_start_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 848
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 849
    if-eqz v0, :cond_7

    .line 850
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 851
    iget v8, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    if-eq v0, v8, :cond_7

    if-eq v0, v1, :cond_7

    invoke-static {}, Lcom/android/server/am/ANRManager;->a()Lcom/android/server/am/ActivityManagerService;

    sget v8, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v0, v8, :cond_7

    .line 852
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 853
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 854
    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_4

    .line 862
    :cond_8
    if-eqz v4, :cond_9

    iget v0, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    if-eq v0, v10, :cond_9

    .line 863
    iget v0, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v0, v6, v7}, Lcom/android/server/am/ANRManager$BinderWatchdog;->a(ILjava/util/ArrayList;Landroid/util/SparseArray;)V

    .line 872
    :cond_9
    invoke-static {}, Lcom/android/server/am/ANRManager;->a()Lcom/android/server/am/ActivityManagerService;

    sget-object v0, Lcom/android/server/am/ActivityManagerService;->mInterestingPids:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 874
    invoke-static {}, Lcom/android/server/am/ANRManager;->a()Lcom/android/server/am/ActivityManagerService;

    sget-object v0, Lcom/android/server/am/ActivityManagerService;->mInterestingPids:Ljava/util/ArrayList;

    iget v2, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 876
    if-eqz v5, :cond_a

    iget-object v0, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_a

    iget-object v0, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    if-lez v0, :cond_a

    iget-object v0, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    move v1, v0

    .line 877
    :cond_a
    iget v0, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    if-eq v1, v0, :cond_b

    invoke-static {}, Lcom/android/server/am/ANRManager;->a()Lcom/android/server/am/ActivityManagerService;

    invoke-static {v1}, Lcom/android/server/am/ActivityManagerService;->isJavaProcess(I)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {}, Lcom/android/server/am/ANRManager;->a()Lcom/android/server/am/ActivityManagerService;

    sget-object v0, Lcom/android/server/am/ActivityManagerService;->mInterestingPids:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 881
    :cond_b
    if-eqz v3, :cond_c

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_c

    .line 882
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 883
    if-eqz v0, :cond_c

    .line 884
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 885
    iget v2, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    if-eq v0, v2, :cond_c

    if-eq v0, v1, :cond_c

    invoke-static {}, Lcom/android/server/am/ANRManager;->a()Lcom/android/server/am/ActivityManagerService;

    sget v1, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v0, v1, :cond_c

    .line 886
    invoke-static {}, Lcom/android/server/am/ANRManager;->a()Lcom/android/server/am/ActivityManagerService;

    sget-object v1, Lcom/android/server/am/ActivityManagerService;->mInterestingPids:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-static {}, Lcom/android/server/am/ANRManager;->a()Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->isJavaProcess(I)Z

    move-result v1

    if-nez v1, :cond_c

    .line 888
    invoke-static {}, Lcom/android/server/am/ANRManager;->a()Lcom/android/server/am/ActivityManagerService;

    sget-object v1, Lcom/android/server/am/ActivityManagerService;->mInterestingPids:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 896
    :cond_c
    sget-object v0, Lcom/android/server/am/ANRManager;->additionNBTList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 898
    :cond_d
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 900
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 901
    invoke-static {}, Lcom/android/server/am/ANRManager;->a()Lcom/android/server/am/ActivityManagerService;

    sget-object v2, Lcom/android/server/am/ActivityManagerService;->mInterestingPids:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 902
    invoke-static {}, Lcom/android/server/am/ANRManager;->a()Lcom/android/server/am/ActivityManagerService;

    sget-object v2, Lcom/android/server/am/ActivityManagerService;->mInterestingPids:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 906
    :cond_e
    iget-object v0, p1, Lcom/android/server/am/ANRManager$AnrDumpRecord;->mActivity:Lcom/android/server/am/ActivityRecord;

    .line 907
    iget-object v1, p1, Lcom/android/server/am/ANRManager$AnrDumpRecord;->mAnnotation:Ljava/lang/String;

    .line 910
    iget-object v2, p1, Lcom/android/server/am/ANRManager$AnrDumpRecord;->mInfo:Ljava/lang/StringBuilder;

    .line 911
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 912
    const-string v3, "ANR in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v8, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 913
    if-eqz v0, :cond_f

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    if-eqz v3, :cond_f

    .line 914
    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ")"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 916
    :cond_f
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 917
    if-eqz v1, :cond_10

    .line 918
    const-string v3, "Reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 920
    :cond_10
    if-eqz v5, :cond_11

    if-eq v5, v0, :cond_11

    .line 921
    const-string v0, "Parent: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v5, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 924
    :cond_11
    new-instance v0, Lcom/android/internal/os/ProcessStats;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/internal/os/ProcessStats;-><init>(Z)V

    .line 926
    invoke-direct {p0, p1}, Lcom/android/server/am/ANRManager$AnrDumpMgr;->a(Lcom/android/server/am/ANRManager$AnrDumpRecord;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 927
    monitor-exit p1

    goto/16 :goto_0

    .line 930
    :cond_12
    invoke-static {}, Lcom/android/server/am/ANRManager;->a()Lcom/android/server/am/ActivityManagerService;

    const/4 v1, 0x1

    invoke-static {}, Lcom/android/server/am/ANRManager;->b()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v6, v0, v7, v3}, Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(ZLjava/util/ArrayList;Lcom/android/internal/os/ProcessStats;Landroid/util/SparseArray;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 932
    invoke-direct {p0, p1}, Lcom/android/server/am/ANRManager$AnrDumpMgr;->a(Lcom/android/server/am/ANRManager$AnrDumpRecord;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 933
    monitor-exit p1

    goto/16 :goto_0

    .line 936
    :cond_13
    invoke-static {}, Lcom/android/server/am/ANRManager;->a()Lcom/android/server/am/ActivityManagerService;

    .line 937
    invoke-static {}, Lcom/android/server/am/ANRManager;->a()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V

    .line 938
    invoke-static {}, Lcom/android/server/am/ANRManager;->a()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStatsThread:Ljava/lang/Thread;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 940
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/server/am/ANRManager$AnrDumpMgr;->a:Lcom/android/server/am/ANRManager;

    invoke-virtual {v6}, Lcom/android/server/am/ANRManager;->getAndroidTime()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/android/server/am/ANRManager;->a()Lcom/android/server/am/ActivityManagerService;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    iget-wide v7, p1, Lcom/android/server/am/ANRManager$AnrDumpRecord;->mAnrTime:J

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/os/ProcessStats;->printCurrentState(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 941
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p1, Lcom/android/server/am/ANRManager$AnrDumpRecord;->mCpuInfo:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lcom/android/server/am/ANRManager$AnrDumpRecord;->mCpuInfo:Ljava/lang/String;

    .line 943
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 944
    :try_start_3
    invoke-virtual {v0}, Lcom/android/internal/os/ProcessStats;->printCurrentLoad()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 945
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 949
    const-string v0, "ANRManager"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    invoke-direct {p0, p1}, Lcom/android/server/am/ANRManager$AnrDumpMgr;->a(Lcom/android/server/am/ANRManager$AnrDumpRecord;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 952
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 943
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0

    .line 953
    :cond_14
    if-nez v1, :cond_15

    .line 956
    iget-object v0, p0, Lcom/android/server/am/ANRManager$AnrDumpMgr;->a:Lcom/android/server/am/ANRManager;

    iget v1, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/ANRManager;->IsProcDoCoredump(I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_15

    .line 957
    iget v0, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/os/Process;->sendSignal(II)V

    .line 960
    :cond_15
    const-string v0, "ro.monkey"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_16

    .line 964
    :cond_16
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/am/ANRManager$AnrDumpRecord;->mIsCompleted:Z

    .line 965
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    :cond_17
    move-object v3, v0

    goto/16 :goto_1
.end method

.method protected removeDumpRecord(Lcom/android/server/am/ANRManager$AnrDumpRecord;)V
    .locals 3
    .parameter

    .prologue
    .line 736
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ANRManager$AnrDumpRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    if-nez v0, :cond_1

    .line 742
    :cond_0
    :goto_0
    return-void

    .line 738
    :cond_1
    iget-object v0, p1, Lcom/android/server/am/ANRManager$AnrDumpRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 739
    iget-object v1, p0, Lcom/android/server/am/ANRManager$AnrDumpMgr;->mDumpList:Ljava/util/HashMap;

    monitor-enter v1

    .line 740
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ANRManager$AnrDumpMgr;->mDumpList:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ANRManager$AnrDumpRecord;

    .line 741
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected startAsyncDump(Lcom/android/server/am/ANRManager$AnrDumpRecord;)V
    .locals 7
    .parameter

    .prologue
    .line 745
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ANRManager$AnrDumpRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    if-nez v0, :cond_1

    .line 762
    :cond_0
    :goto_0
    return-void

    .line 748
    :cond_1
    const-string v0, "ANRManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startAsyncDump: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    iget-object v0, p1, Lcom/android/server/am/ANRManager$AnrDumpRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 752
    iget-object v1, p0, Lcom/android/server/am/ANRManager$AnrDumpMgr;->mDumpList:Ljava/util/HashMap;

    monitor-enter v1

    .line 753
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ANRManager$AnrDumpMgr;->mDumpList:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 754
    monitor-exit v1

    goto :goto_0

    .line 761
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 757
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/ANRManager$AnrDumpMgr;->mDumpList:Ljava/util/HashMap;

    invoke-virtual {v2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 759
    iget-object v0, p0, Lcom/android/server/am/ANRManager$AnrDumpMgr;->a:Lcom/android/server/am/ANRManager;

    iget-object v0, v0, Lcom/android/server/am/ANRManager;->mAnrHandler:Lcom/android/server/am/ANRManager$AnrMonitorHandler;

    const/16 v2, 0x3eb

    invoke-virtual {v0, v2, p1}, Lcom/android/server/am/ANRManager$AnrMonitorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 760
    iget-object v2, p0, Lcom/android/server/am/ANRManager$AnrDumpMgr;->a:Lcom/android/server/am/ANRManager;

    iget-object v2, v2, Lcom/android/server/am/ANRManager;->mAnrHandler:Lcom/android/server/am/ANRManager$AnrMonitorHandler;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x1f4

    add-long/2addr v3, v5

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/server/am/ANRManager$AnrMonitorHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 761
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
