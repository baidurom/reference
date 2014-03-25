.class public Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;
.super Landroid/widget/ViewFlipper;
.source "KeyguardSecurityViewFlipper.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper$LayoutParams;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "KeyguardSecurityViewFlipper"


# instance fields
.field private mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attr"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;->mTempRect:Landroid/graphics/Rect;

    .line 52
    return-void
.end method

.method private makeChildMeasureSpec(II)I
    .locals 3
    .parameter "maxSize"
    .parameter "childDimen"

    .prologue
    .line 232
    packed-switch p2, :pswitch_data_0

    .line 242
    const/high16 v0, 0x4000

    .line 243
    .local v0, mode:I
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 246
    .local v1, size:I
    :goto_0
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    return v2

    .line 234
    .end local v0           #mode:I
    .end local v1           #size:I
    :pswitch_0
    const/high16 v0, -0x8000

    .line 235
    .restart local v0       #mode:I
    move v1, p1

    .line 236
    .restart local v1       #size:I
    goto :goto_0

    .line 238
    .end local v0           #mode:I
    .end local v1           #size:I
    :pswitch_1
    const/high16 v0, 0x4000

    .line 239
    .restart local v0       #mode:I
    move v1, p1

    .line 240
    .restart local v1       #size:I
    goto :goto_0

    .line 232
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 164
    instance-of v0, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    return v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 169
    instance-of v0, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    check-cast p1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    .end local p1
    invoke-direct {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper$LayoutParams;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper$LayoutParams;)V

    :goto_0
    return-object v0

    .restart local p1
    :cond_0
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 174
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getCallback()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    .locals 2

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    move-result-object v0

    .line 127
    .local v0, ksv:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;->getCallback()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getSecurityView()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
    .locals 2

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;->getDisplayedChild()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 72
    .local v0, child:Landroid/view/View;
    instance-of v1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    if-eqz v1, :cond_0

    .line 73
    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    .line 75
    .end local v0           #child:Landroid/view/View;
    :goto_0
    return-object v0

    .restart local v0       #child:Landroid/view/View;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideBouncer(I)V
    .locals 5
    .parameter "duration"

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    move-result-object v0

    .line 153
    .local v0, active:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 154
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 155
    .local v1, child:Landroid/view/View;
    instance-of v4, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    if-eqz v4, :cond_0

    move-object v3, v1

    .line 156
    check-cast v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    .line 157
    .local v3, ksv:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
    if-ne v3, v0, :cond_1

    move v4, p1

    :goto_1
    invoke-interface {v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;->hideBouncer(I)V

    .line 153
    .end local v3           #ksv:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 157
    .restart local v3       #ksv:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 160
    .end local v1           #child:Landroid/view/View;
    .end local v3           #ksv:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
    :cond_2
    return-void
.end method

.method public needsInput()Z
    .locals 2

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    move-result-object v0

    .line 121
    .local v0, ksv:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;->needsInput()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 21
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    .line 179
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v17

    .line 180
    .local v17, widthMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    .line 190
    .local v9, heightMode:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v18

    .line 191
    .local v18, widthSize:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    .line 192
    .local v10, heightSize:I
    move/from16 v14, v18

    .line 193
    .local v14, maxWidth:I
    move v13, v10

    .line 194
    .local v13, maxHeight:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;->getChildCount()I

    move-result v6

    .line 195
    .local v6, count:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    if-ge v11, v6, :cond_2

    .line 196
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 197
    .local v3, child:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    .line 199
    .local v12, lp:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper$LayoutParams;
    iget v0, v12, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper$LayoutParams;->maxWidth:I

    move/from16 v19, v0

    if-lez v19, :cond_0

    iget v0, v12, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper$LayoutParams;->maxWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v0, v14, :cond_0

    .line 200
    iget v14, v12, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper$LayoutParams;->maxWidth:I

    .line 202
    :cond_0
    iget v0, v12, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper$LayoutParams;->maxHeight:I

    move/from16 v19, v0

    if-lez v19, :cond_1

    iget v0, v12, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper$LayoutParams;->maxHeight:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v0, v13, :cond_1

    .line 203
    iget v13, v12, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper$LayoutParams;->maxHeight:I

    .line 195
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 207
    .end local v3           #child:Landroid/view/View;
    .end local v12           #lp:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper$LayoutParams;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;->getPaddingLeft()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;->getPaddingRight()I

    move-result v20

    add-int v15, v19, v20

    .line 208
    .local v15, wPadding:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;->getPaddingTop()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;->getPaddingBottom()I

    move-result v20

    add-int v7, v19, v20

    .line 209
    .local v7, hPadding:I
    sub-int/2addr v14, v15

    .line 210
    sub-int/2addr v13, v7

    .line 212
    const/high16 v19, 0x4000

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    move/from16 v16, v18

    .line 213
    .local v16, width:I
    :goto_1
    const/high16 v19, 0x4000

    move/from16 v0, v19

    if-ne v9, v0, :cond_4

    move v8, v10

    .line 214
    .local v8, height:I
    :goto_2
    const/4 v11, 0x0

    :goto_3
    if-ge v11, v6, :cond_5

    .line 215
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 216
    .restart local v3       #child:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    .line 218
    .restart local v12       #lp:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper$LayoutParams;
    iget v0, v12, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper$LayoutParams;->width:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v14, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;->makeChildMeasureSpec(II)I

    move-result v5

    .line 219
    .local v5, childWidthSpec:I
    iget v0, v12, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper$LayoutParams;->height:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v13, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;->makeChildMeasureSpec(II)I

    move-result v4

    .line 221
    .local v4, childHeightSpec:I
    invoke-virtual {v3, v5, v4}, Landroid/view/View;->measure(II)V

    .line 223
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v19

    sub-int v20, v18, v15

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(II)I

    move-result v19

    move/from16 v0, v16

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 224
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v19

    sub-int v20, v10, v7

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(II)I

    move-result v19

    move/from16 v0, v19

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 214
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 212
    .end local v3           #child:Landroid/view/View;
    .end local v4           #childHeightSpec:I
    .end local v5           #childWidthSpec:I
    .end local v8           #height:I
    .end local v12           #lp:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper$LayoutParams;
    .end local v16           #width:I
    :cond_3
    const/16 v16, 0x0

    goto :goto_1

    .line 213
    .restart local v16       #width:I
    :cond_4
    const/4 v8, 0x0

    goto :goto_2

    .line 226
    .restart local v8       #height:I
    :cond_5
    add-int v19, v16, v15

    add-int v20, v8, v7

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;->setMeasuredDimension(II)V

    .line 227
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    move-result-object v0

    .line 105
    .local v0, ksv:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
    if-eqz v0, :cond_0

    .line 106
    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;->onPause()V

    .line 108
    :cond_0
    return-void
.end method

.method public onResume(I)V
    .locals 1
    .parameter "reason"

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    move-result-object v0

    .line 113
    .local v0, ksv:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
    if-eqz v0, :cond_0

    .line 114
    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;->onResume(I)V

    .line 116
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "ev"

    .prologue
    const/4 v3, 0x0

    .line 56
    invoke-super {p0, p1}, Landroid/widget/ViewFlipper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 57
    .local v2, result:Z
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v3, v3, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 58
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 59
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 60
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 61
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 62
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 63
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v2, :cond_2

    :cond_0
    const/4 v2, 0x1

    .line 64
    :goto_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    neg-int v4, v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 58
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v2, v3

    .line 63
    goto :goto_1

    .line 67
    .end local v0           #child:Landroid/view/View;
    :cond_3
    return v2
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    move-result-object v0

    .line 97
    .local v0, ksv:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
    if-eqz v0, :cond_0

    .line 98
    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;->reset()V

    .line 100
    :cond_0
    return-void
.end method

.method public setClipChildrenForNewEventView(Z)V
    .locals 0
    .parameter "clipChildren"

    .prologue
    .line 282
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;->setClipChildren(Z)V

    .line 283
    return-void
.end method

.method public setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    move-result-object v0

    .line 81
    .local v0, ksv:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
    if-eqz v0, :cond_0

    .line 82
    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;->setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V

    .line 84
    :cond_0
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 1
    .parameter "utils"

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    move-result-object v0

    .line 89
    .local v0, ksv:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
    if-eqz v0, :cond_0

    .line 90
    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    .line 92
    :cond_0
    return-void
.end method

.method public showBouncer(I)V
    .locals 5
    .parameter "duration"

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    move-result-object v0

    .line 141
    .local v0, active:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 142
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 143
    .local v1, child:Landroid/view/View;
    instance-of v4, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    if-eqz v4, :cond_0

    move-object v3, v1

    .line 144
    check-cast v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    .line 145
    .local v3, ksv:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
    if-ne v3, v0, :cond_1

    move v4, p1

    :goto_1
    invoke-interface {v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;->showBouncer(I)V

    .line 141
    .end local v3           #ksv:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 145
    .restart local v3       #ksv:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 148
    .end local v1           #child:Landroid/view/View;
    .end local v3           #ksv:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
    :cond_2
    return-void
.end method

.method public showUsabilityHint()V
    .locals 1

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    move-result-object v0

    .line 133
    .local v0, ksv:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
    if-eqz v0, :cond_0

    .line 134
    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;->showUsabilityHint()V

    .line 136
    :cond_0
    return-void
.end method
