.class Landroid/widget/TextView$MagnifierController;
.super Landroid/widget/TextView$PopupWindowView;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MagnifierController"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 0
    .parameter

    .prologue
    .line 11583
    iput-object p1, p0, Landroid/widget/TextView$MagnifierController;->this$0:Landroid/widget/TextView;

    .line 11584
    invoke-direct {p0, p1}, Landroid/widget/TextView$PopupWindowView;-><init>(Landroid/widget/TextView;)V

    .line 11585
    return-void
.end method


# virtual methods
.method protected getEndLine()I
    .locals 1

    .prologue
    .line 11607
    invoke-virtual {p0}, Landroid/widget/TextView$MagnifierController;->getStartLine()I

    move-result v0

    return v0
.end method

.method protected getOffsetCenter()I
    .locals 2

    .prologue
    .line 11611
    iget v0, p0, Landroid/widget/TextView$PopupWindowView;->mCursorType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 11612
    iget-object v0, p0, Landroid/widget/TextView$MagnifierController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 11614
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView$MagnifierController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    goto :goto_0
.end method

.method protected getStartLine()I
    .locals 2

    .prologue
    .line 11599
    iget v0, p0, Landroid/widget/TextView$PopupWindowView;->mCursorType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 11600
    iget-object v0, p0, Landroid/widget/TextView$MagnifierController;->this$0:Landroid/widget/TextView;

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iget-object v1, p0, Landroid/widget/TextView$MagnifierController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 11602
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView$MagnifierController;->this$0:Landroid/widget/TextView;

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iget-object v1, p0, Landroid/widget/TextView$MagnifierController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    goto :goto_0
.end method

.method protected setupView()Z
    .locals 3

    .prologue
    .line 11589
    iget-object v0, p0, Landroid/widget/TextView$PopupWindowView;->mContainer:Landroid/view/View;

    if-nez v0, :cond_0

    .line 11590
    new-instance v0, Lcom/android/internal/widget/MagnifierView;

    iget-object v1, p0, Landroid/widget/TextView$MagnifierController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/widget/TextView;->access$7800(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView$MagnifierController;->this$0:Landroid/widget/TextView;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/MagnifierView;-><init>(Landroid/content/Context;Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/TextView$PopupWindowView;->mContainer:Landroid/view/View;

    .line 11593
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView$PopupWindowView;->mContainer:Landroid/view/View;

    check-cast v0, Lcom/android/internal/widget/MagnifierView;

    invoke-virtual {p0}, Landroid/widget/TextView$MagnifierController;->getOffsetCenter()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/MagnifierView;->updateMagnifierPosition(I)V

    .line 11595
    const/4 v0, 0x1

    return v0
.end method

.method protected update(I)V
    .locals 5
    .parameter "cursorType"

    .prologue
    .line 11619
    invoke-virtual {p0}, Landroid/widget/TextView$MagnifierController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11620
    iget-object v0, p0, Landroid/widget/TextView$PopupWindowView;->mContainer:Landroid/view/View;

    check-cast v0, Lcom/android/internal/widget/MagnifierView;

    invoke-virtual {p0}, Landroid/widget/TextView$MagnifierController;->getOffsetCenter()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/MagnifierView;->updateMagnifierPosition(I)V

    .line 11621
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/TextView$MagnifierController;->updateLocation(Z)V

    .line 11622
    iget-object v0, p0, Landroid/widget/TextView$PopupWindowView;->mWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/TextView$PopupWindowView;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/widget/TextView$PopupWindowView;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v3, p0, Landroid/widget/TextView$PopupWindowView;->mContainerWidth:I

    iget v4, p0, Landroid/widget/TextView$PopupWindowView;->mContainerHeight:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 11626
    :goto_0
    return-void

    .line 11624
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView$MagnifierController;->show(I)V

    goto :goto_0
.end method
