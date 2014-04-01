.class Lcom/android/server/MountService$1$2;
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
    .line 728
    iput-object p1, p0, Lcom/android/server/MountService$1$2;->this$1:Lcom/android/server/MountService$1;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 26

    .prologue
    .line 732
    :try_start_0
    const-string v21, "MountService"

    const-string v22, "Notify VOLD IPO startup"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$1$2;->this$1:Lcom/android/server/MountService$1;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    #getter for: Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;
    invoke-static/range {v21 .. v21}, Lcom/android/server/MountService;->access$2300(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v21

    const-string v22, "volume ipo startup"

    invoke-virtual/range {v21 .. v22}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 737
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$1$2;->this$1:Lcom/android/server/MountService$1;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    #setter for: Lcom/android/server/MountService;->mPrimaryVolume:Landroid/os/storage/StorageVolume;
    invoke-static/range {v21 .. v22}, Lcom/android/server/MountService;->access$2402(Lcom/android/server/MountService;Landroid/os/storage/StorageVolume;)Landroid/os/storage/StorageVolume;

    .line 738
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$1$2;->this$1:Lcom/android/server/MountService$1;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$1$2;->this$1:Lcom/android/server/MountService$1;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/MountService;->resources:Landroid/content/res/Resources;
    invoke-static/range {v22 .. v22}, Lcom/android/server/MountService;->access$2500(Lcom/android/server/MountService;)Landroid/content/res/Resources;

    move-result-object v22

    #calls: Lcom/android/server/MountService;->readStorageList(Landroid/content/res/Resources;)V
    invoke-static/range {v21 .. v22}, Lcom/android/server/MountService;->access$2600(Lcom/android/server/MountService;Landroid/content/res/Resources;)V

    .line 739
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$1$2;->this$1:Lcom/android/server/MountService$1;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    #calls: Lcom/android/server/MountService;->doSDSwapVolumeUpdate()V
    invoke-static/range {v21 .. v21}, Lcom/android/server/MountService;->access$2700(Lcom/android/server/MountService;)V

    .line 742
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$1$2;->this$1:Lcom/android/server/MountService$1;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    #getter for: Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;
    invoke-static/range {v21 .. v21}, Lcom/android/server/MountService;->access$2300(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v21

    const-string v22, "volume list"

    const/16 v23, 0x6e

    invoke-virtual/range {v21 .. v23}, Lcom/android/server/NativeDaemonConnector;->doListCommand(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v19

    .line 744
    .local v19, vols:[Ljava/lang/String;
    move-object/from16 v4, v19

    .local v4, arr$:[Ljava/lang/String;
    array-length v11, v4

    .local v11, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_1
    if-ge v9, v11, :cond_3

    aget-object v20, v4, v9

    .line 745
    .local v20, volstr:Ljava/lang/String;
    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 747
    .local v18, tok:[Ljava/lang/String;
    const/16 v21, 0x1

    aget-object v12, v18, v21

    .line 748
    .local v12, path:Ljava/lang/String;
    const-string v16, "removed"

    .line 750
    .local v16, state:Ljava/lang/String;
    const/16 v21, 0x2

    aget-object v21, v18, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 751
    .local v15, st:I
    if-nez v15, :cond_1

    .line 752
    const-string v16, "removed"

    .line 765
    :goto_2
    if-eqz v16, :cond_0

    .line 766
    const-string v21, "MountService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Updating valid state "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$1$2;->this$1:Lcom/android/server/MountService$1;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    #calls: Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v12, v1}, Lcom/android/server/MountService;->access$300(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 744
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 734
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v9           #i$:I
    .end local v11           #len$:I
    .end local v12           #path:Ljava/lang/String;
    .end local v15           #st:I
    .end local v16           #state:Ljava/lang/String;
    .end local v18           #tok:[Ljava/lang/String;
    .end local v19           #vols:[Ljava/lang/String;
    .end local v20           #volstr:Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 735
    .local v6, e:Ljava/lang/Exception;
    const-string v21, "MountService"

    const-string v22, "Error reinit SD card while IPO"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 753
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v4       #arr$:[Ljava/lang/String;
    .restart local v9       #i$:I
    .restart local v11       #len$:I
    .restart local v12       #path:Ljava/lang/String;
    .restart local v15       #st:I
    .restart local v16       #state:Ljava/lang/String;
    .restart local v18       #tok:[Ljava/lang/String;
    .restart local v19       #vols:[Ljava/lang/String;
    .restart local v20       #volstr:Ljava/lang/String;
    :cond_1
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v15, v0, :cond_2

    .line 754
    :try_start_2
    const-string v16, "unmounted"

    goto :goto_2

    .line 755
    :cond_2
    const/16 v21, 0x4

    move/from16 v0, v21

    if-ne v15, v0, :cond_4

    .line 756
    const-string v16, "mounted"

    .line 757
    const-string v21, "MountService"

    const-string v22, "Media already mounted on daemon connection"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 770
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v9           #i$:I
    .end local v11           #len$:I
    .end local v12           #path:Ljava/lang/String;
    .end local v15           #st:I
    .end local v16           #state:Ljava/lang/String;
    .end local v18           #tok:[Ljava/lang/String;
    .end local v19           #vols:[Ljava/lang/String;
    .end local v20           #volstr:Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 771
    .restart local v6       #e:Ljava/lang/Exception;
    const-string v21, "MountService"

    const-string v22, "Error get sd state while IPO"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 777
    .end local v6           #e:Ljava/lang/Exception;
    :cond_3
    :try_start_3
    const-string v21, "MountService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "updating vaild ums "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$1$2;->this$1:Lcom/android/server/MountService$1;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    move-object/from16 v23, v0

    #getter for: Lcom/android/server/MountService;->mIsUsbConnected:Z
    invoke-static/range {v23 .. v23}, Lcom/android/server/MountService;->access$200(Lcom/android/server/MountService;)Z

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 788
    :goto_3
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$1$2;->this$1:Lcom/android/server/MountService$1;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    #getter for: Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;
    invoke-static/range {v21 .. v21}, Lcom/android/server/MountService;->access$1600(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v22

    monitor-enter v22
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 789
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$1$2;->this$1:Lcom/android/server/MountService$1;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    #getter for: Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;
    invoke-static/range {v21 .. v21}, Lcom/android/server/MountService;->access$1600(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    .line 790
    .local v10, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v10}, Ljava/util/Set;->size()I

    move-result v5

    .line 791
    .local v5, count:I
    new-array v0, v5, [Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v10, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/String;

    .line 792
    .local v13, paths:[Ljava/lang/String;
    new-array v0, v5, [Ljava/lang/String;

    move-object/from16 v17, v0

    .line 793
    .local v17, states:[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_4
    if-ge v8, v5, :cond_7

    .line 794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$1$2;->this$1:Lcom/android/server/MountService$1;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    #getter for: Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;
    invoke-static/range {v21 .. v21}, Lcom/android/server/MountService;->access$1600(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v21

    aget-object v23, v13, v8

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    aput-object v21, v17, v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 793
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 758
    .end local v5           #count:I
    .end local v8           #i:I
    .end local v10           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v13           #paths:[Ljava/lang/String;
    .end local v17           #states:[Ljava/lang/String;
    .restart local v4       #arr$:[Ljava/lang/String;
    .restart local v9       #i$:I
    .restart local v11       #len$:I
    .restart local v12       #path:Ljava/lang/String;
    .restart local v15       #st:I
    .restart local v16       #state:Ljava/lang/String;
    .restart local v18       #tok:[Ljava/lang/String;
    .restart local v19       #vols:[Ljava/lang/String;
    .restart local v20       #volstr:Ljava/lang/String;
    :cond_4
    const/16 v21, 0x7

    move/from16 v0, v21

    if-ne v15, v0, :cond_5

    .line 759
    :try_start_6
    const-string v16, "shared"

    .line 760
    const-string v21, "MountService"

    const-string v22, "Media shared on daemon connection"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 762
    :cond_5
    new-instance v21, Ljava/lang/Exception;

    const-string v22, "Unexpected state %d"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v21
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 778
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v9           #i$:I
    .end local v11           #len$:I
    .end local v12           #path:Ljava/lang/String;
    .end local v15           #st:I
    .end local v16           #state:Ljava/lang/String;
    .end local v18           #tok:[Ljava/lang/String;
    .end local v19           #vols:[Ljava/lang/String;
    .end local v20           #volstr:Ljava/lang/String;
    :catch_2
    move-exception v7

    .line 779
    .local v7, ex:Ljava/lang/Exception;
    :try_start_7
    const-string v21, "MountService"

    const-string v22, "Failed to get share availability"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_3

    .line 833
    .end local v7           #ex:Ljava/lang/Exception;
    :catch_3
    move-exception v7

    .line 834
    .restart local v7       #ex:Ljava/lang/Exception;
    const-string v21, "MountService"

    const-string v22, "Boot-time mount exception"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 836
    .end local v7           #ex:Ljava/lang/Exception;
    :cond_6
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$1$2;->this$1:Lcom/android/server/MountService$1;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    #calls: Lcom/android/server/MountService;->updateDefaultpath()V
    invoke-static/range {v21 .. v21}, Lcom/android/server/MountService;->access$2100(Lcom/android/server/MountService;)V

    .line 837
    const-string v21, "MountService"

    const-string v22, "BOOT_IPO  mSetDefaultEnable = true"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$1$2;->this$1:Lcom/android/server/MountService$1;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    #setter for: Lcom/android/server/MountService;->mSetDefaultEnable:Z
    invoke-static/range {v21 .. v22}, Lcom/android/server/MountService;->access$2202(Lcom/android/server/MountService;Z)Z

    .line 839
    return-void

    .line 796
    .restart local v5       #count:I
    .restart local v8       #i:I
    .restart local v10       #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v13       #paths:[Ljava/lang/String;
    .restart local v17       #states:[Ljava/lang/String;
    :cond_7
    :try_start_8
    monitor-exit v22
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 798
    const/4 v8, 0x0

    :goto_6
    if-ge v8, v5, :cond_a

    .line 799
    :try_start_9
    aget-object v12, v13, v8

    .line 800
    .restart local v12       #path:Ljava/lang/String;
    aget-object v16, v17, v8

    .line 802
    .restart local v16       #state:Ljava/lang/String;
    const-string v21, "unmounted"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_9

    .line 803
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$1$2;->this$1:Lcom/android/server/MountService$1;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    #calls: Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I
    invoke-static {v0, v12}, Lcom/android/server/MountService;->access$1700(Lcom/android/server/MountService;Ljava/lang/String;)I

    move-result v14

    .line 804
    .local v14, rc:I
    if-eqz v14, :cond_8

    .line 805
    const-string v21, "MountService"

    const-string v22, "Boot-time mount failed (%d)"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 798
    .end local v14           #rc:I
    :cond_8
    :goto_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 796
    .end local v5           #count:I
    .end local v8           #i:I
    .end local v10           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v12           #path:Ljava/lang/String;
    .end local v13           #paths:[Ljava/lang/String;
    .end local v16           #state:Ljava/lang/String;
    .end local v17           #states:[Ljava/lang/String;
    :catchall_0
    move-exception v21

    :try_start_a
    monitor-exit v22
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    throw v21

    .line 808
    .restart local v5       #count:I
    .restart local v8       #i:I
    .restart local v10       #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v12       #path:Ljava/lang/String;
    .restart local v13       #paths:[Ljava/lang/String;
    .restart local v16       #state:Ljava/lang/String;
    .restart local v17       #states:[Ljava/lang/String;
    :cond_9
    const-string v21, "shared"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 813
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$1$2;->this$1:Lcom/android/server/MountService$1;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x7

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    #calls: Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V
    invoke-static {v0, v1, v12, v2, v3}, Lcom/android/server/MountService;->access$1500(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_7

    .line 819
    .end local v12           #path:Ljava/lang/String;
    .end local v16           #state:Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$1$2;->this$1:Lcom/android/server/MountService$1;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    #getter for: Lcom/android/server/MountService;->mEmulateExternalStorage:Z
    invoke-static/range {v21 .. v21}, Lcom/android/server/MountService;->access$1800(Lcom/android/server/MountService;)Z

    move-result v21

    if-eqz v21, :cond_b

    .line 820
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$1$2;->this$1:Lcom/android/server/MountService$1;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    const/16 v25, 0x4

    #calls: Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V
    invoke-static/range {v21 .. v25}, Lcom/android/server/MountService;->access$1500(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;II)V

    .line 829
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$1$2;->this$1:Lcom/android/server/MountService$1;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    #getter for: Lcom/android/server/MountService;->mSendUmsConnectedOnBoot:Z
    invoke-static/range {v21 .. v21}, Lcom/android/server/MountService;->access$1900(Lcom/android/server/MountService;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 830
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$1$2;->this$1:Lcom/android/server/MountService$1;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    #calls: Lcom/android/server/MountService;->sendUmsIntent(Z)V
    invoke-static/range {v21 .. v22}, Lcom/android/server/MountService;->access$2000(Lcom/android/server/MountService;Z)V

    .line 831
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$1$2;->this$1:Lcom/android/server/MountService$1;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    #setter for: Lcom/android/server/MountService;->mSendUmsConnectedOnBoot:Z
    invoke-static/range {v21 .. v22}, Lcom/android/server/MountService;->access$1902(Lcom/android/server/MountService;Z)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    goto/16 :goto_5
.end method
