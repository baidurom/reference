.class public final Lcom/yi/internal/view/menu/MenuItemImpl;
.super Ljava/lang/Object;
.source "MenuItemImpl.java"

# interfaces
.implements Landroid/view/MenuItem;


# static fields
.field private static final CHECKABLE:I = 0x1

.field private static final CHECKED:I = 0x2

.field private static final ENABLED:I = 0x10

.field private static final EXCLUSIVE:I = 0x4

.field private static final HIDDEN:I = 0x8

.field private static final IS_ACTION:I = 0x20

.field static final NO_ICON:I = 0x0

.field private static final SHOW_AS_ACTION_MASK:I = 0x3

.field private static final TAG:Ljava/lang/String; = "MenuItemImpl"

.field private static sDeleteShortcutLabel:Ljava/lang/String;

.field private static sEnterShortcutLabel:Ljava/lang/String;

.field private static sPrependShortcutLabel:Ljava/lang/String;

.field private static sSpaceShortcutLabel:Ljava/lang/String;


# instance fields
.field private mActionProvider:Landroid/view/ActionProvider;

.field private mActionView:Landroid/view/View;

.field private final mCategoryOrder:I

.field private mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mFlags:I

.field private final mGroup:I

.field private mIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mIconResId:I

.field private final mId:I

.field private mIntent:Landroid/content/Intent;

.field private mIsActionViewExpanded:Z

.field private mItemCallback:Ljava/lang/Runnable;

.field private mMenu:Lcom/yi/internal/view/menu/MenuBuilder;

.field private mMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

.field private final mOrdering:I

.field private mShortcutAlphabeticChar:C

.field private mShortcutNumericChar:C

.field private mShowAsAction:I

.field private mSubMenu:Lcom/yi/internal/view/menu/SubMenuBuilder;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleCondensed:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/yi/internal/view/menu/MenuBuilder;IIIILjava/lang/CharSequence;I)V
    .locals 2
    .parameter "menu"
    .parameter "group"
    .parameter "id"
    .parameter "categoryOrder"
    .parameter "ordering"
    .parameter "title"
    .parameter "showAsAction"

    .prologue
    const/4 v1, 0x0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput v1, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mIconResId:I

    .line 72
    const/16 v0, 0x10

    iput v0, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 80
    iput v1, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mShowAsAction:I

    .line 85
    iput-boolean v1, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mIsActionViewExpanded:Z

    .line 117
    sget-object v0, Lcom/yi/internal/view/menu/MenuItemImpl;->sPrependShortcutLabel:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 119
    invoke-virtual {p1}, Lcom/yi/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, #string@prepend_shortcut_label#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yi/internal/view/menu/MenuItemImpl;->sPrependShortcutLabel:Ljava/lang/String;

    .line 121
    invoke-virtual {p1}, Lcom/yi/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, #string@menu_enter_shortcut_label#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yi/internal/view/menu/MenuItemImpl;->sEnterShortcutLabel:Ljava/lang/String;

    .line 123
    invoke-virtual {p1}, Lcom/yi/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, #string@menu_delete_shortcut_label#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yi/internal/view/menu/MenuItemImpl;->sDeleteShortcutLabel:Ljava/lang/String;

    .line 125
    invoke-virtual {p1}, Lcom/yi/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, #string@menu_space_shortcut_label#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yi/internal/view/menu/MenuItemImpl;->sSpaceShortcutLabel:Ljava/lang/String;

    .line 129
    :cond_0
    iput-object p1, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mMenu:Lcom/yi/internal/view/menu/MenuBuilder;

    .line 130
    iput p3, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mId:I

    .line 131
    iput p2, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mGroup:I

    .line 132
    iput p4, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mCategoryOrder:I

    .line 133
    iput p5, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mOrdering:I

    .line 134
    iput-object p6, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    .line 135
    iput p7, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mShowAsAction:I

    .line 136
    return-void
.end method


# virtual methods
.method public actionFormatChanged()V
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mMenu:Lcom/yi/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/yi/internal/view/menu/MenuBuilder;->onItemActionRequestChanged(Lcom/yi/internal/view/menu/MenuItemImpl;)V

    .line 524
    return-void
.end method

.method public collapseActionView()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 643
    iget v1, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mShowAsAction:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_1

    .line 656
    :cond_0
    :goto_0
    return v0

    .line 646
    :cond_1
    iget-object v1, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    if-nez v1, :cond_2

    .line 648
    const/4 v0, 0x1

    goto :goto_0

    .line 651
    :cond_2
    iget-object v1, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    invoke-interface {v1, p0}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionCollapse(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 653
    :cond_3
    iget-object v0, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mMenu:Lcom/yi/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/yi/internal/view/menu/MenuBuilder;->collapseItemActionView(Lcom/yi/internal/view/menu/MenuItemImpl;)Z

    move-result v0

    goto :goto_0
.end method

.method public expandActionView()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 629
    iget v1, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mShowAsAction:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 638
    :cond_0
    :goto_0
    return v0

    .line 633
    :cond_1
    iget-object v1, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    invoke-interface {v1, p0}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionExpand(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 635
    :cond_2
    iget-object v0, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mMenu:Lcom/yi/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/yi/internal/view/menu/MenuBuilder;->expandItemActionView(Lcom/yi/internal/view/menu/MenuItemImpl;)Z

    move-result v0

    goto :goto_0
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .locals 1

    .prologue
    .line 603
    iget-object v0, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    return-object v0
.end method

.method public getActionView()Landroid/view/View;
    .locals 1

    .prologue
    .line 592
    iget-object v0, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 593
    iget-object v0, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    .line 598
    :goto_0
    return-object v0

    .line 594
    :cond_0
    iget-object v0, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    if-eqz v0, :cond_1

    .line 595
    iget-object v0, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    invoke-virtual {v0}, Landroid/view/ActionProvider;->onCreateActionView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    .line 596
    iget-object v0, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    goto :goto_0

    .line 598
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAlphabeticShortcut()C
    .locals 1

    .prologue
    .line 241
    iget-char v0, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    return v0
.end method

.method getCallback()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mItemCallback:Ljava/lang/Runnable;

    return-object v0
.end method

.method public getGroupId()I
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mGroup:I

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 395
    iget-object v1, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 396
    iget-object v0, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 406
    :goto_0
    return-object v0

    .line 399
    :cond_0
    iget v1, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mIconResId:I

    if-eqz v1, :cond_1

    .line 400
    iget-object v1, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mMenu:Lcom/yi/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/yi/internal/view/menu/MenuBuilder;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mIconResId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 401
    .local v0, icon:Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    iput v1, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mIconResId:I

    .line 402
    iput-object v0, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 406
    .end local v0           #icon:Landroid/graphics/drawable/Drawable;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getItemId()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 211
    iget v0, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mId:I

    return v0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public getNumericShortcut()C
    .locals 1

    .prologue
    .line 255
    iget-char v0, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    return v0
.end method

.method public getOrder()I
    .locals 1

    .prologue
    .line 215
    iget v0, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mCategoryOrder:I

    return v0
.end method

.method public getOrdering()I
    .locals 1

    .prologue
    .line 219
    iget v0, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mOrdering:I

    return v0
.end method

.method getShortcut()C
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mMenu:Lcom/yi/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/yi/internal/view/menu/MenuBuilder;->isQwertyMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-char v0, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    :goto_0
    return v0

    :cond_0
    iget-char v0, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    goto :goto_0
.end method

.method getShortcutLabel()Ljava/lang/String;
    .locals 3

    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/yi/internal/view/menu/MenuItemImpl;->getShortcut()C

    move-result v1

    .line 292
    .local v1, shortcut:C
    if-nez v1, :cond_0

    .line 293
    const-string v2, ""

    .line 316
    :goto_0
    return-object v2

    .line 296
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/yi/internal/view/menu/MenuItemImpl;->sPrependShortcutLabel:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 297
    .local v0, sb:Ljava/lang/StringBuilder;
    sparse-switch v1, :sswitch_data_0

    .line 312
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 316
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 300
    :sswitch_0
    sget-object v2, Lcom/yi/internal/view/menu/MenuItemImpl;->sEnterShortcutLabel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 304
    :sswitch_1
    sget-object v2, Lcom/yi/internal/view/menu/MenuItemImpl;->sDeleteShortcutLabel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 308
    :sswitch_2
    sget-object v2, Lcom/yi/internal/view/menu/MenuItemImpl;->sSpaceShortcutLabel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 297
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_1
        0xa -> :sswitch_0
        0x20 -> :sswitch_2
    .end sparse-switch
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mSubMenu:Lcom/yi/internal/view/menu/SubMenuBuilder;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 345
    iget-object v0, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mTitleCondensed:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mTitleCondensed:Ljava/lang/CharSequence;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method getTitleForItemView(Lcom/yi/internal/view/menu/MenuView$ItemView;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "itemView"

    .prologue
    .line 356
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/yi/internal/view/menu/MenuView$ItemView;->prefersCondensedTitle()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/yi/internal/view/menu/MenuItemImpl;->getTitleCondensed()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/yi/internal/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public hasCollapsibleActionView()Z
    .locals 1

    .prologue
    .line 666
    iget v0, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mShowAsAction:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSubMenu()Z
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mSubMenu:Lcom/yi/internal/view/menu/SubMenuBuilder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public invoke()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 144
    iget-object v2, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v2, p0}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 171
    :cond_0
    :goto_0
    return v1

    .line 149
    :cond_1
    iget-object v2, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mMenu:Lcom/yi/internal/view/menu/MenuBuilder;

    iget-object v3, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mMenu:Lcom/yi/internal/view/menu/MenuBuilder;

    invoke-virtual {v3}, Lcom/yi/internal/view/menu/MenuBuilder;->getRootMenu()Lcom/yi/internal/view/menu/MenuBuilder;

    move-result-object v3

    invoke-virtual {v2, v3, p0}, Lcom/yi/internal/view/menu/MenuBuilder;->dispatchMenuItemSelected(Lcom/yi/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 153
    iget-object v2, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mItemCallback:Ljava/lang/Runnable;

    if-eqz v2, :cond_2

    .line 154
    iget-object v2, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mItemCallback:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 158
    :cond_2
    iget-object v2, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    if-eqz v2, :cond_3

    .line 160
    :try_start_0
    iget-object v2, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mMenu:Lcom/yi/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/yi/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "MenuItemImpl"

    const-string v3, "Can\'t find activity to handle intent; ignoring"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 167
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :cond_3
    iget-object v2, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    invoke-virtual {v2}, Landroid/view/ActionProvider;->onPerformDefaultAction()Z

    move-result v2

    if-nez v2, :cond_0

    .line 171
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isActionButton()Z
    .locals 2

    .prologue
    .line 534
    iget v0, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isActionViewExpanded()Z
    .locals 1

    .prologue
    .line 675
    iget-boolean v0, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mIsActionViewExpanded:Z

    return v0
.end method

.method public isCheckable()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 428
    iget v1, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isChecked()Z
    .locals 2

    .prologue
    .line 450
    iget v0, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isExclusiveCheckable()Z
    .locals 1

    .prologue
    .line 446
    iget v0, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 477
    iget v0, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestsActionButton()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 538
    iget v1, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mShowAsAction:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requiresActionButton()Z
    .locals 2

    .prologue
    .line 542
    iget v0, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mShowAsAction:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .locals 2
    .parameter "actionProvider"

    .prologue
    .line 610
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    .line 611
    iput-object p1, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    .line 612
    iget-object v0, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mMenu:Lcom/yi/internal/view/menu/MenuBuilder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yi/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 618
    return-object p0
.end method

.method public setActionView(I)Landroid/view/MenuItem;
    .locals 4
    .parameter "resId"

    .prologue
    .line 585
    iget-object v2, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mMenu:Lcom/yi/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/yi/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 586
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 587
    .local v1, inflater:Landroid/view/LayoutInflater;
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/yi/internal/view/menu/MenuItemImpl;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 588
    return-object p0
.end method

.method public setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .locals 2
    .parameter "view"

    .prologue
    .line 575
    iput-object p1, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    .line 576
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    .line 577
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mId:I

    if-lez v0, :cond_0

    .line 578
    iget v0, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    .line 580
    :cond_0
    iget-object v0, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mMenu:Lcom/yi/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/yi/internal/view/menu/MenuBuilder;->onItemActionRequestChanged(Lcom/yi/internal/view/menu/MenuItemImpl;)V

    .line 581
    return-object p0
.end method

.method public setActionViewExpanded(Z)V
    .locals 2
    .parameter "isExpanded"

    .prologue
    .line 670
    iput-boolean p1, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mIsActionViewExpanded:Z

    .line 671
    iget-object v0, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mMenu:Lcom/yi/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yi/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 672
    return-void
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .locals 2
    .parameter "alphaChar"

    .prologue
    .line 245
    iget-char v0, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    if-ne v0, p1, :cond_0

    .line 251
    :goto_0
    return-object p0

    .line 247
    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    .line 249
    iget-object v0, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mMenu:Lcom/yi/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yi/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    goto :goto_0
.end method

.method public setCallback(Ljava/lang/Runnable;)Landroid/view/MenuItem;
    .locals 0
    .parameter "callback"

    .prologue
    .line 236
    iput-object p1, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mItemCallback:Ljava/lang/Runnable;

    .line 237
    return-object p0
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .locals 4
    .parameter "checkable"

    .prologue
    const/4 v2, 0x0

    .line 432
    iget v0, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 433
    .local v0, oldFlags:I
    iget v1, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v3, v1, -0x2

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    or-int/2addr v1, v3

    iput v1, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 434
    iget v1, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mFlags:I

    if-eq v0, v1, :cond_0

    .line 435
    iget-object v1, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mMenu:Lcom/yi/internal/view/menu/MenuBuilder;

    invoke-virtual {v1, v2}, Lcom/yi/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 438
    :cond_0
    return-object p0

    :cond_1
    move v1, v2

    .line 433
    goto :goto_0
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .locals 1
    .parameter "checked"

    .prologue
    .line 454
    iget v0, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mMenu:Lcom/yi/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/yi/internal/view/menu/MenuBuilder;->setExclusiveItemChecked(Landroid/view/MenuItem;)V

    .line 462
    :goto_0
    return-object p0

    .line 459
    :cond_0
    invoke-virtual {p0, p1}, Lcom/yi/internal/view/menu/MenuItemImpl;->setCheckedInt(Z)V

    goto :goto_0
.end method

.method setCheckedInt(Z)V
    .locals 4
    .parameter "checked"

    .prologue
    const/4 v2, 0x0

    .line 466
    iget v0, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 467
    .local v0, oldFlags:I
    iget v1, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v3, v1, -0x3

    if-eqz p1, :cond_1

    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v3

    iput v1, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 468
    iget v1, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mFlags:I

    if-eq v0, v1, :cond_0

    .line 469
    iget-object v1, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mMenu:Lcom/yi/internal/view/menu/MenuBuilder;

    invoke-virtual {v1, v2}, Lcom/yi/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 471
    :cond_0
    return-void

    :cond_1
    move v1, v2

    .line 467
    goto :goto_0
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .locals 2
    .parameter "enabled"

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/yi/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 180
    if-eqz p1, :cond_1

    .line 181
    iget v0, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 186
    :goto_0
    iget-object v0, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mMenu:Lcom/yi/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yi/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 189
    :cond_0
    return-object p0

    .line 183
    :cond_1
    iget v0, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mFlags:I

    goto :goto_0
.end method

.method public setExclusiveCheckable(Z)V
    .locals 2
    .parameter "exclusive"

    .prologue
    .line 442
    iget v0, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v1, v0, -0x5

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 443
    return-void

    .line 442
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .locals 2
    .parameter "iconResId"

    .prologue
    .line 418
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 419
    iput p1, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mIconResId:I

    .line 422
    iget-object v0, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mMenu:Lcom/yi/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yi/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 424
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .locals 2
    .parameter "icon"

    .prologue
    const/4 v1, 0x0

    .line 410
    iput v1, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mIconResId:I

    .line 411
    iput-object p1, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 412
    iget-object v0, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mMenu:Lcom/yi/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, v1}, Lcom/yi/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 414
    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .locals 0
    .parameter "intent"

    .prologue
    .line 227
    iput-object p1, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    .line 228
    return-object p0
.end method

.method public setIsActionButton(Z)V
    .locals 1
    .parameter "isActionButton"

    .prologue
    .line 546
    if-eqz p1, :cond_0

    .line 547
    iget v0, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mFlags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 551
    :goto_0
    return-void

    .line 549
    :cond_0
    iget v0, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mFlags:I

    goto :goto_0
.end method

.method setMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0
    .parameter "menuInfo"

    .prologue
    .line 515
    iput-object p1, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 516
    return-void
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .locals 2
    .parameter "numericChar"

    .prologue
    .line 259
    iget-char v0, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    if-ne v0, p1, :cond_0

    .line 265
    :goto_0
    return-object p0

    .line 261
    :cond_0
    iput-char p1, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    .line 263
    iget-object v0, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mMenu:Lcom/yi/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yi/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    goto :goto_0
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .locals 0
    .parameter "listener"

    .prologue
    .line 661
    iput-object p1, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    .line 662
    return-object p0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .locals 0
    .parameter "clickListener"

    .prologue
    .line 505
    iput-object p1, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 506
    return-object p0
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .locals 2
    .parameter "numericChar"
    .parameter "alphaChar"

    .prologue
    .line 269
    iput-char p1, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    .line 270
    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    .line 272
    iget-object v0, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mMenu:Lcom/yi/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yi/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 274
    return-object p0
.end method

.method public setShowAsAction(I)V
    .locals 2
    .parameter "actionEnum"

    .prologue
    .line 558
    and-int/lit8 v0, p1, 0x3

    packed-switch v0, :pswitch_data_0

    .line 567
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 570
    :pswitch_0
    iput p1, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mShowAsAction:I

    .line 571
    iget-object v0, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mMenu:Lcom/yi/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/yi/internal/view/menu/MenuBuilder;->onItemActionRequestChanged(Lcom/yi/internal/view/menu/MenuItemImpl;)V

    .line 572
    return-void

    .line 558
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setShowAsActionFlags(I)Landroid/view/MenuItem;
    .locals 0
    .parameter "actionEnum"

    .prologue
    .line 623
    invoke-virtual {p0, p1}, Lcom/yi/internal/view/menu/MenuItemImpl;->setShowAsAction(I)V

    .line 624
    return-object p0
.end method

.method setSubMenu(Lcom/yi/internal/view/menu/SubMenuBuilder;)V
    .locals 1
    .parameter "subMenu"

    .prologue
    .line 338
    iput-object p1, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mSubMenu:Lcom/yi/internal/view/menu/SubMenuBuilder;

    .line 340
    invoke-virtual {p0}, Lcom/yi/internal/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yi/internal/view/menu/SubMenuBuilder;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    .line 341
    return-void
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .locals 1
    .parameter "title"

    .prologue
    .line 374
    iget-object v0, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mMenu:Lcom/yi/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/yi/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yi/internal/view/menu/MenuItemImpl;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 2
    .parameter "title"

    .prologue
    .line 362
    iput-object p1, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    .line 364
    iget-object v0, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mMenu:Lcom/yi/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yi/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 366
    iget-object v0, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mSubMenu:Lcom/yi/internal/view/menu/SubMenuBuilder;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mSubMenu:Lcom/yi/internal/view/menu/SubMenuBuilder;

    invoke-virtual {v0, p1}, Lcom/yi/internal/view/menu/SubMenuBuilder;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    .line 370
    :cond_0
    return-object p0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 2
    .parameter "title"

    .prologue
    .line 382
    iput-object p1, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mTitleCondensed:Ljava/lang/CharSequence;

    .line 385
    if-nez p1, :cond_0

    .line 386
    iget-object p1, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mMenu:Lcom/yi/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yi/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 391
    return-object p0
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .locals 1
    .parameter "shown"

    .prologue
    .line 499
    invoke-virtual {p0, p1}, Lcom/yi/internal/view/menu/MenuItemImpl;->setVisibleInt(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mMenu:Lcom/yi/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/yi/internal/view/menu/MenuBuilder;->onItemVisibleChanged(Lcom/yi/internal/view/menu/MenuItemImpl;)V

    .line 501
    :cond_0
    return-object p0
.end method

.method setVisibleInt(Z)Z
    .locals 4
    .parameter "shown"

    .prologue
    const/4 v2, 0x0

    .line 490
    iget v0, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 491
    .local v0, oldFlags:I
    iget v1, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v3, v1, -0x9

    if-eqz p1, :cond_1

    move v1, v2

    :goto_0
    or-int/2addr v1, v3

    iput v1, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 492
    iget v1, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mFlags:I

    if-eq v0, v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    .line 491
    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public shouldShowIcon()Z
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mMenu:Lcom/yi/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/yi/internal/view/menu/MenuBuilder;->getOptionalIconsVisible()Z

    move-result v0

    return v0
.end method

.method shouldShowShortcut()Z
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mMenu:Lcom/yi/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/yi/internal/view/menu/MenuBuilder;->isShortcutsVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/yi/internal/view/menu/MenuItemImpl;->getShortcut()C

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showsTextAsAction()Z
    .locals 2

    .prologue
    .line 554
    iget v0, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mShowAsAction:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lcom/yi/internal/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
