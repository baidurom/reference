.class public Lyi/support/v1/menu/HybridMenu;
.super Lyi/support/v1/menu/HybridMenuPresenter;
.source "HybridMenu.java"

# interfaces
.implements Lyi/support/v1/YiLaf$MenuWrapper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;,
        Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenterVolatile;,
        Lyi/support/v1/menu/HybridMenu$ContentMask;
    }
.end annotation


# instance fields
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

.field private final mContentMask:Lyi/support/v1/menu/HybridMenu$ContentMask;

.field private mExpandedMenuPresenter:Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;

.field private final mMenuManager:Lyi/support/v1/menu/MenuManager;

.field private final mMenuPanel:Lyi/support/v1/menu/HybridMenuPanel;

.field private mMenuPanelObserver:Lyi/support/v1/menu/HybridMenuPanel$Observer;

.field private mPanelUserVisibility:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 5
    .parameter "activity"

    .prologue
    .line 58
    invoke-direct {p0}, Lyi/support/v1/menu/HybridMenuPresenter;-><init>()V

    .line 56
    const/4 v2, 0x0

    iput v2, p0, Lyi/support/v1/menu/HybridMenu;->mPanelUserVisibility:I

    .line 227
    new-instance v2, Lyi/support/v1/menu/HybridMenu$1;

    invoke-direct {v2, p0}, Lyi/support/v1/menu/HybridMenu$1;-><init>(Lyi/support/v1/menu/HybridMenu;)V

    iput-object v2, p0, Lyi/support/v1/menu/HybridMenu;->mMenuPanelObserver:Lyi/support/v1/menu/HybridMenuPanel$Observer;

    .line 59
    invoke-static {}, Lyi/support/v1/utils/Logger$Performance;->begin()V

    .line 61
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lyi/support/v1/menu/HybridMenu;->mActivity:Ljava/lang/ref/WeakReference;

    .line 62
    const v2, 0x502003f

    invoke-virtual {p1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 64
    .local v1, hybridMenu:Landroid/view/View;
    invoke-static {}, Lyi/support/v1/utils/Logger$Performance;->elapse()V

    .line 66
    if-nez v1, :cond_0

    .line 67
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x509001e

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 68
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 69
    .local v0, decorView:Landroid/view/ViewGroup;
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 72
    .end local v0           #decorView:Landroid/view/ViewGroup;
    :cond_0
    invoke-static {}, Lyi/support/v1/utils/Logger$Performance;->elapse()V

    .line 74
    new-instance v2, Lyi/support/v1/menu/HybridMenu$ContentMask;

    invoke-direct {v2, p0, v1}, Lyi/support/v1/menu/HybridMenu$ContentMask;-><init>(Lyi/support/v1/menu/HybridMenu;Landroid/view/View;)V

    iput-object v2, p0, Lyi/support/v1/menu/HybridMenu;->mContentMask:Lyi/support/v1/menu/HybridMenu$ContentMask;

    .line 76
    const v2, 0x5020042

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lyi/support/v1/menu/HybridMenuPanel;

    iput-object v2, p0, Lyi/support/v1/menu/HybridMenu;->mMenuPanel:Lyi/support/v1/menu/HybridMenuPanel;

    .line 77
    iget-object v2, p0, Lyi/support/v1/menu/HybridMenu;->mMenuPanel:Lyi/support/v1/menu/HybridMenuPanel;

    iget-object v3, p0, Lyi/support/v1/menu/HybridMenu;->mMenuPanelObserver:Lyi/support/v1/menu/HybridMenuPanel$Observer;

    invoke-virtual {v2, v3}, Lyi/support/v1/menu/HybridMenuPanel;->setObserver(Lyi/support/v1/menu/HybridMenuPanel$Observer;)V

    .line 78
    iget-object v2, p0, Lyi/support/v1/menu/HybridMenu;->mMenuPanel:Lyi/support/v1/menu/HybridMenuPanel;

    invoke-direct {p0, p1, v2}, Lyi/support/v1/menu/HybridMenu;->initBackground(Landroid/content/Context;Landroid/view/ViewGroup;)V

    .line 80
    new-instance v2, Lyi/support/v1/menu/MenuManager;

    invoke-direct {v2, p1}, Lyi/support/v1/menu/MenuManager;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lyi/support/v1/menu/HybridMenu;->mMenuManager:Lyi/support/v1/menu/MenuManager;

    .line 82
    invoke-static {}, Lyi/support/v1/utils/Logger$Performance;->end()V

    .line 83
    return-void
.end method

.method static synthetic access$000(Lyi/support/v1/menu/HybridMenu;)Lyi/support/v1/menu/HybridMenu$ContentMask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenu;->mContentMask:Lyi/support/v1/menu/HybridMenu$ContentMask;

    return-object v0
.end method

.method static synthetic access$500(Lyi/support/v1/menu/HybridMenu;)Lyi/support/v1/menu/HybridMenuPanel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenu;->mMenuPanel:Lyi/support/v1/menu/HybridMenuPanel;

    return-object v0
.end method

.method static synthetic access$600(Lyi/support/v1/menu/HybridMenu;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lyi/support/v1/menu/HybridMenu;->onCollapseItemActionView()V

    return-void
.end method

.method static synthetic access$700(Lyi/support/v1/menu/HybridMenu;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lyi/support/v1/menu/HybridMenu;->onExpandItemActionView()V

    return-void
.end method

.method private doUpdateMenuView()V
    .locals 4

    .prologue
    .line 153
    iget-object v1, p0, Lyi/support/v1/menu/HybridMenu;->mMenuManager:Lyi/support/v1/menu/MenuManager;

    invoke-virtual {v1}, Lyi/support/v1/menu/MenuManager;->getMenuViewContainer()Lyi/support/v1/menu/MenuManager$MenuViewContainer;

    move-result-object v0

    .line 154
    .local v0, container:Lyi/support/v1/menu/MenuManager$MenuViewContainer;
    iget-object v1, p0, Lyi/support/v1/menu/HybridMenu;->mMenuPanel:Lyi/support/v1/menu/HybridMenuPanel;

    invoke-virtual {v0}, Lyi/support/v1/menu/MenuManager$MenuViewContainer;->getActionMenu()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v0}, Lyi/support/v1/menu/MenuManager$MenuViewContainer;->getListMenu()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lyi/support/v1/menu/HybridMenuPanel;->setContent(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    .line 155
    invoke-virtual {p0}, Lyi/support/v1/menu/HybridMenu;->refreshPanelVisibility()V

    .line 156
    return-void
.end method

.method private initBackground(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 12
    .parameter "context"
    .parameter "menuPanel"

    .prologue
    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    .line 87
    .local v7, theme:Landroid/content/res/Resources$Theme;
    const/4 v8, 0x0

    sget-object v9, Lcom/yi/internal/R$styleable;->HybridMenu:[I

    const v10, 0x5010049

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 89
    .local v1, a:Landroid/content/res/TypedArray;
    const/4 v6, 0x0

    .line 90
    .local v6, shadow:Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    .line 91
    .local v3, background:Landroid/graphics/drawable/Drawable;
    const/4 v5, 0x0

    .line 92
    .local v5, menuMoreBackground:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .line 93
    .local v0, N:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v0, :cond_0

    .line 94
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 95
    .local v2, attr:I
    packed-switch v2, :pswitch_data_0

    .line 93
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 97
    :pswitch_0
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 98
    goto :goto_1

    .line 100
    :pswitch_1
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 101
    goto :goto_1

    .line 103
    :pswitch_2
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_1

    .line 107
    .end local v2           #attr:I
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 109
    if-nez v6, :cond_1

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x508004e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 112
    :cond_1
    const v8, 0x5020043

    invoke-virtual {p2, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 114
    if-nez v3, :cond_2

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x508004f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 117
    :cond_2
    const v8, 0x5020044

    invoke-virtual {p2, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 119
    if-nez v5, :cond_3

    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x50800ae

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 122
    :cond_3
    const v8, 0x5020047

    invoke-virtual {p2, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 124
    return-void

    .line 95
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private onCollapseItemActionView()V
    .locals 1

    .prologue
    .line 264
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lyi/support/v1/menu/HybridMenu;->setPanelVisibility(I)V

    .line 265
    return-void
.end method

.method private onExpandItemActionView()V
    .locals 1

    .prologue
    .line 260
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lyi/support/v1/menu/HybridMenu;->setPanelVisibility(I)V

    .line 261
    return-void
.end method

.method private openOptionsMenu(Landroid/view/KeyEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 221
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenu;->mMenuPanel:Lyi/support/v1/menu/HybridMenuPanel;

    invoke-virtual {v0}, Lyi/support/v1/menu/HybridMenuPanel;->getPermission()Lyi/support/v1/menu/HybridMenuPanel$Permission;

    move-result-object v0

    invoke-virtual {v0}, Lyi/support/v1/menu/HybridMenuPanel$Permission;->isReadyToPrepareMenuPanel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenu;->mMenuManager:Lyi/support/v1/menu/MenuManager;

    invoke-virtual {v0, p1}, Lyi/support/v1/menu/MenuManager;->onPreparePanel(Landroid/view/KeyEvent;)Z

    .line 224
    :cond_0
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenu;->mMenuPanel:Lyi/support/v1/menu/HybridMenuPanel;

    invoke-virtual {v0}, Lyi/support/v1/menu/HybridMenuPanel;->openMenu()V

    .line 225
    return-void
.end method

.method private setupConnectionWithActionBar()V
    .locals 3

    .prologue
    .line 252
    iget-object v1, p0, Lyi/support/v1/menu/HybridMenu;->mMenuManager:Lyi/support/v1/menu/MenuManager;

    iget-object v0, v1, Lyi/support/v1/menu/MenuManager;->mPanelState:Lyi/support/v1/menu/PanelFeatureState;

    .line 253
    .local v0, st:Lyi/support/v1/menu/PanelFeatureState;
    iget-object v1, v0, Lyi/support/v1/menu/PanelFeatureState;->menu:Lcom/yi/internal/view/menu/MenuBuilder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lyi/support/v1/menu/HybridMenu;->mExpandedMenuPresenter:Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;

    if-nez v1, :cond_0

    .line 254
    new-instance v1, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;-><init>(Lyi/support/v1/menu/HybridMenu;Lyi/support/v1/menu/HybridMenu$1;)V

    iput-object v1, p0, Lyi/support/v1/menu/HybridMenu;->mExpandedMenuPresenter:Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;

    .line 255
    iget-object v1, v0, Lyi/support/v1/menu/PanelFeatureState;->menu:Lcom/yi/internal/view/menu/MenuBuilder;

    iget-object v2, p0, Lyi/support/v1/menu/HybridMenu;->mExpandedMenuPresenter:Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;

    invoke-virtual {v1, v2}, Lcom/yi/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/yi/internal/view/menu/MenuPresenter;)V

    .line 257
    :cond_0
    return-void
.end method


# virtual methods
.method public closeOptionsMenu()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenu;->mMenuPanel:Lyi/support/v1/menu/HybridMenuPanel;

    invoke-virtual {v0}, Lyi/support/v1/menu/HybridMenuPanel;->closeMenu()V

    .line 140
    return-void
.end method

.method public collapseActionView()V
    .locals 2

    .prologue
    .line 273
    iget-object v1, p0, Lyi/support/v1/menu/HybridMenu;->mExpandedMenuPresenter:Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 275
    .local v0, item:Lcom/yi/internal/view/menu/MenuItemImpl;
    :goto_0
    if-eqz v0, :cond_0

    .line 276
    invoke-virtual {v0}, Lcom/yi/internal/view/menu/MenuItemImpl;->collapseActionView()Z

    .line 277
    invoke-direct {p0}, Lyi/support/v1/menu/HybridMenu;->onCollapseItemActionView()V

    .line 279
    :cond_0
    return-void

    .line 273
    .end local v0           #item:Lcom/yi/internal/view/menu/MenuItemImpl;
    :cond_1
    iget-object v1, p0, Lyi/support/v1/menu/HybridMenu;->mExpandedMenuPresenter:Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;

    iget-object v0, v1, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/yi/internal/view/menu/MenuItemImpl;

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 190
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 191
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    move v0, v1

    .line 217
    :cond_1
    :goto_0
    return v0

    .line 193
    :sswitch_0
    iget-object v2, p0, Lyi/support/v1/menu/HybridMenu;->mMenuPanel:Lyi/support/v1/menu/HybridMenuPanel;

    invoke-virtual {v2}, Lyi/support/v1/menu/HybridMenuPanel;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 194
    iget-object v2, p0, Lyi/support/v1/menu/HybridMenu;->mMenuPanel:Lyi/support/v1/menu/HybridMenuPanel;

    invoke-virtual {v2}, Lyi/support/v1/menu/HybridMenuPanel;->isMenuOpened()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 195
    invoke-virtual {p0}, Lyi/support/v1/menu/HybridMenu;->closeOptionsMenu()V

    .line 199
    :goto_1
    iget-object v2, p0, Lyi/support/v1/menu/HybridMenu;->mMenuPanel:Lyi/support/v1/menu/HybridMenuPanel;

    invoke-virtual {v2, v1}, Lyi/support/v1/menu/HybridMenuPanel;->playSoundEffect(I)V

    goto :goto_0

    .line 197
    :cond_2
    invoke-direct {p0, p1}, Lyi/support/v1/menu/HybridMenu;->openOptionsMenu(Landroid/view/KeyEvent;)V

    goto :goto_1

    .line 207
    :sswitch_1
    invoke-virtual {p0}, Lyi/support/v1/menu/HybridMenu;->hasExpandedActionView()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 208
    invoke-virtual {p0}, Lyi/support/v1/menu/HybridMenu;->collapseActionView()V

    goto :goto_0

    .line 210
    :cond_3
    iget-object v2, p0, Lyi/support/v1/menu/HybridMenu;->mMenuPanel:Lyi/support/v1/menu/HybridMenuPanel;

    invoke-virtual {v2}, Lyi/support/v1/menu/HybridMenuPanel;->isMenuOpened()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 211
    invoke-virtual {p0}, Lyi/support/v1/menu/HybridMenu;->closeOptionsMenu()V

    goto :goto_0

    .line 191
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method public enablePanelWhenSoftInputShown(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 160
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenu;->mMenuPanel:Lyi/support/v1/menu/HybridMenuPanel;

    invoke-virtual {v0, p1}, Lyi/support/v1/menu/HybridMenuPanel;->enablePanelWhenSoftInputShown(Z)V

    .line 161
    return-void
.end method

.method public hasExpandedActionView()Z
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenu;->mExpandedMenuPresenter:Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lyi/support/v1/menu/HybridMenu;->mExpandedMenuPresenter:Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;

    iget-object v0, v0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/yi/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCloseMenu(Lcom/yi/internal/view/menu/MenuBuilder;Z)V
    .locals 0
    .parameter "menu"
    .parameter "allMenusAreClosing"

    .prologue
    .line 144
    invoke-virtual {p0}, Lyi/support/v1/menu/HybridMenu;->closeOptionsMenu()V

    .line 145
    return-void
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 1
    .parameter "featureId"

    .prologue
    .line 127
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenu;->mMenuManager:Lyi/support/v1/menu/MenuManager;

    invoke-virtual {v0, p1}, Lyi/support/v1/menu/MenuManager;->onCreatePanelView(I)Lyi/support/v1/menu/MenuManager$MenuViewContainer;

    .line 128
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenu;->mMenuManager:Lyi/support/v1/menu/MenuManager;

    invoke-virtual {v0, p0}, Lyi/support/v1/menu/MenuManager;->addOtherPresenters(Lcom/yi/internal/view/menu/MenuPresenter;)V

    .line 129
    invoke-direct {p0}, Lyi/support/v1/menu/HybridMenu;->setupConnectionWithActionBar()V

    .line 130
    invoke-direct {p0}, Lyi/support/v1/menu/HybridMenu;->doUpdateMenuView()V

    .line 131
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenu;->mMenuPanel:Lyi/support/v1/menu/HybridMenuPanel;

    return-object v0
.end method

.method public onScrolled(IIF)V
    .locals 2
    .parameter "currentPosition"
    .parameter "scollPosition"
    .parameter "positionOffset"

    .prologue
    .line 165
    iget-object v1, p0, Lyi/support/v1/menu/HybridMenu;->mMenuPanel:Lyi/support/v1/menu/HybridMenuPanel;

    if-eq p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, p3, v0}, Lyi/support/v1/menu/HybridMenuPanel;->fadeActionMenu(FZ)V

    .line 166
    return-void

    .line 165
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public openOptionsMenu()V
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lyi/support/v1/menu/HybridMenu;->openOptionsMenu(Landroid/view/KeyEvent;)V

    .line 136
    return-void
.end method

.method public refreshPanelVisibility()V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenu;->mMenuPanel:Lyi/support/v1/menu/HybridMenuPanel;

    invoke-virtual {v0}, Lyi/support/v1/menu/HybridMenuPanel;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lyi/support/v1/menu/HybridMenu;->mPanelUserVisibility:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lyi/support/v1/menu/HybridMenu;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lyi/support/v1/YiLaf;->get(Landroid/app/Activity;)Lyi/support/v1/YiLaf$Interface;

    move-result-object v0

    invoke-interface {v0}, Lyi/support/v1/YiLaf$Interface;->getActionBar()Lyi/support/v1/YiLaf$ActionBarWrapper;

    move-result-object v0

    invoke-interface {v0}, Lyi/support/v1/YiLaf$ActionBarWrapper;->hasCustomView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    :cond_0
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenu;->mMenuPanel:Lyi/support/v1/menu/HybridMenuPanel;

    invoke-virtual {v0}, Lyi/support/v1/menu/HybridMenuPanel;->hidePanel()V

    .line 187
    :goto_0
    return-void

    .line 185
    :cond_1
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenu;->mMenuPanel:Lyi/support/v1/menu/HybridMenuPanel;

    invoke-virtual {v0}, Lyi/support/v1/menu/HybridMenuPanel;->showPanel()V

    goto :goto_0
.end method

.method public setPanelTransparency(Z)V
    .locals 1
    .parameter "transparent"

    .prologue
    .line 176
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenu;->mMenuPanel:Lyi/support/v1/menu/HybridMenuPanel;

    invoke-virtual {v0, p1}, Lyi/support/v1/menu/HybridMenuPanel;->setPanelTransparency(Z)V

    .line 177
    return-void
.end method

.method public setPanelVisibility(I)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 170
    iput p1, p0, Lyi/support/v1/menu/HybridMenu;->mPanelUserVisibility:I

    .line 171
    invoke-virtual {p0}, Lyi/support/v1/menu/HybridMenu;->refreshPanelVisibility()V

    .line 172
    return-void
.end method

.method public updateMenuView(Z)V
    .locals 0
    .parameter "cleared"

    .prologue
    .line 149
    invoke-direct {p0}, Lyi/support/v1/menu/HybridMenu;->doUpdateMenuView()V

    .line 150
    return-void
.end method
