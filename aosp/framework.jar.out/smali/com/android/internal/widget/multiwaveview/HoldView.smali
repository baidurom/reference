.class public Lcom/android/internal/widget/multiwaveview/HoldView;
.super Landroid/view/View;
.source "HoldView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/multiwaveview/HoldView$OnTriggerListener;
    }
.end annotation


# static fields
.field private static final CHEVRON_ANIMATION_DURATION:I = 0x352

.field private static final CHEVRON_INCREMENTAL_DELAY:I = 0xa0

.field private static final DEBUG:Z = true

.field private static final HIDE_ANIMATION_DELAY:I = 0xc8

.field private static final HIDE_ANIMATION_DURATION:I = 0x4b0

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

.field private static final TAG:Ljava/lang/String; = "HoldView"

.field private static final TAP_RADIUS_SCALE_ACCESSIBILITY_ENABLED:F = 1.3f


# instance fields
.field private mActionCancel:Z

.field private mActiveTarget:I

.field private mAnimatingTargets:Z

.field private mBlockHideTargetsIfNeeded:Z

.field private mChevronAnimationInterpolator:Landroid/animation/TimeInterpolator;

.field private mChevronAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/widget/multiwaveview/Tweener;",
            ">;"
        }
    .end annotation
.end field

.field private mChevronDrawables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/widget/multiwaveview/TargetDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private mCount:I

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

.field private mHandleAnimation:Lcom/android/internal/widget/multiwaveview/Tweener;

.field private mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

.field private mHitRadius:F

.field private mHorizontalOffset:F

.field private mNewTargetResources:I

.field private mOnTriggerListener:Lcom/android/internal/widget/multiwaveview/HoldView$OnTriggerListener;

.field private mOuterRadius:F

.field private mOuterRing:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

.field private mResetListener:Landroid/animation/Animator$AnimatorListener;

.field private mResetListenerWithPing:Landroid/animation/Animator$AnimatorListener;

.field private mSnapMargin:F

.field private mTapRadius:F

.field private mTargetAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/widget/multiwaveview/Tweener;",
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
            "Lcom/android/internal/widget/multiwaveview/TargetDrawable;",
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
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 153
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/multiwaveview/HoldView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 154
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 13
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 157
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    sget-object v11, Lcom/android/internal/widget/multiwaveview/Ease$Quad;->easeOut:Landroid/animation/TimeInterpolator;

    iput-object v11, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mChevronAnimationInterpolator:Landroid/animation/TimeInterpolator;

    .line 86
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mTargetDrawables:Ljava/util/ArrayList;

    .line 87
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mChevronDrawables:Ljava/util/ArrayList;

    .line 88
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mChevronAnimations:Ljava/util/ArrayList;

    .line 89
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mTargetAnimations:Ljava/util/ArrayList;

    .line 98
    const/4 v11, 0x3

    iput v11, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mFeedbackCount:I

    .line 99
    const/4 v11, 0x0

    iput v11, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mVibrationDuration:I

    .line 101
    const/4 v11, -0x1

    iput v11, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mActiveTarget:I

    .line 107
    const/4 v11, 0x0

    iput v11, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mOuterRadius:F

    .line 108
    const/4 v11, 0x0

    iput v11, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mHitRadius:F

    .line 109
    const/4 v11, 0x0

    iput v11, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mSnapMargin:F

    .line 113
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mBlockHideTargetsIfNeeded:Z

    .line 114
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mActionCancel:Z

    .line 116
    new-instance v11, Lcom/android/internal/widget/multiwaveview/HoldView$1;

    invoke-direct {v11, p0}, Lcom/android/internal/widget/multiwaveview/HoldView$1;-><init>(Lcom/android/internal/widget/multiwaveview/HoldView;)V

    iput-object v11, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mResetListener:Landroid/animation/Animator$AnimatorListener;

    .line 122
    new-instance v11, Lcom/android/internal/widget/multiwaveview/HoldView$2;

    invoke-direct {v11, p0}, Lcom/android/internal/widget/multiwaveview/HoldView$2;-><init>(Lcom/android/internal/widget/multiwaveview/HoldView;)V

    iput-object v11, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mResetListenerWithPing:Landroid/animation/Animator$AnimatorListener;

    .line 129
    new-instance v11, Lcom/android/internal/widget/multiwaveview/HoldView$3;

    invoke-direct {v11, p0}, Lcom/android/internal/widget/multiwaveview/HoldView$3;-><init>(Lcom/android/internal/widget/multiwaveview/HoldView;)V

    iput-object v11, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 137
    new-instance v11, Lcom/android/internal/widget/multiwaveview/HoldView$4;

    invoke-direct {v11, p0}, Lcom/android/internal/widget/multiwaveview/HoldView$4;-><init>(Lcom/android/internal/widget/multiwaveview/HoldView;)V

    iput-object v11, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mTargetUpdateListener:Landroid/animation/Animator$AnimatorListener;

    .line 889
    const/4 v11, 0x0

    iput v11, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mCount:I

    .line 158
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 160
    .local v9, res:Landroid/content/res/Resources;
    sget-object v11, Lcom/android/internal/R$styleable;->MultiWaveView:[I

    invoke-virtual {p1, p2, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 161
    .local v0, a:Landroid/content/res/TypedArray;
    const/16 v11, 0x9

    iget v12, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mOuterRadius:F

    invoke-virtual {v0, v11, v12}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v11

    iput v11, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mOuterRadius:F

    .line 162
    const/16 v11, 0xf

    iget v12, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mHorizontalOffset:F

    invoke-virtual {v0, v11, v12}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v11

    iput v11, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mHorizontalOffset:F

    .line 164
    const/16 v11, 0xe

    iget v12, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mVerticalOffset:F

    invoke-virtual {v0, v11, v12}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v11

    iput v11, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mVerticalOffset:F

    .line 166
    const/16 v11, 0xa

    iget v12, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mHitRadius:F

    invoke-virtual {v0, v11, v12}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v11

    iput v11, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mHitRadius:F

    .line 167
    const/16 v11, 0xc

    iget v12, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mSnapMargin:F

    invoke-virtual {v0, v11, v12}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v11

    iput v11, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mSnapMargin:F

    .line 168
    const/16 v11, 0xb

    iget v12, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mVibrationDuration:I

    invoke-virtual {v0, v11, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    iput v11, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mVibrationDuration:I

    .line 170
    const/16 v11, 0xd

    iget v12, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mFeedbackCount:I

    invoke-virtual {v0, v11, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    iput v11, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mFeedbackCount:I

    .line 172
    new-instance v11, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    const/4 v12, 0x3

    invoke-virtual {v0, v12}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-direct {v11, v9, v12}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)V

    iput-object v11, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .line 174
    iget-object v11, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v11}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    iput v11, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mTapRadius:F

    .line 175
    new-instance v11, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    const/16 v12, 0x8

    invoke-virtual {v0, v12}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-direct {v11, v9, v12}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)V

    iput-object v11, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mOuterRing:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .line 176
    invoke-virtual {p0, p0}, Lcom/android/internal/widget/multiwaveview/HoldView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 179
    const/4 v11, 0x4

    new-array v4, v11, [I

    fill-array-data v4, :array_0

    .line 184
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

    .line 185
    .local v2, chevron:I
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 186
    .local v3, chevronDrawable:Landroid/graphics/drawable/Drawable;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    iget v11, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mFeedbackCount:I

    if-ge v5, v11, :cond_1

    .line 187
    iget-object v12, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mChevronDrawables:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    new-instance v11, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-direct {v11, v9, v3}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)V

    :goto_2
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 187
    :cond_0
    const/4 v11, 0x0

    goto :goto_2

    .line 184
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 193
    .end local v2           #chevron:I
    .end local v3           #chevronDrawable:Landroid/graphics/drawable/Drawable;
    .end local v5           #i:I
    :cond_2
    new-instance v8, Landroid/util/TypedValue;

    invoke-direct {v8}, Landroid/util/TypedValue;-><init>()V

    .line 194
    .local v8, outValue:Landroid/util/TypedValue;
    const/4 v11, 0x2

    invoke-virtual {v0, v11, v8}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 195
    iget v11, v8, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {p0, v11}, Lcom/android/internal/widget/multiwaveview/HoldView;->internalSetTargetResources(I)V

    .line 197
    :cond_3
    iget-object v11, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mTargetDrawables:Ljava/util/ArrayList;

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-nez v11, :cond_5

    .line 198
    :cond_4
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "Must specify at least one target drawable"

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 202
    :cond_5
    const/4 v11, 0x0

    invoke-virtual {v0, v11, v8}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 203
    iget v10, v8, Landroid/util/TypedValue;->resourceId:I

    .line 204
    .local v10, resourceId:I
    if-nez v10, :cond_6

    .line 205
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "Must specify target descriptions"

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 207
    :cond_6
    invoke-virtual {p0, v10}, Lcom/android/internal/widget/multiwaveview/HoldView;->setTargetDescriptionsResourceId(I)V

    .line 211
    .end local v10           #resourceId:I
    :cond_7
    const/4 v11, 0x1

    invoke-virtual {v0, v11, v8}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 212
    iget v10, v8, Landroid/util/TypedValue;->resourceId:I

    .line 213
    .restart local v10       #resourceId:I
    if-nez v10, :cond_8

    .line 214
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "Must specify direction descriptions"

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 216
    :cond_8
    invoke-virtual {p0, v10}, Lcom/android/internal/widget/multiwaveview/HoldView;->setDirectionDescriptionsResourceId(I)V

    .line 219
    .end local v10           #resourceId:I
    :cond_9
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 220
    iget v11, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mVibrationDuration:I

    if-lez v11, :cond_a

    const/4 v11, 0x1

    :goto_3
    invoke-virtual {p0, v11}, Lcom/android/internal/widget/multiwaveview/HoldView;->setVibrateEnabled(Z)V

    .line 221
    return-void

    .line 220
    :cond_a
    const/4 v11, 0x0

    goto :goto_3

    .line 179
    :array_0
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/internal/widget/multiwaveview/HoldView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mWaveCenterX:F

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/widget/multiwaveview/HoldView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mWaveCenterY:F

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/widget/multiwaveview/HoldView;IFF)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/multiwaveview/HoldView;->switchToState(IFF)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/widget/multiwaveview/HoldView;)Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/widget/multiwaveview/HoldView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mNewTargetResources:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/internal/widget/multiwaveview/HoldView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput p1, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mNewTargetResources:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/internal/widget/multiwaveview/HoldView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/internal/widget/multiwaveview/HoldView;->internalSetTargetResources(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/widget/multiwaveview/HoldView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/internal/widget/multiwaveview/HoldView;->hideTargets(Z)V

    return-void
.end method

.method static synthetic access$702(Lcom/android/internal/widget/multiwaveview/HoldView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mAnimatingTargets:Z

    return p1
.end method

.method private announceTargets()V
    .locals 8

    .prologue
    .line 973
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 974
    .local v5, utterance:Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 975
    .local v2, targetCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 976
    invoke-direct {p0, v1}, Lcom/android/internal/widget/multiwaveview/HoldView;->getTargetDescription(I)Ljava/lang/String;

    move-result-object v3

    .line 977
    .local v3, targetDescription:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/internal/widget/multiwaveview/HoldView;->getDirectionDescription(I)Ljava/lang/String;

    move-result-object v0

    .line 978
    .local v0, directionDescription:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 980
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 981
    .local v4, text:Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 983
    .end local v4           #text:Ljava/lang/String;
    :cond_0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 984
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/widget/multiwaveview/HoldView;->announceText(Ljava/lang/String;)V

    .line 975
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 987
    .end local v0           #directionDescription:Ljava/lang/String;
    .end local v3           #targetDescription:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private announceText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 990
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/multiwaveview/HoldView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 991
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/multiwaveview/HoldView;->sendAccessibilityEvent(I)V

    .line 992
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/multiwaveview/HoldView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 993
    return-void
.end method

.method private deactivateTargets()V
    .locals 3

    .prologue
    .line 375
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .line 376
    .local v1, target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    sget-object v2, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setState([I)V

    goto :goto_0

    .line 378
    .end local v1           #target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    :cond_0
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mActiveTarget:I

    .line 379
    return-void
.end method

.method private dispatchGrabbedEvent(I)V
    .locals 1
    .parameter "whichHandler"

    .prologue
    .line 409
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/HoldView;->vibrate()V

    .line 410
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mOnTriggerListener:Lcom/android/internal/widget/multiwaveview/HoldView$OnTriggerListener;

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mOnTriggerListener:Lcom/android/internal/widget/multiwaveview/HoldView$OnTriggerListener;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/widget/multiwaveview/HoldView$OnTriggerListener;->onGrabbed(Landroid/view/View;I)V

    .line 413
    :cond_0
    return-void
.end method

.method private dispatchTriggerEvent(I)V
    .locals 1
    .parameter "whichHandle"

    .prologue
    .line 402
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/HoldView;->vibrate()V

    .line 403
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mOnTriggerListener:Lcom/android/internal/widget/multiwaveview/HoldView$OnTriggerListener;

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mOnTriggerListener:Lcom/android/internal/widget/multiwaveview/HoldView$OnTriggerListener;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/widget/multiwaveview/HoldView$OnTriggerListener;->onTrigger(Landroid/view/View;I)V

    .line 406
    :cond_0
    return-void
.end method

.method private dist2(FF)F
    .locals 2
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 959
    mul-float v0, p1, p1

    mul-float v1, p2, p2

    add-float/2addr v0, v1

    return v0
.end method

.method private doFinish()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v8, -0x1

    const/high16 v5, 0x3f80

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 416
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mActiveTarget:I

    .line 417
    .local v0, activeTarget:I
    if-eq v0, v8, :cond_2

    move v1, v3

    .line 420
    .local v1, targetHit:Z
    :goto_0
    invoke-direct {p0, v3}, Lcom/android/internal/widget/multiwaveview/HoldView;->hideTargets(Z)V

    .line 423
    iget-object v6, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    if-eqz v1, :cond_3

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v6, v2}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setAlpha(F)V

    .line 424
    if-eqz v1, :cond_4

    .line 425
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    sget-object v6, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_ACTIVE:[I

    invoke-virtual {v2, v6}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setState([I)V

    .line 427
    invoke-direct {p0, v0}, Lcom/android/internal/widget/multiwaveview/HoldView;->hideUnselected(I)V

    .line 430
    const-string v2, "HoldView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Finish with target hit = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    const-string v2, "HoldView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onTrigger mActiveTarget="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mActiveTarget:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    iget-boolean v2, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mActionCancel:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mActiveTarget:I

    invoke-direct {p0, v2}, Lcom/android/internal/widget/multiwaveview/HoldView;->dispatchTriggerEvent(I)V

    .line 435
    :cond_0
    iput v8, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mActiveTarget:I

    .line 437
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    const-wide/16 v6, 0x0

    const/16 v8, 0xe

    new-array v8, v8, [Ljava/lang/Object;

    const-string v9, "ease"

    aput-object v9, v8, v4

    sget-object v9, Lcom/android/internal/widget/multiwaveview/Ease$Quart;->easeOut:Landroid/animation/TimeInterpolator;

    aput-object v9, v8, v3

    const-string v3, "delay"

    aput-object v3, v8, v10

    const/4 v3, 0x3

    const/16 v9, 0x4b0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v3

    const/4 v3, 0x4

    const-string v9, "alpha"

    aput-object v9, v8, v3

    const/4 v3, 0x5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v8, v3

    const/4 v3, 0x6

    const-string/jumbo v5, "x"

    aput-object v5, v8, v3

    const/4 v3, 0x7

    iget v5, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mWaveCenterX:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v8, v3

    const/16 v3, 0x8

    const-string/jumbo v5, "y"

    aput-object v5, v8, v3

    const/16 v3, 0x9

    iget v5, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mWaveCenterY:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v8, v3

    const/16 v3, 0xa

    const-string/jumbo v5, "onUpdate"

    aput-object v5, v8, v3

    const/16 v3, 0xb

    iget-object v5, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v5, v8, v3

    const/16 v3, 0xc

    const-string/jumbo v5, "onComplete"

    aput-object v5, v8, v3

    const/16 v3, 0xd

    iget-object v5, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mResetListener:Landroid/animation/Animator$AnimatorListener;

    aput-object v5, v8, v3

    invoke-static {v2, v6, v7, v8}, Lcom/android/internal/widget/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/widget/multiwaveview/Tweener;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mHandleAnimation:Lcom/android/internal/widget/multiwaveview/Tweener;

    .line 457
    :goto_2
    iget-boolean v2, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mActionCancel:Z

    if-nez v2, :cond_1

    invoke-direct {p0, v4}, Lcom/android/internal/widget/multiwaveview/HoldView;->setGrabbedState(I)V

    .line 458
    :cond_1
    return-void

    .end local v1           #targetHit:Z
    :cond_2
    move v1, v4

    .line 417
    goto/16 :goto_0

    .restart local v1       #targetHit:Z
    :cond_3
    move v2, v5

    .line 423
    goto/16 :goto_1

    .line 447
    :cond_4
    iget-object v6, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    const-wide/16 v7, 0x12c

    const/16 v2, 0xe

    new-array v9, v2, [Ljava/lang/Object;

    const-string v2, "ease"

    aput-object v2, v9, v4

    sget-object v2, Lcom/android/internal/widget/multiwaveview/Ease$Quart;->easeOut:Landroid/animation/TimeInterpolator;

    aput-object v2, v9, v3

    const-string v2, "delay"

    aput-object v2, v9, v10

    const/4 v2, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v9, v2

    const/4 v2, 0x4

    const-string v3, "alpha"

    aput-object v3, v9, v2

    const/4 v2, 0x5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v9, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "x"

    aput-object v3, v9, v2

    const/4 v2, 0x7

    iget v3, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mWaveCenterX:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v9, v2

    const/16 v2, 0x8

    const-string/jumbo v3, "y"

    aput-object v3, v9, v2

    const/16 v2, 0x9

    iget v3, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mWaveCenterY:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v9, v2

    const/16 v2, 0xa

    const-string/jumbo v3, "onUpdate"

    aput-object v3, v9, v2

    const/16 v2, 0xb

    iget-object v3, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v3, v9, v2

    const/16 v2, 0xc

    const-string/jumbo v3, "onComplete"

    aput-object v3, v9, v2

    const/16 v3, 0xd

    iget-boolean v2, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mDragging:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mResetListenerWithPing:Landroid/animation/Animator$AnimatorListener;

    :goto_3
    aput-object v2, v9, v3

    invoke-static {v6, v7, v8, v9}, Lcom/android/internal/widget/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/widget/multiwaveview/Tweener;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mHandleAnimation:Lcom/android/internal/widget/multiwaveview/Tweener;

    goto :goto_2

    :cond_5
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mResetListener:Landroid/animation/Animator$AnimatorListener;

    goto :goto_3
.end method

.method private dump()V
    .locals 3

    .prologue
    .line 224
    const-string v0, "HoldView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Outer Radius = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mOuterRadius:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const-string v0, "HoldView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HitRadius = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mHitRadius:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    const-string v0, "HoldView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SnapMargin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mSnapMargin:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const-string v0, "HoldView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FeedbackCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mFeedbackCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const-string v0, "HoldView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VibrationDuration = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mVibrationDuration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const-string v0, "HoldView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TapRadius = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mTapRadius:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const-string v0, "HoldView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WaveCenterX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mWaveCenterX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const-string v0, "HoldView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WaveCenterY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mWaveCenterY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const-string v0, "HoldView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HorizontalOffset = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mHorizontalOffset:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const-string v0, "HoldView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VerticalOffset = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mVerticalOffset:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    return-void
.end method

.method private getDirectionDescription(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 1008
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mDirectionDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mDirectionDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1009
    :cond_0
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mDirectionDescriptionsResourceId:I

    invoke-direct {p0, v0}, Lcom/android/internal/widget/multiwaveview/HoldView;->loadDescriptions(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mDirectionDescriptions:Ljava/util/ArrayList;

    .line 1010
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mDirectionDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1011
    const-string v0, "HoldView"

    const-string v1, "The number of target drawables must be euqal to the number of direction descriptions."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    const/4 v0, 0x0

    .line 1016
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mDirectionDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method private getScaledTapRadiusSquared()F
    .locals 3

    .prologue
    .line 964
    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 965
    const v1, 0x3fa66666

    iget v2, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mTapRadius:F

    mul-float v0, v1, v2

    .line 969
    .local v0, scaledTapRadius:F
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/internal/widget/multiwaveview/HoldView;->square(F)F

    move-result v1

    return v1

    .line 967
    .end local v0           #scaledTapRadius:F
    :cond_0
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mTapRadius:F

    .restart local v0       #scaledTapRadius:F
    goto :goto_0
.end method

.method private getTargetDescription(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 996
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mTargetDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 997
    :cond_0
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mTargetDescriptionsResourceId:I

    invoke-direct {p0, v0}, Lcom/android/internal/widget/multiwaveview/HoldView;->loadDescriptions(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mTargetDescriptions:Ljava/util/ArrayList;

    .line 998
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 999
    const-string v0, "HoldView"

    const-string v1, "The number of target drawables must be euqal to the number of target descriptions."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    const/4 v0, 0x0

    .line 1004
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method private handleDown(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 705
    invoke-direct {p0, p1}, Lcom/android/internal/widget/multiwaveview/HoldView;->trySwitchToFirstTouchState(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 706
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mDragging:Z

    .line 707
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/HoldView;->stopTargetAnimation()V

    .line 708
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/HoldView;->ping()V

    .line 710
    :cond_0
    return-void
.end method

.method private handleMove(Landroid/view/MotionEvent;)V
    .locals 30
    .parameter "event"

    .prologue
    .line 719
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/multiwaveview/HoldView;->mDragging:Z

    move/from16 v28, v0

    if-nez v28, :cond_0

    .line 720
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/widget/multiwaveview/HoldView;->trySwitchToFirstTouchState(Landroid/view/MotionEvent;)Z

    .line 791
    :goto_0
    return-void

    .line 724
    :cond_0
    const/4 v4, -0x1

    .line 725
    .local v4, activeTarget:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v10

    .line 726
    .local v10, historySize:I
    const/4 v13, 0x0

    .local v13, k:I
    :goto_1
    add-int/lit8 v28, v10, 0x1

    move/from16 v0, v28

    if-ge v13, v0, :cond_d

    .line 727
    if-ge v13, v10, :cond_3

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v26

    .line 728
    .local v26, x:F
    :goto_2
    if-ge v13, v10, :cond_4

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v27

    .line 729
    .local v27, y:F
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/multiwaveview/HoldView;->mWaveCenterX:F

    move/from16 v28, v0

    sub-float v24, v26, v28

    .line 730
    .local v24, tx:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/multiwaveview/HoldView;->mWaveCenterY:F

    move/from16 v28, v0

    sub-float v25, v27, v28

    .line 731
    .local v25, ty:F
    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/multiwaveview/HoldView;->dist2(FF)F

    move-result v28

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v23, v0

    .line 732
    .local v23, touchRadius:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/multiwaveview/HoldView;->mOuterRadius:F

    move/from16 v28, v0

    cmpl-float v28, v23, v28

    if-lez v28, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/multiwaveview/HoldView;->mOuterRadius:F

    move/from16 v28, v0

    div-float v18, v28, v23

    .line 733
    .local v18, scale:F
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/multiwaveview/HoldView;->mWaveCenterX:F

    move/from16 v28, v0

    mul-float v29, v24, v18

    add-float v14, v28, v29

    .line 734
    .local v14, limitX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/multiwaveview/HoldView;->mWaveCenterY:F

    move/from16 v28, v0

    mul-float v29, v25, v18

    add-float v15, v28, v29

    .line 736
    .local v15, limitY:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/HoldView;->mTargetDrawables:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_6

    const/16 v19, 0x1

    .line 737
    .local v19, singleTarget:Z
    :goto_5
    if-eqz v19, :cond_7

    .line 739
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/multiwaveview/HoldView;->mOuterRadius:F

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/multiwaveview/HoldView;->mSnapMargin:F

    move/from16 v29, v0

    sub-float v20, v28, v29

    .line 740
    .local v20, snapRadius:F
    cmpl-float v28, v23, v20

    if-lez v28, :cond_1

    .line 741
    const/4 v4, 0x0

    .line 742
    move/from16 v26, v14

    .line 743
    move/from16 v27, v15

    .line 763
    .end local v20           #snapRadius:F
    :cond_1
    :goto_6
    const/16 v28, -0x1

    move/from16 v0, v28

    if-eq v4, v0, :cond_c

    .line 764
    const/16 v28, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/widget/multiwaveview/HoldView;->switchToState(IFF)V

    .line 765
    if-eqz v19, :cond_a

    move/from16 v16, v14

    .line 766
    .local v16, newX:F
    :goto_7
    if-eqz v19, :cond_b

    move/from16 v17, v15

    .line 767
    .local v17, newY:F
    :goto_8
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/widget/multiwaveview/HoldView;->moveHandleTo(FFZ)V

    .line 768
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/HoldView;->mTargetDrawables:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .line 769
    .local v6, currentTarget:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    sget-object v28, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_FOCUSED:[I

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->hasState([I)Z

    move-result v28

    if-eqz v28, :cond_2

    .line 770
    sget-object v28, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_FOCUSED:[I

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setState([I)V

    .line 771
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/HoldView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setAlpha(F)V

    .line 726
    .end local v6           #currentTarget:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    .end local v16           #newX:F
    .end local v17           #newY:F
    :cond_2
    :goto_9
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 727
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

    .line 728
    .restart local v26       #x:F
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v27

    goto/16 :goto_3

    .line 732
    .restart local v23       #touchRadius:F
    .restart local v24       #tx:F
    .restart local v25       #ty:F
    .restart local v27       #y:F
    :cond_5
    const/high16 v18, 0x3f80

    goto/16 :goto_4

    .line 736
    .restart local v14       #limitX:F
    .restart local v15       #limitY:F
    .restart local v18       #scale:F
    :cond_6
    const/16 v19, 0x0

    goto/16 :goto_5

    .line 747
    .restart local v19       #singleTarget:Z
    :cond_7
    const v5, 0x7f7fffff

    .line 748
    .local v5, best:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/multiwaveview/HoldView;->mHitRadius:F

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/multiwaveview/HoldView;->mHitRadius:F

    move/from16 v29, v0

    mul-float v11, v28, v29

    .line 749
    .local v11, hitRadius2:F
    const/4 v12, 0x0

    .local v12, i:I
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/HoldView;->mTargetDrawables:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v28

    move/from16 v0, v28

    if-ge v12, v0, :cond_9

    .line 751
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/HoldView;->mTargetDrawables:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .line 752
    .local v21, target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getX()F

    move-result v28

    sub-float v8, v14, v28

    .line 753
    .local v8, dx:F
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getY()F

    move-result v28

    sub-float v9, v15, v28

    .line 754
    .local v9, dy:F
    mul-float v28, v8, v8

    mul-float v29, v9, v9

    add-float v7, v28, v29

    .line 755
    .local v7, dist2:F
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->isValid()Z

    move-result v28

    if-eqz v28, :cond_8

    cmpg-float v28, v7, v11

    if-gez v28, :cond_8

    cmpg-float v28, v7, v5

    if-gez v28, :cond_8

    .line 756
    move v4, v12

    .line 757
    move v5, v7

    .line 749
    :cond_8
    add-int/lit8 v12, v12, 0x1

    goto :goto_a

    .line 760
    .end local v7           #dist2:F
    .end local v8           #dx:F
    .end local v9           #dy:F
    .end local v21           #target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    :cond_9
    move/from16 v26, v14

    .line 761
    move/from16 v27, v15

    goto/16 :goto_6

    .line 765
    .end local v5           #best:F
    .end local v11           #hitRadius2:F
    .end local v12           #i:I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/HoldView;->mTargetDrawables:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getX()F

    move-result v16

    goto/16 :goto_7

    .line 766
    .restart local v16       #newX:F
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/HoldView;->mTargetDrawables:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getY()F

    move-result v17

    goto/16 :goto_8

    .line 774
    .end local v16           #newX:F
    :cond_c
    const/16 v28, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/widget/multiwaveview/HoldView;->switchToState(IFF)V

    .line 775
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/widget/multiwaveview/HoldView;->moveHandleTo(FFZ)V

    .line 776
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/HoldView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    move-object/from16 v28, v0

    const/high16 v29, 0x3f80

    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setAlpha(F)V

    goto/16 :goto_9

    .line 781
    .end local v14           #limitX:F
    .end local v15           #limitY:F
    .end local v18           #scale:F
    .end local v19           #singleTarget:Z
    .end local v23           #touchRadius:F
    .end local v24           #tx:F
    .end local v25           #ty:F
    .end local v26           #x:F
    .end local v27           #y:F
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/HoldView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/HoldView;->invalidateGlobalRegion(Lcom/android/internal/widget/multiwaveview/TargetDrawable;)V

    .line 783
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/multiwaveview/HoldView;->mActiveTarget:I

    move/from16 v28, v0

    move/from16 v0, v28

    if-eq v0, v4, :cond_e

    const/16 v28, -0x1

    move/from16 v0, v28

    if-eq v4, v0, :cond_e

    .line 784
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/widget/multiwaveview/HoldView;->dispatchGrabbedEvent(I)V

    .line 785
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/HoldView;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v28

    if-eqz v28, :cond_e

    .line 786
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/widget/multiwaveview/HoldView;->getTargetDescription(I)Ljava/lang/String;

    move-result-object v22

    .line 787
    .local v22, targetContentDescription:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/widget/multiwaveview/HoldView;->announceText(Ljava/lang/String;)V

    .line 790
    .end local v22           #targetContentDescription:Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/widget/multiwaveview/HoldView;->mActiveTarget:I

    goto/16 :goto_0
.end method

.method private handleUp(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 713
    iget-boolean v0, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mDragging:Z

    if-eqz v0, :cond_0

    const-string v0, "HoldView"

    const-string v1, "** Handle RELEASE"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mBlockHideTargetsIfNeeded:Z

    .line 715
    const/4 v0, 0x4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/widget/multiwaveview/HoldView;->switchToState(IFF)V

    .line 716
    return-void
.end method

.method private hideChevrons()V
    .locals 3

    .prologue
    .line 927
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mChevronDrawables:Ljava/util/ArrayList;

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

    check-cast v0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .line 928
    .local v0, chevron:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    if-eqz v0, :cond_0

    .line 929
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setAlpha(F)V

    goto :goto_0

    .line 932
    .end local v0           #chevron:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
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

    .line 470
    const-string v4, "HoldView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hideTargets animate="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "mBlockHideTargetsIfNeeded = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mBlockHideTargetsIfNeeded:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    iget-boolean v4, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mBlockHideTargetsIfNeeded:Z

    if-eqz v4, :cond_0

    .line 500
    :goto_0
    return-void

    .line 473
    :cond_0
    iget-object v4, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mTargetAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 474
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/HoldView;->stopTargetAnimation()V

    .line 478
    :cond_1
    iput-boolean p1, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mAnimatingTargets:Z

    .line 479
    if-eqz p1, :cond_4

    .line 480
    if-eqz p1, :cond_2

    const/16 v0, 0x4b0

    .line 481
    .local v0, duration:I
    :goto_1
    iget-object v4, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .line 482
    .local v2, target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    sget-object v4, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v2, v4}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setState([I)V

    .line 483
    iget-object v4, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mTargetAnimations:Ljava/util/ArrayList;

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

    const-string/jumbo v9, "onUpdate"

    aput-object v9, v7, v8

    const/4 v8, 0x5

    iget-object v9, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v9, v7, v8

    invoke-static {v2, v5, v6, v7}, Lcom/android/internal/widget/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/widget/multiwaveview/Tweener;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .end local v0           #duration:I
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    :cond_2
    move v0, v3

    .line 480
    goto :goto_1

    .line 488
    .restart local v0       #duration:I
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_3
    iget-object v4, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mTargetAnimations:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mOuterRing:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

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

    const-string/jumbo v9, "onUpdate"

    aput-object v9, v8, v3

    const/4 v3, 0x5

    iget-object v9, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v9, v8, v3

    const/4 v3, 0x6

    const-string/jumbo v9, "onComplete"

    aput-object v9, v8, v3

    const/4 v3, 0x7

    iget-object v9, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mTargetUpdateListener:Landroid/animation/Animator$AnimatorListener;

    aput-object v9, v8, v3

    invoke-static {v5, v6, v7, v8}, Lcom/android/internal/widget/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/widget/multiwaveview/Tweener;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 494
    .end local v0           #duration:I
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_4
    iget-object v3, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .line 495
    .restart local v2       #target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    sget-object v3, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setState([I)V

    .line 496
    invoke-virtual {v2, v10}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setAlpha(F)V

    goto :goto_3

    .line 498
    .end local v2           #target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    :cond_5
    iget-object v3, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mOuterRing:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v3, v10}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setAlpha(F)V

    goto/16 :goto_0
.end method

.method private hideUnselected(I)V
    .locals 3
    .parameter "active"

    .prologue
    const/4 v2, 0x0

    .line 461
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 462
    if-eq v0, p1, :cond_0

    .line 463
    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setAlpha(F)V

    .line 461
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 466
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mOuterRing:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setAlpha(F)V

    .line 467
    return-void
.end method

.method private internalSetTargetResources(I)V
    .locals 9
    .parameter "resourceId"

    .prologue
    .line 545
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/HoldView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 546
    .local v4, res:Landroid/content/res/Resources;
    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 547
    .local v0, array:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    .line 548
    .local v1, count:I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 549
    .local v5, targetDrawables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/widget/multiwaveview/TargetDrawable;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 550
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 551
    .local v2, drawable:Landroid/graphics/drawable/Drawable;
    const-string v6, "HoldView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "internalSetTargetResources, i="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", drawable="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    new-instance v6, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-direct {v6, v4, v2}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 549
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 554
    .end local v2           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 555
    iput p1, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mTargetResourceId:I

    .line 556
    iput-object v5, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mTargetDrawables:Ljava/util/ArrayList;

    .line 557
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/HoldView;->updateTargetPositions()V

    .line 558
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
    .line 1020
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/HoldView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1021
    .local v0, array:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    .line 1022
    .local v2, count:I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1023
    .local v4, targetContentDescriptions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 1024
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1025
    .local v1, contentDescription:Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1023
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1027
    .end local v1           #contentDescription:Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1028
    return-object v4
.end method

.method private moveHandleTo(FFZ)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "animate"

    .prologue
    .line 700
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setX(F)V

    .line 701
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setY(F)V

    .line 702
    return-void
.end method

.method private performInitialLayout(FF)V
    .locals 5
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 847
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mOuterRadius:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_0

    .line 848
    const/high16 v0, 0x3f00

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/multiwaveview/HoldView;->dist2(FF)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mOuterRadius:F

    .line 850
    :cond_0
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mHitRadius:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_1

    .line 852
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mHitRadius:F

    .line 854
    :cond_1
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mSnapMargin:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_2

    .line 855
    const/4 v0, 0x1

    const/high16 v1, 0x41a0

    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/HoldView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mSnapMargin:F

    .line 858
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/HoldView;->hideChevrons()V

    .line 859
    invoke-direct {p0, v4}, Lcom/android/internal/widget/multiwaveview/HoldView;->hideTargets(Z)V

    .line 860
    invoke-direct {p0, p1, p2, v4}, Lcom/android/internal/widget/multiwaveview/HoldView;->moveHandleTo(FFZ)V

    .line 861
    return-void
.end method

.method private resolveMeasured(II)I
    .locals 3
    .parameter "measureSpec"
    .parameter "desired"

    .prologue
    .line 262
    const/4 v0, 0x0

    .line 263
    .local v0, result:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 264
    .local v1, specSize:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 273
    move v0, v1

    .line 275
    :goto_0
    return v0

    .line 266
    :sswitch_0
    move v0, p2

    .line 267
    goto :goto_0

    .line 269
    :sswitch_1
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 270
    goto :goto_0

    .line 264
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
    .line 819
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mGrabbedState:I

    if-eq p1, v0, :cond_1

    .line 820
    if-eqz p1, :cond_0

    .line 821
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/HoldView;->vibrate()V

    .line 823
    :cond_0
    iput p1, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mGrabbedState:I

    .line 824
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mOnTriggerListener:Lcom/android/internal/widget/multiwaveview/HoldView$OnTriggerListener;

    if-eqz v0, :cond_1

    .line 825
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mOnTriggerListener:Lcom/android/internal/widget/multiwaveview/HoldView$OnTriggerListener;

    iget v1, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mGrabbedState:I

    invoke-interface {v0, p0, v1}, Lcom/android/internal/widget/multiwaveview/HoldView$OnTriggerListener;->onGrabbedStateChange(Landroid/view/View;I)V

    .line 828
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

    .line 503
    const-string v2, "HoldView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "showTargets animate = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mTargetAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 505
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/HoldView;->stopTargetAnimation()V

    .line 507
    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mAnimatingTargets:Z

    .line 508
    if-eqz p1, :cond_2

    .line 509
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .line 510
    .local v1, target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    sget-object v2, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setState([I)V

    .line 511
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mTargetAnimations:Ljava/util/ArrayList;

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

    const-string/jumbo v7, "onUpdate"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    iget-object v7, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v7, v5, v6

    invoke-static {v1, v3, v4, v5}, Lcom/android/internal/widget/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/widget/multiwaveview/Tweener;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 516
    .end local v1           #target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    :cond_1
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mTargetAnimations:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mOuterRing:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

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

    const-string/jumbo v8, "onUpdate"

    aput-object v8, v6, v7

    const/4 v7, 0x5

    iget-object v8, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v8, v6, v7

    const/4 v7, 0x6

    const-string/jumbo v8, "onComplete"

    aput-object v8, v6, v7

    const/4 v7, 0x7

    iget-object v8, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mTargetUpdateListener:Landroid/animation/Animator$AnimatorListener;

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5, v6}, Lcom/android/internal/widget/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/widget/multiwaveview/Tweener;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 528
    :goto_1
    return-void

    .line 522
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_2
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .line 523
    .restart local v1       #target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    sget-object v2, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setState([I)V

    .line 524
    invoke-virtual {v1, v8}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setAlpha(F)V

    goto :goto_2

    .line 526
    .end local v1           #target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    :cond_3
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mOuterRing:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v2, v8}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setAlpha(F)V

    goto :goto_1
.end method

.method private square(F)F
    .locals 1
    .parameter "d"

    .prologue
    .line 955
    mul-float v0, p1, p1

    return v0
.end method

.method private startChevronAnimation()V
    .locals 20

    .prologue
    .line 324
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/widget/multiwaveview/HoldView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v11}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getWidth()I

    move-result v11

    int-to-float v11, v11

    const v12, 0x3ecccccd

    mul-float v8, v11, v12

    .line 325
    .local v8, r:F
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/widget/multiwaveview/HoldView;->mOuterRadius:F

    const v12, 0x3f666666

    mul-float v1, v11, v12

    .line 326
    .local v1, chevronAnimationDistance:F
    const/4 v11, 0x4

    new-array v6, v11, [[F

    const/4 v11, 0x0

    const/4 v12, 0x2

    new-array v12, v12, [F

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/multiwaveview/HoldView;->mWaveCenterX:F

    sub-float/2addr v14, v8

    aput v14, v12, v13

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/multiwaveview/HoldView;->mWaveCenterY:F

    aput v14, v12, v13

    aput-object v12, v6, v11

    const/4 v11, 0x1

    const/4 v12, 0x2

    new-array v12, v12, [F

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/multiwaveview/HoldView;->mWaveCenterX:F

    add-float/2addr v14, v8

    aput v14, v12, v13

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/multiwaveview/HoldView;->mWaveCenterY:F

    aput v14, v12, v13

    aput-object v12, v6, v11

    const/4 v11, 0x2

    const/4 v12, 0x2

    new-array v12, v12, [F

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/multiwaveview/HoldView;->mWaveCenterX:F

    aput v14, v12, v13

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/multiwaveview/HoldView;->mWaveCenterY:F

    sub-float/2addr v14, v8

    aput v14, v12, v13

    aput-object v12, v6, v11

    const/4 v11, 0x3

    const/4 v12, 0x2

    new-array v12, v12, [F

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/multiwaveview/HoldView;->mWaveCenterX:F

    aput v14, v12, v13

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/multiwaveview/HoldView;->mWaveCenterY:F

    add-float/2addr v14, v8

    aput v14, v12, v13

    aput-object v12, v6, v11

    .line 331
    .local v6, from:[[F
    const/4 v11, 0x4

    new-array v10, v11, [[F

    const/4 v11, 0x0

    const/4 v12, 0x2

    new-array v12, v12, [F

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/multiwaveview/HoldView;->mWaveCenterX:F

    sub-float/2addr v14, v1

    aput v14, v12, v13

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/multiwaveview/HoldView;->mWaveCenterY:F

    aput v14, v12, v13

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const/4 v12, 0x2

    new-array v12, v12, [F

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/multiwaveview/HoldView;->mWaveCenterX:F

    add-float/2addr v14, v1

    aput v14, v12, v13

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/multiwaveview/HoldView;->mWaveCenterY:F

    aput v14, v12, v13

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const/4 v12, 0x2

    new-array v12, v12, [F

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/multiwaveview/HoldView;->mWaveCenterX:F

    aput v14, v12, v13

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/multiwaveview/HoldView;->mWaveCenterY:F

    sub-float/2addr v14, v1

    aput v14, v12, v13

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const/4 v12, 0x2

    new-array v12, v12, [F

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/multiwaveview/HoldView;->mWaveCenterX:F

    aput v14, v12, v13

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/multiwaveview/HoldView;->mWaveCenterY:F

    add-float/2addr v14, v1

    aput v14, v12, v13

    aput-object v12, v10, v11

    .line 337
    .local v10, to:[[F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/widget/multiwaveview/HoldView;->mChevronAnimations:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 338
    const/high16 v9, 0x3f00

    .line 339
    .local v9, startScale:F
    const/high16 v5, 0x4000

    .line 340
    .local v5, endScale:F
    const/4 v4, 0x0

    .local v4, direction:I
    :goto_0
    const/4 v11, 0x4

    if-ge v4, v11, :cond_2

    .line 341
    const/4 v2, 0x0

    .local v2, count:I
    :goto_1
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/widget/multiwaveview/HoldView;->mFeedbackCount:I

    if-ge v2, v11, :cond_1

    .line 342
    mul-int/lit16 v3, v2, 0xa0

    .line 343
    .local v3, delay:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/widget/multiwaveview/HoldView;->mChevronDrawables:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/widget/multiwaveview/HoldView;->mFeedbackCount:I

    mul-int/2addr v12, v4

    add-int/2addr v12, v2

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .line 344
    .local v7, icon:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    if-nez v7, :cond_0

    .line 341
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 347
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/widget/multiwaveview/HoldView;->mChevronAnimations:Ljava/util/ArrayList;

    const-wide/16 v12, 0x352

    const/16 v14, 0x10

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "ease"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/HoldView;->mChevronAnimationInterpolator:Landroid/animation/TimeInterpolator;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const-string v16, "delay"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x4

    const-string/jumbo v16, "x"

    aput-object v16, v14, v15

    const/4 v15, 0x5

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget-object v18, v6, v4

    const/16 v19, 0x0

    aget v18, v18, v19

    aput v18, v16, v17

    const/16 v17, 0x1

    aget-object v18, v10, v4

    const/16 v19, 0x0

    aget v18, v18, v19

    aput v18, v16, v17

    aput-object v16, v14, v15

    const/4 v15, 0x6

    const-string/jumbo v16, "y"

    aput-object v16, v14, v15

    const/4 v15, 0x7

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget-object v18, v6, v4

    const/16 v19, 0x1

    aget v18, v18, v19

    aput v18, v16, v17

    const/16 v17, 0x1

    aget-object v18, v10, v4

    const/16 v19, 0x1

    aget v18, v18, v19

    aput v18, v16, v17

    aput-object v16, v14, v15

    const/16 v15, 0x8

    const-string v16, "alpha"

    aput-object v16, v14, v15

    const/16 v15, 0x9

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    fill-array-data v16, :array_0

    aput-object v16, v14, v15

    const/16 v15, 0xa

    const-string/jumbo v16, "scaleX"

    aput-object v16, v14, v15

    const/16 v15, 0xb

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    fill-array-data v16, :array_1

    aput-object v16, v14, v15

    const/16 v15, 0xc

    const-string/jumbo v16, "scaleY"

    aput-object v16, v14, v15

    const/16 v15, 0xd

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    fill-array-data v16, :array_2

    aput-object v16, v14, v15

    const/16 v15, 0xe

    const-string/jumbo v16, "onUpdate"

    aput-object v16, v14, v15

    const/16 v15, 0xf

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/HoldView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    invoke-static {v7, v12, v13, v14}, Lcom/android/internal/widget/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/widget/multiwaveview/Tweener;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 340
    .end local v3           #delay:I
    .end local v7           #icon:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 358
    .end local v2           #count:I
    :cond_2
    return-void

    .line 347
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x0t 0x40t
    .end array-data

    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x0t 0x40t
    .end array-data
.end method

.method private stopChevronAnimation()V
    .locals 3

    .prologue
    .line 361
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mChevronAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/multiwaveview/Tweener;

    .line 362
    .local v0, anim:Lcom/android/internal/widget/multiwaveview/Tweener;
    iget-object v2, v0, Lcom/android/internal/widget/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->end()V

    goto :goto_0

    .line 364
    .end local v0           #anim:Lcom/android/internal/widget/multiwaveview/Tweener;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mChevronAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 365
    return-void
.end method

.method private stopHandleAnimation()V
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mHandleAnimation:Lcom/android/internal/widget/multiwaveview/Tweener;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mHandleAnimation:Lcom/android/internal/widget/multiwaveview/Tweener;

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 370
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mHandleAnimation:Lcom/android/internal/widget/multiwaveview/Tweener;

    .line 372
    :cond_0
    return-void
.end method

.method private stopTargetAnimation()V
    .locals 3

    .prologue
    .line 531
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mTargetAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/multiwaveview/Tweener;

    .line 532
    .local v0, anim:Lcom/android/internal/widget/multiwaveview/Tweener;
    iget-object v2, v0, Lcom/android/internal/widget/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->end()V

    goto :goto_0

    .line 534
    .end local v0           #anim:Lcom/android/internal/widget/multiwaveview/Tweener;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mTargetAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 535
    return-void
.end method

.method private switchToState(IFF)V
    .locals 3
    .parameter "state"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, 0x1

    .line 289
    packed-switch p1, :pswitch_data_0

    .line 316
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 291
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/HoldView;->deactivateTargets()V

    .line 292
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    sget-object v1, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setState([I)V

    goto :goto_0

    .line 296
    :pswitch_2
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/HoldView;->stopHandleAnimation()V

    .line 297
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/HoldView;->deactivateTargets()V

    .line 298
    invoke-direct {p0, v2}, Lcom/android/internal/widget/multiwaveview/HoldView;->showTargets(Z)V

    .line 299
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    sget-object v1, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_ACTIVE:[I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setState([I)V

    .line 300
    invoke-direct {p0, v2}, Lcom/android/internal/widget/multiwaveview/HoldView;->setGrabbedState(I)V

    .line 301
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/HoldView;->announceTargets()V

    goto :goto_0

    .line 313
    :pswitch_3
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/HoldView;->doFinish()V

    goto :goto_0

    .line 289
    nop

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
    .locals 7
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    .line 831
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 832
    .local v2, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 833
    .local v3, y:F
    iget v5, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mWaveCenterX:F

    sub-float v0, v2, v5

    .line 834
    .local v0, dx:F
    iget v5, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mWaveCenterY:F

    sub-float v1, v3, v5

    .line 835
    .local v1, dy:F
    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/multiwaveview/HoldView;->dist2(FF)F

    move-result v5

    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/HoldView;->getScaledTapRadiusSquared()F

    move-result v6

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_0

    .line 836
    const-string v5, "HoldView"

    const-string v6, "** Handle HIT"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    iput-boolean v4, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mDragging:Z

    .line 843
    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private updateTargetPositions()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 892
    iput v12, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mCount:I

    .line 894
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v8, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_2

    .line 895
    iget-object v8, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .line 896
    .local v3, targetIcon:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    if-eqz v3, :cond_1

    .line 897
    const-string v8, "HoldView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateTargetPositions, i="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", isValid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->isValid()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    invoke-virtual {v3}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->isValid()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 899
    iget v8, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mCount:I

    .line 904
    :cond_0
    :goto_1
    const-wide v8, -0x3fe6de04abbbd2e8L

    int-to-double v10, v2

    mul-double/2addr v8, v10

    iget-object v10, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    int-to-double v10, v10

    div-double v0, v8, v10

    .line 905
    .local v0, angle:D
    iget v8, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mWaveCenterX:F

    iget v9, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mOuterRadius:F

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    double-to-float v10, v10

    mul-float/2addr v9, v10

    add-float v6, v8, v9

    .line 906
    .local v6, xPosition:F
    iget v8, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mWaveCenterY:F

    iget v9, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mOuterRadius:F

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    double-to-float v10, v10

    mul-float/2addr v9, v10

    add-float v7, v8, v9

    .line 907
    .local v7, yPosition:F
    invoke-virtual {v3, v6}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setX(F)V

    .line 908
    invoke-virtual {v3, v7}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setY(F)V

    .line 909
    const-string v8, "HoldView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateTargetPositions, i="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", xPosition="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", yPosition="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", angle="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mOuterRadius="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mOuterRadius:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mWaveCenterY="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mWaveCenterY:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mWaveCenterX="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mWaveCenterX:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 902
    .end local v0           #angle:D
    .end local v6           #xPosition:F
    .end local v7           #yPosition:F
    :cond_1
    const-string v8, "HoldView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateTargetPositions, i="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", targetIcon != null"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 913
    .end local v3           #targetIcon:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    :cond_2
    iget v8, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mCount:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_4

    .line 914
    iget-object v8, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .line 915
    .local v4, targetIcon0:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    iget-object v8, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mTargetDrawables:Ljava/util/ArrayList;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .line 916
    .local v5, targetIcon1:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    const-string v8, "HoldView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "targetIcon0.isValid() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->isValid()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    const-string v8, "HoldView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "targetIcon1.isValid() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->isValid()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    const-string v8, "HoldView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "this.getWidth() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/HoldView;->getWidth()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    invoke-virtual {v4}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->isValid()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v5}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->isValid()Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/HoldView;->getWidth()I

    move-result v8

    const/16 v9, 0x1e0

    if-eq v8, v9, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/HoldView;->getWidth()I

    move-result v8

    if-eqz v8, :cond_4

    .line 921
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/HoldView;->getRootView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->debug()V

    .line 924
    .end local v4           #targetIcon0:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    .end local v5           #targetIcon1:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    :cond_4
    return-void
.end method

.method private vibrate()V
    .locals 3

    .prologue
    .line 538
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 539
    const/16 v0, 0x28

    iput v0, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mVibrationDuration:I

    .line 540
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mVibrator:Landroid/os/Vibrator;

    iget v1, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mVibrationDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 542
    :cond_0
    return-void
.end method


# virtual methods
.method public getDirectionDescriptionsResourceId()I
    .locals 1

    .prologue
    .line 617
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mDirectionDescriptionsResourceId:I

    return v0
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 256
    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mOuterRing:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getHeight()I

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

    .line 249
    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mOuterRing:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    :cond_0
    add-int/2addr v0, v1

    return v0
.end method

.method public getTargetDescriptionsResourceId()I
    .locals 1

    .prologue
    .line 596
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mTargetDescriptionsResourceId:I

    return v0
.end method

.method public getTargetResourceId()I
    .locals 1

    .prologue
    .line 575
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mTargetResourceId:I

    return v0
.end method

.method invalidateGlobalRegion(Lcom/android/internal/widget/multiwaveview/TargetDrawable;)V
    .locals 9
    .parameter "drawable"

    .prologue
    const/4 v6, 0x0

    .line 382
    invoke-virtual {p1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getWidth()I

    move-result v3

    .line 383
    .local v3, width:I
    invoke-virtual {p1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getHeight()I

    move-result v1

    .line 384
    .local v1, height:I
    new-instance v0, Landroid/graphics/RectF;

    int-to-float v4, v3

    int-to-float v5, v1

    invoke-direct {v0, v6, v6, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 385
    .local v0, childBounds:Landroid/graphics/RectF;
    invoke-virtual {p1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getX()F

    move-result v4

    div-int/lit8 v5, v3, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {p1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getY()F

    move-result v5

    div-int/lit8 v6, v1, 0x2

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {v0, v4, v5}, Landroid/graphics/RectF;->offset(FF)V

    .line 386
    move-object v2, p0

    .line 387
    .local v2, view:Landroid/view/View;
    :goto_0
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v4, v4, Landroid/view/View;

    if-eqz v4, :cond_0

    .line 388
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .end local v2           #view:Landroid/view/View;
    check-cast v2, Landroid/view/View;

    .line 389
    .restart local v2       #view:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 390
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

    .line 395
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 936
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mOuterRing:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 937
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mTargetDrawables:Ljava/util/ArrayList;

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

    check-cast v1, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .line 938
    .local v1, target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    if-eqz v1, :cond_0

    .line 939
    invoke-virtual {v1, p1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 942
    .end local v1           #target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    :cond_1
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mChevronDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .line 943
    .restart local v1       #target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    if-eqz v1, :cond_2

    .line 944
    invoke-virtual {v1, p1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 947
    .end local v1           #target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    :cond_3
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 948
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 795
    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 796
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 797
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 808
    :goto_0
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/multiwaveview/HoldView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 809
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 811
    .end local v0           #action:I
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 799
    .restart local v0       #action:I
    :pswitch_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 802
    :pswitch_2
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 805
    :pswitch_3
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 797
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
    .locals 8
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v7, 0x0

    .line 865
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 866
    const-string v4, "HoldView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onLayout, changed="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",left="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", top="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", right="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", bottom="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mHorizontalOffset="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mHorizontalOffset:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mVerticalOffset="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mVerticalOffset:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    sub-int v3, p4, p2

    .line 869
    .local v3, width:I
    sub-int v0, p5, p3

    .line 870
    .local v0, height:I
    iget v4, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mHorizontalOffset:F

    iget-object v5, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mOuterRing:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v5}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getWidth()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float v1, v4, v5

    .line 871
    .local v1, newWaveCenterX:F
    iget v4, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mVerticalOffset:F

    iget-object v5, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mOuterRing:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v5}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getHeight()I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float v2, v4, v5

    .line 872
    .local v2, newWaveCenterY:F
    const-string v4, "HoldView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onLayout, newWaveCenterX="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", newWaveCenterY="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mWaveCenterX="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mWaveCenterX:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mWaveCenterY="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mWaveCenterY:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    iget v4, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mWaveCenterX:F

    cmpl-float v4, v1, v4

    if-nez v4, :cond_0

    iget v4, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mWaveCenterY:F

    cmpl-float v4, v2, v4

    if-eqz v4, :cond_2

    .line 875
    :cond_0
    iget v4, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mWaveCenterX:F

    cmpl-float v4, v4, v7

    if-nez v4, :cond_1

    iget v4, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mWaveCenterY:F

    cmpl-float v4, v4, v7

    if-nez v4, :cond_1

    .line 876
    invoke-direct {p0, v1, v2}, Lcom/android/internal/widget/multiwaveview/HoldView;->performInitialLayout(FF)V

    .line 878
    :cond_1
    iput v1, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mWaveCenterX:F

    .line 879
    iput v2, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mWaveCenterY:F

    .line 881
    iget-object v4, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mOuterRing:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    iget v5, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mWaveCenterX:F

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setX(F)V

    .line 882
    iget-object v4, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mOuterRing:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    iget v5, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mWaveCenterY:F

    iget v6, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mWaveCenterY:F

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setY(F)V

    .line 884
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/HoldView;->updateTargetPositions()V

    .line 886
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/HoldView;->dump()V

    .line 887
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    .line 1032
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "onLongClick"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1033
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mOnTriggerListener:Lcom/android/internal/widget/multiwaveview/HoldView$OnTriggerListener;

    if-eqz v0, :cond_0

    .line 1034
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mOnTriggerListener:Lcom/android/internal/widget/multiwaveview/HoldView$OnTriggerListener;

    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mOnTriggerListener:Lcom/android/internal/widget/multiwaveview/HoldView$OnTriggerListener;

    invoke-interface {v0, p1, v2}, Lcom/android/internal/widget/multiwaveview/HoldView$OnTriggerListener;->onTrigger(Landroid/view/View;I)V

    .line 1036
    :cond_0
    return v2
.end method

.method protected onMeasure(II)V
    .locals 7
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/HoldView;->getSuggestedMinimumWidth()I

    move-result v1

    .line 281
    .local v1, minimumWidth:I
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/HoldView;->getSuggestedMinimumHeight()I

    move-result v0

    .line 282
    .local v0, minimumHeight:I
    invoke-direct {p0, p1, v1}, Lcom/android/internal/widget/multiwaveview/HoldView;->resolveMeasured(II)I

    move-result v3

    .line 283
    .local v3, viewWidth:I
    invoke-direct {p0, p2, v0}, Lcom/android/internal/widget/multiwaveview/HoldView;->resolveMeasured(II)I

    move-result v2

    .line 284
    .local v2, viewHeight:I
    const-string v4, "HoldView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onMeasure, viewWidth="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", viewHeight="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    invoke-virtual {p0, v3, v2}, Lcom/android/internal/widget/multiwaveview/HoldView;->setMeasuredDimension(II)V

    .line 286
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "e"

    .prologue
    const/4 v2, 0x0

    .line 1040
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1041
    .local v0, action:I
    const/4 v1, 0x1

    .line 1042
    .local v1, handled:Z
    packed-switch v0, :pswitch_data_0

    .line 1065
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/HoldView;->invalidate()V

    .line 1066
    if-eqz v1, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :cond_0
    return v2

    .line 1044
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/internal/widget/multiwaveview/HoldView;->trySwitchToFirstTouchState(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1045
    const/4 v1, 0x0

    .line 1046
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "first touch state"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1048
    :cond_1
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "ACTION_DOWN"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1051
    :pswitch_1
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "ACTION_MOVE"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1052
    iget-object v3, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    sget-object v4, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_ACTIVE:[I

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setState([I)V

    .line 1053
    iget-object v3, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/multiwaveview/HoldView;->invalidateGlobalRegion(Lcom/android/internal/widget/multiwaveview/TargetDrawable;)V

    .line 1054
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/internal/widget/multiwaveview/HoldView;->setGrabbedState(I)V

    .line 1055
    const/4 v1, 0x1

    .line 1056
    goto :goto_0

    .line 1058
    :pswitch_2
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "ACTION_UP"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1059
    iget-object v3, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    sget-object v4, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setState([I)V

    .line 1060
    iget-object v3, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/multiwaveview/HoldView;->invalidateGlobalRegion(Lcom/android/internal/widget/multiwaveview/TargetDrawable;)V

    .line 1061
    invoke-direct {p0, v2}, Lcom/android/internal/widget/multiwaveview/HoldView;->setGrabbedState(I)V

    .line 1062
    const/4 v1, 0x1

    goto :goto_0

    .line 1042
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public ping()V
    .locals 0

    .prologue
    .line 639
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/HoldView;->stopChevronAnimation()V

    .line 640
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/HoldView;->startChevronAnimation()V

    .line 641
    return-void
.end method

.method public reset(Z)V
    .locals 2
    .parameter "animate"

    .prologue
    .line 650
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/HoldView;->stopChevronAnimation()V

    .line 651
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/HoldView;->stopHandleAnimation()V

    .line 652
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/HoldView;->stopTargetAnimation()V

    .line 653
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/HoldView;->hideChevrons()V

    .line 654
    invoke-direct {p0, p1}, Lcom/android/internal/widget/multiwaveview/HoldView;->hideTargets(Z)V

    .line 655
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    iget v1, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mWaveCenterX:F

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setX(F)V

    .line 656
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    iget v1, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mWaveCenterY:F

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setY(F)V

    .line 657
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    sget-object v1, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setState([I)V

    .line 658
    invoke-static {}, Lcom/android/internal/widget/multiwaveview/Tweener;->reset()V

    .line 659
    return-void
.end method

.method public setDirectionDescriptionsResourceId(I)V
    .locals 1
    .parameter "resourceId"

    .prologue
    .line 605
    iput p1, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mDirectionDescriptionsResourceId:I

    .line 606
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mDirectionDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mDirectionDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 609
    :cond_0
    return-void
.end method

.method public setHandleDrawableImage(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/HoldView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 243
    .local v0, res:Landroid/content/res/Resources;
    new-instance v1, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;I)V

    iput-object v1, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .line 244
    return-void
.end method

.method public setOnTriggerListener(Lcom/android/internal/widget/multiwaveview/HoldView$OnTriggerListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 951
    iput-object p1, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mOnTriggerListener:Lcom/android/internal/widget/multiwaveview/HoldView$OnTriggerListener;

    .line 952
    return-void
.end method

.method public setTargetDescriptionsResourceId(I)V
    .locals 1
    .parameter "resourceId"

    .prologue
    .line 584
    iput p1, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mTargetDescriptionsResourceId:I

    .line 585
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mTargetDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 586
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 588
    :cond_0
    return-void
.end method

.method public setTargetResources(I)V
    .locals 1
    .parameter "resourceId"

    .prologue
    .line 566
    iget-boolean v0, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mAnimatingTargets:Z

    if-eqz v0, :cond_0

    .line 568
    iput p1, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mNewTargetResources:I

    .line 572
    :goto_0
    return-void

    .line 570
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/widget/multiwaveview/HoldView;->internalSetTargetResources(I)V

    goto :goto_0
.end method

.method public setVibrateEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 626
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    .line 627
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/HoldView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mVibrator:Landroid/os/Vibrator;

    .line 631
    :goto_0
    return-void

    .line 629
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/multiwaveview/HoldView;->mVibrator:Landroid/os/Vibrator;

    goto :goto_0
.end method
