.class public Lyi/widget/CheckableItemLayout;
.super Landroid/widget/RelativeLayout;
.source "CheckableItemLayout.java"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field private static final CHECKED_STATE_SET:[I = null

.field public static final CHOICE_MODE_MULTIPLE:I = 0x2

.field public static final CHOICE_MODE_NONE:I = 0x0

.field public static final CHOICE_MODE_SINGLE:I = 0x1

.field public static final LAYOUT_MODE_GRID:I = 0x4

.field public static final LAYOUT_MODE_LIST:I = 0x3


# instance fields
.field private mBasePaddingRight:I

.field protected mCBExtraPaddingBottom:I

.field protected mCBExtraPaddingLeft:I

.field protected mCBExtraPaddingRight:I

.field protected mCBExtraPaddingTop:I

.field private mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

.field private mCheckMarkResource:I

.field private mCheckMarkWidth:I

.field private mChecked:Z

.field private mChoiceMode:I

.field private mLayoutMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 82
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, #attr@state_checked#t

    aput v2, v0, v1

    sput-object v0, Lyi/widget/CheckableItemLayout;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lyi/widget/CheckableItemLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lyi/widget/CheckableItemLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lyi/widget/CheckableItemLayout;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    .line 31
    const/16 v0, 0xc

    iput v0, p0, Lyi/widget/CheckableItemLayout;->mBasePaddingRight:I

    .line 33
    const/4 v0, 0x3

    iput v0, p0, Lyi/widget/CheckableItemLayout;->mLayoutMode:I

    .line 38
    iput v1, p0, Lyi/widget/CheckableItemLayout;->mCBExtraPaddingLeft:I

    .line 39
    iput v1, p0, Lyi/widget/CheckableItemLayout;->mCBExtraPaddingRight:I

    .line 40
    iput v1, p0, Lyi/widget/CheckableItemLayout;->mCBExtraPaddingTop:I

    .line 41
    iput v1, p0, Lyi/widget/CheckableItemLayout;->mCBExtraPaddingBottom:I

    .line 55
    iput v1, p0, Lyi/widget/CheckableItemLayout;->mChoiceMode:I

    .line 97
    invoke-virtual {p0, v1}, Lyi/widget/CheckableItemLayout;->setWillNotDraw(Z)V

    .line 98
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    .line 403
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 405
    iget-object v0, p0, Lyi/widget/CheckableItemLayout;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    .line 406
    .local v0, checkMarkDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 407
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 408
    .local v1, height:I
    iget v4, p0, Lyi/widget/CheckableItemLayout;->mLayoutMode:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 409
    iget v4, p0, Lyi/widget/CheckableItemLayout;->mCBExtraPaddingTop:I

    invoke-virtual {p0}, Lyi/widget/CheckableItemLayout;->getHeight()I

    move-result v5

    sub-int/2addr v5, v1

    iget v6, p0, Lyi/widget/CheckableItemLayout;->mCBExtraPaddingTop:I

    sub-int/2addr v5, v6

    iget v6, p0, Lyi/widget/CheckableItemLayout;->mCBExtraPaddingBottom:I

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int v3, v4, v5

    .line 412
    .local v3, top:I
    invoke-virtual {p0}, Lyi/widget/CheckableItemLayout;->getWidth()I

    move-result v2

    .line 417
    .local v2, right:I
    iget v4, p0, Lyi/widget/CheckableItemLayout;->mCheckMarkWidth:I

    sub-int v4, v2, v4

    iget v5, p0, Lyi/widget/CheckableItemLayout;->mBasePaddingRight:I

    sub-int/2addr v4, v5

    iget v5, p0, Lyi/widget/CheckableItemLayout;->mCBExtraPaddingRight:I

    sub-int/2addr v4, v5

    iget v5, p0, Lyi/widget/CheckableItemLayout;->mBasePaddingRight:I

    sub-int v5, v2, v5

    iget v6, p0, Lyi/widget/CheckableItemLayout;->mCBExtraPaddingRight:I

    sub-int/2addr v5, v6

    add-int v6, v3, v1

    invoke-virtual {v0, v4, v3, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 438
    .end local v2           #right:I
    .end local v3           #top:I
    :goto_0
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 441
    .end local v1           #height:I
    :cond_0
    return-void

    .line 432
    .restart local v1       #height:I
    :cond_1
    invoke-virtual {p0}, Lyi/widget/CheckableItemLayout;->getWidth()I

    move-result v4

    iget v5, p0, Lyi/widget/CheckableItemLayout;->mCheckMarkWidth:I

    sub-int/2addr v4, v5

    const/4 v5, 0x0

    invoke-virtual {p0}, Lyi/widget/CheckableItemLayout;->getWidth()I

    move-result v6

    invoke-virtual {v0, v4, v5, v6, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 393
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    .line 394
    .local v0, populated:Z
    if-nez v0, :cond_0

    .line 395
    iget-boolean v1, p0, Lyi/widget/CheckableItemLayout;->mChecked:Z

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    .line 397
    :cond_0
    return v0
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 380
    invoke-super {p0}, Landroid/widget/RelativeLayout;->drawableStateChanged()V

    .line 381
    iget-object v1, p0, Lyi/widget/CheckableItemLayout;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 382
    invoke-virtual {p0}, Lyi/widget/CheckableItemLayout;->getDrawableState()[I

    move-result-object v0

    .line 385
    .local v0, myDrawableState:[I
    iget-object v1, p0, Lyi/widget/CheckableItemLayout;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 387
    invoke-virtual {p0}, Lyi/widget/CheckableItemLayout;->invalidate()V

    .line 389
    .end local v0           #myDrawableState:[I
    :cond_0
    return-void
.end method

.method public getChoiceMode()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lyi/widget/CheckableItemLayout;->mChoiceMode:I

    return v0
.end method

.method public isChecked()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 171
    iget-boolean v0, p0, Lyi/widget/CheckableItemLayout;->mChecked:Z

    return v0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2
    .parameter "extraSpace"

    .prologue
    .line 371
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/RelativeLayout;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 372
    .local v0, drawableState:[I
    invoke-virtual {p0}, Lyi/widget/CheckableItemLayout;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 373
    sget-object v1, Lyi/widget/CheckableItemLayout;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Lyi/widget/CheckableItemLayout;->mergeDrawableStates([I[I)[I

    .line 375
    :cond_0
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 366
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 367
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 354
    iget-object v0, p0, Lyi/widget/CheckableItemLayout;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    .line 355
    .local v0, checkMarkDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    iget v1, p0, Lyi/widget/CheckableItemLayout;->mLayoutMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 356
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lyi/widget/CheckableItemLayout;->mCheckMarkWidth:I

    .line 357
    iget v1, p0, Lyi/widget/CheckableItemLayout;->mCheckMarkWidth:I

    iget v2, p0, Lyi/widget/CheckableItemLayout;->mBasePaddingRight:I

    add-int/2addr v1, v2

    iput v1, p0, Lyi/widget/CheckableItemLayout;->mPaddingRight:I

    .line 361
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 362
    return-void

    .line 359
    :cond_0
    iget v1, p0, Lyi/widget/CheckableItemLayout;->mBasePaddingRight:I

    iput v1, p0, Lyi/widget/CheckableItemLayout;->mPaddingRight:I

    goto :goto_0
.end method

.method public setCheckBoxExtraPadding(IIII)V
    .locals 2
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 328
    const/4 v0, 0x0

    .line 330
    .local v0, changed:Z
    iget v1, p0, Lyi/widget/CheckableItemLayout;->mCBExtraPaddingLeft:I

    if-eq v1, p1, :cond_0

    .line 331
    const/4 v0, 0x1

    .line 332
    iput p1, p0, Lyi/widget/CheckableItemLayout;->mCBExtraPaddingLeft:I

    .line 334
    :cond_0
    iget v1, p0, Lyi/widget/CheckableItemLayout;->mCBExtraPaddingTop:I

    if-eq v1, p2, :cond_1

    .line 335
    const/4 v0, 0x1

    .line 336
    iput p2, p0, Lyi/widget/CheckableItemLayout;->mCBExtraPaddingTop:I

    .line 338
    :cond_1
    iget v1, p0, Lyi/widget/CheckableItemLayout;->mCBExtraPaddingRight:I

    if-eq v1, p3, :cond_2

    .line 339
    const/4 v0, 0x1

    .line 340
    iput p3, p0, Lyi/widget/CheckableItemLayout;->mCBExtraPaddingRight:I

    .line 342
    :cond_2
    iget v1, p0, Lyi/widget/CheckableItemLayout;->mCBExtraPaddingBottom:I

    if-eq v1, p4, :cond_3

    .line 343
    const/4 v0, 0x1

    .line 344
    iput p4, p0, Lyi/widget/CheckableItemLayout;->mCBExtraPaddingBottom:I

    .line 347
    :cond_3
    if-eqz v0, :cond_4

    .line 348
    invoke-virtual {p0}, Lyi/widget/CheckableItemLayout;->requestLayout()V

    .line 350
    :cond_4
    return-void
.end method

.method public setCheckMarkDrawable(I)V
    .locals 3
    .parameter "resid"

    .prologue
    .line 194
    if-eqz p1, :cond_0

    iget v1, p0, Lyi/widget/CheckableItemLayout;->mCheckMarkResource:I

    if-ne p1, v1, :cond_0

    .line 205
    :goto_0
    return-void

    .line 198
    :cond_0
    iput p1, p0, Lyi/widget/CheckableItemLayout;->mCheckMarkResource:I

    .line 200
    const/4 v0, 0x0

    .line 201
    .local v0, d:Landroid/graphics/drawable/Drawable;
    iget v1, p0, Lyi/widget/CheckableItemLayout;->mCheckMarkResource:I

    if-eqz v1, :cond_1

    .line 202
    invoke-virtual {p0}, Lyi/widget/CheckableItemLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lyi/widget/CheckableItemLayout;->mCheckMarkResource:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 204
    :cond_1
    invoke-virtual {p0, v0}, Lyi/widget/CheckableItemLayout;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "d"

    .prologue
    const/4 v1, 0x0

    .line 272
    iget-object v0, p0, Lyi/widget/CheckableItemLayout;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lyi/widget/CheckableItemLayout;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 274
    iget-object v0, p0, Lyi/widget/CheckableItemLayout;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lyi/widget/CheckableItemLayout;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 276
    :cond_0
    if-eqz p1, :cond_2

    .line 277
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 278
    invoke-virtual {p0}, Lyi/widget/CheckableItemLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 279
    sget-object v0, Lyi/widget/CheckableItemLayout;->CHECKED_STATE_SET:[I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 282
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lyi/widget/CheckableItemLayout;->mCheckMarkWidth:I

    .line 283
    iget v0, p0, Lyi/widget/CheckableItemLayout;->mCheckMarkWidth:I

    iget v1, p0, Lyi/widget/CheckableItemLayout;->mBasePaddingRight:I

    add-int/2addr v0, v1

    iput v0, p0, Lyi/widget/CheckableItemLayout;->mPaddingRight:I

    .line 284
    invoke-virtual {p0}, Lyi/widget/CheckableItemLayout;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 288
    :goto_1
    iput-object p1, p0, Lyi/widget/CheckableItemLayout;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    .line 289
    invoke-virtual {p0}, Lyi/widget/CheckableItemLayout;->requestLayout()V

    .line 290
    invoke-virtual {p0}, Lyi/widget/CheckableItemLayout;->invalidate()V

    .line 311
    return-void

    :cond_1
    move v0, v1

    .line 278
    goto :goto_0

    .line 286
    :cond_2
    iget v0, p0, Lyi/widget/CheckableItemLayout;->mBasePaddingRight:I

    iput v0, p0, Lyi/widget/CheckableItemLayout;->mPaddingRight:I

    goto :goto_1
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 180
    iget-boolean v0, p0, Lyi/widget/CheckableItemLayout;->mChecked:Z

    if-eq v0, p1, :cond_0

    .line 181
    iput-boolean p1, p0, Lyi/widget/CheckableItemLayout;->mChecked:Z

    .line 182
    invoke-virtual {p0}, Lyi/widget/CheckableItemLayout;->refreshDrawableState()V

    .line 184
    :cond_0
    return-void
.end method

.method public setChoiceMode(I)V
    .locals 5
    .parameter "choiceMode"

    .prologue
    const/4 v4, 0x1

    .line 119
    iput p1, p0, Lyi/widget/CheckableItemLayout;->mChoiceMode:I

    .line 121
    const/4 v0, 0x0

    .line 129
    .local v0, d:Landroid/graphics/drawable/Drawable;
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 130
    .local v1, outValue:Landroid/util/TypedValue;
    iget v2, p0, Lyi/widget/CheckableItemLayout;->mChoiceMode:I

    if-ne v2, v4, :cond_2

    .line 131
    invoke-virtual {p0}, Lyi/widget/CheckableItemLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, #attr@listChoiceIndicatorSingle#t

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 132
    if-eqz v1, :cond_1

    iget v2, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v2, :cond_1

    .line 133
    invoke-virtual {p0}, Lyi/widget/CheckableItemLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 148
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lyi/widget/CheckableItemLayout;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 149
    return-void

    .line 135
    :cond_1
    invoke-virtual {p0}, Lyi/widget/CheckableItemLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x5080146

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 137
    :cond_2
    iget v2, p0, Lyi/widget/CheckableItemLayout;->mChoiceMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 138
    invoke-virtual {p0}, Lyi/widget/CheckableItemLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, #attr@listChoiceIndicatorMultiple#t

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 139
    if-eqz v1, :cond_3

    iget v2, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v2, :cond_3

    .line 140
    invoke-virtual {p0}, Lyi/widget/CheckableItemLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 142
    :cond_3
    invoke-virtual {p0}, Lyi/widget/CheckableItemLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x5080043

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 144
    :cond_4
    iget v2, p0, Lyi/widget/CheckableItemLayout;->mChoiceMode:I

    if-nez v2, :cond_0

    .line 145
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLayoutMode(I)V
    .locals 1
    .parameter "layoutMode"

    .prologue
    const/4 v0, 0x4

    .line 158
    if-ne p1, v0, :cond_0

    .line 159
    iput v0, p0, Lyi/widget/CheckableItemLayout;->mLayoutMode:I

    .line 163
    :goto_0
    return-void

    .line 161
    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lyi/widget/CheckableItemLayout;->mLayoutMode:I

    goto :goto_0
.end method

.method public setPadding(IIII)V
    .locals 1
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 315
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 316
    iget v0, p0, Lyi/widget/CheckableItemLayout;->mPaddingRight:I

    iput v0, p0, Lyi/widget/CheckableItemLayout;->mBasePaddingRight:I

    .line 317
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 166
    iget-boolean v0, p0, Lyi/widget/CheckableItemLayout;->mChecked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lyi/widget/CheckableItemLayout;->setChecked(Z)V

    .line 167
    return-void

    .line 166
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
