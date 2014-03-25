.class public Lyi/support/v1/menu/HybridMenuPresenter;
.super Ljava/lang/Object;
.source "HybridMenuPresenter.java"

# interfaces
.implements Lcom/yi/internal/view/menu/MenuPresenter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public collapseItemActionView(Lcom/yi/internal/view/menu/MenuBuilder;Lcom/yi/internal/view/menu/MenuItemImpl;)Z
    .locals 1
    .parameter "menu"
    .parameter "item"

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public expandItemActionView(Lcom/yi/internal/view/menu/MenuBuilder;Lcom/yi/internal/view/menu/MenuItemImpl;)Z
    .locals 1
    .parameter "menu"
    .parameter "item"

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public flagActionItems()Z
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/yi/internal/view/menu/MenuView;
    .locals 1
    .parameter "root"

    .prologue
    .line 24
    const/4 v0, 0x0

    return-object v0
.end method

.method public initForMenu(Landroid/content/Context;Lcom/yi/internal/view/menu/MenuBuilder;)V
    .locals 0
    .parameter "context"
    .parameter "menu"

    .prologue
    .line 19
    return-void
.end method

.method public onCloseMenu(Lcom/yi/internal/view/menu/MenuBuilder;Z)V
    .locals 0
    .parameter "menu"
    .parameter "allMenusAreClosing"

    .prologue
    .line 49
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 85
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return-object v0
.end method

.method public onSubMenuSelected(Lcom/yi/internal/view/menu/SubMenuBuilder;)Z
    .locals 1
    .parameter "subMenu"

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public setCallback(Lcom/yi/internal/view/menu/MenuPresenter$Callback;)V
    .locals 0
    .parameter "cb"

    .prologue
    .line 37
    return-void
.end method

.method public updateMenuView(Z)V
    .locals 0
    .parameter "cleared"

    .prologue
    .line 31
    return-void
.end method
