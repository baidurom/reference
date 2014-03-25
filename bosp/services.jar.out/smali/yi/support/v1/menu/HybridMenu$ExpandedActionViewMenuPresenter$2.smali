.class Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter$2;
.super Ljava/lang/Object;
.source "HybridMenu.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;->collapseItemActionView(Lcom/yi/internal/view/menu/MenuBuilder;Lcom/yi/internal/view/menu/MenuItemImpl;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;


# direct methods
.method constructor <init>(Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;)V
    .locals 0
    .parameter

    .prologue
    .line 571
    iput-object p1, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter$2;->this$1:Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 6
    .parameter "animation"

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 582
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter$2;->this$1:Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;

    iget-object v0, v0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;->mExpandedActionView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/CollapsibleActionView;

    if-eqz v0, :cond_0

    .line 583
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter$2;->this$1:Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;

    iget-object v0, v0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;->mExpandedActionView:Landroid/view/View;

    check-cast v0, Landroid/view/CollapsibleActionView;

    invoke-interface {v0}, Landroid/view/CollapsibleActionView;->onActionViewCollapsed()V

    .line 585
    :cond_0
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter$2;->this$1:Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;

    iget-object v2, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter$2;->this$1:Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;

    iget-object v2, v2, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v0, v2}, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;->removeView(Landroid/view/View;)V

    .line 586
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter$2;->this$1:Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;

    iget-object v2, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter$2;->this$1:Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;

    iget-object v2, v2, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;->mExpandedHomeLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;->removeView(Landroid/view/View;)V

    .line 587
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter$2;->this$1:Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;

    iput-object v1, v0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;->mExpandedActionView:Landroid/view/View;

    .line 588
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter$2;->this$1:Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;

    iget v0, v0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 589
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter$2;->this$1:Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;

    iget-object v0, v0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;->mHomeLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 591
    :cond_1
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter$2;->this$1:Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;

    iget v0, v0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2

    .line 592
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter$2;->this$1:Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;

    iget-object v0, v0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;->mTitleLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_6

    .line 593
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter$2;->this$1:Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;

    invoke-virtual {v0}, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;->initTitle()V

    .line 598
    :cond_2
    :goto_0
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter$2;->this$1:Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;

    iget-object v0, v0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter$2;->this$1:Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;

    iget v0, v0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;->mNavigationMode:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 599
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter$2;->this$1:Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;

    iget-object v0, v0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0, v5}, Lcom/android/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 601
    :cond_3
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter$2;->this$1:Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;

    iget-object v0, v0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;->mSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter$2;->this$1:Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;

    iget v0, v0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;->mNavigationMode:I

    if-ne v0, v4, :cond_4

    .line 602
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter$2;->this$1:Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;

    iget-object v0, v0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v5}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 604
    :cond_4
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter$2;->this$1:Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;

    iget-object v0, v0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;->mCustomNavView:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter$2;->this$1:Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;

    iget v0, v0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_5

    .line 605
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter$2;->this$1:Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;

    iget-object v0, v0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;->mCustomNavView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 608
    :cond_5
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter$2;->this$1:Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;

    iget-object v2, v0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;->mExpandedHomeLayout:Landroid/widget/FrameLayout;

    const-string v3, "setIcon"

    new-array v4, v4, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, Landroid/graphics/drawable/Drawable;

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lyi/support/v1/utils/Reflection;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter$2;->this$1:Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;

    iput-object v1, v0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/yi/internal/view/menu/MenuItemImpl;

    .line 610
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter$2;->this$1:Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;

    invoke-virtual {v0}, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;->requestLayout()V

    .line 611
    return-void

    .line 595
    :cond_6
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter$2;->this$1:Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;

    iget-object v0, v0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 614
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 575
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter$2;->this$1:Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;

    iget-object v0, v0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;->mExpandedActionView:Landroid/view/View;

    instance-of v0, v0, Lyi/widget/SearchView;

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter$2;->this$1:Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;

    iget-object v0, v0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;->mExpandedActionView:Landroid/view/View;

    check-cast v0, Lyi/widget/SearchView;

    invoke-virtual {v0}, Lyi/widget/SearchView;->clearFocus()V

    .line 578
    :cond_0
    return-void
.end method
