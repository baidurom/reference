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
    .locals 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v6, 0xc

    const/4 v2, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 150
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 83
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mTargetAnimations:Ljava/util/ArrayList;

    .line 90
    iput v2, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mVibrationDuration:I

    .line 92
    iput v5, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mActiveTarget:I

    .line 98
    iput v4, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mOuterRadius:F

    .line 99
    iput v4, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mHitRadius:F

    .line 100
    iput v4, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mSnapMargin:F

    .line 102
    iput v4, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mOriginalRingRawY:F

    .line 103
    iput-boolean v2, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mReachUnlock:Z

    .line 107
    new-instance v3, Landroid/text/TextPaint;

    invoke-direct {v3}, Landroid/text/TextPaint;-><init>()V

    iput-object v3, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mTextPaint:Landroid/text/TextPaint;

    .line 108
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mCellList:Ljava/util/ArrayList;

    .line 109
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mCellMap:Ljava/util/HashMap;

    .line 115
    iput v5, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mLastActiveTarget:I

    .line 118
    iput v6, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mTextSize:I

    .line 119
    iput v5, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mEnlargeTarget:I

    .line 121
    new-instance v3, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$1;

    invoke-direct {v3, p0}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$1;-><init>(Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;)V

    iput-object v3, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mResetListener:Landroid/animation/Animator$AnimatorListener;

    .line 127
    new-instance v3, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$2;

    invoke-direct {v3, p0}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$2;-><init>(Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;)V

    iput-object v3, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mResetListenerWithPing:Landroid/animation/Animator$AnimatorListener;

    .line 134
    new-instance v3, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$3;

    invoke-direct {v3, p0}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$3;-><init>(Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;)V

    iput-object v3, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 151
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 155
    .local v0, res:Landroid/content/res/Resources;
    const v3, #dimen@zz_smartmultiUnlockview_target_placement_radius#t

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mOuterRadius:F

    .line 157
    iput v4, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mHorizontalOffset:F

    .line 159
    const v3, #dimen@zz_lockscreen_unlock_widget_center_offset#t

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mVerticalOffset:F

    .line 161
    const v3, #dimen@zz_smartmultiunlockview_hit_radius#t

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mHitRadius:F

    .line 163
    const v3, #dimen@zz_smartmultiunlockview_snap_margin#t

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mSnapMargin:F

    .line 166
    const/16 v3, 0x14

    iput v3, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mVibrationDuration:I

    .line 169
    new-instance v3, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;

    const v4, #drawable@zz_lockscreen_handle#t

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)V

    iput-object v3, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mHandleDrawable:Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;

    .line 170
    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mHandleDrawable:Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;

    invoke-virtual {v3}, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iput v3, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mTapRadius:F

    .line 172
    const v3, #integer@zz_lockscreen_unlock_widget_distance#t

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mUnlockDistance:I

    .line 178
    const v3, #drawable@zz_lockscreen_notification_round#t

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mNotifierDrawble:Landroid/graphics/drawable/Drawable;

    .line 181
    const v1, #array@zz_lockscreen_five_shortcuts_description#t

    .line 185
    .local v1, resourceId:I
    const v3, #array@zz_lockscreen_five_shortcuts_description#t

    invoke-virtual {p0, v3}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->setTargetDescriptionsResourceId(I)V

    .line 190
    const v3, #array@zz_lockscreen_targets_five_shortcuts#t

    invoke-direct {p0, v3}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->internalSetTargetResources(I)V

    .line 192
    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mCellList:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mCellList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 193
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Must specify at least one target drawable"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 196
    :cond_1
    iput v6, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mTextSize:I

    .line 197
    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mTextSize:I

    invoke-direct {p0, v3, v4}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->setTextSize(Landroid/content/Context;I)V

    .line 199
    iput v5, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mDefaultNotificationClr:I

    .line 200
    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mTextPaint:Landroid/text/TextPaint;

    iget v4, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mDefaultNotificationClr:I

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setColor(I)V

    .line 202
    iget v3, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mVibrationDuration:I

    if-lez v3, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-virtual {p0, v2}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->setVibrateEnabled(Z)V

    .line 203
    return-void
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
    .line 1026
    invoke-virtual {p0, p1}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1027
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->sendAccessibilityEvent(I)V

    .line 1028
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1029
    return-void
.end method

.method private bounceHandle()V
    .locals 10

    .prologue
    const/4 v7, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 537
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

    .line 543
    return-void
.end method

.method private deactivateTargets()V
    .locals 1

    .prologue
    .line 320
    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mActiveTarget:I

    .line 321
    return-void
.end method

.method private dispatchGrabbedEvent(I)V
    .locals 1
    .parameter "whichHandler"

    .prologue
    .line 351
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->vibrate()V

    .line 352
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mOnTriggerListener:Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$OnTriggerListener;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mOnTriggerListener:Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$OnTriggerListener;

    invoke-interface {v0, p0, p1}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$OnTriggerListener;->onGrabbed(Landroid/view/View;I)V

    .line 355
    :cond_0
    return-void
.end method

.method private dispatchTriggerEvent(I)V
    .locals 1
    .parameter "whichHandle"

    .prologue
    .line 344
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->vibrate()V

    .line 345
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mOnTriggerListener:Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$OnTriggerListener;

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mOnTriggerListener:Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$OnTriggerListener;

    invoke-interface {v0, p0, p1}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$OnTriggerListener;->onTrigger(Landroid/view/View;I)V

    .line 348
    :cond_0
    return-void
.end method

.method private dist2(FF)F
    .locals 2
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 1012
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

    .line 358
    iget v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mActiveTarget:I

    .line 359
    .local v0, activeTarget:I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    move v1, v2

    .line 362
    .local v1, targetHit:Z
    :goto_0
    invoke-direct {p0, v2}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->hideTargets(Z)V

    .line 363
    if-eqz v1, :cond_1

    .line 366
    iget v4, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mActiveTarget:I

    invoke-direct {p0, v4}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->dispatchTriggerEvent(I)V

    .line 367
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

    .line 393
    :goto_1
    invoke-direct {p0, v3}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->setGrabbedState(I)V

    .line 394
    iput-boolean v3, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mReachUnlock:Z

    .line 395
    return-void

    .end local v1           #targetHit:Z
    :cond_0
    move v1, v3

    .line 359
    goto :goto_0

    .line 377
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

    .line 385
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mOnTriggerListener:Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$OnTriggerListener;

    invoke-interface {v2}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$OnTriggerListener;->onDragReleased()V

    .line 386
    new-instance v2, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$5;

    invoke-direct {v2, p0}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$5;-><init>(Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;)V

    const-wide/16 v4, 0x12c

    invoke-virtual {p0, v2, v4, v5}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 377
    :cond_2
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mResetListener:Landroid/animation/Animator$AnimatorListener;

    goto :goto_2
.end method

.method private dump()V
    .locals 3

    .prologue
    .line 233
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

    .line 234
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

    .line 235
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

    .line 236
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

    .line 237
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

    .line 238
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

    .line 239
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

    .line 240
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

    .line 241
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

    .line 242
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

    .line 495
    if-ltz p2, :cond_0

    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mCellList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p2, v0, :cond_1

    .line 534
    :cond_0
    :goto_0
    return-void

    .line 499
    :cond_1
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mTargetAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 500
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->stopTargetAnimation()V

    .line 503
    :cond_2
    if-eqz p1, :cond_3

    .line 504
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

    .line 511
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

    .line 517
    iput p2, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mEnlargeTarget:I

    goto/16 :goto_0

    .line 519
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

    .line 526
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

    .line 532
    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mEnlargeTarget:I

    goto/16 :goto_0
.end method

.method private getScaledTapRadiusSquared()F
    .locals 3

    .prologue
    .line 1017
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1018
    const v1, 0x3fa66666

    iget v2, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mTapRadius:F

    mul-float v0, v1, v2

    .line 1022
    .local v0, scaledTapRadius:F
    :goto_0
    invoke-direct {p0, v0}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->square(F)F

    move-result v1

    return v1

    .line 1020
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
    .line 1032
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mTargetDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1033
    :cond_0
    iget v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mTargetDescriptionsResourceId:I

    invoke-direct {p0, v0}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->loadDescriptions(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mTargetDescriptions:Ljava/util/ArrayList;

    .line 1034
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mCellList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1035
    const-string v0, "SmartMultiUnlockView"

    const-string v1, "The number of target drawables must be euqal to the number of target descriptions."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    const/4 v0, 0x0

    .line 1040
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
    .line 700
    invoke-direct {p0, p1}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->trySwitchToFirstTouchState(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 701
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mDragging:Z

    .line 702
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->stopTargetAnimation()V

    .line 705
    :cond_0
    return-void
.end method

.method private handleMove(Landroid/view/MotionEvent;)V
    .locals 33
    .parameter "event"

    .prologue
    .line 728
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mDragging:Z

    move/from16 v29, v0

    if-nez v29, :cond_0

    .line 729
    invoke-direct/range {p0 .. p1}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->trySwitchToFirstTouchState(Landroid/view/MotionEvent;)Z

    .line 859
    :goto_0
    return-void

    .line 735
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v29

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v30

    sub-float v6, v29, v30

    .line 737
    .local v6, deltaRawYY:F
    const/4 v4, -0x1

    .line 738
    .local v4, activeTarget:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v12

    .line 739
    .local v12, historySize:I
    const/4 v15, 0x0

    .local v15, k:I
    :goto_1
    add-int/lit8 v29, v12, 0x1

    move/from16 v0, v29

    if-ge v15, v0, :cond_d

    .line 740
    if-ge v15, v12, :cond_2

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v27

    .line 741
    .local v27, x:F
    :goto_2
    if-ge v15, v12, :cond_3

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v28

    .line 742
    .local v28, y:F
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mWaveCenterX:F

    move/from16 v29, v0

    sub-float v25, v27, v29

    .line 743
    .local v25, tx:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mWaveCenterY:F

    move/from16 v29, v0

    sub-float v26, v28, v29

    .line 744
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

    .line 745
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

    .line 746
    .local v21, scale:F
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mWaveCenterX:F

    move/from16 v29, v0

    mul-float v30, v25, v21

    add-float v16, v29, v30

    .line 747
    .local v16, limitX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mWaveCenterY:F

    move/from16 v29, v0

    mul-float v30, v26, v21

    add-float v17, v29, v30

    .line 750
    .local v17, limitY:F
    const v5, 0x7f7fffff

    .line 751
    .local v5, best:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mHitRadius:F

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mHitRadius:F

    move/from16 v30, v0

    mul-float v13, v29, v30

    .line 752
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

    .line 753
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

    .line 752
    :cond_1
    :goto_6
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 740
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

    .line 741
    .restart local v27       #x:F
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v28

    goto/16 :goto_3

    .line 745
    .restart local v24       #touchRadius:F
    .restart local v25       #tx:F
    .restart local v26       #ty:F
    .restart local v28       #y:F
    :cond_4
    const/high16 v21, 0x3f80

    goto :goto_4

    .line 757
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

    .line 758
    .local v22, target:Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;
    invoke-virtual/range {v22 .. v22}, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->getX()F

    move-result v29

    sub-float v8, v16, v29

    .line 759
    .local v8, dx:F
    invoke-virtual/range {v22 .. v22}, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->getY()F

    move-result v29

    sub-float v9, v17, v29

    .line 760
    .local v9, dy:F
    mul-float v29, v8, v8

    mul-float v30, v9, v9

    add-float v7, v29, v30

    .line 762
    .local v7, dist2:F
    invoke-virtual/range {v22 .. v22}, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->isValid()Z

    move-result v29

    if-eqz v29, :cond_1

    cmpg-float v29, v7, v13

    if-gez v29, :cond_1

    cmpg-float v29, v7, v5

    if-gez v29, :cond_1

    .line 763
    move v4, v14

    .line 764
    move v5, v7

    goto :goto_6

    .line 768
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

    .line 769
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

    .line 773
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

    .line 774
    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mLastActiveTarget:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->enlargeSelectTarget(ZI)V

    .line 778
    :cond_8
    if-ltz v4, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mCellList:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v29

    move/from16 v0, v29

    if-ge v4, v0, :cond_a

    .line 780
    move/from16 v27, v16

    .line 781
    move/from16 v28, v17

    .line 783
    const/16 v29, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->switchToState(IFF)V

    .line 786
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

    .line 787
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

    .line 788
    .local v19, newY:F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mReachUnlock:Z

    move/from16 v29, v0

    if-nez v29, :cond_9

    .line 789
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->moveHandleTo(FFZ)V

    .line 790
    const/16 v29, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v1, v4}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->enlargeSelectTarget(ZI)V

    .line 793
    :cond_9
    move-object/from16 v0, p0

    iput v4, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mLastActiveTarget:I

    .line 739
    .end local v18           #newX:F
    .end local v19           #newY:F
    :goto_7
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1

    .line 797
    :cond_a
    add-float v11, v6, v28

    .line 798
    .local v11, historyRawY:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mOriginalRingRawY:F

    move/from16 v29, v0

    sub-float v10, v11, v29

    .line 801
    .local v10, historyOffsetY:F
    move/from16 v27, v16

    .line 802
    move/from16 v28, v17

    .line 803
    const/16 v29, 0x0

    cmpg-float v29, v10, v29

    if-gez v29, :cond_c

    .line 806
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->upThreshold(F)Z

    move-result v29

    if-eqz v29, :cond_b

    .line 809
    const/high16 v29, 0x3f00

    add-float v29, v29, v10

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mUnlockDistance:I

    move/from16 v30, v0

    add-int v20, v29, v30

    .line 810
    .local v20, offsetFramelayout:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mOnTriggerListener:Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$OnTriggerListener;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$OnTriggerListener;->onDragging(I)V

    .line 811
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mReachUnlock:Z

    .line 814
    const/16 v4, 0x64

    .line 816
    const/16 v29, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->switchToState(IFF)V

    .line 817
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->moveHandleTo(FFZ)V

    goto :goto_7

    .line 821
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

    .line 822
    .restart local v20       #offsetFramelayout:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mOnTriggerListener:Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$OnTriggerListener;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$OnTriggerListener;->onDragging(I)V

    .line 823
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mReachUnlock:Z

    .line 825
    const/4 v4, -0x1

    .line 826
    const/16 v29, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->switchToState(IFF)V

    .line 827
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->moveHandleTo(FFZ)V

    goto/16 :goto_7

    .line 830
    .end local v20           #offsetFramelayout:I
    :cond_c
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mReachUnlock:Z

    .line 833
    move/from16 v27, v16

    .line 834
    move/from16 v28, v17

    .line 837
    const/4 v4, -0x1

    .line 838
    const/16 v29, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->switchToState(IFF)V

    .line 839
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->moveHandleTo(FFZ)V

    goto/16 :goto_7

    .line 845
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

    .line 847
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mActiveTarget:I

    move/from16 v29, v0

    move/from16 v0, v29

    if-eq v0, v4, :cond_e

    const/16 v29, -0x1

    move/from16 v0, v29

    if-eq v4, v0, :cond_e

    .line 848
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->dispatchGrabbedEvent(I)V

    .line 849
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v29

    if-eqz v29, :cond_e

    .line 850
    if-ltz v4, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mCellList:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v29

    move/from16 v0, v29

    if-ge v4, v0, :cond_f

    .line 851
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->getTargetDescription(I)Ljava/lang/String;

    move-result-object v23

    .line 852
    .local v23, targetContentDescription:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->announceText(Ljava/lang/String;)V

    .line 858
    .end local v23           #targetContentDescription:Ljava/lang/String;
    :cond_e
    :goto_8
    move-object/from16 v0, p0

    iput v4, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mActiveTarget:I

    goto/16 :goto_0

    .line 853
    :cond_f
    const/16 v29, 0x64

    move/from16 v0, v29

    if-ne v4, v0, :cond_e

    .line 854
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
    .line 709
    const/4 v0, 0x4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->switchToState(IFF)V

    .line 710
    return-void
.end method

.method private hideTargets(Z)V
    .locals 17
    .parameter "animate"

    .prologue
    .line 398
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mTargetAnimations:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_0

    .line 399
    invoke-direct/range {p0 .. p0}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->stopTargetAnimation()V

    .line 403
    :cond_0
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mAnimatingTargets:Z

    .line 404
    if-eqz p1, :cond_3

    .line 405
    if-eqz p1, :cond_1

    const/16 v6, 0x12c

    .line 406
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

    .line 407
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mCellList:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;

    invoke-virtual {v9}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;->getNormalDrawable()Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;

    move-result-object v8

    .line 408
    .local v8, target:Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;
    sget-object v9, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v8, v9}, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->setState([I)V

    .line 410
    const-wide v9, -0x3fe6de04abbbd2e8L

    int-to-double v11, v7

    mul-double/2addr v9, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mCellList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    int-to-double v11, v11

    div-double v2, v9, v11

    .line 412
    .local v2, angle:D
    const-string v9, "PROMPT"

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 413
    move-object/from16 v0, p0

    iget v9, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mWaveCenterX:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mOuterRadius:F

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    double-to-float v11, v11

    mul-float/2addr v10, v11

    add-float v4, v9, v10

    .line 414
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

    .line 415
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

    .line 406
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 405
    .end local v2           #angle:D
    .end local v4           #desxPosition:F
    .end local v5           #desyPosition:F
    .end local v6           #duration:I
    .end local v7           #i:I
    .end local v8           #target:Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;
    :cond_1
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 422
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

    .line 423
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

    .line 424
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

    .line 433
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

    .line 434
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mCellList:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;

    invoke-virtual {v9}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;->getNormalDrawable()Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;

    move-result-object v8

    .line 435
    .restart local v8       #target:Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;
    sget-object v9, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v8, v9}, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->setState([I)V

    .line 436
    const-string v9, "PROMPT"

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 437
    const/high16 v9, 0x3f80

    invoke-virtual {v8, v9}, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->setAlpha(F)V

    .line 433
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 439
    :cond_4
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->setAlpha(F)V

    goto :goto_4

    .line 442
    .end local v8           #target:Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;
    :cond_5
    return-void
.end method

.method private internalSetTargetResources(I)V
    .locals 19
    .parameter "resourceId"

    .prologue
    .line 551
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 552
    .local v16, res:Landroid/content/res/Resources;
    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v12

    .line 553
    .local v12, array:Landroid/content/res/TypedArray;
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->length()I

    move-result v13

    .line 554
    .local v13, count:I
    new-instance v18, Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-direct {v0, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 555
    .local v18, targetList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;>;"
    new-instance v17, Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-direct {v0, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 557
    .local v17, targetDesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    if-ge v10, v13, :cond_2

    .line 558
    invoke-virtual {v12, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 559
    .local v14, drawable:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mOnTriggerListener:Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$OnTriggerListener;

    if-eqz v2, :cond_1

    .line 560
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mOnTriggerListener:Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$OnTriggerListener;

    invoke-interface {v2, v10}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$OnTriggerListener;->onFiltDisableShortcut(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 561
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

    .line 562
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 557
    :cond_0
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 565
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

    .line 569
    .end local v14           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mCellMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 570
    const/4 v15, 0x0

    .local v15, j:I
    :goto_2
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v15, v2, :cond_3

    .line 571
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mCellMap:Ljava/util/HashMap;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 573
    :cond_3
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    .line 574
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mTargetResourceId:I

    .line 575
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mCellList:Ljava/util/ArrayList;

    .line 576
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mTargetDescriptions:Ljava/util/ArrayList;

    .line 577
    invoke-direct/range {p0 .. p0}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->updateTargetPositions()V

    .line 578
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
    .line 1051
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1052
    .local v0, array:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    .line 1053
    .local v2, count:I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1054
    .local v4, targetContentDescriptions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 1055
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1056
    .local v1, contentDescription:Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1057
    iget-object v5, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mCellMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1054
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1059
    .end local v1           #contentDescription:Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1060
    return-object v4
.end method

.method private loadTargetDescription()V
    .locals 1

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mTargetDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1045
    :cond_0
    iget v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mTargetDescriptionsResourceId:I

    invoke-direct {p0, v0}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->loadDescriptions(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mTargetDescriptions:Ljava/util/ArrayList;

    .line 1047
    :cond_1
    return-void
.end method

.method private moveHandleTo(FFZ)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "animate"

    .prologue
    .line 695
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mHandleDrawable:Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;

    invoke-virtual {v0, p1}, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->setX(F)V

    .line 696
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mHandleDrawable:Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;

    invoke-virtual {v0, p2}, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->setY(F)V

    .line 697
    return-void
.end method

.method private performInitialLayout(FF)V
    .locals 5
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 914
    iget v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mOuterRadius:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_0

    .line 915
    const/high16 v0, 0x3f00

    invoke-direct {p0, p1, p2}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->dist2(FF)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mOuterRadius:F

    .line 917
    :cond_0
    iget v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mHitRadius:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_1

    .line 919
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mCellList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 920
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

    .line 923
    :cond_1
    iget v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mSnapMargin:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_2

    .line 924
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

    .line 927
    :cond_2
    invoke-direct {p0, v4}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->hideTargets(Z)V

    .line 928
    invoke-direct {p0, p1, p2, v4}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->moveHandleTo(FFZ)V

    .line 929
    return-void
.end method

.method private resolveMeasured(II)I
    .locals 3
    .parameter "measureSpec"
    .parameter "desired"

    .prologue
    .line 260
    const/4 v0, 0x0

    .line 261
    .local v0, result:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 262
    .local v1, specSize:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 271
    move v0, v1

    .line 273
    :goto_0
    return v0

    .line 264
    :sswitch_0
    move v0, p2

    .line 265
    goto :goto_0

    .line 267
    :sswitch_1
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 268
    goto :goto_0

    .line 262
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
    .line 887
    iget v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mGrabbedState:I

    if-eq p1, v0, :cond_1

    .line 888
    if-eqz p1, :cond_0

    .line 889
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->vibrate()V

    .line 891
    :cond_0
    iput p1, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mGrabbedState:I

    .line 892
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mOnTriggerListener:Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$OnTriggerListener;

    if-eqz v0, :cond_1

    .line 893
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mOnTriggerListener:Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$OnTriggerListener;

    iget v1, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mGrabbedState:I

    invoke-interface {v0, p0, v1}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$OnTriggerListener;->onGrabbedStateChange(Landroid/view/View;I)V

    .line 896
    :cond_1
    return-void
.end method

.method private setTextSize(Landroid/content/Context;I)V
    .locals 5
    .parameter "context"
    .parameter "textSize"

    .prologue
    .line 207
    if-nez p1, :cond_0

    .line 208
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 213
    .local v0, r:Landroid/content/res/Resources;
    :goto_0
    const/4 v2, 0x2

    int-to-float v3, p2

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v1, v2

    .line 214
    .local v1, size:I
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mTextPaint:Landroid/text/TextPaint;

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 215
    return-void

    .line 210
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
    .line 445
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mTargetAnimations:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_0

    .line 446
    invoke-direct/range {p0 .. p0}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->stopTargetAnimation()V

    .line 448
    :cond_0
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mAnimatingTargets:Z

    .line 449
    if-eqz p1, :cond_2

    .line 450
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mCellList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v6, v10, :cond_3

    .line 451
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mCellList:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;

    invoke-virtual {v10}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;->getNormalDrawable()Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;

    move-result-object v9

    .line 452
    .local v9, target:Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;
    sget-object v10, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v9, v10}, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->setState([I)V

    .line 454
    const-wide v10, -0x3fe6de04abbbd2e8L

    int-to-double v12, v6

    mul-double/2addr v10, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mCellList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    int-to-double v12, v12

    div-double v2, v10, v12

    .line 455
    .local v2, angle:D
    const-string v10, "PROMPT"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 456
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

    .line 457
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

    .line 458
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

    .line 459
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

    .line 460
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

    .line 450
    .end local v7           #startxPosition:F
    .end local v8           #startyPosition:F
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 467
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

    .line 468
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

    .line 469
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

    .line 478
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

    .line 479
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mCellList:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;

    invoke-virtual {v10}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;->getNormalDrawable()Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;

    move-result-object v9

    .line 480
    .restart local v9       #target:Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;
    sget-object v10, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v9, v10}, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->setState([I)V

    .line 481
    const/high16 v10, 0x3f80

    invoke-virtual {v9, v10}, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->setAlpha(F)V

    .line 478
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 484
    .end local v9           #target:Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;
    :cond_3
    return-void
.end method

.method private square(F)F
    .locals 1
    .parameter "d"

    .prologue
    .line 1008
    mul-float v0, p1, p1

    return v0
.end method

.method private stopHandleAnimation()V
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mHandleAnimation:Lcom/baidu/internal/keyguard/slide/Tweener;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mHandleAnimation:Lcom/baidu/internal/keyguard/slide/Tweener;

    iget-object v0, v0, Lcom/baidu/internal/keyguard/slide/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 315
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mHandleAnimation:Lcom/baidu/internal/keyguard/slide/Tweener;

    .line 317
    :cond_0
    return-void
.end method

.method private stopTargetAnimation()V
    .locals 3

    .prologue
    .line 487
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

    .line 488
    .local v0, anim:Lcom/baidu/internal/keyguard/slide/Tweener;
    iget-object v2, v0, Lcom/baidu/internal/keyguard/slide/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->end()V

    goto :goto_0

    .line 490
    .end local v0           #anim:Lcom/baidu/internal/keyguard/slide/Tweener;
    :cond_0
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mTargetAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 491
    return-void
.end method

.method private switchToState(IFF)V
    .locals 3
    .parameter "state"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, 0x1

    .line 286
    packed-switch p1, :pswitch_data_0

    .line 310
    :goto_0
    :pswitch_0
    return-void

    .line 288
    :pswitch_1
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->deactivateTargets()V

    .line 289
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mHandleDrawable:Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;

    sget-object v1, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->setState([I)V

    goto :goto_0

    .line 293
    :pswitch_2
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->stopHandleAnimation()V

    .line 294
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->deactivateTargets()V

    .line 295
    invoke-direct {p0, v2}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->showTargets(Z)V

    .line 296
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mHandleDrawable:Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;

    sget-object v1, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->STATE_ACTIVE:[I

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->setState([I)V

    .line 297
    invoke-direct {p0, v2}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->setGrabbedState(I)V

    goto :goto_0

    .line 307
    :pswitch_3
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->doFinish()V

    goto :goto_0

    .line 286
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

    .line 899
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 900
    .local v2, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 901
    .local v3, y:F
    iget v6, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mWaveCenterX:F

    sub-float v0, v2, v6

    .line 902
    .local v0, dx:F
    iget v6, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mWaveCenterY:F

    sub-float v1, v3, v6

    .line 903
    .local v1, dy:F
    invoke-direct {p0, v0, v1}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->dist2(FF)F

    move-result v6

    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->getScaledTapRadiusSquared()F

    move-result v7

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_0

    .line 905
    invoke-direct {p0, v4, v2, v3}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->switchToState(IFF)V

    .line 906
    invoke-direct {p0, v2, v3, v5}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->moveHandleTo(FFZ)V

    .line 907
    iput-boolean v4, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mDragging:Z

    .line 910
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
    .line 720
    iget v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mOriginalRingRawY:F

    iget v1, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mUnlockDistance:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 721
    const/4 v0, 0x1

    .line 724
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

    .line 956
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v5, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mCellList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 957
    const-wide v5, -0x3fe6de04abbbd2e8L

    int-to-double v7, v2

    mul-double/2addr v5, v7

    iget-object v7, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mCellList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    int-to-double v7, v7

    div-double v0, v5, v7

    .line 958
    .local v0, angle:D
    const/4 v3, 0x0

    .line 959
    .local v3, xPosition:F
    const/4 v4, 0x0

    .line 960
    .local v4, yPosition:F
    const/4 v5, 0x1

    if-eq v2, v5, :cond_0

    .line 961
    iget v5, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mWaveCenterX:F

    iget v6, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mOuterRadius:F

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    double-to-float v7, v7

    mul-float/2addr v6, v7

    add-float v3, v5, v6

    .line 962
    iget v5, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mWaveCenterY:F

    iget v6, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mOuterRadius:F

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v7, v7

    mul-float/2addr v6, v7

    add-float v4, v5, v6

    .line 967
    :goto_1
    iget-object v5, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mCellList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;

    invoke-virtual {v5, v3}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;->setX(F)V

    .line 968
    iget-object v5, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mCellList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;

    invoke-virtual {v5, v4}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;->setY(F)V

    .line 956
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 964
    :cond_0
    iget v5, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mWaveCenterX:F

    iget v6, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mOuterRadius:F

    sub-float/2addr v6, v9

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    double-to-float v7, v7

    mul-float/2addr v6, v7

    add-float v3, v5, v6

    .line 965
    iget v5, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mWaveCenterY:F

    iget v6, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mOuterRadius:F

    sub-float/2addr v6, v9

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v7, v7

    mul-float/2addr v6, v7

    add-float v4, v5, v6

    goto :goto_1

    .line 970
    .end local v0           #angle:D
    .end local v3           #xPosition:F
    .end local v4           #yPosition:F
    :cond_1
    return-void
.end method

.method private vibrate()V
    .locals 3

    .prologue
    .line 545
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mVibrator:Landroid/os/Vibrator;

    iget v1, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mVibrationDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 548
    :cond_0
    return-void
.end method


# virtual methods
.method public getCellDescription(I)Ljava/lang/String;
    .locals 2
    .parameter "key"

    .prologue
    .line 1065
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
    .line 254
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

    .line 247
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
    .line 617
    iget v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mTargetDescriptionsResourceId:I

    return v0
.end method

.method public getTargetResourceId()I
    .locals 1

    .prologue
    .line 595
    iget v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mTargetResourceId:I

    return v0
.end method

.method invalidateGlobalRegion(Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;)V
    .locals 9
    .parameter "drawable"

    .prologue
    const/4 v6, 0x0

    .line 324
    invoke-virtual {p1}, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->getWidth()I

    move-result v3

    .line 325
    .local v3, width:I
    invoke-virtual {p1}, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->getHeight()I

    move-result v1

    .line 326
    .local v1, height:I
    new-instance v0, Landroid/graphics/RectF;

    int-to-float v4, v3

    int-to-float v5, v1

    invoke-direct {v0, v6, v6, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 327
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

    .line 328
    move-object v2, p0

    .line 329
    .local v2, view:Landroid/view/View;
    :goto_0
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v4, v4, Landroid/view/View;

    if-eqz v4, :cond_0

    .line 330
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .end local v2           #view:Landroid/view/View;
    check-cast v2, Landroid/view/View;

    .line 331
    .restart local v2       #view:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 332
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

    .line 337
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter "canvas"

    .prologue
    const/high16 v13, 0x3f00

    const/high16 v12, 0x4000

    .line 974
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v7, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mCellList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_3

    .line 975
    iget-object v7, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mCellList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;

    invoke-virtual {v7}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;->getNormalDrawable()Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;

    move-result-object v5

    .line 976
    .local v5, target:Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;
    if-eqz v5, :cond_0

    .line 977
    invoke-virtual {v5, p1}, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 980
    :cond_0
    iget-object v7, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mCellList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;

    invoke-virtual {v7}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;->getHasNotifier()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 981
    iget-object v7, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mCellList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;

    invoke-virtual {v7}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;->getNotifierDrawable()Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;

    move-result-object v2

    .line 982
    .local v2, notifier:Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;
    if-eqz v2, :cond_2

    .line 983
    iget v7, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mEnlargeTarget:I

    if-ne v1, v7, :cond_1

    .line 984
    iget-object v7, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mContext:Landroid/content/Context;

    iget v8, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mTextSize:I

    int-to-float v8, v8

    const v9, 0x3fa66666

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-direct {p0, v7, v8}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->setTextSize(Landroid/content/Context;I)V

    .line 986
    :cond_1
    invoke-virtual {v2}, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->getWidth()I

    move-result v4

    .line 987
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

    .line 988
    .local v6, textWidth:F
    iget-object v7, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 989
    .local v0, fm:Landroid/graphics/Paint$FontMetrics;
    const/high16 v7, 0x40c0

    add-float/2addr v7, v6

    int-to-float v8, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 990
    .local v3, notifierWidth:F
    float-to-int v7, v3

    invoke-virtual {v2, v7}, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->setWidth(I)V

    .line 991
    invoke-virtual {v2, p1}, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 992
    invoke-virtual {v2, v4}, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->setWidth(I)V

    .line 995
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

    .line 996
    iget-object v7, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mContext:Landroid/content/Context;

    iget v8, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mTextSize:I

    invoke-direct {p0, v7, v8}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->setTextSize(Landroid/content/Context;I)V

    .line 974
    .end local v0           #fm:Landroid/graphics/Paint$FontMetrics;
    .end local v2           #notifier:Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;
    .end local v3           #notifierWidth:F
    .end local v4           #originalWidth:I
    .end local v6           #textWidth:F
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1000
    .end local v5           #target:Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;
    :cond_3
    iget-object v7, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mHandleDrawable:Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;

    invoke-virtual {v7, p1}, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1001
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 863
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 864
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 865
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 876
    :goto_0
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 877
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 879
    .end local v0           #action:I
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 867
    .restart local v0       #action:I
    :pswitch_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 870
    :pswitch_2
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 873
    :pswitch_3
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 865
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

    .line 933
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 934
    sub-int v4, p4, p2

    .line 935
    .local v4, width:I
    sub-int v0, p5, p3

    .line 936
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

    .line 937
    .local v2, newWaveCenterX:F
    iget v5, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mVerticalOffset:F

    iget v6, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mOuterRadius:F

    add-float v3, v5, v6

    .line 938
    .local v3, newWaveCenterY:F
    iget v5, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mWaveCenterX:F

    cmpl-float v5, v2, v5

    if-nez v5, :cond_0

    iget v5, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mWaveCenterY:F

    cmpl-float v5, v3, v5

    if-eqz v5, :cond_2

    .line 939
    :cond_0
    iget v5, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mWaveCenterX:F

    cmpl-float v5, v5, v7

    if-nez v5, :cond_1

    iget v5, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mWaveCenterY:F

    cmpl-float v5, v5, v7

    if-nez v5, :cond_1

    .line 940
    invoke-direct {p0, v2, v3}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->performInitialLayout(FF)V

    .line 942
    const/4 v5, 0x2

    new-array v1, v5, [I

    .line 943
    .local v1, location:[I
    invoke-virtual {p0, v1}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->getLocationOnScreen([I)V

    .line 944
    const/4 v5, 0x1

    aget v5, v1, v5

    int-to-float v5, v5

    add-float/2addr v5, v3

    iput v5, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mOriginalRingRawY:F

    .line 946
    .end local v1           #location:[I
    :cond_1
    iput v2, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mWaveCenterX:F

    .line 947
    iput v3, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mWaveCenterY:F

    .line 949
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->updateTargetPositions()V

    .line 952
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->getSuggestedMinimumWidth()I

    move-result v1

    .line 279
    .local v1, minimumWidth:I
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->getSuggestedMinimumHeight()I

    move-result v0

    .line 280
    .local v0, minimumHeight:I
    invoke-direct {p0, p1, v1}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->resolveMeasured(II)I

    move-result v3

    .line 281
    .local v3, viewWidth:I
    invoke-direct {p0, p2, v0}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->resolveMeasured(II)I

    move-result v2

    .line 282
    .local v2, viewHeight:I
    invoke-virtual {p0, v3, v2}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->setMeasuredDimension(II)V

    .line 283
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 664
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 666
    .local v0, action:I
    const/4 v1, 0x0

    .line 667
    .local v1, handled:Z
    packed-switch v0, :pswitch_data_0

    .line 689
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->invalidate()V

    .line 690
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :goto_1
    return v2

    .line 669
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->handleDown(Landroid/view/MotionEvent;)V

    .line 670
    const/4 v1, 0x1

    .line 671
    goto :goto_0

    .line 674
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->handleMove(Landroid/view/MotionEvent;)V

    .line 675
    const/4 v1, 0x1

    .line 676
    goto :goto_0

    .line 679
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->handleMove(Landroid/view/MotionEvent;)V

    .line 680
    invoke-direct {p0, p1}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->handleUp(Landroid/view/MotionEvent;)V

    .line 681
    const/4 v1, 0x1

    .line 682
    goto :goto_0

    .line 685
    :pswitch_3
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->doFinish()V

    .line 686
    const/4 v1, 0x1

    goto :goto_0

    .line 690
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_1

    .line 667
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
    .line 641
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->stopHandleAnimation()V

    .line 642
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->bounceHandle()V

    .line 643
    return-void
.end method

.method public reset(Z)V
    .locals 2
    .parameter "animate"

    .prologue
    .line 652
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->stopHandleAnimation()V

    .line 653
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->stopTargetAnimation()V

    .line 654
    invoke-direct {p0, p1}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->hideTargets(Z)V

    .line 655
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mHandleDrawable:Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;

    iget v1, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mWaveCenterX:F

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->setX(F)V

    .line 656
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mHandleDrawable:Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;

    iget v1, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mWaveCenterY:F

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->setY(F)V

    .line 657
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mHandleDrawable:Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;

    sget-object v1, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->setState([I)V

    .line 658
    invoke-static {}, Lcom/baidu/internal/keyguard/slide/Tweener;->reset()V

    .line 659
    const/4 v0, 0x0

    iget v1, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mLastActiveTarget:I

    invoke-direct {p0, v0, v1}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->enlargeSelectTarget(ZI)V

    .line 660
    return-void
.end method

.method public setNotificationTextClr(ZI)V
    .locals 2
    .parameter "useDefaultColor"
    .parameter "color"

    .prologue
    .line 218
    if-eqz p1, :cond_0

    .line 219
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mDefaultNotificationClr:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 224
    :goto_0
    new-instance v0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$4;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$4;-><init>(Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;)V

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->post(Ljava/lang/Runnable;)Z

    .line 230
    return-void

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p2}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_0
.end method

.method public setOnTriggerListener(Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$OnTriggerListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1004
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mOnTriggerListener:Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$OnTriggerListener;

    .line 1005
    return-void
.end method

.method public setTargetDescriptionsResourceId(I)V
    .locals 1
    .parameter "resourceId"

    .prologue
    .line 604
    iput p1, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mTargetDescriptionsResourceId:I

    .line 605
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mTargetDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 606
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 608
    :cond_0
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->loadTargetDescription()V

    .line 609
    return-void
.end method

.method public setTargetResources(I)V
    .locals 1
    .parameter "resourceId"

    .prologue
    .line 586
    iget-boolean v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mAnimatingTargets:Z

    if-eqz v0, :cond_0

    .line 588
    iput p1, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mNewTargetResources:I

    .line 592
    :goto_0
    return-void

    .line 590
    :cond_0
    invoke-direct {p0, p1}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->internalSetTargetResources(I)V

    goto :goto_0
.end method

.method public setVibrateEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 626
    if-eqz p1, :cond_1

    .line 627
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    .line 628
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mVibrator:Landroid/os/Vibrator;

    .line 633
    :cond_0
    :goto_0
    return-void

    .line 631
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
    .line 1072
    const/4 v0, 0x0

    .line 1073
    .local v0, hasUpdate:Z
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mCellList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mTargetDescriptions:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 1106
    :cond_0
    :goto_0
    return-void

    .line 1076
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 1077
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1078
    if-lez p2, :cond_4

    .line 1079
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mCellList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;->setHasNotifier(Z)V

    .line 1081
    const/16 v2, 0x3e7

    if-le p2, v2, :cond_3

    .line 1082
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mCellList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;

    const-string v3, "...."

    invoke-virtual {v2, v3}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;->setNotifyText(Ljava/lang/String;)V

    .line 1093
    :goto_2
    const/4 v0, 0x1

    .line 1076
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1085
    :cond_3
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mCellList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;->setNotifyText(Ljava/lang/String;)V

    goto :goto_2

    .line 1089
    :cond_4
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mCellList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;->setHasNotifier(Z)V

    .line 1090
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mCellList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;->setNotifyText(Ljava/lang/String;)V

    goto :goto_2

    .line 1097
    :cond_5
    if-eqz v0, :cond_0

    .line 1099
    new-instance v2, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$6;

    invoke-direct {v2, p0}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$6;-><init>(Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;)V

    invoke-virtual {p0, v2}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
