.class Lcom/yi/internal/widget/VoiceprintUnlockView$3;
.super Ljava/lang/Object;
.source "VoiceprintUnlockView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yi/internal/widget/VoiceprintUnlockView;->initAnimator()V
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
    .line 213
    iput-object p1, p0, Lcom/yi/internal/widget/VoiceprintUnlockView$3;->this$0:Lcom/yi/internal/widget/VoiceprintUnlockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 236
    iget-object v0, p0, Lcom/yi/internal/widget/VoiceprintUnlockView$3;->this$0:Lcom/yi/internal/widget/VoiceprintUnlockView;

    #getter for: Lcom/yi/internal/widget/VoiceprintUnlockView;->mRecoResultImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$800(Lcom/yi/internal/widget/VoiceprintUnlockView;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 237
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/yi/internal/widget/VoiceprintUnlockView$3;->this$0:Lcom/yi/internal/widget/VoiceprintUnlockView;

    #getter for: Lcom/yi/internal/widget/VoiceprintUnlockView;->mRecoResultImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$800(Lcom/yi/internal/widget/VoiceprintUnlockView;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 231
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 225
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 219
    return-void
.end method
