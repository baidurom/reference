.class Landroid/media/AudioService$AudioFocusDeathHandler;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioFocusDeathHandler"
.end annotation


# instance fields
.field private mCb:Landroid/os/IBinder;

.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method constructor <init>(Landroid/media/AudioService;Landroid/os/IBinder;)V
    .locals 0
    .parameter
    .parameter "cb"

    .prologue
    .line 4212
    iput-object p1, p0, Landroid/media/AudioService$AudioFocusDeathHandler;->this$0:Landroid/media/AudioService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4213
    iput-object p2, p0, Landroid/media/AudioService$AudioFocusDeathHandler;->mCb:Landroid/os/IBinder;

    .line 4214
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    .line 4217
    invoke-static {}, Landroid/media/AudioService;->access$9000()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4218
    :try_start_0
    const-string v0, "AudioService"

    const-string v2, "  AudioFocus   audio focus client died"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4219
    iget-object v0, p0, Landroid/media/AudioService$AudioFocusDeathHandler;->this$0:Landroid/media/AudioService;

    iget-object v2, p0, Landroid/media/AudioService$AudioFocusDeathHandler;->mCb:Landroid/os/IBinder;

    #calls: Landroid/media/AudioService;->removeFocusStackEntryForClient(Landroid/os/IBinder;)V
    invoke-static {v0, v2}, Landroid/media/AudioService;->access$9100(Landroid/media/AudioService;Landroid/os/IBinder;)V

    .line 4220
    monitor-exit v1

    .line 4221
    return-void

    .line 4220
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 4224
    iget-object v0, p0, Landroid/media/AudioService$AudioFocusDeathHandler;->mCb:Landroid/os/IBinder;

    return-object v0
.end method
