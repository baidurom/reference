.class Lcom/android/server/BackupManagerService$ObserveBaiduTransport;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ObserveBaiduTransport"
.end annotation


# instance fields
.field private final mComponentName:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/server/BackupManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/BackupManagerService;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "handler"
    .parameter "cn"

    .prologue
    .line 871
    iput-object p1, p0, Lcom/android/server/BackupManagerService$ObserveBaiduTransport;->this$0:Lcom/android/server/BackupManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 872
    iput-object p2, p0, Lcom/android/server/BackupManagerService$ObserveBaiduTransport;->mHandler:Landroid/os/Handler;

    .line 873
    iput-object p3, p0, Lcom/android/server/BackupManagerService$ObserveBaiduTransport;->mComponentName:Ljava/lang/String;

    .line 874
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .prologue
    .line 877
    iget-object v1, p0, Lcom/android/server/BackupManagerService$ObserveBaiduTransport;->mHandler:Landroid/os/Handler;

    monitor-enter v1

    .line 879
    :try_start_0
    iget-object v0, p0, Lcom/android/server/BackupManagerService$ObserveBaiduTransport;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v2, p0, Lcom/android/server/BackupManagerService$ObserveBaiduTransport;->mComponentName:Ljava/lang/String;

    const/4 v3, 0x0

    #calls: Lcom/android/server/BackupManagerService;->registerTransport(Ljava/lang/String;Lcom/android/internal/backup/IBackupTransport;)V
    invoke-static {v0, v2, v3}, Lcom/android/server/BackupManagerService;->access$500(Lcom/android/server/BackupManagerService;Ljava/lang/String;Lcom/android/internal/backup/IBackupTransport;)V

    .line 880
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 882
    iget-object v0, p0, Lcom/android/server/BackupManagerService$ObserveBaiduTransport;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 883
    return-void

    .line 880
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
