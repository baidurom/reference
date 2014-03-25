.class public Landroid/filterfw/core/StopWatchMap;
.super Ljava/lang/Object;
.source "StopWatchMap.java"


# instance fields
.field public LOG_MFF_RUNNING_TIMES:Z

.field private mStopWatches:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/filterfw/core/StopWatch;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-boolean v1, p0, Landroid/filterfw/core/StopWatchMap;->LOG_MFF_RUNNING_TIMES:Z

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/filterfw/core/StopWatchMap;->mStopWatches:Ljava/util/HashMap;

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/filterfw/core/StopWatchMap;->mStopWatches:Ljava/util/HashMap;

    .line 88
    const-string v0, "debug.swm.log"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/filterfw/core/StopWatchMap;->LOG_MFF_RUNNING_TIMES:Z

    .line 89
    const-string v0, "MFF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StopWatchMap param: log="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/filterfw/core/StopWatchMap;->LOG_MFF_RUNNING_TIMES:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return-void
.end method


# virtual methods
.method public start(Ljava/lang/String;)V
    .locals 2
    .parameter "stopWatchName"

    .prologue
    .line 93
    iget-boolean v0, p0, Landroid/filterfw/core/StopWatchMap;->LOG_MFF_RUNNING_TIMES:Z

    if-nez v0, :cond_0

    .line 100
    :goto_0
    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Landroid/filterfw/core/StopWatchMap;->mStopWatches:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 97
    iget-object v0, p0, Landroid/filterfw/core/StopWatchMap;->mStopWatches:Ljava/util/HashMap;

    new-instance v1, Landroid/filterfw/core/StopWatch;

    invoke-direct {v1, p1}, Landroid/filterfw/core/StopWatch;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    :cond_1
    iget-object v0, p0, Landroid/filterfw/core/StopWatchMap;->mStopWatches:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/filterfw/core/StopWatch;

    invoke-virtual {v0}, Landroid/filterfw/core/StopWatch;->start()V

    goto :goto_0
.end method

.method public stop(Ljava/lang/String;)V
    .locals 3
    .parameter "stopWatchName"

    .prologue
    .line 103
    iget-boolean v0, p0, Landroid/filterfw/core/StopWatchMap;->LOG_MFF_RUNNING_TIMES:Z

    if-nez v0, :cond_0

    .line 111
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Landroid/filterfw/core/StopWatchMap;->mStopWatches:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 107
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling stop with unknown stopWatchName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_1
    iget-object v0, p0, Landroid/filterfw/core/StopWatchMap;->mStopWatches:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/filterfw/core/StopWatch;

    invoke-virtual {v0}, Landroid/filterfw/core/StopWatch;->stop()V

    goto :goto_0
.end method
