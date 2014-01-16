.class public Lcom/android/internal/widget/RotarySelector;
.super Landroid/view/View;
.source "RotarySelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/RotarySelector$OnDialTriggerListener;
    }
.end annotation


# static fields
.field private static final ARROW_SCRUNCH_DIP:I = 0x6

.field private static final DBG:Z = false

.field private static final EDGE_PADDING_DIP:I = 0x9

.field private static final EDGE_TRIGGER_DIP:I = 0x64

.field public static final HORIZONTAL:I = 0x0

.field public static final LEFT_HANDLE_GRABBED:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "RotarySelector"

.field public static final NOTHING_GRABBED:I = 0x0

.field static final OUTER_ROTARY_RADIUS_DIP:I = 0x186

.field public static final RIGHT_HANDLE_GRABBED:I = 0x2

.field static final ROTARY_STROKE_WIDTH_DIP:I = 0x53

.field static final SNAP_BACK_ANIMATION_DURATION_MILLIS:I = 0x12c

.field static final SPIN_ANIMATION_DURATION_MILLIS:I = 0x320

.field public static final VERTICAL:I = 0x1

.field private static final VIBRATE_LONG:J = 0x14L

.field private static final VIBRATE_SHORT:J = 0x14L

.field private static final VISUAL_DEBUG:Z


# instance fields
.field private mAnimating:Z

.field private mAnimatingDeltaXEnd:I

.field private mAnimatingDeltaXStart:I

.field private mAnimationDuration:J

.field private mAnimationStartTime:J

.field private mArrowLongLeft:Landroid/graphics/Bitmap;

.field private mArrowLongRight:Landroid/graphics/Bitmap;

.field final mArrowMatrix:Landroid/graphics/Matrix;

.field private mArrowShortLeftAndRight:Landroid/graphics/Bitmap;

.field private mBackground:Landroid/graphics/Bitmap;

.field private mBackgroundHeight:I

.field private mBackgroundWidth:I

.field final mBgMatrix:Landroid/graphics/Matrix;

.field private mDensity:F

.field private mDimple:Landroid/graphics/Bitmap;

.field private mDimpleDim:Landroid/graphics/Bitmap;

.field private mDimpleSpacing:I

.field private mDimpleWidth:I

.field private mDimplesOfFling:I

.field private mEdgeTriggerThresh:I

.field private mGrabbedState:I

.field private final mInnerRadius:I

.field private mInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private mLeftHandleIcon:Landroid/graphics/Bitmap;

.field private mLeftHandleX:I

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mOnDialTriggerListener:Lcom/android/internal/widget/RotarySelector$OnDialTriggerListener;

.field private mOrientation:I

.field private final mOuterRadius:I

.field private mPaint:Landroid/graphics/Paint;

.field private mRightHandleIcon:Landroid/graphics/Bitmap;

.field private mRightHandleX:I

.field private mRotaryOffsetX:I

.field private mTriggered:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 164
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/RotarySelector;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 165
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x0

    .line 171
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    iput v4, p0, Lcom/android/internal/widget/RotarySelector;->mRotaryOffsetX:I

    .line 81
    iput-boolean v4, p0, Lcom/android/internal/widget/RotarySelector;->mAnimating:Z

    .line 89
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/internal/widget/RotarySelector;->mPaint:Landroid/graphics/Paint;

    .line 92
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Lcom/android/internal/widget/RotarySelector;->mBgMatrix:Landroid/graphics/Matrix;

    .line 93
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Lcom/android/internal/widget/RotarySelector;->mArrowMatrix:Landroid/graphics/Matrix;

    .line 98
    iput v4, p0, Lcom/android/internal/widget/RotarySelector;->mGrabbedState:I

    .line 107
    iput-boolean v4, p0, Lcom/android/internal/widget/RotarySelector;->mTriggered:Z

    .line 155
    iput v4, p0, Lcom/android/internal/widget/RotarySelector;->mDimplesOfFling:I

    .line 173
    sget-object v3, Lcom/android/internal/R$styleable;->RotarySelector:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 175
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/RotarySelector;->mOrientation:I

    .line 176
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 178
    invoke-virtual {p0}, Lcom/android/internal/widget/RotarySelector;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 179
    .local v2, r:Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    iput v3, p0, Lcom/android/internal/widget/RotarySelector;->mDensity:F

    .line 183
    const v3, 0x1080385

    invoke-direct {p0, v3}, Lcom/android/internal/widget/RotarySelector;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/RotarySelector;->mBackground:Landroid/graphics/Bitmap;

    .line 184
    const v3, 0x1080386

    invoke-direct {p0, v3}, Lcom/android/internal/widget/RotarySelector;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/RotarySelector;->mDimple:Landroid/graphics/Bitmap;

    .line 185
    const v3, 0x1080387

    invoke-direct {p0, v3}, Lcom/android/internal/widget/RotarySelector;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/RotarySelector;->mDimpleDim:Landroid/graphics/Bitmap;

    .line 187
    const v3, 0x108037d

    invoke-direct {p0, v3}, Lcom/android/internal/widget/RotarySelector;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/RotarySelector;->mArrowLongLeft:Landroid/graphics/Bitmap;

    .line 188
    const v3, 0x1080380

    invoke-direct {p0, v3}, Lcom/android/internal/widget/RotarySelector;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/RotarySelector;->mArrowLongRight:Landroid/graphics/Bitmap;

    .line 189
    const v3, 0x1080383

    invoke-direct {p0, v3}, Lcom/android/internal/widget/RotarySelector;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/RotarySelector;->mArrowShortLeftAndRight:Landroid/graphics/Bitmap;

    .line 191
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v4, 0x3f80

    invoke-direct {v3, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v3, p0, Lcom/android/internal/widget/RotarySelector;->mInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 193
    iget v3, p0, Lcom/android/internal/widget/RotarySelector;->mDensity:F

    const/high16 v4, 0x42c8

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/android/internal/widget/RotarySelector;->mEdgeTriggerThresh:I

    .line 195
    iget-object v3, p0, Lcom/android/internal/widget/RotarySelector;->mDimple:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/RotarySelector;->mDimpleWidth:I

    .line 197
    iget-object v3, p0, Lcom/android/internal/widget/RotarySelector;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/RotarySelector;->mBackgroundWidth:I

    .line 198
    iget-object v3, p0, Lcom/android/internal/widget/RotarySelector;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/RotarySelector;->mBackgroundHeight:I

    .line 199
    iget v3, p0, Lcom/android/internal/widget/RotarySelector;->mDensity:F

    const/high16 v4, 0x43c3

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/android/internal/widget/RotarySelector;->mOuterRadius:I

    .line 200
    const v3, 0x43998000

    iget v4, p0, Lcom/android/internal/widget/RotarySelector;->mDensity:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/android/internal/widget/RotarySelector;->mInnerRadius:I

    .line 202
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 203
    .local v1, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/android/internal/widget/RotarySelector;->mMinimumVelocity:I

    .line 204
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/RotarySelector;->mMaximumVelocity:I

    .line 205
    return-void
.end method

.method private dispatchTriggerEvent(I)V
    .locals 2
    .parameter "whichHandle"

    .prologue
    .line 711
    const-wide/16 v0, 0x14

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/RotarySelector;->vibrate(J)V

    .line 712
    iget-object v0, p0, Lcom/android/internal/widget/RotarySelector;->mOnDialTriggerListener:Lcom/android/internal/widget/RotarySelector$OnDialTriggerListener;

    if-eqz v0, :cond_0

    .line 713
    iget-object v0, p0, Lcom/android/internal/widget/RotarySelector;->mOnDialTriggerListener:Lcom/android/internal/widget/RotarySelector$OnDialTriggerListener;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/widget/RotarySelector$OnDialTriggerListener;->onDialTrigger(Landroid/view/View;I)V

    .line 715
    :cond_0
    return-void
.end method

.method private drawCentered(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V
    .locals 5
    .parameter "d"
    .parameter "c"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 690
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 691
    .local v1, w:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 693
    .local v0, h:I
    div-int/lit8 v2, v1, 0x2

    sub-int v2, p3, v2

    int-to-float v2, v2

    div-int/lit8 v3, v0, 0x2

    sub-int v3, p4, v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/internal/widget/RotarySelector;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 694
    return-void
.end method

.method private getBitmapFor(I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "resId"

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/android/internal/widget/RotarySelector;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private getYOnArc(IIII)I
    .locals 6
    .parameter "backgroundWidth"
    .parameter "innerRadius"
    .parameter "outerRadius"
    .parameter "x"

    .prologue
    .line 468
    sub-int v4, p3, p2

    div-int/lit8 v0, v4, 0x2

    .line 469
    .local v0, halfWidth:I
    add-int v1, p2, v0

    .line 472
    .local v1, middleRadius:I
    div-int/lit8 v4, p1, 0x2

    sub-int v2, v4, p4

    .line 475
    .local v2, triangleBottom:I
    mul-int v4, v1, v1

    mul-int v5, v2, v2

    sub-int/2addr v4, v5

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v3, v4

    .line 482
    .local v3, triangleY:I
    sub-int v4, v1, v3

    add-int/2addr v4, v0

    return v4
.end method

.method private isHoriz()Z
    .locals 1

    .prologue
    .line 235
    iget v0, p0, Lcom/android/internal/widget/RotarySelector;->mOrientation:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 771
    const-string v0, "RotarySelector"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    return-void
.end method

.method private reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 661
    iput-boolean v0, p0, Lcom/android/internal/widget/RotarySelector;->mAnimating:Z

    .line 662
    iput v0, p0, Lcom/android/internal/widget/RotarySelector;->mRotaryOffsetX:I

    .line 663
    iput v0, p0, Lcom/android/internal/widget/RotarySelector;->mDimplesOfFling:I

    .line 664
    invoke-direct {p0, v0}, Lcom/android/internal/widget/RotarySelector;->setGrabbedState(I)V

    .line 665
    iput-boolean v0, p0, Lcom/android/internal/widget/RotarySelector;->mTriggered:Z

    .line 666
    return-void
.end method

.method private setGrabbedState(I)V
    .locals 2
    .parameter "newState"

    .prologue
    .line 722
    iget v0, p0, Lcom/android/internal/widget/RotarySelector;->mGrabbedState:I

    if-eq p1, v0, :cond_0

    .line 723
    iput p1, p0, Lcom/android/internal/widget/RotarySelector;->mGrabbedState:I

    .line 724
    iget-object v0, p0, Lcom/android/internal/widget/RotarySelector;->mOnDialTriggerListener:Lcom/android/internal/widget/RotarySelector$OnDialTriggerListener;

    if-eqz v0, :cond_0

    .line 725
    iget-object v0, p0, Lcom/android/internal/widget/RotarySelector;->mOnDialTriggerListener:Lcom/android/internal/widget/RotarySelector$OnDialTriggerListener;

    iget v1, p0, Lcom/android/internal/widget/RotarySelector;->mGrabbedState:I

    invoke-interface {v0, p0, v1}, Lcom/android/internal/widget/RotarySelector$OnDialTriggerListener;->onGrabbedStateChange(Landroid/view/View;I)V

    .line 728
    :cond_0
    return-void
.end method

.method private startAnimation(III)V
    .locals 3
    .parameter "startX"
    .parameter "endX"
    .parameter "duration"

    .prologue
    const/4 v2, 0x0

    .line 609
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/RotarySelector;->mAnimating:Z

    .line 610
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/widget/RotarySelector;->mAnimationStartTime:J

    .line 611
    int-to-long v0, p3

    iput-wide v0, p0, Lcom/android/internal/widget/RotarySelector;->mAnimationDuration:J

    .line 612
    iput p1, p0, Lcom/android/internal/widget/RotarySelector;->mAnimatingDeltaXStart:I

    .line 613
    iput p2, p0, Lcom/android/internal/widget/RotarySelector;->mAnimatingDeltaXEnd:I

    .line 614
    invoke-direct {p0, v2}, Lcom/android/internal/widget/RotarySelector;->setGrabbedState(I)V

    .line 615
    iput v2, p0, Lcom/android/internal/widget/RotarySelector;->mDimplesOfFling:I

    .line 616
    invoke-virtual {p0}, Lcom/android/internal/widget/RotarySelector;->invalidate()V

    .line 617
    return-void
.end method

.method private startAnimationWithVelocity(III)V
    .locals 2
    .parameter "startX"
    .parameter "endX"
    .parameter "pixelsPerSecond"

    .prologue
    .line 620
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/RotarySelector;->mAnimating:Z

    .line 621
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/widget/RotarySelector;->mAnimationStartTime:J

    .line 622
    sub-int v0, p2, p1

    mul-int/lit16 v0, v0, 0x3e8

    div-int/2addr v0, p3

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/internal/widget/RotarySelector;->mAnimationDuration:J

    .line 623
    iput p1, p0, Lcom/android/internal/widget/RotarySelector;->mAnimatingDeltaXStart:I

    .line 624
    iput p2, p0, Lcom/android/internal/widget/RotarySelector;->mAnimatingDeltaXEnd:I

    .line 625
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/RotarySelector;->setGrabbedState(I)V

    .line 626
    invoke-virtual {p0}, Lcom/android/internal/widget/RotarySelector;->invalidate()V

    .line 627
    return-void
.end method

.method private updateAnimation()V
    .locals 12

    .prologue
    .line 630
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/android/internal/widget/RotarySelector;->mAnimationStartTime:J

    sub-long v5, v8, v10

    .line 631
    .local v5, millisSoFar:J
    iget-wide v8, p0, Lcom/android/internal/widget/RotarySelector;->mAnimationDuration:J

    sub-long v3, v8, v5

    .line 632
    .local v3, millisLeft:J
    iget v8, p0, Lcom/android/internal/widget/RotarySelector;->mAnimatingDeltaXStart:I

    iget v9, p0, Lcom/android/internal/widget/RotarySelector;->mAnimatingDeltaXEnd:I

    sub-int v7, v8, v9

    .line 633
    .local v7, totalDeltaX:I
    if-gez v7, :cond_0

    const/4 v1, 0x1

    .line 635
    .local v1, goingRight:Z
    :goto_0
    const-wide/16 v8, 0x0

    cmp-long v8, v3, v8

    if-gtz v8, :cond_1

    .line 636
    invoke-direct {p0}, Lcom/android/internal/widget/RotarySelector;->reset()V

    .line 658
    :goto_1
    return-void

    .line 633
    .end local v1           #goingRight:Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 640
    .restart local v1       #goingRight:Z
    :cond_1
    iget-object v8, p0, Lcom/android/internal/widget/RotarySelector;->mInterpolator:Landroid/view/animation/DecelerateInterpolator;

    long-to-float v9, v5

    iget-wide v10, p0, Lcom/android/internal/widget/RotarySelector;->mAnimationDuration:J

    long-to-float v10, v10

    div-float/2addr v9, v10

    invoke-virtual {v8, v9}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v2

    .line 642
    .local v2, interpolation:F
    int-to-float v8, v7

    const/high16 v9, 0x3f80

    sub-float/2addr v9, v2

    mul-float/2addr v8, v9

    float-to-int v0, v8

    .line 643
    .local v0, dx:I
    iget v8, p0, Lcom/android/internal/widget/RotarySelector;->mAnimatingDeltaXEnd:I

    add-int/2addr v8, v0

    iput v8, p0, Lcom/android/internal/widget/RotarySelector;->mRotaryOffsetX:I

    .line 648
    iget v8, p0, Lcom/android/internal/widget/RotarySelector;->mDimplesOfFling:I

    if-lez v8, :cond_2

    .line 649
    if-nez v1, :cond_3

    iget v8, p0, Lcom/android/internal/widget/RotarySelector;->mRotaryOffsetX:I

    iget v9, p0, Lcom/android/internal/widget/RotarySelector;->mDimpleSpacing:I

    mul-int/lit8 v9, v9, -0x3

    if-ge v8, v9, :cond_3

    .line 651
    iget v8, p0, Lcom/android/internal/widget/RotarySelector;->mRotaryOffsetX:I

    iget v9, p0, Lcom/android/internal/widget/RotarySelector;->mDimplesOfFling:I

    iget v10, p0, Lcom/android/internal/widget/RotarySelector;->mDimpleSpacing:I

    mul-int/2addr v9, v10

    add-int/2addr v8, v9

    iput v8, p0, Lcom/android/internal/widget/RotarySelector;->mRotaryOffsetX:I

    .line 657
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/android/internal/widget/RotarySelector;->invalidate()V

    goto :goto_1

    .line 652
    :cond_3
    if-eqz v1, :cond_2

    iget v8, p0, Lcom/android/internal/widget/RotarySelector;->mRotaryOffsetX:I

    iget v9, p0, Lcom/android/internal/widget/RotarySelector;->mDimpleSpacing:I

    mul-int/lit8 v9, v9, 0x3

    if-le v8, v9, :cond_2

    .line 654
    iget v8, p0, Lcom/android/internal/widget/RotarySelector;->mRotaryOffsetX:I

    iget v9, p0, Lcom/android/internal/widget/RotarySelector;->mDimplesOfFling:I

    iget v10, p0, Lcom/android/internal/widget/RotarySelector;->mDimpleSpacing:I

    mul-int/2addr v9, v10

    sub-int/2addr v8, v9

    iput v8, p0, Lcom/android/internal/widget/RotarySelector;->mRotaryOffsetX:I

    goto :goto_2
.end method

.method private declared-synchronized vibrate(J)V
    .locals 5
    .parameter "duration"

    .prologue
    const/4 v0, 0x1

    .line 672
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "haptic_feedback_enabled"

    const/4 v3, 0x1

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_2

    .line 675
    .local v0, hapticEnabled:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 676
    iget-object v1, p0, Lcom/android/internal/widget/RotarySelector;->mVibrator:Landroid/os/Vibrator;

    if-nez v1, :cond_0

    .line 677
    invoke-virtual {p0}, Lcom/android/internal/widget/RotarySelector;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lcom/android/internal/widget/RotarySelector;->mVibrator:Landroid/os/Vibrator;

    .line 680
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/RotarySelector;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v1, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 682
    :cond_1
    monitor-exit p0

    return-void

    .line 672
    .end local v0           #hapticEnabled:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 21
    .parameter "canvas"

    .prologue
    .line 292
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 294
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/RotarySelector;->getWidth()I

    move-result v13

    .line 303
    .local v13, width:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/RotarySelector;->getHeight()I

    move-result v11

    .line 306
    .local v11, height:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/RotarySelector;->mAnimating:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 307
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/RotarySelector;->updateAnimation()V

    .line 311
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RotarySelector;->mBackground:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RotarySelector;->mBgMatrix:Landroid/graphics/Matrix;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RotarySelector;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RotarySelector;->mArrowMatrix:Landroid/graphics/Matrix;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Matrix;->reset()V

    .line 315
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mGrabbedState:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_0

    .line 337
    new-instance v17, Ljava/lang/IllegalStateException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "invalid mGrabbedState: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mGrabbedState:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 320
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RotarySelector;->mArrowMatrix:Landroid/graphics/Matrix;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 321
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/RotarySelector;->isHoriz()Z

    move-result v17

    if-nez v17, :cond_1

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RotarySelector;->mArrowMatrix:Landroid/graphics/Matrix;

    move-object/from16 v17, v0

    const/high16 v18, -0x3d4c

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v17 .. v20}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RotarySelector;->mArrowMatrix:Landroid/graphics/Matrix;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    int-to-float v0, v11

    move/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 325
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RotarySelector;->mArrowLongLeft:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RotarySelector;->mArrowMatrix:Landroid/graphics/Matrix;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RotarySelector;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 340
    :goto_0
    :pswitch_1
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/widget/RotarySelector;->mBackgroundHeight:I

    .line 341
    .local v5, bgHeight:I
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/RotarySelector;->isHoriz()Z

    move-result v17

    if-eqz v17, :cond_3

    sub-int v6, v11, v5

    .line 359
    .local v6, bgTop:I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mLeftHandleX:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mRotaryOffsetX:I

    move/from16 v18, v0

    add-int v15, v17, v18

    .line 360
    .local v15, xOffset:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mBackgroundWidth:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mInnerRadius:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mOuterRadius:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3, v15}, Lcom/android/internal/widget/RotarySelector;->getYOnArc(IIII)I

    move-result v9

    .line 365
    .local v9, drawableY:I
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/RotarySelector;->isHoriz()Z

    move-result v17

    if-eqz v17, :cond_4

    move v14, v15

    .line 366
    .local v14, x:I
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/RotarySelector;->isHoriz()Z

    move-result v17

    if-eqz v17, :cond_5

    add-int v16, v9, v6

    .line 367
    .local v16, y:I
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mGrabbedState:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_6

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RotarySelector;->mDimple:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    move/from16 v3, v16

    invoke-direct {v0, v1, v2, v14, v3}, Lcom/android/internal/widget/RotarySelector;->drawCentered(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RotarySelector;->mLeftHandleIcon:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    move/from16 v3, v16

    invoke-direct {v0, v1, v2, v14, v3}, Lcom/android/internal/widget/RotarySelector;->drawCentered(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V

    .line 377
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/RotarySelector;->isHoriz()Z

    move-result v17

    if-eqz v17, :cond_7

    div-int/lit8 v17, v13, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mRotaryOffsetX:I

    move/from16 v18, v0

    add-int v15, v17, v18

    .line 380
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mBackgroundWidth:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mInnerRadius:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mOuterRadius:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3, v15}, Lcom/android/internal/widget/RotarySelector;->getYOnArc(IIII)I

    move-result v9

    .line 386
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/RotarySelector;->isHoriz()Z

    move-result v17

    if-eqz v17, :cond_8

    .line 387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RotarySelector;->mDimpleDim:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    add-int v18, v9, v6

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v15, v3}, Lcom/android/internal/widget/RotarySelector;->drawCentered(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V

    .line 396
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mRightHandleX:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mRotaryOffsetX:I

    move/from16 v18, v0

    add-int v15, v17, v18

    .line 397
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mBackgroundWidth:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mInnerRadius:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mOuterRadius:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3, v15}, Lcom/android/internal/widget/RotarySelector;->getYOnArc(IIII)I

    move-result v9

    .line 403
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/RotarySelector;->isHoriz()Z

    move-result v17

    if-eqz v17, :cond_9

    move v14, v15

    .line 404
    :goto_7
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/RotarySelector;->isHoriz()Z

    move-result v17

    if-eqz v17, :cond_a

    add-int v16, v9, v6

    .line 405
    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mGrabbedState:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_b

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RotarySelector;->mDimple:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    move/from16 v3, v16

    invoke-direct {v0, v1, v2, v14, v3}, Lcom/android/internal/widget/RotarySelector;->drawCentered(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RotarySelector;->mRightHandleIcon:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    move/from16 v3, v16

    invoke-direct {v0, v1, v2, v14, v3}, Lcom/android/internal/widget/RotarySelector;->drawCentered(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V

    .line 414
    :goto_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mRotaryOffsetX:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mLeftHandleX:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mDimpleSpacing:I

    move/from16 v18, v0

    sub-int v7, v17, v18

    .line 415
    .local v7, dimpleLeft:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mDimpleWidth:I

    move/from16 v17, v0

    div-int/lit8 v10, v17, 0x2

    .line 416
    .local v10, halfdimple:I
    :goto_a
    neg-int v0, v10

    move/from16 v17, v0

    move/from16 v0, v17

    if-le v7, v0, :cond_d

    .line 417
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mBackgroundWidth:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mInnerRadius:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mOuterRadius:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3, v7}, Lcom/android/internal/widget/RotarySelector;->getYOnArc(IIII)I

    move-result v9

    .line 423
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/RotarySelector;->isHoriz()Z

    move-result v17

    if-eqz v17, :cond_c

    .line 424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RotarySelector;->mDimpleDim:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    add-int v18, v9, v6

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v7, v3}, Lcom/android/internal/widget/RotarySelector;->drawCentered(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V

    .line 428
    :goto_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mDimpleSpacing:I

    move/from16 v17, v0

    sub-int v7, v7, v17

    .line 429
    goto :goto_a

    .line 328
    .end local v5           #bgHeight:I
    .end local v6           #bgTop:I
    .end local v7           #dimpleLeft:I
    .end local v9           #drawableY:I
    .end local v10           #halfdimple:I
    .end local v14           #x:I
    .end local v15           #xOffset:I
    .end local v16           #y:I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RotarySelector;->mArrowMatrix:Landroid/graphics/Matrix;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 329
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/RotarySelector;->isHoriz()Z

    move-result v17

    if-nez v17, :cond_2

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RotarySelector;->mArrowMatrix:Landroid/graphics/Matrix;

    move-object/from16 v17, v0

    const/high16 v18, -0x3d4c

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v17 .. v20}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RotarySelector;->mArrowMatrix:Landroid/graphics/Matrix;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mBackgroundWidth:I

    move/from16 v19, v0

    sub-int v19, v19, v11

    add-int v19, v19, v11

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 334
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RotarySelector;->mArrowLongRight:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RotarySelector;->mArrowMatrix:Landroid/graphics/Matrix;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RotarySelector;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 341
    .restart local v5       #bgHeight:I
    :cond_3
    sub-int v6, v13, v5

    goto/16 :goto_1

    .line 365
    .restart local v6       #bgTop:I
    .restart local v9       #drawableY:I
    .restart local v15       #xOffset:I
    :cond_4
    add-int v14, v9, v6

    goto/16 :goto_2

    .line 366
    .restart local v14       #x:I
    :cond_5
    sub-int v16, v11, v15

    goto/16 :goto_3

    .line 371
    .restart local v16       #y:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RotarySelector;->mDimpleDim:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    move/from16 v3, v16

    invoke-direct {v0, v1, v2, v14, v3}, Lcom/android/internal/widget/RotarySelector;->drawCentered(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V

    goto/16 :goto_4

    .line 377
    :cond_7
    div-int/lit8 v17, v11, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mRotaryOffsetX:I

    move/from16 v18, v0

    add-int v15, v17, v18

    goto/16 :goto_5

    .line 390
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RotarySelector;->mDimpleDim:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    add-int v18, v9, v6

    sub-int v19, v11, v15

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/RotarySelector;->drawCentered(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V

    goto/16 :goto_6

    .line 403
    :cond_9
    add-int v14, v9, v6

    goto/16 :goto_7

    .line 404
    :cond_a
    sub-int v16, v11, v15

    goto/16 :goto_8

    .line 409
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RotarySelector;->mDimpleDim:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    move/from16 v3, v16

    invoke-direct {v0, v1, v2, v14, v3}, Lcom/android/internal/widget/RotarySelector;->drawCentered(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V

    goto/16 :goto_9

    .line 426
    .restart local v7       #dimpleLeft:I
    .restart local v10       #halfdimple:I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RotarySelector;->mDimpleDim:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    add-int v18, v9, v6

    sub-int v19, v11, v7

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/RotarySelector;->drawCentered(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V

    goto/16 :goto_b

    .line 432
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mRotaryOffsetX:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mRightHandleX:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mDimpleSpacing:I

    move/from16 v18, v0

    add-int v8, v17, v18

    .line 433
    .local v8, dimpleRight:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mRight:I

    move/from16 v17, v0

    add-int v12, v17, v10

    .line 434
    .local v12, rightThresh:I
    :goto_c
    if-ge v8, v12, :cond_f

    .line 435
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mBackgroundWidth:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mInnerRadius:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mOuterRadius:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3, v8}, Lcom/android/internal/widget/RotarySelector;->getYOnArc(IIII)I

    move-result v9

    .line 441
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/RotarySelector;->isHoriz()Z

    move-result v17

    if-eqz v17, :cond_e

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RotarySelector;->mDimpleDim:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    add-int v18, v9, v6

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v8, v3}, Lcom/android/internal/widget/RotarySelector;->drawCentered(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V

    .line 446
    :goto_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mDimpleSpacing:I

    move/from16 v17, v0

    add-int v8, v8, v17

    .line 447
    goto :goto_c

    .line 444
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RotarySelector;->mDimpleDim:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    add-int v18, v9, v6

    sub-int v19, v11, v8

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/RotarySelector;->drawCentered(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V

    goto :goto_d

    .line 448
    :cond_f
    return-void

    .line 315
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 6
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 271
    invoke-direct {p0}, Lcom/android/internal/widget/RotarySelector;->isHoriz()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 274
    .local v3, length:I
    :goto_0
    const/high16 v4, 0x40c0

    iget v5, p0, Lcom/android/internal/widget/RotarySelector;->mDensity:F

    mul-float/2addr v4, v5

    float-to-int v1, v4

    .line 275
    .local v1, arrowScrunch:I
    iget-object v4, p0, Lcom/android/internal/widget/RotarySelector;->mArrowShortLeftAndRight:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 281
    .local v0, arrowH:I
    iget v4, p0, Lcom/android/internal/widget/RotarySelector;->mBackgroundHeight:I

    add-int/2addr v4, v0

    sub-int v2, v4, v1

    .line 283
    .local v2, height:I
    invoke-direct {p0}, Lcom/android/internal/widget/RotarySelector;->isHoriz()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 284
    invoke-virtual {p0, v3, v2}, Lcom/android/internal/widget/RotarySelector;->setMeasuredDimension(II)V

    .line 288
    :goto_1
    return-void

    .line 271
    .end local v0           #arrowH:I
    .end local v1           #arrowScrunch:I
    .end local v2           #height:I
    .end local v3           #length:I
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    goto :goto_0

    .line 286
    .restart local v0       #arrowH:I
    .restart local v1       #arrowScrunch:I
    .restart local v2       #height:I
    .restart local v3       #length:I
    :cond_1
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/widget/RotarySelector;->setMeasuredDimension(II)V

    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 6
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const/4 v5, 0x0

    .line 213
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 215
    const/high16 v3, 0x4110

    iget v4, p0, Lcom/android/internal/widget/RotarySelector;->mDensity:F

    mul-float/2addr v3, v4

    float-to-int v0, v3

    .line 216
    .local v0, edgePadding:I
    iget v3, p0, Lcom/android/internal/widget/RotarySelector;->mDimpleWidth:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v0

    iput v3, p0, Lcom/android/internal/widget/RotarySelector;->mLeftHandleX:I

    .line 217
    invoke-direct {p0}, Lcom/android/internal/widget/RotarySelector;->isHoriz()Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, p1

    .line 218
    .local v2, length:I
    :goto_0
    sub-int v3, v2, v0

    iget v4, p0, Lcom/android/internal/widget/RotarySelector;->mDimpleWidth:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/android/internal/widget/RotarySelector;->mRightHandleX:I

    .line 219
    div-int/lit8 v3, v2, 0x2

    iget v4, p0, Lcom/android/internal/widget/RotarySelector;->mLeftHandleX:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/android/internal/widget/RotarySelector;->mDimpleSpacing:I

    .line 222
    iget-object v3, p0, Lcom/android/internal/widget/RotarySelector;->mBgMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v5, v5}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 223
    invoke-direct {p0}, Lcom/android/internal/widget/RotarySelector;->isHoriz()Z

    move-result v3

    if-nez v3, :cond_1

    .line 225
    iget v3, p0, Lcom/android/internal/widget/RotarySelector;->mBackgroundHeight:I

    sub-int v1, p1, v3

    .line 226
    .local v1, left:I
    iget-object v3, p0, Lcom/android/internal/widget/RotarySelector;->mBgMatrix:Landroid/graphics/Matrix;

    const/high16 v4, -0x3d4c

    invoke-virtual {v3, v4, v5, v5}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 227
    iget-object v3, p0, Lcom/android/internal/widget/RotarySelector;->mBgMatrix:Landroid/graphics/Matrix;

    int-to-float v4, v1

    int-to-float v5, p2

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 232
    .end local v1           #left:I
    :goto_1
    return-void

    .end local v2           #length:I
    :cond_0
    move v2, p2

    .line 217
    goto :goto_0

    .line 230
    .restart local v2       #length:I
    :cond_1
    iget-object v3, p0, Lcom/android/internal/widget/RotarySelector;->mBgMatrix:Landroid/graphics/Matrix;

    iget v4, p0, Lcom/android/internal/widget/RotarySelector;->mBackgroundHeight:I

    sub-int v4, p2, v4

    int-to-float v4, v4

    invoke-virtual {v3, v5, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "event"

    .prologue
    const/16 v13, 0x8

    const/4 v12, 0x5

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 493
    iget-boolean v8, p0, Lcom/android/internal/widget/RotarySelector;->mAnimating:Z

    if-eqz v8, :cond_1

    .line 605
    :cond_0
    :goto_0
    return v11

    .line 496
    :cond_1
    iget-object v8, p0, Lcom/android/internal/widget/RotarySelector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v8, :cond_2

    .line 497
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/widget/RotarySelector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 499
    :cond_2
    iget-object v8, p0, Lcom/android/internal/widget/RotarySelector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 501
    invoke-virtual {p0}, Lcom/android/internal/widget/RotarySelector;->getHeight()I

    move-result v2

    .line 503
    .local v2, height:I
    invoke-direct {p0}, Lcom/android/internal/widget/RotarySelector;->isHoriz()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v1, v8

    .line 506
    .local v1, eventX:I
    :goto_1
    iget v3, p0, Lcom/android/internal/widget/RotarySelector;->mDimpleWidth:I

    .line 508
    .local v3, hitWindow:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 509
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 512
    :pswitch_0
    iput-boolean v10, p0, Lcom/android/internal/widget/RotarySelector;->mTriggered:Z

    .line 513
    iget v8, p0, Lcom/android/internal/widget/RotarySelector;->mGrabbedState:I

    if-eqz v8, :cond_3

    .line 514
    invoke-direct {p0}, Lcom/android/internal/widget/RotarySelector;->reset()V

    .line 515
    invoke-virtual {p0}, Lcom/android/internal/widget/RotarySelector;->invalidate()V

    .line 517
    :cond_3
    iget v8, p0, Lcom/android/internal/widget/RotarySelector;->mLeftHandleX:I

    add-int/2addr v8, v3

    if-ge v1, v8, :cond_5

    .line 518
    iget v8, p0, Lcom/android/internal/widget/RotarySelector;->mLeftHandleX:I

    sub-int v8, v1, v8

    iput v8, p0, Lcom/android/internal/widget/RotarySelector;->mRotaryOffsetX:I

    .line 519
    invoke-direct {p0, v11}, Lcom/android/internal/widget/RotarySelector;->setGrabbedState(I)V

    .line 520
    invoke-virtual {p0}, Lcom/android/internal/widget/RotarySelector;->invalidate()V

    .line 521
    const-wide/16 v8, 0x14

    invoke-direct {p0, v8, v9}, Lcom/android/internal/widget/RotarySelector;->vibrate(J)V

    goto :goto_0

    .line 503
    .end local v0           #action:I
    .end local v1           #eventX:I
    .end local v3           #hitWindow:I
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    sub-int v1, v2, v8

    goto :goto_1

    .line 522
    .restart local v0       #action:I
    .restart local v1       #eventX:I
    .restart local v3       #hitWindow:I
    :cond_5
    iget v8, p0, Lcom/android/internal/widget/RotarySelector;->mRightHandleX:I

    sub-int/2addr v8, v3

    if-le v1, v8, :cond_0

    .line 523
    iget v8, p0, Lcom/android/internal/widget/RotarySelector;->mRightHandleX:I

    sub-int v8, v1, v8

    iput v8, p0, Lcom/android/internal/widget/RotarySelector;->mRotaryOffsetX:I

    .line 524
    invoke-direct {p0, v9}, Lcom/android/internal/widget/RotarySelector;->setGrabbedState(I)V

    .line 525
    invoke-virtual {p0}, Lcom/android/internal/widget/RotarySelector;->invalidate()V

    .line 526
    const-wide/16 v8, 0x14

    invoke-direct {p0, v8, v9}, Lcom/android/internal/widget/RotarySelector;->vibrate(J)V

    goto :goto_0

    .line 532
    :pswitch_1
    iget v8, p0, Lcom/android/internal/widget/RotarySelector;->mGrabbedState:I

    if-ne v8, v11, :cond_8

    .line 533
    iget v8, p0, Lcom/android/internal/widget/RotarySelector;->mLeftHandleX:I

    sub-int v8, v1, v8

    iput v8, p0, Lcom/android/internal/widget/RotarySelector;->mRotaryOffsetX:I

    .line 534
    invoke-virtual {p0}, Lcom/android/internal/widget/RotarySelector;->invalidate()V

    .line 535
    invoke-direct {p0}, Lcom/android/internal/widget/RotarySelector;->isHoriz()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {p0}, Lcom/android/internal/widget/RotarySelector;->getRight()I

    move-result v5

    .line 536
    .local v5, rightThresh:I
    :goto_2
    iget v8, p0, Lcom/android/internal/widget/RotarySelector;->mEdgeTriggerThresh:I

    sub-int v8, v5, v8

    if-lt v1, v8, :cond_0

    iget-boolean v8, p0, Lcom/android/internal/widget/RotarySelector;->mTriggered:Z

    if-nez v8, :cond_0

    .line 537
    iput-boolean v11, p0, Lcom/android/internal/widget/RotarySelector;->mTriggered:Z

    .line 538
    invoke-direct {p0, v11}, Lcom/android/internal/widget/RotarySelector;->dispatchTriggerEvent(I)V

    .line 539
    iget-object v7, p0, Lcom/android/internal/widget/RotarySelector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 540
    .local v7, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v8, 0x3e8

    iget v9, p0, Lcom/android/internal/widget/RotarySelector;->mMaximumVelocity:I

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 541
    invoke-direct {p0}, Lcom/android/internal/widget/RotarySelector;->isHoriz()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v8

    float-to-int v4, v8

    .line 544
    .local v4, rawVelocity:I
    :goto_3
    iget v8, p0, Lcom/android/internal/widget/RotarySelector;->mMinimumVelocity:I

    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 545
    .local v6, velocity:I
    iget v8, p0, Lcom/android/internal/widget/RotarySelector;->mDimpleSpacing:I

    div-int v8, v6, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    invoke-static {v13, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, p0, Lcom/android/internal/widget/RotarySelector;->mDimplesOfFling:I

    .line 548
    iget v8, p0, Lcom/android/internal/widget/RotarySelector;->mLeftHandleX:I

    sub-int v8, v1, v8

    iget v9, p0, Lcom/android/internal/widget/RotarySelector;->mDimplesOfFling:I

    iget v10, p0, Lcom/android/internal/widget/RotarySelector;->mDimpleSpacing:I

    mul-int/2addr v9, v10

    invoke-direct {p0, v8, v9, v6}, Lcom/android/internal/widget/RotarySelector;->startAnimationWithVelocity(III)V

    goto/16 :goto_0

    .end local v4           #rawVelocity:I
    .end local v5           #rightThresh:I
    .end local v6           #velocity:I
    .end local v7           #velocityTracker:Landroid/view/VelocityTracker;
    :cond_6
    move v5, v2

    .line 535
    goto :goto_2

    .line 541
    .restart local v5       #rightThresh:I
    .restart local v7       #velocityTracker:Landroid/view/VelocityTracker;
    :cond_7
    invoke-virtual {v7}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v8

    float-to-int v8, v8

    neg-int v4, v8

    goto :goto_3

    .line 553
    .end local v5           #rightThresh:I
    .end local v7           #velocityTracker:Landroid/view/VelocityTracker;
    :cond_8
    iget v8, p0, Lcom/android/internal/widget/RotarySelector;->mGrabbedState:I

    if-ne v8, v9, :cond_0

    .line 554
    iget v8, p0, Lcom/android/internal/widget/RotarySelector;->mRightHandleX:I

    sub-int v8, v1, v8

    iput v8, p0, Lcom/android/internal/widget/RotarySelector;->mRotaryOffsetX:I

    .line 555
    invoke-virtual {p0}, Lcom/android/internal/widget/RotarySelector;->invalidate()V

    .line 556
    iget v8, p0, Lcom/android/internal/widget/RotarySelector;->mEdgeTriggerThresh:I

    if-gt v1, v8, :cond_0

    iget-boolean v8, p0, Lcom/android/internal/widget/RotarySelector;->mTriggered:Z

    if-nez v8, :cond_0

    .line 557
    iput-boolean v11, p0, Lcom/android/internal/widget/RotarySelector;->mTriggered:Z

    .line 558
    invoke-direct {p0, v9}, Lcom/android/internal/widget/RotarySelector;->dispatchTriggerEvent(I)V

    .line 559
    iget-object v7, p0, Lcom/android/internal/widget/RotarySelector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 560
    .restart local v7       #velocityTracker:Landroid/view/VelocityTracker;
    const/16 v8, 0x3e8

    iget v9, p0, Lcom/android/internal/widget/RotarySelector;->mMaximumVelocity:I

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 561
    invoke-direct {p0}, Lcom/android/internal/widget/RotarySelector;->isHoriz()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v8

    float-to-int v4, v8

    .line 564
    .restart local v4       #rawVelocity:I
    :goto_4
    iget v8, p0, Lcom/android/internal/widget/RotarySelector;->mMinimumVelocity:I

    neg-int v8, v8

    invoke-static {v8, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 565
    .restart local v6       #velocity:I
    iget v8, p0, Lcom/android/internal/widget/RotarySelector;->mDimpleSpacing:I

    div-int v8, v6, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    invoke-static {v13, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, p0, Lcom/android/internal/widget/RotarySelector;->mDimplesOfFling:I

    .line 568
    iget v8, p0, Lcom/android/internal/widget/RotarySelector;->mRightHandleX:I

    sub-int v8, v1, v8

    iget v9, p0, Lcom/android/internal/widget/RotarySelector;->mDimplesOfFling:I

    iget v10, p0, Lcom/android/internal/widget/RotarySelector;->mDimpleSpacing:I

    mul-int/2addr v9, v10

    neg-int v9, v9

    invoke-direct {p0, v8, v9, v6}, Lcom/android/internal/widget/RotarySelector;->startAnimationWithVelocity(III)V

    goto/16 :goto_0

    .line 561
    .end local v4           #rawVelocity:I
    .end local v6           #velocity:I
    :cond_9
    invoke-virtual {v7}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v8

    float-to-int v8, v8

    neg-int v4, v8

    goto :goto_4

    .line 578
    .end local v7           #velocityTracker:Landroid/view/VelocityTracker;
    :pswitch_2
    iget v8, p0, Lcom/android/internal/widget/RotarySelector;->mGrabbedState:I

    if-ne v8, v11, :cond_b

    iget v8, p0, Lcom/android/internal/widget/RotarySelector;->mLeftHandleX:I

    sub-int v8, v1, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-le v8, v12, :cond_b

    .line 581
    iget v8, p0, Lcom/android/internal/widget/RotarySelector;->mLeftHandleX:I

    sub-int v8, v1, v8

    const/16 v9, 0x12c

    invoke-direct {p0, v8, v10, v9}, Lcom/android/internal/widget/RotarySelector;->startAnimation(III)V

    .line 587
    :cond_a
    :goto_5
    iput v10, p0, Lcom/android/internal/widget/RotarySelector;->mRotaryOffsetX:I

    .line 588
    invoke-direct {p0, v10}, Lcom/android/internal/widget/RotarySelector;->setGrabbedState(I)V

    .line 589
    invoke-virtual {p0}, Lcom/android/internal/widget/RotarySelector;->invalidate()V

    .line 590
    iget-object v8, p0, Lcom/android/internal/widget/RotarySelector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v8, :cond_0

    .line 591
    iget-object v8, p0, Lcom/android/internal/widget/RotarySelector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8}, Landroid/view/VelocityTracker;->recycle()V

    .line 592
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/internal/widget/RotarySelector;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_0

    .line 582
    :cond_b
    iget v8, p0, Lcom/android/internal/widget/RotarySelector;->mGrabbedState:I

    if-ne v8, v9, :cond_a

    iget v8, p0, Lcom/android/internal/widget/RotarySelector;->mRightHandleX:I

    sub-int v8, v1, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-le v8, v12, :cond_a

    .line 585
    iget v8, p0, Lcom/android/internal/widget/RotarySelector;->mRightHandleX:I

    sub-int v8, v1, v8

    const/16 v9, 0x12c

    invoke-direct {p0, v8, v10, v9}, Lcom/android/internal/widget/RotarySelector;->startAnimation(III)V

    goto :goto_5

    .line 597
    :pswitch_3
    invoke-direct {p0}, Lcom/android/internal/widget/RotarySelector;->reset()V

    .line 598
    invoke-virtual {p0}, Lcom/android/internal/widget/RotarySelector;->invalidate()V

    .line 599
    iget-object v8, p0, Lcom/android/internal/widget/RotarySelector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v8, :cond_0

    .line 600
    iget-object v8, p0, Lcom/android/internal/widget/RotarySelector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8}, Landroid/view/VelocityTracker;->recycle()V

    .line 601
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/internal/widget/RotarySelector;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_0

    .line 509
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setLeftHandleResource(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 247
    if-eqz p1, :cond_0

    .line 248
    invoke-direct {p0, p1}, Lcom/android/internal/widget/RotarySelector;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/RotarySelector;->mLeftHandleIcon:Landroid/graphics/Bitmap;

    .line 250
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/RotarySelector;->invalidate()V

    .line 251
    return-void
.end method

.method public setOnDialTriggerListener(Lcom/android/internal/widget/RotarySelector$OnDialTriggerListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 704
    iput-object p1, p0, Lcom/android/internal/widget/RotarySelector;->mOnDialTriggerListener:Lcom/android/internal/widget/RotarySelector$OnDialTriggerListener;

    .line 705
    return-void
.end method

.method public setRightHandleResource(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 262
    if-eqz p1, :cond_0

    .line 263
    invoke-direct {p0, p1}, Lcom/android/internal/widget/RotarySelector;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/RotarySelector;->mRightHandleIcon:Landroid/graphics/Bitmap;

    .line 265
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/RotarySelector;->invalidate()V

    .line 266
    return-void
.end method
