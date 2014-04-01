.class Lcom/android/server/MountService$1$7;
.super Ljava/lang/Thread;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/MountService$1;


# direct methods
.method constructor <init>(Lcom/android/server/MountService$1;)V
    .locals 0
    .parameter

    .prologue
    .line 950
    iput-object p1, p0, Lcom/android/server/MountService$1$7;->this$1:Lcom/android/server/MountService$1;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 952
    iget-object v3, p0, Lcom/android/server/MountService$1$7;->this$1:Lcom/android/server/MountService$1;

    iget-object v3, v3, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/server/MountService;->access$1600(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v4

    monitor-enter v4

    .line 953
    :try_start_0
    const-string v3, "MountService"

    const-string v5, "Intent.ACTION_LOCALE_CHANGED"

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    iget-object v3, p0, Lcom/android/server/MountService$1$7;->this$1:Lcom/android/server/MountService$1;

    iget-object v3, v3, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    const/4 v5, 0x0

    #setter for: Lcom/android/server/MountService;->mPrimaryVolume:Landroid/os/storage/StorageVolume;
    invoke-static {v3, v5}, Lcom/android/server/MountService;->access$2402(Lcom/android/server/MountService;Landroid/os/storage/StorageVolume;)Landroid/os/storage/StorageVolume;

    .line 956
    iget-object v3, p0, Lcom/android/server/MountService$1$7;->this$1:Lcom/android/server/MountService$1;

    iget-object v3, v3, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    iget-object v5, p0, Lcom/android/server/MountService$1$7;->this$1:Lcom/android/server/MountService$1;

    iget-object v5, v5, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->resources:Landroid/content/res/Resources;
    invoke-static {v5}, Lcom/android/server/MountService;->access$2500(Lcom/android/server/MountService;)Landroid/content/res/Resources;

    move-result-object v5

    #calls: Lcom/android/server/MountService;->readStorageList(Landroid/content/res/Resources;)V
    invoke-static {v3, v5}, Lcom/android/server/MountService;->access$2600(Lcom/android/server/MountService;Landroid/content/res/Resources;)V

    .line 957
    iget-object v3, p0, Lcom/android/server/MountService$1$7;->this$1:Lcom/android/server/MountService$1;

    iget-object v3, v3, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->doSDSwapVolumeUpdate()V
    invoke-static {v3}, Lcom/android/server/MountService;->access$2700(Lcom/android/server/MountService;)V

    .line 958
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 959
    iget-object v3, p0, Lcom/android/server/MountService$1$7;->this$1:Lcom/android/server/MountService$1;

    iget-object v3, v3, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/MountService;->access$3100(Lcom/android/server/MountService;)Ljava/util/ArrayList;

    move-result-object v4

    monitor-enter v4

    .line 960
    :try_start_1
    iget-object v3, p0, Lcom/android/server/MountService$1$7;->this$1:Lcom/android/server/MountService$1;

    iget-object v3, v3, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/MountService;->access$3100(Lcom/android/server/MountService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 961
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 962
    iget-object v3, p0, Lcom/android/server/MountService$1$7;->this$1:Lcom/android/server/MountService$1;

    iget-object v3, v3, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/MountService;->access$3100(Lcom/android/server/MountService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageVolume;

    .line 963
    .local v2, volume:Landroid/os/storage/StorageVolume;
    invoke-virtual {v2, v1}, Landroid/os/storage/StorageVolume;->setStorageId(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 961
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 958
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #volume:Landroid/os/storage/StorageVolume;
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 965
    .restart local v0       #N:I
    .restart local v1       #i:I
    :cond_0
    :try_start_3
    monitor-exit v4

    .line 966
    return-void

    .line 965
    .end local v0           #N:I
    .end local v1           #i:I
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3
.end method
