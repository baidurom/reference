.class Lcom/android/internal/widget/multiwaveview/HoldView$2;
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
    .line 122
    iput-object p1, p0, Lcom/android/internal/widget/multiwaveview/HoldView$2;->this$0:Lcom/android/internal/widget/multiwaveview/HoldView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .parameter "animator"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/HoldView$2;->this$0:Lcom/android/internal/widget/multiwaveview/HoldView;

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/HoldView;->ping()V

    .line 125
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/HoldView$2;->this$0:Lcom/android/internal/widget/multiwaveview/HoldView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/HoldView$2;->this$0:Lcom/android/internal/widget/multiwaveview/HoldView;

    #getter for: Lcom/android/internal/widget/multiwaveview/HoldView;->mWaveCenterX:F
    invoke-static {v2}, Lcom/android/internal/widget/multiwaveview/HoldView;->access$000(Lcom/android/internal/widget/multiwaveview/HoldView;)F

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/multiwaveview/HoldView$2;->this$0:Lcom/android/internal/widget/multiwaveview/HoldView;

    #getter for: Lcom/android/internal/widget/multiwaveview/HoldView;->mWaveCenterY:F
    invoke-static {v3}, Lcom/android/internal/widget/multiwaveview/HoldView;->access$100(Lcom/android/internal/widget/multiwaveview/HoldView;)F

    move-result v3

    #calls: Lcom/android/internal/widget/multiwaveview/HoldView;->switchToState(IFF)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/widget/multiwaveview/HoldView;->access$200(Lcom/android/internal/widget/multiwaveview/HoldView;IFF)V

    .line 126
    return-void
.end method
