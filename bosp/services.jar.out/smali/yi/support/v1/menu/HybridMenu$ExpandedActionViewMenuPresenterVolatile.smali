.class Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenterVolatile;
.super Ljava/lang/Object;
.source "HybridMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyi/support/v1/menu/HybridMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExpandedActionViewMenuPresenterVolatile"
.end annotation


# static fields
.field private static final ACTION_BAR_MEMBER_NAME:Ljava/lang/String; = "mActionBar"

.field static final GONE:I = 0x8

.field static final VISIBLE:I


# instance fields
.field protected ActionBarView_this:Lcom/android/internal/widget/ActionBarView;

.field protected mCustomNavView:Landroid/view/View;

.field protected mDisplayOptions:I

.field protected mExpandedActionView:Landroid/view/View;

.field protected mExpandedHomeLayout:Landroid/widget/FrameLayout;

.field protected mHomeLayout:Landroid/widget/FrameLayout;

.field protected mIcon:Landroid/graphics/drawable/Drawable;

.field protected mNavigationMode:I

.field protected mSpinner:Landroid/widget/Spinner;

.field protected mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

.field protected mTitleLayout:Landroid/widget/LinearLayout;

.field final synthetic this$0:Lyi/support/v1/menu/HybridMenu;


# direct methods
.method constructor <init>(Lyi/support/v1/menu/HybridMenu;)V
    .locals 4
    .parameter

    .prologue
    .line 402
    iput-object p1, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenterVolatile;->this$0:Lyi/support/v1/menu/HybridMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 395
    const/4 v1, -0x1

    iput v1, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenterVolatile;->mDisplayOptions:I

    .line 403
    #getter for: Lyi/support/v1/menu/HybridMenu;->mMenuPanel:Lyi/support/v1/menu/HybridMenuPanel;
    invoke-static {p1}, Lyi/support/v1/menu/HybridMenu;->access$500(Lyi/support/v1/menu/HybridMenu;)Lyi/support/v1/menu/HybridMenuPanel;

    move-result-object v1

    invoke-virtual {v1}, Lyi/support/v1/menu/HybridMenuPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 404
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const-string v2, "mActionBar"

    const-class v3, Lcom/android/internal/widget/ActionBarView;

    invoke-static {v1, v2, v3}, Lyi/support/v1/utils/Reflection;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/ActionBarView;

    iput-object v1, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenterVolatile;->ActionBarView_this:Lcom/android/internal/widget/ActionBarView;

    .line 405
    return-void
.end method


# virtual methods
.method protected addView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 421
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenterVolatile;->ActionBarView_this:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 422
    return-void
.end method

.method protected getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenterVolatile;->ActionBarView_this:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method protected initTitle()V
    .locals 3

    .prologue
    .line 437
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenterVolatile;->ActionBarView_this:Lcom/android/internal/widget/ActionBarView;

    const-string v1, "initTitle"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lyi/support/v1/utils/Reflection;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    return-void
.end method

.method protected reloadVolatile()V
    .locals 3

    .prologue
    .line 408
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenterVolatile;->ActionBarView_this:Lcom/android/internal/widget/ActionBarView;

    const-string v1, "mHomeLayout"

    const-class v2, Landroid/widget/FrameLayout;

    invoke-static {v0, v1, v2}, Lyi/support/v1/utils/Reflection;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenterVolatile;->mHomeLayout:Landroid/widget/FrameLayout;

    .line 409
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenterVolatile;->ActionBarView_this:Lcom/android/internal/widget/ActionBarView;

    const-string v1, "mExpandedActionView"

    const-class v2, Landroid/view/View;

    invoke-static {v0, v1, v2}, Lyi/support/v1/utils/Reflection;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenterVolatile;->mExpandedActionView:Landroid/view/View;

    .line 410
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenterVolatile;->ActionBarView_this:Lcom/android/internal/widget/ActionBarView;

    const-string v1, "mExpandedHomeLayout"

    const-class v2, Landroid/widget/FrameLayout;

    invoke-static {v0, v1, v2}, Lyi/support/v1/utils/Reflection;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenterVolatile;->mExpandedHomeLayout:Landroid/widget/FrameLayout;

    .line 411
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenterVolatile;->ActionBarView_this:Lcom/android/internal/widget/ActionBarView;

    const-string v1, "mIcon"

    const-class v2, Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2}, Lyi/support/v1/utils/Reflection;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenterVolatile;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 412
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenterVolatile;->ActionBarView_this:Lcom/android/internal/widget/ActionBarView;

    const-string v1, "mTitleLayout"

    const-class v2, Landroid/widget/LinearLayout;

    invoke-static {v0, v1, v2}, Lyi/support/v1/utils/Reflection;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenterVolatile;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 413
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenterVolatile;->ActionBarView_this:Lcom/android/internal/widget/ActionBarView;

    const-string v1, "mCustomNavView"

    const-class v2, Landroid/view/View;

    invoke-static {v0, v1, v2}, Lyi/support/v1/utils/Reflection;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenterVolatile;->mCustomNavView:Landroid/view/View;

    .line 414
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenterVolatile;->ActionBarView_this:Lcom/android/internal/widget/ActionBarView;

    const-string v1, "mTabScrollView"

    const-class v2, Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-static {v0, v1, v2}, Lyi/support/v1/utils/Reflection;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ScrollingTabContainerView;

    iput-object v0, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenterVolatile;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    .line 415
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenterVolatile;->ActionBarView_this:Lcom/android/internal/widget/ActionBarView;

    const-string v1, "mSpinner"

    const-class v2, Landroid/widget/Spinner;

    invoke-static {v0, v1, v2}, Lyi/support/v1/utils/Reflection;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenterVolatile;->mSpinner:Landroid/widget/Spinner;

    .line 416
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenterVolatile;->ActionBarView_this:Lcom/android/internal/widget/ActionBarView;

    const-string v1, "mNavigationMode"

    const-class v2, Ljava/lang/Integer;

    invoke-static {v0, v1, v2}, Lyi/support/v1/utils/Reflection;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenterVolatile;->mNavigationMode:I

    .line 417
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenterVolatile;->ActionBarView_this:Lcom/android/internal/widget/ActionBarView;

    const-string v1, "mDisplayOptions"

    const-class v2, Ljava/lang/Integer;

    invoke-static {v0, v1, v2}, Lyi/support/v1/utils/Reflection;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenterVolatile;->mDisplayOptions:I

    .line 418
    return-void
.end method

.method protected removeView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 425
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenterVolatile;->ActionBarView_this:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    .line 426
    return-void
.end method

.method protected requestLayout()V
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenterVolatile;->ActionBarView_this:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->requestLayout()V

    .line 430
    return-void
.end method
