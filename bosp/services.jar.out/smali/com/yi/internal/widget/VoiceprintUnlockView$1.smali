.class Lcom/yi/internal/widget/VoiceprintUnlockView$1;
.super Ljava/lang/Object;
.source "VoiceprintUnlockView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yi/internal/widget/VoiceprintUnlockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yi/internal/widget/VoiceprintUnlockView;


# direct methods
.method constructor <init>(Lcom/yi/internal/widget/VoiceprintUnlockView;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/yi/internal/widget/VoiceprintUnlockView$1;->this$0:Lcom/yi/internal/widget/VoiceprintUnlockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 103
    iget-object v1, p0, Lcom/yi/internal/widget/VoiceprintUnlockView$1;->this$0:Lcom/yi/internal/widget/VoiceprintUnlockView;

    monitor-enter v1

    .line 108
    :try_start_0
    invoke-static {}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$100()Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;

    move-result-object v0

    invoke-static {v0}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$002(Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;)Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;

    .line 109
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$102(Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;)Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;

    .line 111
    invoke-static {}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$000()Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    invoke-static {}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$000()Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;

    move-result-object v0

    invoke-interface {v0}, Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;->process()V

    .line 113
    :cond_0
    monitor-exit v1

    .line 114
    return-void

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
