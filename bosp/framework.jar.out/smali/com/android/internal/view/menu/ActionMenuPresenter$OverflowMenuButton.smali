.class Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;
.super Landroid/widget/ImageButton;
.source "ActionMenuPresenter.java"

# interfaces
.implements Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/menu/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverflowMenuButton"
.end annotation


# instance fields
.field mMenuItem:Landroid/view/MenuItem;

.field final synthetic this$0:Lcom/android/internal/view/menu/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Lcom/android/internal/view/menu/ActionMenuPresenter;Landroid/content/Context;)V
    .locals 8
    .parameter
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 574
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->this$0:Lcom/android/internal/view/menu/ActionMenuPresenter;

    .line 575
    const v0, #attr@actionOverflowButtonStyle#t

    invoke-direct {p0, p2, v6, v0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 573
    iput-object v6, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->mMenuItem:Landroid/view/MenuItem;

    .line 577
    invoke-virtual {p0, v1}, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->setClickable(Z)V

    .line 578
    invoke-virtual {p0, v1}, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->setFocusable(Z)V

    .line 579
    invoke-virtual {p0, v2}, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->setVisibility(I)V

    .line 580
    invoke-virtual {p0, v1}, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->setEnabled(Z)V

    .line 582
    iget-object v0, p1, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_0

    .line 583
    new-instance v0, Lcom/android/internal/view/menu/MenuItemImpl;

    iget-object v1, p1, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const v3, #id@overflow_menu_presenter#t

    move v4, v2

    move v5, v2

    move v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/view/menu/MenuItemImpl;-><init>(Lcom/android/internal/view/menu/MenuBuilder;IIIILjava/lang/CharSequence;I)V

    iput-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->mMenuItem:Landroid/view/MenuItem;

    .line 585
    :cond_0
    return-void
.end method


# virtual methods
.method public needsDividerAfter()Z
    .locals 1

    .prologue
    .line 610
    const/4 v0, 0x0

    return v0
.end method

.method public needsDividerBefore()Z
    .locals 1

    .prologue
    .line 606
    const/4 v0, 0x0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 615
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x8000

    if-ne v0, v1, :cond_0

    .line 617
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/high16 v1, 0x4000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 620
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageButton;->onMeasure(II)V

    .line 621
    return-void
.end method

.method public performClick()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 589
    invoke-super {p0}, Landroid/widget/ImageButton;->performClick()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 602
    :goto_0
    return v3

    .line 594
    :cond_0
    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->this$0:Lcom/android/internal/view/menu/ActionMenuPresenter;

    iget-object v1, v1, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->getCallback()Lcom/android/internal/view/menu/MenuBuilder$Callback;

    move-result-object v0

    .line 595
    .local v0, callback:Lcom/android/internal/view/menu/MenuBuilder$Callback;
    if-eqz v0, :cond_1

    .line 596
    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->this$0:Lcom/android/internal/view/menu/ActionMenuPresenter;

    iget-object v1, v1, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v2, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->mMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1, v2}, Lcom/android/internal/view/menu/MenuBuilder$Callback;->onMenuItemSelected(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    .line 600
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->playSoundEffect(I)V

    .line 601
    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->this$0:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/ActionMenuPresenter;->showOverflowMenu()Z

    goto :goto_0
.end method
