.class Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreInstallObserver;
.super Landroid/content/pm/IPackageInstallObserver$Stub;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BackupManagerService$PerformFullRestoreTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RestoreInstallObserver"
.end annotation


# instance fields
.field final mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

.field mPackageName:Ljava/lang/String;

.field mResult:I

.field final synthetic this$1:Lcom/android/server/BackupManagerService$PerformFullRestoreTask;


# direct methods
.method constructor <init>(Lcom/android/server/BackupManagerService$PerformFullRestoreTask;)V
    .locals 1
    .parameter

    .prologue
    .line 3540
    iput-object p1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreInstallObserver;->this$1:Lcom/android/server/BackupManagerService$PerformFullRestoreTask;

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver$Stub;-><init>()V

    .line 3541
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreInstallObserver;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method getResult()I
    .locals 1

    .prologue
    .line 3562
    iget v0, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreInstallObserver;->mResult:I

    return v0
.end method

.method public packageInstalled(Ljava/lang/String;I)V
    .locals 3
    .parameter "packageName"
    .parameter "returnCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3568
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreInstallObserver;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 3569
    :try_start_0
    iput p2, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreInstallObserver;->mResult:I

    .line 3570
    iput-object p1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreInstallObserver;->mPackageName:Ljava/lang/String;

    .line 3571
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreInstallObserver;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3572
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreInstallObserver;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 3573
    monitor-exit v1

    .line 3574
    return-void

    .line 3573
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 3546
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreInstallObserver;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 3547
    :try_start_0
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreInstallObserver;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3548
    monitor-exit v1

    .line 3549
    return-void

    .line 3548
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public waitForCompletion()V
    .locals 2

    .prologue
    .line 3552
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreInstallObserver;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 3553
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreInstallObserver;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 3555
    :try_start_1
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreInstallObserver;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 3556
    :catch_0
    move-exception v0

    goto :goto_0

    .line 3558
    :cond_0
    :try_start_2
    monitor-exit v1

    .line 3559
    return-void

    .line 3558
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
