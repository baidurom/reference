.class Lcom/android/server/MountService$4$1;
.super Ljava/lang/Thread;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService$4;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/MountService$4;


# direct methods
.method constructor <init>(Lcom/android/server/MountService$4;)V
    .locals 0
    .parameter

    .prologue
    .line 872
    iput-object p1, p0, Lcom/android/server/MountService$4$1;->this$1:Lcom/android/server/MountService$4;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 874
    invoke-static {}, Lcom/android/server/MountService;->access$2800()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 876
    :try_start_0
    iget-object v1, p0, Lcom/android/server/MountService$4$1;->this$1:Lcom/android/server/MountService$4;

    iget-object v1, v1, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    const/4 v3, 0x1

    #calls: Lcom/android/server/MountService;->enableUSBFuction(Z)V
    invoke-static {v1, v3}, Lcom/android/server/MountService;->access$2900(Lcom/android/server/MountService;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 880
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 881
    return-void

    .line 877
    :catch_0
    move-exception v0

    .line 878
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "MountService"

    const-string v3, "USB enable exception"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 880
    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
