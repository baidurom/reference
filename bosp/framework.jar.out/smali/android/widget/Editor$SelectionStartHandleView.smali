.class Landroid/widget/Editor$SelectionStartHandleView;
.super Landroid/widget/Editor$HandleView;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionStartHandleView"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter
    .parameter "drawableLtr"
    .parameter "drawableRtl"

    .prologue
    .line 3738
    iput-object p1, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    .line 3739
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Editor$HandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 3740
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/Editor$SelectionStartHandleView;->mCursorType:I

    .line 3741
    return-void
.end method


# virtual methods
.method public getActionPopupWindow()Landroid/widget/Editor$ActionPopupWindow;
    .locals 1

    .prologue
    .line 3870
    iget-object v0, p0, Landroid/widget/Editor$SelectionStartHandleView;->mActionPopupWindow:Landroid/widget/Editor$ActionPopupWindow;

    return-object v0
.end method

.method public getCurrentCursorOffset()I
    .locals 1

    .prologue
    .line 3817
    iget-object v0, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    return v0
.end method

.method protected getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
    .locals 1
    .parameter "drawable"
    .parameter "isRtlRun"

    .prologue
    .line 3745
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method protected isVisible()Z
    .locals 6

    .prologue
    .line 3830
    iget v1, p0, Landroid/widget/Editor$SelectionStartHandleView;->mPositionX:I

    .line 3831
    .local v1, positionX:I
    iget v2, p0, Landroid/widget/Editor$SelectionStartHandleView;->mPositionY:I

    .line 3833
    .local v2, positionY:I
    iget-object v4, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    iget v5, v5, Landroid/widget/TextView;->mTextSelectHandleRes:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3834
    .local v0, handle:Landroid/graphics/drawable/Drawable;
    iget v4, p0, Landroid/widget/Editor$SelectionStartHandleView;->mPositionY:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Landroid/widget/Editor$SelectionStartHandleView;->mPositionY:I

    .line 3835
    invoke-super {p0}, Landroid/widget/Editor$HandleView;->isVisible()Z

    move-result v3

    .line 3837
    .local v3, result:Z
    iput v1, p0, Landroid/widget/Editor$SelectionStartHandleView;->mPositionX:I

    .line 3838
    iput v2, p0, Landroid/widget/Editor$SelectionStartHandleView;->mPositionY:I

    .line 3840
    return v3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "ev"

    .prologue
    .line 3758
    iget v4, p0, Landroid/widget/Editor$SelectionStartHandleView;->mIdealVerticalOffset:F

    .line 3759
    .local v4, previousVerticalOffset:F
    const/4 v8, 0x2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    if-ne v8, v9, :cond_2

    .line 3760
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    .line 3761
    .local v5, rawX:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    .line 3764
    .local v6, rawY:F
    iget v8, p0, Landroid/widget/Editor$SelectionStartHandleView;->mPositionY:I

    iget v9, p0, Landroid/widget/Editor$SelectionStartHandleView;->mLastParentY:I

    add-int/2addr v8, v9

    iget-object v9, p0, Landroid/widget/Editor$SelectionStartHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    add-int/2addr v8, v9

    int-to-float v8, v8

    sub-float v0, v8, v6

    .line 3768
    .local v0, currentVerticalOffset:F
    iget v8, p0, Landroid/widget/Editor$SelectionStartHandleView;->mIdealVerticalOffset:F

    cmpg-float v8, v4, v8

    if-gez v8, :cond_1

    .line 3769
    iget v8, p0, Landroid/widget/Editor$SelectionStartHandleView;->mIdealVerticalOffset:F

    invoke-static {v0, v8}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 3770
    .local v3, newVerticalOffset:F
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 3779
    :goto_0
    iget v8, p0, Landroid/widget/Editor$SelectionStartHandleView;->mTouchToWindowOffsetX:F

    sub-float v8, v5, v8

    iget v9, p0, Landroid/widget/Editor$SelectionStartHandleView;->mHotspotX:I

    int-to-float v9, v9

    add-float v1, v8, v9

    .line 3780
    .local v1, newPosX:F
    iget v8, p0, Landroid/widget/Editor$SelectionStartHandleView;->mLastParentY:I

    int-to-float v8, v8

    sub-float v8, v6, v8

    add-float/2addr v8, v3

    iget v9, p0, Landroid/widget/Editor$SelectionStartHandleView;->mTouchOffsetY:F

    sub-float v2, v8, v9

    .line 3787
    .local v2, newPosY:F
    invoke-virtual {p0, v1, v2}, Landroid/widget/Editor$SelectionStartHandleView;->updatePosition(FF)V

    .line 3789
    iget-object v8, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mMagnifierController:Landroid/widget/MagnifierController;
    invoke-static {v8}, Landroid/widget/Editor;->access$2800(Landroid/widget/Editor;)Landroid/widget/MagnifierController;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 3790
    iget-object v8, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mMagnifierController:Landroid/widget/MagnifierController;
    invoke-static {v8}, Landroid/widget/Editor;->access$2800(Landroid/widget/Editor;)Landroid/widget/MagnifierController;

    move-result-object v8

    iget v9, p0, Landroid/widget/Editor$SelectionStartHandleView;->mCursorType:I

    invoke-virtual {v8, v9}, Landroid/widget/MagnifierController;->update(I)V

    .line 3793
    :cond_0
    const/4 v7, 0x1

    .line 3811
    .end local v0           #currentVerticalOffset:F
    .end local v1           #newPosX:F
    .end local v2           #newPosY:F
    .end local v3           #newVerticalOffset:F
    .end local v5           #rawX:F
    .end local v6           #rawY:F
    :goto_1
    return v7

    .line 3772
    .restart local v0       #currentVerticalOffset:F
    .restart local v5       #rawX:F
    .restart local v6       #rawY:F
    :cond_1
    iget v8, p0, Landroid/widget/Editor$SelectionStartHandleView;->mIdealVerticalOffset:F

    invoke-static {v0, v8}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 3773
    .restart local v3       #newVerticalOffset:F
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    goto :goto_0

    .line 3795
    .end local v0           #currentVerticalOffset:F
    .end local v3           #newVerticalOffset:F
    .end local v5           #rawX:F
    .end local v6           #rawY:F
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/Editor$HandleView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    .line 3797
    .local v7, result:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    goto :goto_1

    .line 3799
    :pswitch_0
    iget v8, p0, Landroid/widget/Editor$SelectionStartHandleView;->mPositionY:I

    iget v9, p0, Landroid/widget/Editor$SelectionStartHandleView;->mLastParentY:I

    add-int/2addr v8, v9

    iget-object v9, p0, Landroid/widget/Editor$SelectionStartHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    add-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    sub-float v4, v8, v9

    .line 3800
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionStartHandleView;->dismissActionPopupWindow()V

    goto :goto_1

    .line 3803
    :pswitch_1
    iget-object v8, p0, Landroid/widget/Editor$SelectionStartHandleView;->mActionPopupWindow:Landroid/widget/Editor$ActionPopupWindow;

    if-eqz v8, :cond_3

    iget-object v8, p0, Landroid/widget/Editor$SelectionStartHandleView;->mActionPopupWindow:Landroid/widget/Editor$ActionPopupWindow;

    iget v9, p0, Landroid/widget/Editor$SelectionStartHandleView;->mCursorType:I

    invoke-virtual {v8, v9}, Landroid/widget/Editor$ActionPopupWindow;->updatePositionFlag(I)V

    .line 3804
    :cond_3
    const/16 v8, 0xc8

    invoke-virtual {p0, v8}, Landroid/widget/Editor$SelectionStartHandleView;->showActionPopupWindow(I)V

    goto :goto_1

    .line 3797
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
    .line 3845
    invoke-super {p0, p1, p2}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3846
    iget-object v2, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    iget v3, v3, Landroid/widget/TextView;->mTextSelectHandleRes:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3847
    .local v0, handle:Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 3848
    .local v1, line:I
    iget-object v2, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Landroid/widget/Editor$SelectionStartHandleView;->mPositionY:I

    .line 3851
    iget v2, p0, Landroid/widget/Editor$SelectionStartHandleView;->mPositionY:I

    iget-object v3, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Landroid/widget/Editor$SelectionStartHandleView;->mPositionY:I

    .line 3852
    const/4 v2, 0x1

    .line 3854
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

    .line 3860
    iget-object v2, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    .line 3863
    .local v0, offset:I
    iget-object v2, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .line 3864
    .local v1, selectionEnd:I
    if-lt v0, v1, :cond_0

    add-int/lit8 v2, v1, -0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3866
    :cond_0
    invoke-virtual {p0, v0, v3}, Landroid/widget/Editor$SelectionStartHandleView;->positionAtCursorOffset(IZ)Z

    .line 3867
    return-void
.end method

.method public updateSelection(I)V
    .locals 2
    .parameter "offset"

    .prologue
    .line 3822
    iget-object v0, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    invoke-static {v0, p1, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 3824
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionStartHandleView;->updateDrawable()V

    .line 3825
    return-void
.end method
