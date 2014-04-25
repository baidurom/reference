.class Lcom/yi/internal/widget/VoiceprintUnlockView$Recording;
.super Ljava/lang/Object;
.source "VoiceprintUnlockView.java"

# interfaces
.implements Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yi/internal/widget/VoiceprintUnlockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Recording"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yi/internal/widget/VoiceprintUnlockView;


# direct methods
.method constructor <init>(Lcom/yi/internal/widget/VoiceprintUnlockView;)V
    .locals 0
    .parameter

    .prologue
    .line 585
    iput-object p1, p0, Lcom/yi/internal/widget/VoiceprintUnlockView$Recording;->this$0:Lcom/yi/internal/widget/VoiceprintUnlockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 586
    return-void
.end method


# virtual methods
.method public process()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    .line 589
    const-string v1, "VoiceprintUnlock"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Enter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    iget-object v1, p0, Lcom/yi/internal/widget/VoiceprintUnlockView$Recording;->this$0:Lcom/yi/internal/widget/VoiceprintUnlockView;

    #calls: Lcom/yi/internal/widget/VoiceprintUnlockView;->pauseAudioPlayback()V
    invoke-static {v1}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$1500(Lcom/yi/internal/widget/VoiceprintUnlockView;)V

    .line 591
    invoke-static {}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$1000()Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceHandler;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceHandler;->sendEmptyMessage(I)Z

    .line 593
    invoke-static {}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$1600()Lcom/yi/internal/widget/VoiceprintUnlockView$Tone;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 594
    invoke-static {}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$1600()Lcom/yi/internal/widget/VoiceprintUnlockView$Tone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yi/internal/widget/VoiceprintUnlockView$Tone;->start()V

    .line 596
    :cond_0
    const-wide/16 v1, 0xc8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 602
    :goto_0
    invoke-static {}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$400()Lcom/baidu/voiceprint/VoiceprintHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/voiceprint/VoiceprintHandler;->startRecording()V

    .line 605
    iget-object v1, p0, Lcom/yi/internal/widget/VoiceprintUnlockView$Recording;->this$0:Lcom/yi/internal/widget/VoiceprintUnlockView;

    const v2, 0x5070017

    #calls: Lcom/yi/internal/widget/VoiceprintUnlockView;->updateTipWords(I)V
    invoke-static {v1, v2}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$1300(Lcom/yi/internal/widget/VoiceprintUnlockView;I)V

    .line 606
    iget-object v1, p0, Lcom/yi/internal/widget/VoiceprintUnlockView$Recording;->this$0:Lcom/yi/internal/widget/VoiceprintUnlockView;

    #getter for: Lcom/yi/internal/widget/VoiceprintUnlockView;->mTipImage:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$500(Lcom/yi/internal/widget/VoiceprintUnlockView;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x5080128

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 607
    iget-object v1, p0, Lcom/yi/internal/widget/VoiceprintUnlockView$Recording;->this$0:Lcom/yi/internal/widget/VoiceprintUnlockView;

    #getter for: Lcom/yi/internal/widget/VoiceprintUnlockView;->mTipImage:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$500(Lcom/yi/internal/widget/VoiceprintUnlockView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 608
    iget-object v1, p0, Lcom/yi/internal/widget/VoiceprintUnlockView$Recording;->this$0:Lcom/yi/internal/widget/VoiceprintUnlockView;

    #getter for: Lcom/yi/internal/widget/VoiceprintUnlockView;->mTipImage:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$500(Lcom/yi/internal/widget/VoiceprintUnlockView;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 609
    iget-object v1, p0, Lcom/yi/internal/widget/VoiceprintUnlockView$Recording;->this$0:Lcom/yi/internal/widget/VoiceprintUnlockView;

    #getter for: Lcom/yi/internal/widget/VoiceprintUnlockView;->mMicImage:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$1400(Lcom/yi/internal/widget/VoiceprintUnlockView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 610
    iget-object v1, p0, Lcom/yi/internal/widget/VoiceprintUnlockView$Recording;->this$0:Lcom/yi/internal/widget/VoiceprintUnlockView;

    #getter for: Lcom/yi/internal/widget/VoiceprintUnlockView;->mRecoResultImage:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$800(Lcom/yi/internal/widget/VoiceprintUnlockView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 612
    invoke-static {}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$300()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/yi/internal/widget/VoiceprintUnlockView$Recording;->this$0:Lcom/yi/internal/widget/VoiceprintUnlockView;

    #getter for: Lcom/yi/internal/widget/VoiceprintUnlockView;->mUpdateRecordingViewTask:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$600(Lcom/yi/internal/widget/VoiceprintUnlockView;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 613
    iget-object v1, p0, Lcom/yi/internal/widget/VoiceprintUnlockView$Recording;->this$0:Lcom/yi/internal/widget/VoiceprintUnlockView;

    #getter for: Lcom/yi/internal/widget/VoiceprintUnlockView;->mWidgetCallbacks:Lcom/yi/internal/widget/LockScreenVoicePrintCallback;
    invoke-static {v1}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$700(Lcom/yi/internal/widget/VoiceprintUnlockView;)Lcom/yi/internal/widget/LockScreenVoicePrintCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/yi/internal/widget/LockScreenVoicePrintCallback;->pokeWakelock()V

    .line 615
    return-void

    .line 597
    :catch_0
    move-exception v0

    .line 598
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "VoiceprintUnlock"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recording start sleep exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 619
    const-string v0, "[Recording Status]"

    return-object v0
.end method
