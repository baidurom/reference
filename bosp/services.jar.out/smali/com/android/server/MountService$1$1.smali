.class Lcom/android/server/MountService$1$1;
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
    .line 645
    iput-object p1, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    .line 651
    :try_start_0
    const-string v9, "MountService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updating vaild ums "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v11, v11, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mIsUsbConnected:Z
    invoke-static {v11}, Lcom/android/server/MountService;->access$200(Lcom/android/server/MountService;)Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 662
    :goto_0
    :try_start_1
    iget-object v9, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v9, v9, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;
    invoke-static {v9}, Lcom/android/server/MountService;->access$1600(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v10

    monitor-enter v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 663
    :try_start_2
    iget-object v9, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v9, v9, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;
    invoke-static {v9}, Lcom/android/server/MountService;->access$1600(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 664
    .local v3, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v0

    .line 665
    .local v0, count:I
    new-array v9, v0, [Ljava/lang/String;

    invoke-interface {v3, v9}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 666
    .local v5, paths:[Ljava/lang/String;
    new-array v8, v0, [Ljava/lang/String;

    .line 667
    .local v8, states:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 668
    iget-object v9, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v9, v9, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;
    invoke-static {v9}, Lcom/android/server/MountService;->access$1600(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v9

    aget-object v11, v5, v2

    invoke-virtual {v9, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    aput-object v9, v8, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 667
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 652
    .end local v0           #count:I
    .end local v2           #i:I
    .end local v3           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5           #paths:[Ljava/lang/String;
    .end local v8           #states:[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 653
    .local v1, ex:Ljava/lang/Exception;
    :try_start_3
    const-string v9, "MountService"

    const-string v10, "Failed to get share availability"

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 707
    .end local v1           #ex:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 708
    .restart local v1       #ex:Ljava/lang/Exception;
    const-string v9, "MountService"

    const-string v10, "Boot-time mount exception"

    invoke-static {v9, v10, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 710
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_0
    :goto_2
    iget-object v9, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v9, v9, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->updateDefaultpath()V
    invoke-static {v9}, Lcom/android/server/MountService;->access$2100(Lcom/android/server/MountService;)V

    .line 711
    const-string v9, "MountService"

    const-string v10, "BOOT_COMPLETE  mSetDefaultEnable = true"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    iget-object v9, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v9, v9, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #setter for: Lcom/android/server/MountService;->mSetDefaultEnable:Z
    invoke-static {v9, v14}, Lcom/android/server/MountService;->access$2202(Lcom/android/server/MountService;Z)Z

    .line 713
    return-void

    .line 670
    .restart local v0       #count:I
    .restart local v2       #i:I
    .restart local v3       #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v5       #paths:[Ljava/lang/String;
    .restart local v8       #states:[Ljava/lang/String;
    :cond_1
    :try_start_4
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 672
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_4

    .line 673
    :try_start_5
    aget-object v4, v5, v2

    .line 674
    .local v4, path:Ljava/lang/String;
    aget-object v7, v8, v2

    .line 676
    .local v7, state:Ljava/lang/String;
    const-string v9, "unmounted"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 677
    iget-object v9, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v9, v9, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I
    invoke-static {v9, v4}, Lcom/android/server/MountService;->access$1700(Lcom/android/server/MountService;Ljava/lang/String;)I

    move-result v6

    .line 678
    .local v6, rc:I
    if-eqz v6, :cond_2

    .line 679
    const-string v9, "MountService"

    const-string v10, "Boot-time mount failed (%d)"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 672
    .end local v6           #rc:I
    :cond_2
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 670
    .end local v0           #count:I
    .end local v2           #i:I
    .end local v3           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4           #path:Ljava/lang/String;
    .end local v5           #paths:[Ljava/lang/String;
    .end local v7           #state:Ljava/lang/String;
    .end local v8           #states:[Ljava/lang/String;
    :catchall_0
    move-exception v9

    :try_start_6
    monitor-exit v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v9

    .line 682
    .restart local v0       #count:I
    .restart local v2       #i:I
    .restart local v3       #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v4       #path:Ljava/lang/String;
    .restart local v5       #paths:[Ljava/lang/String;
    .restart local v7       #state:Ljava/lang/String;
    .restart local v8       #states:[Ljava/lang/String;
    :cond_3
    const-string v9, "shared"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 687
    iget-object v9, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v9, v9, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x7

    #calls: Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V
    invoke-static {v9, v10, v4, v11, v12}, Lcom/android/server/MountService;->access$1500(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_4

    .line 693
    .end local v4           #path:Ljava/lang/String;
    .end local v7           #state:Ljava/lang/String;
    :cond_4
    iget-object v9, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v9, v9, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mEmulateExternalStorage:Z
    invoke-static {v9}, Lcom/android/server/MountService;->access$1800(Lcom/android/server/MountService;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 694
    iget-object v9, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v9, v9, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    const/4 v10, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x4

    #calls: Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V
    invoke-static {v9, v10, v11, v12, v13}, Lcom/android/server/MountService;->access$1500(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;II)V

    .line 703
    :cond_5
    iget-object v9, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v9, v9, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mSendUmsConnectedOnBoot:Z
    invoke-static {v9}, Lcom/android/server/MountService;->access$1900(Lcom/android/server/MountService;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 704
    iget-object v9, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v9, v9, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    const/4 v10, 0x1

    #calls: Lcom/android/server/MountService;->sendUmsIntent(Z)V
    invoke-static {v9, v10}, Lcom/android/server/MountService;->access$2000(Lcom/android/server/MountService;Z)V

    .line 705
    iget-object v9, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v9, v9, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    const/4 v10, 0x0

    #setter for: Lcom/android/server/MountService;->mSendUmsConnectedOnBoot:Z
    invoke-static {v9, v10}, Lcom/android/server/MountService;->access$1902(Lcom/android/server/MountService;Z)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_2
.end method
