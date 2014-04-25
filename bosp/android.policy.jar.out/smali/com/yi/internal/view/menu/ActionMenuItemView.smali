.class public Lcom/yi/internal/view/menu/ActionMenuItemView;
.super Landroid/widget/LinearLayout;
.source "ActionMenuItemView.java"

# interfaces
.implements Lcom/yi/internal/view/menu/MenuView$ItemView;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ActionMenuItemView"


# instance fields
.field private mActionMenuBackground:Landroid/graphics/drawable/Drawable;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mImageView:Landroid/widget/ImageView;

.field private mItemData:Lcom/yi/internal/view/menu/MenuItemImpl;

.field private mItemInvoker:Lcom/yi/internal/view/menu/MenuBuilder$ItemInvoker;

.field private mShadowColor:I

.field private mTextColor:Landroid/content/res/ColorStateList;

.field private mTextView:Landroid/widget/TextView;

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yi/internal/view/menu/ActionMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 38
    const v0, 0x501004a

    invoke-direct {p0, p1, p2, v0}, Lcom/yi/internal/view/menu/ActionMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    iput v6, p0, Lcom/yi/internal/view/menu/ActionMenuItemView;->mShadowColor:I

    .line 30
    iput-object v5, p0, Lcom/yi/internal/view/menu/ActionMenuItemView;->mTextColor:Landroid/content/res/ColorStateList;

    .line 31
    iput-object v5, p0, Lcom/yi/internal/view/menu/ActionMenuItemView;->mActionMenuBackground:Landroid/graphics/drawable/Drawable;

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    .line 44
    .local v4, theme:Landroid/content/res/Resources$Theme;
    sget-object v5, Lcom/yi/internal/R$styleable;->ActionMenu:[I

    invoke-virtual {v4, p2, v5, p3, v6}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 46
    .local v1, a:Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .line 47
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 48
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 49
    .local v2, attr:I
    packed-switch v2, :pswitch_data_0

    .line 47
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 51
    :pswitch_0
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    iput-object v5, p0, Lcom/yi/internal/view/menu/ActionMenuItemView;->mTextColor:Landroid/content/res/ColorStateList;

    goto :goto_1

    .line 54
    :pswitch_1
    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, Lcom/yi/internal/view/menu/ActionMenuItemView;->mShadowColor:I

    goto :goto_1

    .line 57
    :pswitch_2
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/yi/internal/view/menu/ActionMenuItemView;->mActionMenuBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 61
    .end local v2           #attr:I
    :cond_0
    iget-object v5, p0, Lcom/yi/internal/view/menu/ActionMenuItemView;->mTextColor:Landroid/content/res/ColorStateList;

    if-nez v5, :cond_1

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x506002a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    iput-object v5, p0, Lcom/yi/internal/view/menu/ActionMenuItemView;->mTextColor:Landroid/content/res/ColorStateList;

    .line 65
    :cond_1
    iget-object v5, p0, Lcom/yi/internal/view/menu/ActionMenuItemView;->mActionMenuBackground:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_2

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x5080057

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/yi/internal/view/menu/ActionMenuItemView;->mActionMenuBackground:Landroid/graphics/drawable/Drawable;

    .line 69
    :cond_2
    iget v5, p0, Lcom/yi/internal/view/menu/ActionMenuItemView;->mShadowColor:I

    if-nez v5, :cond_3

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x506002b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    iput v5, p0, Lcom/yi/internal/view/menu/ActionMenuItemView;->mShadowColor:I

    .line 73
    :cond_3
    iget-object v5, p0, Lcom/yi/internal/view/menu/ActionMenuItemView;->mActionMenuBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v5}, Lcom/yi/internal/view/menu/ActionMenuItemView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 74
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 75
    invoke-virtual {p0, p0}, Lcom/yi/internal/view/menu/ActionMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    return-void

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 172
    invoke-virtual {p0, p1}, Lcom/yi/internal/view/menu/ActionMenuItemView;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 173
    const/4 v0, 0x1

    return v0
.end method

.method public getItemData()Lcom/yi/internal/view/menu/MenuItemImpl;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/yi/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/yi/internal/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public initialize(Lcom/yi/internal/view/menu/MenuItemImpl;I)V
    .locals 1
    .parameter "itemData"
    .parameter "menuType"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/yi/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/yi/internal/view/menu/MenuItemImpl;

    .line 92
    invoke-virtual {p1}, Lcom/yi/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yi/internal/view/menu/ActionMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 93
    invoke-virtual {p1, p0}, Lcom/yi/internal/view/menu/MenuItemImpl;->getTitleForItemView(Lcom/yi/internal/view/menu/MenuView$ItemView;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yi/internal/view/menu/ActionMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 95
    invoke-virtual {p1}, Lcom/yi/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yi/internal/view/menu/ActionMenuItemView;->setId(I)V

    .line 97
    invoke-virtual {p1}, Lcom/yi/internal/view/menu/MenuItemImpl;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/yi/internal/view/menu/ActionMenuItemView;->setVisibility(I)V

    .line 98
    invoke-virtual {p1}, Lcom/yi/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yi/internal/view/menu/ActionMenuItemView;->setEnabled(Z)V

    .line 99
    return-void

    .line 97
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/yi/internal/view/menu/ActionMenuItemView;->mItemInvoker:Lcom/yi/internal/view/menu/MenuBuilder$ItemInvoker;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/yi/internal/view/menu/ActionMenuItemView;->mItemInvoker:Lcom/yi/internal/view/menu/MenuBuilder$ItemInvoker;

    iget-object v1, p0, Lcom/yi/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/yi/internal/view/menu/MenuItemImpl;

    invoke-interface {v0, v1}, Lcom/yi/internal/view/menu/MenuBuilder$ItemInvoker;->invokeItem(Lcom/yi/internal/view/menu/MenuItemImpl;)Z

    .line 168
    :cond_0
    return-void
.end method

.method public onFinishInflate()V
    .locals 3

    .prologue
    const v2, 0x3f99999a

    .line 80
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 81
    const v0, #id@title#t

    invoke-virtual {p0, v0}, Lcom/yi/internal/view/menu/ActionMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yi/internal/view/menu/ActionMenuItemView;->mTextView:Landroid/widget/TextView;

    .line 82
    iget-object v0, p0, Lcom/yi/internal/view/menu/ActionMenuItemView;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yi/internal/view/menu/ActionMenuItemView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 83
    iget-object v0, p0, Lcom/yi/internal/view/menu/ActionMenuItemView;->mTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/yi/internal/view/menu/ActionMenuItemView;->mShadowColor:I

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 84
    const v0, #id@icon#t

    invoke-virtual {p0, v0}, Lcom/yi/internal/view/menu/ActionMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yi/internal/view/menu/ActionMenuItemView;->mImageView:Landroid/widget/ImageView;

    .line 85
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 178
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 179
    invoke-virtual {p0}, Lcom/yi/internal/view/menu/ActionMenuItemView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 180
    .local v0, cdesc:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 181
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    :cond_0
    return-void
.end method

.method public prefersCondensedTitle()Z
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method public setCheckable(Z)V
    .locals 0
    .parameter "checkable"

    .prologue
    .line 125
    return-void
.end method

.method public setChecked(Z)V
    .locals 0
    .parameter "checked"

    .prologue
    .line 131
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 119
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "icon"

    .prologue
    .line 142
    iput-object p1, p0, Lcom/yi/internal/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 143
    iget-object v0, p0, Lcom/yi/internal/view/menu/ActionMenuItemView;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/yi/internal/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 144
    return-void
.end method

.method public setItemInvoker(Lcom/yi/internal/view/menu/MenuBuilder$ItemInvoker;)V
    .locals 0
    .parameter "invoker"

    .prologue
    .line 159
    iput-object p1, p0, Lcom/yi/internal/view/menu/ActionMenuItemView;->mItemInvoker:Lcom/yi/internal/view/menu/MenuBuilder$ItemInvoker;

    .line 160
    return-void
.end method

.method public setShortcut(ZC)V
    .locals 0
    .parameter "showShortcut"
    .parameter "shortcutKey"

    .prologue
    .line 137
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "title"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/yi/internal/view/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    .line 111
    iget-object v0, p0, Lcom/yi/internal/view/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/yi/internal/view/menu/ActionMenuItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v0, p0, Lcom/yi/internal/view/menu/ActionMenuItemView;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yi/internal/view/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    return-void
.end method

.method public showsIcon()Z
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x1

    return v0
.end method
