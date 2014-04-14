.class public Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;
.super Landroid/view/View;
.source "SmartMultiUnlockView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;,
        Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$CellKey;,
        Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$OnTriggerListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final ELLIPSIS:Ljava/lang/String; = "...."

.field private static final HIDE_ANIMATION_DELAY:I = 0x0

.field private static final HIDE_ANIMATION_DURATION:I = 0x12c

.field private static final MAX_UNREAD_COUNT:I = 0x3e7

.field private static final NOTIFIER_FONT_GAP:I = 0x6

.field private static final NOTIFIER_TEXT_SIZE:I = 0xc

.field private static final RETURN_TO_HOME_DELAY:I = 0x4b0

.field private static final RETURN_TO_HOME_DURATION:I = 0x12c

.field private static final SHORTCUT_ENLARGE_DURATION:I = 0x32

.field private static final SHORTCUT_ENLARGE_SCALE:F = 1.3f

.field private static final SHOW_ANIMATION_DELAY:I = 0x0

.field private static final SHOW_ANIMATION_DURATION:I = 0x12c

.field private static final SNAP_MARGIN_DEFAULT:F = 20.0f

.field private static final STATE_FINISH:I = 0x4

.field private static final STATE_FIRST_TOUCH:I = 0x1

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_SNAP:I = 0x3

.field private static final STATE_TRACKING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SmartMultiUnlockView"

.field private static final TAP_RADIUS_SCALE_ACCESSIBILITY_ENABLED:F = 1.3f

.field private static final UNLOCK_HIT_NORMAL_TARGET:I = 0x64

.field private static final UNLOCK_HIT_TARGET_NONE:I = -0x1


# instance fields
.field private mActiveTarget:I

.field private mAnimatingTargets:Z

.field private mCellList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field private mCellMap:Ljava/util/HashMap;

.field private mDefaultNotificationClr:I

.field private mDragging:Z

.field private mEnlargeTarget:I

.field private mGrabbedState:I

.field private mHandleAnimation:Lcom/baidu/internal/keyguard/slide/Tweener;

.field private mHandleDrawable:Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;

.field private mHitRadius:F

.field private mHorizontalOffset:F

.field private mLastActiveTarget:I

.field private mNewTargetResources:I

.field private mNotifierDrawble:Landroid/graphics/drawable/Drawable;

.field private mOnTriggerListener:Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$OnTriggerListener;

.field private mOriginalRingRawY:F

.field private mOuterRadius:F

.field private mReachUnlock:Z

.field private mResetListener:Landroid/animation/Animator$AnimatorListener;

.field private mResetListenerWithPing:Landroid/animation/Animator$AnimatorListener;

.field private mSnapMargin:F

.field private mTapRadius:F

.field private mTargetAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/internal/keyguard/slide/Tweener;",
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

.field private mTargetResourceId:I

.field private mTextPaint:Landroid/text/TextPaint;

.field private mTextSize:I

.field private mUnlockDistance:I

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
    .line 146
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 147
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x1

    const/16 v9, 0xc

    const/4 v8, -0x1

    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 150
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 83
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mTargetAnimations:Ljava/util/ArrayList;

    .line 90
    iput v5, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mVibrationDuration:I

    .line 92
    iput v8, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mActiveTarget:I

    .line 98
    iput v7, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mOuterRadius:F

    .line 99
    iput v7, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mHitRadius:F

    .line 100
    iput v7, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mSnapMargin:F

    .line 102
    iput v7, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mOriginalRingRawY:F

    .line 103
    iput-boolean v5, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mReachUnlock:Z

    .line 107
    new-instance v6, Landroid/text/TextPaint;

    invoke-direct {v6}, Landroid/text/TextPaint;-><init>()V

    iput-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mTextPaint:Landroid/text/TextPaint;

    .line 108
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mCellList:Ljava/util/ArrayList;

    .line 109
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mCellMap:Ljava/util/HashMap;

    .line 115
    iput v8, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mLastActiveTarget:I

    .line 118
    iput v9, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mTextSize:I

    .line 119
    iput v8, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mEnlargeTarget:I

    .line 121
    new-instance v6, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$1;

    invoke-direct {v6, p0}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$1;-><init>(Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;)V

    iput-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mResetListener:Landroid/animation/Animator$AnimatorListener;

    .line 127
    new-instance v6, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$2;

    invoke-direct {v6, p0}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$2;-><init>(Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;)V

    iput-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mResetListenerWithPing:Landroid/animation/Animator$AnimatorListener;

    .line 134
    new-instance v6, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$3;

    invoke-direct {v6, p0}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$3;-><init>(Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;)V

    iput-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 151
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 153
    .local v2, res:Landroid/content/res/Resources;
    sget-object v6, Lcom/android/internal/R$styleable;->SmartMultiUnlockView:[I

    invoke-virtual {p1, p2, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 154
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v6, 0x3

    iget v7, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mOuterRadius:F

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    iput v6, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mOuterRadius:F

    .line 155
    const/16 v6, 0x8

    iget v7, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mHorizontalOffset:F

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    iput v6, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mHorizontalOffset:F

    .line 156
    const/4 v6, 0x7

    iget v7, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mVerticalOffset:F

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    iput v6, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mVerticalOffset:F

    .line 157
    const/4 v6, 0x4

    iget v7, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mHitRadius:F

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    iput v6, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mHitRadius:F

    .line 158
    const/4 v6, 0x6

    iget v7, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mSnapMargin:F

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    iput v6, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mSnapMargin:F

    .line 159
    const/4 v6, 0x5

    iget v7, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mVibrationDuration:I

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mVibrationDuration:I

    .line 161
    new-instance v6, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;

    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-direct {v6, v2, v7}, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)V

    iput-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mHandleDrawable:Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;

    .line 163
    iget-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mHandleDrawable:Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;

    invoke-virtual {v6}, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    iput v6, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mTapRadius:F

    .line 164
    const/16 v6, 0xa

    iget v7, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mUnlockDistance:I

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mUnlockDistance:I

    .line 167
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 169
    .local v1, outValue:Landroid/util/TypedValue;
    const/16 v6, 0x9

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mNotifierDrawble:Landroid/graphics/drawable/Drawable;

    .line 171
    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 172
    iget v3, v1, Landroid/util/TypedValue;->resourceId:I

    .line 173
    .local v3, resourceId:I
    if-nez v3, :cond_0

    .line 174
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Must specify target descriptions"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 176
    :cond_0
    invoke-virtual {p0, v3}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->setTargetDescriptionsResourceId(I)V

    .line 180
    .end local v3           #resourceId:I
    :cond_1
    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 181
    iget v6, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {p0, v6}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->internalSetTargetResources(I)V

    .line 183
    :cond_2
    iget-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mCellList:Ljava/util/ArrayList;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mCellList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_4

    .line 184
    :cond_3
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Must specify at least one target drawable"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 186
    :cond_4
    const/16 v6, 0xb

    invoke-virtual {v0, v6, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mTextSize:I

    .line 187
    iget-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mContext:Landroid/content/Context;

    iget v7, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mTextSize:I

    invoke-direct {p0, v6, v7}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->setTextSize(Landroid/content/Context;I)V

    .line 188
    invoke-virtual {v0, v9, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    iput v6, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mDefaultNotificationClr:I

    .line 189
    iget-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mTextPaint:Landroid/text/TextPaint;

    iget v7, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mDefaultNotificationClr:I

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setColor(I)V

    .line 190
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 191
    iget v6, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mVibrationDuration:I

    if-lez v6, :cond_5

    :goto_0
    invoke-virtual {p0, v4}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->setVibrateEnabled(Z)V

    .line 192
    return-void

    :cond_5
    move v4, v5

    .line 191
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mWaveCenterX:F

    return v0
.end method

.method static synthetic access$100(Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mWaveCenterY:F

    return v0
.end method

.method static synthetic access$200(Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;IFF)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->switchToState(IFF)V

    return-void
.end method

.method static synthetic access$300(Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;)Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mHandleDrawable:Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;

    return-object v0
.end method

.method private announceText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 1015
    invoke-virtual {p0, p1}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1016
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->sendAccessibilityEvent(I)V

    .line 1017
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1018
    return-void
.end method

.method private bounceHandle()V
    .locals 10

    .prologue
    const/4 v7, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 526
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mHandleDrawable:Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;

    const-wide/16 v1, 0x3e8

    const/16 v3, 0xa

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "ease"

    aput-object v4, v3, v8

    new-instance v4, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v4}, Landroid/view/animation/BounceInterpolator;-><init>()V

    aput-object v4, v3, v9

    const-string v4, "delay"

    aput-object v4, v3, v7

    const/4 v4, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "x"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    new-array v5, v7, [F

    iget-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mHandleDrawable:Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;

    invoke-virtual {v6}, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->getX()F

    move-result v6

    aput v6, v5, v8

    iget-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mHandleDrawable:Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;

    invoke-virtual {v6}, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->getX()F

    move-result v6

    aput v6, v5, v9

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "y"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    new-array v5, v7, [F

    iget-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mHandleDrawable:Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;

    invoke-virtual {v6}, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->getY()F

    move-result v6

    const/high16 v7, 0x41f0

    sub-float/2addr v6, v7

    aput v6, v5, v8

    iget-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mHandleDrawable:Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;

    invoke-virtual {v6}, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->getY()F

    move-result v6

    aput v6, v5, v9

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string v5, "onUpdate"

    aput-object v5, v3, v4

    const/16 v4, 0x9

    iget-object v5, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/baidu/internal/keyguard/slide/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/baidu/internal/keyguard/slide/Tweener;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mHandleAnimation:Lcom/baidu/internal/keyguard/slide/Tweener;

    .line 532
    return-void
.end method

.method private deactivateTargets()V
    .locals 1

    .prologue
    .line 309
    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mActiveTarget:I

    .line 310
    return-void
.end method

.method private dispatchGrabbedEvent(I)V
    .locals 1
    .parameter "whichHandler"

    .prologue
    .line 340
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->vibrate()V

    .line 341
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mOnTriggerListener:Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$OnTriggerListener;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mOnTriggerListener:Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$OnTriggerListener;

    invoke-interface {v0, p0, p1}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$OnTriggerListener;->onGrabbed(Landroid/view/View;I)V

    .line 344
    :cond_0
    return-void
.end method

.method private dispatchTriggerEvent(I)V
    .locals 1
    .parameter "whichHandle"

    .prologue
    .line 333
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->vibrate()V

    .line 334
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mOnTriggerListener:Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$OnTriggerListener;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mOnTriggerListener:Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$OnTriggerListener;

    invoke-interface {v0, p0, p1}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$OnTriggerListener;->onTrigger(Landroid/view/View;I)V

    .line 337
    :cond_0
    return-void
.end method

.method private dist2(FF)F
    .locals 2
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 1001
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

    const/high16 v9, 0x3f80

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 347
    iget v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mActiveTarget:I

    .line 348
    .local v0, activeTarget:I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    move v1, v2

    .line 351
    .local v1, targetHit:Z
    :goto_0
    invoke-direct {p0, v2}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->hideTargets(Z)V

    .line 352
    if-eqz v1, :cond_1

    .line 355
    iget v4, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mActiveTarget:I

    invoke-direct {p0, v4}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->dispatchTriggerEvent(I)V

    .line 356
    iget-object v4, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mHandleDrawable:Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;

    const-wide/16 v5, 0x0

    const/16 v7, 0xe

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "ease"

    aput-object v8, v7, v3

    sget-object v8, Lcom/baidu/internal/keyguard/slide/Ease$Quart;->easeOut:Landroid/animation/TimeInterpolator;

    aput-object v8, v7, v2

    const-string v2, "delay"

    aput-object v2, v7, v10

    const/16 v2, 0x4b0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v11

    const/4 v2, 0x4

    const-string v8, "alpha"

    aput-object v8, v7, v2

    const/4 v2, 0x5

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v2

    const/4 v2, 0x6

    const-string v8, "x"

    aput-object v8, v7, v2

    const/4 v2, 0x7

    iget v8, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mWaveCenterX:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v2

    const/16 v2, 0x8

    const-string v8, "y"

    aput-object v8, v7, v2

    const/16 v2, 0x9

    iget v8, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mWaveCenterY:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v2

    const/16 v2, 0xa

    const-string v8, "onUpdate"

    aput-object v8, v7, v2

    const/16 v2, 0xb

    iget-object v8, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v8, v7, v2

    const/16 v2, 0xc

    const-string v8, "onComplete"

    aput-object v8, v7, v2

    const/16 v2, 0xd

    iget-object v8, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mResetListener:Landroid/animation/Animator$AnimatorListener;

    aput-object v8, v7, v2

    invoke-static {v4, v5, v6, v7}, Lcom/baidu/internal/keyguard/slide/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/baidu/internal/keyguard/slide/Tweener;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mHandleAnimation:Lcom/baidu/internal/keyguard/slide/Tweener;

    .line 382
    :goto_1
    invoke-direct {p0, v3}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->setGrabbedState(I)V

    .line 383
    iput-boolean v3, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mReachUnlock:Z

    .line 384
    return-void

    .end local v1           #targetHit:Z
    :cond_0
    move v1, v3

    .line 348
    goto :goto_0

    .line 366
    .restart local v1       #targetHit:Z
    :cond_1
    iget-object v4, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mHandleDrawable:Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;

    const-wide/16 v5, 0x12c

    const/16 v7, 0xe

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "ease"

    aput-object v8, v7, v3

    new-instance v8, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v8}, Landroid/view/animation/BounceInterpolator;-><init>()V

    aput-object v8, v7, v2

    const-string v2, "delay"

    aput-object v2, v7, v10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v11

    const/4 v2, 0x4

    const-string v8, "alpha"

    aput-object v8, v7, v2

    const/4 v2, 0x5

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v2

    const/4 v2, 0x6

    const-string v8, "x"

    aput-object v8, v7, v2

    const/4 v2, 0x7

    iget v8, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mWaveCenterX:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v2

    const/16 v2, 0x8

    const-string v8, "y"

    aput-object v8, v7, v2

    const/16 v2, 0x9

    iget v8, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mWaveCenterY:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v2

    const/16 v2, 0xa

    const-string v8, "onUpdate"

    aput-object v8, v7, v2

    const/16 v2, 0xb

    iget-object v8, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v8, v7, v2

    const/16 v2, 0xc

    const-string v8, "onComplete"

    aput-object v8, v7, v2

    const/16 v8, 0xd

    iget-boolean v2, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mDragging:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mResetListenerWithPing:Landroid/animation/Animator$AnimatorListener;

    :goto_2
    aput-object v2, v7, v8

    invoke-static {v4, v5, v6, v7}, Lcom/baidu/internal/keyguard/slide/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/baidu/internal/keyguard/slide/Tweener;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mHandleAnimation:Lcom/baidu/internal/keyguard/slide/Tweener;

    .line 374
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mOnTriggerListener:Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$OnTriggerListener;

    invoke-interface {v2}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$OnTriggerListener;->onDragReleased()V

    .line 375
    new-instance v2, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$5;

    invoke-direct {v2, p0}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$5;-><init>(Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;)V

    const-wide/16 v4, 0x12c

    invoke-virtual {p0, v2, v4, v5}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 366
    :cond_2
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mResetListener:Landroid/animation/Animator$AnimatorListener;

    goto :goto_2
.end method

.method private dump()V
    .locals 3

    .prologue
    .line 222
    const-string v0, "SmartMultiUnlockView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Outer Radius = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mOuterRadius:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const-string v0, "SmartMultiUnlockView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HitRadius = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mHitRadius:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const-string v0, "SmartMultiUnlockView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SnapMargin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mSnapMargin:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const-string v0, "SmartMultiUnlockView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VibrationDuration = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mVibrationDuration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    const-string v0, "SmartMultiUnlockView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TapRadius = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mTapRadius:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const-string v0, "SmartMultiUnlockView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WaveCenterX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mWaveCenterX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const-string v0, "SmartMultiUnlockView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WaveCenterY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mWaveCenterY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const-string v0, "SmartMultiUnlockView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HorizontalOffset = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mHorizontalOffset:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const-string v0, "SmartMultiUnlockView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VerticalOffset = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mVerticalOffset:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    return-void
.end method

.method private enlargeSelectTarget(ZI)V
    .locals 12
    .parameter "animate"
    .parameter "cellId"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const v9, 0x3fa66666

    const/high16 v8, 0x3f80

    const/4 v7, 0x0

    .line 484
    if-ltz p2, :cond_0

    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mCellList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p2, v0, :cond_1

    .line 523
    :cond_0
    :goto_0
    return-void

    .line 488
    :cond_1
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mTargetAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 489
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->stopTargetAnimation()V

    .line 492
    :cond_2
    if-eqz p1, :cond_3

    .line 493
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mTargetAnimations:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mCellList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;

    invoke-virtual {v0}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;->getNormalDrawable()Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;

    move-result-object v0

    const-wide/16 v2, 0x32

    const/16 v4, 0xa

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "ease"

    aput-object v5, v4, v7

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    aput-object v5, v4, v10

    const-string v5, "scaleX"

    aput-object v5, v4, v11

    const/4 v5, 0x3

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "scaleY"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "delay"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "onUpdate"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    iget-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v6, v4, v5

    invoke-static {v0, v2, v3, v4}, Lcom/baidu/internal/keyguard/slide/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/baidu/internal/keyguard/slide/Tweener;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 500
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mTargetAnimations:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mCellList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;

    invoke-virtual {v0}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;->getNotifierDrawable()Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;

    move-result-object v0

    const-wide/16 v2, 0x32

    const/16 v4, 0xa

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "ease"

    aput-object v5, v4, v7

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    aput-object v5, v4, v10

    const-string v5, "scaleX"

    aput-object v5, v4, v11

    const/4 v5, 0x3

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "scaleY"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "delay"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "onUpdate"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    iget-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v6, v4, v5

    invoke-static {v0, v2, v3, v4}, Lcom/baidu/internal/keyguard/slide/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/baidu/internal/keyguard/slide/Tweener;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    iput p2, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mEnlargeTarget:I

    goto/16 :goto_0

    .line 508
    :cond_3
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mTargetAnimations:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mCellList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;

    invoke-virtual {v0}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;->getNormalDrawable()Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;

    move-result-object v0

    const-wide/16 v2, 0x32

    const/16 v4, 0xa

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "ease"

    aput-object v5, v4, v7

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    aput-object v5, v4, v10

    const-string v5, "scaleX"

    aput-object v5, v4, v11

    const/4 v5, 0x3

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "scaleY"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "delay"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "onUpdate"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    iget-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v6, v4, v5

    invoke-static {v0, v2, v3, v4}, Lcom/baidu/internal/keyguard/slide/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/baidu/internal/keyguard/slide/Tweener;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 515
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mTargetAnimations:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mCellList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;

    invoke-virtual {v0}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;->getNotifierDrawable()Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;

    move-result-object v0

    const-wide/16 v2, 0x32

    const/16 v4, 0xa

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "ease"

    aput-object v5, v4, v7

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    aput-object v5, v4, v10

    const-string v5, "scaleX"

    aput-object v5, v4, v11

    const/4 v5, 0x3

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "scaleY"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "delay"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "onUpdate"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    iget-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v6, v4, v5

    invoke-static {v0, v2, v3, v4}, Lcom/baidu/internal/keyguard/slide/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/baidu/internal/keyguard/slide/Tweener;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 521
    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mEnlargeTarget:I

    goto/16 :goto_0
.end method

.method private getScaledTapRadiusSquared()F
    .locals 3

    .prologue
    .line 1006
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1007
    const v1, 0x3fa66666

    iget v2, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mTapRadius:F

    mul-float v0, v1, v2

    .line 1011
    .local v0, scaledTapRadius:F
    :goto_0
    invoke-direct {p0, v0}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->square(F)F

    move-result v1

    return v1

    .line 1009
    .end local v0           #scaledTapRadius:F
    :cond_0
    iget v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mTapRadius:F

    .restart local v0       #scaledTapRadius:F
    goto :goto_0
.end method

.method private getTargetDescription(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 1021
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mTargetDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1022
    :cond_0
    iget v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mTargetDescriptionsResourceId:I

    invoke-direct {p0, v0}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->loadDescriptions(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mTargetDescriptions:Ljava/util/ArrayList;

    .line 1023
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mCellList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1024
    const-string v0, "SmartMultiUnlockView"

    const-string v1, "The number of target drawables must be euqal to the number of target descriptions."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    const/4 v0, 0x0

    .line 1029
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method private handleDown(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 689
    invoke-direct {p0, p1}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->trySwitchToFirstTouchState(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 690
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mDragging:Z

    .line 691
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->stopTargetAnimation()V

    .line 694
    :cond_0
    return-void
.end method

.method private handleMove(Landroid/view/MotionEvent;)V
    .locals 33
    .parameter "event"

    .prologue
    .line 717
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mDragging:Z

    move/from16 v29, v0

    if-nez v29, :cond_0

    .line 718
    invoke-direct/range {p0 .. p1}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->trySwitchToFirstTouchState(Landroid/view/MotionEvent;)Z

    .line 848
    :goto_0
    return-void

    .line 724
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v29

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v30

    sub-float v6, v29, v30

    .line 726
    .local v6, deltaRawYY:F
    const/4 v4, -0x1

    .line 727
    .local v4, activeTarget:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v12

    .line 728
    .local v12, historySize:I
    const/4 v15, 0x0

    .local v15, k:I
    :goto_1
    add-int/lit8 v29, v12, 0x1

    move/from16 v0, v29

    if-ge v15, v0, :cond_d

    .line 729
    if-ge v15, v12, :cond_2

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v27

    .line 730
    .local v27, x:F
    :goto_2
    if-ge v15, v12, :cond_3

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v28

    .line 731
    .local v28, y:F
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mWaveCenterX:F

    move/from16 v29, v0

    sub-float v25, v27, v29

    .line 732
    .local v25, tx:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mWaveCenterY:F

    move/from16 v29, v0

    sub-float v26, v28, v29

    .line 733
    .local v26, ty:F
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->dist2(FF)F

    move-result v29

    move/from16 v0, v29

    float-to-double v0, v0

    move-wide/from16 v29, v0

    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v29

    move-wide/from16 v0, v29

    double-to-float v0, v0

    move/from16 v24, v0

    .line 734
    .local v24, touchRadius:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mOuterRadius:F

    move/from16 v29, v0

    cmpl-float v29, v24, v29

    if-lez v29, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mOuterRadius:F

    move/from16 v29, v0

    div-float v21, v29, v24

    .line 735
    .local v21, scale:F
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mWaveCenterX:F

    move/from16 v29, v0

    mul-float v30, v25, v21

    add-float v16, v29, v30

    .line 736
    .local v16, limitX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mWaveCenterY:F

    move/from16 v29, v0

    mul-float v30, v26, v21

    add-float v17, v29, v30

    .line 739
    .local v17, limitY:F
    const v5, 0x7f7fffff

    .line 740
    .local v5, best:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mHitRadius:F

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mHitRadius:F

    move/from16 v30, v0

    mul-float v13, v29, v30

    .line 741
    .local v13, hitRadius2:F
    const/4 v14, 0x0

    .local v14, i:I
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mCellList:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v29

    move/from16 v0, v29

    if-ge v14, v0, :cond_6

    .line 742
    const-string v29, "PROMPT"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mTargetDescriptions:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_5

    .line 741
    :cond_1
    :goto_6
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 729
    .end local v5           #best:F
    .end local v13           #hitRadius2:F
    .end local v14           #i:I
    .end local v16           #limitX:F
    .end local v17           #limitY:F
    .end local v21           #scale:F
    .end local v24           #touchRadius:F
    .end local v25           #tx:F
    .end local v26           #ty:F
    .end local v27           #x:F
    .end local v28           #y:F
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v27

    goto/16 :goto_2

    .line 730
    .restart local v27       #x:F
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v28

    goto/16 :goto_3

    .line 734
    .restart local v24       #touchRadius:F
    .restart local v25       #tx:F
    .restart local v26       #ty:F
    .restart local v28       #y:F
    :cond_4
    const/high16 v21, 0x3f80

    goto :goto_4

    .line 746
    .restart local v5       #best:F
    .restart local v13       #hitRadius2:F
    .restart local v14       #i:I
    .restart local v16       #limitX:F
    .restart local v17       #limitY:F
    .restart local v21       #scale:F
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mCellList:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;

    invoke-virtual/range {v29 .. v29}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;->getNormalDrawable()Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;

    move-result-object v22

    .line 747
    .local v22, target:Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;
    invoke-virtual/range {v22 .. v22}, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->getX()F

    move-result v29

    sub-float v8, v16, v29

    .line 748
    .local v8, dx:F
    invoke-virtual/range {v22 .. v22}, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->getY()F

    move-result v29

    sub-float v9, v17, v29

    .line 749
    .local v9, dy:F
    mul-float v29, v8, v8

    mul-float v30, v9, v9

    add-float v7, v29, v30

    .line 751
    .local v7, dist2:F
    invoke-virtual/range {v22 .. v22}, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->isValid()Z

    move-result v29

    if-eqz v29, :cond_1

    cmpg-float v29, v7, v13

    if-gez v29, :cond_1

    cmpg-float v29, v7, v5

    if-gez v29, :cond_1

    .line 752
    move v4, v14

    .line 753
    move v5, v7

    goto :goto_6

    .line 757
    .end local v7           #dist2:F
    .end local v8           #dx:F
    .end local v9           #dy:F
    .end local v22           #target:Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mWaveCenterY:F

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mVerticalOffset:F

    move/from16 v30, v0

    sub-float v29, v29, v30

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mOuterRadius:F

    move/from16 v30, v0

    sub-float v29, v29, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mHandleDrawable:Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->getHeight()I

    move-result v30

    div-int/lit8 v30, v30, 0x2

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    add-float v29, v29, v30

    cmpg-float v29, v28, v29

    if-gtz v29, :cond_7

    .line 758
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mWaveCenterY:F

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mOuterRadius:F

    move/from16 v30, v0

    sub-float v29, v29, v30

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mVerticalOffset:F

    move/from16 v30, v0

    sub-float v29, v29, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mHandleDrawable:Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->getHeight()I

    move-result v30

    div-int/lit8 v30, v30, 0x2

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    add-float v17, v29, v30

    .line 762
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mLastActiveTarget:I

    move/from16 v29, v0

    if-ltz v29, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mLastActiveTarget:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mCellList:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v30

    move/from16 v0, v29

    move/from16 v1, v30

    if-ge v0, v1, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mLastActiveTarget:I

    move/from16 v29, v0

    move/from16 v0, v29

    if-eq v0, v4, :cond_8

    .line 763
    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mLastActiveTarget:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->enlargeSelectTarget(ZI)V

    .line 767
    :cond_8
    if-ltz v4, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mCellList:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v29

    move/from16 v0, v29

    if-ge v4, v0, :cond_a

    .line 769
    move/from16 v27, v16

    .line 770
    move/from16 v28, v17

    .line 772
    const/16 v29, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->switchToState(IFF)V

    .line 775
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mCellList:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;

    invoke-virtual/range {v29 .. v29}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;->getNormalDrawable()Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->getX()F

    move-result v18

    .line 776
    .local v18, newX:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mCellList:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;

    invoke-virtual/range {v29 .. v29}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;->getNormalDrawable()Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->getY()F

    move-result v19

    .line 777
    .local v19, newY:F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mReachUnlock:Z

    move/from16 v29, v0

    if-nez v29, :cond_9

    .line 778
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->moveHandleTo(FFZ)V

    .line 779
    const/16 v29, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v1, v4}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->enlargeSelectTarget(ZI)V

    .line 782
    :cond_9
    move-object/from16 v0, p0

    iput v4, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mLastActiveTarget:I

    .line 728
    .end local v18           #newX:F
    .end local v19           #newY:F
    :goto_7
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1

    .line 786
    :cond_a
    add-float v11, v6, v28

    .line 787
    .local v11, historyRawY:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mOriginalRingRawY:F

    move/from16 v29, v0

    sub-float v10, v11, v29

    .line 790
    .local v10, historyOffsetY:F
    move/from16 v27, v16

    .line 791
    move/from16 v28, v17

    .line 792
    const/16 v29, 0x0

    cmpg-float v29, v10, v29

    if-gez v29, :cond_c

    .line 795
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->upThreshold(F)Z

    move-result v29

    if-eqz v29, :cond_b

    .line 798
    const/high16 v29, 0x3f00

    add-float v29, v29, v10

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mUnlockDistance:I

    move/from16 v30, v0

    add-int v20, v29, v30

    .line 799
    .local v20, offsetFramelayout:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mOnTriggerListener:Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$OnTriggerListener;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$OnTriggerListener;->onDragging(I)V

    .line 800
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mReachUnlock:Z

    .line 803
    const/16 v4, 0x64

    .line 805
    const/16 v29, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->switchToState(IFF)V

    .line 806
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->moveHandleTo(FFZ)V

    goto :goto_7

    .line 810
    .end local v20           #offsetFramelayout:I
    :cond_b
    float-to-double v0, v10

    move-wide/from16 v29, v0

    const-wide/high16 v31, 0x3fe0

    add-double v29, v29, v31

    move-wide/from16 v0, v29

    double-to-int v0, v0

    move/from16 v29, v0

    div-int/lit8 v20, v29, 0x2

    .line 811
    .restart local v20       #offsetFramelayout:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mOnTriggerListener:Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$OnTriggerListener;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$OnTriggerListener;->onDragging(I)V

    .line 812
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mReachUnlock:Z

    .line 814
    const/4 v4, -0x1

    .line 815
    const/16 v29, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->switchToState(IFF)V

    .line 816
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->moveHandleTo(FFZ)V

    goto/16 :goto_7

    .line 819
    .end local v20           #offsetFramelayout:I
    :cond_c
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mReachUnlock:Z

    .line 822
    move/from16 v27, v16

    .line 823
    move/from16 v28, v17

    .line 826
    const/4 v4, -0x1

    .line 827
    const/16 v29, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->switchToState(IFF)V

    .line 828
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->moveHandleTo(FFZ)V

    goto/16 :goto_7

    .line 834
    .end local v5           #best:F
    .end local v10           #historyOffsetY:F
    .end local v11           #historyRawY:F
    .end local v13           #hitRadius2:F
    .end local v14           #i:I
    .end local v16           #limitX:F
    .end local v17           #limitY:F
    .end local v21           #scale:F
    .end local v24           #touchRadius:F
    .end local v25           #tx:F
    .end local v26           #ty:F
    .end local v27           #x:F
    .end local v28           #y:F
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mHandleDrawable:Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->invalidateGlobalRegion(Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;)V

    .line 836
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mActiveTarget:I

    move/from16 v29, v0

    move/from16 v0, v29

    if-eq v0, v4, :cond_e

    const/16 v29, -0x1

    move/from16 v0, v29

    if-eq v4, v0, :cond_e

    .line 837
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->dispatchGrabbedEvent(I)V

    .line 838
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v29

    if-eqz v29, :cond_e

    .line 839
    if-ltz v4, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mCellList:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v29

    move/from16 v0, v29

    if-ge v4, v0, :cond_f

    .line 840
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->getTargetDescription(I)Ljava/lang/String;

    move-result-object v23

    .line 841
    .local v23, targetContentDescription:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->announceText(Ljava/lang/String;)V

    .line 847
    .end local v23           #targetContentDescription:Ljava/lang/String;
    :cond_e
    :goto_8
    move-object/from16 v0, p0

    iput v4, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mActiveTarget:I

    goto/16 :goto_0

    .line 842
    :cond_f
    const/16 v29, 0x64

    move/from16 v0, v29

    if-ne v4, v0, :cond_e

    .line 843
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    const v30, #string@description_target_unlock#t

    invoke-virtual/range {v29 .. v30}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->announceText(Ljava/lang/String;)V

    goto :goto_8
.end method

.method private handleUp(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 698
    const/4 v0, 0x4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->switchToState(IFF)V

    .line 699
    return-void
.end method

.method private hideTargets(Z)V
    .locals 17
    .parameter "animate"

    .prologue
    .line 387
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mTargetAnimations:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_0

    .line 388
    invoke-direct/range {p0 .. p0}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->stopTargetAnimation()V

    .line 392
    :cond_0
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mAnimatingTargets:Z

    .line 393
    if-eqz p1, :cond_3

    .line 394
    if-eqz p1, :cond_1

    const/16 v6, 0x12c

    .line 395
    .local v6, duration:I
    :goto_0
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mCellList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v7, v9, :cond_5

    .line 396
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mCellList:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;

    invoke-virtual {v9}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;->getNormalDrawable()Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;

    move-result-object v8

    .line 397
    .local v8, target:Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;
    sget-object v9, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v8, v9}, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->setState([I)V

    .line 399
    const-wide v9, -0x3fe6de04abbbd2e8L

    int-to-double v11, v7

    mul-double/2addr v9, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mCellList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    int-to-double v11, v11

    div-double v2, v9, v11

    .line 401
    .local v2, angle:D
    const-string v9, "PROMPT"

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 402
    move-object/from16 v0, p0

    iget v9, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mWaveCenterX:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mOuterRadius:F

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    double-to-float v11, v11

    mul-float/2addr v10, v11

    add-float v4, v9, v10

    .line 403
    .local v4, desxPosition:F
    move-object/from16 v0, p0

    iget v9, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mWaveCenterY:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mOuterRadius:F

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    double-to-float v11, v11

    mul-float/2addr v10, v11

    add-float v5, v9, v10

    .line 404
    .local v5, desyPosition:F
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mTargetAnimations:Ljava/util/ArrayList;

    int-to-long v10, v6

    const/16 v12, 0xa

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string v14, "alpha"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    const-string v14, "x"

    aput-object v14, v12, v13

    const/4 v13, 0x3

    const/4 v14, 0x2

    new-array v14, v14, [F

    const/4 v15, 0x0

    invoke-virtual {v8}, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->getX()F

    move-result v16

    aput v16, v14, v15

    const/4 v15, 0x1

    aput v4, v14, v15

    aput-object v14, v12, v13

    const/4 v13, 0x4

    const-string v14, "y"

    aput-object v14, v12, v13

    const/4 v13, 0x5

    const/4 v14, 0x2

    new-array v14, v14, [F

    const/4 v15, 0x0

    invoke-virtual {v8}, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->getY()F

    move-result v16

    aput v16, v14, v15

    const/4 v15, 0x1

    aput v5, v14, v15

    aput-object v14, v12, v13

    const/4 v13, 0x6

    const-string v14, "delay"

    aput-object v14, v12, v13

    const/4 v13, 0x7

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/16 v13, 0x8

    const-string v14, "onUpdate"

    aput-object v14, v12, v13

    const/16 v13, 0x9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v14, v12, v13

    invoke-static {v8, v10, v11, v12}, Lcom/baidu/internal/keyguard/slide/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/baidu/internal/keyguard/slide/Tweener;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 394
    .end local v2           #angle:D
    .end local v4           #desxPosition:F
    .end local v5           #desyPosition:F
    .end local v6           #duration:I
    .end local v7           #i:I
    .end local v8           #target:Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;
    :cond_1
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 411
    .restart local v2       #angle:D
    .restart local v6       #duration:I
    .restart local v7       #i:I
    .restart local v8       #target:Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;
    :cond_2
    move-object/from16 v0, p0

    iget v9, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mWaveCenterX:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mOuterRadius:F

    const/high16 v11, 0x4220

    sub-float/2addr v10, v11

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    double-to-float v11, v11

    mul-float/2addr v10, v11

    add-float v4, v9, v10

    .line 412
    .restart local v4       #desxPosition:F
    move-object/from16 v0, p0

    iget v9, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mWaveCenterY:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mOuterRadius:F

    const/high16 v11, 0x4220

    sub-float/2addr v10, v11

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    double-to-float v11, v11

    mul-float/2addr v10, v11

    add-float v5, v9, v10

    .line 413
    .restart local v5       #desyPosition:F
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mTargetAnimations:Ljava/util/ArrayList;

    int-to-long v10, v6

    const/16 v12, 0xa

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string v14, "alpha"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const/high16 v14, 0x3f80

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    const-string v14, "x"

    aput-object v14, v12, v13

    const/4 v13, 0x3

    const/4 v14, 0x2

    new-array v14, v14, [F

    const/4 v15, 0x0

    invoke-virtual {v8}, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->getX()F

    move-result v16

    aput v16, v14, v15

    const/4 v15, 0x1

    aput v4, v14, v15

    aput-object v14, v12, v13

    const/4 v13, 0x4

    const-string v14, "y"

    aput-object v14, v12, v13

    const/4 v13, 0x5

    const/4 v14, 0x2

    new-array v14, v14, [F

    const/4 v15, 0x0

    invoke-virtual {v8}, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->getY()F

    move-result v16

    aput v16, v14, v15

    const/4 v15, 0x1

    aput v5, v14, v15

    aput-object v14, v12, v13

    const/4 v13, 0x6

    const-string v14, "delay"

    aput-object v14, v12, v13

    const/4 v13, 0x7

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/16 v13, 0x8

    const-string v14, "onUpdate"

    aput-object v14, v12, v13

    const/16 v13, 0x9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v14, v12, v13

    invoke-static {v8, v10, v11, v12}, Lcom/baidu/internal/keyguard/slide/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/baidu/internal/keyguard/slide/Tweener;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 422
    .end local v2           #angle:D
    .end local v4           #desxPosition:F
    .end local v5           #desyPosition:F
    .end local v6           #duration:I
    .end local v7           #i:I
    .end local v8           #target:Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;
    :cond_3
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mCellList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v7, v9, :cond_5

    .line 423
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mCellList:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;

    invoke-virtual {v9}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;->getNormalDrawable()Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;

    move-result-object v8

    .line 424
    .restart local v8       #target:Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;
    sget-object v9, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v8, v9}, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->setState([I)V

    .line 425
    const-string v9, "PROMPT"

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 426
    const/high16 v9, 0x3f80

    invoke-virtual {v8, v9}, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->setAlpha(F)V

    .line 422
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 428
    :cond_4
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->setAlpha(F)V

    goto :goto_4

    .line 431
    .end local v8           #target:Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;
    :cond_5
    return-void
.end method

.method private internalSetTargetResources(I)V
    .locals 19
    .parameter "resourceId"

    .prologue
    .line 540
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 541
    .local v16, res:Landroid/content/res/Resources;
    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v12

    .line 542
    .local v12, array:Landroid/content/res/TypedArray;
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->length()I

    move-result v13

    .line 543
    .local v13, count:I
    new-instance v18, Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-direct {v0, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 544
    .local v18, targetList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;>;"
    new-instance v17, Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-direct {v0, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 546
    .local v17, targetDesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    if-ge v10, v13, :cond_2

    .line 547
    invoke-virtual {v12, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 548
    .local v14, drawable:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mOnTriggerListener:Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$OnTriggerListener;

    if-eqz v2, :cond_1

    .line 549
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mOnTriggerListener:Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$OnTriggerListener;

    invoke-interface {v2, v10}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$OnTriggerListener;->onFiltDisableShortcut(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 550
    new-instance v2, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;

    new-instance v4, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;

    move-object/from16 v0, v16

    invoke-direct {v4, v0, v14}, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)V

    new-instance v5, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mNotifierDrawble:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, v16

    invoke-direct {v5, v0, v3}, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v11}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;-><init>(Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;FFZLjava/lang/String;ILjava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 551
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 546
    :cond_0
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 554
    :cond_1
    new-instance v2, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;

    new-instance v4, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;

    move-object/from16 v0, v16

    invoke-direct {v4, v0, v14}, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)V

    new-instance v5, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mNotifierDrawble:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, v16

    invoke-direct {v5, v0, v3}, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v11}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;-><init>(Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;FFZLjava/lang/String;ILjava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 558
    .end local v14           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mCellMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 559
    const/4 v15, 0x0

    .local v15, j:I
    :goto_2
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v15, v2, :cond_3

    .line 560
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mCellMap:Ljava/util/HashMap;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 562
    :cond_3
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    .line 563
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mTargetResourceId:I

    .line 564
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mCellList:Ljava/util/ArrayList;

    .line 565
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mTargetDescriptions:Ljava/util/ArrayList;

    .line 566
    invoke-direct/range {p0 .. p0}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->updateTargetPositions()V

    .line 567
    return-void
.end method

.method private loadDescriptions(I)Ljava/util/ArrayList;
    .locals 7
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
    .line 1040
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1041
    .local v0, array:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    .line 1042
    .local v2, count:I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1043
    .local v4, targetContentDescriptions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 1044
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1045
    .local v1, contentDescription:Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1046
    iget-object v5, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mCellMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1043
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1048
    .end local v1           #contentDescription:Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1049
    return-object v4
.end method

.method private loadTargetDescription()V
    .locals 1

    .prologue
    .line 1033
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mTargetDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1034
    :cond_0
    iget v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mTargetDescriptionsResourceId:I

    invoke-direct {p0, v0}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->loadDescriptions(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mTargetDescriptions:Ljava/util/ArrayList;

    .line 1036
    :cond_1
    return-void
.end method

.method private moveHandleTo(FFZ)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "animate"

    .prologue
    .line 684
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mHandleDrawable:Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;

    invoke-virtual {v0, p1}, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->setX(F)V

    .line 685
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mHandleDrawable:Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;

    invoke-virtual {v0, p2}, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->setY(F)V

    .line 686
    return-void
.end method

.method private performInitialLayout(FF)V
    .locals 5
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 903
    iget v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mOuterRadius:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_0

    .line 904
    const/high16 v0, 0x3f00

    invoke-direct {p0, p1, p2}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->dist2(FF)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mOuterRadius:F

    .line 906
    :cond_0
    iget v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mHitRadius:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_1

    .line 908
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mCellList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 909
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mCellList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;

    invoke-virtual {v0}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;->getNormalDrawable()Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    iput v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mHitRadius:F

    .line 912
    :cond_1
    iget v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mSnapMargin:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_2

    .line 913
    const/4 v0, 0x1

    const/high16 v1, 0x41a0

    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mSnapMargin:F

    .line 916
    :cond_2
    invoke-direct {p0, v4}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->hideTargets(Z)V

    .line 917
    invoke-direct {p0, p1, p2, v4}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->moveHandleTo(FFZ)V

    .line 918
    return-void
.end method

.method private resolveMeasured(II)I
    .locals 3
    .parameter "measureSpec"
    .parameter "desired"

    .prologue
    .line 249
    const/4 v0, 0x0

    .line 250
    .local v0, result:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 251
    .local v1, specSize:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 260
    move v0, v1

    .line 262
    :goto_0
    return v0

    .line 253
    :sswitch_0
    move v0, p2

    .line 254
    goto :goto_0

    .line 256
    :sswitch_1
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 257
    goto :goto_0

    .line 251
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
    .line 876
    iget v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mGrabbedState:I

    if-eq p1, v0, :cond_1

    .line 877
    if-eqz p1, :cond_0

    .line 878
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->vibrate()V

    .line 880
    :cond_0
    iput p1, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mGrabbedState:I

    .line 881
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mOnTriggerListener:Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$OnTriggerListener;

    if-eqz v0, :cond_1

    .line 882
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mOnTriggerListener:Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$OnTriggerListener;

    iget v1, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mGrabbedState:I

    invoke-interface {v0, p0, v1}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$OnTriggerListener;->onGrabbedStateChange(Landroid/view/View;I)V

    .line 885
    :cond_1
    return-void
.end method

.method private setTextSize(Landroid/content/Context;I)V
    .locals 5
    .parameter "context"
    .parameter "textSize"

    .prologue
    .line 196
    if-nez p1, :cond_0

    .line 197
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 202
    .local v0, r:Landroid/content/res/Resources;
    :goto_0
    const/4 v2, 0x2

    int-to-float v3, p2

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v1, v2

    .line 203
    .local v1, size:I
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mTextPaint:Landroid/text/TextPaint;

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 204
    return-void

    .line 199
    .end local v0           #r:Landroid/content/res/Resources;
    .end local v1           #size:I
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .restart local v0       #r:Landroid/content/res/Resources;
    goto :goto_0
.end method

.method private showTargets(Z)V
    .locals 18
    .parameter "animate"

    .prologue
    .line 434
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mTargetAnimations:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_0

    .line 435
    invoke-direct/range {p0 .. p0}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->stopTargetAnimation()V

    .line 437
    :cond_0
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mAnimatingTargets:Z

    .line 438
    if-eqz p1, :cond_2

    .line 439
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mCellList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v6, v10, :cond_3

    .line 440
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mCellList:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;

    invoke-virtual {v10}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;->getNormalDrawable()Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;

    move-result-object v9

    .line 441
    .local v9, target:Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;
    sget-object v10, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v9, v10}, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->setState([I)V

    .line 443
    const-wide v10, -0x3fe6de04abbbd2e8L

    int-to-double v12, v6

    mul-double/2addr v10, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mCellList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    int-to-double v12, v12

    div-double v2, v10, v12

    .line 444
    .local v2, angle:D
    const-string v10, "PROMPT"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 445
    move-object/from16 v0, p0

    iget v10, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mWaveCenterX:F

    move-object/from16 v0, p0

    iget v11, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mOuterRadius:F

    const/high16 v12, 0x41f0

    sub-float/2addr v11, v12

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    double-to-float v12, v12

    mul-float/2addr v11, v12

    add-float v7, v10, v11

    .line 446
    .local v7, startxPosition:F
    move-object/from16 v0, p0

    iget v10, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mWaveCenterY:F

    move-object/from16 v0, p0

    iget v11, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mOuterRadius:F

    const/high16 v12, 0x41f0

    sub-float/2addr v11, v12

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    double-to-float v12, v12

    mul-float/2addr v11, v12

    add-float v8, v10, v11

    .line 447
    .local v8, startyPosition:F
    move-object/from16 v0, p0

    iget v10, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mWaveCenterX:F

    move-object/from16 v0, p0

    iget v11, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mOuterRadius:F

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    double-to-float v12, v12

    mul-float/2addr v11, v12

    add-float v4, v10, v11

    .line 448
    .local v4, desxPosition:F
    move-object/from16 v0, p0

    iget v10, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mWaveCenterY:F

    move-object/from16 v0, p0

    iget v11, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mOuterRadius:F

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    double-to-float v12, v12

    mul-float/2addr v11, v12

    add-float v5, v10, v11

    .line 449
    .local v5, desyPosition:F
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mTargetAnimations:Ljava/util/ArrayList;

    const-wide/16 v11, 0x12c

    const/16 v13, 0xa

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string v15, "alpha"

    aput-object v15, v13, v14

    const/4 v14, 0x1

    const/high16 v15, 0x3f80

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x2

    const-string v15, "x"

    aput-object v15, v13, v14

    const/4 v14, 0x3

    const/4 v15, 0x2

    new-array v15, v15, [F

    const/16 v16, 0x0

    aput v7, v15, v16

    const/16 v16, 0x1

    aput v4, v15, v16

    aput-object v15, v13, v14

    const/4 v14, 0x4

    const-string v15, "y"

    aput-object v15, v13, v14

    const/4 v14, 0x5

    const/4 v15, 0x2

    new-array v15, v15, [F

    const/16 v16, 0x0

    aput v8, v15, v16

    const/16 v16, 0x1

    aput v5, v15, v16

    aput-object v15, v13, v14

    const/4 v14, 0x6

    const-string v15, "delay"

    aput-object v15, v13, v14

    const/4 v14, 0x7

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/16 v14, 0x8

    const-string v15, "onUpdate"

    aput-object v15, v13, v14

    const/16 v14, 0x9

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v15, v13, v14

    invoke-static {v9, v11, v12, v13}, Lcom/baidu/internal/keyguard/slide/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/baidu/internal/keyguard/slide/Tweener;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 439
    .end local v7           #startxPosition:F
    .end local v8           #startyPosition:F
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 456
    .end local v4           #desxPosition:F
    .end local v5           #desyPosition:F
    :cond_1
    move-object/from16 v0, p0

    iget v10, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mWaveCenterX:F

    move-object/from16 v0, p0

    iget v11, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mOuterRadius:F

    const/high16 v12, 0x41a0

    sub-float/2addr v11, v12

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    double-to-float v12, v12

    mul-float/2addr v11, v12

    add-float v4, v10, v11

    .line 457
    .restart local v4       #desxPosition:F
    move-object/from16 v0, p0

    iget v10, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mWaveCenterY:F

    move-object/from16 v0, p0

    iget v11, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mOuterRadius:F

    const/high16 v12, 0x41a0

    sub-float/2addr v11, v12

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    double-to-float v12, v12

    mul-float/2addr v11, v12

    add-float v5, v10, v11

    .line 458
    .restart local v5       #desyPosition:F
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mTargetAnimations:Ljava/util/ArrayList;

    const-wide/16 v11, 0x12c

    const/16 v13, 0xa

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string v15, "alpha"

    aput-object v15, v13, v14

    const/4 v14, 0x1

    const/high16 v15, 0x3f80

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x2

    const-string v15, "x"

    aput-object v15, v13, v14

    const/4 v14, 0x3

    const/4 v15, 0x2

    new-array v15, v15, [F

    const/16 v16, 0x0

    invoke-virtual {v9}, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->getX()F

    move-result v17

    aput v17, v15, v16

    const/16 v16, 0x1

    aput v4, v15, v16

    aput-object v15, v13, v14

    const/4 v14, 0x4

    const-string v15, "y"

    aput-object v15, v13, v14

    const/4 v14, 0x5

    const/4 v15, 0x2

    new-array v15, v15, [F

    const/16 v16, 0x0

    invoke-virtual {v9}, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->getY()F

    move-result v17

    aput v17, v15, v16

    const/16 v16, 0x1

    aput v5, v15, v16

    aput-object v15, v13, v14

    const/4 v14, 0x6

    const-string v15, "delay"

    aput-object v15, v13, v14

    const/4 v14, 0x7

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/16 v14, 0x8

    const-string v15, "onUpdate"

    aput-object v15, v13, v14

    const/16 v14, 0x9

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v15, v13, v14

    invoke-static {v9, v11, v12, v13}, Lcom/baidu/internal/keyguard/slide/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/baidu/internal/keyguard/slide/Tweener;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 467
    .end local v2           #angle:D
    .end local v4           #desxPosition:F
    .end local v5           #desyPosition:F
    .end local v6           #i:I
    .end local v9           #target:Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;
    :cond_2
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mCellList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v6, v10, :cond_3

    .line 468
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mCellList:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;

    invoke-virtual {v10}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;->getNormalDrawable()Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;

    move-result-object v9

    .line 469
    .restart local v9       #target:Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;
    sget-object v10, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v9, v10}, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->setState([I)V

    .line 470
    const/high16 v10, 0x3f80

    invoke-virtual {v9, v10}, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->setAlpha(F)V

    .line 467
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 473
    .end local v9           #target:Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;
    :cond_3
    return-void
.end method

.method private square(F)F
    .locals 1
    .parameter "d"

    .prologue
    .line 997
    mul-float v0, p1, p1

    return v0
.end method

.method private stopHandleAnimation()V
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mHandleAnimation:Lcom/baidu/internal/keyguard/slide/Tweener;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mHandleAnimation:Lcom/baidu/internal/keyguard/slide/Tweener;

    iget-object v0, v0, Lcom/baidu/internal/keyguard/slide/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 304
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mHandleAnimation:Lcom/baidu/internal/keyguard/slide/Tweener;

    .line 306
    :cond_0
    return-void
.end method

.method private stopTargetAnimation()V
    .locals 3

    .prologue
    .line 476
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mTargetAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/internal/keyguard/slide/Tweener;

    .line 477
    .local v0, anim:Lcom/baidu/internal/keyguard/slide/Tweener;
    iget-object v2, v0, Lcom/baidu/internal/keyguard/slide/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->end()V

    goto :goto_0

    .line 479
    .end local v0           #anim:Lcom/baidu/internal/keyguard/slide/Tweener;
    :cond_0
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mTargetAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 480
    return-void
.end method

.method private switchToState(IFF)V
    .locals 3
    .parameter "state"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, 0x1

    .line 275
    packed-switch p1, :pswitch_data_0

    .line 299
    :goto_0
    :pswitch_0
    return-void

    .line 277
    :pswitch_1
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->deactivateTargets()V

    .line 278
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mHandleDrawable:Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;

    sget-object v1, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->setState([I)V

    goto :goto_0

    .line 282
    :pswitch_2
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->stopHandleAnimation()V

    .line 283
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->deactivateTargets()V

    .line 284
    invoke-direct {p0, v2}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->showTargets(Z)V

    .line 285
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mHandleDrawable:Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;

    sget-object v1, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->STATE_ACTIVE:[I

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->setState([I)V

    .line 286
    invoke-direct {p0, v2}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->setGrabbedState(I)V

    goto :goto_0

    .line 296
    :pswitch_3
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->doFinish()V

    goto :goto_0

    .line 275
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

    .line 888
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 889
    .local v2, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 890
    .local v3, y:F
    iget v6, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mWaveCenterX:F

    sub-float v0, v2, v6

    .line 891
    .local v0, dx:F
    iget v6, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mWaveCenterY:F

    sub-float v1, v3, v6

    .line 892
    .local v1, dy:F
    invoke-direct {p0, v0, v1}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->dist2(FF)F

    move-result v6

    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->getScaledTapRadiusSquared()F

    move-result v7

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_0

    .line 894
    invoke-direct {p0, v4, v2, v3}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->switchToState(IFF)V

    .line 895
    invoke-direct {p0, v2, v3, v5}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->moveHandleTo(FFZ)V

    .line 896
    iput-boolean v4, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mDragging:Z

    .line 899
    :goto_0
    return v4

    :cond_0
    move v4, v5

    goto :goto_0
.end method

.method private upThreshold(F)Z
    .locals 2
    .parameter "draggingRingRawY"

    .prologue
    .line 709
    iget v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mOriginalRingRawY:F

    iget v1, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mUnlockDistance:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 710
    const/4 v0, 0x1

    .line 713
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateTargetPositions()V
    .locals 10

    .prologue
    const/high16 v9, 0x4220

    .line 945
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v5, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mCellList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 946
    const-wide v5, -0x3fe6de04abbbd2e8L

    int-to-double v7, v2

    mul-double/2addr v5, v7

    iget-object v7, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mCellList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    int-to-double v7, v7

    div-double v0, v5, v7

    .line 947
    .local v0, angle:D
    const/4 v3, 0x0

    .line 948
    .local v3, xPosition:F
    const/4 v4, 0x0

    .line 949
    .local v4, yPosition:F
    const/4 v5, 0x1

    if-eq v2, v5, :cond_0

    .line 950
    iget v5, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mWaveCenterX:F

    iget v6, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mOuterRadius:F

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    double-to-float v7, v7

    mul-float/2addr v6, v7

    add-float v3, v5, v6

    .line 951
    iget v5, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mWaveCenterY:F

    iget v6, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mOuterRadius:F

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v7, v7

    mul-float/2addr v6, v7

    add-float v4, v5, v6

    .line 956
    :goto_1
    iget-object v5, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mCellList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;

    invoke-virtual {v5, v3}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;->setX(F)V

    .line 957
    iget-object v5, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mCellList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;

    invoke-virtual {v5, v4}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;->setY(F)V

    .line 945
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 953
    :cond_0
    iget v5, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mWaveCenterX:F

    iget v6, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mOuterRadius:F

    sub-float/2addr v6, v9

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    double-to-float v7, v7

    mul-float/2addr v6, v7

    add-float v3, v5, v6

    .line 954
    iget v5, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mWaveCenterY:F

    iget v6, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mOuterRadius:F

    sub-float/2addr v6, v9

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v7, v7

    mul-float/2addr v6, v7

    add-float v4, v5, v6

    goto :goto_1

    .line 959
    .end local v0           #angle:D
    .end local v3           #xPosition:F
    .end local v4           #yPosition:F
    :cond_1
    return-void
.end method

.method private vibrate()V
    .locals 3

    .prologue
    .line 534
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mVibrator:Landroid/os/Vibrator;

    iget v1, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mVibrationDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 537
    :cond_0
    return-void
.end method


# virtual methods
.method public getCellDescription(I)Ljava/lang/String;
    .locals 2
    .parameter "key"

    .prologue
    .line 1054
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mCellMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 2

    .prologue
    .line 243
    iget v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mOuterRadius:F

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mHandleDrawable:Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;

    invoke-virtual {v1}, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mVerticalOffset:F

    float-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 236
    iget v1, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mOuterRadius:F

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mCellList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mCellList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;

    invoke-virtual {v0}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;->getNormalDrawable()Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    :cond_0
    add-int/2addr v0, v1

    return v0
.end method

.method public getTargetDescriptionsResourceId()I
    .locals 1

    .prologue
    .line 606
    iget v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mTargetDescriptionsResourceId:I

    return v0
.end method

.method public getTargetResourceId()I
    .locals 1

    .prologue
    .line 584
    iget v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mTargetResourceId:I

    return v0
.end method

.method invalidateGlobalRegion(Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;)V
    .locals 9
    .parameter "drawable"

    .prologue
    const/4 v6, 0x0

    .line 313
    invoke-virtual {p1}, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->getWidth()I

    move-result v3

    .line 314
    .local v3, width:I
    invoke-virtual {p1}, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->getHeight()I

    move-result v1

    .line 315
    .local v1, height:I
    new-instance v0, Landroid/graphics/RectF;

    int-to-float v4, v3

    int-to-float v5, v1

    invoke-direct {v0, v6, v6, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 316
    .local v0, childBounds:Landroid/graphics/RectF;
    invoke-virtual {p1}, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->getX()F

    move-result v4

    div-int/lit8 v5, v3, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {p1}, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->getY()F

    move-result v5

    div-int/lit8 v6, v1, 0x2

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {v0, v4, v5}, Landroid/graphics/RectF;->offset(FF)V

    .line 317
    move-object v2, p0

    .line 318
    .local v2, view:Landroid/view/View;
    :goto_0
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v4, v4, Landroid/view/View;

    if-eqz v4, :cond_0

    .line 319
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .end local v2           #view:Landroid/view/View;
    check-cast v2, Landroid/view/View;

    .line 320
    .restart local v2       #view:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 321
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

    .line 326
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter "canvas"

    .prologue
    const/high16 v13, 0x3f00

    const/high16 v12, 0x4000

    .line 963
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v7, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mCellList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_3

    .line 964
    iget-object v7, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mCellList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;

    invoke-virtual {v7}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;->getNormalDrawable()Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;

    move-result-object v5

    .line 965
    .local v5, target:Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;
    if-eqz v5, :cond_0

    .line 966
    invoke-virtual {v5, p1}, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 969
    :cond_0
    iget-object v7, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mCellList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;

    invoke-virtual {v7}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;->getHasNotifier()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 970
    iget-object v7, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mCellList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;

    invoke-virtual {v7}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;->getNotifierDrawable()Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;

    move-result-object v2

    .line 971
    .local v2, notifier:Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;
    if-eqz v2, :cond_2

    .line 972
    iget v7, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mEnlargeTarget:I

    if-ne v1, v7, :cond_1

    .line 973
    iget-object v7, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mContext:Landroid/content/Context;

    iget v8, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mTextSize:I

    int-to-float v8, v8

    const v9, 0x3fa66666

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-direct {p0, v7, v8}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->setTextSize(Landroid/content/Context;I)V

    .line 975
    :cond_1
    invoke-virtual {v2}, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->getWidth()I

    move-result v4

    .line 976
    .local v4, originalWidth:I
    iget-object v8, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mTextPaint:Landroid/text/TextPaint;

    iget-object v7, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mCellList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;

    invoke-virtual {v7}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;->getNotifyText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    .line 977
    .local v6, textWidth:F
    iget-object v7, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 978
    .local v0, fm:Landroid/graphics/Paint$FontMetrics;
    const/high16 v7, 0x40c0

    add-float/2addr v7, v6

    int-to-float v8, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 979
    .local v3, notifierWidth:F
    float-to-int v7, v3

    invoke-virtual {v2, v7}, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->setWidth(I)V

    .line 980
    invoke-virtual {v2, p1}, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 981
    invoke-virtual {v2, v4}, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->setWidth(I)V

    .line 984
    iget-object v7, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mCellList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;

    invoke-virtual {v7}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;->getNotifyText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->getX()F

    move-result v8

    int-to-float v9, v4

    sub-float v9, v3, v9

    div-float/2addr v9, v12

    add-float/2addr v8, v9

    div-float v9, v6, v12

    sub-float/2addr v8, v9

    add-float/2addr v8, v13

    invoke-virtual {v2}, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->getY()F

    move-result v9

    iget v10, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget v11, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v10, v11

    div-float/2addr v10, v12

    sub-float/2addr v9, v10

    add-float/2addr v9, v13

    iget-object v10, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 985
    iget-object v7, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mContext:Landroid/content/Context;

    iget v8, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mTextSize:I

    invoke-direct {p0, v7, v8}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->setTextSize(Landroid/content/Context;I)V

    .line 963
    .end local v0           #fm:Landroid/graphics/Paint$FontMetrics;
    .end local v2           #notifier:Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;
    .end local v3           #notifierWidth:F
    .end local v4           #originalWidth:I
    .end local v6           #textWidth:F
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 989
    .end local v5           #target:Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;
    :cond_3
    iget-object v7, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mHandleDrawable:Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;

    invoke-virtual {v7, p1}, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 990
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 852
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 853
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 854
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 865
    :goto_0
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 866
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 868
    .end local v0           #action:I
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 856
    .restart local v0       #action:I
    :pswitch_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 859
    :pswitch_2
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 862
    :pswitch_3
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 854
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
    .locals 9
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const v8, 0x3a83126f

    const/4 v7, 0x0

    .line 922
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 923
    sub-int v4, p4, p2

    .line 924
    .local v4, width:I
    sub-int v0, p5, p3

    .line 925
    .local v0, height:I
    iget v5, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mHorizontalOffset:F

    iget v6, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mOuterRadius:F

    float-to-int v6, v6

    mul-int/lit8 v6, v6, 0x2

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    add-float v2, v5, v6

    .line 926
    .local v2, newWaveCenterX:F
    iget v5, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mVerticalOffset:F

    iget v6, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mOuterRadius:F

    add-float v3, v5, v6

    .line 927
    .local v3, newWaveCenterY:F
    iget v5, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mWaveCenterX:F

    sub-float v5, v2, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v5, v5, v8

    if-gtz v5, :cond_0

    iget v5, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mWaveCenterY:F

    sub-float v5, v3, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v5, v5, v8

    if-lez v5, :cond_2

    .line 928
    :cond_0
    iget v5, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mWaveCenterX:F

    cmpl-float v5, v5, v7

    if-nez v5, :cond_1

    iget v5, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mWaveCenterY:F

    cmpl-float v5, v5, v7

    if-nez v5, :cond_1

    .line 929
    invoke-direct {p0, v2, v3}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->performInitialLayout(FF)V

    .line 931
    const/4 v5, 0x2

    new-array v1, v5, [I

    .line 932
    .local v1, location:[I
    invoke-virtual {p0, v1}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->getLocationOnScreen([I)V

    .line 933
    const/4 v5, 0x1

    aget v5, v1, v5

    int-to-float v5, v5

    add-float/2addr v5, v3

    iput v5, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mOriginalRingRawY:F

    .line 935
    .end local v1           #location:[I
    :cond_1
    iput v2, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mWaveCenterX:F

    .line 936
    iput v3, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mWaveCenterY:F

    .line 938
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->updateTargetPositions()V

    .line 941
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->getSuggestedMinimumWidth()I

    move-result v1

    .line 268
    .local v1, minimumWidth:I
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->getSuggestedMinimumHeight()I

    move-result v0

    .line 269
    .local v0, minimumHeight:I
    invoke-direct {p0, p1, v1}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->resolveMeasured(II)I

    move-result v3

    .line 270
    .local v3, viewWidth:I
    invoke-direct {p0, p2, v0}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->resolveMeasured(II)I

    move-result v2

    .line 271
    .local v2, viewHeight:I
    invoke-virtual {p0, v3, v2}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->setMeasuredDimension(II)V

    .line 272
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 653
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 655
    .local v0, action:I
    const/4 v1, 0x0

    .line 656
    .local v1, handled:Z
    packed-switch v0, :pswitch_data_0

    .line 678
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->invalidate()V

    .line 679
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :goto_1
    return v2

    .line 658
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->handleDown(Landroid/view/MotionEvent;)V

    .line 659
    const/4 v1, 0x1

    .line 660
    goto :goto_0

    .line 663
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->handleMove(Landroid/view/MotionEvent;)V

    .line 664
    const/4 v1, 0x1

    .line 665
    goto :goto_0

    .line 668
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->handleMove(Landroid/view/MotionEvent;)V

    .line 669
    invoke-direct {p0, p1}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->handleUp(Landroid/view/MotionEvent;)V

    .line 670
    const/4 v1, 0x1

    .line 671
    goto :goto_0

    .line 674
    :pswitch_3
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->doFinish()V

    .line 675
    const/4 v1, 0x1

    goto :goto_0

    .line 679
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_1

    .line 656
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
    .line 630
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->stopHandleAnimation()V

    .line 631
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->bounceHandle()V

    .line 632
    return-void
.end method

.method public reset(Z)V
    .locals 2
    .parameter "animate"

    .prologue
    .line 641
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->stopHandleAnimation()V

    .line 642
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->stopTargetAnimation()V

    .line 643
    invoke-direct {p0, p1}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->hideTargets(Z)V

    .line 644
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mHandleDrawable:Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;

    iget v1, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mWaveCenterX:F

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->setX(F)V

    .line 645
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mHandleDrawable:Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;

    iget v1, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mWaveCenterY:F

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->setY(F)V

    .line 646
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mHandleDrawable:Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;

    sget-object v1, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->setState([I)V

    .line 647
    invoke-static {}, Lcom/baidu/internal/keyguard/slide/Tweener;->reset()V

    .line 648
    const/4 v0, 0x0

    iget v1, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mLastActiveTarget:I

    invoke-direct {p0, v0, v1}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->enlargeSelectTarget(ZI)V

    .line 649
    return-void
.end method

.method public setNotificationTextClr(ZI)V
    .locals 2
    .parameter "useDefaultColor"
    .parameter "color"

    .prologue
    .line 207
    if-eqz p1, :cond_0

    .line 208
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mDefaultNotificationClr:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 213
    :goto_0
    new-instance v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$4;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$4;-><init>(Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;)V

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->post(Ljava/lang/Runnable;)Z

    .line 219
    return-void

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p2}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_0
.end method

.method public setOnTriggerListener(Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$OnTriggerListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 993
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mOnTriggerListener:Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$OnTriggerListener;

    .line 994
    return-void
.end method

.method public setTargetDescriptionsResourceId(I)V
    .locals 1
    .parameter "resourceId"

    .prologue
    .line 593
    iput p1, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mTargetDescriptionsResourceId:I

    .line 594
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mTargetDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 595
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 597
    :cond_0
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->loadTargetDescription()V

    .line 598
    return-void
.end method

.method public setTargetResources(I)V
    .locals 1
    .parameter "resourceId"

    .prologue
    .line 575
    iget-boolean v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mAnimatingTargets:Z

    if-eqz v0, :cond_0

    .line 577
    iput p1, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mNewTargetResources:I

    .line 581
    :goto_0
    return-void

    .line 579
    :cond_0
    invoke-direct {p0, p1}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->internalSetTargetResources(I)V

    goto :goto_0
.end method

.method public setVibrateEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 615
    if-eqz p1, :cond_1

    .line 616
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    .line 617
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mVibrator:Landroid/os/Vibrator;

    .line 622
    :cond_0
    :goto_0
    return-void

    .line 620
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mVibrator:Landroid/os/Vibrator;

    goto :goto_0
.end method

.method public updateNotifyNum(Ljava/lang/String;I)V
    .locals 4
    .parameter "cellDescription"
    .parameter "number"

    .prologue
    .line 1061
    const/4 v0, 0x0

    .line 1062
    .local v0, hasUpdate:Z
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mCellList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mTargetDescriptions:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 1095
    :cond_0
    :goto_0
    return-void

    .line 1065
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 1066
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1067
    if-lez p2, :cond_4

    .line 1068
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mCellList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;->setHasNotifier(Z)V

    .line 1070
    const/16 v2, 0x3e7

    if-le p2, v2, :cond_3

    .line 1071
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mCellList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;

    const-string v3, "...."

    invoke-virtual {v2, v3}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;->setNotifyText(Ljava/lang/String;)V

    .line 1082
    :goto_2
    const/4 v0, 0x1

    .line 1065
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1074
    :cond_3
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mCellList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;->setNotifyText(Ljava/lang/String;)V

    goto :goto_2

    .line 1078
    :cond_4
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mCellList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;->setHasNotifier(Z)V

    .line 1079
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mCellList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;->setNotifyText(Ljava/lang/String;)V

    goto :goto_2

    .line 1086
    :cond_5
    if-eqz v0, :cond_0

    .line 1088
    new-instance v2, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$6;

    invoke-direct {v2, p0}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$6;-><init>(Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;)V

    invoke-virtual {p0, v2}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
