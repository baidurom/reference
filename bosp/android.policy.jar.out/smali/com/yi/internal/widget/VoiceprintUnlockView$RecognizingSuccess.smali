.class Lcom/yi/internal/widget/VoiceprintUnlockView$RecognizingSuccess;
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
    name = "RecognizingSuccess"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yi/internal/widget/VoiceprintUnlockView;


# direct methods
.method constructor <init>(Lcom/yi/internal/widget/VoiceprintUnlockView;)V
    .locals 0
    .parameter

    .prologue
    .line 703
    iput-object p1, p0, Lcom/yi/internal/widget/VoiceprintUnlockView$RecognizingSuccess;->this$0:Lcom/yi/internal/widget/VoiceprintUnlockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 704
    return-void
.end method


# virtual methods
.method public process()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 707
    const-string v0, "VoiceprintUnlock"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    iget-object v0, p0, Lcom/yi/internal/widget/VoiceprintUnlockView$RecognizingSuccess;->this$0:Lcom/yi/internal/widget/VoiceprintUnlockView;

    const v1, 0x40b001a

    #calls: Lcom/yi/internal/widget/VoiceprintUnlockView;->updateTipWords(I)V
    invoke-static {v0, v1}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$1300(Lcom/yi/internal/widget/VoiceprintUnlockView;I)V

    .line 709
    iget-object v0, p0, Lcom/yi/internal/widget/VoiceprintUnlockView$RecognizingSuccess;->this$0:Lcom/yi/internal/widget/VoiceprintUnlockView;

    #getter for: Lcom/yi/internal/widget/VoiceprintUnlockView;->mTipImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$500(Lcom/yi/internal/widget/VoiceprintUnlockView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 710
    iget-object v0, p0, Lcom/yi/internal/widget/VoiceprintUnlockView$RecognizingSuccess;->this$0:Lcom/yi/internal/widget/VoiceprintUnlockView;

    #getter for: Lcom/yi/internal/widget/VoiceprintUnlockView;->mTipImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$500(Lcom/yi/internal/widget/VoiceprintUnlockView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 711
    iget-object v0, p0, Lcom/yi/internal/widget/VoiceprintUnlockView$RecognizingSuccess;->this$0:Lcom/yi/internal/widget/VoiceprintUnlockView;

    #getter for: Lcom/yi/internal/widget/VoiceprintUnlockView;->mRecoResultImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$800(Lcom/yi/internal/widget/VoiceprintUnlockView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 712
    invoke-static {}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$2300()Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 714
    iget-object v0, p0, Lcom/yi/internal/widget/VoiceprintUnlockView$RecognizingSuccess;->this$0:Lcom/yi/internal/widget/VoiceprintUnlockView;

    #getter for: Lcom/yi/internal/widget/VoiceprintUnlockView;->mMicImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$1400(Lcom/yi/internal/widget/VoiceprintUnlockView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 715
    iget-object v0, p0, Lcom/yi/internal/widget/VoiceprintUnlockView$RecognizingSuccess;->this$0:Lcom/yi/internal/widget/VoiceprintUnlockView;

    invoke-static {}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$2200()Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;

    move-result-object v1

    const/16 v2, 0x3e8

    #calls: Lcom/yi/internal/widget/VoiceprintUnlockView;->delaySetNextStatus(Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;I)V
    invoke-static {v0, v1, v2}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$2100(Lcom/yi/internal/widget/VoiceprintUnlockView;Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;I)V

    .line 716
    iget-object v0, p0, Lcom/yi/internal/widget/VoiceprintUnlockView$RecognizingSuccess;->this$0:Lcom/yi/internal/widget/VoiceprintUnlockView;

    #calls: Lcom/yi/internal/widget/VoiceprintUnlockView;->sendUBCForUnlockSuccess()V
    invoke-static {v0}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$2400(Lcom/yi/internal/widget/VoiceprintUnlockView;)V

    .line 717
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 721
    const-string v0, "[RecognizingSuccess Status]"

    return-object v0
.end method
