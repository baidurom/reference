.class public Lyi/support/v1/ActionBarCustomViewContainer;
.super Ljava/lang/Object;
.source "ActionBarCustomViewContainer.java"


# instance fields
.field private mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mShown:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lyi/support/v1/ActionBarCustomViewContainer;->mActivity:Ljava/lang/ref/WeakReference;

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lyi/support/v1/ActionBarCustomViewContainer;->mShown:Z

    return-void
.end method

.method private static getActionBar(Landroid/app/Activity;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "activity"

    .prologue
    .line 74
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lyi/support/v1/ActionBarCustomViewContainer;->getActionBar(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method private static getActionBar(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 5
    .parameter "view"

    .prologue
    .line 78
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "action_bar_container"

    const-string v3, "id"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 79
    .local v0, resId:I
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    return-object v1
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 87
    invoke-virtual {p0}, Lyi/support/v1/ActionBarCustomViewContainer;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 94
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 90
    :pswitch_0
    invoke-virtual {p0}, Lyi/support/v1/ActionBarCustomViewContainer;->hide()V

    .line 91
    const/4 v0, 0x1

    goto :goto_0

    .line 88
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public hide()V
    .locals 5

    .prologue
    .line 54
    iget-object v3, p0, Lyi/support/v1/ActionBarCustomViewContainer;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 55
    iget-object v3, p0, Lyi/support/v1/ActionBarCustomViewContainer;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-static {v3}, Lyi/support/v1/ActionBarCustomViewContainer;->getActionBar(Landroid/app/Activity;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 56
    .local v0, actionbar:Landroid/view/ViewGroup;
    if-eqz v0, :cond_1

    .line 57
    const v3, 0x5020023

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 58
    .local v1, customView:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 59
    iget-object v3, p0, Lyi/support/v1/ActionBarCustomViewContainer;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    const v4, 0x50a000b

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    .line 60
    .local v2, fadeout:Landroid/view/animation/Animation;
    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 61
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 62
    instance-of v3, v1, Lyi/widget/SearchView;

    if-eqz v3, :cond_0

    .line 63
    check-cast v1, Lyi/widget/SearchView;

    .end local v1           #customView:Landroid/view/View;
    invoke-virtual {v1}, Lyi/widget/SearchView;->isViewFadeOut()V

    .line 67
    .end local v2           #fadeout:Landroid/view/animation/Animation;
    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lyi/support/v1/ActionBarCustomViewContainer;->mShown:Z

    .line 68
    iget-object v3, p0, Lyi/support/v1/ActionBarCustomViewContainer;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-static {v3}, Lyi/support/v1/YiLaf;->get(Landroid/app/Activity;)Lyi/support/v1/YiLaf$Interface;

    move-result-object v3

    invoke-interface {v3}, Lyi/support/v1/YiLaf$Interface;->getMenu()Lyi/support/v1/YiLaf$MenuWrapper;

    move-result-object v3

    check-cast v3, Lyi/support/v1/menu/HybridMenu;

    invoke-virtual {v3}, Lyi/support/v1/menu/HybridMenu;->refreshPanelVisibility()V

    .line 71
    .end local v0           #actionbar:Landroid/view/ViewGroup;
    :cond_1
    return-void
.end method

.method public isShown()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lyi/support/v1/ActionBarCustomViewContainer;->mShown:Z

    return v0
.end method

.method public show(Landroid/app/Activity;Landroid/view/View;)V
    .locals 6
    .parameter "activity"
    .parameter "view"

    .prologue
    const v5, 0x5020023

    const/4 v4, -0x1

    .line 27
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lyi/support/v1/ActionBarCustomViewContainer;->mActivity:Ljava/lang/ref/WeakReference;

    .line 28
    iget-object v2, p0, Lyi/support/v1/ActionBarCustomViewContainer;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 29
    iget-object v2, p0, Lyi/support/v1/ActionBarCustomViewContainer;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-static {v2}, Lyi/support/v1/ActionBarCustomViewContainer;->getActionBar(Landroid/app/Activity;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 30
    .local v0, actionbar:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 33
    .local v1, remove:Landroid/view/View;
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 36
    iget-object v2, p0, Lyi/support/v1/ActionBarCustomViewContainer;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x50800e9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 39
    invoke-virtual {p2, v5}, Landroid/view/View;->setId(I)V

    .line 41
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x10

    invoke-direct {v2, v4, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, p2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    iget-object v2, p0, Lyi/support/v1/ActionBarCustomViewContainer;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    const v3, 0x50a000a

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 47
    const/4 v2, 0x1

    iput-boolean v2, p0, Lyi/support/v1/ActionBarCustomViewContainer;->mShown:Z

    .line 48
    iget-object v2, p0, Lyi/support/v1/ActionBarCustomViewContainer;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-static {v2}, Lyi/support/v1/YiLaf;->get(Landroid/app/Activity;)Lyi/support/v1/YiLaf$Interface;

    move-result-object v2

    invoke-interface {v2}, Lyi/support/v1/YiLaf$Interface;->getMenu()Lyi/support/v1/YiLaf$MenuWrapper;

    move-result-object v2

    check-cast v2, Lyi/support/v1/menu/HybridMenu;

    invoke-virtual {v2}, Lyi/support/v1/menu/HybridMenu;->refreshPanelVisibility()V

    .line 51
    .end local v0           #actionbar:Landroid/view/ViewGroup;
    .end local v1           #remove:Landroid/view/View;
    :cond_0
    return-void
.end method
