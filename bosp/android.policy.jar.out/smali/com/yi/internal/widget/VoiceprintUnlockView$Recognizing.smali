.class Lcom/yi/internal/widget/VoiceprintUnlockView$Recognizing;
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
    name = "Recognizing"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yi/internal/widget/VoiceprintUnlockView;


# direct methods
.method constructor <init>(Lcom/yi/internal/widget/VoiceprintUnlockView;)V
    .locals 0
    .parameter

    .prologue
    .line 627
    iput-object p1, p0, Lcom/yi/internal/widget/VoiceprintUnlockView$Recognizing;->this$0:Lcom/yi/internal/widget/VoiceprintUnlockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 628
    return-void
.end method


# virtual methods
.method public process()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 631
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

    .line 633
    iget-object v1, p0, Lcom/yi/internal/widget/VoiceprintUnlockView$Recognizing;->this$0:Lcom/yi/internal/widget/VoiceprintUnlockView;

    #getter for: Lcom/yi/internal/widget/VoiceprintUnlockView;->mWidgetCallbacks:Lcom/yi/internal/widget/LockScreenVoicePrintCallback;
    invoke-static {v1}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$700(Lcom/yi/internal/widget/VoiceprintUnlockView;)Lcom/yi/internal/widget/LockScreenVoicePrintCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/yi/internal/widget/LockScreenVoicePrintCallback;->pokeWakelock()V

    .line 636
    iget-object v1, p0, Lcom/yi/internal/widget/VoiceprintUnlockView$Recognizing;->this$0:Lcom/yi/internal/widget/VoiceprintUnlockView;

    const v2, 0x5070018

    #calls: Lcom/yi/internal/widget/VoiceprintUnlockView;->updateTipWords(I)V
    invoke-static {v1, v2}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$1300(Lcom/yi/internal/widget/VoiceprintUnlockView;I)V

    .line 637
    iget-object v1, p0, Lcom/yi/internal/widget/VoiceprintUnlockView$Recognizing;->this$0:Lcom/yi/internal/widget/VoiceprintUnlockView;

    iget-object v1, v1, Lcom/yi/internal/widget/VoiceprintUnlockView;->mContext:Landroid/content/Context;

    const v2, 0x50a000c

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 638
    .local v0, animation:Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/yi/internal/widget/VoiceprintUnlockView$Recognizing;->this$0:Lcom/yi/internal/widget/VoiceprintUnlockView;

    #getter for: Lcom/yi/internal/widget/VoiceprintUnlockView;->mTipImage:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$500(Lcom/yi/internal/widget/VoiceprintUnlockView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 639
    iget-object v1, p0, Lcom/yi/internal/widget/VoiceprintUnlockView$Recognizing;->this$0:Lcom/yi/internal/widget/VoiceprintUnlockView;

    #getter for: Lcom/yi/internal/widget/VoiceprintUnlockView;->mTipImage:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$500(Lcom/yi/internal/widget/VoiceprintUnlockView;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x5080125

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 640
    iget-object v1, p0, Lcom/yi/internal/widget/VoiceprintUnlockView$Recognizing;->this$0:Lcom/yi/internal/widget/VoiceprintUnlockView;

    #getter for: Lcom/yi/internal/widget/VoiceprintUnlockView;->mTipImage:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$500(Lcom/yi/internal/widget/VoiceprintUnlockView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 641
    iget-object v1, p0, Lcom/yi/internal/widget/VoiceprintUnlockView$Recognizing;->this$0:Lcom/yi/internal/widget/VoiceprintUnlockView;

    #getter for: Lcom/yi/internal/widget/VoiceprintUnlockView;->mTipImage:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$500(Lcom/yi/internal/widget/VoiceprintUnlockView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 642
    iget-object v1, p0, Lcom/yi/internal/widget/VoiceprintUnlockView$Recognizing;->this$0:Lcom/yi/internal/widget/VoiceprintUnlockView;

    #getter for: Lcom/yi/internal/widget/VoiceprintUnlockView;->mMicImage:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$1400(Lcom/yi/internal/widget/VoiceprintUnlockView;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x5080133

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 643
    iget-object v1, p0, Lcom/yi/internal/widget/VoiceprintUnlockView$Recognizing;->this$0:Lcom/yi/internal/widget/VoiceprintUnlockView;

    #getter for: Lcom/yi/internal/widget/VoiceprintUnlockView;->mMicImage:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$1400(Lcom/yi/internal/widget/VoiceprintUnlockView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 644
    iget-object v1, p0, Lcom/yi/internal/widget/VoiceprintUnlockView$Recognizing;->this$0:Lcom/yi/internal/widget/VoiceprintUnlockView;

    #getter for: Lcom/yi/internal/widget/VoiceprintUnlockView;->mRecoResultImage:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$800(Lcom/yi/internal/widget/VoiceprintUnlockView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 646
    invoke-static {}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$1000()Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceHandler;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceHandler;->sendEmptyMessage(I)Z

    .line 649
    const-string v1, "VoiceprintUnlock"

    const-string v2, "Recognizing processing done."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 654
    const-string v0, "[Recognizing Status]"

    return-object v0
.end method
