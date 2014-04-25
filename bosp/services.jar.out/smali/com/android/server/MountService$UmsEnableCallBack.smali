.class Lcom/android/server/MountService$UmsEnableCallBack;
.super Lcom/android/server/MountService$UnmountCallBack;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UmsEnableCallBack"
.end annotation


# instance fields
.field final method:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .parameter
    .parameter "path"
    .parameter "method"
    .parameter "force"

    .prologue
    .line 480
    iput-object p1, p0, Lcom/android/server/MountService$UmsEnableCallBack;->this$0:Lcom/android/server/MountService;

    .line 481
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p4, v0}, Lcom/android/server/MountService$UnmountCallBack;-><init>(Lcom/android/server/MountService;Ljava/lang/String;ZZ)V

    .line 482
    iput-object p3, p0, Lcom/android/server/MountService$UmsEnableCallBack;->method:Ljava/lang/String;

    .line 483
    return-void
.end method


# virtual methods
.method handleFinished()V
    .locals 8

    .prologue
    .line 487
    iget-object v3, p0, Lcom/android/server/MountService$UmsEnableCallBack;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mIsUsbConnected:Z
    invoke-static {v3}, Lcom/android/server/MountService;->access$600(Lcom/android/server/MountService;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 488
    const/4 v2, 0x0

    .line 489
    .local v2, volume:Landroid/os/storage/StorageVolume;
    iget-object v3, p0, Lcom/android/server/MountService$UmsEnableCallBack;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/MountService;->access$700(Lcom/android/server/MountService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 490
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService$UmsEnableCallBack;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/server/MountService;->access$800(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/MountService$UmsEnableCallBack;->path:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/os/storage/StorageVolume;

    move-object v2, v0

    .line 491
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 492
    iget-object v3, p0, Lcom/android/server/MountService$UmsEnableCallBack;->this$0:Lcom/android/server/MountService;

    const-string v4, "checking"

    #calls: Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V
    invoke-static {v3, v2, v4}, Lcom/android/server/MountService;->access$900(Lcom/android/server/MountService;Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    .line 493
    iget-object v3, p0, Lcom/android/server/MountService$UmsEnableCallBack;->this$0:Lcom/android/server/MountService;

    const-string v4, "android.intent.action.MEDIA_CHECKING"

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #calls: Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V
    invoke-static {v3, v4, v2, v5}, Lcom/android/server/MountService;->access$1000(Lcom/android/server/MountService;Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    .line 494
    iget-object v3, p0, Lcom/android/server/MountService$UmsEnableCallBack;->this$0:Lcom/android/server/MountService;

    const-string v4, "mounted"

    #calls: Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V
    invoke-static {v3, v2, v4}, Lcom/android/server/MountService;->access$900(Lcom/android/server/MountService;Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    .line 495
    iget-object v3, p0, Lcom/android/server/MountService$UmsEnableCallBack;->this$0:Lcom/android/server/MountService;

    const-string v4, "android.intent.action.MEDIA_MOUNTED"

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #calls: Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V
    invoke-static {v3, v4, v2, v5}, Lcom/android/server/MountService;->access$1000(Lcom/android/server/MountService;Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    .line 509
    .end local v2           #volume:Landroid/os/storage/StorageVolume;
    :goto_0
    iget-object v3, p0, Lcom/android/server/MountService$UmsEnableCallBack;->this$0:Lcom/android/server/MountService;

    invoke-static {v3}, Lcom/android/server/MountService;->access$1310(Lcom/android/server/MountService;)I

    .line 510
    iget-object v3, p0, Lcom/android/server/MountService$UmsEnableCallBack;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mUMSCount:I
    invoke-static {v3}, Lcom/android/server/MountService;->access$1300(Lcom/android/server/MountService;)I

    move-result v3

    if-gtz v3, :cond_0

    .line 511
    new-instance v3, Lcom/android/server/MountService$UmsEnableCallBack$1;

    invoke-direct {v3, p0}, Lcom/android/server/MountService$UmsEnableCallBack$1;-><init>(Lcom/android/server/MountService$UmsEnableCallBack;)V

    invoke-virtual {v3}, Lcom/android/server/MountService$UmsEnableCallBack$1;->start()V

    .line 517
    iget-object v3, p0, Lcom/android/server/MountService$UmsEnableCallBack;->this$0:Lcom/android/server/MountService;

    const/4 v4, 0x0

    #setter for: Lcom/android/server/MountService;->mUnmountPrimary:Z
    invoke-static {v3, v4}, Lcom/android/server/MountService;->access$1502(Lcom/android/server/MountService;Z)Z

    .line 519
    :cond_0
    return-void

    .line 491
    .restart local v2       #volume:Landroid/os/storage/StorageVolume;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 497
    .end local v2           #volume:Landroid/os/storage/StorageVolume;
    :cond_1
    invoke-static {}, Lcom/android/server/MountService;->access$1100()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 498
    :try_start_2
    iget-object v3, p0, Lcom/android/server/MountService$UmsEnableCallBack;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mUnmountSwap:Z
    invoke-static {v3}, Lcom/android/server/MountService;->access$200(Lcom/android/server/MountService;)Z

    move-result v1

    .line 499
    .local v1, unmountSwap:Z
    invoke-super {p0}, Lcom/android/server/MountService$UnmountCallBack;->handleFinished()V

    .line 502
    if-eqz v1, :cond_2

    .line 503
    iget-object v3, p0, Lcom/android/server/MountService$UmsEnableCallBack;->this$0:Lcom/android/server/MountService;

    const-string v5, "/storage/sdcard1"

    iget-object v6, p0, Lcom/android/server/MountService$UmsEnableCallBack;->method:Ljava/lang/String;

    const/4 v7, 0x1

    #calls: Lcom/android/server/MountService;->doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static {v3, v5, v6, v7}, Lcom/android/server/MountService;->access$1200(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 507
    :goto_1
    monitor-exit v4

    goto :goto_0

    .end local v1           #unmountSwap:Z
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .line 505
    .restart local v1       #unmountSwap:Z
    :cond_2
    :try_start_3
    iget-object v3, p0, Lcom/android/server/MountService$UmsEnableCallBack;->this$0:Lcom/android/server/MountService;

    iget-object v5, p0, Lcom/android/server/MountService$UmsEnableCallBack;->path:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/MountService$UmsEnableCallBack;->method:Ljava/lang/String;

    const/4 v7, 0x1

    #calls: Lcom/android/server/MountService;->doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static {v3, v5, v6, v7}, Lcom/android/server/MountService;->access$1200(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1
.end method
