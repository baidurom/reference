.class Landroid/widget/TextView$SelectionActionModeCallback;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionActionModeCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/TextView;)V
    .locals 0
    .parameter

    .prologue
    .line 10503
    iput-object p1, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10503
    invoke-direct {p0, p1}, Landroid/widget/TextView$SelectionActionModeCallback;-><init>(Landroid/widget/TextView;)V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "mode"
    .parameter "item"

    .prologue
    .line 10584
    iget-object v0, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;
    invoke-static {v0}, Landroid/widget/TextView;->access$5200(Landroid/widget/TextView;)Landroid/view/ActionMode$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;
    invoke-static {v0}, Landroid/widget/TextView;->access$5200(Landroid/widget/TextView;)Landroid/view/ActionMode$Callback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10586
    const/4 v0, 0x1

    .line 10588
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v0

    goto :goto_0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 9
    .parameter "mode"
    .parameter "menu"

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x6

    const/4 v5, 0x0

    .line 10507
    iget-object v3, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/widget/TextView;->access$4800(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v3

    sget-object v7, Lcom/android/internal/R$styleable;->SelectionModeDrawables:[I

    invoke-virtual {v3, v7}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 10510
    .local v2, styledAttributes:Landroid/content/res/TypedArray;
    iget-object v3, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, #bool@config_allowActionMenuItemTextWithIcon#t

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 10513
    .local v0, allowText:Z
    if-eqz v0, :cond_4

    iget-object v3, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/widget/TextView;->access$4900(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v3

    const v7, #string@textSelectionCABTitle#t

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {p1, v3}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 10515
    invoke-virtual {p1, v4}, Landroid/view/ActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 10517
    const/4 v1, 0x0

    .line 10518
    .local v1, selectAllIconId:I
    if-nez v0, :cond_0

    .line 10520
    const/4 v3, 0x3

    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 10524
    :cond_0
    const v3, #id@selectAll#t

    const v4, #string@selectAll#t

    invoke-interface {p2, v5, v3, v5, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v3

    const/16 v4, 0x61

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 10530
    iget-object v3, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->canCut()Z
    invoke-static {v3}, Landroid/widget/TextView;->access$5000(Landroid/widget/TextView;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 10531
    const v3, #id@cut#t

    const v4, #string@cut#t

    invoke-interface {p2, v5, v3, v5, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-virtual {v2, v5, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v3

    const/16 v4, 0x78

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 10539
    :cond_1
    iget-object v3, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->canCopy()Z
    invoke-static {v3}, Landroid/widget/TextView;->access$3000(Landroid/widget/TextView;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 10540
    const v3, #id@copy#t

    const v4, #string@copy#t

    invoke-interface {p2, v5, v3, v5, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-virtual {v2, v6, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v3

    const/16 v4, 0x63

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 10548
    :cond_2
    iget-object v3, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->canPasteBaidu()Z
    invoke-static {v3}, Landroid/widget/TextView;->access$5100(Landroid/widget/TextView;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 10549
    const v3, #id@paste#t

    const v4, #string@paste#t

    invoke-interface {p2, v5, v3, v5, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v3

    const/16 v4, 0x76

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 10557
    :cond_3
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 10559
    iget-object v3, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;
    invoke-static {v3}, Landroid/widget/TextView;->access$5200(Landroid/widget/TextView;)Landroid/view/ActionMode$Callback;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 10560
    iget-object v3, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;
    invoke-static {v3}, Landroid/widget/TextView;->access$5200(Landroid/widget/TextView;)Landroid/view/ActionMode$Callback;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v3

    if-nez v3, :cond_5

    move v3, v5

    .line 10570
    :goto_1
    return v3

    .end local v1           #selectAllIconId:I
    :cond_4
    move-object v3, v4

    .line 10513
    goto/16 :goto_0

    .line 10566
    .restart local v1       #selectAllIconId:I
    :cond_5
    invoke-interface {p2}, Landroid/view/Menu;->hasVisibleItems()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {p1}, Landroid/view/ActionMode;->getCustomView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 10567
    :cond_6
    iget-object v3, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionController()Landroid/widget/TextView$SelectionModifierCursorController;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView$SelectionModifierCursorController;->show()V

    move v3, v6

    .line 10568
    goto :goto_1

    :cond_7
    move v3, v5

    .line 10570
    goto :goto_1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 10593
    iget-object v0, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;
    invoke-static {v0}, Landroid/widget/TextView;->access$5200(Landroid/widget/TextView;)Landroid/view/ActionMode$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10594
    iget-object v0, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;
    invoke-static {v0}, Landroid/widget/TextView;->access$5200(Landroid/widget/TextView;)Landroid/view/ActionMode$Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 10596
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/widget/TextView;->access$500(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 10598
    iget-object v0, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;
    invoke-static {v0}, Landroid/widget/TextView;->access$5300(Landroid/widget/TextView;)Landroid/widget/TextView$SelectionModifierCursorController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 10599
    iget-object v0, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;
    invoke-static {v0}, Landroid/widget/TextView;->access$5300(Landroid/widget/TextView;)Landroid/widget/TextView$SelectionModifierCursorController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView$SelectionModifierCursorController;->hide()V

    .line 10602
    :cond_1
    iget-object v0, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    const/4 v1, 0x0

    #setter for: Landroid/widget/TextView;->mSelectionActionMode:Landroid/view/ActionMode;
    invoke-static {v0, v1}, Landroid/widget/TextView;->access$5402(Landroid/widget/TextView;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 10603
    iget-object v0, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    const/4 v1, 0x0

    #setter for: Landroid/widget/TextView;->mInMoreMenuPressed:Z
    invoke-static {v0, v1}, Landroid/widget/TextView;->access$5502(Landroid/widget/TextView;Z)Z

    .line 10604
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 10576
    iget-object v0, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;
    invoke-static {v0}, Landroid/widget/TextView;->access$5200(Landroid/widget/TextView;)Landroid/view/ActionMode$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10577
    iget-object v0, p0, Landroid/widget/TextView$SelectionActionModeCallback;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;
    invoke-static {v0}, Landroid/widget/TextView;->access$5200(Landroid/widget/TextView;)Landroid/view/ActionMode$Callback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    .line 10579
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
