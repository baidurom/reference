.class public Lcom/yi/internal/view/menu/ActionMenuPresenter;
.super Ljava/lang/Object;
.source "ActionMenuPresenter.java"

# interfaces
.implements Lcom/yi/internal/view/menu/MenuPresenter;


# static fields
.field private static final ACTION_MENU_ALPHA_DIMMED:F = 0.4f

.field private static final ACTION_MENU_ALPHA_NORMAL:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "ActionMenuPresenter"

.field public static final VIEWS_TAG:Ljava/lang/String; = "android:menu:action"


# instance fields
.field private mCallback:Lcom/yi/internal/view/menu/MenuPresenter$Callback;

.field mContext:Landroid/content/Context;

.field private mId:I

.field mInflater:Landroid/view/LayoutInflater;

.field private mItemIndexOffset:I

.field mItemLayoutRes:I

.field mMenu:Lcom/yi/internal/view/menu/MenuBuilder;

.field mMenuLayoutRes:I

.field mMenuView:Lcom/yi/internal/view/menu/ActionMenuView;

.field mThemeRes:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .parameter "menuLayoutRes"
    .parameter "itemLayoutRes"
    .parameter "themeRes"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p1, p0, Lcom/yi/internal/view/menu/ActionMenuPresenter;->mMenuLayoutRes:I

    .line 56
    iput p2, p0, Lcom/yi/internal/view/menu/ActionMenuPresenter;->mItemLayoutRes:I

    .line 57
    iput p3, p0, Lcom/yi/internal/view/menu/ActionMenuPresenter;->mThemeRes:I

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .parameter "context"
    .parameter "menuLayoutRes"
    .parameter "itemLayoutRes"

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Lcom/yi/internal/view/menu/ActionMenuPresenter;-><init>(III)V

    .line 43
    iput-object p1, p0, Lcom/yi/internal/view/menu/ActionMenuPresenter;->mContext:Landroid/content/Context;

    .line 44
    iget-object v0, p0, Lcom/yi/internal/view/menu/ActionMenuPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/yi/internal/view/menu/ActionMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    .line 45
    return-void
.end method


# virtual methods
.method protected addItemView(Landroid/view/View;I)V
    .locals 2
    .parameter "itemView"
    .parameter "childIndex"

    .prologue
    .line 147
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 148
    .local v0, currentParent:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 151
    :cond_0
    iget-object v1, p0, Lcom/yi/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/yi/internal/view/menu/ActionMenuView;

    invoke-virtual {v1, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 152
    return-void
.end method

.method public bindItemView(Lcom/yi/internal/view/menu/MenuItemImpl;Lcom/yi/internal/view/menu/MenuView$ItemView;)V
    .locals 3
    .parameter "item"
    .parameter "itemView"

    .prologue
    .line 250
    const/4 v2, 0x1

    invoke-interface {p2, p1, v2}, Lcom/yi/internal/view/menu/MenuView$ItemView;->initialize(Lcom/yi/internal/view/menu/MenuItemImpl;I)V

    .line 252
    iget-object v1, p0, Lcom/yi/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/yi/internal/view/menu/ActionMenuView;

    .local v1, menuView:Lcom/yi/internal/view/menu/ActionMenuView;
    move-object v0, p2

    .line 253
    check-cast v0, Lcom/yi/internal/view/menu/ActionMenuItemView;

    .line 254
    .local v0, actionItemView:Lcom/yi/internal/view/menu/ActionMenuItemView;
    invoke-virtual {v0, v1}, Lcom/yi/internal/view/menu/ActionMenuItemView;->setItemInvoker(Lcom/yi/internal/view/menu/MenuBuilder$ItemInvoker;)V

    .line 255
    return-void
.end method

.method public collapseItemActionView(Lcom/yi/internal/view/menu/MenuBuilder;Lcom/yi/internal/view/menu/MenuItemImpl;)Z
    .locals 1
    .parameter "menu"
    .parameter "item"

    .prologue
    .line 195
    const/4 v0, 0x0

    return v0
.end method

.method public createItemView(Landroid/view/ViewGroup;)Lcom/yi/internal/view/menu/MenuView$ItemView;
    .locals 3
    .parameter "parent"

    .prologue
    .line 225
    iget-object v0, p0, Lcom/yi/internal/view/menu/ActionMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/yi/internal/view/menu/ActionMenuPresenter;->mItemLayoutRes:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yi/internal/view/menu/MenuView$ItemView;

    return-object v0
.end method

.method public expandItemActionView(Lcom/yi/internal/view/menu/MenuBuilder;Lcom/yi/internal/view/menu/MenuItemImpl;)Z
    .locals 1
    .parameter "menu"
    .parameter "item"

    .prologue
    .line 189
    const/4 v0, 0x0

    return v0
.end method

.method filterLeftoverView(Landroid/view/ViewGroup;I)Z
    .locals 1
    .parameter "parent"
    .parameter "childIndex"

    .prologue
    .line 137
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 138
    const/4 v0, 0x1

    return v0
.end method

.method public flagActionItems()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 175
    iget-object v4, p0, Lcom/yi/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/yi/internal/view/menu/MenuBuilder;

    invoke-virtual {v4}, Lcom/yi/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v3

    .line 176
    .local v3, visibleItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/yi/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 177
    .local v2, itemsSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 178
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yi/internal/view/menu/MenuItemImpl;

    .line 179
    .local v1, item:Lcom/yi/internal/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Lcom/yi/internal/view/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1}, Lcom/yi/internal/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 180
    :cond_0
    invoke-virtual {v1, v5}, Lcom/yi/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    .line 177
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 183
    .end local v1           #item:Lcom/yi/internal/view/menu/MenuItemImpl;
    :cond_2
    return v5
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 201
    iget v0, p0, Lcom/yi/internal/view/menu/ActionMenuPresenter;->mId:I

    return v0
.end method

.method public getItemView(Lcom/yi/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "item"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 236
    instance-of v1, p2, Lcom/yi/internal/view/menu/MenuView$ItemView;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 237
    check-cast v0, Lcom/yi/internal/view/menu/MenuView$ItemView;

    .line 241
    .local v0, itemView:Lcom/yi/internal/view/menu/MenuView$ItemView;
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/yi/internal/view/menu/ActionMenuPresenter;->bindItemView(Lcom/yi/internal/view/menu/MenuItemImpl;Lcom/yi/internal/view/menu/MenuView$ItemView;)V

    .line 242
    check-cast v0, Landroid/view/View;

    .end local v0           #itemView:Lcom/yi/internal/view/menu/MenuView$ItemView;
    return-object v0

    .line 239
    :cond_0
    invoke-virtual {p0, p3}, Lcom/yi/internal/view/menu/ActionMenuPresenter;->createItemView(Landroid/view/ViewGroup;)Lcom/yi/internal/view/menu/MenuView$ItemView;

    move-result-object v0

    .restart local v0       #itemView:Lcom/yi/internal/view/menu/MenuView$ItemView;
    goto :goto_0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/yi/internal/view/menu/MenuView;
    .locals 3
    .parameter "root"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/yi/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/yi/internal/view/menu/ActionMenuView;

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/yi/internal/view/menu/ActionMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/yi/internal/view/menu/ActionMenuPresenter;->mMenuLayoutRes:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yi/internal/view/menu/ActionMenuView;

    iput-object v0, p0, Lcom/yi/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/yi/internal/view/menu/ActionMenuView;

    .line 80
    iget-object v0, p0, Lcom/yi/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/yi/internal/view/menu/ActionMenuView;

    iget-object v1, p0, Lcom/yi/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/yi/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, v1}, Lcom/yi/internal/view/menu/ActionMenuView;->initialize(Lcom/yi/internal/view/menu/MenuBuilder;)V

    .line 81
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yi/internal/view/menu/ActionMenuPresenter;->updateMenuView(Z)V

    .line 83
    iget-object v0, p0, Lcom/yi/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/yi/internal/view/menu/ActionMenuView;

    new-instance v1, Lcom/yi/internal/view/menu/ActionMenuPresenter$1;

    invoke-direct {v1, p0}, Lcom/yi/internal/view/menu/ActionMenuPresenter$1;-><init>(Lcom/yi/internal/view/menu/ActionMenuPresenter;)V

    invoke-virtual {v0, v1}, Lcom/yi/internal/view/menu/ActionMenuView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/yi/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/yi/internal/view/menu/ActionMenuView;

    return-object v0
.end method

.method public initForMenu(Landroid/content/Context;Lcom/yi/internal/view/menu/MenuBuilder;)V
    .locals 2
    .parameter "context"
    .parameter "menu"

    .prologue
    .line 63
    iget v0, p0, Lcom/yi/internal/view/menu/ActionMenuPresenter;->mThemeRes:I

    if-eqz v0, :cond_1

    .line 64
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget v1, p0, Lcom/yi/internal/view/menu/ActionMenuPresenter;->mThemeRes:I

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/yi/internal/view/menu/ActionMenuPresenter;->mContext:Landroid/content/Context;

    .line 65
    iget-object v0, p0, Lcom/yi/internal/view/menu/ActionMenuPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/yi/internal/view/menu/ActionMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    .line 72
    :cond_0
    :goto_0
    iput-object p2, p0, Lcom/yi/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/yi/internal/view/menu/MenuBuilder;

    .line 73
    return-void

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/yi/internal/view/menu/ActionMenuPresenter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 67
    iput-object p1, p0, Lcom/yi/internal/view/menu/ActionMenuPresenter;->mContext:Landroid/content/Context;

    .line 68
    iget-object v0, p0, Lcom/yi/internal/view/menu/ActionMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/yi/internal/view/menu/ActionMenuPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/yi/internal/view/menu/ActionMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    goto :goto_0
.end method

.method public onCloseMenu(Lcom/yi/internal/view/menu/MenuBuilder;Z)V
    .locals 0
    .parameter "menu"
    .parameter "allMenusAreClosing"

    .prologue
    .line 170
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 218
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x0

    return-object v0
.end method

.method public onSubMenuSelected(Lcom/yi/internal/view/menu/SubMenuBuilder;)Z
    .locals 1
    .parameter "subMenu"

    .prologue
    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method public setCallback(Lcom/yi/internal/view/menu/MenuPresenter$Callback;)V
    .locals 0
    .parameter "cb"

    .prologue
    .line 157
    iput-object p1, p0, Lcom/yi/internal/view/menu/ActionMenuPresenter;->mCallback:Lcom/yi/internal/view/menu/MenuPresenter$Callback;

    .line 158
    return-void
.end method

.method public setId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 205
    iput p1, p0, Lcom/yi/internal/view/menu/ActionMenuPresenter;->mId:I

    .line 206
    return-void
.end method

.method public updateMenuView(Z)V
    .locals 10
    .parameter "cleared"

    .prologue
    .line 98
    iget-object v8, p0, Lcom/yi/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/yi/internal/view/menu/ActionMenuView;

    .line 99
    .local v8, parent:Landroid/view/ViewGroup;
    if-nez v8, :cond_1

    .line 134
    :cond_0
    return-void

    .line 101
    :cond_1
    const/4 v1, 0x0

    .line 102
    .local v1, childIndex:I
    iget-object v9, p0, Lcom/yi/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/yi/internal/view/menu/MenuBuilder;

    if-eqz v9, :cond_6

    .line 103
    iget-object v9, p0, Lcom/yi/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/yi/internal/view/menu/MenuBuilder;

    invoke-virtual {v9}, Lcom/yi/internal/view/menu/MenuBuilder;->flagActionItems()V

    .line 104
    iget-object v9, p0, Lcom/yi/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/yi/internal/view/menu/MenuBuilder;

    invoke-virtual {v9}, Lcom/yi/internal/view/menu/MenuBuilder;->getActionItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 105
    .local v0, actionItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/yi/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 106
    .local v5, itemCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v5, :cond_6

    .line 107
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yi/internal/view/menu/MenuItemImpl;

    .line 108
    .local v4, item:Lcom/yi/internal/view/menu/MenuItemImpl;
    invoke-virtual {v8, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 109
    .local v2, convertView:Landroid/view/View;
    instance-of v9, v2, Lcom/yi/internal/view/menu/MenuView$ItemView;

    if-eqz v9, :cond_4

    move-object v9, v2

    check-cast v9, Lcom/yi/internal/view/menu/MenuView$ItemView;

    invoke-interface {v9}, Lcom/yi/internal/view/menu/MenuView$ItemView;->getItemData()Lcom/yi/internal/view/menu/MenuItemImpl;

    move-result-object v7

    .line 111
    .local v7, oldItem:Lcom/yi/internal/view/menu/MenuItemImpl;
    :goto_1
    invoke-virtual {p0, v4, v2, v8}, Lcom/yi/internal/view/menu/ActionMenuPresenter;->getItemView(Lcom/yi/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 112
    .local v6, itemView:Landroid/view/View;
    if-eq v4, v7, :cond_2

    .line 114
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/view/View;->setPressed(Z)V

    .line 115
    invoke-virtual {v6}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 117
    :cond_2
    if-eq v6, v2, :cond_3

    .line 118
    invoke-virtual {p0, v6, v1}, Lcom/yi/internal/view/menu/ActionMenuPresenter;->addItemView(Landroid/view/View;I)V

    .line 121
    :cond_3
    invoke-virtual {v4}, Lcom/yi/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v9

    invoke-virtual {v6, v9}, Landroid/view/View;->setClickable(Z)V

    .line 122
    invoke-virtual {v4}, Lcom/yi/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_5

    const/high16 v9, 0x3f80

    :goto_2
    invoke-virtual {v6, v9}, Landroid/view/View;->setAlpha(F)V

    .line 124
    add-int/lit8 v1, v1, 0x1

    .line 106
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 109
    .end local v6           #itemView:Landroid/view/View;
    .end local v7           #oldItem:Lcom/yi/internal/view/menu/MenuItemImpl;
    :cond_4
    const/4 v7, 0x0

    goto :goto_1

    .line 122
    .restart local v6       #itemView:Landroid/view/View;
    .restart local v7       #oldItem:Lcom/yi/internal/view/menu/MenuItemImpl;
    :cond_5
    const v9, 0x3ecccccd

    goto :goto_2

    .line 129
    .end local v0           #actionItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/yi/internal/view/menu/MenuItemImpl;>;"
    .end local v2           #convertView:Landroid/view/View;
    .end local v3           #i:I
    .end local v4           #item:Lcom/yi/internal/view/menu/MenuItemImpl;
    .end local v5           #itemCount:I
    .end local v6           #itemView:Landroid/view/View;
    .end local v7           #oldItem:Lcom/yi/internal/view/menu/MenuItemImpl;
    :cond_6
    :goto_3
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-ge v1, v9, :cond_0

    .line 130
    invoke-virtual {p0, v8, v1}, Lcom/yi/internal/view/menu/ActionMenuPresenter;->filterLeftoverView(Landroid/view/ViewGroup;I)Z

    move-result v9

    if-nez v9, :cond_6

    .line 131
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method
