.class Lcom/android/server/ServiceWatcher$1;
.super Lcom/android/internal/content/PackageMonitor;
.source "ServiceWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ServiceWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ServiceWatcher;


# direct methods
.method constructor <init>(Lcom/android/server/ServiceWatcher;)V
    .locals 0
    .parameter

    .prologue
    .line 210
    iput-object p1, p0, Lcom/android/server/ServiceWatcher$1;->this$0:Lcom/android/server/ServiceWatcher;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 2
    .parameter "packageName"
    .parameter "uid"

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/server/ServiceWatcher$1;->this$0:Lcom/android/server/ServiceWatcher;

    #getter for: Lcom/android/server/ServiceWatcher;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/ServiceWatcher;->access$000(Lcom/android/server/ServiceWatcher;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 229
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ServiceWatcher$1;->this$0:Lcom/android/server/ServiceWatcher;

    #getter for: Lcom/android/server/ServiceWatcher;->mPackageName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/ServiceWatcher;->access$100(Lcom/android/server/ServiceWatcher;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/android/server/ServiceWatcher$1;->this$0:Lcom/android/server/ServiceWatcher;

    #calls: Lcom/android/server/ServiceWatcher;->unbindLocked()V
    invoke-static {v0}, Lcom/android/server/ServiceWatcher;->access$200(Lcom/android/server/ServiceWatcher;)V

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/android/server/ServiceWatcher$1;->this$0:Lcom/android/server/ServiceWatcher;

    #calls: Lcom/android/server/ServiceWatcher;->bindBestPackageLocked(Ljava/lang/String;)Z
    invoke-static {v0, p1}, Lcom/android/server/ServiceWatcher;->access$300(Lcom/android/server/ServiceWatcher;Ljava/lang/String;)Z

    .line 235
    monitor-exit v1

    .line 236
    return-void

    .line 235
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 3
    .parameter "packageName"
    .parameter "uid"

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/server/ServiceWatcher$1;->this$0:Lcom/android/server/ServiceWatcher;

    #getter for: Lcom/android/server/ServiceWatcher;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/ServiceWatcher;->access$000(Lcom/android/server/ServiceWatcher;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 241
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ServiceWatcher$1;->this$0:Lcom/android/server/ServiceWatcher;

    #getter for: Lcom/android/server/ServiceWatcher;->mPackageName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/ServiceWatcher;->access$100(Lcom/android/server/ServiceWatcher;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/android/server/ServiceWatcher$1;->this$0:Lcom/android/server/ServiceWatcher;

    #calls: Lcom/android/server/ServiceWatcher;->unbindLocked()V
    invoke-static {v0}, Lcom/android/server/ServiceWatcher;->access$200(Lcom/android/server/ServiceWatcher;)V

    .line 245
    iget-object v0, p0, Lcom/android/server/ServiceWatcher$1;->this$0:Lcom/android/server/ServiceWatcher;

    const/4 v2, 0x0

    #calls: Lcom/android/server/ServiceWatcher;->bindBestPackageLocked(Ljava/lang/String;)Z
    invoke-static {v0, v2}, Lcom/android/server/ServiceWatcher;->access$300(Lcom/android/server/ServiceWatcher;Ljava/lang/String;)Z

    .line 247
    :cond_0
    monitor-exit v1

    .line 248
    return-void

    .line 247
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onPackageUpdateFinished(Ljava/lang/String;I)V
    .locals 2
    .parameter "packageName"
    .parameter "uid"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/server/ServiceWatcher$1;->this$0:Lcom/android/server/ServiceWatcher;

    #getter for: Lcom/android/server/ServiceWatcher;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/ServiceWatcher;->access$000(Lcom/android/server/ServiceWatcher;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 217
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ServiceWatcher$1;->this$0:Lcom/android/server/ServiceWatcher;

    #getter for: Lcom/android/server/ServiceWatcher;->mPackageName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/ServiceWatcher;->access$100(Lcom/android/server/ServiceWatcher;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/android/server/ServiceWatcher$1;->this$0:Lcom/android/server/ServiceWatcher;

    #calls: Lcom/android/server/ServiceWatcher;->unbindLocked()V
    invoke-static {v0}, Lcom/android/server/ServiceWatcher;->access$200(Lcom/android/server/ServiceWatcher;)V

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/android/server/ServiceWatcher$1;->this$0:Lcom/android/server/ServiceWatcher;

    #calls: Lcom/android/server/ServiceWatcher;->bindBestPackageLocked(Ljava/lang/String;)Z
    invoke-static {v0, p1}, Lcom/android/server/ServiceWatcher;->access$300(Lcom/android/server/ServiceWatcher;Ljava/lang/String;)Z

    .line 223
    monitor-exit v1

    .line 224
    return-void

    .line 223
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
