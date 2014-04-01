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
    .line 659
    iput-object p1, p0, Lcom/android/server/MountService$1$2;->this$1:Lcom/android/server/MountService$1;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 26

    .prologue
    .line 663
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$1$2;->this$1:Lcom/android/server/MountService$1;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    #getter for: Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;
    invoke-static/range {v21 .. v21}, Lcom/android/server/MountService;->access$2200(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v21

    const-string v22, "volume list"

    const/16 v23, 0x6e

    invoke-virtual/range {v21 .. v23}, Lcom/android/server/NativeDaemonConnector;->doListCommand(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v19

    .line 665
    .local v19, vols:[Ljava/lang/String;
    move-object/from16 v4, v19

    .local v4, arr$:[Ljava/lang/String;
    array-length v11, v4

    .local v11, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_0
    if-ge v9, v11, :cond_3

    aget-object v20, v4, v9

    .line 666
    .local v20, volstr:Ljava/lang/String;
    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 668
    .local v18, tok:[Ljava/lang/String;
    const/16 v21, 0x1

    aget-object v12, v18, v21

    .line 669
    .local v12, path:Ljava/lang/String;
    const-string v16, "removed"

    .line 671
    .local v16, state:Ljava/lang/String;
    const/16 v21, 0x2

    aget-object v21, v18, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 672
    .local v15, st:I
    if-nez v15, :cond_1

    .line 673
    const-string v16, "removed"

    .line 686
    :goto_1
    if-eqz v16, :cond_0

    .line 687
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

    .line 688
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

    .line 665
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 674
    :cond_1
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v15, v0, :cond_2

    .line 675
    const-string v16, "unmounted"

    goto :goto_1

    .line 676
    :cond_2
    const/16 v21, 0x4

    move/from16 v0, v21

    if-ne v15, v0, :cond_4

    .line 677
    const-string v16, "mounted"

    .line 678
    const-string v21, "MountService"

    const-string v22, "Media already mounted on daemon connection"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 691
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

    .line 692
    .local v6, e:Ljava/lang/Exception;
    const-string v21, "MountService"

    const-string v22, "Error get sd state while IPO"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 698
    .end local v6           #e:Ljava/lang/Exception;
    :cond_3
    :try_start_1
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
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 709
    :goto_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$1$2;->this$1:Lcom/android/server/MountService$1;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    #getter for: Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;
    invoke-static/range {v21 .. v21}, Lcom/android/server/MountService;->access$1500(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v22

    monitor-enter v22
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 710
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$1$2;->this$1:Lcom/android/server/MountService$1;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    #getter for: Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;
    invoke-static/range {v21 .. v21}, Lcom/android/server/MountService;->access$1500(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    .line 711
    .local v10, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v10}, Ljava/util/Set;->size()I

    move-result v5

    .line 712
    .local v5, count:I
    new-array v0, v5, [Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v10, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/String;

    .line 713
    .local v13, paths:[Ljava/lang/String;
    new-array v0, v5, [Ljava/lang/String;

    move-object/from16 v17, v0

    .line 714
    .local v17, states:[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_3
    if-ge v8, v5, :cond_7

    .line 715
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$1$2;->this$1:Lcom/android/server/MountService$1;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    #getter for: Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;
    invoke-static/range {v21 .. v21}, Lcom/android/server/MountService;->access$1500(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v21

    aget-object v23, v13, v8

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    aput-object v21, v17, v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 714
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 679
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

    .line 680
    :try_start_4
    const-string v16, "shared"

    .line 681
    const-string v21, "MountService"

    const-string v22, "Media shared on daemon connection"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 683
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
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 699
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
    move-exception v7

    .line 700
    .local v7, ex:Ljava/lang/Exception;
    :try_start_5
    const-string v21, "MountService"

    const-string v22, "Failed to get share availability"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_2

    .line 754
    .end local v7           #ex:Ljava/lang/Exception;
    :catch_2
    move-exception v7

    .line 755
    .restart local v7       #ex:Ljava/lang/Exception;
    const-string v21, "MountService"

    const-string v22, "Boot-time mount exception"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 757
    .end local v7           #ex:Ljava/lang/Exception;
    :cond_6
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$1$2;->this$1:Lcom/android/server/MountService$1;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    #calls: Lcom/android/server/MountService;->updateDefaultpath()V
    invoke-static/range {v21 .. v21}, Lcom/android/server/MountService;->access$2000(Lcom/android/server/MountService;)V

    .line 758
    const-string v21, "MountService"

    const-string v22, "BOOT_IPO  mSetDefaultEnable = true"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$1$2;->this$1:Lcom/android/server/MountService$1;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    #setter for: Lcom/android/server/MountService;->mSetDefaultEnable:Z
    invoke-static/range {v21 .. v22}, Lcom/android/server/MountService;->access$2102(Lcom/android/server/MountService;Z)Z

    .line 760
    return-void

    .line 717
    .restart local v5       #count:I
    .restart local v8       #i:I
    .restart local v10       #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v13       #paths:[Ljava/lang/String;
    .restart local v17       #states:[Ljava/lang/String;
    :cond_7
    :try_start_6
    monitor-exit v22
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 719
    const/4 v8, 0x0

    :goto_5
    if-ge v8, v5, :cond_a

    .line 720
    :try_start_7
    aget-object v12, v13, v8

    .line 721
    .restart local v12       #path:Ljava/lang/String;
    aget-object v16, v17, v8

    .line 723
    .restart local v16       #state:Ljava/lang/String;
    const-string v21, "unmounted"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_9

    .line 724
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$1$2;->this$1:Lcom/android/server/MountService$1;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    #calls: Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I
    invoke-static {v0, v12}, Lcom/android/server/MountService;->access$1600(Lcom/android/server/MountService;Ljava/lang/String;)I

    move-result v14

    .line 725
    .local v14, rc:I
    if-eqz v14, :cond_8

    .line 726
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
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 719
    .end local v14           #rc:I
    :cond_8
    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 717
    .end local v5           #count:I
    .end local v8           #i:I
    .end local v10           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v12           #path:Ljava/lang/String;
    .end local v13           #paths:[Ljava/lang/String;
    .end local v16           #state:Ljava/lang/String;
    .end local v17           #states:[Ljava/lang/String;
    :catchall_0
    move-exception v21

    :try_start_8
    monitor-exit v22
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    throw v21

    .line 729
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

    .line 734
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
    invoke-static {v0, v1, v12, v2, v3}, Lcom/android/server/MountService;->access$1400(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_6

    .line 740
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
    invoke-static/range {v21 .. v21}, Lcom/android/server/MountService;->access$1700(Lcom/android/server/MountService;)Z

    move-result v21

    if-eqz v21, :cond_b

    .line 741
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
    invoke-static/range {v21 .. v25}, Lcom/android/server/MountService;->access$1400(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;II)V

    .line 750
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$1$2;->this$1:Lcom/android/server/MountService$1;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    #getter for: Lcom/android/server/MountService;->mSendUmsConnectedOnBoot:Z
    invoke-static/range {v21 .. v21}, Lcom/android/server/MountService;->access$1800(Lcom/android/server/MountService;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 751
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$1$2;->this$1:Lcom/android/server/MountService$1;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    #calls: Lcom/android/server/MountService;->sendUmsIntent(Z)V
    invoke-static/range {v21 .. v22}, Lcom/android/server/MountService;->access$1900(Lcom/android/server/MountService;Z)V

    .line 752
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$1$2;->this$1:Lcom/android/server/MountService$1;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    #setter for: Lcom/android/server/MountService;->mSendUmsConnectedOnBoot:Z
    invoke-static/range {v21 .. v22}, Lcom/android/server/MountService;->access$1802(Lcom/android/server/MountService;Z)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    goto/16 :goto_4
.end method
