.class Lcom/yi/internal/widget/VoiceprintUnlockView$Start;
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
    name = "Start"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yi/internal/widget/VoiceprintUnlockView;


# direct methods
.method constructor <init>(Lcom/yi/internal/widget/VoiceprintUnlockView;)V
    .locals 0
    .parameter

    .prologue
    .line 561
    iput-object p1, p0, Lcom/yi/internal/widget/VoiceprintUnlockView$Start;->this$0:Lcom/yi/internal/widget/VoiceprintUnlockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 562
    return-void
.end method


# virtual methods
.method public process()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 565
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

    .line 567
    iget-object v0, p0, Lcom/yi/internal/widget/VoiceprintUnlockView$Start;->this$0:Lcom/yi/internal/widget/VoiceprintUnlockView;

    const v1, 0x5070016

    #calls: Lcom/yi/internal/widget/VoiceprintUnlockView;->updateTipWords(I)V
    invoke-static {v0, v1}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$1300(Lcom/yi/internal/widget/VoiceprintUnlockView;I)V

    .line 568
    iget-object v0, p0, Lcom/yi/internal/widget/VoiceprintUnlockView$Start;->this$0:Lcom/yi/internal/widget/VoiceprintUnlockView;

    #getter for: Lcom/yi/internal/widget/VoiceprintUnlockView;->mTipImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$500(Lcom/yi/internal/widget/VoiceprintUnlockView;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x5080130

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 569
    iget-object v0, p0, Lcom/yi/internal/widget/VoiceprintUnlockView$Start;->this$0:Lcom/yi/internal/widget/VoiceprintUnlockView;

    #getter for: Lcom/yi/internal/widget/VoiceprintUnlockView;->mTipImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$500(Lcom/yi/internal/widget/VoiceprintUnlockView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 570
    iget-object v0, p0, Lcom/yi/internal/widget/VoiceprintUnlockView$Start;->this$0:Lcom/yi/internal/widget/VoiceprintUnlockView;

    #getter for: Lcom/yi/internal/widget/VoiceprintUnlockView;->mTipImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$500(Lcom/yi/internal/widget/VoiceprintUnlockView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 571
    iget-object v0, p0, Lcom/yi/internal/widget/VoiceprintUnlockView$Start;->this$0:Lcom/yi/internal/widget/VoiceprintUnlockView;

    #getter for: Lcom/yi/internal/widget/VoiceprintUnlockView;->mMicImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$1400(Lcom/yi/internal/widget/VoiceprintUnlockView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 572
    iget-object v0, p0, Lcom/yi/internal/widget/VoiceprintUnlockView$Start;->this$0:Lcom/yi/internal/widget/VoiceprintUnlockView;

    #getter for: Lcom/yi/internal/widget/VoiceprintUnlockView;->mRecoResultImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$800(Lcom/yi/internal/widget/VoiceprintUnlockView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 573
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 577
    const-string v0, "[Start Status]"

    return-object v0
.end method
