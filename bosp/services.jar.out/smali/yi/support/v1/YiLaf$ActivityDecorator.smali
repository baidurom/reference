.class Lyi/support/v1/YiLaf$ActivityDecorator;
.super Ljava/lang/Object;
.source "YiLaf.java"

# interfaces
.implements Lyi/support/v1/YiLaf$Interface;
.implements Landroid/view/Window$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyi/support/v1/YiLaf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActivityDecorator"
.end annotation


# instance fields
.field private final mActionBarCustomViewContainer:Lyi/support/v1/ActionBarCustomViewContainer;

.field private final mActionBarTitleViewContainer:Lyi/support/v1/ActionBarTitleViewContainer;

.field private mActionBarWrapper:Lyi/support/v1/YiLaf$ActionBarWrapper;

.field private final mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final mContentDemensionSwitcher:Lyi/support/v1/ContentDemensionSwitcher;

.field private final mHybridMenu:Lyi/support/v1/menu/HybridMenu;

.field private mInvalidateOptionsMenu:Z

.field private mScrollTabBar:Lyi/widget/ScrollTabBar$Interface;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    new-instance v0, Lyi/support/v1/ContentDemensionSwitcher;

    invoke-direct {v0}, Lyi/support/v1/ContentDemensionSwitcher;-><init>()V

    iput-object v0, p0, Lyi/support/v1/YiLaf$ActivityDecorator;->mContentDemensionSwitcher:Lyi/support/v1/ContentDemensionSwitcher;

    .line 202
    new-instance v0, Lyi/support/v1/ActionBarCustomViewContainer;

    invoke-direct {v0}, Lyi/support/v1/ActionBarCustomViewContainer;-><init>()V

    iput-object v0, p0, Lyi/support/v1/YiLaf$ActivityDecorator;->mActionBarCustomViewContainer:Lyi/support/v1/ActionBarCustomViewContainer;

    .line 280
    new-instance v0, Lyi/support/v1/YiLaf$ActivityDecorator$1;

    invoke-direct {v0, p0}, Lyi/support/v1/YiLaf$ActivityDecorator$1;-><init>(Lyi/support/v1/YiLaf$ActivityDecorator;)V

    iput-object v0, p0, Lyi/support/v1/YiLaf$ActivityDecorator;->mActionBarWrapper:Lyi/support/v1/YiLaf$ActionBarWrapper;

    .line 208
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lyi/support/v1/YiLaf$ActivityDecorator;->mActivity:Ljava/lang/ref/WeakReference;

    .line 209
    new-instance v0, Lyi/support/v1/menu/HybridMenu;

    invoke-direct {v0, p1}, Lyi/support/v1/menu/HybridMenu;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lyi/support/v1/YiLaf$ActivityDecorator;->mHybridMenu:Lyi/support/v1/menu/HybridMenu;

    .line 210
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 211
    new-instance v0, Lyi/support/v1/ActionBarTitleViewContainer;

    invoke-direct {v0, p1}, Lyi/support/v1/ActionBarTitleViewContainer;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lyi/support/v1/YiLaf$ActivityDecorator;->mActionBarTitleViewContainer:Lyi/support/v1/ActionBarTitleViewContainer;

    .line 212
    return-void
.end method

.method static synthetic access$600(Lyi/support/v1/YiLaf$ActivityDecorator;)Lyi/widget/ScrollTabBar$Interface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 195
    iget-object v0, p0, Lyi/support/v1/YiLaf$ActivityDecorator;->mScrollTabBar:Lyi/widget/ScrollTabBar$Interface;

    return-object v0
.end method

.method static synthetic access$700(Lyi/support/v1/YiLaf$ActivityDecorator;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 195
    invoke-direct {p0}, Lyi/support/v1/YiLaf$ActivityDecorator;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lyi/support/v1/YiLaf$ActivityDecorator;)Lyi/support/v1/ActionBarCustomViewContainer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 195
    iget-object v0, p0, Lyi/support/v1/YiLaf$ActivityDecorator;->mActionBarCustomViewContainer:Lyi/support/v1/ActionBarCustomViewContainer;

    return-object v0
.end method

.method static synthetic access$900(Lyi/support/v1/YiLaf$ActivityDecorator;)Lyi/support/v1/ActionBarTitleViewContainer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 195
    iget-object v0, p0, Lyi/support/v1/YiLaf$ActivityDecorator;->mActionBarTitleViewContainer:Lyi/support/v1/ActionBarTitleViewContainer;

    return-object v0
.end method

.method private getActivity()Landroid/app/Activity;
    .locals 3

    .prologue
    .line 215
    iget-object v1, p0, Lyi/support/v1/YiLaf$ActivityDecorator;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 216
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 217
    invoke-static {}, Lyi/support/v1/YiLaf;->access$500()Ljava/lang/String;

    move-result-object v1

    const-string v2, "activity is null!"

    invoke-static {v1, v2}, Lyi/support/v1/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-static {}, Lyi/support/v1/YiLaf;->access$500()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lyi/support/v1/utils/Logger;->printStackTrace(Ljava/lang/String;)V

    .line 220
    :cond_0
    return-object v0
.end method


# virtual methods
.method public closeOptionsMenu()V
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lyi/support/v1/YiLaf$ActivityDecorator;->mHybridMenu:Lyi/support/v1/menu/HybridMenu;

    invoke-virtual {v0}, Lyi/support/v1/menu/HybridMenu;->closeOptionsMenu()V

    .line 277
    return-void
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 404
    invoke-direct {p0}, Lyi/support/v1/YiLaf$ActivityDecorator;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 379
    iget-object v0, p0, Lyi/support/v1/YiLaf$ActivityDecorator;->mActionBarCustomViewContainer:Lyi/support/v1/ActionBarCustomViewContainer;

    invoke-virtual {v0, p1}, Lyi/support/v1/ActionBarCustomViewContainer;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lyi/support/v1/YiLaf$ActivityDecorator;->mHybridMenu:Lyi/support/v1/menu/HybridMenu;

    invoke-virtual {v0, p1}, Lyi/support/v1/menu/HybridMenu;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 381
    :cond_0
    const/4 v0, 0x1

    .line 383
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lyi/support/v1/YiLaf$ActivityDecorator;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 389
    invoke-direct {p0}, Lyi/support/v1/YiLaf$ActivityDecorator;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 409
    invoke-direct {p0}, Lyi/support/v1/YiLaf$ActivityDecorator;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 394
    invoke-direct {p0}, Lyi/support/v1/YiLaf$ActivityDecorator;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 399
    invoke-direct {p0}, Lyi/support/v1/YiLaf$ActivityDecorator;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public enableActionBarStyle()V
    .locals 0

    .prologue
    .line 236
    invoke-virtual {p0}, Lyi/support/v1/YiLaf$ActivityDecorator;->getActionBar()Lyi/support/v1/YiLaf$ActionBarWrapper;

    .line 237
    return-void
.end method

.method public getActionBar()Lyi/support/v1/YiLaf$ActionBarWrapper;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lyi/support/v1/YiLaf$ActivityDecorator;->mScrollTabBar:Lyi/widget/ScrollTabBar$Interface;

    if-nez v0, :cond_0

    .line 242
    invoke-direct {p0}, Lyi/support/v1/YiLaf$ActivityDecorator;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lyi/widget/ScrollTabBar;->create(Landroid/app/Activity;)Lyi/widget/ScrollTabBar$Interface;

    move-result-object v0

    iput-object v0, p0, Lyi/support/v1/YiLaf$ActivityDecorator;->mScrollTabBar:Lyi/widget/ScrollTabBar$Interface;

    .line 245
    :cond_0
    iget-object v0, p0, Lyi/support/v1/YiLaf$ActivityDecorator;->mActionBarWrapper:Lyi/support/v1/YiLaf$ActionBarWrapper;

    return-object v0
.end method

.method public getMenu()Lyi/support/v1/YiLaf$MenuWrapper;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lyi/support/v1/YiLaf$ActivityDecorator;->mHybridMenu:Lyi/support/v1/menu/HybridMenu;

    return-object v0
.end method

.method public invalidateOptionsMenu()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 255
    iput-boolean v6, p0, Lyi/support/v1/YiLaf$ActivityDecorator;->mInvalidateOptionsMenu:Z

    .line 256
    invoke-direct {p0}, Lyi/support/v1/YiLaf$ActivityDecorator;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 258
    iget-boolean v1, p0, Lyi/support/v1/YiLaf$ActivityDecorator;->mInvalidateOptionsMenu:Z

    if-eqz v1, :cond_0

    .line 259
    iput-boolean v5, p0, Lyi/support/v1/YiLaf$ActivityDecorator;->mInvalidateOptionsMenu:Z

    .line 261
    invoke-direct {p0}, Lyi/support/v1/YiLaf$ActivityDecorator;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const-string v2, "getPanelState"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lyi/support/v1/utils/Reflection;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 262
    .local v0, st:Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 263
    const-string v1, "isPrepared"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lyi/support/v1/utils/Reflection;->setFieldValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 264
    invoke-direct {p0}, Lyi/support/v1/YiLaf$ActivityDecorator;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const-string v2, "preparePanel"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v0, v3, v5

    const/4 v4, 0x0

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lyi/support/v1/utils/Reflection;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    .end local v0           #st:Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method public isContentViewExclusive()Z
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lyi/support/v1/YiLaf$ActivityDecorator;->mContentDemensionSwitcher:Lyi/support/v1/ContentDemensionSwitcher;

    invoke-virtual {v0}, Lyi/support/v1/ContentDemensionSwitcher;->getDemension()Lyi/support/v1/ContentDemensionSwitcher$Demension;

    move-result-object v0

    sget-object v1, Lyi/support/v1/ContentDemensionSwitcher$Demension;->EXCLUSIVE:Lyi/support/v1/ContentDemensionSwitcher$Demension;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 492
    invoke-direct {p0}, Lyi/support/v1/YiLaf$ActivityDecorator;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onActionModeFinished(Landroid/view/ActionMode;)V

    .line 493
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 487
    invoke-direct {p0}, Lyi/support/v1/YiLaf$ActivityDecorator;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onActionModeStarted(Landroid/view/ActionMode;)V

    .line 488
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 462
    invoke-direct {p0}, Lyi/support/v1/YiLaf$ActivityDecorator;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onAttachedToWindow()V

    .line 463
    return-void
.end method

.method public onContentChanged()V
    .locals 1

    .prologue
    .line 449
    invoke-direct {p0}, Lyi/support/v1/YiLaf$ActivityDecorator;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onContentChanged()V

    .line 450
    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1
    .parameter "featureId"
    .parameter "menu"

    .prologue
    .line 424
    invoke-direct {p0}, Lyi/support/v1/YiLaf$ActivityDecorator;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 2
    .parameter "featureId"

    .prologue
    .line 414
    const/4 v1, 0x0

    iput-boolean v1, p0, Lyi/support/v1/YiLaf$ActivityDecorator;->mInvalidateOptionsMenu:Z

    .line 415
    invoke-direct {p0}, Lyi/support/v1/YiLaf$ActivityDecorator;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/Activity;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v0

    .line 416
    .local v0, panelView:Landroid/view/View;
    if-nez v0, :cond_0

    .line 417
    iget-object v1, p0, Lyi/support/v1/YiLaf$ActivityDecorator;->mHybridMenu:Lyi/support/v1/menu/HybridMenu;

    invoke-virtual {v1, p1}, Lyi/support/v1/menu/HybridMenu;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v0

    .line 419
    :cond_0
    return-object v0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 467
    invoke-direct {p0}, Lyi/support/v1/YiLaf$ActivityDecorator;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onDetachedFromWindow()V

    .line 468
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .parameter "featureId"
    .parameter "item"

    .prologue
    .line 439
    invoke-direct {p0}, Lyi/support/v1/YiLaf$ActivityDecorator;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1
    .parameter "featureId"
    .parameter "menu"

    .prologue
    .line 434
    invoke-direct {p0}, Lyi/support/v1/YiLaf$ActivityDecorator;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1
    .parameter "featureId"
    .parameter "menu"

    .prologue
    .line 472
    invoke-direct {p0}, Lyi/support/v1/YiLaf$ActivityDecorator;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    .line 473
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1
    .parameter "featureId"
    .parameter "view"
    .parameter "menu"

    .prologue
    .line 429
    invoke-direct {p0}, Lyi/support/v1/YiLaf$ActivityDecorator;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 477
    invoke-direct {p0}, Lyi/support/v1/YiLaf$ActivityDecorator;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onSearchRequested()Z

    move-result v0

    return v0
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1
    .parameter "attrs"

    .prologue
    .line 444
    invoke-direct {p0}, Lyi/support/v1/YiLaf$ActivityDecorator;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 445
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasFocus"

    .prologue
    .line 454
    if-nez p1, :cond_0

    .line 455
    iget-object v0, p0, Lyi/support/v1/YiLaf$ActivityDecorator;->mHybridMenu:Lyi/support/v1/menu/HybridMenu;

    invoke-virtual {v0}, Lyi/support/v1/menu/HybridMenu;->closeOptionsMenu()V

    .line 457
    :cond_0
    invoke-direct {p0}, Lyi/support/v1/YiLaf$ActivityDecorator;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 458
    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .parameter "callback"

    .prologue
    .line 482
    invoke-direct {p0}, Lyi/support/v1/YiLaf$ActivityDecorator;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public openOptionsMenu()V
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lyi/support/v1/YiLaf$ActivityDecorator;->mHybridMenu:Lyi/support/v1/menu/HybridMenu;

    invoke-virtual {v0}, Lyi/support/v1/menu/HybridMenu;->openOptionsMenu()V

    .line 272
    return-void
.end method

.method public setContentViewExclusive(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 225
    iget-object v1, p0, Lyi/support/v1/YiLaf$ActivityDecorator;->mContentDemensionSwitcher:Lyi/support/v1/ContentDemensionSwitcher;

    invoke-direct {p0}, Lyi/support/v1/YiLaf$ActivityDecorator;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz p1, :cond_0

    sget-object v0, Lyi/support/v1/ContentDemensionSwitcher$Demension;->EXCLUSIVE:Lyi/support/v1/ContentDemensionSwitcher$Demension;

    :goto_0
    invoke-virtual {v1, v2, v0}, Lyi/support/v1/ContentDemensionSwitcher;->setDemension(Landroid/app/Activity;Lyi/support/v1/ContentDemensionSwitcher$Demension;)V

    .line 227
    return-void

    .line 225
    :cond_0
    sget-object v0, Lyi/support/v1/ContentDemensionSwitcher$Demension;->STANDARD:Lyi/support/v1/ContentDemensionSwitcher$Demension;

    goto :goto_0
.end method
