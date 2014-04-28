.class public Lyi/support/v1/menu/MenuManager;
.super Ljava/lang/Object;
.source "MenuManager.java"

# interfaces
.implements Lcom/yi/internal/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyi/support/v1/menu/MenuManager$1;,
        Lyi/support/v1/menu/MenuManager$PanelMenuPresenterCallback;,
        Lyi/support/v1/menu/MenuManager$MenuViewContainer;
    }
.end annotation


# instance fields
.field mCallback:Landroid/view/Window$Callback;

.field mHybridMenuInflater:Lcom/yi/internal/view/menu/HybridMenuInflater;

.field mMenuViewContainer:Lyi/support/v1/menu/MenuManager$MenuViewContainer;

.field mPanelMenuPresenterCallback:Lyi/support/v1/menu/MenuManager$PanelMenuPresenterCallback;

.field mPanelState:Lyi/support/v1/menu/PanelFeatureState;

.field mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lyi/support/v1/menu/MenuManager$MenuViewContainer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lyi/support/v1/menu/MenuManager$MenuViewContainer;-><init>(Lyi/support/v1/menu/MenuManager;Lyi/support/v1/menu/MenuManager$1;)V

    iput-object v0, p0, Lyi/support/v1/menu/MenuManager;->mMenuViewContainer:Lyi/support/v1/menu/MenuManager$MenuViewContainer;

    .line 65
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Lyi/support/v1/menu/MenuManager;->mWindow:Landroid/view/Window;

    .line 66
    iget-object v0, p0, Lyi/support/v1/menu/MenuManager;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    iput-object v0, p0, Lyi/support/v1/menu/MenuManager;->mCallback:Landroid/view/Window$Callback;

    .line 67
    invoke-direct {p0, p1}, Lyi/support/v1/menu/MenuManager;->setMenuInflater(Landroid/app/Activity;)V

    .line 68
    return-void
.end method

.method private getPanelState(I)Lyi/support/v1/menu/PanelFeatureState;
    .locals 1
    .parameter "featureId"

    .prologue
    .line 233
    iget-object v0, p0, Lyi/support/v1/menu/MenuManager;->mPanelState:Lyi/support/v1/menu/PanelFeatureState;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lyi/support/v1/menu/MenuManager;->mPanelState:Lyi/support/v1/menu/PanelFeatureState;

    .line 236
    :goto_0
    return-object v0

    .line 235
    :cond_0
    new-instance v0, Lyi/support/v1/menu/PanelFeatureState;

    invoke-direct {v0, p1}, Lyi/support/v1/menu/PanelFeatureState;-><init>(I)V

    iput-object v0, p0, Lyi/support/v1/menu/MenuManager;->mPanelState:Lyi/support/v1/menu/PanelFeatureState;

    .line 236
    iget-object v0, p0, Lyi/support/v1/menu/MenuManager;->mPanelState:Lyi/support/v1/menu/PanelFeatureState;

    goto :goto_0
.end method

.method private setMenuInflater(Landroid/app/Activity;)V
    .locals 4
    .parameter "activity"

    .prologue
    .line 72
    :try_start_0
    const-class v2, Landroid/app/Activity;

    const-string v3, "mMenuInflater"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 73
    .local v1, field:Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v0

    .line 74
    .local v0, accessible:Z
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 75
    invoke-virtual {p0}, Lyi/support/v1/menu/MenuManager;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 76
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .end local v0           #accessible:Z
    .end local v1           #field:Ljava/lang/reflect/Field;
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public addOtherPresenters(Lcom/yi/internal/view/menu/MenuPresenter;)V
    .locals 2
    .parameter "presenter"

    .prologue
    .line 112
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lyi/support/v1/menu/MenuManager;->getPanelState(I)Lyi/support/v1/menu/PanelFeatureState;

    move-result-object v0

    .line 113
    .local v0, st:Lyi/support/v1/menu/PanelFeatureState;
    iget-object v1, v0, Lyi/support/v1/menu/PanelFeatureState;->menu:Lcom/yi/internal/view/menu/MenuBuilder;

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, v0, Lyi/support/v1/menu/PanelFeatureState;->menu:Lcom/yi/internal/view/menu/MenuBuilder;

    invoke-virtual {v1, p1}, Lcom/yi/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/yi/internal/view/menu/MenuPresenter;)V

    .line 115
    iget-object v1, v0, Lyi/support/v1/menu/PanelFeatureState;->menu:Lcom/yi/internal/view/menu/MenuBuilder;

    invoke-virtual {v1, p1}, Lcom/yi/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/yi/internal/view/menu/MenuPresenter;)V

    .line 117
    :cond_0
    return-void
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lyi/support/v1/menu/MenuManager;->mHybridMenuInflater:Lcom/yi/internal/view/menu/HybridMenuInflater;

    if-nez v0, :cond_0

    .line 242
    new-instance v0, Lcom/yi/internal/view/menu/HybridMenuInflater;

    iget-object v1, p0, Lyi/support/v1/menu/MenuManager;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yi/internal/view/menu/HybridMenuInflater;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lyi/support/v1/menu/MenuManager;->mHybridMenuInflater:Lcom/yi/internal/view/menu/HybridMenuInflater;

    .line 244
    :cond_0
    iget-object v0, p0, Lyi/support/v1/menu/MenuManager;->mHybridMenuInflater:Lcom/yi/internal/view/menu/HybridMenuInflater;

    return-object v0
.end method

.method public getMenuViewContainer()Lyi/support/v1/menu/MenuManager$MenuViewContainer;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lyi/support/v1/menu/MenuManager;->mMenuViewContainer:Lyi/support/v1/menu/MenuManager$MenuViewContainer;

    return-object v0
.end method

.method protected initializePanelMenu(Landroid/content/Context;Lyi/support/v1/menu/PanelFeatureState;)Z
    .locals 7
    .parameter "context"
    .parameter "st"

    .prologue
    const/4 v6, 0x1

    .line 207
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 208
    .local v3, outValue:Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 209
    .local v1, currentTheme:Landroid/content/res/Resources$Theme;
    const v5, #attr@actionBarWidgetTheme#t

    invoke-virtual {v1, v5, v3, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 211
    iget v4, v3, Landroid/util/TypedValue;->resourceId:I

    .line 213
    .local v4, targetThemeRes:I
    if-eqz v4, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getThemeResId()I

    move-result v5

    if-eq v5, v4, :cond_0

    .line 214
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, p1, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .end local p1
    .local v0, context:Landroid/content/Context;
    move-object p1, v0

    .line 217
    .end local v0           #context:Landroid/content/Context;
    .restart local p1
    :cond_0
    new-instance v2, Lcom/yi/internal/view/menu/MenuBuilder;

    invoke-direct {v2, p1}, Lcom/yi/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 219
    .local v2, menu:Lcom/yi/internal/view/menu/MenuBuilder;
    invoke-virtual {v2, p0}, Lcom/yi/internal/view/menu/MenuBuilder;->setCallback(Lcom/yi/internal/view/menu/MenuBuilder$Callback;)V

    .line 220
    invoke-virtual {p2, v2}, Lyi/support/v1/menu/PanelFeatureState;->setMenu(Lcom/yi/internal/view/menu/MenuBuilder;)V

    .line 221
    return v6
.end method

.method public onCreatePanelView(I)Lyi/support/v1/menu/MenuManager$MenuViewContainer;
    .locals 6
    .parameter "featureId"

    .prologue
    const/4 v3, 0x0

    .line 86
    if-nez p1, :cond_0

    .line 87
    invoke-direct {p0, p1}, Lyi/support/v1/menu/MenuManager;->getPanelState(I)Lyi/support/v1/menu/PanelFeatureState;

    move-result-object v2

    .line 88
    .local v2, st:Lyi/support/v1/menu/PanelFeatureState;
    invoke-virtual {p0, v2, v3}, Lyi/support/v1/menu/MenuManager;->preparePanel(Lyi/support/v1/menu/PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 108
    .end local v2           #st:Lyi/support/v1/menu/PanelFeatureState;
    :cond_0
    :goto_0
    return-object v3

    .line 92
    .restart local v2       #st:Lyi/support/v1/menu/PanelFeatureState;
    :cond_1
    iget-object v4, p0, Lyi/support/v1/menu/MenuManager;->mPanelState:Lyi/support/v1/menu/PanelFeatureState;

    iget-object v4, v4, Lyi/support/v1/menu/PanelFeatureState;->menu:Lcom/yi/internal/view/menu/MenuBuilder;

    if-eqz v4, :cond_0

    .line 96
    iget-object v4, p0, Lyi/support/v1/menu/MenuManager;->mPanelMenuPresenterCallback:Lyi/support/v1/menu/MenuManager$PanelMenuPresenterCallback;

    if-nez v4, :cond_2

    .line 97
    new-instance v4, Lyi/support/v1/menu/MenuManager$PanelMenuPresenterCallback;

    invoke-direct {v4, p0, v3}, Lyi/support/v1/menu/MenuManager$PanelMenuPresenterCallback;-><init>(Lyi/support/v1/menu/MenuManager;Lyi/support/v1/menu/MenuManager$1;)V

    iput-object v4, p0, Lyi/support/v1/menu/MenuManager;->mPanelMenuPresenterCallback:Lyi/support/v1/menu/MenuManager$PanelMenuPresenterCallback;

    .line 100
    :cond_2
    iget-object v4, p0, Lyi/support/v1/menu/MenuManager;->mWindow:Landroid/view/Window;

    invoke-virtual {v4}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lyi/support/v1/menu/MenuManager;->mPanelMenuPresenterCallback:Lyi/support/v1/menu/MenuManager$PanelMenuPresenterCallback;

    invoke-virtual {v2, v4, v5}, Lyi/support/v1/menu/PanelFeatureState;->getActionMenuView(Landroid/content/Context;Lcom/yi/internal/view/menu/MenuPresenter$Callback;)Lcom/yi/internal/view/menu/MenuView;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 103
    .local v0, actionMenuView:Landroid/view/ViewGroup;
    iget-object v4, p0, Lyi/support/v1/menu/MenuManager;->mWindow:Landroid/view/Window;

    invoke-virtual {v4}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lyi/support/v1/menu/MenuManager;->mPanelMenuPresenterCallback:Lyi/support/v1/menu/MenuManager$PanelMenuPresenterCallback;

    invoke-virtual {v2, v4, v5}, Lyi/support/v1/menu/PanelFeatureState;->getListMenuView(Landroid/content/Context;Lcom/yi/internal/view/menu/MenuPresenter$Callback;)Lcom/yi/internal/view/menu/MenuView;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 106
    .local v1, listMenuView:Landroid/view/ViewGroup;
    new-instance v4, Lyi/support/v1/menu/MenuManager$MenuViewContainer;

    invoke-direct {v4, p0, v0, v1, v3}, Lyi/support/v1/menu/MenuManager$MenuViewContainer;-><init>(Lyi/support/v1/menu/MenuManager;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lyi/support/v1/menu/MenuManager$1;)V

    iput-object v4, p0, Lyi/support/v1/menu/MenuManager;->mMenuViewContainer:Lyi/support/v1/menu/MenuManager$MenuViewContainer;

    move-object v3, v4

    goto :goto_0
.end method

.method public onMenuItemSelected(Lcom/yi/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "menu"
    .parameter "item"

    .prologue
    .line 250
    iget-object v0, p0, Lyi/support/v1/menu/MenuManager;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 251
    iget-object v0, p0, Lyi/support/v1/menu/MenuManager;->mPanelState:Lyi/support/v1/menu/PanelFeatureState;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lyi/support/v1/menu/MenuManager;->mCallback:Landroid/view/Window$Callback;

    iget-object v1, p0, Lyi/support/v1/menu/MenuManager;->mPanelState:Lyi/support/v1/menu/PanelFeatureState;

    iget v1, v1, Lyi/support/v1/menu/PanelFeatureState;->featureId:I

    invoke-interface {v0, v1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    .line 255
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMenuModeChange(Lcom/yi/internal/view/menu/MenuBuilder;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 262
    return-void
.end method

.method public onPreparePanel(Landroid/view/KeyEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 123
    invoke-direct {p0, v4}, Lyi/support/v1/menu/MenuManager;->getPanelState(I)Lyi/support/v1/menu/PanelFeatureState;

    move-result-object v1

    .line 124
    .local v1, st:Lyi/support/v1/menu/PanelFeatureState;
    iget-object v2, v1, Lyi/support/v1/menu/PanelFeatureState;->menu:Lcom/yi/internal/view/menu/MenuBuilder;

    if-nez v2, :cond_1

    .line 125
    iget-object v2, p0, Lyi/support/v1/menu/MenuManager;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lyi/support/v1/menu/MenuManager;->initializePanelMenu(Landroid/content/Context;Lyi/support/v1/menu/PanelFeatureState;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lyi/support/v1/menu/PanelFeatureState;->menu:Lcom/yi/internal/view/menu/MenuBuilder;

    if-nez v2, :cond_1

    .line 147
    :cond_0
    :goto_0
    return v4

    .line 130
    :cond_1
    iget-object v2, v1, Lyi/support/v1/menu/PanelFeatureState;->menu:Lcom/yi/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/yi/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 131
    iget-object v2, v1, Lyi/support/v1/menu/PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    if-eqz v2, :cond_2

    .line 132
    iget-object v2, v1, Lyi/support/v1/menu/PanelFeatureState;->menu:Lcom/yi/internal/view/menu/MenuBuilder;

    iget-object v5, v1, Lyi/support/v1/menu/PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    invoke-virtual {v2, v5}, Lcom/yi/internal/view/menu/MenuBuilder;->restoreActionViewStates(Landroid/os/Bundle;)V

    .line 133
    iput-object v7, v1, Lyi/support/v1/menu/PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    .line 136
    :cond_2
    iget-object v2, p0, Lyi/support/v1/menu/MenuManager;->mCallback:Landroid/view/Window$Callback;

    iget v5, v1, Lyi/support/v1/menu/PanelFeatureState;->featureId:I

    iget-object v6, v1, Lyi/support/v1/menu/PanelFeatureState;->menu:Lcom/yi/internal/view/menu/MenuBuilder;

    invoke-interface {v2, v5, v7, v6}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 137
    iget-object v2, v1, Lyi/support/v1/menu/PanelFeatureState;->menu:Lcom/yi/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/yi/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    goto :goto_0

    .line 142
    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v2

    :goto_1
    invoke-static {v2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v0

    .line 144
    .local v0, kmap:Landroid/view/KeyCharacterMap;
    invoke-virtual {v0}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v2

    if-eq v2, v3, :cond_5

    move v2, v3

    :goto_2
    iput-boolean v2, v1, Lyi/support/v1/menu/PanelFeatureState;->qwertyMode:Z

    .line 145
    iget-object v2, v1, Lyi/support/v1/menu/PanelFeatureState;->menu:Lcom/yi/internal/view/menu/MenuBuilder;

    iget-boolean v4, v1, Lyi/support/v1/menu/PanelFeatureState;->qwertyMode:Z

    invoke-virtual {v2, v4}, Lcom/yi/internal/view/menu/MenuBuilder;->setQwertyMode(Z)V

    .line 146
    iget-object v2, v1, Lyi/support/v1/menu/PanelFeatureState;->menu:Lcom/yi/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/yi/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    move v4, v3

    .line 147
    goto :goto_0

    .line 142
    .end local v0           #kmap:Landroid/view/KeyCharacterMap;
    :cond_4
    const/4 v2, -0x1

    goto :goto_1

    .restart local v0       #kmap:Landroid/view/KeyCharacterMap;
    :cond_5
    move v2, v4

    .line 144
    goto :goto_2
.end method

.method final preparePanel(Lyi/support/v1/menu/PanelFeatureState;Landroid/view/KeyEvent;)Z
    .locals 7
    .parameter "st"
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 164
    iget-object v1, p1, Lyi/support/v1/menu/PanelFeatureState;->menu:Lcom/yi/internal/view/menu/MenuBuilder;

    if-nez v1, :cond_1

    .line 165
    iget-object v1, p0, Lyi/support/v1/menu/MenuManager;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lyi/support/v1/menu/MenuManager;->initializePanelMenu(Landroid/content/Context;Lyi/support/v1/menu/PanelFeatureState;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lyi/support/v1/menu/PanelFeatureState;->menu:Lcom/yi/internal/view/menu/MenuBuilder;

    if-nez v1, :cond_1

    .line 199
    :cond_0
    :goto_0
    return v3

    .line 171
    :cond_1
    iget-object v1, p1, Lyi/support/v1/menu/PanelFeatureState;->menu:Lcom/yi/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/yi/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 172
    iget-object v1, p1, Lyi/support/v1/menu/PanelFeatureState;->menu:Lcom/yi/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/yi/internal/view/menu/MenuBuilder;->clear()V

    .line 173
    iget-object v1, p0, Lyi/support/v1/menu/MenuManager;->mCallback:Landroid/view/Window$Callback;

    iget v4, p1, Lyi/support/v1/menu/PanelFeatureState;->featureId:I

    iget-object v5, p1, Lyi/support/v1/menu/PanelFeatureState;->menu:Lcom/yi/internal/view/menu/MenuBuilder;

    invoke-interface {v1, v4, v5}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 175
    invoke-virtual {p1, v6}, Lyi/support/v1/menu/PanelFeatureState;->setMenu(Lcom/yi/internal/view/menu/MenuBuilder;)V

    goto :goto_0

    .line 181
    :cond_2
    iget-object v1, p1, Lyi/support/v1/menu/PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    if-eqz v1, :cond_3

    .line 182
    iget-object v1, p1, Lyi/support/v1/menu/PanelFeatureState;->menu:Lcom/yi/internal/view/menu/MenuBuilder;

    iget-object v4, p1, Lyi/support/v1/menu/PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    invoke-virtual {v1, v4}, Lcom/yi/internal/view/menu/MenuBuilder;->restoreActionViewStates(Landroid/os/Bundle;)V

    .line 183
    iput-object v6, p1, Lyi/support/v1/menu/PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    .line 186
    :cond_3
    iget-object v1, p0, Lyi/support/v1/menu/MenuManager;->mCallback:Landroid/view/Window$Callback;

    iget v4, p1, Lyi/support/v1/menu/PanelFeatureState;->featureId:I

    iget-object v5, p1, Lyi/support/v1/menu/PanelFeatureState;->menu:Lcom/yi/internal/view/menu/MenuBuilder;

    invoke-interface {v1, v4, v6, v5}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 188
    iget-object v1, p1, Lyi/support/v1/menu/PanelFeatureState;->menu:Lcom/yi/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/yi/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    goto :goto_0

    .line 193
    :cond_4
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v1

    :goto_1
    invoke-static {v1}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v0

    .line 195
    .local v0, kmap:Landroid/view/KeyCharacterMap;
    invoke-virtual {v0}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v1

    if-eq v1, v2, :cond_6

    move v1, v2

    :goto_2
    iput-boolean v1, p1, Lyi/support/v1/menu/PanelFeatureState;->qwertyMode:Z

    .line 196
    iget-object v1, p1, Lyi/support/v1/menu/PanelFeatureState;->menu:Lcom/yi/internal/view/menu/MenuBuilder;

    iget-boolean v3, p1, Lyi/support/v1/menu/PanelFeatureState;->qwertyMode:Z

    invoke-virtual {v1, v3}, Lcom/yi/internal/view/menu/MenuBuilder;->setQwertyMode(Z)V

    .line 197
    iget-object v1, p1, Lyi/support/v1/menu/PanelFeatureState;->menu:Lcom/yi/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/yi/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    move v3, v2

    .line 199
    goto :goto_0

    .line 193
    .end local v0           #kmap:Landroid/view/KeyCharacterMap;
    :cond_5
    const/4 v1, -0x1

    goto :goto_1

    .restart local v0       #kmap:Landroid/view/KeyCharacterMap;
    :cond_6
    move v1, v3

    .line 195
    goto :goto_2
.end method
