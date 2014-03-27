.class Lcom/yi/internal/widget/VoiceprintUnlockView$RecorderListener;
.super Ljava/lang/Object;
.source "VoiceprintUnlockView.java"

# interfaces
.implements Lcom/baidu/voiceprint/VoiceprintHandler$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yi/internal/widget/VoiceprintUnlockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecorderListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yi/internal/widget/VoiceprintUnlockView;


# direct methods
.method private constructor <init>(Lcom/yi/internal/widget/VoiceprintUnlockView;)V
    .locals 0
    .parameter

    .prologue
    .line 774
    iput-object p1, p0, Lcom/yi/internal/widget/VoiceprintUnlockView$RecorderListener;->this$0:Lcom/yi/internal/widget/VoiceprintUnlockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yi/internal/widget/VoiceprintUnlockView;Lcom/yi/internal/widget/VoiceprintUnlockView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 774
    invoke-direct {p0, p1}, Lcom/yi/internal/widget/VoiceprintUnlockView$RecorderListener;-><init>(Lcom/yi/internal/widget/VoiceprintUnlockView;)V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 3
    .parameter "errno"

    .prologue
    .line 787
    const-string v0, "VoiceprintUnlock"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "errno id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    invoke-static {}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$300()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$400()Lcom/baidu/voiceprint/VoiceprintHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 789
    invoke-static {}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$300()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/yi/internal/widget/VoiceprintUnlockView$RecorderListener;->this$0:Lcom/yi/internal/widget/VoiceprintUnlockView;

    #getter for: Lcom/yi/internal/widget/VoiceprintUnlockView;->mUpdateRecordingViewTask:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$600(Lcom/yi/internal/widget/VoiceprintUnlockView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 790
    invoke-static {}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$400()Lcom/baidu/voiceprint/VoiceprintHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/voiceprint/VoiceprintHandler;->stopRecording()V

    .line 791
    iget-object v0, p0, Lcom/yi/internal/widget/VoiceprintUnlockView$RecorderListener;->this$0:Lcom/yi/internal/widget/VoiceprintUnlockView;

    invoke-static {}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$2600()Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;

    move-result-object v1

    #calls: Lcom/yi/internal/widget/VoiceprintUnlockView;->setNextStatus(Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;)V
    invoke-static {v0, v1}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$2700(Lcom/yi/internal/widget/VoiceprintUnlockView;Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;)V

    .line 793
    :cond_0
    return-void
.end method

.method public onPartialData([SII)V
    .locals 2
    .parameter "data"
    .parameter "length"
    .parameter "lastFrame"

    .prologue
    .line 777
    invoke-static {}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$1000()Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 778
    invoke-static {}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$1000()Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 779
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 780
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 781
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 782
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 783
    invoke-static {}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$1000()Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 785
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public onVoiceEnd()V
    .locals 2

    .prologue
    .line 801
    invoke-static {}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$300()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$400()Lcom/baidu/voiceprint/VoiceprintHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 802
    invoke-static {}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$300()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/yi/internal/widget/VoiceprintUnlockView$RecorderListener;->this$0:Lcom/yi/internal/widget/VoiceprintUnlockView;

    #getter for: Lcom/yi/internal/widget/VoiceprintUnlockView;->mUpdateRecordingViewTask:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$600(Lcom/yi/internal/widget/VoiceprintUnlockView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 803
    invoke-static {}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$1000()Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceHandler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceHandler;->sendEmptyMessage(I)Z

    .line 805
    :cond_0
    return-void
.end method

.method public onVoiceStart()V
    .locals 0

    .prologue
    .line 797
    return-void
.end method
