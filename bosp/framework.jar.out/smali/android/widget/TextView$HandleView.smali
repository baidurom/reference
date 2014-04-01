.class abstract Landroid/widget/TextView$HandleView;
.super Landroid/view/View;
.source "TextView.java"

# interfaces
.implements Landroid/widget/TextView$TextViewPositionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "HandleView"
.end annotation


# static fields
.field public static final CENTER:I = 0x1

.field static final DELAY_BEFORE_SEARCH_ACTION:I = 0xc8

.field public static final END:I = 0x2

.field private static final HISTORY_SIZE:I = 0x5

.field public static final START:I = 0x0

.field private static final TOUCH_UP_FILTER_DELAY_AFTER:I = 0x96

.field private static final TOUCH_UP_FILTER_DELAY_BEFORE:I = 0x15e


# instance fields
.field private mActionPopupShower:Ljava/lang/Runnable;

.field protected mActionPopupWindow:Landroid/widget/TextView$ActionPopupWindow;

.field private final mContainer:Landroid/widget/PopupWindow;

.field protected mCursorType:I

.field protected mDrawable:Landroid/graphics/drawable/Drawable;

.field protected mDrawableLtr:Landroid/graphics/drawable/Drawable;

.field protected mDrawableRtl:Landroid/graphics/drawable/Drawable;

.field protected mHotspotX:I

.field protected mIdealVerticalOffset:F

.field private mIsDragging:Z

.field protected mLastParentX:I

.field protected mLastParentY:I

.field private mNumberPreviousOffsets:I

.field private mPositionHasChanged:Z

.field protected mPositionX:I

.field protected mPositionY:I

.field private mPreviousOffset:I

.field private mPreviousOffsetIndex:I

.field private final mPreviousOffsets:[I

.field private final mPreviousOffsetsTimes:[J

.field protected mTouchOffsetY:F

.field protected mTouchToWindowOffsetX:F

.field protected mTouchToWindowOffsetY:F

.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 8
    .parameter
    .parameter "drawableLtr"
    .parameter "drawableRtl"

    .prologue
    const/4 v4, 0x5

    const/4 v7, 0x1

    const/4 v3, -0x1

    const/4 v6, 0x0

    .line 10940
    iput-object p1, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    .line 10941
    #getter for: Landroid/widget/TextView;->mContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/widget/TextView;->access$6900(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 10927
    iput v3, p0, Landroid/widget/TextView$HandleView;->mPreviousOffset:I

    .line 10929
    iput-boolean v7, p0, Landroid/widget/TextView$HandleView;->mPositionHasChanged:Z

    .line 10936
    iput v3, p0, Landroid/widget/TextView$HandleView;->mCursorType:I

    .line 10976
    new-array v2, v4, [J

    iput-object v2, p0, Landroid/widget/TextView$HandleView;->mPreviousOffsetsTimes:[J

    .line 10977
    new-array v2, v4, [I

    iput-object v2, p0, Landroid/widget/TextView$HandleView;->mPreviousOffsets:[I

    .line 10978
    iput v6, p0, Landroid/widget/TextView$HandleView;->mPreviousOffsetIndex:I

    .line 10979
    iput v6, p0, Landroid/widget/TextView$HandleView;->mNumberPreviousOffsets:I

    .line 10942
    new-instance v2, Landroid/widget/PopupWindow;

    #getter for: Landroid/widget/TextView;->mContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/widget/TextView;->access$7000(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const v5, #attr@textSelectHandleWindowStyle#t

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Landroid/widget/TextView$HandleView;->mContainer:Landroid/widget/PopupWindow;

    .line 10944
    iget-object v2, p0, Landroid/widget/TextView$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v7}, Landroid/widget/PopupWindow;->setSplitTouchEnabled(Z)V

    .line 10945
    iget-object v2, p0, Landroid/widget/TextView$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 10946
    iget-object v2, p0, Landroid/widget/TextView$HandleView;->mContainer:Landroid/widget/PopupWindow;

    const/16 v3, 0x3ea

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 10947
    iget-object v2, p0, Landroid/widget/TextView$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v2, p0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 10949
    iput-object p2, p0, Landroid/widget/TextView$HandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    .line 10950
    iput-object p3, p0, Landroid/widget/TextView$HandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    .line 10952
    invoke-virtual {p0}, Landroid/widget/TextView$HandleView;->updateDrawable()V

    .line 10955
    #getter for: Landroid/widget/TextView;->mContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/widget/TextView;->access$7100(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 10956
    .local v0, density:F
    float-to-int v2, v0

    mul-int/lit8 v1, v2, 0x1e

    .line 10959
    .local v1, handleHeight:I
    const v2, -0x41666666

    int-to-float v3, v1

    mul-float/2addr v2, v3

    iput v2, p0, Landroid/widget/TextView$HandleView;->mTouchOffsetY:F

    .line 10960
    const v2, 0x3f333333

    int-to-float v3, v1

    mul-float/2addr v2, v3

    iput v2, p0, Landroid/widget/TextView$HandleView;->mIdealVerticalOffset:F

    .line 10961
    return-void
.end method

.method private addPositionToTouchUpFilter(I)V
    .locals 4
    .parameter "offset"

    .prologue
    .line 10987
    iget v0, p0, Landroid/widget/TextView$HandleView;->mPreviousOffsetIndex:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x5

    iput v0, p0, Landroid/widget/TextView$HandleView;->mPreviousOffsetIndex:I

    .line 10988
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->mPreviousOffsets:[I

    iget v1, p0, Landroid/widget/TextView$HandleView;->mPreviousOffsetIndex:I

    aput p1, v0, v1

    .line 10989
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->mPreviousOffsetsTimes:[J

    iget v1, p0, Landroid/widget/TextView$HandleView;->mPreviousOffsetIndex:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 10990
    iget v0, p0, Landroid/widget/TextView$HandleView;->mNumberPreviousOffsets:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/TextView$HandleView;->mNumberPreviousOffsets:I

    .line 10991
    return-void
.end method

.method private filterOnTouchUp()V
    .locals 9

    .prologue
    .line 10994
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 10995
    .local v3, now:J
    const/4 v0, 0x0

    .line 10996
    .local v0, i:I
    iget v2, p0, Landroid/widget/TextView$HandleView;->mPreviousOffsetIndex:I

    .line 10997
    .local v2, index:I
    iget v5, p0, Landroid/widget/TextView$HandleView;->mNumberPreviousOffsets:I

    const/4 v6, 0x5

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 10998
    .local v1, iMax:I
    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v5, p0, Landroid/widget/TextView$HandleView;->mPreviousOffsetsTimes:[J

    aget-wide v5, v5, v2

    sub-long v5, v3, v5

    const-wide/16 v7, 0x96

    cmp-long v5, v5, v7

    if-gez v5, :cond_0

    .line 10999
    add-int/lit8 v0, v0, 0x1

    .line 11000
    iget v5, p0, Landroid/widget/TextView$HandleView;->mPreviousOffsetIndex:I

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, 0x5

    rem-int/lit8 v2, v5, 0x5

    goto :goto_0

    .line 11003
    :cond_0
    if-lez v0, :cond_1

    if-ge v0, v1, :cond_1

    iget-object v5, p0, Landroid/widget/TextView$HandleView;->mPreviousOffsetsTimes:[J

    aget-wide v5, v5, v2

    sub-long v5, v3, v5

    const-wide/16 v7, 0x15e

    cmp-long v5, v5, v7

    if-lez v5, :cond_1

    .line 11005
    iget-object v5, p0, Landroid/widget/TextView$HandleView;->mPreviousOffsets:[I

    aget v5, v5, v2

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Landroid/widget/TextView$HandleView;->positionAtCursorOffset(IZ)Z

    .line 11007
    :cond_1
    return-void
.end method

.method private startTouchUpFilter(I)V
    .locals 1
    .parameter "offset"

    .prologue
    .line 10982
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/TextView$HandleView;->mNumberPreviousOffsets:I

    .line 10983
    invoke-direct {p0, p1}, Landroid/widget/TextView$HandleView;->addPositionToTouchUpFilter(I)V

    .line 10984
    return-void
.end method


# virtual methods
.method protected dismiss()V
    .locals 1

    .prologue
    .line 11031
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView$HandleView;->mIsDragging:Z

    .line 11032
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 11034
    return-void
.end method

.method protected dismissActionPopupWindow()V
    .locals 2

    .prologue
    .line 11073
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->mActionPopupShower:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 11074
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$HandleView;->mActionPopupShower:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 11076
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->mActionPopupWindow:Landroid/widget/TextView$ActionPopupWindow;

    if-eqz v0, :cond_1

    .line 11077
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->mActionPopupWindow:Landroid/widget/TextView$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/widget/TextView$ActionPopupWindow;->dismiss()V

    .line 11079
    :cond_1
    return-void
.end method

.method public abstract getCurrentCursorOffset()I
.end method

.method protected abstract getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 11037
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mMagnifierController:Landroid/widget/TextView$MagnifierController;
    invoke-static {v0}, Landroid/widget/TextView;->access$7200(Landroid/widget/TextView;)Landroid/widget/TextView$MagnifierController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 11038
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mMagnifierController:Landroid/widget/TextView$MagnifierController;
    invoke-static {v0}, Landroid/widget/TextView;->access$7200(Landroid/widget/TextView;)Landroid/widget/TextView$MagnifierController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView$MagnifierController;->dismiss()V

    .line 11040
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView$HandleView;->hideActionPopupWindow()V

    .line 11041
    invoke-virtual {p0}, Landroid/widget/TextView$HandleView;->dismiss()V

    .line 11043
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->getPositionListener()Landroid/widget/TextView$PositionListener;
    invoke-static {v0}, Landroid/widget/TextView;->access$2400(Landroid/widget/TextView;)Landroid/widget/TextView$PositionListener;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/TextView$PositionListener;->removeSubscriber(Landroid/widget/TextView$TextViewPositionListener;)V

    .line 11044
    return-void
.end method

.method protected hideActionPopupWindow()V
    .locals 2

    .prologue
    .line 11063
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->mActionPopupShower:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 11064
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$HandleView;->mActionPopupShower:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 11066
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->mActionPopupWindow:Landroid/widget/TextView$ActionPopupWindow;

    if-eqz v0, :cond_1

    .line 11067
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->mActionPopupWindow:Landroid/widget/TextView$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/widget/TextView$ActionPopupWindow;->hide()V

    .line 11069
    :cond_1
    return-void
.end method

.method public isDragging()Z
    .locals 1

    .prologue
    .line 11245
    iget-boolean v0, p0, Landroid/widget/TextView$HandleView;->mIsDragging:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 11083
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method protected isVisible()Z
    .locals 3

    .prologue
    .line 11088
    iget-boolean v0, p0, Landroid/widget/TextView$HandleView;->mIsDragging:Z

    if-eqz v0, :cond_0

    .line 11089
    const/4 v0, 0x1

    .line 11096
    :goto_0
    return v0

    .line 11092
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isInBatchEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11093
    const/4 v0, 0x0

    goto :goto_0

    .line 11096
    :cond_1
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    iget v1, p0, Landroid/widget/TextView$HandleView;->mPositionX:I

    iget v2, p0, Landroid/widget/TextView$HandleView;->mHotspotX:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/widget/TextView$HandleView;->mPositionY:I

    #calls: Landroid/widget/TextView;->isPositionVisible(II)Z
    invoke-static {v0, v1, v2}, Landroid/widget/TextView;->access$6600(Landroid/widget/TextView;II)Z

    move-result v0

    goto :goto_0
.end method

.method public offsetHasBeenChanged()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 11010
    iget v1, p0, Landroid/widget/TextView$HandleView;->mNumberPreviousOffsets:I

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDetached()V
    .locals 0

    .prologue
    .line 11253
    invoke-virtual {p0}, Landroid/widget/TextView$HandleView;->hideActionPopupWindow()V

    .line 11254
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "c"

    .prologue
    const/4 v4, 0x0

    .line 11177
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Landroid/widget/TextView$HandleView;->mRight:I

    iget v2, p0, Landroid/widget/TextView$HandleView;->mLeft:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/TextView$HandleView;->mBottom:I

    iget v3, p0, Landroid/widget/TextView$HandleView;->mTop:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 11178
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 11179
    return-void
.end method

.method onHandleMoved()V
    .locals 0

    .prologue
    .line 11249
    invoke-virtual {p0}, Landroid/widget/TextView$HandleView;->dismissActionPopupWindow()V

    .line 11250
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 11015
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Landroid/widget/TextView$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView$HandleView;->setMeasuredDimension(II)V

    .line 11016
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "ev"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 11183
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 11241
    :cond_0
    :goto_0
    return v10

    .line 11185
    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/TextView$HandleView;->getCurrentCursorOffset()I

    move-result v8

    invoke-direct {p0, v8}, Landroid/widget/TextView$HandleView;->startTouchUpFilter(I)V

    .line 11186
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    iget v9, p0, Landroid/widget/TextView$HandleView;->mPositionX:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    iput v8, p0, Landroid/widget/TextView$HandleView;->mTouchToWindowOffsetX:F

    .line 11187
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    iget v9, p0, Landroid/widget/TextView$HandleView;->mPositionY:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    iput v8, p0, Landroid/widget/TextView$HandleView;->mTouchToWindowOffsetY:F

    .line 11189
    iget-object v8, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->getPositionListener()Landroid/widget/TextView$PositionListener;
    invoke-static {v8}, Landroid/widget/TextView;->access$2400(Landroid/widget/TextView;)Landroid/widget/TextView$PositionListener;

    move-result-object v4

    .line 11190
    .local v4, positionListener:Landroid/widget/TextView$PositionListener;
    invoke-virtual {v4}, Landroid/widget/TextView$PositionListener;->getPositionX()I

    move-result v8

    iput v8, p0, Landroid/widget/TextView$HandleView;->mLastParentX:I

    .line 11191
    invoke-virtual {v4}, Landroid/widget/TextView$PositionListener;->getPositionY()I

    move-result v8

    iput v8, p0, Landroid/widget/TextView$HandleView;->mLastParentY:I

    .line 11193
    iput-boolean v10, p0, Landroid/widget/TextView$HandleView;->mIsDragging:Z

    goto :goto_0

    .line 11198
    .end local v4           #positionListener:Landroid/widget/TextView$PositionListener;
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    .line 11199
    .local v6, rawX:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    .line 11202
    .local v7, rawY:F
    iget v8, p0, Landroid/widget/TextView$HandleView;->mTouchToWindowOffsetY:F

    iget v9, p0, Landroid/widget/TextView$HandleView;->mLastParentY:I

    int-to-float v9, v9

    sub-float v5, v8, v9

    .line 11203
    .local v5, previousVerticalOffset:F
    iget v8, p0, Landroid/widget/TextView$HandleView;->mPositionY:I

    int-to-float v8, v8

    sub-float v8, v7, v8

    iget v9, p0, Landroid/widget/TextView$HandleView;->mLastParentY:I

    int-to-float v9, v9

    sub-float v0, v8, v9

    .line 11205
    .local v0, currentVerticalOffset:F
    iget v8, p0, Landroid/widget/TextView$HandleView;->mIdealVerticalOffset:F

    cmpg-float v8, v5, v8

    if-gez v8, :cond_1

    .line 11206
    iget v8, p0, Landroid/widget/TextView$HandleView;->mIdealVerticalOffset:F

    invoke-static {v0, v8}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 11207
    .local v3, newVerticalOffset:F
    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 11212
    :goto_1
    iget v8, p0, Landroid/widget/TextView$HandleView;->mLastParentY:I

    int-to-float v8, v8

    add-float/2addr v8, v3

    iput v8, p0, Landroid/widget/TextView$HandleView;->mTouchToWindowOffsetY:F

    .line 11214
    iget v8, p0, Landroid/widget/TextView$HandleView;->mTouchToWindowOffsetX:F

    sub-float v8, v6, v8

    iget v9, p0, Landroid/widget/TextView$HandleView;->mHotspotX:I

    int-to-float v9, v9

    add-float v1, v8, v9

    .line 11215
    .local v1, newPosX:F
    iget v8, p0, Landroid/widget/TextView$HandleView;->mTouchToWindowOffsetY:F

    sub-float v8, v7, v8

    iget v9, p0, Landroid/widget/TextView$HandleView;->mTouchOffsetY:F

    add-float v2, v8, v9

    .line 11218
    .local v2, newPosY:F
    invoke-virtual {p0, v1, v2}, Landroid/widget/TextView$HandleView;->updatePosition(FF)V

    .line 11220
    iget-object v8, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mMagnifierController:Landroid/widget/TextView$MagnifierController;
    invoke-static {v8}, Landroid/widget/TextView;->access$7200(Landroid/widget/TextView;)Landroid/widget/TextView$MagnifierController;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 11221
    iget-object v8, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mMagnifierController:Landroid/widget/TextView$MagnifierController;
    invoke-static {v8}, Landroid/widget/TextView;->access$7200(Landroid/widget/TextView;)Landroid/widget/TextView$MagnifierController;

    move-result-object v8

    iget v9, p0, Landroid/widget/TextView$HandleView;->mCursorType:I

    invoke-virtual {v8, v9}, Landroid/widget/TextView$MagnifierController;->update(I)V

    goto/16 :goto_0

    .line 11209
    .end local v1           #newPosX:F
    .end local v2           #newPosY:F
    .end local v3           #newVerticalOffset:F
    :cond_1
    iget v8, p0, Landroid/widget/TextView$HandleView;->mIdealVerticalOffset:F

    invoke-static {v0, v8}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 11210
    .restart local v3       #newVerticalOffset:F
    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    goto :goto_1

    .line 11228
    .end local v0           #currentVerticalOffset:F
    .end local v3           #newVerticalOffset:F
    .end local v5           #previousVerticalOffset:F
    .end local v6           #rawX:F
    .end local v7           #rawY:F
    :pswitch_2
    invoke-direct {p0}, Landroid/widget/TextView$HandleView;->filterOnTouchUp()V

    .line 11229
    iput-boolean v9, p0, Landroid/widget/TextView$HandleView;->mIsDragging:Z

    .line 11231
    iget-object v8, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mMagnifierController:Landroid/widget/TextView$MagnifierController;
    invoke-static {v8}, Landroid/widget/TextView;->access$7200(Landroid/widget/TextView;)Landroid/widget/TextView$MagnifierController;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 11232
    iget-object v8, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mMagnifierController:Landroid/widget/TextView$MagnifierController;
    invoke-static {v8}, Landroid/widget/TextView;->access$7200(Landroid/widget/TextView;)Landroid/widget/TextView$MagnifierController;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView$MagnifierController;->hideDelayed()V

    goto/16 :goto_0

    .line 11238
    :pswitch_3
    iput-boolean v9, p0, Landroid/widget/TextView$HandleView;->mIsDragging:Z

    goto/16 :goto_0

    .line 11183
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected positionAtCursorOffset(IZ)Z
    .locals 6
    .parameter "offset"
    .parameter "parentScrolled"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 11107
    iget-object v5, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    iget-object v5, v5, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v5, :cond_1

    .line 11109
    iget-object v4, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->prepareCursorControllers()V
    invoke-static {v4}, Landroid/widget/TextView;->access$7400(Landroid/widget/TextView;)V

    .line 11137
    :cond_0
    :goto_0
    return v3

    .line 11113
    :cond_1
    iget v5, p0, Landroid/widget/TextView$HandleView;->mPreviousOffset:I

    if-ne p1, v5, :cond_2

    if-eqz p2, :cond_0

    .line 11114
    :cond_2
    invoke-virtual {p0, p1}, Landroid/widget/TextView$HandleView;->updateSelection(I)V

    .line 11115
    invoke-direct {p0, p1}, Landroid/widget/TextView$HandleView;->addPositionToTouchUpFilter(I)V

    .line 11116
    iget-object v3, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    iget-object v3, v3, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v3, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 11118
    .local v1, line:I
    iget-object v3, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    iget-object v3, v3, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v3, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v3

    const/high16 v5, 0x3f00

    sub-float/2addr v3, v5

    iget v5, p0, Landroid/widget/TextView$HandleView;->mHotspotX:I

    int-to-float v5, v5

    sub-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, p0, Landroid/widget/TextView$HandleView;->mPositionX:I

    .line 11119
    iget-object v3, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    iget-object v3, v3, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v3, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v3

    iput v3, p0, Landroid/widget/TextView$HandleView;->mPositionY:I

    .line 11121
    iget-object v3, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mSpacingMult:F
    invoke-static {v3}, Landroid/widget/TextView;->access$6400(Landroid/widget/TextView;)F

    move-result v3

    const/high16 v5, 0x3f80

    invoke-static {v3, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mSpacingAdd:F
    invoke-static {v3}, Landroid/widget/TextView;->access$6500(Landroid/widget/TextView;)F

    move-result v3

    const/4 v5, 0x0

    invoke-static {v3, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_4

    .line 11122
    :cond_3
    iget-object v3, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/widget/TextView;->access$7500(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 11123
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v5, 0x4080

    mul-float/2addr v3, v5

    float-to-int v2, v3

    .line 11125
    .local v2, offsetToBaseLine:I
    iget-object v3, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    iget-object v3, v3, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v3, v1}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v3

    add-int/2addr v3, v2

    iput v3, p0, Landroid/widget/TextView$HandleView;->mPositionY:I

    .line 11130
    .end local v0           #displayMetrics:Landroid/util/DisplayMetrics;
    .end local v2           #offsetToBaseLine:I
    :cond_4
    iget v3, p0, Landroid/widget/TextView$HandleView;->mPositionX:I

    iget-object v5, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->viewportToContentHorizontalOffset()I
    invoke-static {v5}, Landroid/widget/TextView;->access$2600(Landroid/widget/TextView;)I

    move-result v5

    add-int/2addr v3, v5

    iput v3, p0, Landroid/widget/TextView$HandleView;->mPositionX:I

    .line 11131
    iget v3, p0, Landroid/widget/TextView$HandleView;->mPositionY:I

    iget-object v5, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->viewportToContentVerticalOffset()I
    invoke-static {v5}, Landroid/widget/TextView;->access$2700(Landroid/widget/TextView;)I

    move-result v5

    add-int/2addr v3, v5

    iput v3, p0, Landroid/widget/TextView$HandleView;->mPositionY:I

    .line 11133
    iput p1, p0, Landroid/widget/TextView$HandleView;->mPreviousOffset:I

    .line 11134
    iput-boolean v4, p0, Landroid/widget/TextView$HandleView;->mPositionHasChanged:Z

    move v3, v4

    .line 11135
    goto/16 :goto_0
.end method

.method public show()V
    .locals 2

    .prologue
    .line 11019
    invoke-virtual {p0}, Landroid/widget/TextView$HandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11028
    :goto_0
    return-void

    .line 11021
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->getPositionListener()Landroid/widget/TextView$PositionListener;
    invoke-static {v0}, Landroid/widget/TextView;->access$2400(Landroid/widget/TextView;)Landroid/widget/TextView$PositionListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/widget/TextView$PositionListener;->addSubscriber(Landroid/widget/TextView$TextViewPositionListener;Z)V

    .line 11024
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/TextView$HandleView;->mPreviousOffset:I

    .line 11025
    invoke-virtual {p0}, Landroid/widget/TextView$HandleView;->getCurrentCursorOffset()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView$HandleView;->positionAtCursorOffset(IZ)Z

    .line 11027
    invoke-virtual {p0}, Landroid/widget/TextView$HandleView;->hideActionPopupWindow()V

    goto :goto_0
.end method

.method showActionPopupWindow(I)V
    .locals 4
    .parameter "delay"

    .prologue
    .line 11047
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->mActionPopupWindow:Landroid/widget/TextView$ActionPopupWindow;

    if-nez v0, :cond_0

    .line 11048
    new-instance v0, Landroid/widget/TextView$ActionPopupWindow;

    iget-object v1, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/widget/TextView$ActionPopupWindow;-><init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V

    iput-object v0, p0, Landroid/widget/TextView$HandleView;->mActionPopupWindow:Landroid/widget/TextView$ActionPopupWindow;

    .line 11050
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->mActionPopupShower:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    .line 11051
    new-instance v0, Landroid/widget/TextView$HandleView$1;

    invoke-direct {v0, p0}, Landroid/widget/TextView$HandleView$1;-><init>(Landroid/widget/TextView$HandleView;)V

    iput-object v0, p0, Landroid/widget/TextView$HandleView;->mActionPopupShower:Ljava/lang/Runnable;

    .line 11059
    :goto_0
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$HandleView;->mActionPopupShower:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 11060
    return-void

    .line 11057
    :cond_1
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$HandleView;->mActionPopupShower:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected updateDrawable()V
    .locals 3

    .prologue
    .line 10964
    invoke-virtual {p0}, Landroid/widget/TextView$HandleView;->getCurrentCursorOffset()I

    move-result v1

    .line 10965
    .local v1, offset:I
    iget-object v2, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    iget-object v2, v2, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2, v1}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v0

    .line 10966
    .local v0, isRtlCharAtOffset:Z
    if-eqz v0, :cond_0

    iget-object v2, p0, Landroid/widget/TextView$HandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    :goto_0
    iput-object v2, p0, Landroid/widget/TextView$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 10967
    iget-object v2, p0, Landroid/widget/TextView$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2, v0}, Landroid/widget/TextView$HandleView;->getHotspotX(Landroid/graphics/drawable/Drawable;Z)I

    move-result v2

    iput v2, p0, Landroid/widget/TextView$HandleView;->mHotspotX:I

    .line 10968
    return-void

    .line 10966
    :cond_0
    iget-object v2, p0, Landroid/widget/TextView$HandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public abstract updatePosition(FF)V
.end method

.method public updatePosition(IIZZ)V
    .locals 6
    .parameter "parentPositionX"
    .parameter "parentPositionY"
    .parameter "parentPositionChanged"
    .parameter "parentScrolled"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 11142
    invoke-virtual {p0}, Landroid/widget/TextView$HandleView;->getCurrentCursorOffset()I

    move-result v2

    invoke-virtual {p0, v2, p4}, Landroid/widget/TextView$HandleView;->positionAtCursorOffset(IZ)Z

    .line 11143
    if-nez p3, :cond_0

    iget-boolean v2, p0, Landroid/widget/TextView$HandleView;->mPositionHasChanged:Z

    if-eqz v2, :cond_5

    .line 11144
    :cond_0
    iget-boolean v2, p0, Landroid/widget/TextView$HandleView;->mIsDragging:Z

    if-eqz v2, :cond_3

    .line 11146
    iget v2, p0, Landroid/widget/TextView$HandleView;->mLastParentX:I

    if-ne p1, v2, :cond_1

    iget v2, p0, Landroid/widget/TextView$HandleView;->mLastParentY:I

    if-eq p2, v2, :cond_2

    .line 11147
    :cond_1
    iget v2, p0, Landroid/widget/TextView$HandleView;->mTouchToWindowOffsetX:F

    iget v3, p0, Landroid/widget/TextView$HandleView;->mLastParentX:I

    sub-int v3, p1, v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, p0, Landroid/widget/TextView$HandleView;->mTouchToWindowOffsetX:F

    .line 11148
    iget v2, p0, Landroid/widget/TextView$HandleView;->mTouchToWindowOffsetY:F

    iget v3, p0, Landroid/widget/TextView$HandleView;->mLastParentY:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, p0, Landroid/widget/TextView$HandleView;->mTouchToWindowOffsetY:F

    .line 11149
    iput p1, p0, Landroid/widget/TextView$HandleView;->mLastParentX:I

    .line 11150
    iput p2, p0, Landroid/widget/TextView$HandleView;->mLastParentY:I

    .line 11153
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView$HandleView;->onHandleMoved()V

    .line 11156
    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView$HandleView;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 11157
    iget v2, p0, Landroid/widget/TextView$HandleView;->mPositionX:I

    add-int v0, p1, v2

    .line 11158
    .local v0, positionX:I
    iget v2, p0, Landroid/widget/TextView$HandleView;->mPositionY:I

    add-int v1, p2, v2

    .line 11159
    .local v1, positionY:I
    invoke-virtual {p0}, Landroid/widget/TextView$HandleView;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 11160
    iget-object v2, p0, Landroid/widget/TextView$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v0, v1, v4, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 11171
    .end local v0           #positionX:I
    .end local v1           #positionY:I
    :cond_4
    :goto_0
    iput-boolean v5, p0, Landroid/widget/TextView$HandleView;->mPositionHasChanged:Z

    .line 11173
    :cond_5
    return-void

    .line 11162
    .restart local v0       #positionX:I
    .restart local v1       #positionY:I
    :cond_6
    iget-object v2, p0, Landroid/widget/TextView$HandleView;->mContainer:Landroid/widget/PopupWindow;

    iget-object v3, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v5, v0, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    .line 11166
    .end local v0           #positionX:I
    .end local v1           #positionY:I
    :cond_7
    invoke-virtual {p0}, Landroid/widget/TextView$HandleView;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 11167
    invoke-virtual {p0}, Landroid/widget/TextView$HandleView;->dismiss()V

    goto :goto_0
.end method

.method protected abstract updateSelection(I)V
.end method
