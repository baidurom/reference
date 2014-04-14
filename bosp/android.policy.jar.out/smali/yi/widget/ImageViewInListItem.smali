.class public Lyi/widget/ImageViewInListItem;
.super Landroid/widget/ImageView;
.source "ImageViewInListItem.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    return-void
.end method


# virtual methods
.method public setPressed(Z)V
    .locals 1
    .parameter "pressed"

    .prologue
    .line 21
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lyi/widget/ImageViewInListItem;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    :goto_0
    return-void

    .line 24
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setPressed(Z)V

    goto :goto_0
.end method

.method public setSelected(Z)V
    .locals 1
    .parameter "selected"

    .prologue
    .line 30
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lyi/widget/ImageViewInListItem;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    :goto_0
    return-void

    .line 33
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0
.end method
