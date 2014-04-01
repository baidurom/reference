.class Landroid/widget/TextView$SelectionStartHandleView;
.super Landroid/widget/TextView$HandleView;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionStartHandleView"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter
    .parameter "drawableLtr"
    .parameter "drawableRtl"

    .prologue
    .line 11380
    iput-object p1, p0, Landroid/widget/TextView$SelectionStartHandleView;->this$0:Landroid/widget/TextView;

    .line 11381
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView$HandleView;-><init>(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 11382
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/TextView$SelectionStartHandleView;->mCursorType:I

    .line 11383
    return-void
.end method


# virtual methods
.method public getActionPopupWindow()Landroid/widget/TextView$ActionPopupWindow;
    .locals 1

    .prologue
    .line 11511
    iget-object v0, p0, Landroid/widget/TextView$SelectionStartHandleView;->mActionPopupWindow:Landroid/widget/TextView$ActionPopupWindow;

    return-object v0
.end method

.method public getCurrentCursorOffset()I
    .locals 1

    .prologue
    .line 11459
    iget-object v0, p0, Landroid/widget/TextView$SelectionStartHandleView;->this$0:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    return v0
.end method

.method protected getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
    .locals 1
    .parameter "drawable"
    .parameter "isRtlRun"

    .prologue
    .line 11387
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method protected isVisible()Z
    .locals 6

    .prologue
    .line 11471
    iget v1, p0, Landroid/widget/TextView$SelectionStartHandleView;->mPositionX:I

    .line 11472
    .local v1, positionX:I
    iget v2, p0, Landroid/widget/TextView$SelectionStartHandleView;->mPositionY:I

    .line 11474
    .local v2, positionY:I
    iget-object v4, p0, Landroid/widget/TextView$SelectionStartHandleView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/TextView$SelectionStartHandleView;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mTextSelectHandleRes:I
    invoke-static {v5}, Landroid/widget/TextView;->access$6700(Landroid/widget/TextView;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 11475
    .local v0, handle:Landroid/graphics/drawable/Drawable;
    iget v4, p0, Landroid/widget/TextView$SelectionStartHandleView;->mPositionY:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Landroid/widget/TextView$SelectionStartHandleView;->mPositionY:I

    .line 11476
    invoke-super {p0}, Landroid/widget/TextView$HandleView;->isVisible()Z

    move-result v3

    .line 11478
    .local v3, result:Z
    iput v1, p0, Landroid/widget/TextView$SelectionStartHandleView;->mPositionX:I

    .line 11479
    iput v2, p0, Landroid/widget/TextView$SelectionStartHandleView;->mPositionY:I

    .line 11481
    return v3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "ev"

    .prologue
    .line 11400
    iget v4, p0, Landroid/widget/TextView$SelectionStartHandleView;->mIdealVerticalOffset:F

    .line 11401
    .local v4, previousVerticalOffset:F
    const/4 v8, 0x2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    if-ne v8, v9, :cond_2

    .line 11402
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    .line 11403
    .local v5, rawX:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    .line 11406
    .local v6, rawY:F
    iget v8, p0, Landroid/widget/TextView$SelectionStartHandleView;->mPositionY:I

    iget v9, p0, Landroid/widget/TextView$SelectionStartHandleView;->mLastParentY:I

    add-int/2addr v8, v9

    iget-object v9, p0, Landroid/widget/TextView$SelectionStartHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    add-int/2addr v8, v9

    int-to-float v8, v8

    sub-float v0, v8, v6

    .line 11410
    .local v0, currentVerticalOffset:F
    iget v8, p0, Landroid/widget/TextView$SelectionStartHandleView;->mIdealVerticalOffset:F

    cmpg-float v8, v4, v8

    if-gez v8, :cond_1

    .line 11411
    iget v8, p0, Landroid/widget/TextView$SelectionStartHandleView;->mIdealVerticalOffset:F

    invoke-static {v0, v8}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 11412
    .local v3, newVerticalOffset:F
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 11421
    :goto_0
    iget v8, p0, Landroid/widget/TextView$SelectionStartHandleView;->mTouchToWindowOffsetX:F

    sub-float v8, v5, v8

    iget v9, p0, Landroid/widget/TextView$SelectionStartHandleView;->mHotspotX:I

    int-to-float v9, v9

    add-float v1, v8, v9

    .line 11422
    .local v1, newPosX:F
    iget v8, p0, Landroid/widget/TextView$SelectionStartHandleView;->mLastParentY:I

    int-to-float v8, v8

    sub-float v8, v6, v8

    add-float/2addr v8, v3

    iget v9, p0, Landroid/widget/TextView$SelectionStartHandleView;->mTouchOffsetY:F

    sub-float v2, v8, v9

    .line 11429
    .local v2, newPosY:F
    invoke-virtual {p0, v1, v2}, Landroid/widget/TextView$SelectionStartHandleView;->updatePosition(FF)V

    .line 11431
    iget-object v8, p0, Landroid/widget/TextView$SelectionStartHandleView;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mMagnifierController:Landroid/widget/TextView$MagnifierController;
    invoke-static {v8}, Landroid/widget/TextView;->access$7200(Landroid/widget/TextView;)Landroid/widget/TextView$MagnifierController;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 11432
    iget-object v8, p0, Landroid/widget/TextView$SelectionStartHandleView;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mMagnifierController:Landroid/widget/TextView$MagnifierController;
    invoke-static {v8}, Landroid/widget/TextView;->access$7200(Landroid/widget/TextView;)Landroid/widget/TextView$MagnifierController;

    move-result-object v8

    iget v9, p0, Landroid/widget/TextView$SelectionStartHandleView;->mCursorType:I

    invoke-virtual {v8, v9}, Landroid/widget/TextView$MagnifierController;->update(I)V

    .line 11435
    :cond_0
    const/4 v7, 0x1

    .line 11453
    .end local v0           #currentVerticalOffset:F
    .end local v1           #newPosX:F
    .end local v2           #newPosY:F
    .end local v3           #newVerticalOffset:F
    .end local v5           #rawX:F
    .end local v6           #rawY:F
    :goto_1
    return v7

    .line 11414
    .restart local v0       #currentVerticalOffset:F
    .restart local v5       #rawX:F
    .restart local v6       #rawY:F
    :cond_1
    iget v8, p0, Landroid/widget/TextView$SelectionStartHandleView;->mIdealVerticalOffset:F

    invoke-static {v0, v8}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 11415
    .restart local v3       #newVerticalOffset:F
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    goto :goto_0

    .line 11437
    .end local v0           #currentVerticalOffset:F
    .end local v3           #newVerticalOffset:F
    .end local v5           #rawX:F
    .end local v6           #rawY:F
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/TextView$HandleView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    .line 11439
    .local v7, result:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    goto :goto_1

    .line 11441
    :pswitch_0
    iget v8, p0, Landroid/widget/TextView$SelectionStartHandleView;->mPositionY:I

    iget v9, p0, Landroid/widget/TextView$SelectionStartHandleView;->mLastParentY:I

    add-int/2addr v8, v9

    iget-object v9, p0, Landroid/widget/TextView$SelectionStartHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    add-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    sub-float v4, v8, v9

    .line 11442
    invoke-virtual {p0}, Landroid/widget/TextView$SelectionStartHandleView;->dismissActionPopupWindow()V

    goto :goto_1

    .line 11445
    :pswitch_1
    iget-object v8, p0, Landroid/widget/TextView$SelectionStartHandleView;->mActionPopupWindow:Landroid/widget/TextView$ActionPopupWindow;

    if-eqz v8, :cond_3

    iget-object v8, p0, Landroid/widget/TextView$SelectionStartHandleView;->mActionPopupWindow:Landroid/widget/TextView$ActionPopupWindow;

    iget v9, p0, Landroid/widget/TextView$SelectionStartHandleView;->mCursorType:I

    invoke-virtual {v8, v9}, Landroid/widget/TextView$ActionPopupWindow;->updatePositionFlag(I)V

    .line 11446
    :cond_3
    const/16 v8, 0xc8

    invoke-virtual {p0, v8}, Landroid/widget/TextView$SelectionStartHandleView;->showActionPopupWindow(I)V

    goto :goto_1

    .line 11439
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected positionAtCursorOffset(IZ)Z
    .locals 4
    .parameter "offset"
    .parameter "parentScrolled"

    .prologue
    .line 11486
    invoke-super {p0, p1, p2}, Landroid/widget/TextView$HandleView;->positionAtCursorOffset(IZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 11487
    iget-object v2, p0, Landroid/widget/TextView$SelectionStartHandleView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/TextView$SelectionStartHandleView;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mTextSelectHandleRes:I
    invoke-static {v3}, Landroid/widget/TextView;->access$6700(Landroid/widget/TextView;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 11488
    .local v0, handle:Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Landroid/widget/TextView$SelectionStartHandleView;->this$0:Landroid/widget/TextView;

    iget-object v2, v2, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 11489
    .local v1, line:I
    iget-object v2, p0, Landroid/widget/TextView$SelectionStartHandleView;->this$0:Landroid/widget/TextView;

    iget-object v2, v2, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Landroid/widget/TextView$SelectionStartHandleView;->mPositionY:I

    .line 11492
    iget v2, p0, Landroid/widget/TextView$SelectionStartHandleView;->mPositionY:I

    iget-object v3, p0, Landroid/widget/TextView$SelectionStartHandleView;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->viewportToContentVerticalOffset()I
    invoke-static {v3}, Landroid/widget/TextView;->access$2700(Landroid/widget/TextView;)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Landroid/widget/TextView$SelectionStartHandleView;->mPositionY:I

    .line 11493
    const/4 v2, 0x1

    .line 11495
    .end local v0           #handle:Landroid/graphics/drawable/Drawable;
    .end local v1           #line:I
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public updatePosition(FF)V
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v3, 0x0

    .line 11501
    iget-object v2, p0, Landroid/widget/TextView$SelectionStartHandleView;->this$0:Landroid/widget/TextView;

    invoke-virtual {v2, p1, p2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    .line 11504
    .local v0, offset:I
    iget-object v2, p0, Landroid/widget/TextView$SelectionStartHandleView;->this$0:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .line 11505
    .local v1, selectionEnd:I
    if-lt v0, v1, :cond_0

    add-int/lit8 v2, v1, -0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 11507
    :cond_0
    invoke-virtual {p0, v0, v3}, Landroid/widget/TextView$SelectionStartHandleView;->positionAtCursorOffset(IZ)Z

    .line 11508
    return-void
.end method

.method public updateSelection(I)V
    .locals 2
    .parameter "offset"

    .prologue
    .line 11464
    iget-object v0, p0, Landroid/widget/TextView$SelectionStartHandleView;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/widget/TextView;->access$500(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, Landroid/widget/TextView$SelectionStartHandleView;->this$0:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    invoke-static {v0, p1, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 11465
    invoke-virtual {p0}, Landroid/widget/TextView$SelectionStartHandleView;->updateDrawable()V

    .line 11466
    return-void
.end method
