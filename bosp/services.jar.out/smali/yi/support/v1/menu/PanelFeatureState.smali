.class public Lyi/support/v1/menu/PanelFeatureState;
.super Ljava/lang/Object;
.source "PanelFeatureState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyi/support/v1/menu/PanelFeatureState$1;,
        Lyi/support/v1/menu/PanelFeatureState$SavedState;
    }
.end annotation


# instance fields
.field actionMenuPresenter:Lcom/yi/internal/view/menu/ActionMenuPresenter;

.field featureId:I

.field frozenActionViewState:Landroid/os/Bundle;

.field frozenMenuState:Landroid/os/Bundle;

.field isInExpandedMode:Z

.field isOpen:Z

.field listMenuPresenter:Lcom/yi/internal/view/menu/ListMenuPresenter;

.field menu:Lcom/yi/internal/view/menu/MenuBuilder;

.field public qwertyMode:Z

.field refreshMenuContent:Z

.field shownPanelView:Landroid/view/View;

.field wasLastExpanded:Z

.field wasLastOpen:Z


# direct methods
.method constructor <init>(I)V
    .locals 1
    .parameter "featureId"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lyi/support/v1/menu/PanelFeatureState;->isInExpandedMode:Z

    .line 59
    iput p1, p0, Lyi/support/v1/menu/PanelFeatureState;->featureId:I

    .line 60
    return-void
.end method


# virtual methods
.method applyFrozenState()V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lyi/support/v1/menu/PanelFeatureState;->menu:Lcom/yi/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lyi/support/v1/menu/PanelFeatureState;->frozenMenuState:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lyi/support/v1/menu/PanelFeatureState;->menu:Lcom/yi/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Lyi/support/v1/menu/PanelFeatureState;->frozenMenuState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/yi/internal/view/menu/MenuBuilder;->restorePresenterStates(Landroid/os/Bundle;)V

    .line 180
    const/4 v0, 0x0

    iput-object v0, p0, Lyi/support/v1/menu/PanelFeatureState;->frozenMenuState:Landroid/os/Bundle;

    .line 182
    :cond_0
    return-void
.end method

.method public clearMenuPresenters()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 86
    iget-object v0, p0, Lyi/support/v1/menu/PanelFeatureState;->menu:Lcom/yi/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lyi/support/v1/menu/PanelFeatureState;->menu:Lcom/yi/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Lyi/support/v1/menu/PanelFeatureState;->actionMenuPresenter:Lcom/yi/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0, v1}, Lcom/yi/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/yi/internal/view/menu/MenuPresenter;)V

    .line 88
    iget-object v0, p0, Lyi/support/v1/menu/PanelFeatureState;->menu:Lcom/yi/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Lyi/support/v1/menu/PanelFeatureState;->listMenuPresenter:Lcom/yi/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v0, v1}, Lcom/yi/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/yi/internal/view/menu/MenuPresenter;)V

    .line 90
    :cond_0
    iput-object v2, p0, Lyi/support/v1/menu/PanelFeatureState;->actionMenuPresenter:Lcom/yi/internal/view/menu/ActionMenuPresenter;

    .line 91
    iput-object v2, p0, Lyi/support/v1/menu/PanelFeatureState;->listMenuPresenter:Lcom/yi/internal/view/menu/ListMenuPresenter;

    .line 92
    return-void
.end method

.method getActionMenuView(Landroid/content/Context;Lcom/yi/internal/view/menu/MenuPresenter$Callback;)Lcom/yi/internal/view/menu/MenuView;
    .locals 4
    .parameter "context"
    .parameter "cb"

    .prologue
    const/4 v0, 0x0

    .line 112
    iget-object v1, p0, Lyi/support/v1/menu/PanelFeatureState;->menu:Lcom/yi/internal/view/menu/MenuBuilder;

    if-nez v1, :cond_0

    .line 123
    :goto_0
    return-object v0

    .line 115
    :cond_0
    iget-object v1, p0, Lyi/support/v1/menu/PanelFeatureState;->actionMenuPresenter:Lcom/yi/internal/view/menu/ActionMenuPresenter;

    if-nez v1, :cond_1

    .line 116
    new-instance v1, Lcom/yi/internal/view/menu/ActionMenuPresenter;

    const v2, 0x5090014

    const v3, 0x5090013

    invoke-direct {v1, p1, v2, v3}, Lcom/yi/internal/view/menu/ActionMenuPresenter;-><init>(Landroid/content/Context;II)V

    iput-object v1, p0, Lyi/support/v1/menu/PanelFeatureState;->actionMenuPresenter:Lcom/yi/internal/view/menu/ActionMenuPresenter;

    .line 118
    iget-object v1, p0, Lyi/support/v1/menu/PanelFeatureState;->actionMenuPresenter:Lcom/yi/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v1, p2}, Lcom/yi/internal/view/menu/ActionMenuPresenter;->setCallback(Lcom/yi/internal/view/menu/MenuPresenter$Callback;)V

    .line 119
    iget-object v1, p0, Lyi/support/v1/menu/PanelFeatureState;->actionMenuPresenter:Lcom/yi/internal/view/menu/ActionMenuPresenter;

    const v2, 0x5020020

    invoke-virtual {v1, v2}, Lcom/yi/internal/view/menu/ActionMenuPresenter;->setId(I)V

    .line 120
    iget-object v1, p0, Lyi/support/v1/menu/PanelFeatureState;->menu:Lcom/yi/internal/view/menu/MenuBuilder;

    iget-object v2, p0, Lyi/support/v1/menu/PanelFeatureState;->actionMenuPresenter:Lcom/yi/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v1, v2}, Lcom/yi/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/yi/internal/view/menu/MenuPresenter;)V

    .line 122
    :cond_1
    iget-object v1, p0, Lyi/support/v1/menu/PanelFeatureState;->actionMenuPresenter:Lcom/yi/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v1, v0}, Lcom/yi/internal/view/menu/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/yi/internal/view/menu/MenuView;

    move-result-object v0

    .line 123
    .local v0, result:Lcom/yi/internal/view/menu/MenuView;
    goto :goto_0
.end method

.method getListMenuView(Landroid/content/Context;Lcom/yi/internal/view/menu/MenuPresenter$Callback;)Lcom/yi/internal/view/menu/MenuView;
    .locals 3
    .parameter "context"
    .parameter "cb"

    .prologue
    const/4 v0, 0x0

    .line 131
    iget-object v1, p0, Lyi/support/v1/menu/PanelFeatureState;->menu:Lcom/yi/internal/view/menu/MenuBuilder;

    if-nez v1, :cond_0

    .line 143
    :goto_0
    return-object v0

    .line 134
    :cond_0
    iget-object v1, p0, Lyi/support/v1/menu/PanelFeatureState;->listMenuPresenter:Lcom/yi/internal/view/menu/ListMenuPresenter;

    if-nez v1, :cond_1

    .line 135
    new-instance v1, Lcom/yi/internal/view/menu/ListMenuPresenter;

    const v2, 0x5090021

    invoke-direct {v1, p1, v2}, Lcom/yi/internal/view/menu/ListMenuPresenter;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lyi/support/v1/menu/PanelFeatureState;->listMenuPresenter:Lcom/yi/internal/view/menu/ListMenuPresenter;

    .line 137
    iget-object v1, p0, Lyi/support/v1/menu/PanelFeatureState;->listMenuPresenter:Lcom/yi/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v1, p2}, Lcom/yi/internal/view/menu/ListMenuPresenter;->setCallback(Lcom/yi/internal/view/menu/MenuPresenter$Callback;)V

    .line 138
    iget-object v1, p0, Lyi/support/v1/menu/PanelFeatureState;->listMenuPresenter:Lcom/yi/internal/view/menu/ListMenuPresenter;

    const v2, 0x502001f

    invoke-virtual {v1, v2}, Lcom/yi/internal/view/menu/ListMenuPresenter;->setId(I)V

    .line 139
    iget-object v1, p0, Lyi/support/v1/menu/PanelFeatureState;->menu:Lcom/yi/internal/view/menu/MenuBuilder;

    iget-object v2, p0, Lyi/support/v1/menu/PanelFeatureState;->listMenuPresenter:Lcom/yi/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v1, v2}, Lcom/yi/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/yi/internal/view/menu/MenuPresenter;)V

    .line 141
    :cond_1
    iget-object v1, p0, Lyi/support/v1/menu/PanelFeatureState;->listMenuPresenter:Lcom/yi/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v1, v0}, Lcom/yi/internal/view/menu/ListMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/yi/internal/view/menu/MenuView;

    move-result-object v0

    .line 143
    .local v0, result:Lcom/yi/internal/view/menu/MenuView;
    goto :goto_0
.end method

.method getMixMenuView(Landroid/content/Context;Lcom/yi/internal/view/menu/MenuPresenter$Callback;)Landroid/view/View;
    .locals 1
    .parameter "context"
    .parameter "cb"

    .prologue
    .line 127
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasPanelItems()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 71
    iget-object v0, p0, Lyi/support/v1/menu/PanelFeatureState;->shownPanelView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 77
    :goto_0
    return v2

    .line 74
    :cond_0
    iget-boolean v0, p0, Lyi/support/v1/menu/PanelFeatureState;->isInExpandedMode:Z

    if-eqz v0, :cond_2

    .line 75
    iget-object v0, p0, Lyi/support/v1/menu/PanelFeatureState;->listMenuPresenter:Lcom/yi/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v0}, Lcom/yi/internal/view/menu/ListMenuPresenter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_1
    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    .line 77
    :cond_2
    iget-object v0, p0, Lyi/support/v1/menu/PanelFeatureState;->shownPanelView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_3

    :goto_2
    move v2, v1

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_2
.end method

.method public isInListMode()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lyi/support/v1/menu/PanelFeatureState;->isInExpandedMode:Z

    return v0
.end method

.method public isInMixMode()Z
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 161
    move-object v0, p1

    check-cast v0, Lyi/support/v1/menu/PanelFeatureState$SavedState;

    .line 162
    .local v0, savedState:Lyi/support/v1/menu/PanelFeatureState$SavedState;
    iget v1, v0, Lyi/support/v1/menu/PanelFeatureState$SavedState;->featureId:I

    iput v1, p0, Lyi/support/v1/menu/PanelFeatureState;->featureId:I

    .line 163
    iget-boolean v1, v0, Lyi/support/v1/menu/PanelFeatureState$SavedState;->isOpen:Z

    iput-boolean v1, p0, Lyi/support/v1/menu/PanelFeatureState;->wasLastOpen:Z

    .line 164
    iget-boolean v1, v0, Lyi/support/v1/menu/PanelFeatureState$SavedState;->isInExpandedMode:Z

    iput-boolean v1, p0, Lyi/support/v1/menu/PanelFeatureState;->wasLastExpanded:Z

    .line 165
    iget-object v1, v0, Lyi/support/v1/menu/PanelFeatureState$SavedState;->menuState:Landroid/os/Bundle;

    iput-object v1, p0, Lyi/support/v1/menu/PanelFeatureState;->frozenMenuState:Landroid/os/Bundle;

    .line 174
    const/4 v1, 0x0

    iput-object v1, p0, Lyi/support/v1/menu/PanelFeatureState;->shownPanelView:Landroid/view/View;

    .line 175
    return-void
.end method

.method onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 147
    new-instance v0, Lyi/support/v1/menu/PanelFeatureState$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lyi/support/v1/menu/PanelFeatureState$SavedState;-><init>(Lyi/support/v1/menu/PanelFeatureState$1;)V

    .line 148
    .local v0, savedState:Lyi/support/v1/menu/PanelFeatureState$SavedState;
    iget v1, p0, Lyi/support/v1/menu/PanelFeatureState;->featureId:I

    iput v1, v0, Lyi/support/v1/menu/PanelFeatureState$SavedState;->featureId:I

    .line 149
    iget-boolean v1, p0, Lyi/support/v1/menu/PanelFeatureState;->isOpen:Z

    iput-boolean v1, v0, Lyi/support/v1/menu/PanelFeatureState$SavedState;->isOpen:Z

    .line 150
    iget-boolean v1, p0, Lyi/support/v1/menu/PanelFeatureState;->isInExpandedMode:Z

    iput-boolean v1, v0, Lyi/support/v1/menu/PanelFeatureState$SavedState;->isInExpandedMode:Z

    .line 152
    iget-object v1, p0, Lyi/support/v1/menu/PanelFeatureState;->menu:Lcom/yi/internal/view/menu/MenuBuilder;

    if-eqz v1, :cond_0

    .line 153
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Lyi/support/v1/menu/PanelFeatureState$SavedState;->menuState:Landroid/os/Bundle;

    .line 154
    iget-object v1, p0, Lyi/support/v1/menu/PanelFeatureState;->menu:Lcom/yi/internal/view/menu/MenuBuilder;

    iget-object v2, v0, Lyi/support/v1/menu/PanelFeatureState$SavedState;->menuState:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Lcom/yi/internal/view/menu/MenuBuilder;->savePresenterStates(Landroid/os/Bundle;)V

    .line 157
    :cond_0
    return-object v0
.end method

.method setMenu(Lcom/yi/internal/view/menu/MenuBuilder;)V
    .locals 2
    .parameter "menu"

    .prologue
    .line 95
    iget-object v0, p0, Lyi/support/v1/menu/PanelFeatureState;->menu:Lcom/yi/internal/view/menu/MenuBuilder;

    if-ne p1, v0, :cond_1

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    iget-object v0, p0, Lyi/support/v1/menu/PanelFeatureState;->menu:Lcom/yi/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_2

    .line 99
    iget-object v0, p0, Lyi/support/v1/menu/PanelFeatureState;->menu:Lcom/yi/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Lyi/support/v1/menu/PanelFeatureState;->actionMenuPresenter:Lcom/yi/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0, v1}, Lcom/yi/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/yi/internal/view/menu/MenuPresenter;)V

    .line 100
    iget-object v0, p0, Lyi/support/v1/menu/PanelFeatureState;->menu:Lcom/yi/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Lyi/support/v1/menu/PanelFeatureState;->listMenuPresenter:Lcom/yi/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v0, v1}, Lcom/yi/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/yi/internal/view/menu/MenuPresenter;)V

    .line 102
    :cond_2
    iput-object p1, p0, Lyi/support/v1/menu/PanelFeatureState;->menu:Lcom/yi/internal/view/menu/MenuBuilder;

    .line 103
    if-eqz p1, :cond_0

    .line 104
    iget-object v0, p0, Lyi/support/v1/menu/PanelFeatureState;->listMenuPresenter:Lcom/yi/internal/view/menu/ListMenuPresenter;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lyi/support/v1/menu/PanelFeatureState;->actionMenuPresenter:Lcom/yi/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p1, v0}, Lcom/yi/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/yi/internal/view/menu/MenuPresenter;)V

    .line 106
    iget-object v0, p0, Lyi/support/v1/menu/PanelFeatureState;->listMenuPresenter:Lcom/yi/internal/view/menu/ListMenuPresenter;

    invoke-virtual {p1, v0}, Lcom/yi/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/yi/internal/view/menu/MenuPresenter;)V

    goto :goto_0
.end method
