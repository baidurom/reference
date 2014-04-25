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

    .line 1020
    const/16 v11, 0x14

    iput v11, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mBaseOffset:I

    .line 1021
    const/4 v11, 0x0

    iput v11, p0, Lcom/baidu/multiwaveview/MultiWaveView;->TYPE_X:I

    .line 1022
    const/4 v11, 0x1

    iput v11, p0, Lcom/baidu/multiwaveview/MultiWaveView;->TYPE_Y:I

    .line 1023
    const/4 v11, 0x0

    iput v11, p0, Lcom/baidu/multiwaveview/MultiWaveView;->TYPE_FROM:I

    .line 1024
    const/4 v11, 0x1

    iput v11, p0, Lcom/baidu/multiwaveview/MultiWaveView;->TYPE_TO:I

    .line 1025
    const/4 v11, 0x0

    iput v11, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mCurMode:I

    .line 1026
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mHitRing:Lcom/baidu/multiwaveview/TargetDrawable;

    .line 1027
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

    .line 1027
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

    .line 1004
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1005
    .local v0, mode:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 1006
    iput v2, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mCurMode:I

    .line 1018
    :cond_0
    :goto_0
    return-void

    .line 1009
    :cond_1
    const-string v1, "mode_origin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1010
    iput v2, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mCurMode:I

    goto :goto_0

    .line 1011
    :cond_2
    const-string v1, "mode_line"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1012
    const/4 v1, 0x1

    iput v1, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mCurMode:I

    .line 1013
    new-instance v1, Lcom/baidu/multiwaveview/TargetDrawable;

    const/16 v2, 0x15

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/baidu/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)V

    iput-object v1, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mHitRing:Lcom/baidu/multiwaveview/TargetDrawable;

    .line 1015
    iget-object v1, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mHitRing:Lcom/baidu/multiwaveview/TargetDrawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/baidu/multiwaveview/TargetDrawable;->setAlpha(F)V

    .line 1016
    const/16 v1, 0x11

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
    .line 928
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 929
    .local v5, utterance:Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 930
    .local v2, targetCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 931
    invoke-direct {p0, v1}, Lcom/baidu/multiwaveview/MultiWaveView;->getTargetDescription(I)Ljava/lang/String;

    move-result-object v3

    .line 932
    .local v3, targetDescription:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/baidu/multiwaveview/MultiWaveView;->getDirectionDescription(I)Ljava/lang/String;

    move-result-object v0

    .line 933
    .local v0, directionDescription:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 935
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 936
    .local v4, text:Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 938
    .end local v4           #text:Ljava/lang/String;
    :cond_0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 939
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/baidu/multiwaveview/MultiWaveView;->announceText(Ljava/lang/String;)V

    .line 930
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 942
    .end local v0           #directionDescription:Ljava/lang/String;
    .end local v3           #targetDescription:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private announceText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 945
    invoke-virtual {p0, p1}, Lcom/baidu/multiwaveview/MultiWaveView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 946
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/baidu/multiwaveview/MultiWaveView;->sendAccessibilityEvent(I)V

    .line 947
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/multiwaveview/MultiWaveView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 948
    return-void
.end method

.method private dispatchGrabbedEvent(I)V
    .locals 1
    .parameter "whichHandler"

    .prologue
    .line 400
    invoke-direct {p0}, Lcom/baidu/multiwaveview/MultiWaveView;->vibrate()V

    .line 401
    iget-object v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mOnTriggerListener:Lcom/baidu/multiwaveview/MultiWaveView$OnTriggerListener;

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mOnTriggerListener:Lcom/baidu/multiwaveview/MultiWaveView$OnTriggerListener;

    invoke-interface {v0, p0, p1}, Lcom/baidu/multiwaveview/MultiWaveView$OnTriggerListener;->onGrabbed(Landroid/view/View;I)V

    .line 404
    :cond_0
    return-void
.end method

.method private dispatchReleasedEvent(I)V
    .locals 1
    .parameter "whichHandler"

    .prologue
    .line 408
    iget-object v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mOnTriggerListener:Lcom/baidu/multiwaveview/MultiWaveView$OnTriggerListener;

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mOnTriggerListener:Lcom/baidu/multiwaveview/MultiWaveView$OnTriggerListener;

    invoke-interface {v0, p0, p1}, Lcom/baidu/multiwaveview/MultiWaveView$OnTriggerListener;->onReleased(Landroid/view/View;I)V

    .line 411
    :cond_0
    return-void
.end method

.method private dispatchTriggerEvent(I)V
    .locals 1
    .parameter "whichHandle"

    .prologue
    .line 393
    invoke-direct {p0}, Lcom/baidu/multiwaveview/MultiWaveView;->vibrate()V

    .line 394
    iget-object v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mOnTriggerListener:Lcom/baidu/multiwaveview/MultiWaveView$OnTriggerListener;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mOnTriggerListener:Lcom/baidu/multiwaveview/MultiWaveView$OnTriggerListener;

    invoke-interface {v0, p0, p1}, Lcom/baidu/multiwaveview/MultiWaveView$OnTriggerListener;->onTrigger(Landroid/view/View;I)V

    .line 397
    :cond_0
    return-void
.end method

.method private dist2(FF)F
    .locals 2
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 914
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

    .line 414
    iget v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mActiveTarget:I

    .line 415
    .local v0, activeTarget:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v3

    .line 421
    .local v1, targetHit:Z
    :goto_0
    iget-object v6, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/baidu/multiwaveview/TargetDrawable;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v6, v2}, Lcom/baidu/multiwaveview/TargetDrawable;->setAlpha(F)V

    .line 422
    if-eqz v1, :cond_2

    .line 423
    iget-object v2, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/multiwaveview/TargetDrawable;

    sget-object v6, Lcom/baidu/multiwaveview/TargetDrawable;->STATE_ACTIVE:[I

    invoke-virtual {v2, v6}, Lcom/baidu/multiwaveview/TargetDrawable;->setState([I)V

    .line 425
    invoke-direct {p0, v0}, Lcom/baidu/multiwaveview/MultiWaveView;->hideUnselected(I)V

    .line 429
    iget v2, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mActiveTarget:I

    invoke-direct {p0, v2}, Lcom/baidu/multiwaveview/MultiWaveView;->dispatchTriggerEvent(I)V

    .line 430
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

    .line 451
    :goto_2
    invoke-direct {p0, v4}, Lcom/baidu/multiwaveview/MultiWaveView;->setGrabbedState(I)V

    .line 452
    return-void

    .end local v1           #targetHit:Z
    :cond_0
    move v1, v4

    .line 415
    goto/16 :goto_0

    .restart local v1       #targetHit:Z
    :cond_1
    move v2, v5

    .line 421
    goto/16 :goto_1

    .line 440
    :cond_2
    iget v2, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mActiveTarget:I

    invoke-direct {p0, v2}, Lcom/baidu/multiwaveview/MultiWaveView;->dispatchReleasedEvent(I)V

    .line 441
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
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 1049
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
    .line 963
    iget-object v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mDirectionDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mDirectionDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 964
    :cond_0
    iget v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mDirectionDescriptionsResourceId:I

    invoke-direct {p0, v0}, Lcom/baidu/multiwaveview/MultiWaveView;->loadDescriptions(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mDirectionDescriptions:Ljava/util/ArrayList;

    .line 965
    iget-object v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mDirectionDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 966
    const-string v0, "MultiWaveView"

    const-string v1, "The number of target drawables must be euqal to the number of direction descriptions."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    const/4 v0, 0x0

    .line 971
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
    .line 1038
    if-nez p5, :cond_0

    move-object v0, p3

    .line 1039
    .local v0, array:[[F
    :goto_0
    iget v1, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mCurMode:I

    if-nez v1, :cond_2

    .line 1040
    aget-object v1, v0, p1

    aget v1, v1, p6

    .line 1042
    :goto_1
    return v1

    .line 1038
    .end local v0           #array:[[F
    :cond_0
    iget v1, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mCurMode:I

    if-nez v1, :cond_1

    move-object v0, p4

    goto :goto_0

    :cond_1
    move-object v0, p3

    goto :goto_0

    .line 1042
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

    .line 1032
    rem-int/lit8 v3, p1, 0x2

    if-nez v3, :cond_0

    const/4 v0, -0x1

    .line 1033
    .local v0, d1:I
    :goto_0
    div-int/lit8 v3, p1, 0x2

    if-ne v3, p3, :cond_1

    move v1, v2

    .line 1034
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

    .line 1032
    goto :goto_0

    .line 1033
    .restart local v0       #d1:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getScaledTapRadiusSquared()F
    .locals 3

    .prologue
    .line 919
    iget-object v1, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 920
    const v1, 0x3fa66666

    iget v2, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mTapRadius:F

    mul-float v0, v1, v2

    .line 924
    .local v0, scaledTapRadius:F
    :goto_0
    invoke-direct {p0, v0}, Lcom/baidu/multiwaveview/MultiWaveView;->square(F)F

    move-result v1

    return v1

    .line 922
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

    .line 1053
    iget v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mCurMode:I

    if-nez v0, :cond_0

    .line 1054
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    .line 1056
    :goto_0
    return-object v0

    :cond_0
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    goto :goto_0

    .line 1054
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x0t 0x40t
    .end array-data

    .line 1056
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
    .line 951
    iget-object v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mTargetDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 952
    :cond_0
    iget v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mTargetDescriptionsResourceId:I

    invoke-direct {p0, v0}, Lcom/baidu/multiwaveview/MultiWaveView;->loadDescriptions(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mTargetDescriptions:Ljava/util/ArrayList;

    .line 953
    iget-object v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 954
    const-string v0, "MultiWaveView"

    const-string v1, "The number of target drawables must be euqal to the number of target descriptions."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    const/4 v0, 0x0

    .line 959
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
    .line 687
    invoke-direct {p0, p1}, Lcom/baidu/multiwaveview/MultiWaveView;->trySwitchToFirstTouchState(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 688
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mDragging:Z

    .line 689
    invoke-direct {p0}, Lcom/baidu/multiwaveview/MultiWaveView;->stopTargetAnimation()V

    .line 690
    invoke-virtual {p0}, Lcom/baidu/multiwaveview/MultiWaveView;->ping()V

    .line 692
    :cond_0
    return-void
.end method

.method private handleMove(Landroid/view/MotionEvent;)V
    .locals 30
    .parameter "event"

    .prologue
    .line 700
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/baidu/multiwaveview/MultiWaveView;->mDragging:Z

    move/from16 v28, v0

    if-nez v28, :cond_0

    .line 701
    invoke-direct/range {p0 .. p1}, Lcom/baidu/multiwaveview/MultiWaveView;->trySwitchToFirstTouchState(Landroid/view/MotionEvent;)Z

    .line 775
    :goto_0
    return-void

    .line 705
    :cond_0
    const/4 v4, -0x1

    .line 706
    .local v4, activeTarget:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v10

    .line 707
    .local v10, historySize:I
    const/4 v13, 0x0

    .local v13, k:I
    :goto_1
    add-int/lit8 v28, v10, 0x1

    move/from16 v0, v28

    if-ge v13, v0, :cond_e

    .line 708
    if-ge v13, v10, :cond_3

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v26

    .line 709
    .local v26, x:F
    :goto_2
    if-ge v13, v10, :cond_4

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v27

    .line 710
    .local v27, y:F
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/multiwaveview/MultiWaveView;->mWaveCenterX:F

    move/from16 v28, v0

    sub-float v24, v26, v28

    .line 711
    .local v24, tx:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/multiwaveview/MultiWaveView;->mWaveCenterY:F

    move/from16 v28, v0

    sub-float v25, v27, v28

    .line 712
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

    .line 713
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

    .line 714
    .local v18, scale:F
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/multiwaveview/MultiWaveView;->mWaveCenterX:F

    move/from16 v28, v0

    mul-float v29, v24, v18

    add-float v14, v28, v29

    .line 715
    .local v14, limitX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/multiwaveview/MultiWaveView;->mWaveCenterY:F

    move/from16 v28, v0

    mul-float v29, v25, v18

    add-float v15, v28, v29

    .line 717
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

    .line 718
    .local v19, singleTarget:Z
    :goto_5
    if-eqz v19, :cond_7

    .line 720
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/multiwaveview/MultiWaveView;->mOuterRadius:F

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/multiwaveview/MultiWaveView;->mSnapMargin:F

    move/from16 v29, v0

    sub-float v20, v28, v29

    .line 721
    .local v20, snapRadius:F
    cmpl-float v28, v23, v20

    if-lez v28, :cond_1

    .line 722
    const/4 v4, 0x0

    .line 723
    move/from16 v26, v14

    .line 724
    move/from16 v27, v15

    .line 744
    .end local v20           #snapRadius:F
    :cond_1
    :goto_6
    const/16 v28, -0x1

    move/from16 v0, v28

    if-eq v4, v0, :cond_d

    .line 745
    const/16 v28, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/multiwaveview/MultiWaveView;->switchToState(IFF)V

    .line 746
    if-eqz v19, :cond_a

    move/from16 v16, v14

    .line 747
    .local v16, newX:F
    :goto_7
    if-eqz v19, :cond_b

    move/from16 v17, v15

    .line 748
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

    .line 750
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/baidu/multiwaveview/TargetDrawable;

    .line 751
    .local v6, currentTarget:Lcom/baidu/multiwaveview/TargetDrawable;
    sget-object v28, Lcom/baidu/multiwaveview/TargetDrawable;->STATE_FOCUSED:[I

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Lcom/baidu/multiwaveview/TargetDrawable;->hasState([I)Z

    move-result v28

    if-eqz v28, :cond_2

    .line 752
    sget-object v28, Lcom/baidu/multiwaveview/TargetDrawable;->STATE_FOCUSED:[I

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Lcom/baidu/multiwaveview/TargetDrawable;->setState([I)V

    .line 753
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/baidu/multiwaveview/TargetDrawable;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/baidu/multiwaveview/TargetDrawable;->setAlpha(F)V

    .line 755
    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/baidu/multiwaveview/MultiWaveView;->onHitTarget(FF)V

    .line 707
    .end local v6           #currentTarget:Lcom/baidu/multiwaveview/TargetDrawable;
    .end local v16           #newX:F
    .end local v17           #newY:F
    :goto_a
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 708
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

    .line 709
    .restart local v26       #x:F
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v27

    goto/16 :goto_3

    .line 713
    .restart local v23       #touchRadius:F
    .restart local v24       #tx:F
    .restart local v25       #ty:F
    .restart local v27       #y:F
    :cond_5
    const/high16 v18, 0x3f80

    goto/16 :goto_4

    .line 717
    .restart local v14       #limitX:F
    .restart local v15       #limitY:F
    .restart local v18       #scale:F
    :cond_6
    const/16 v19, 0x0

    goto/16 :goto_5

    .line 728
    .restart local v19       #singleTarget:Z
    :cond_7
    const v5, 0x7f7fffff

    .line 729
    .local v5, best:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/multiwaveview/MultiWaveView;->mHitRadius:F

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/multiwaveview/MultiWaveView;->mHitRadius:F

    move/from16 v29, v0

    mul-float v11, v28, v29

    .line 730
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

    .line 732
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/baidu/multiwaveview/TargetDrawable;

    .line 733
    .local v21, target:Lcom/baidu/multiwaveview/TargetDrawable;
    invoke-virtual/range {v21 .. v21}, Lcom/baidu/multiwaveview/TargetDrawable;->getX()F

    move-result v28

    sub-float v8, v14, v28

    .line 734
    .local v8, dx:F
    invoke-virtual/range {v21 .. v21}, Lcom/baidu/multiwaveview/TargetDrawable;->getY()F

    move-result v28

    sub-float v9, v15, v28

    .line 735
    .local v9, dy:F
    mul-float v28, v8, v8

    mul-float v29, v9, v9

    add-float v7, v28, v29

    .line 736
    .local v7, dist2:F
    invoke-virtual/range {v21 .. v21}, Lcom/baidu/multiwaveview/TargetDrawable;->isValid()Z

    move-result v28

    if-eqz v28, :cond_8

    cmpg-float v28, v7, v11

    if-gez v28, :cond_8

    cmpg-float v28, v7, v5

    if-gez v28, :cond_8

    .line 737
    move v4, v12

    .line 738
    move v5, v7

    .line 730
    :cond_8
    add-int/lit8 v12, v12, 0x1

    goto :goto_b

    .line 741
    .end local v7           #dist2:F
    .end local v8           #dx:F
    .end local v9           #dy:F
    .end local v21           #target:Lcom/baidu/multiwaveview/TargetDrawable;
    :cond_9
    move/from16 v26, v14

    .line 742
    move/from16 v27, v15

    goto/16 :goto_6

    .line 746
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

    .line 747
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

    .line 749
    .restart local v17       #newY:F
    :cond_c
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/multiwaveview/MultiWaveView;->moveHandleTo(FFZ)V

    goto/16 :goto_9

    .line 757
    .end local v16           #newX:F
    .end local v17           #newY:F
    :cond_d
    const/16 v28, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/multiwaveview/MultiWaveView;->switchToState(IFF)V

    .line 758
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/multiwaveview/MultiWaveView;->moveHandleTo(FFZ)V

    .line 759
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/baidu/multiwaveview/TargetDrawable;

    move-object/from16 v28, v0

    const/high16 v29, 0x3f80

    invoke-virtual/range {v28 .. v29}, Lcom/baidu/multiwaveview/TargetDrawable;->setAlpha(F)V

    .line 760
    invoke-direct/range {p0 .. p0}, Lcom/baidu/multiwaveview/MultiWaveView;->onTrackingTarget()V

    goto/16 :goto_a

    .line 765
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

    .line 767
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/multiwaveview/MultiWaveView;->mActiveTarget:I

    move/from16 v28, v0

    move/from16 v0, v28

    if-eq v0, v4, :cond_f

    const/16 v28, -0x1

    move/from16 v0, v28

    if-eq v4, v0, :cond_f

    .line 768
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/baidu/multiwaveview/MultiWaveView;->dispatchGrabbedEvent(I)V

    .line 769
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/multiwaveview/MultiWaveView;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v28

    if-eqz v28, :cond_f

    .line 770
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/baidu/multiwaveview/MultiWaveView;->getTargetDescription(I)Ljava/lang/String;

    move-result-object v22

    .line 771
    .local v22, targetContentDescription:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/baidu/multiwaveview/MultiWaveView;->announceText(Ljava/lang/String;)V

    .line 774
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
    .line 696
    const/4 v0, 0x4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/baidu/multiwaveview/MultiWaveView;->switchToState(IFF)V

    .line 697
    return-void
.end method

.method private hideChevrons()V
    .locals 3

    .prologue
    .line 881
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

    .line 882
    .local v0, chevron:Lcom/baidu/multiwaveview/TargetDrawable;
    if-eqz v0, :cond_0

    .line 883
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/baidu/multiwaveview/TargetDrawable;->setAlpha(F)V

    goto :goto_0

    .line 886
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

    .line 464
    iget-object v4, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mTargetAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 465
    invoke-direct {p0}, Lcom/baidu/multiwaveview/MultiWaveView;->stopTargetAnimation()V

    .line 469
    :cond_0
    iput-boolean p1, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mAnimatingTargets:Z

    .line 470
    if-eqz p1, :cond_3

    .line 471
    if-eqz p1, :cond_1

    const/16 v0, 0x4b0

    .line 472
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

    .line 473
    .local v2, target:Lcom/baidu/multiwaveview/TargetDrawable;
    sget-object v4, Lcom/baidu/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v2, v4}, Lcom/baidu/multiwaveview/TargetDrawable;->setState([I)V

    .line 474
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

    .line 471
    goto :goto_0

    .line 479
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

    .line 491
    .end local v0           #duration:I
    :goto_2
    return-void

    .line 485
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

    .line 486
    .restart local v2       #target:Lcom/baidu/multiwaveview/TargetDrawable;
    sget-object v3, Lcom/baidu/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v2, v3}, Lcom/baidu/multiwaveview/TargetDrawable;->setState([I)V

    .line 487
    invoke-virtual {v2, v10}, Lcom/baidu/multiwaveview/TargetDrawable;->setAlpha(F)V

    goto :goto_3

    .line 489
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

    .line 455
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 456
    if-eq v0, p1, :cond_0

    .line 457
    iget-object v1, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/multiwaveview/TargetDrawable;

    invoke-virtual {v1, v2}, Lcom/baidu/multiwaveview/TargetDrawable;->setAlpha(F)V

    .line 455
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 460
    :cond_1
    iget-object v1, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mOuterRing:Lcom/baidu/multiwaveview/TargetDrawable;

    invoke-virtual {v1, v2}, Lcom/baidu/multiwaveview/TargetDrawable;->setAlpha(F)V

    .line 461
    return-void
.end method

.method private internalSetTargetResources(I)V
    .locals 7
    .parameter "resourceId"

    .prologue
    .line 534
    invoke-virtual {p0}, Lcom/baidu/multiwaveview/MultiWaveView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 535
    .local v4, res:Landroid/content/res/Resources;
    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 536
    .local v0, array:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    .line 537
    .local v1, count:I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 538
    .local v5, targetDrawables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/multiwaveview/TargetDrawable;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 539
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 540
    .local v2, drawable:Landroid/graphics/drawable/Drawable;
    new-instance v6, Lcom/baidu/multiwaveview/TargetDrawable;

    invoke-direct {v6, v4, v2}, Lcom/baidu/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 538
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 542
    .end local v2           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 543
    iput p1, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mTargetResourceId:I

    .line 544
    iput-object v5, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    .line 545
    invoke-direct {p0}, Lcom/baidu/multiwaveview/MultiWaveView;->updateTargetPositions()V

    .line 546
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
    .line 975
    invoke-virtual {p0}, Lcom/baidu/multiwaveview/MultiWaveView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 976
    .local v0, array:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    .line 977
    .local v2, count:I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 978
    .local v4, targetContentDescriptions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 979
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 980
    .local v1, contentDescription:Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 978
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 982
    .end local v1           #contentDescription:Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 983
    return-object v4
.end method

.method private moveHandleTo(FFZ)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "animate"

    .prologue
    .line 682
    iget-object v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/baidu/multiwaveview/TargetDrawable;

    invoke-virtual {v0, p1}, Lcom/baidu/multiwaveview/TargetDrawable;->setX(F)V

    .line 683
    iget-object v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/baidu/multiwaveview/TargetDrawable;

    invoke-virtual {v0, p2}, Lcom/baidu/multiwaveview/TargetDrawable;->setY(F)V

    .line 684
    return-void
.end method

.method private onDrawMode(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 1075
    iget v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mCurMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1076
    iget-object v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mHitRing:Lcom/baidu/multiwaveview/TargetDrawable;

    invoke-virtual {v0, p1}, Lcom/baidu/multiwaveview/TargetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1078
    :cond_0
    return-void
.end method

.method private onHitTarget(FF)V
    .locals 3
    .parameter "tx"
    .parameter "ty"

    .prologue
    const/high16 v2, 0x3f80

    .line 1060
    iget v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mCurMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1061
    iget-object v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mHitRing:Lcom/baidu/multiwaveview/TargetDrawable;

    invoke-virtual {v0, p1}, Lcom/baidu/multiwaveview/TargetDrawable;->setX(F)V

    .line 1062
    iget-object v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mHitRing:Lcom/baidu/multiwaveview/TargetDrawable;

    invoke-virtual {v0, p2}, Lcom/baidu/multiwaveview/TargetDrawable;->setY(F)V

    .line 1063
    iget-object v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mHitRing:Lcom/baidu/multiwaveview/TargetDrawable;

    invoke-virtual {v0, v2}, Lcom/baidu/multiwaveview/TargetDrawable;->setAlpha(F)V

    .line 1064
    iget-object v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/baidu/multiwaveview/TargetDrawable;

    invoke-virtual {v0, v2}, Lcom/baidu/multiwaveview/TargetDrawable;->setAlpha(F)V

    .line 1066
    :cond_0
    return-void
.end method

.method private onIdle()V
    .locals 2

    .prologue
    .line 1081
    iget v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mCurMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1082
    iget-object v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mHitRing:Lcom/baidu/multiwaveview/TargetDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/multiwaveview/TargetDrawable;->setAlpha(F)V

    .line 1084
    :cond_0
    return-void
.end method

.method private onTrackingTarget()V
    .locals 2

    .prologue
    .line 1069
    iget v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mCurMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1070
    iget-object v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mHitRing:Lcom/baidu/multiwaveview/TargetDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/multiwaveview/TargetDrawable;->setAlpha(F)V

    .line 1072
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

    .line 830
    iget v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mOuterRadius:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_0

    .line 831
    const/high16 v0, 0x3f00

    invoke-direct {p0, p1, p2}, Lcom/baidu/multiwaveview/MultiWaveView;->dist2(FF)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mOuterRadius:F

    .line 833
    :cond_0
    iget v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mHitRadius:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_1

    .line 835
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

    .line 837
    :cond_1
    iget v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mSnapMargin:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_2

    .line 838
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

    .line 841
    :cond_2
    invoke-direct {p0}, Lcom/baidu/multiwaveview/MultiWaveView;->hideChevrons()V

    .line 843
    invoke-direct {p0, p1, p2, v4}, Lcom/baidu/multiwaveview/MultiWaveView;->moveHandleTo(FFZ)V

    .line 844
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
    .line 803
    iget v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mGrabbedState:I

    if-eq p1, v0, :cond_1

    .line 804
    if-eqz p1, :cond_0

    .line 805
    invoke-direct {p0}, Lcom/baidu/multiwaveview/MultiWaveView;->vibrate()V

    .line 807
    :cond_0
    iput p1, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mGrabbedState:I

    .line 808
    iget-object v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mOnTriggerListener:Lcom/baidu/multiwaveview/MultiWaveView$OnTriggerListener;

    if-eqz v0, :cond_1

    .line 809
    iget-object v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mOnTriggerListener:Lcom/baidu/multiwaveview/MultiWaveView$OnTriggerListener;

    iget v1, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mGrabbedState:I

    invoke-interface {v0, p0, v1}, Lcom/baidu/multiwaveview/MultiWaveView$OnTriggerListener;->onGrabbedStateChange(Landroid/view/View;I)V

    .line 812
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

    .line 494
    iget-object v2, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mTargetAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 495
    invoke-direct {p0}, Lcom/baidu/multiwaveview/MultiWaveView;->stopTargetAnimation()V

    .line 497
    :cond_0
    iput-boolean p1, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mAnimatingTargets:Z

    .line 498
    if-eqz p1, :cond_2

    .line 499
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

    .line 500
    .local v1, target:Lcom/baidu/multiwaveview/TargetDrawable;
    sget-object v2, Lcom/baidu/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v1, v2}, Lcom/baidu/multiwaveview/TargetDrawable;->setState([I)V

    .line 501
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

    .line 506
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

    .line 518
    :goto_1
    return-void

    .line 512
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

    .line 513
    .restart local v1       #target:Lcom/baidu/multiwaveview/TargetDrawable;
    sget-object v2, Lcom/baidu/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v1, v2}, Lcom/baidu/multiwaveview/TargetDrawable;->setState([I)V

    .line 514
    invoke-virtual {v1, v8}, Lcom/baidu/multiwaveview/TargetDrawable;->setAlpha(F)V

    goto :goto_2

    .line 516
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
    .line 910
    mul-float v0, p1, p1

    return v0
.end method

.method private startChevronAnimation()V
    .locals 19

    .prologue
    .line 315
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/baidu/multiwaveview/TargetDrawable;

    invoke-virtual {v1}, Lcom/baidu/multiwaveview/TargetDrawable;->getWidth()I

    move-result v1

    int-to-float v6, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/baidu/multiwaveview/MultiWaveView;->mCurMode:I

    if-nez v1, :cond_1

    const v1, 0x3ecccccd

    :goto_0
    mul-float v11, v6, v1

    .line 316
    .local v11, r:F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/baidu/multiwaveview/MultiWaveView;->mOuterRadius:F

    const v6, 0x3f666666

    mul-float v8, v1, v6

    .line 317
    .local v8, chevronAnimationDistance:F
    const/4 v1, 0x4

    new-array v4, v1, [[F

    const/4 v1, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [F

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v12, v0, Lcom/baidu/multiwaveview/MultiWaveView;->mWaveCenterX:F

    sub-float/2addr v12, v11

    aput v12, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget v12, v0, Lcom/baidu/multiwaveview/MultiWaveView;->mWaveCenterY:F

    aput v12, v6, v7

    aput-object v6, v4, v1

    const/4 v1, 0x1

    const/4 v6, 0x2

    new-array v6, v6, [F

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v12, v0, Lcom/baidu/multiwaveview/MultiWaveView;->mWaveCenterX:F

    add-float/2addr v12, v11

    aput v12, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget v12, v0, Lcom/baidu/multiwaveview/MultiWaveView;->mWaveCenterY:F

    aput v12, v6, v7

    aput-object v6, v4, v1

    const/4 v1, 0x2

    const/4 v6, 0x2

    new-array v6, v6, [F

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v12, v0, Lcom/baidu/multiwaveview/MultiWaveView;->mWaveCenterX:F

    aput v12, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget v12, v0, Lcom/baidu/multiwaveview/MultiWaveView;->mWaveCenterY:F

    sub-float/2addr v12, v11

    aput v12, v6, v7

    aput-object v6, v4, v1

    const/4 v1, 0x3

    const/4 v6, 0x2

    new-array v6, v6, [F

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v12, v0, Lcom/baidu/multiwaveview/MultiWaveView;->mWaveCenterX:F

    aput v12, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget v12, v0, Lcom/baidu/multiwaveview/MultiWaveView;->mWaveCenterY:F

    add-float/2addr v12, v11

    aput v12, v6, v7

    aput-object v6, v4, v1

    .line 322
    .local v4, from:[[F
    const/4 v1, 0x4

    new-array v5, v1, [[F

    const/4 v1, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [F

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v12, v0, Lcom/baidu/multiwaveview/MultiWaveView;->mWaveCenterX:F

    sub-float/2addr v12, v8

    aput v12, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget v12, v0, Lcom/baidu/multiwaveview/MultiWaveView;->mWaveCenterY:F

    aput v12, v6, v7

    aput-object v6, v5, v1

    const/4 v1, 0x1

    const/4 v6, 0x2

    new-array v6, v6, [F

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v12, v0, Lcom/baidu/multiwaveview/MultiWaveView;->mWaveCenterX:F

    add-float/2addr v12, v8

    aput v12, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget v12, v0, Lcom/baidu/multiwaveview/MultiWaveView;->mWaveCenterY:F

    aput v12, v6, v7

    aput-object v6, v5, v1

    const/4 v1, 0x2

    const/4 v6, 0x2

    new-array v6, v6, [F

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v12, v0, Lcom/baidu/multiwaveview/MultiWaveView;->mWaveCenterX:F

    aput v12, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget v12, v0, Lcom/baidu/multiwaveview/MultiWaveView;->mWaveCenterY:F

    sub-float/2addr v12, v8

    aput v12, v6, v7

    aput-object v6, v5, v1

    const/4 v1, 0x3

    const/4 v6, 0x2

    new-array v6, v6, [F

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v12, v0, Lcom/baidu/multiwaveview/MultiWaveView;->mWaveCenterX:F

    aput v12, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget v12, v0, Lcom/baidu/multiwaveview/MultiWaveView;->mWaveCenterY:F

    add-float/2addr v12, v8

    aput v12, v6, v7

    aput-object v6, v5, v1

    .line 328
    .local v5, to:[[F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/multiwaveview/MultiWaveView;->mChevronAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 330
    const/4 v2, 0x0

    .local v2, direction:I
    :goto_1
    const/4 v1, 0x4

    if-ge v2, v1, :cond_4

    .line 331
    const/4 v3, 0x0

    .local v3, count:I
    :goto_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/baidu/multiwaveview/MultiWaveView;->mFeedbackCount:I

    if-ge v3, v1, :cond_3

    .line 332
    mul-int/lit16 v9, v3, 0xa0

    .line 333
    .local v9, delay:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/multiwaveview/MultiWaveView;->mChevronDrawables:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/baidu/multiwaveview/MultiWaveView;->mFeedbackCount:I

    mul-int/2addr v6, v2

    add-int/2addr v6, v3

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/baidu/multiwaveview/TargetDrawable;

    .line 334
    .local v10, icon:Lcom/baidu/multiwaveview/TargetDrawable;
    if-eqz v10, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/multiwaveview/MultiWaveView;->mChevronHideMask:[Z

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_2

    .line 331
    :cond_0
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 315
    .end local v2           #direction:I
    .end local v3           #count:I
    .end local v4           #from:[[F
    .end local v5           #to:[[F
    .end local v8           #chevronAnimationDistance:F
    .end local v9           #delay:I
    .end local v10           #icon:Lcom/baidu/multiwaveview/TargetDrawable;
    .end local v11           #r:F
    :cond_1
    const v1, 0x3f19999a

    goto/16 :goto_0

    .line 337
    .restart local v2       #direction:I
    .restart local v3       #count:I
    .restart local v4       #from:[[F
    .restart local v5       #to:[[F
    .restart local v8       #chevronAnimationDistance:F
    .restart local v9       #delay:I
    .restart local v10       #icon:Lcom/baidu/multiwaveview/TargetDrawable;
    .restart local v11       #r:F
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/baidu/multiwaveview/MultiWaveView;->mChevronAnimations:Ljava/util/ArrayList;

    const-wide/16 v13, 0x352

    const/16 v1, 0x10

    new-array v15, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v6, "ease"

    aput-object v6, v15, v1

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/baidu/multiwaveview/MultiWaveView;->mChevronAnimationInterpolator:Landroid/animation/TimeInterpolator;

    aput-object v6, v15, v1

    const/4 v1, 0x2

    const-string v6, "delay"

    aput-object v6, v15, v1

    const/4 v1, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v15, v1

    const/4 v1, 0x4

    const-string v6, "x"

    aput-object v6, v15, v1

    const/16 v16, 0x5

    const/4 v1, 0x2

    new-array v0, v1, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/baidu/multiwaveview/MultiWaveView;->getPos(II[[F[[FII)F

    move-result v1

    aput v1, v17, v18

    const/16 v18, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/baidu/multiwaveview/MultiWaveView;->getPos(II[[F[[FII)F

    move-result v1

    aput v1, v17, v18

    aput-object v17, v15, v16

    const/4 v1, 0x6

    const-string v6, "y"

    aput-object v6, v15, v1

    const/16 v16, 0x7

    const/4 v1, 0x2

    new-array v0, v1, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/baidu/multiwaveview/MultiWaveView;->getPos(II[[F[[FII)F

    move-result v1

    aput v1, v17, v18

    const/16 v18, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/baidu/multiwaveview/MultiWaveView;->getPos(II[[F[[FII)F

    move-result v1

    aput v1, v17, v18

    aput-object v17, v15, v16

    const/16 v1, 0x8

    const-string v6, "alpha"

    aput-object v6, v15, v1

    const/16 v1, 0x9

    invoke-direct/range {p0 .. p0}, Lcom/baidu/multiwaveview/MultiWaveView;->getAlphas()[F

    move-result-object v6

    aput-object v6, v15, v1

    const/16 v1, 0xa

    const-string v6, "scaleX"

    aput-object v6, v15, v1

    const/16 v1, 0xb

    invoke-direct/range {p0 .. p0}, Lcom/baidu/multiwaveview/MultiWaveView;->getScales()[F

    move-result-object v6

    aput-object v6, v15, v1

    const/16 v1, 0xc

    const-string v6, "scaleY"

    aput-object v6, v15, v1

    const/16 v1, 0xd

    invoke-direct/range {p0 .. p0}, Lcom/baidu/multiwaveview/MultiWaveView;->getScales()[F

    move-result-object v6

    aput-object v6, v15, v1

    const/16 v1, 0xe

    const-string v6, "onUpdate"

    aput-object v6, v15, v1

    const/16 v1, 0xf

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/baidu/multiwaveview/MultiWaveView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v6, v15, v1

    invoke-static {v10, v13, v14, v15}, Lcom/baidu/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/baidu/multiwaveview/Tweener;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 330
    .end local v9           #delay:I
    .end local v10           #icon:Lcom/baidu/multiwaveview/TargetDrawable;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 348
    .end local v3           #count:I
    :cond_4
    return-void
.end method

.method private stopChevronAnimation()V
    .locals 3

    .prologue
    .line 351
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

    .line 352
    .local v0, anim:Lcom/baidu/multiwaveview/Tweener;
    iget-object v2, v0, Lcom/baidu/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->end()V

    goto :goto_0

    .line 354
    .end local v0           #anim:Lcom/baidu/multiwaveview/Tweener;
    :cond_0
    iget-object v2, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mChevronAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 355
    return-void
.end method

.method private stopHandleAnimation()V
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mHandleAnimation:Lcom/baidu/multiwaveview/Tweener;

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mHandleAnimation:Lcom/baidu/multiwaveview/Tweener;

    iget-object v0, v0, Lcom/baidu/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 360
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mHandleAnimation:Lcom/baidu/multiwaveview/Tweener;

    .line 362
    :cond_0
    return-void
.end method

.method private stopTargetAnimation()V
    .locals 3

    .prologue
    .line 521
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

    .line 522
    .local v0, anim:Lcom/baidu/multiwaveview/Tweener;
    iget-object v2, v0, Lcom/baidu/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->end()V

    goto :goto_0

    .line 524
    .end local v0           #anim:Lcom/baidu/multiwaveview/Tweener;
    :cond_0
    iget-object v2, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mTargetAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 525
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

    .line 815
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 816
    .local v2, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 817
    .local v3, y:F
    iget v6, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mWaveCenterX:F

    sub-float v0, v2, v6

    .line 818
    .local v0, dx:F
    iget v6, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mWaveCenterY:F

    sub-float v1, v3, v6

    .line 819
    .local v1, dy:F
    invoke-direct {p0, v0, v1}, Lcom/baidu/multiwaveview/MultiWaveView;->dist2(FF)F

    move-result v6

    invoke-direct {p0}, Lcom/baidu/multiwaveview/MultiWaveView;->getScaledTapRadiusSquared()F

    move-result v7

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_0

    .line 821
    invoke-direct {p0, v4, v2, v3}, Lcom/baidu/multiwaveview/MultiWaveView;->switchToState(IFF)V

    .line 822
    invoke-direct {p0, v2, v3, v5}, Lcom/baidu/multiwaveview/MultiWaveView;->moveHandleTo(FFZ)V

    .line 823
    iput-boolean v4, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mDragging:Z

    .line 826
    :goto_0
    return v4

    :cond_0
    move v4, v5

    goto :goto_0
.end method

.method private updateTargetPositions()V
    .locals 10

    .prologue
    .line 870
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v6, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 871
    iget-object v6, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/multiwaveview/TargetDrawable;

    .line 872
    .local v3, targetIcon:Lcom/baidu/multiwaveview/TargetDrawable;
    const-wide v6, -0x3fe6de04abbbd2e8L

    int-to-double v8, v2

    mul-double/2addr v6, v8

    iget-object v8, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    int-to-double v8, v8

    div-double v0, v6, v8

    .line 873
    .local v0, angle:D
    iget v6, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mWaveCenterX:F

    iget v7, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mOuterRadius:F

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v8, v8

    mul-float/2addr v7, v8

    add-float v4, v6, v7

    .line 874
    .local v4, xPosition:F
    iget v6, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mWaveCenterY:F

    iget v7, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mOuterRadius:F

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v8, v8

    mul-float/2addr v7, v8

    add-float v5, v6, v7

    .line 875
    .local v5, yPosition:F
    invoke-virtual {v3, v4}, Lcom/baidu/multiwaveview/TargetDrawable;->setX(F)V

    .line 876
    invoke-virtual {v3, v5}, Lcom/baidu/multiwaveview/TargetDrawable;->setY(F)V

    .line 870
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 878
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
    .line 528
    iget-object v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mVibrator:Landroid/os/Vibrator;

    iget v1, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mVibrationDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 531
    :cond_0
    return-void
.end method


# virtual methods
.method public deactivateTargets()V
    .locals 3

    .prologue
    .line 366
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

    .line 367
    .local v1, target:Lcom/baidu/multiwaveview/TargetDrawable;
    sget-object v2, Lcom/baidu/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v1, v2}, Lcom/baidu/multiwaveview/TargetDrawable;->setState([I)V

    goto :goto_0

    .line 369
    .end local v1           #target:Lcom/baidu/multiwaveview/TargetDrawable;
    :cond_0
    const/4 v2, -0x1

    iput v2, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mActiveTarget:I

    .line 370
    return-void
.end method

.method public getDirectionDescriptionsResourceId()I
    .locals 1

    .prologue
    .line 605
    iget v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mDirectionDescriptionsResourceId:I

    return v0
.end method

.method public getHOffset()F
    .locals 1

    .prologue
    .line 987
    iget v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mHorizontalOffset:F

    return v0
.end method

.method public getMODE()I
    .locals 1

    .prologue
    .line 1094
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
    .line 584
    iget v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mTargetDescriptionsResourceId:I

    return v0
.end method

.method public getTargetResourceId()I
    .locals 1

    .prologue
    .line 563
    iget v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mTargetResourceId:I

    return v0
.end method

.method public getVOffset()F
    .locals 1

    .prologue
    .line 991
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
    .line 1087
    iget-object v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mChevronHideMask:[Z

    const/4 v1, 0x0

    aput-boolean p1, v0, v1

    .line 1088
    iget-object v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mChevronHideMask:[Z

    const/4 v1, 0x1

    aput-boolean p2, v0, v1

    .line 1089
    iget-object v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mChevronHideMask:[Z

    const/4 v1, 0x2

    aput-boolean p3, v0, v1

    .line 1090
    iget-object v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mChevronHideMask:[Z

    const/4 v1, 0x3

    aput-boolean p4, v0, v1

    .line 1091
    return-void
.end method

.method invalidateGlobalRegion(Lcom/baidu/multiwaveview/TargetDrawable;)V
    .locals 9
    .parameter "drawable"

    .prologue
    const/4 v6, 0x0

    .line 373
    invoke-virtual {p1}, Lcom/baidu/multiwaveview/TargetDrawable;->getWidth()I

    move-result v3

    .line 374
    .local v3, width:I
    invoke-virtual {p1}, Lcom/baidu/multiwaveview/TargetDrawable;->getHeight()I

    move-result v1

    .line 375
    .local v1, height:I
    new-instance v0, Landroid/graphics/RectF;

    int-to-float v4, v3

    int-to-float v5, v1

    invoke-direct {v0, v6, v6, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 376
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

    .line 377
    move-object v2, p0

    .line 378
    .local v2, view:Landroid/view/View;
    :goto_0
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v4, v4, Landroid/view/View;

    if-eqz v4, :cond_0

    .line 379
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .end local v2           #view:Landroid/view/View;
    check-cast v2, Landroid/view/View;

    .line 380
    .restart local v2       #view:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 381
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

    .line 386
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 890
    iget-object v2, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mOuterRing:Lcom/baidu/multiwaveview/TargetDrawable;

    invoke-virtual {v2, p1}, Lcom/baidu/multiwaveview/TargetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 891
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

    .line 892
    .local v1, target:Lcom/baidu/multiwaveview/TargetDrawable;
    if-eqz v1, :cond_0

    .line 893
    invoke-virtual {v1, p1}, Lcom/baidu/multiwaveview/TargetDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 896
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

    .line 897
    .restart local v1       #target:Lcom/baidu/multiwaveview/TargetDrawable;
    if-eqz v1, :cond_2

    .line 898
    invoke-virtual {v1, p1}, Lcom/baidu/multiwaveview/TargetDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 901
    .end local v1           #target:Lcom/baidu/multiwaveview/TargetDrawable;
    :cond_3
    iget-object v2, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/baidu/multiwaveview/TargetDrawable;

    invoke-virtual {v2, p1}, Lcom/baidu/multiwaveview/TargetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 902
    invoke-direct {p0, p1}, Lcom/baidu/multiwaveview/MultiWaveView;->onDrawMode(Landroid/graphics/Canvas;)V

    .line 903
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 779
    iget-object v1, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 780
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 781
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 792
    :goto_0
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/baidu/multiwaveview/MultiWaveView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 793
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 795
    .end local v0           #action:I
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 783
    .restart local v0       #action:I
    :pswitch_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 786
    :pswitch_2
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 789
    :pswitch_3
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 781
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
    const/4 v6, 0x0

    .line 848
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 849
    sub-int v3, p4, p2

    .line 850
    .local v3, width:I
    sub-int v0, p5, p3

    .line 851
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

    .line 852
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

    .line 853
    .local v2, newWaveCenterY:F
    iget v4, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mWaveCenterX:F

    cmpl-float v4, v1, v4

    if-nez v4, :cond_0

    iget v4, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mWaveCenterY:F

    cmpl-float v4, v2, v4

    if-eqz v4, :cond_2

    .line 854
    :cond_0
    iget v4, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mWaveCenterX:F

    cmpl-float v4, v4, v6

    if-nez v4, :cond_1

    iget v4, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mWaveCenterY:F

    cmpl-float v4, v4, v6

    if-nez v4, :cond_1

    .line 855
    invoke-direct {p0, v1, v2}, Lcom/baidu/multiwaveview/MultiWaveView;->performInitialLayout(FF)V

    .line 857
    :cond_1
    iput v1, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mWaveCenterX:F

    .line 858
    iput v2, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mWaveCenterY:F

    .line 860
    iget-object v4, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mOuterRing:Lcom/baidu/multiwaveview/TargetDrawable;

    iget v5, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mWaveCenterX:F

    invoke-virtual {v4, v5}, Lcom/baidu/multiwaveview/TargetDrawable;->setX(F)V

    .line 861
    iget-object v4, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mOuterRing:Lcom/baidu/multiwaveview/TargetDrawable;

    iget v5, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mWaveCenterY:F

    iget v6, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mWaveCenterY:F

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/baidu/multiwaveview/TargetDrawable;->setY(F)V

    .line 863
    invoke-direct {p0}, Lcom/baidu/multiwaveview/MultiWaveView;->updateTargetPositions()V

    .line 866
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
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

    move-result v4

    add-int/lit8 v2, v4, 0x64

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
    .line 651
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 653
    .local v0, action:I
    const/4 v1, 0x0

    .line 654
    .local v1, handled:Z
    packed-switch v0, :pswitch_data_0

    .line 676
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/multiwaveview/MultiWaveView;->invalidate()V

    .line 677
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :goto_1
    return v2

    .line 656
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/baidu/multiwaveview/MultiWaveView;->handleDown(Landroid/view/MotionEvent;)V

    .line 657
    const/4 v1, 0x1

    .line 658
    goto :goto_0

    .line 661
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/baidu/multiwaveview/MultiWaveView;->handleMove(Landroid/view/MotionEvent;)V

    .line 662
    const/4 v1, 0x1

    .line 663
    goto :goto_0

    .line 666
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/baidu/multiwaveview/MultiWaveView;->handleMove(Landroid/view/MotionEvent;)V

    .line 667
    invoke-direct {p0, p1}, Lcom/baidu/multiwaveview/MultiWaveView;->handleUp(Landroid/view/MotionEvent;)V

    .line 668
    const/4 v1, 0x1

    .line 669
    goto :goto_0

    .line 672
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/baidu/multiwaveview/MultiWaveView;->handleMove(Landroid/view/MotionEvent;)V

    .line 673
    const/4 v1, 0x1

    goto :goto_0

    .line 677
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_1

    .line 654
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
    .line 627
    invoke-direct {p0}, Lcom/baidu/multiwaveview/MultiWaveView;->stopChevronAnimation()V

    .line 628
    invoke-direct {p0}, Lcom/baidu/multiwaveview/MultiWaveView;->startChevronAnimation()V

    .line 629
    return-void
.end method

.method public reset(Z)V
    .locals 2
    .parameter "animate"

    .prologue
    .line 638
    invoke-direct {p0}, Lcom/baidu/multiwaveview/MultiWaveView;->stopChevronAnimation()V

    .line 639
    invoke-direct {p0}, Lcom/baidu/multiwaveview/MultiWaveView;->stopHandleAnimation()V

    .line 640
    invoke-direct {p0}, Lcom/baidu/multiwaveview/MultiWaveView;->stopTargetAnimation()V

    .line 641
    invoke-direct {p0}, Lcom/baidu/multiwaveview/MultiWaveView;->hideChevrons()V

    .line 643
    iget-object v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/baidu/multiwaveview/TargetDrawable;

    iget v1, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mWaveCenterX:F

    invoke-virtual {v0, v1}, Lcom/baidu/multiwaveview/TargetDrawable;->setX(F)V

    .line 644
    iget-object v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/baidu/multiwaveview/TargetDrawable;

    iget v1, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mWaveCenterY:F

    invoke-virtual {v0, v1}, Lcom/baidu/multiwaveview/TargetDrawable;->setY(F)V

    .line 645
    iget-object v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/baidu/multiwaveview/TargetDrawable;

    sget-object v1, Lcom/baidu/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v0, v1}, Lcom/baidu/multiwaveview/TargetDrawable;->setState([I)V

    .line 646
    invoke-static {}, Lcom/baidu/multiwaveview/Tweener;->reset()V

    .line 647
    return-void
.end method

.method public setDirectionDescriptionsResourceId(I)V
    .locals 1
    .parameter "resourceId"

    .prologue
    .line 593
    iput p1, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mDirectionDescriptionsResourceId:I

    .line 594
    iget-object v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mDirectionDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 595
    iget-object v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mDirectionDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 597
    :cond_0
    return-void
.end method

.method public setMODE(I)V
    .locals 0
    .parameter "m"

    .prologue
    .line 1000
    iput p1, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mCurMode:I

    .line 1001
    return-void
.end method

.method public setOffset(FF)V
    .locals 0
    .parameter "h"
    .parameter "v"

    .prologue
    .line 995
    iput p2, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mVerticalOffset:F

    .line 996
    iput p1, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mHorizontalOffset:F

    .line 997
    return-void
.end method

.method public setOnTriggerListener(Lcom/baidu/multiwaveview/MultiWaveView$OnTriggerListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 906
    iput-object p1, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mOnTriggerListener:Lcom/baidu/multiwaveview/MultiWaveView$OnTriggerListener;

    .line 907
    return-void
.end method

.method public setTargetDescriptionsResourceId(I)V
    .locals 1
    .parameter "resourceId"

    .prologue
    .line 572
    iput p1, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mTargetDescriptionsResourceId:I

    .line 573
    iget-object v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mTargetDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 574
    iget-object v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 576
    :cond_0
    return-void
.end method

.method public setTargetResource(ILandroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "index"
    .parameter "d"

    .prologue
    .line 1098
    if-eqz p2, :cond_0

    .line 1099
    invoke-virtual {p0}, Lcom/baidu/multiwaveview/MultiWaveView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1100
    .local v0, res:Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    new-instance v2, Lcom/baidu/multiwaveview/TargetDrawable;

    invoke-direct {v2, v0, p2}, Lcom/baidu/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, p1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1101
    invoke-direct {p0}, Lcom/baidu/multiwaveview/MultiWaveView;->updateTargetPositions()V

    .line 1103
    .end local v0           #res:Landroid/content/res/Resources;
    :cond_0
    return-void
.end method

.method public setTargetResources(I)V
    .locals 1
    .parameter "resourceId"

    .prologue
    .line 554
    iget-boolean v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mAnimatingTargets:Z

    if-eqz v0, :cond_0

    .line 556
    iput p1, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mNewTargetResources:I

    .line 560
    :goto_0
    return-void

    .line 558
    :cond_0
    invoke-direct {p0, p1}, Lcom/baidu/multiwaveview/MultiWaveView;->internalSetTargetResources(I)V

    goto :goto_0
.end method

.method public setVibrateEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 614
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    .line 615
    invoke-virtual {p0}, Lcom/baidu/multiwaveview/MultiWaveView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mVibrator:Landroid/os/Vibrator;

    .line 619
    :goto_0
    return-void

    .line 617
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/multiwaveview/MultiWaveView;->mVibrator:Landroid/os/Vibrator;

    goto :goto_0
.end method
