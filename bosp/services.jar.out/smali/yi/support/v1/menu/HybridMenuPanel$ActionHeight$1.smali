.class Lyi/support/v1/menu/HybridMenuPanel$ActionHeight$1;
.super Ljava/lang/Object;
.source "HybridMenuPanel.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;->changeHeightSmoothly(ILjava/lang/Runnable;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;

.field final synthetic val$callback:Ljava/lang/Runnable;

.field final synthetic val$shrinked:Z


# direct methods
.method constructor <init>(Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;ZLjava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 816
    iput-object p1, p0, Lyi/support/v1/menu/HybridMenuPanel$ActionHeight$1;->this$1:Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;

    iput-boolean p2, p0, Lyi/support/v1/menu/HybridMenuPanel$ActionHeight$1;->val$shrinked:Z

    iput-object p3, p0, Lyi/support/v1/menu/HybridMenuPanel$ActionHeight$1;->val$callback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 822
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 825
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel$ActionHeight$1;->this$1:Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;

    const/4 v1, 0x0

    #setter for: Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;->mHeightAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v0, v1}, Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;->access$4702(Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 826
    iget-boolean v0, p0, Lyi/support/v1/menu/HybridMenuPanel$ActionHeight$1;->val$shrinked:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel$ActionHeight$1;->this$1:Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;

    iget-object v0, v0, Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;->this$0:Lyi/support/v1/menu/HybridMenuPanel;

    #getter for: Lyi/support/v1/menu/HybridMenuPanel;->mPanelPlaceHolder:Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder;
    invoke-static {v0}, Lyi/support/v1/menu/HybridMenuPanel;->access$3200(Lyi/support/v1/menu/HybridMenuPanel;)Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder;

    move-result-object v0

    iget-object v1, p0, Lyi/support/v1/menu/HybridMenuPanel$ActionHeight$1;->this$1:Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;

    #calls: Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;->getHeight()I
    invoke-static {v1}, Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;->access$2600(Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;)I

    move-result v1

    invoke-virtual {v0, v1}, Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder;->setHeight(I)V

    .line 827
    :cond_0
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel$ActionHeight$1;->val$callback:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel$ActionHeight$1;->val$callback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 828
    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 820
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 818
    return-void
.end method
