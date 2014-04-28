.class public Lyi/util/ViewHelper;
.super Ljava/lang/Object;
.source "ViewHelper.java"


# static fields
.field private static mBackground:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const v0, 0x5080010

    sput v0, Lyi/util/ViewHelper;->mBackground:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createIndicatorView(Landroid/widget/TabWidget;Ljava/lang/CharSequence;)Landroid/view/View;
    .locals 1
    .parameter "parent"
    .parameter "label"

    .prologue
    .line 15
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lyi/util/ViewHelper;->createIndicatorView(Landroid/widget/TabWidget;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static createIndicatorView(Landroid/widget/TabWidget;Ljava/lang/CharSequence;I)Landroid/view/View;
    .locals 1
    .parameter "parent"
    .parameter "label"
    .parameter "iconId"

    .prologue
    .line 19
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lyi/util/ViewHelper;->createIndicatorView(Landroid/widget/TabWidget;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static createIndicatorView(Landroid/widget/TabWidget;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/view/View;
    .locals 12
    .parameter "parent"
    .parameter "label"
    .parameter "icon"

    .prologue
    const/4 v11, 0x0

    .line 23
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 24
    .local v2, context:Landroid/content/Context;
    const-string v9, "layout_inflater"

    invoke-virtual {v2, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    .line 25
    .local v6, inflater:Landroid/view/LayoutInflater;
    const v9, 0x509003a

    invoke-virtual {v6, v9, p0, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 28
    .local v7, tabIndicator:Landroid/view/View;
    const v9, 0x5020048

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 29
    .local v8, tv:Landroid/widget/TextView;
    if-eqz v8, :cond_0

    .line 30
    invoke-virtual {v8, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    :cond_0
    const v9, 0x5020053

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 35
    .local v5, iconView:Landroid/widget/ImageView;
    if-eqz p2, :cond_1

    if-eqz v5, :cond_1

    .line 36
    invoke-virtual {v5, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 40
    :cond_1
    sget v9, Lyi/util/ViewHelper;->mBackground:I

    const v10, 0x5080010

    if-eq v9, v10, :cond_2

    .line 41
    sget v9, Lyi/util/ViewHelper;->mBackground:I

    invoke-virtual {v7, v9}, Landroid/view/View;->setBackgroundResource(I)V

    .line 44
    :cond_2
    invoke-virtual {v7}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 46
    .local v3, d:Landroid/graphics/drawable/Drawable;
    if-nez v3, :cond_4

    .line 67
    :cond_3
    :goto_0
    return-object v7

    .line 49
    :cond_4
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v1

    .line 51
    .local v1, childCount:I
    if-nez v1, :cond_5

    .line 52
    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_0

    .line 56
    :cond_5
    const/4 v9, 0x4

    invoke-virtual {v3, v9}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 59
    invoke-virtual {p0, v11}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 60
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 62
    const/4 v4, 0x1

    .local v4, i:I
    :goto_1
    if-ge v4, v1, :cond_3

    .line 63
    invoke-virtual {p0, v4}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 62
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public static setIndicatorBackground(I)V
    .locals 0
    .parameter "drawable"

    .prologue
    .line 76
    sput p0, Lyi/util/ViewHelper;->mBackground:I

    .line 77
    return-void
.end method
