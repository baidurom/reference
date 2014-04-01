.class Landroid/widget/TextView$SelectionEndHandleView;
.super Landroid/widget/TextView$HandleView;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionEndHandleView"
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
    .line 11517
    iput-object p1, p0, Landroid/widget/TextView$SelectionEndHandleView;->this$0:Landroid/widget/TextView;

    .line 11518
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView$HandleView;-><init>(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 11519
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView$SelectionEndHandleView;->mCursorType:I

    .line 11520
    return-void
.end method


# virtual methods
.method public getCurrentCursorOffset()I
    .locals 1

    .prologue
    .line 11558
    iget-object v0, p0, Landroid/widget/TextView$SelectionEndHandleView;->this$0:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    return v0
.end method

.method protected getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
    .locals 1
    .parameter "drawable"
    .parameter "isRtlRun"

    .prologue
    .line 11524
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "ev"

    .prologue
    .line 11537
    invoke-super {p0, p1}, Landroid/widget/TextView$HandleView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 11539
    .local v0, result:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 11552
    :goto_0
    return v0

    .line 11541
    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/TextView$SelectionEndHandleView;->dismissActionPopupWindow()V

    goto :goto_0

    .line 11544
    :pswitch_1
    iget-object v1, p0, Landroid/widget/TextView$SelectionEndHandleView;->mActionPopupWindow:Landroid/widget/TextView$ActionPopupWindow;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView$SelectionEndHandleView;->mActionPopupWindow:Landroid/widget/TextView$ActionPopupWindow;

    iget v2, p0, Landroid/widget/TextView$SelectionEndHandleView;->mCursorType:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView$ActionPopupWindow;->updatePositionFlag(I)V

    .line 11545
    :cond_0
    const/16 v1, 0xc8

    invoke-virtual {p0, v1}, Landroid/widget/TextView$SelectionEndHandleView;->showActionPopupWindow(I)V

    goto :goto_0

    .line 11539
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setActionPopupWindow(Landroid/widget/TextView$ActionPopupWindow;)V
    .locals 0
    .parameter "actionPopupWindow"

    .prologue
    .line 11579
    iput-object p1, p0, Landroid/widget/TextView$SelectionEndHandleView;->mActionPopupWindow:Landroid/widget/TextView$ActionPopupWindow;

    .line 11580
    return-void
.end method

.method public updatePosition(FF)V
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 11569
    iget-object v2, p0, Landroid/widget/TextView$SelectionEndHandleView;->this$0:Landroid/widget/TextView;

    invoke-virtual {v2, p1, p2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    .line 11572
    .local v0, offset:I
    iget-object v2, p0, Landroid/widget/TextView$SelectionEndHandleView;->this$0:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 11573
    .local v1, selectionStart:I
    if-gt v0, v1, :cond_0

    add-int/lit8 v2, v1, 0x1

    iget-object v3, p0, Landroid/widget/TextView$SelectionEndHandleView;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/widget/TextView;->access$500(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 11575
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/widget/TextView$SelectionEndHandleView;->positionAtCursorOffset(IZ)Z

    .line 11576
    return-void
.end method

.method public updateSelection(I)V
    .locals 2
    .parameter "offset"

    .prologue
    .line 11563
    iget-object v0, p0, Landroid/widget/TextView$SelectionEndHandleView;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/widget/TextView;->access$500(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, Landroid/widget/TextView$SelectionEndHandleView;->this$0:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 11564
    invoke-virtual {p0}, Landroid/widget/TextView$SelectionEndHandleView;->updateDrawable()V

    .line 11565
    return-void
.end method
