.class Lcom/android/internal/widget/multiwaveview/HoldView$3;
.super Ljava/lang/Object;
.source "HoldView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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
    .line 129
    iput-object p1, p0, Lcom/android/internal/widget/multiwaveview/HoldView$3;->this$0:Lcom/android/internal/widget/multiwaveview/HoldView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/HoldView$3;->this$0:Lcom/android/internal/widget/multiwaveview/HoldView;

    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/HoldView$3;->this$0:Lcom/android/internal/widget/multiwaveview/HoldView;

    #getter for: Lcom/android/internal/widget/multiwaveview/HoldView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    invoke-static {v1}, Lcom/android/internal/widget/multiwaveview/HoldView;->access$300(Lcom/android/internal/widget/multiwaveview/HoldView;)Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/HoldView;->invalidateGlobalRegion(Lcom/android/internal/widget/multiwaveview/TargetDrawable;)V

    .line 132
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/HoldView$3;->this$0:Lcom/android/internal/widget/multiwaveview/HoldView;

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/HoldView;->invalidate()V

    .line 133
    return-void
.end method
