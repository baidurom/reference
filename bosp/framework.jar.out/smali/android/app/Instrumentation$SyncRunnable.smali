.class final Landroid/app/Instrumentation$SyncRunnable;
.super Ljava/lang/Object;
.source "Instrumentation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Instrumentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SyncRunnable"
.end annotation


# instance fields
.field private mComplete:Z

.field private final mTarget:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 0
    .parameter "target"

    .prologue
    .line 1594
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1595
    iput-object p1, p0, Landroid/app/Instrumentation$SyncRunnable;->mTarget:Ljava/lang/Runnable;

    .line 1596
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1599
    iget-object v0, p0, Landroid/app/Instrumentation$SyncRunnable;->mTarget:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1600
    monitor-enter p0

    .line 1601
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Landroid/app/Instrumentation$SyncRunnable;->mComplete:Z

    .line 1602
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1603
    monitor-exit p0

    .line 1604
    return-void

    .line 1603
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public waitForComplete()V
    .locals 1

    .prologue
    .line 1607
    monitor-enter p0

    .line 1608
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Landroid/app/Instrumentation$SyncRunnable;->mComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1610
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1611
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1614
    :cond_0
    :try_start_2
    monitor-exit p0

    .line 1615
    return-void

    .line 1614
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
