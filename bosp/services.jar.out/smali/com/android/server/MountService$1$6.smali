.class Lcom/android/server/MountService$1$6;
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
    .line 912
    iput-object p1, p0, Lcom/android/server/MountService$1$6;->this$1:Lcom/android/server/MountService$1;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    .line 918
    :try_start_0
    iget-object v9, p0, Lcom/android/server/MountService$1$6;->this$1:Lcom/android/server/MountService$1;

    iget-object v9, v9, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;
    invoke-static {v9}, Lcom/android/server/MountService;->access$1600(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v10

    monitor-enter v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 919
    :try_start_1
    iget-object v9, p0, Lcom/android/server/MountService$1$6;->this$1:Lcom/android/server/MountService$1;

    iget-object v9, v9, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;
    invoke-static {v9}, Lcom/android/server/MountService;->access$1600(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 920
    .local v3, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v0

    .line 921
    .local v0, count:I
    new-array v9, v0, [Ljava/lang/String;

    invoke-interface {v3, v9}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 922
    .local v5, paths:[Ljava/lang/String;
    new-array v8, v0, [Ljava/lang/String;

    .line 923
    .local v8, states:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 924
    iget-object v9, p0, Lcom/android/server/MountService$1$6;->this$1:Lcom/android/server/MountService$1;

    iget-object v9, v9, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;
    invoke-static {v9}, Lcom/android/server/MountService;->access$1600(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v9

    aget-object v11, v5, v2

    invoke-virtual {v9, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    aput-object v9, v8, v2

    .line 923
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 926
    :cond_0
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 928
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    .line 929
    :try_start_2
    aget-object v4, v5, v2

    .line 930
    .local v4, path:Ljava/lang/String;
    aget-object v7, v8, v2

    .line 932
    .local v7, state:Ljava/lang/String;
    const-string v9, "unmounted"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 933
    iget-object v9, p0, Lcom/android/server/MountService$1$6;->this$1:Lcom/android/server/MountService$1;

    iget-object v9, v9, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I
    invoke-static {v9, v4}, Lcom/android/server/MountService;->access$1700(Lcom/android/server/MountService;Ljava/lang/String;)I

    move-result v6

    .line 934
    .local v6, rc:I
    if-eqz v6, :cond_1

    .line 935
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
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 928
    .end local v6           #rc:I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 926
    .end local v0           #count:I
    .end local v2           #i:I
    .end local v3           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4           #path:Ljava/lang/String;
    .end local v5           #paths:[Ljava/lang/String;
    .end local v7           #state:Ljava/lang/String;
    .end local v8           #states:[Ljava/lang/String;
    :catchall_0
    move-exception v9

    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v9
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 941
    :catch_0
    move-exception v1

    .line 942
    .local v1, ex:Ljava/lang/Exception;
    const-string v9, "MountService"

    const-string v10, "Boot-time mount exception"

    invoke-static {v9, v10, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 944
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_2
    iget-object v9, p0, Lcom/android/server/MountService$1$6;->this$1:Lcom/android/server/MountService$1;

    iget-object v9, v9, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->updateDefaultpath()V
    invoke-static {v9}, Lcom/android/server/MountService;->access$2100(Lcom/android/server/MountService;)V

    .line 945
    const-string v9, "MountService"

    const-string v10, "AMS_SYSTEM_READY  mSetDefaultEnable = true"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    iget-object v9, p0, Lcom/android/server/MountService$1$6;->this$1:Lcom/android/server/MountService$1;

    iget-object v9, v9, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #setter for: Lcom/android/server/MountService;->mSetDefaultEnable:Z
    invoke-static {v9, v14}, Lcom/android/server/MountService;->access$2202(Lcom/android/server/MountService;Z)Z

    .line 947
    return-void
.end method
