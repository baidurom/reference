.class Lcom/android/server/MountService$1$5;
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
    .line 874
    iput-object p1, p0, Lcom/android/server/MountService$1$5;->this$1:Lcom/android/server/MountService$1;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 876
    invoke-static {}, Lcom/android/server/MountService;->access$2900()Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 877
    :try_start_0
    iget-object v7, p0, Lcom/android/server/MountService$1$5;->this$1:Lcom/android/server/MountService$1;

    iget-object v7, v7, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/server/MountService;->access$3100(Lcom/android/server/MountService;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 878
    .local v4, length:I
    const/4 v6, 0x0

    .line 879
    .local v6, path:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_4

    .line 880
    iget-object v7, p0, Lcom/android/server/MountService$1$5;->this$1:Lcom/android/server/MountService$1;

    iget-object v7, v7, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/server/MountService;->access$3100(Lcom/android/server/MountService;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/storage/StorageVolume;

    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 882
    :try_start_1
    iget-object v7, p0, Lcom/android/server/MountService$1$5;->this$1:Lcom/android/server/MountService$1;

    iget-object v7, v7, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    invoke-virtual {v7, v6}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 883
    .local v5, mCurState:Ljava/lang/String;
    const-string v7, "MountService"

    invoke-static {v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    const-string v7, "mounted"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 885
    iget-object v7, p0, Lcom/android/server/MountService$1$5;->this$1:Lcom/android/server/MountService$1;

    iget-object v7, v7, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-virtual {v7, v6, v9, v10}, Lcom/android/server/MountService;->unmountVolume(Ljava/lang/String;ZZ)V

    .line 887
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1
    const/16 v7, 0x14

    if-ge v3, v7, :cond_0

    .line 888
    const-wide/16 v9, 0x3e8

    invoke-static {v9, v10}, Lcom/android/server/MountService$1$5;->sleep(J)V

    .line 889
    iget-object v7, p0, Lcom/android/server/MountService$1$5;->this$1:Lcom/android/server/MountService$1;

    iget-object v7, v7, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    invoke-virtual {v7, v6}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 890
    const-string v7, "unmounted"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 891
    const-string v7, "MountService"

    const-string v9, "Unmount Succeeded!"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    .end local v3           #j:I
    :cond_0
    :goto_2
    iget-object v7, p0, Lcom/android/server/MountService$1$5;->this$1:Lcom/android/server/MountService$1;

    iget-object v7, v7, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    invoke-virtual {v7, v6}, Lcom/android/server/MountService;->formatVolume(Ljava/lang/String;)I

    move-result v0

    .line 901
    .local v0, Ret:I
    if-nez v0, :cond_3

    const-string v7, "MountService"

    const-string v9, "SD format Succeed!"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    .end local v0           #Ret:I
    .end local v5           #mCurState:Ljava/lang/String;
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 887
    .restart local v3       #j:I
    .restart local v5       #mCurState:Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 896
    .end local v3           #j:I
    :cond_2
    const-string v7, "shared"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 897
    iget-object v7, p0, Lcom/android/server/MountService$1$5;->this$1:Lcom/android/server/MountService$1;

    iget-object v7, v7, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    const-string v9, "ums"

    const/4 v10, 0x0

    #calls: Lcom/android/server/MountService;->doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static {v7, v6, v9, v10}, Lcom/android/server/MountService;->access$600(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 903
    .end local v5           #mCurState:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 904
    .local v1, ex:Ljava/lang/Exception;
    :try_start_2
    const-string v7, "MountService"

    const-string v9, "SD format exception"

    invoke-static {v7, v9, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 907
    .end local v1           #ex:Ljava/lang/Exception;
    .end local v2           #i:I
    .end local v4           #length:I
    .end local v6           #path:Ljava/lang/String;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .line 902
    .restart local v0       #Ret:I
    .restart local v2       #i:I
    .restart local v4       #length:I
    .restart local v5       #mCurState:Ljava/lang/String;
    .restart local v6       #path:Ljava/lang/String;
    :cond_3
    :try_start_3
    const-string v7, "MountService"

    const-string v9, "SD format Failed!"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 907
    .end local v0           #Ret:I
    .end local v5           #mCurState:Ljava/lang/String;
    :cond_4
    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 908
    return-void
.end method
