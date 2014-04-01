.class Lcom/android/internal/widget/multiwaveview/HoldView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "HoldView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/multiwaveview/HoldView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/multiwaveview/HoldView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/multiwaveview/HoldView;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/internal/widget/multiwaveview/HoldView$4;->this$0:Lcom/android/internal/widget/multiwaveview/HoldView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animator"

    .prologue
    const/4 v2, 0x0

    .line 139
    const-string v0, "HoldView"

    const-string/jumbo v1, "onAnimationEnd"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/HoldView$4;->this$0:Lcom/android/internal/widget/multiwaveview/HoldView;

    #getter for: Lcom/android/internal/widget/multiwaveview/HoldView;->mNewTargetResources:I
    invoke-static {v0}, Lcom/android/internal/widget/multiwaveview/HoldView;->access$400(Lcom/android/internal/widget/multiwaveview/HoldView;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/HoldView$4;->this$0:Lcom/android/internal/widget/multiwaveview/HoldView;

    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/HoldView$4;->this$0:Lcom/android/internal/widget/multiwaveview/HoldView;

    #getter for: Lcom/android/internal/widget/multiwaveview/HoldView;->mNewTargetResources:I
    invoke-static {v1}, Lcom/android/internal/widget/multiwaveview/HoldView;->access$400(Lcom/android/internal/widget/multiwaveview/HoldView;)I

    move-result v1

    #calls: Lcom/android/internal/widget/multiwaveview/HoldView;->internalSetTargetResources(I)V
    invoke-static {v0, v1}, Lcom/android/internal/widget/multiwaveview/HoldView;->access$500(Lcom/android/internal/widget/multiwaveview/HoldView;I)V

    .line 142
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/HoldView$4;->this$0:Lcom/android/internal/widget/multiwaveview/HoldView;

    #setter for: Lcom/android/internal/widget/multiwaveview/HoldView;->mNewTargetResources:I
    invoke-static {v0, v2}, Lcom/android/internal/widget/multiwaveview/HoldView;->access$402(Lcom/android/internal/widget/multiwaveview/HoldView;I)I

    .line 143
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/HoldView$4;->this$0:Lcom/android/internal/widget/multiwaveview/HoldView;

    #calls: Lcom/android/internal/widget/multiwaveview/HoldView;->hideTargets(Z)V
    invoke-static {v0, v2}, Lcom/android/internal/widget/multiwaveview/HoldView;->access$600(Lcom/android/internal/widget/multiwaveview/HoldView;Z)V

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/HoldView$4;->this$0:Lcom/android/internal/widget/multiwaveview/HoldView;

    #setter for: Lcom/android/internal/widget/multiwaveview/HoldView;->mAnimatingTargets:Z
    invoke-static {v0, v2}, Lcom/android/internal/widget/multiwaveview/HoldView;->access$702(Lcom/android/internal/widget/multiwaveview/HoldView;Z)Z

    .line 146
    return-void
.end method
