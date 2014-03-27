.class public Lcom/baidu/multiwaveview/MultiWaveView;
.super Landroid/view/View;
.source "MultiWaveView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/multiwaveview/MultiWaveView$OnTriggerListener;
    }
.end annotation


# static fields
.field private static final CHEVRON_ANIMATION_DURATION:I = 0x352

.field private static final CHEVRON_INCREMENTAL_DELAY:I = 0xa0

.field private static final DEBUG:Z = false

.field private static EPSILON:F = 0.0f

.field private static final HIDE_ANIMATION_DELAY:I = 0xc8

.field private static final HIDE_ANIMATION_DURATION:I = 0x4b0

.field public static final MODE_LINE:I = 0x1

.field public static final MODE_ORIGIN:I = 0x0

.field private static final RETURN_TO_HOME_DELAY:I = 0x4b0

.field private static final RETURN_TO_HOME_DURATION:I = 0x12c

.field private static final SHOW_ANIMATION_DELAY:I = 0x0

.field private static final SHOW_ANIMATION_DURATION:I = 0x0

.field private static final SNAP_MARGIN_DEFAULT:F = 20.0f

.field private static final STATE_FINISH:I = 0x4

.field private static final STATE_FIRST_TOUCH:I = 0x1

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_SNAP:I = 0x3

.field private static final STATE_TRACKING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MultiWaveView"

.field private static final TAP_RADIUS_SCALE_ACCESSIBILITY_ENABLED:F = 1.3f


# instance fields
.field private final TYPE_FROM:I

.field private final TYPE_TO:I

.field private final TYPE_X:I

.field private final TYPE_Y:I

.field private mActiveTarget:I

.field private mAnimatingTargets:Z

.field private mBaseOffset:I

.field private mChevronAnimationInterpolator:Landroid/animation/TimeInterpolator;

.field private mChevronAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/multiwaveview/Tweener;",
            ">;"
        }
    .end annotation
.end field

.field private mChevronDrawables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/multiwaveview/TargetDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private mChevronHideMask:[Z

.field private mCurMode:I

.field private mDirectionDescriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDirectionDescriptionsResourceId:I

.field private mDragging:Z

.field private mFeedbackCount:I

.field private mGrabbedState:I

.field private mHandleAnimation:Lcom/baidu/multiwaveview/Tweener;

.field private mHandleDrawable:Lcom/baidu/multiwaveview/TargetDrawable;

.field private mHitRadius:F

.field private mHitRing:Lcom/baidu/multiwaveview/TargetDrawable;

.field private mHorizontalOffset:F

.field private mNewTargetResources:I

.field private mOnTriggerListener:Lcom/baidu/multiwaveview/MultiWaveView$OnTriggerListener;

.field private mOuterRadius:F

.field private mOuterRing:Lcom/baidu/multiwaveview/TargetDrawable;

.field private mResetListener:Landroid/animation/Animator$AnimatorListener;

.field private mResetListenerWithPing:Landroid/animation/Animator$AnimatorListener;

.field private mSnapMargin:F

.field private mTapRadius:F

.field private mTargetAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/multiwaveview/Tweener;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetDescriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetDescriptionsResourceId:I

.field private mTargetDrawables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/multiwaveview/TargetDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetResourceId:I

.field private mTargetUpdateListener:Landroid/animation/Animator$AnimatorListener;

.field private mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mVerticalOffset:F

.field private mVibrationDuration:I

.field private mVibrator:Landroid/os/Vibrator;

.field private mWaveCenterX:F

.field private mWaveCenterY:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 116
    const v0, 0x38d1b717

    sput v0, Lcom/baidu/multiwaveview/MultiWaveView;->EPSILON:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 154
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/baidu/multiwaveview/MultiWaveView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 155
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 13
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 158
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 87
    sget-object v11, Lcom/baidu/multiwaveview/Ease$Quad;->easeOut:Landroid/animation/TimeInterpolator;

    iput-object v11, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mChevronAnimationInterpolator:Landroid/animation/TimeInterpolator;

    .line 89
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    .line 90
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mChevronDrawables:Ljava/util/ArrayList;

    .line 91
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mChevronAnimations:Ljava/util/ArrayList;

    .line 92
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mTargetAnimations:Ljava/util/ArrayList;

    .line 101
    const/4 v11, 0x3

    iput v11, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mFeedbackCount:I

    .line 102
    const/4 v11, 0x0

    iput v11, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mVibrationDuration:I

    .line 104
    const/4 v11, -0x1

    iput v11, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mActiveTarget:I

    .line 110
    const/4 v11, 0x0

    iput v11, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mOuterRadius:F

    .line 111
    const/4 v11, 0x0

    iput v11, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mHitRadius:F

    .line 112
    const/4 v11, 0x0

    iput v11, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mSnapMargin:F

    .line 118
    new-instance v11, Lcom/baidu/multiwaveview/MultiWaveView$1;

    invoke-direct {v11, p0}, Lcom/baidu/multiwaveview/MultiWaveView$1;-><init>(Lcom/baidu/multiwaveview/MultiWaveView;)V

    iput-object v11, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mResetListener:Landroid/animation/Animator$AnimatorListener;

    .line 124
    new-instance v11, Lcom/baidu/multiwaveview/MultiWaveView$2;

    invoke-direct {v11, p0}, Lcom/baidu/multiwaveview/MultiWaveView$2;-><init>(Lcom/baidu/multiwaveview/MultiWaveView;)V

    iput-object v11, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mResetListenerWithPing:Landroid/animation/Animator$AnimatorListener;

    .line 131
    new-instance v11, Lcom/baidu/multiwaveview/MultiWaveView$3;

    invoke-direct {v11, p0}, Lcom/baidu/multiwaveview/MultiWaveView$3;-><init>(Lcom/baidu/multiwaveview/MultiWaveView;)V

    iput-object v11, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 139
    new-instance v11, Lcom/baidu/multiwaveview/MultiWaveView$4;

    invoke-direct {v11, p0}, Lcom/baidu/multiwaveview/MultiWaveView$4;-><init>(Lcom/baidu/multiwaveview/MultiWaveView;)V

    iput-object v11, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mTargetUpdateListener:Landroid/animation/Animator$AnimatorListener;

    .line 1013
    const/16 v11, 0x14

    iput v11, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mBaseOffset:I

    .line 1014
    const/4 v11, 0x0

    iput v11, p0, Lcom/baidu/multiwaveview/MultiWaveView;->TYPE_X:I

    .line 1015
    const/4 v11, 0x1

    iput v11, p0, Lcom/baidu/multiwaveview/MultiWaveView;->TYPE_Y:I

    .line 1016
    const/4 v11, 0x0

    iput v11, p0, Lcom/baidu/multiwaveview/MultiWaveView;->TYPE_FROM:I

    .line 1017
    const/4 v11, 0x1

    iput v11, p0, Lcom/baidu/multiwaveview/MultiWaveView;->TYPE_TO:I

    .line 1018
    const/4 v11, 0x0

    iput v11, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mCurMode:I

    .line 1019
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mHitRing:Lcom/baidu/multiwaveview/TargetDrawable;

    .line 1020
    const/4 v11, 0x4

    new-array v11, v11, [Z

    fill-array-data v11, :array_0

    iput-object v11, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mChevronHideMask:[Z

    .line 159
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 161
    .local v9, res:Landroid/content/res/Resources;
    sget-object v11, Lcom/android/phone/R$styleable;->MultiWaveView:[I

    invoke-virtual {p1, p2, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 162
    .local v0, a:Landroid/content/res/TypedArray;
    const/16 v11, 0x9

    iget v12, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mOuterRadius:F

    invoke-virtual {v0, v11, v12}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v11

    iput v11, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mOuterRadius:F

    .line 163
    const/16 v11, 0xf

    iget v12, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mHorizontalOffset:F

    invoke-virtual {v0, v11, v12}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v11

    iput v11, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mHorizontalOffset:F

    .line 165
    const/16 v11, 0xe

    iget v12, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mVerticalOffset:F

    invoke-virtual {v0, v11, v12}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v11

    iput v11, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mVerticalOffset:F

    .line 167
    const/16 v11, 0xa

    iget v12, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mHitRadius:F

    invoke-virtual {v0, v11, v12}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v11

    iput v11, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mHitRadius:F

    .line 168
    const/16 v11, 0xc

    iget v12, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mSnapMargin:F

    invoke-virtual {v0, v11, v12}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v11

    iput v11, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mSnapMargin:F

    .line 169
    const/16 v11, 0xb

    iget v12, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mVibrationDuration:I

    invoke-virtual {v0, v11, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    iput v11, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mVibrationDuration:I

    .line 171
    const/16 v11, 0xd

    iget v12, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mFeedbackCount:I

    invoke-virtual {v0, v11, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    iput v11, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mFeedbackCount:I

    .line 173
    new-instance v11, Lcom/baidu/multiwaveview/TargetDrawable;

    const/4 v12, 0x3

    invoke-virtual {v0, v12}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-direct {v11, v9, v12}, Lcom/baidu/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)V

    iput-object v11, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/baidu/multiwaveview/TargetDrawable;

    .line 175
    invoke-direct {p0, v9, v0}, Lcom/baidu/multiwaveview/MultiWaveView;->SetMode(Landroid/content/res/Resources;Landroid/content/res/TypedArray;)V

    .line 176
    iget-object v11, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/baidu/multiwaveview/TargetDrawable;

    invoke-virtual {v11}, Lcom/baidu/multiwaveview/TargetDrawable;->getWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    iput v11, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mTapRadius:F

    .line 177
    new-instance v11, Lcom/baidu/multiwaveview/TargetDrawable;

    const/16 v12, 0x8

    invoke-virtual {v0, v12}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-direct {v11, v9, v12}, Lcom/baidu/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)V

    iput-object v11, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mOuterRing:Lcom/baidu/multiwaveview/TargetDrawable;

    .line 180
    const/4 v11, 0x4

    new-array v4, v11, [I

    fill-array-data v4, :array_1

    .line 185
    .local v4, chevrons:[I
    move-object v1, v4

    .local v1, arr$:[I
    array-length v7, v1

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_0
    if-ge v6, v7, :cond_2

    aget v2, v1, v6

    .line 186
    .local v2, chevron:I
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 187
    .local v3, chevronDrawable:Landroid/graphics/drawable/Drawable;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    iget v11, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mFeedbackCount:I

    if-ge v5, v11, :cond_1

    .line 188
    iget-object v12, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mChevronDrawables:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    new-instance v11, Lcom/baidu/multiwaveview/TargetDrawable;

    invoke-direct {v11, v9, v3}, Lcom/baidu/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)V

    :goto_2
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 188
    :cond_0
    const/4 v11, 0x0

    goto :goto_2

    .line 185
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 194
    .end local v2           #chevron:I
    .end local v3           #chevronDrawable:Landroid/graphics/drawable/Drawable;
    .end local v5           #i:I
    :cond_2
    new-instance v8, Landroid/util/TypedValue;

    invoke-direct {v8}, Landroid/util/TypedValue;-><init>()V

    .line 195
    .local v8, outValue:Landroid/util/TypedValue;
    const/4 v11, 0x0

    invoke-virtual {v0, v11, v8}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 196
    iget v11, v8, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {p0, v11}, Lcom/baidu/multiwaveview/MultiWaveView;->internalSetTargetResources(I)V

    .line 198
    :cond_3
    iget-object v11, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-nez v11, :cond_5

    .line 199
    :cond_4
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "Must specify at least one target drawable"

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 203
    :cond_5
    const/4 v11, 0x1

    invoke-virtual {v0, v11, v8}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 204
    iget v10, v8, Landroid/util/TypedValue;->resourceId:I

    .line 205
    .local v10, resourceId:I
    if-nez v10, :cond_6

    .line 206
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "Must specify target descriptions"

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 208
    :cond_6
    invoke-virtual {p0, v10}, Lcom/baidu/multiwaveview/MultiWaveView;->setTargetDescriptionsResourceId(I)V

    .line 212
    .end local v10           #resourceId:I
    :cond_7
    const/4 v11, 0x2

    invoke-virtual {v0, v11, v8}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 213
    iget v10, v8, Landroid/util/TypedValue;->resourceId:I

    .line 214
    .restart local v10       #resourceId:I
    if-nez v10, :cond_8

    .line 215
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "Must specify direction descriptions"

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 217
    :cond_8
    invoke-virtual {p0, v10}, Lcom/baidu/multiwaveview/MultiWaveView;->setDirectionDescriptionsResourceId(I)V

    .line 220
    .end local v10           #resourceId:I
    :cond_9
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 221
    iget v11, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mVibrationDuration:I

    if-lez v11, :cond_a

    const/4 v11, 0x1

    :goto_3
    invoke-virtual {p0, v11}, Lcom/baidu/multiwaveview/MultiWaveView;->setVibrateEnabled(Z)V

    .line 222
    return-void

    .line 221
    :cond_a
    const/4 v11, 0x0

    goto :goto_3

    .line 1020
    nop

    :array_0
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 180
    :array_1
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private SetMode(Landroid/content/res/Resources;Landroid/content/res/TypedArray;)V
    .locals 4
    .parameter "res"
    .parameter "a"

    .prologue
    const/16 v3, 0x14

    const/4 v2, 0x0

    .line 997
    const/16 v1, 0x13

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 998
    .local v0, mode:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 999
    iput v2, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mCurMode:I

    .line 1011
    :cond_0
    :goto_0
    return-void

    .line 1002
    :cond_1
    const-string v1, "mode_origin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1003
    iput v2, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mCurMode:I

    goto :goto_0

    .line 1004
    :cond_2
    const-string v1, "mode_line"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1005
    const/4 v1, 0x1

    iput v1, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mCurMode:I

    .line 1006
    new-instance v1, Lcom/baidu/multiwaveview/TargetDrawable;

    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/baidu/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)V

    iput-object v1, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mHitRing:Lcom/baidu/multiwaveview/TargetDrawable;

    .line 1008
    iget-object v1, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mHitRing:Lcom/baidu/multiwaveview/TargetDrawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/baidu/multiwaveview/TargetDrawable;->setAlpha(F)V

    .line 1009
    const/16 v1, 0x15

    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mBaseOffset:I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/baidu/multiwaveview/MultiWaveView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mWaveCenterX:F

    return v0
.end method

.method static synthetic access$100(Lcom/baidu/multiwaveview/MultiWaveView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mWaveCenterY:F

    return v0
.end method

.method static synthetic access$200(Lcom/baidu/multiwaveview/MultiWaveView;IFF)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/multiwaveview/MultiWaveView;->switchToState(IFF)V

    return-void
.end method

.method static synthetic access$300(Lcom/baidu/multiwaveview/MultiWaveView;)Lcom/baidu/multiwaveview/TargetDrawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/baidu/multiwaveview/TargetDrawable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/baidu/multiwaveview/MultiWaveView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mNewTargetResources:I

    return v0
.end method

.method static synthetic access$402(Lcom/baidu/multiwaveview/MultiWaveView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mNewTargetResources:I

    return p1
.end method

.method static synthetic access$500(Lcom/baidu/multiwaveview/MultiWaveView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/baidu/multiwaveview/MultiWaveView;->internalSetTargetResources(I)V

    return-void
.end method

.method static synthetic access$602(Lcom/baidu/multiwaveview/MultiWaveView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mAnimatingTargets:Z

    return p1
.end method

.method private announceTargets()V
    .locals 8

    .prologue
    .line 921
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 922
    .local v5, utterance:Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 923
    .local v2, targetCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 924
    invoke-direct {p0, v1}, Lcom/baidu/multiwaveview/MultiWaveView;->getTargetDescription(I)Ljava/lang/String;

    move-result-object v3

    .line 925
    .local v3, targetDescription:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/baidu/multiwaveview/MultiWaveView;->getDirectionDescription(I)Ljava/lang/String;

    move-result-object v0

    .line 926
    .local v0, directionDescription:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 928
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 929
    .local v4, text:Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 931
    .end local v4           #text:Ljava/lang/String;
    :cond_0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 932
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/baidu/multiwaveview/MultiWaveView;->announceText(Ljava/lang/String;)V

    .line 923
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 935
    .end local v0           #directionDescription:Ljava/lang/String;
    .end local v3           #targetDescription:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private announceText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 938
    invoke-virtual {p0, p1}, Lcom/baidu/multiwaveview/MultiWaveView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 939
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/baidu/multiwaveview/MultiWaveView;->sendAccessibilityEvent(I)V

    .line 940
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/multiwaveview/MultiWaveView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 941
    return-void
.end method

.method private dispatchGrabbedEvent(I)V
    .locals 1
    .parameter "whichHandler"

    .prologue
    .line 401
    invoke-direct {p0}, Lcom/baidu/multiwaveview/MultiWaveView;->vibrate()V

    .line 402
    iget-object v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mOnTriggerListener:Lcom/baidu/multiwaveview/MultiWaveView$OnTriggerListener;

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mOnTriggerListener:Lcom/baidu/multiwaveview/MultiWaveView$OnTriggerListener;

    invoke-interface {v0, p0, p1}, Lcom/baidu/multiwaveview/MultiWaveView$OnTriggerListener;->onGrabbed(Landroid/view/View;I)V

    .line 405
    :cond_0
    return-void
.end method

.method private dispatchTriggerEvent(I)V
    .locals 1
    .parameter "whichHandle"

    .prologue
    .line 394
    invoke-direct {p0}, Lcom/baidu/multiwaveview/MultiWaveView;->vibrate()V

    .line 395
    iget-object v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mOnTriggerListener:Lcom/baidu/multiwaveview/MultiWaveView$OnTriggerListener;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mOnTriggerListener:Lcom/baidu/multiwaveview/MultiWaveView$OnTriggerListener;

    invoke-interface {v0, p0, p1}, Lcom/baidu/multiwaveview/MultiWaveView$OnTriggerListener;->onTrigger(Landroid/view/View;I)V

    .line 398
    :cond_0
    return-void
.end method

.method private dist2(FF)F
    .locals 2
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 907
    mul-float v0, p1, p1

    mul-float v1, p2, p2

    add-float/2addr v0, v1

    return v0
.end method

.method private doFinish()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v3, 0x1

    const/high16 v5, 0x3f80

    const/4 v4, 0x0

    .line 408
    iget v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mActiveTarget:I

    .line 409
    .local v0, activeTarget:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v3

    .line 415
    .local v1, targetHit:Z
    :goto_0
    iget-object v6, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/baidu/multiwaveview/TargetDrawable;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v6, v2}, Lcom/baidu/multiwaveview/TargetDrawable;->setAlpha(F)V

    .line 416
    if-eqz v1, :cond_2

    .line 417
    iget-object v2, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/multiwaveview/TargetDrawable;

    sget-object v6, Lcom/baidu/multiwaveview/TargetDrawable;->STATE_ACTIVE:[I

    invoke-virtual {v2, v6}, Lcom/baidu/multiwaveview/TargetDrawable;->setState([I)V

    .line 419
    invoke-direct {p0, v0}, Lcom/baidu/multiwaveview/MultiWaveView;->hideUnselected(I)V

    .line 423
    iget v2, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mActiveTarget:I

    invoke-direct {p0, v2}, Lcom/baidu/multiwaveview/MultiWaveView;->dispatchTriggerEvent(I)V

    .line 424
    iget-object v2, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/baidu/multiwaveview/TargetDrawable;

    const-wide/16 v6, 0x0

    const/16 v8, 0xe

    new-array v8, v8, [Ljava/lang/Object;

    const-string v9, "ease"

    aput-object v9, v8, v4

    sget-object v9, Lcom/baidu/multiwaveview/Ease$Quart;->easeOut:Landroid/animation/TimeInterpolator;

    aput-object v9, v8, v3

    const-string v3, "delay"

    aput-object v3, v8, v10

    const/16 v3, 0x4b0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v8, v11

    const/4 v3, 0x4

    const-string v9, "alpha"

    aput-object v9, v8, v3

    const/4 v3, 0x5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v8, v3

    const/4 v3, 0x6

    const-string v5, "x"

    aput-object v5, v8, v3

    const/4 v3, 0x7

    iget v5, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mWaveCenterX:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v8, v3

    const/16 v3, 0x8

    const-string v5, "y"

    aput-object v5, v8, v3

    const/16 v3, 0x9

    iget v5, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mWaveCenterY:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v8, v3

    const/16 v3, 0xa

    const-string v5, "onUpdate"

    aput-object v5, v8, v3

    const/16 v3, 0xb

    iget-object v5, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v5, v8, v3

    const/16 v3, 0xc

    const-string v5, "onComplete"

    aput-object v5, v8, v3

    const/16 v3, 0xd

    iget-object v5, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mResetListener:Landroid/animation/Animator$AnimatorListener;

    aput-object v5, v8, v3

    invoke-static {v2, v6, v7, v8}, Lcom/baidu/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/baidu/multiwaveview/Tweener;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mHandleAnimation:Lcom/baidu/multiwaveview/Tweener;

    .line 444
    :goto_2
    invoke-direct {p0, v4}, Lcom/baidu/multiwaveview/MultiWaveView;->setGrabbedState(I)V

    .line 445
    return-void

    .end local v1           #targetHit:Z
    :cond_0
    move v1, v4

    .line 409
    goto/16 :goto_0

    .restart local v1       #targetHit:Z
    :cond_1
    move v2, v5

    .line 415
    goto/16 :goto_1

    .line 434
    :cond_2
    iget-object v6, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/baidu/multiwaveview/TargetDrawable;

    const-wide/16 v7, 0x12c

    const/16 v2, 0xe

    new-array v9, v2, [Ljava/lang/Object;

    const-string v2, "ease"

    aput-object v2, v9, v4

    sget-object v2, Lcom/baidu/multiwaveview/Ease$Quart;->easeOut:Landroid/animation/TimeInterpolator;

    aput-object v2, v9, v3

    const-string v2, "delay"

    aput-object v2, v9, v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v9, v11

    const/4 v2, 0x4

    const-string v3, "alpha"

    aput-object v3, v9, v2

    const/4 v2, 0x5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v9, v2

    const/4 v2, 0x6

    const-string v3, "x"

    aput-object v3, v9, v2

    const/4 v2, 0x7

    iget v3, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mWaveCenterX:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v9, v2

    const/16 v2, 0x8

    const-string v3, "y"

    aput-object v3, v9, v2

    const/16 v2, 0x9

    iget v3, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mWaveCenterY:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v9, v2

    const/16 v2, 0xa

    const-string v3, "onUpdate"

    aput-object v3, v9, v2

    const/16 v2, 0xb

    iget-object v3, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v3, v9, v2

    const/16 v2, 0xc

    const-string v3, "onComplete"

    aput-object v3, v9, v2

    const/16 v3, 0xd

    iget-boolean v2, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mDragging:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mResetListenerWithPing:Landroid/animation/Animator$AnimatorListener;

    :goto_3
    aput-object v2, v9, v3

    invoke-static {v6, v7, v8, v9}, Lcom/baidu/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/baidu/multiwaveview/Tweener;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mHandleAnimation:Lcom/baidu/multiwaveview/Tweener;

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mResetListener:Landroid/animation/Animator$AnimatorListener;

    goto :goto_3
.end method

.method private dump()V
    .locals 3

    .prologue
    .line 225
    const-string v0, "MultiWaveView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Outer Radius = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mOuterRadius:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    const-string v0, "MultiWaveView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HitRadius = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mHitRadius:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const-string v0, "MultiWaveView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SnapMargin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mSnapMargin:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const-string v0, "MultiWaveView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FeedbackCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mFeedbackCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const-string v0, "MultiWaveView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VibrationDuration = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mVibrationDuration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const-string v0, "MultiWaveView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TapRadius = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mTapRadius:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const-string v0, "MultiWaveView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WaveCenterX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mWaveCenterX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const-string v0, "MultiWaveView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WaveCenterY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mWaveCenterY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const-string v0, "MultiWaveView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HorizontalOffset = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mHorizontalOffset:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const-string v0, "MultiWaveView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VerticalOffset = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mVerticalOffset:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    return-void
.end method

.method private getAlphas()[F
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 1039
    iget v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mCurMode:I

    if-nez v0, :cond_0

    .line 1040
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    .line 1042
    :goto_0
    return-object v0

    :cond_0
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    goto :goto_0

    .line 1040
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 1042
    :array_1
    .array-data 0x4
        0xcdt 0xcct 0x4ct 0x3ft
        0xcdt 0xcct 0x4ct 0x3et
    .end array-data
.end method

.method private getDirectionDescription(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 956
    iget-object v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mDirectionDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mDirectionDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 957
    :cond_0
    iget v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mDirectionDescriptionsResourceId:I

    invoke-direct {p0, v0}, Lcom/baidu/multiwaveview/MultiWaveView;->loadDescriptions(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mDirectionDescriptions:Ljava/util/ArrayList;

    .line 958
    iget-object v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mDirectionDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 959
    const-string v0, "MultiWaveView"

    const-string v1, "The number of target drawables must be euqal to the number of direction descriptions."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    const/4 v0, 0x0

    .line 964
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mDirectionDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method private getPos(II[[F[[FII)F
    .locals 3
    .parameter "direction"
    .parameter "ct"
    .parameter "from"
    .parameter "to"
    .parameter "t1"
    .parameter "t2"

    .prologue
    .line 1031
    if-nez p5, :cond_0

    move-object v0, p3

    .line 1032
    .local v0, array:[[F
    :goto_0
    iget v1, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mCurMode:I

    if-nez v1, :cond_2

    .line 1033
    aget-object v1, v0, p1

    aget v1, v1, p6

    .line 1035
    :goto_1
    return v1

    .line 1031
    .end local v0           #array:[[F
    :cond_0
    iget v1, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mCurMode:I

    if-nez v1, :cond_1

    move-object v0, p4

    goto :goto_0

    :cond_1
    move-object v0, p3

    goto :goto_0

    .line 1035
    .restart local v0       #array:[[F
    :cond_2
    aget-object v1, v0, p1

    aget v1, v1, p6

    invoke-direct {p0, p1, p2, p6}, Lcom/baidu/multiwaveview/MultiWaveView;->getPosOffset(III)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    goto :goto_1
.end method

.method private getPosOffset(III)I
    .locals 4
    .parameter "direction"
    .parameter "ct"
    .parameter "t"

    .prologue
    const/4 v2, 0x1

    .line 1025
    rem-int/lit8 v3, p1, 0x2

    if-nez v3, :cond_0

    const/4 v0, -0x1

    .line 1026
    .local v0, d1:I
    :goto_0
    div-int/lit8 v3, p1, 0x2

    if-ne v3, p3, :cond_1

    move v1, v2

    .line 1027
    .local v1, d2:I
    :goto_1
    iget v2, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mBaseOffset:I

    mul-int/2addr v2, p2

    mul-int/2addr v2, v0

    mul-int/2addr v2, v1

    return v2

    .end local v0           #d1:I
    .end local v1           #d2:I
    :cond_0
    move v0, v2

    .line 1025
    goto :goto_0

    .line 1026
    .restart local v0       #d1:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getScaledTapRadiusSquared()F
    .locals 3

    .prologue
    .line 912
    iget-object v1, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 913
    const v1, 0x3fa66666

    iget v2, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mTapRadius:F

    mul-float v0, v1, v2

    .line 917
    .local v0, scaledTapRadius:F
    :goto_0
    invoke-direct {p0, v0}, Lcom/baidu/multiwaveview/MultiWaveView;->square(F)F

    move-result v1

    return v1

    .line 915
    .end local v0           #scaledTapRadius:F
    :cond_0
    iget v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mTapRadius:F

    .restart local v0       #scaledTapRadius:F
    goto :goto_0
.end method

.method private getScales()[F
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 1046
    iget v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mCurMode:I

    if-nez v0, :cond_0

    .line 1047
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    .line 1049
    :goto_0
    return-object v0

    :cond_0
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    goto :goto_0

    .line 1047
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x0t 0x40t
    .end array-data

    .line 1049
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private getTargetDescription(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 944
    iget-object v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mTargetDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 945
    :cond_0
    iget v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mTargetDescriptionsResourceId:I

    invoke-direct {p0, v0}, Lcom/baidu/multiwaveview/MultiWaveView;->loadDescriptions(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mTargetDescriptions:Ljava/util/ArrayList;

    .line 946
    iget-object v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 947
    const-string v0, "MultiWaveView"

    const-string v1, "The number of target drawables must be euqal to the number of target descriptions."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    const/4 v0, 0x0

    .line 952
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method private handleDown(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 680
    invoke-direct {p0, p1}, Lcom/baidu/multiwaveview/MultiWaveView;->trySwitchToFirstTouchState(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 681
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mDragging:Z

    .line 682
    invoke-direct {p0}, Lcom/baidu/multiwaveview/MultiWaveView;->stopTargetAnimation()V

    .line 683
    invoke-virtual {p0}, Lcom/baidu/multiwaveview/MultiWaveView;->ping()V

    .line 685
    :cond_0
    return-void
.end method

.method private handleMove(Landroid/view/MotionEvent;)V
    .locals 30
    .parameter "event"

    .prologue
    .line 693
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/baidu/multiwaveview/MultiWaveView;->mDragging:Z

    move/from16 v28, v0

    if-nez v28, :cond_0

    .line 694
    invoke-direct/range {p0 .. p1}, Lcom/baidu/multiwaveview/MultiWaveView;->trySwitchToFirstTouchState(Landroid/view/MotionEvent;)Z

    .line 768
    :goto_0
    return-void

    .line 698
    :cond_0
    const/4 v4, -0x1

    .line 699
    .local v4, activeTarget:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v10

    .line 700
    .local v10, historySize:I
    const/4 v13, 0x0

    .local v13, k:I
    :goto_1
    add-int/lit8 v28, v10, 0x1

    move/from16 v0, v28

    if-ge v13, v0, :cond_e

    .line 701
    if-ge v13, v10, :cond_3

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v26

    .line 702
    .local v26, x:F
    :goto_2
    if-ge v13, v10, :cond_4

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v27

    .line 703
    .local v27, y:F
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/multiwaveview/MultiWaveView;->mWaveCenterX:F

    move/from16 v28, v0

    sub-float v24, v26, v28

    .line 704
    .local v24, tx:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/multiwaveview/MultiWaveView;->mWaveCenterY:F

    move/from16 v28, v0

    sub-float v25, v27, v28

    .line 705
    .local v25, ty:F
    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/baidu/multiwaveview/MultiWaveView;->dist2(FF)F

    move-result v28

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v23, v0

    .line 706
    .local v23, touchRadius:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/multiwaveview/MultiWaveView;->mOuterRadius:F

    move/from16 v28, v0

    cmpl-float v28, v23, v28

    if-lez v28, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/multiwaveview/MultiWaveView;->mOuterRadius:F

    move/from16 v28, v0

    div-float v18, v28, v23

    .line 707
    .local v18, scale:F
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/multiwaveview/MultiWaveView;->mWaveCenterX:F

    move/from16 v28, v0

    mul-float v29, v24, v18

    add-float v14, v28, v29

    .line 708
    .local v14, limitX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/multiwaveview/MultiWaveView;->mWaveCenterY:F

    move/from16 v28, v0

    mul-float v29, v25, v18

    add-float v15, v28, v29

    .line 710
    .local v15, limitY:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_6

    const/16 v19, 0x1

    .line 711
    .local v19, singleTarget:Z
    :goto_5
    if-eqz v19, :cond_7

    .line 713
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/multiwaveview/MultiWaveView;->mOuterRadius:F

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/multiwaveview/MultiWaveView;->mSnapMargin:F

    move/from16 v29, v0

    sub-float v20, v28, v29

    .line 714
    .local v20, snapRadius:F
    cmpl-float v28, v23, v20

    if-lez v28, :cond_1

    .line 715
    const/4 v4, 0x0

    .line 716
    move/from16 v26, v14

    .line 717
    move/from16 v27, v15

    .line 737
    .end local v20           #snapRadius:F
    :cond_1
    :goto_6
    const/16 v28, -0x1

    move/from16 v0, v28

    if-eq v4, v0, :cond_d

    .line 738
    const/16 v28, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/multiwaveview/MultiWaveView;->switchToState(IFF)V

    .line 739
    if-eqz v19, :cond_a

    move/from16 v16, v14

    .line 740
    .local v16, newX:F
    :goto_7
    if-eqz v19, :cond_b

    move/from16 v17, v15

    .line 741
    .local v17, newY:F
    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/multiwaveview/MultiWaveView;->mCurMode:I

    move/from16 v28, v0

    if-nez v28, :cond_c

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/multiwaveview/MultiWaveView;->moveHandleTo(FFZ)V

    .line 743
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/baidu/multiwaveview/TargetDrawable;

    .line 744
    .local v6, currentTarget:Lcom/baidu/multiwaveview/TargetDrawable;
    sget-object v28, Lcom/baidu/multiwaveview/TargetDrawable;->STATE_FOCUSED:[I

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Lcom/baidu/multiwaveview/TargetDrawable;->hasState([I)Z

    move-result v28

    if-eqz v28, :cond_2

    .line 745
    sget-object v28, Lcom/baidu/multiwaveview/TargetDrawable;->STATE_FOCUSED:[I

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Lcom/baidu/multiwaveview/TargetDrawable;->setState([I)V

    .line 746
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/baidu/multiwaveview/TargetDrawable;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/baidu/multiwaveview/TargetDrawable;->setAlpha(F)V

    .line 748
    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/baidu/multiwaveview/MultiWaveView;->onHitTarget(FF)V

    .line 700
    .end local v6           #currentTarget:Lcom/baidu/multiwaveview/TargetDrawable;
    .end local v16           #newX:F
    .end local v17           #newY:F
    :goto_a
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 701
    .end local v14           #limitX:F
    .end local v15           #limitY:F
    .end local v18           #scale:F
    .end local v19           #singleTarget:Z
    .end local v23           #touchRadius:F
    .end local v24           #tx:F
    .end local v25           #ty:F
    .end local v26           #x:F
    .end local v27           #y:F
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v26

    goto/16 :goto_2

    .line 702
    .restart local v26       #x:F
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v27

    goto/16 :goto_3

    .line 706
    .restart local v23       #touchRadius:F
    .restart local v24       #tx:F
    .restart local v25       #ty:F
    .restart local v27       #y:F
    :cond_5
    const/high16 v18, 0x3f80

    goto/16 :goto_4

    .line 710
    .restart local v14       #limitX:F
    .restart local v15       #limitY:F
    .restart local v18       #scale:F
    :cond_6
    const/16 v19, 0x0

    goto/16 :goto_5

    .line 721
    .restart local v19       #singleTarget:Z
    :cond_7
    const v5, 0x7f7fffff

    .line 722
    .local v5, best:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/multiwaveview/MultiWaveView;->mHitRadius:F

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/multiwaveview/MultiWaveView;->mHitRadius:F

    move/from16 v29, v0

    mul-float v11, v28, v29

    .line 723
    .local v11, hitRadius2:F
    const/4 v12, 0x0

    .local v12, i:I
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v28

    move/from16 v0, v28

    if-ge v12, v0, :cond_9

    .line 725
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/baidu/multiwaveview/TargetDrawable;

    .line 726
    .local v21, target:Lcom/baidu/multiwaveview/TargetDrawable;
    invoke-virtual/range {v21 .. v21}, Lcom/baidu/multiwaveview/TargetDrawable;->getX()F

    move-result v28

    sub-float v8, v14, v28

    .line 727
    .local v8, dx:F
    invoke-virtual/range {v21 .. v21}, Lcom/baidu/multiwaveview/TargetDrawable;->getY()F

    move-result v28

    sub-float v9, v15, v28

    .line 728
    .local v9, dy:F
    mul-float v28, v8, v8

    mul-float v29, v9, v9

    add-float v7, v28, v29

    .line 729
    .local v7, dist2:F
    invoke-virtual/range {v21 .. v21}, Lcom/baidu/multiwaveview/TargetDrawable;->isValid()Z

    move-result v28

    if-eqz v28, :cond_8

    cmpg-float v28, v7, v11

    if-gez v28, :cond_8

    cmpg-float v28, v7, v5

    if-gez v28, :cond_8

    .line 730
    move v4, v12

    .line 731
    move v5, v7

    .line 723
    :cond_8
    add-int/lit8 v12, v12, 0x1

    goto :goto_b

    .line 734
    .end local v7           #dist2:F
    .end local v8           #dx:F
    .end local v9           #dy:F
    .end local v21           #target:Lcom/baidu/multiwaveview/TargetDrawable;
    :cond_9
    move/from16 v26, v14

    .line 735
    move/from16 v27, v15

    goto/16 :goto_6

    .line 739
    .end local v5           #best:F
    .end local v11           #hitRadius2:F
    .end local v12           #i:I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/baidu/multiwaveview/TargetDrawable;

    invoke-virtual/range {v28 .. v28}, Lcom/baidu/multiwaveview/TargetDrawable;->getX()F

    move-result v16

    goto/16 :goto_7

    .line 740
    .restart local v16       #newX:F
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/baidu/multiwaveview/TargetDrawable;

    invoke-virtual/range {v28 .. v28}, Lcom/baidu/multiwaveview/TargetDrawable;->getY()F

    move-result v17

    goto/16 :goto_8

    .line 742
    .restart local v17       #newY:F
    :cond_c
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/multiwaveview/MultiWaveView;->moveHandleTo(FFZ)V

    goto/16 :goto_9

    .line 750
    .end local v16           #newX:F
    .end local v17           #newY:F
    :cond_d
    const/16 v28, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/multiwaveview/MultiWaveView;->switchToState(IFF)V

    .line 751
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/multiwaveview/MultiWaveView;->moveHandleTo(FFZ)V

    .line 752
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/baidu/multiwaveview/TargetDrawable;

    move-object/from16 v28, v0

    const/high16 v29, 0x3f80

    invoke-virtual/range {v28 .. v29}, Lcom/baidu/multiwaveview/TargetDrawable;->setAlpha(F)V

    .line 753
    invoke-direct/range {p0 .. p0}, Lcom/baidu/multiwaveview/MultiWaveView;->onTrackingTarget()V

    goto/16 :goto_a

    .line 758
    .end local v14           #limitX:F
    .end local v15           #limitY:F
    .end local v18           #scale:F
    .end local v19           #singleTarget:Z
    .end local v23           #touchRadius:F
    .end local v24           #tx:F
    .end local v25           #ty:F
    .end local v26           #x:F
    .end local v27           #y:F
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/baidu/multiwaveview/TargetDrawable;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/baidu/multiwaveview/MultiWaveView;->invalidateGlobalRegion(Lcom/baidu/multiwaveview/TargetDrawable;)V

    .line 760
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/multiwaveview/MultiWaveView;->mActiveTarget:I

    move/from16 v28, v0

    move/from16 v0, v28

    if-eq v0, v4, :cond_f

    const/16 v28, -0x1

    move/from16 v0, v28

    if-eq v4, v0, :cond_f

    .line 761
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/baidu/multiwaveview/MultiWaveView;->dispatchGrabbedEvent(I)V

    .line 762
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/multiwaveview/MultiWaveView;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v28

    if-eqz v28, :cond_f

    .line 763
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/baidu/multiwaveview/MultiWaveView;->getTargetDescription(I)Ljava/lang/String;

    move-result-object v22

    .line 764
    .local v22, targetContentDescription:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/baidu/multiwaveview/MultiWaveView;->announceText(Ljava/lang/String;)V

    .line 767
    .end local v22           #targetContentDescription:Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    iput v4, v0, Lcom/baidu/multiwaveview/MultiWaveView;->mActiveTarget:I

    goto/16 :goto_0
.end method

.method private handleUp(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 689
    const/4 v0, 0x4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/baidu/multiwaveview/MultiWaveView;->switchToState(IFF)V

    .line 690
    return-void
.end method

.method private hideChevrons()V
    .locals 3

    .prologue
    .line 874
    iget-object v2, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mChevronDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/multiwaveview/TargetDrawable;

    .line 875
    .local v0, chevron:Lcom/baidu/multiwaveview/TargetDrawable;
    if-eqz v0, :cond_0

    .line 876
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/baidu/multiwaveview/TargetDrawable;->setAlpha(F)V

    goto :goto_0

    .line 879
    .end local v0           #chevron:Lcom/baidu/multiwaveview/TargetDrawable;
    :cond_1
    return-void
.end method

.method private hideTargets(Z)V
    .locals 14
    .parameter "animate"

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v3, 0x0

    const/4 v10, 0x0

    .line 457
    iget-object v4, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mTargetAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 458
    invoke-direct {p0}, Lcom/baidu/multiwaveview/MultiWaveView;->stopTargetAnimation()V

    .line 462
    :cond_0
    iput-boolean p1, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mAnimatingTargets:Z

    .line 463
    if-eqz p1, :cond_3

    .line 464
    if-eqz p1, :cond_1

    const/16 v0, 0x4b0

    .line 465
    .local v0, duration:I
    :goto_0
    iget-object v4, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/multiwaveview/TargetDrawable;

    .line 466
    .local v2, target:Lcom/baidu/multiwaveview/TargetDrawable;
    sget-object v4, Lcom/baidu/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v2, v4}, Lcom/baidu/multiwaveview/TargetDrawable;->setState([I)V

    .line 467
    iget-object v4, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mTargetAnimations:Ljava/util/ArrayList;

    int-to-long v5, v0

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "alpha"

    aput-object v8, v7, v3

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v11

    const-string v8, "delay"

    aput-object v8, v7, v12

    const/16 v8, 0xc8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v13

    const/4 v8, 0x4

    const-string v9, "onUpdate"

    aput-object v9, v7, v8

    const/4 v8, 0x5

    iget-object v9, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v9, v7, v8

    invoke-static {v2, v5, v6, v7}, Lcom/baidu/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/baidu/multiwaveview/Tweener;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v0           #duration:I
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #target:Lcom/baidu/multiwaveview/TargetDrawable;
    :cond_1
    move v0, v3

    .line 464
    goto :goto_0

    .line 472
    .restart local v0       #duration:I
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    iget-object v4, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mTargetAnimations:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mOuterRing:Lcom/baidu/multiwaveview/TargetDrawable;

    int-to-long v6, v0

    const/16 v8, 0x8

    new-array v8, v8, [Ljava/lang/Object;

    const-string v9, "alpha"

    aput-object v9, v8, v3

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v8, v11

    const-string v3, "delay"

    aput-object v3, v8, v12

    const/16 v3, 0xc8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v8, v13

    const/4 v3, 0x4

    const-string v9, "onUpdate"

    aput-object v9, v8, v3

    const/4 v3, 0x5

    iget-object v9, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v9, v8, v3

    const/4 v3, 0x6

    const-string v9, "onComplete"

    aput-object v9, v8, v3

    const/4 v3, 0x7

    iget-object v9, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mTargetUpdateListener:Landroid/animation/Animator$AnimatorListener;

    aput-object v9, v8, v3

    invoke-static {v5, v6, v7, v8}, Lcom/baidu/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/baidu/multiwaveview/Tweener;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 484
    .end local v0           #duration:I
    :goto_2
    return-void

    .line 478
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_3
    iget-object v3, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/multiwaveview/TargetDrawable;

    .line 479
    .restart local v2       #target:Lcom/baidu/multiwaveview/TargetDrawable;
    sget-object v3, Lcom/baidu/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v2, v3}, Lcom/baidu/multiwaveview/TargetDrawable;->setState([I)V

    .line 480
    invoke-virtual {v2, v10}, Lcom/baidu/multiwaveview/TargetDrawable;->setAlpha(F)V

    goto :goto_3

    .line 482
    .end local v2           #target:Lcom/baidu/multiwaveview/TargetDrawable;
    :cond_4
    iget-object v3, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mOuterRing:Lcom/baidu/multiwaveview/TargetDrawable;

    invoke-virtual {v3, v10}, Lcom/baidu/multiwaveview/TargetDrawable;->setAlpha(F)V

    goto :goto_2
.end method

.method private hideUnselected(I)V
    .locals 3
    .parameter "active"

    .prologue
    const/4 v2, 0x0

    .line 448
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 449
    if-eq v0, p1, :cond_0

    .line 450
    iget-object v1, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/multiwaveview/TargetDrawable;

    invoke-virtual {v1, v2}, Lcom/baidu/multiwaveview/TargetDrawable;->setAlpha(F)V

    .line 448
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 453
    :cond_1
    iget-object v1, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mOuterRing:Lcom/baidu/multiwaveview/TargetDrawable;

    invoke-virtual {v1, v2}, Lcom/baidu/multiwaveview/TargetDrawable;->setAlpha(F)V

    .line 454
    return-void
.end method

.method private internalSetTargetResources(I)V
    .locals 7
    .parameter "resourceId"

    .prologue
    .line 527
    invoke-virtual {p0}, Lcom/baidu/multiwaveview/MultiWaveView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 528
    .local v4, res:Landroid/content/res/Resources;
    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 529
    .local v0, array:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    .line 530
    .local v1, count:I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 531
    .local v5, targetDrawables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/multiwaveview/TargetDrawable;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 532
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 533
    .local v2, drawable:Landroid/graphics/drawable/Drawable;
    new-instance v6, Lcom/baidu/multiwaveview/TargetDrawable;

    invoke-direct {v6, v4, v2}, Lcom/baidu/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 531
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 535
    .end local v2           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 536
    iput p1, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mTargetResourceId:I

    .line 537
    iput-object v5, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    .line 538
    invoke-direct {p0}, Lcom/baidu/multiwaveview/MultiWaveView;->updateTargetPositions()V

    .line 539
    return-void
.end method

.method private loadDescriptions(I)Ljava/util/ArrayList;
    .locals 6
    .parameter "resourceId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 968
    invoke-virtual {p0}, Lcom/baidu/multiwaveview/MultiWaveView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 969
    .local v0, array:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    .line 970
    .local v2, count:I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 971
    .local v4, targetContentDescriptions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 972
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 973
    .local v1, contentDescription:Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 971
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 975
    .end local v1           #contentDescription:Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 976
    return-object v4
.end method

.method private moveHandleTo(FFZ)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "animate"

    .prologue
    .line 675
    iget-object v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/baidu/multiwaveview/TargetDrawable;

    invoke-virtual {v0, p1}, Lcom/baidu/multiwaveview/TargetDrawable;->setX(F)V

    .line 676
    iget-object v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/baidu/multiwaveview/TargetDrawable;

    invoke-virtual {v0, p2}, Lcom/baidu/multiwaveview/TargetDrawable;->setY(F)V

    .line 677
    return-void
.end method

.method private onDrawMode(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 1068
    iget v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mCurMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1069
    iget-object v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mHitRing:Lcom/baidu/multiwaveview/TargetDrawable;

    invoke-virtual {v0, p1}, Lcom/baidu/multiwaveview/TargetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1071
    :cond_0
    return-void
.end method

.method private onHitTarget(FF)V
    .locals 3
    .parameter "tx"
    .parameter "ty"

    .prologue
    const/high16 v2, 0x3f80

    .line 1053
    iget v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mCurMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1054
    iget-object v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mHitRing:Lcom/baidu/multiwaveview/TargetDrawable;

    invoke-virtual {v0, p1}, Lcom/baidu/multiwaveview/TargetDrawable;->setX(F)V

    .line 1055
    iget-object v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mHitRing:Lcom/baidu/multiwaveview/TargetDrawable;

    invoke-virtual {v0, p2}, Lcom/baidu/multiwaveview/TargetDrawable;->setY(F)V

    .line 1056
    iget-object v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mHitRing:Lcom/baidu/multiwaveview/TargetDrawable;

    invoke-virtual {v0, v2}, Lcom/baidu/multiwaveview/TargetDrawable;->setAlpha(F)V

    .line 1057
    iget-object v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/baidu/multiwaveview/TargetDrawable;

    invoke-virtual {v0, v2}, Lcom/baidu/multiwaveview/TargetDrawable;->setAlpha(F)V

    .line 1059
    :cond_0
    return-void
.end method

.method private onIdle()V
    .locals 2

    .prologue
    .line 1074
    iget v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mCurMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1075
    iget-object v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mHitRing:Lcom/baidu/multiwaveview/TargetDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/multiwaveview/TargetDrawable;->setAlpha(F)V

    .line 1077
    :cond_0
    return-void
.end method

.method private onTrackingTarget()V
    .locals 2

    .prologue
    .line 1062
    iget v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mCurMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1063
    iget-object v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mHitRing:Lcom/baidu/multiwaveview/TargetDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/multiwaveview/TargetDrawable;->setAlpha(F)V

    .line 1065
    :cond_0
    return-void
.end method

.method private performInitialLayout(FF)V
    .locals 5
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 823
    iget v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mOuterRadius:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_0

    .line 824
    const/high16 v0, 0x3f00

    invoke-direct {p0, p1, p2}, Lcom/baidu/multiwaveview/MultiWaveView;->dist2(FF)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mOuterRadius:F

    .line 826
    :cond_0
    iget v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mHitRadius:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_1

    .line 828
    iget-object v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/multiwaveview/TargetDrawable;

    invoke-virtual {v0}, Lcom/baidu/multiwaveview/TargetDrawable;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    iput v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mHitRadius:F

    .line 830
    :cond_1
    iget v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mSnapMargin:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_2

    .line 831
    const/4 v0, 0x1

    const/high16 v1, 0x41a0

    invoke-virtual {p0}, Lcom/baidu/multiwaveview/MultiWaveView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mSnapMargin:F

    .line 834
    :cond_2
    invoke-direct {p0}, Lcom/baidu/multiwaveview/MultiWaveView;->hideChevrons()V

    .line 836
    invoke-direct {p0, p1, p2, v4}, Lcom/baidu/multiwaveview/MultiWaveView;->moveHandleTo(FFZ)V

    .line 837
    return-void
.end method

.method private resolveMeasured(II)I
    .locals 3
    .parameter "measureSpec"
    .parameter "desired"

    .prologue
    .line 253
    const/4 v0, 0x0

    .line 254
    .local v0, result:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 255
    .local v1, specSize:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 264
    move v0, v1

    .line 266
    :goto_0
    return v0

    .line 257
    :sswitch_0
    move v0, p2

    .line 258
    goto :goto_0

    .line 260
    :sswitch_1
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 261
    goto :goto_0

    .line 255
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method private setGrabbedState(I)V
    .locals 2
    .parameter "newState"

    .prologue
    .line 796
    iget v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mGrabbedState:I

    if-eq p1, v0, :cond_1

    .line 797
    if-eqz p1, :cond_0

    .line 798
    invoke-direct {p0}, Lcom/baidu/multiwaveview/MultiWaveView;->vibrate()V

    .line 800
    :cond_0
    iput p1, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mGrabbedState:I

    .line 801
    iget-object v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mOnTriggerListener:Lcom/baidu/multiwaveview/MultiWaveView$OnTriggerListener;

    if-eqz v0, :cond_1

    .line 802
    iget-object v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mOnTriggerListener:Lcom/baidu/multiwaveview/MultiWaveView$OnTriggerListener;

    iget v1, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mGrabbedState:I

    invoke-interface {v0, p0, v1}, Lcom/baidu/multiwaveview/MultiWaveView$OnTriggerListener;->onGrabbedStateChange(Landroid/view/View;I)V

    .line 805
    :cond_1
    return-void
.end method

.method private showTargets(Z)V
    .locals 13
    .parameter "animate"

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/high16 v8, 0x3f80

    .line 487
    iget-object v2, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mTargetAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 488
    invoke-direct {p0}, Lcom/baidu/multiwaveview/MultiWaveView;->stopTargetAnimation()V

    .line 490
    :cond_0
    iput-boolean p1, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mAnimatingTargets:Z

    .line 491
    if-eqz p1, :cond_2

    .line 492
    iget-object v2, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/multiwaveview/TargetDrawable;

    .line 493
    .local v1, target:Lcom/baidu/multiwaveview/TargetDrawable;
    sget-object v2, Lcom/baidu/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v1, v2}, Lcom/baidu/multiwaveview/TargetDrawable;->setState([I)V

    .line 494
    iget-object v2, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mTargetAnimations:Ljava/util/ArrayList;

    const-wide/16 v3, 0x0

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "alpha"

    aput-object v6, v5, v9

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v10

    const-string v6, "delay"

    aput-object v6, v5, v11

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v12

    const/4 v6, 0x4

    const-string v7, "onUpdate"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    iget-object v7, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v7, v5, v6

    invoke-static {v1, v3, v4, v5}, Lcom/baidu/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/baidu/multiwaveview/Tweener;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 499
    .end local v1           #target:Lcom/baidu/multiwaveview/TargetDrawable;
    :cond_1
    iget-object v2, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mTargetAnimations:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mOuterRing:Lcom/baidu/multiwaveview/TargetDrawable;

    const-wide/16 v4, 0x0

    const/16 v6, 0x8

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "alpha"

    aput-object v7, v6, v9

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v10

    const-string v7, "delay"

    aput-object v7, v6, v11

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v12

    const/4 v7, 0x4

    const-string v8, "onUpdate"

    aput-object v8, v6, v7

    const/4 v7, 0x5

    iget-object v8, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v8, v6, v7

    const/4 v7, 0x6

    const-string v8, "onComplete"

    aput-object v8, v6, v7

    const/4 v7, 0x7

    iget-object v8, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mTargetUpdateListener:Landroid/animation/Animator$AnimatorListener;

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5, v6}, Lcom/baidu/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/baidu/multiwaveview/Tweener;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 511
    :goto_1
    return-void

    .line 505
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_2
    iget-object v2, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/multiwaveview/TargetDrawable;

    .line 506
    .restart local v1       #target:Lcom/baidu/multiwaveview/TargetDrawable;
    sget-object v2, Lcom/baidu/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v1, v2}, Lcom/baidu/multiwaveview/TargetDrawable;->setState([I)V

    .line 507
    invoke-virtual {v1, v8}, Lcom/baidu/multiwaveview/TargetDrawable;->setAlpha(F)V

    goto :goto_2

    .line 509
    .end local v1           #target:Lcom/baidu/multiwaveview/TargetDrawable;
    :cond_3
    iget-object v2, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mOuterRing:Lcom/baidu/multiwaveview/TargetDrawable;

    invoke-virtual {v2, v8}, Lcom/baidu/multiwaveview/TargetDrawable;->setAlpha(F)V

    goto :goto_1
.end method

.method private square(F)F
    .locals 1
    .parameter "d"

    .prologue
    .line 903
    mul-float v0, p1, p1

    return v0
.end method

.method private startChevronAnimation()V
    .locals 23

    .prologue
    .line 315
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/baidu/multiwaveview/TargetDrawable;

    invoke-virtual {v3}, Lcom/baidu/multiwaveview/TargetDrawable;->getWidth()I

    move-result v3

    int-to-float v8, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/baidu/multiwaveview/MultiWaveView;->mCurMode:I

    if-nez v3, :cond_1

    const v3, 0x3ecccccd

    :goto_0
    mul-float v14, v8, v3

    .line 316
    .local v14, r:F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/baidu/multiwaveview/MultiWaveView;->mOuterRadius:F

    const v8, 0x3f666666

    mul-float v10, v3, v8

    .line 317
    .local v10, chevronAnimationDistance:F
    const/4 v3, 0x4

    new-array v6, v3, [[F

    const/4 v3, 0x0

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/multiwaveview/MultiWaveView;->mWaveCenterX:F

    move/from16 v16, v0

    sub-float v16, v16, v14

    aput v16, v8, v9

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/multiwaveview/MultiWaveView;->mWaveCenterY:F

    move/from16 v16, v0

    aput v16, v8, v9

    aput-object v8, v6, v3

    const/4 v3, 0x1

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/multiwaveview/MultiWaveView;->mWaveCenterX:F

    move/from16 v16, v0

    add-float v16, v16, v14

    aput v16, v8, v9

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/multiwaveview/MultiWaveView;->mWaveCenterY:F

    move/from16 v16, v0

    aput v16, v8, v9

    aput-object v8, v6, v3

    const/4 v3, 0x2

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/multiwaveview/MultiWaveView;->mWaveCenterX:F

    move/from16 v16, v0

    aput v16, v8, v9

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/multiwaveview/MultiWaveView;->mWaveCenterY:F

    move/from16 v16, v0

    sub-float v16, v16, v14

    aput v16, v8, v9

    aput-object v8, v6, v3

    const/4 v3, 0x3

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/multiwaveview/MultiWaveView;->mWaveCenterX:F

    move/from16 v16, v0

    aput v16, v8, v9

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/multiwaveview/MultiWaveView;->mWaveCenterY:F

    move/from16 v16, v0

    add-float v16, v16, v14

    aput v16, v8, v9

    aput-object v8, v6, v3

    .line 322
    .local v6, from:[[F
    const/4 v3, 0x4

    new-array v7, v3, [[F

    const/4 v3, 0x0

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/multiwaveview/MultiWaveView;->mWaveCenterX:F

    move/from16 v16, v0

    sub-float v16, v16, v10

    aput v16, v8, v9

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/multiwaveview/MultiWaveView;->mWaveCenterY:F

    move/from16 v16, v0

    aput v16, v8, v9

    aput-object v8, v7, v3

    const/4 v3, 0x1

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/multiwaveview/MultiWaveView;->mWaveCenterX:F

    move/from16 v16, v0

    add-float v16, v16, v10

    aput v16, v8, v9

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/multiwaveview/MultiWaveView;->mWaveCenterY:F

    move/from16 v16, v0

    aput v16, v8, v9

    aput-object v8, v7, v3

    const/4 v3, 0x2

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/multiwaveview/MultiWaveView;->mWaveCenterX:F

    move/from16 v16, v0

    aput v16, v8, v9

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/multiwaveview/MultiWaveView;->mWaveCenterY:F

    move/from16 v16, v0

    sub-float v16, v16, v10

    aput v16, v8, v9

    aput-object v8, v7, v3

    const/4 v3, 0x3

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/multiwaveview/MultiWaveView;->mWaveCenterX:F

    move/from16 v16, v0

    aput v16, v8, v9

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/multiwaveview/MultiWaveView;->mWaveCenterY:F

    move/from16 v16, v0

    add-float v16, v16, v10

    aput v16, v8, v9

    aput-object v8, v7, v3

    .line 328
    .local v7, to:[[F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/multiwaveview/MultiWaveView;->mChevronAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 329
    const/high16 v15, 0x3f00

    .line 330
    .local v15, startScale:F
    const/high16 v12, 0x4000

    .line 331
    .local v12, endScale:F
    const/4 v4, 0x0

    .local v4, direction:I
    :goto_1
    const/4 v3, 0x4

    if-ge v4, v3, :cond_4

    .line 332
    const/4 v5, 0x0

    .local v5, count:I
    :goto_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/baidu/multiwaveview/MultiWaveView;->mFeedbackCount:I

    if-ge v5, v3, :cond_3

    .line 333
    mul-int/lit16 v11, v5, 0xa0

    .line 334
    .local v11, delay:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/multiwaveview/MultiWaveView;->mChevronDrawables:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/baidu/multiwaveview/MultiWaveView;->mFeedbackCount:I

    mul-int/2addr v8, v4

    add-int/2addr v8, v5

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/baidu/multiwaveview/TargetDrawable;

    .line 335
    .local v13, icon:Lcom/baidu/multiwaveview/TargetDrawable;
    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/multiwaveview/MultiWaveView;->mChevronHideMask:[Z

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_2

    .line 332
    :cond_0
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 315
    .end local v4           #direction:I
    .end local v5           #count:I
    .end local v6           #from:[[F
    .end local v7           #to:[[F
    .end local v10           #chevronAnimationDistance:F
    .end local v11           #delay:I
    .end local v12           #endScale:F
    .end local v13           #icon:Lcom/baidu/multiwaveview/TargetDrawable;
    .end local v14           #r:F
    .end local v15           #startScale:F
    :cond_1
    const v3, 0x3f19999a

    goto/16 :goto_0

    .line 338
    .restart local v4       #direction:I
    .restart local v5       #count:I
    .restart local v6       #from:[[F
    .restart local v7       #to:[[F
    .restart local v10       #chevronAnimationDistance:F
    .restart local v11       #delay:I
    .restart local v12       #endScale:F
    .restart local v13       #icon:Lcom/baidu/multiwaveview/TargetDrawable;
    .restart local v14       #r:F
    .restart local v15       #startScale:F
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/multiwaveview/MultiWaveView;->mChevronAnimations:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    const-wide/16 v17, 0x352

    const/16 v3, 0x10

    new-array v0, v3, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/4 v3, 0x0

    const-string v8, "ease"

    aput-object v8, v19, v3

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/baidu/multiwaveview/MultiWaveView;->mChevronAnimationInterpolator:Landroid/animation/TimeInterpolator;

    aput-object v8, v19, v3

    const/4 v3, 0x2

    const-string v8, "delay"

    aput-object v8, v19, v3

    const/4 v3, 0x3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v19, v3

    const/4 v3, 0x4

    const-string v8, "x"

    aput-object v8, v19, v3

    const/16 v20, 0x5

    const/4 v3, 0x2

    new-array v0, v3, [F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/baidu/multiwaveview/MultiWaveView;->getPos(II[[F[[FII)F

    move-result v3

    aput v3, v21, v22

    const/16 v22, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/baidu/multiwaveview/MultiWaveView;->getPos(II[[F[[FII)F

    move-result v3

    aput v3, v21, v22

    aput-object v21, v19, v20

    const/4 v3, 0x6

    const-string v8, "y"

    aput-object v8, v19, v3

    const/16 v20, 0x7

    const/4 v3, 0x2

    new-array v0, v3, [F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/baidu/multiwaveview/MultiWaveView;->getPos(II[[F[[FII)F

    move-result v3

    aput v3, v21, v22

    const/16 v22, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/baidu/multiwaveview/MultiWaveView;->getPos(II[[F[[FII)F

    move-result v3

    aput v3, v21, v22

    aput-object v21, v19, v20

    const/16 v3, 0x8

    const-string v8, "alpha"

    aput-object v8, v19, v3

    const/16 v3, 0x9

    invoke-direct/range {p0 .. p0}, Lcom/baidu/multiwaveview/MultiWaveView;->getAlphas()[F

    move-result-object v8

    aput-object v8, v19, v3

    const/16 v3, 0xa

    const-string v8, "scaleX"

    aput-object v8, v19, v3

    const/16 v3, 0xb

    invoke-direct/range {p0 .. p0}, Lcom/baidu/multiwaveview/MultiWaveView;->getScales()[F

    move-result-object v8

    aput-object v8, v19, v3

    const/16 v3, 0xc

    const-string v8, "scaleY"

    aput-object v8, v19, v3

    const/16 v3, 0xd

    invoke-direct/range {p0 .. p0}, Lcom/baidu/multiwaveview/MultiWaveView;->getScales()[F

    move-result-object v8

    aput-object v8, v19, v3

    const/16 v3, 0xe

    const-string v8, "onUpdate"

    aput-object v8, v19, v3

    const/16 v3, 0xf

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/baidu/multiwaveview/MultiWaveView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v8, v19, v3

    move-wide/from16 v0, v17

    move-object/from16 v2, v19

    invoke-static {v13, v0, v1, v2}, Lcom/baidu/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/baidu/multiwaveview/Tweener;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 331
    .end local v11           #delay:I
    .end local v13           #icon:Lcom/baidu/multiwaveview/TargetDrawable;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 349
    .end local v5           #count:I
    :cond_4
    return-void
.end method

.method private stopChevronAnimation()V
    .locals 3

    .prologue
    .line 352
    iget-object v2, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mChevronAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/multiwaveview/Tweener;

    .line 353
    .local v0, anim:Lcom/baidu/multiwaveview/Tweener;
    iget-object v2, v0, Lcom/baidu/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->end()V

    goto :goto_0

    .line 355
    .end local v0           #anim:Lcom/baidu/multiwaveview/Tweener;
    :cond_0
    iget-object v2, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mChevronAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 356
    return-void
.end method

.method private stopHandleAnimation()V
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mHandleAnimation:Lcom/baidu/multiwaveview/Tweener;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mHandleAnimation:Lcom/baidu/multiwaveview/Tweener;

    iget-object v0, v0, Lcom/baidu/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 361
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mHandleAnimation:Lcom/baidu/multiwaveview/Tweener;

    .line 363
    :cond_0
    return-void
.end method

.method private stopTargetAnimation()V
    .locals 3

    .prologue
    .line 514
    iget-object v2, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mTargetAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/multiwaveview/Tweener;

    .line 515
    .local v0, anim:Lcom/baidu/multiwaveview/Tweener;
    iget-object v2, v0, Lcom/baidu/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->end()V

    goto :goto_0

    .line 517
    .end local v0           #anim:Lcom/baidu/multiwaveview/Tweener;
    :cond_0
    iget-object v2, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mTargetAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 518
    return-void
.end method

.method private switchToState(IFF)V
    .locals 3
    .parameter "state"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, 0x1

    .line 279
    packed-switch p1, :pswitch_data_0

    .line 307
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 281
    :pswitch_1
    invoke-virtual {p0}, Lcom/baidu/multiwaveview/MultiWaveView;->deactivateTargets()V

    .line 282
    iget-object v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/baidu/multiwaveview/TargetDrawable;

    sget-object v1, Lcom/baidu/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v0, v1}, Lcom/baidu/multiwaveview/TargetDrawable;->setState([I)V

    .line 283
    invoke-direct {p0}, Lcom/baidu/multiwaveview/MultiWaveView;->onIdle()V

    goto :goto_0

    .line 287
    :pswitch_2
    invoke-direct {p0}, Lcom/baidu/multiwaveview/MultiWaveView;->stopHandleAnimation()V

    .line 288
    invoke-virtual {p0}, Lcom/baidu/multiwaveview/MultiWaveView;->deactivateTargets()V

    .line 289
    invoke-direct {p0, v2}, Lcom/baidu/multiwaveview/MultiWaveView;->showTargets(Z)V

    .line 290
    iget-object v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/baidu/multiwaveview/TargetDrawable;

    sget-object v1, Lcom/baidu/multiwaveview/TargetDrawable;->STATE_ACTIVE:[I

    invoke-virtual {v0, v1}, Lcom/baidu/multiwaveview/TargetDrawable;->setState([I)V

    .line 291
    invoke-direct {p0, v2}, Lcom/baidu/multiwaveview/MultiWaveView;->setGrabbedState(I)V

    .line 292
    iget-object v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    invoke-direct {p0}, Lcom/baidu/multiwaveview/MultiWaveView;->announceTargets()V

    goto :goto_0

    .line 304
    :pswitch_3
    invoke-direct {p0}, Lcom/baidu/multiwaveview/MultiWaveView;->doFinish()V

    goto :goto_0

    .line 279
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private trySwitchToFirstTouchState(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 808
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 809
    .local v2, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 810
    .local v3, y:F
    iget v6, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mWaveCenterX:F

    sub-float v0, v2, v6

    .line 811
    .local v0, dx:F
    iget v6, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mWaveCenterY:F

    sub-float v1, v3, v6

    .line 812
    .local v1, dy:F
    invoke-direct {p0, v0, v1}, Lcom/baidu/multiwaveview/MultiWaveView;->dist2(FF)F

    move-result v6

    invoke-direct {p0}, Lcom/baidu/multiwaveview/MultiWaveView;->getScaledTapRadiusSquared()F

    move-result v7

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_0

    .line 814
    invoke-direct {p0, v4, v2, v3}, Lcom/baidu/multiwaveview/MultiWaveView;->switchToState(IFF)V

    .line 815
    invoke-direct {p0, v2, v3, v5}, Lcom/baidu/multiwaveview/MultiWaveView;->moveHandleTo(FFZ)V

    .line 816
    iput-boolean v4, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mDragging:Z

    .line 819
    :goto_0
    return v4

    :cond_0
    move v4, v5

    goto :goto_0
.end method

.method private updateTargetPositions()V
    .locals 10

    .prologue
    .line 863
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v6, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 864
    iget-object v6, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/multiwaveview/TargetDrawable;

    .line 865
    .local v3, targetIcon:Lcom/baidu/multiwaveview/TargetDrawable;
    const-wide v6, -0x3fe6de04abbbd2e8L

    int-to-double v8, v2

    mul-double/2addr v6, v8

    iget-object v8, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    int-to-double v8, v8

    div-double v0, v6, v8

    .line 866
    .local v0, angle:D
    iget v6, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mWaveCenterX:F

    iget v7, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mOuterRadius:F

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v8, v8

    mul-float/2addr v7, v8

    add-float v4, v6, v7

    .line 867
    .local v4, xPosition:F
    iget v6, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mWaveCenterY:F

    iget v7, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mOuterRadius:F

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v8, v8

    mul-float/2addr v7, v8

    add-float v5, v6, v7

    .line 868
    .local v5, yPosition:F
    invoke-virtual {v3, v4}, Lcom/baidu/multiwaveview/TargetDrawable;->setX(F)V

    .line 869
    invoke-virtual {v3, v5}, Lcom/baidu/multiwaveview/TargetDrawable;->setY(F)V

    .line 863
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 871
    .end local v0           #angle:D
    .end local v3           #targetIcon:Lcom/baidu/multiwaveview/TargetDrawable;
    .end local v4           #xPosition:F
    .end local v5           #yPosition:F
    :cond_0
    return-void
.end method

.method private vibrate()V
    .locals 3

    .prologue
    .line 521
    iget-object v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mVibrator:Landroid/os/Vibrator;

    iget v1, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mVibrationDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 524
    :cond_0
    return-void
.end method


# virtual methods
.method public deactivateTargets()V
    .locals 3

    .prologue
    .line 367
    iget-object v2, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/multiwaveview/TargetDrawable;

    .line 368
    .local v1, target:Lcom/baidu/multiwaveview/TargetDrawable;
    sget-object v2, Lcom/baidu/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v1, v2}, Lcom/baidu/multiwaveview/TargetDrawable;->setState([I)V

    goto :goto_0

    .line 370
    .end local v1           #target:Lcom/baidu/multiwaveview/TargetDrawable;
    :cond_0
    const/4 v2, -0x1

    iput v2, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mActiveTarget:I

    .line 371
    return-void
.end method

.method public getDirectionDescriptionsResourceId()I
    .locals 1

    .prologue
    .line 598
    iget v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mDirectionDescriptionsResourceId:I

    return v0
.end method

.method public getHOffset()F
    .locals 1

    .prologue
    .line 980
    iget v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mHorizontalOffset:F

    return v0
.end method

.method public getMODE()I
    .locals 1

    .prologue
    .line 1087
    iget v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mCurMode:I

    return v0
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 247
    iget-object v1, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mOuterRing:Lcom/baidu/multiwaveview/TargetDrawable;

    invoke-virtual {v1}, Lcom/baidu/multiwaveview/TargetDrawable;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/multiwaveview/TargetDrawable;

    invoke-virtual {v0}, Lcom/baidu/multiwaveview/TargetDrawable;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    :cond_0
    add-int/2addr v0, v1

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 240
    iget-object v1, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mOuterRing:Lcom/baidu/multiwaveview/TargetDrawable;

    invoke-virtual {v1}, Lcom/baidu/multiwaveview/TargetDrawable;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/multiwaveview/TargetDrawable;

    invoke-virtual {v0}, Lcom/baidu/multiwaveview/TargetDrawable;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    :cond_0
    add-int/2addr v0, v1

    return v0
.end method

.method public getTargetDescriptionsResourceId()I
    .locals 1

    .prologue
    .line 577
    iget v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mTargetDescriptionsResourceId:I

    return v0
.end method

.method public getTargetResourceId()I
    .locals 1

    .prologue
    .line 556
    iget v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mTargetResourceId:I

    return v0
.end method

.method public getVOffset()F
    .locals 1

    .prologue
    .line 984
    iget v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mVerticalOffset:F

    return v0
.end method

.method public hideChevron(ZZZZ)V
    .locals 2
    .parameter "h1"
    .parameter "h2"
    .parameter "h3"
    .parameter "h4"

    .prologue
    .line 1080
    iget-object v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mChevronHideMask:[Z

    const/4 v1, 0x0

    aput-boolean p1, v0, v1

    .line 1081
    iget-object v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mChevronHideMask:[Z

    const/4 v1, 0x1

    aput-boolean p2, v0, v1

    .line 1082
    iget-object v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mChevronHideMask:[Z

    const/4 v1, 0x2

    aput-boolean p3, v0, v1

    .line 1083
    iget-object v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mChevronHideMask:[Z

    const/4 v1, 0x3

    aput-boolean p4, v0, v1

    .line 1084
    return-void
.end method

.method invalidateGlobalRegion(Lcom/baidu/multiwaveview/TargetDrawable;)V
    .locals 9
    .parameter "drawable"

    .prologue
    const/4 v6, 0x0

    .line 374
    invoke-virtual {p1}, Lcom/baidu/multiwaveview/TargetDrawable;->getWidth()I

    move-result v3

    .line 375
    .local v3, width:I
    invoke-virtual {p1}, Lcom/baidu/multiwaveview/TargetDrawable;->getHeight()I

    move-result v1

    .line 376
    .local v1, height:I
    new-instance v0, Landroid/graphics/RectF;

    int-to-float v4, v3

    int-to-float v5, v1

    invoke-direct {v0, v6, v6, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 377
    .local v0, childBounds:Landroid/graphics/RectF;
    invoke-virtual {p1}, Lcom/baidu/multiwaveview/TargetDrawable;->getX()F

    move-result v4

    div-int/lit8 v5, v3, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {p1}, Lcom/baidu/multiwaveview/TargetDrawable;->getY()F

    move-result v5

    div-int/lit8 v6, v1, 0x2

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {v0, v4, v5}, Landroid/graphics/RectF;->offset(FF)V

    .line 378
    move-object v2, p0

    .line 379
    .local v2, view:Landroid/view/View;
    :goto_0
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v4, v4, Landroid/view/View;

    if-eqz v4, :cond_0

    .line 380
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .end local v2           #view:Landroid/view/View;
    check-cast v2, Landroid/view/View;

    .line 381
    .restart local v2       #view:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 382
    iget v4, v0, Landroid/graphics/RectF;->left:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    iget v5, v0, Landroid/graphics/RectF;->top:F

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    iget v6, v0, Landroid/graphics/RectF;->right:F

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    iget v7, v0, Landroid/graphics/RectF;->bottom:F

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v7, v7

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_0

    .line 387
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 883
    iget-object v2, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mOuterRing:Lcom/baidu/multiwaveview/TargetDrawable;

    invoke-virtual {v2, p1}, Lcom/baidu/multiwaveview/TargetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 884
    iget-object v2, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/multiwaveview/TargetDrawable;

    .line 885
    .local v1, target:Lcom/baidu/multiwaveview/TargetDrawable;
    if-eqz v1, :cond_0

    .line 886
    invoke-virtual {v1, p1}, Lcom/baidu/multiwaveview/TargetDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 889
    .end local v1           #target:Lcom/baidu/multiwaveview/TargetDrawable;
    :cond_1
    iget-object v2, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mChevronDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/multiwaveview/TargetDrawable;

    .line 890
    .restart local v1       #target:Lcom/baidu/multiwaveview/TargetDrawable;
    if-eqz v1, :cond_2

    .line 891
    invoke-virtual {v1, p1}, Lcom/baidu/multiwaveview/TargetDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 894
    .end local v1           #target:Lcom/baidu/multiwaveview/TargetDrawable;
    :cond_3
    iget-object v2, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/baidu/multiwaveview/TargetDrawable;

    invoke-virtual {v2, p1}, Lcom/baidu/multiwaveview/TargetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 895
    invoke-direct {p0, p1}, Lcom/baidu/multiwaveview/MultiWaveView;->onDrawMode(Landroid/graphics/Canvas;)V

    .line 896
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 772
    iget-object v1, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 773
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 774
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 785
    :goto_0
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/baidu/multiwaveview/MultiWaveView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 786
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 788
    .end local v0           #action:I
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 776
    .restart local v0       #action:I
    :pswitch_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 779
    :pswitch_2
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 782
    :pswitch_3
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 774
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 841
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 842
    sub-int v3, p4, p2

    .line 843
    .local v3, width:I
    sub-int v0, p5, p3

    .line 844
    .local v0, height:I
    iget v4, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mHorizontalOffset:F

    iget-object v5, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mOuterRing:Lcom/baidu/multiwaveview/TargetDrawable;

    invoke-virtual {v5}, Lcom/baidu/multiwaveview/TargetDrawable;->getWidth()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float v1, v4, v5

    .line 845
    .local v1, newWaveCenterX:F
    iget v4, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mVerticalOffset:F

    iget-object v5, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mOuterRing:Lcom/baidu/multiwaveview/TargetDrawable;

    invoke-virtual {v5}, Lcom/baidu/multiwaveview/TargetDrawable;->getHeight()I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float v2, v4, v5

    .line 846
    .local v2, newWaveCenterY:F
    iget v4, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mWaveCenterX:F

    sub-float v4, v1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sget v5, Lcom/baidu/multiwaveview/MultiWaveView;->EPSILON:F

    cmpl-float v4, v4, v5

    if-gez v4, :cond_0

    iget v4, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mWaveCenterY:F

    sub-float v4, v2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sget v5, Lcom/baidu/multiwaveview/MultiWaveView;->EPSILON:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_2

    .line 847
    :cond_0
    iget v4, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mWaveCenterX:F

    sget v5, Lcom/baidu/multiwaveview/MultiWaveView;->EPSILON:F

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_1

    iget v4, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mWaveCenterY:F

    sget v5, Lcom/baidu/multiwaveview/MultiWaveView;->EPSILON:F

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_1

    .line 848
    invoke-direct {p0, v1, v2}, Lcom/baidu/multiwaveview/MultiWaveView;->performInitialLayout(FF)V

    .line 850
    :cond_1
    iput v1, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mWaveCenterX:F

    .line 851
    iput v2, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mWaveCenterY:F

    .line 853
    iget-object v4, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mOuterRing:Lcom/baidu/multiwaveview/TargetDrawable;

    iget v5, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mWaveCenterX:F

    invoke-virtual {v4, v5}, Lcom/baidu/multiwaveview/TargetDrawable;->setX(F)V

    .line 854
    iget-object v4, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mOuterRing:Lcom/baidu/multiwaveview/TargetDrawable;

    iget v5, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mWaveCenterY:F

    iget v6, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mWaveCenterY:F

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/baidu/multiwaveview/TargetDrawable;->setY(F)V

    .line 856
    invoke-direct {p0}, Lcom/baidu/multiwaveview/MultiWaveView;->updateTargetPositions()V

    .line 859
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 271
    invoke-virtual {p0}, Lcom/baidu/multiwaveview/MultiWaveView;->getSuggestedMinimumWidth()I

    move-result v1

    .line 272
    .local v1, minimumWidth:I
    invoke-virtual {p0}, Lcom/baidu/multiwaveview/MultiWaveView;->getSuggestedMinimumHeight()I

    move-result v0

    .line 273
    .local v0, minimumHeight:I
    invoke-direct {p0, p1, v1}, Lcom/baidu/multiwaveview/MultiWaveView;->resolveMeasured(II)I

    move-result v3

    .line 274
    .local v3, viewWidth:I
    invoke-direct {p0, p2, v0}, Lcom/baidu/multiwaveview/MultiWaveView;->resolveMeasured(II)I

    move-result v2

    .line 275
    .local v2, viewHeight:I
    invoke-virtual {p0, v3, v2}, Lcom/baidu/multiwaveview/MultiWaveView;->setMeasuredDimension(II)V

    .line 276
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 644
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 646
    .local v0, action:I
    const/4 v1, 0x0

    .line 647
    .local v1, handled:Z
    packed-switch v0, :pswitch_data_0

    .line 669
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/multiwaveview/MultiWaveView;->invalidate()V

    .line 670
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :goto_1
    return v2

    .line 649
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/baidu/multiwaveview/MultiWaveView;->handleDown(Landroid/view/MotionEvent;)V

    .line 650
    const/4 v1, 0x1

    .line 651
    goto :goto_0

    .line 654
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/baidu/multiwaveview/MultiWaveView;->handleMove(Landroid/view/MotionEvent;)V

    .line 655
    const/4 v1, 0x1

    .line 656
    goto :goto_0

    .line 659
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/baidu/multiwaveview/MultiWaveView;->handleMove(Landroid/view/MotionEvent;)V

    .line 660
    invoke-direct {p0, p1}, Lcom/baidu/multiwaveview/MultiWaveView;->handleUp(Landroid/view/MotionEvent;)V

    .line 661
    const/4 v1, 0x1

    .line 662
    goto :goto_0

    .line 665
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/baidu/multiwaveview/MultiWaveView;->handleMove(Landroid/view/MotionEvent;)V

    .line 666
    const/4 v1, 0x1

    goto :goto_0

    .line 670
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_1

    .line 647
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public ping()V
    .locals 0

    .prologue
    .line 620
    invoke-direct {p0}, Lcom/baidu/multiwaveview/MultiWaveView;->stopChevronAnimation()V

    .line 621
    invoke-direct {p0}, Lcom/baidu/multiwaveview/MultiWaveView;->startChevronAnimation()V

    .line 622
    return-void
.end method

.method public reset(Z)V
    .locals 2
    .parameter "animate"

    .prologue
    .line 631
    invoke-direct {p0}, Lcom/baidu/multiwaveview/MultiWaveView;->stopChevronAnimation()V

    .line 632
    invoke-direct {p0}, Lcom/baidu/multiwaveview/MultiWaveView;->stopHandleAnimation()V

    .line 633
    invoke-direct {p0}, Lcom/baidu/multiwaveview/MultiWaveView;->stopTargetAnimation()V

    .line 634
    invoke-direct {p0}, Lcom/baidu/multiwaveview/MultiWaveView;->hideChevrons()V

    .line 636
    iget-object v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/baidu/multiwaveview/TargetDrawable;

    iget v1, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mWaveCenterX:F

    invoke-virtual {v0, v1}, Lcom/baidu/multiwaveview/TargetDrawable;->setX(F)V

    .line 637
    iget-object v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/baidu/multiwaveview/TargetDrawable;

    iget v1, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mWaveCenterY:F

    invoke-virtual {v0, v1}, Lcom/baidu/multiwaveview/TargetDrawable;->setY(F)V

    .line 638
    iget-object v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/baidu/multiwaveview/TargetDrawable;

    sget-object v1, Lcom/baidu/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v0, v1}, Lcom/baidu/multiwaveview/TargetDrawable;->setState([I)V

    .line 639
    invoke-static {}, Lcom/baidu/multiwaveview/Tweener;->reset()V

    .line 640
    return-void
.end method

.method public setDirectionDescriptionsResourceId(I)V
    .locals 1
    .parameter "resourceId"

    .prologue
    .line 586
    iput p1, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mDirectionDescriptionsResourceId:I

    .line 587
    iget-object v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mDirectionDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mDirectionDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 590
    :cond_0
    return-void
.end method

.method public setMODE(I)V
    .locals 0
    .parameter "m"

    .prologue
    .line 993
    iput p1, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mCurMode:I

    .line 994
    return-void
.end method

.method public setOffset(FF)V
    .locals 0
    .parameter "h"
    .parameter "v"

    .prologue
    .line 988
    iput p2, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mVerticalOffset:F

    .line 989
    iput p1, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mHorizontalOffset:F

    .line 990
    return-void
.end method

.method public setOnTriggerListener(Lcom/baidu/multiwaveview/MultiWaveView$OnTriggerListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 899
    iput-object p1, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mOnTriggerListener:Lcom/baidu/multiwaveview/MultiWaveView$OnTriggerListener;

    .line 900
    return-void
.end method

.method public setTargetDescriptionsResourceId(I)V
    .locals 1
    .parameter "resourceId"

    .prologue
    .line 565
    iput p1, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mTargetDescriptionsResourceId:I

    .line 566
    iget-object v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mTargetDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 569
    :cond_0
    return-void
.end method

.method public setTargetResource(ILandroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "index"
    .parameter "d"

    .prologue
    .line 1091
    if-eqz p2, :cond_0

    .line 1092
    invoke-virtual {p0}, Lcom/baidu/multiwaveview/MultiWaveView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1093
    .local v0, res:Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    new-instance v2, Lcom/baidu/multiwaveview/TargetDrawable;

    invoke-direct {v2, v0, p2}, Lcom/baidu/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, p1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1094
    invoke-direct {p0}, Lcom/baidu/multiwaveview/MultiWaveView;->updateTargetPositions()V

    .line 1096
    .end local v0           #res:Landroid/content/res/Resources;
    :cond_0
    return-void
.end method

.method public setTargetResources(I)V
    .locals 1
    .parameter "resourceId"

    .prologue
    .line 547
    iget-boolean v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mAnimatingTargets:Z

    if-eqz v0, :cond_0

    .line 549
    iput p1, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mNewTargetResources:I

    .line 553
    :goto_0
    return-void

    .line 551
    :cond_0
    invoke-direct {p0, p1}, Lcom/baidu/multiwaveview/MultiWaveView;->internalSetTargetResources(I)V

    goto :goto_0
.end method

.method public setVibrateEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 607
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    .line 608
    invoke-virtual {p0}, Lcom/baidu/multiwaveview/MultiWaveView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mVibrator:Landroid/os/Vibrator;

    .line 612
    :goto_0
    return-void

    .line 610
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mVibrator:Landroid/os/Vibrator;

    goto :goto_0
.end method
