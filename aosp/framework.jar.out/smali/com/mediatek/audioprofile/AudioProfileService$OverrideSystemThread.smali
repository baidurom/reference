.class Lcom/mediatek/audioprofile/AudioProfileService$OverrideSystemThread;
.super Ljava/lang/Thread;
.source "AudioProfileService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/audioprofile/AudioProfileService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverrideSystemThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/audioprofile/AudioProfileService;


# direct methods
.method constructor <init>(Lcom/mediatek/audioprofile/AudioProfileService;)V
    .locals 1
    .parameter

    .prologue
    .line 2673
    iput-object p1, p0, Lcom/mediatek/audioprofile/AudioProfileService$OverrideSystemThread;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    .line 2674
    const-string v0, "AudioService"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 2675
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2680
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 2682
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService$OverrideSystemThread;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    monitor-enter v1

    .line 2683
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService$OverrideSystemThread;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    new-instance v2, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileHandler;

    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService$OverrideSystemThread;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-direct {v2, v3}, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileHandler;-><init>(Lcom/mediatek/audioprofile/AudioProfileService;)V

    #setter for: Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;
    invoke-static {v0, v2}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1702(Lcom/mediatek/audioprofile/AudioProfileService;Landroid/os/Handler;)Landroid/os/Handler;

    .line 2686
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService$OverrideSystemThread;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 2687
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2690
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 2691
    return-void

    .line 2687
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
