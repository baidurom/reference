.class Lcom/android/server/MountService$6;
.super Ljava/lang/Thread;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService;->shutdown(Landroid/os/storage/IMountShutdownObserver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;)V
    .locals 0
    .parameter

    .prologue
    .line 1898
    iput-object p1, p0, Lcom/android/server/MountService$6;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1902
    :try_start_0
    const-string v1, "MountService"

    const-string v2, "Notify VOLD IPO shutdown"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1903
    iget-object v1, p0, Lcom/android/server/MountService$6;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;
    invoke-static {v1}, Lcom/android/server/MountService;->access$2300(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v1

    const-string v2, "volume ipo shutdown"

    invoke-virtual {v1, v2}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1907
    :goto_0
    return-void

    .line 1904
    :catch_0
    move-exception v0

    .line 1905
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "MountService"

    const-string v2, "Error to notify VOLD IPO shutdown"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
