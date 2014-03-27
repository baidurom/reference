.class public Lcom/android/phone/InCallScreenView;
.super Landroid/widget/FrameLayout;
.source "InCallScreenView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/InCallScreenView$CloseTouchListener;,
        Lcom/android/phone/InCallScreenView$FlingTracker;
    }
.end annotation


# static fields
.field public static final BRAKES:Z


# instance fields
.field private mAbsPos:[I

.field private mAccel:F

.field private mActivity:Lcom/android/phone/InCallScreen;

.field private final mAnimationCallback:Landroid/animation/TimeAnimator$TimeListener;

.field private mBottomTransparentViewHeight:I

.field private mBrakingSpeedPx:F

.field private mClosing:Z

.field private mCollapseAccelPx:F

.field private mCollapseBrakingDistancePx:F

.field private mExpandAccelPx:F

.field private mExpandBrakingDistancePx:F

.field private mExpandedHeight:F

.field protected mFinalTouchY:F

.field private mFlingCollapseMinVelocityPx:F

.field private mFlingExpandMinVelocityPx:F

.field private mFlingGestureMaxOutputVelocityPx:F

.field private mFlingGestureMaxXVelocityPx:F

.field private mFlingGestureMinDistPx:F

.field private mFullHeight:I

.field private mHandleView:Landroid/view/View;

.field private mHandleViewAbsPos:[I

.field private mHandleViewHeight:I

.field private mHandleViewY:I

.field private mHeight:I

.field protected mInitialTouchY:F

.field private mPeekAnimator:Landroid/animation/ObjectAnimator;

.field private mPeekHeight:F

.field private mRubberbanding:Z

.field private mRubberbandingEnabled:Z

.field private mStatusBarHeight:I

.field private final mStopAnimator:Ljava/lang/Runnable;

.field private mTimeAnimator:Landroid/animation/TimeAnimator;

.field private mTracking:Z

.field private mVel:F

.field private mVelocityTracker:Lcom/android/phone/InCallScreenView$FlingTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x2

    const/high16 v2, 0x4316

    const/4 v1, 0x0

    .line 244
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    iput v1, p0, Lcom/android/phone/InCallScreenView;->mHeight:I

    .line 20
    iput v1, p0, Lcom/android/phone/InCallScreenView;->mHandleViewY:I

    .line 21
    iput v1, p0, Lcom/android/phone/InCallScreenView;->mHandleViewHeight:I

    .line 22
    iput v1, p0, Lcom/android/phone/InCallScreenView;->mBottomTransparentViewHeight:I

    .line 23
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/phone/InCallScreenView;->mAbsPos:[I

    .line 24
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/phone/InCallScreenView;->mHandleViewAbsPos:[I

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/InCallScreenView;->mExpandedHeight:F

    .line 27
    iput v1, p0, Lcom/android/phone/InCallScreenView;->mStatusBarHeight:I

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/InCallScreenView;->mRubberbandingEnabled:Z

    .line 52
    const/high16 v0, 0x4348

    iput v0, p0, Lcom/android/phone/InCallScreenView;->mCollapseBrakingDistancePx:F

    .line 53
    iput v2, p0, Lcom/android/phone/InCallScreenView;->mExpandBrakingDistancePx:F

    .line 54
    iput v2, p0, Lcom/android/phone/InCallScreenView;->mBrakingSpeedPx:F

    .line 57
    iput v1, p0, Lcom/android/phone/InCallScreenView;->mFullHeight:I

    .line 209
    new-instance v0, Lcom/android/phone/InCallScreenView$1;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallScreenView$1;-><init>(Lcom/android/phone/InCallScreenView;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreenView;->mAnimationCallback:Landroid/animation/TimeAnimator$TimeListener;

    .line 216
    new-instance v0, Lcom/android/phone/InCallScreenView$2;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallScreenView$2;-><init>(Lcom/android/phone/InCallScreenView;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreenView;->mStopAnimator:Ljava/lang/Runnable;

    .line 245
    new-instance v0, Landroid/animation/TimeAnimator;

    invoke-direct {v0}, Landroid/animation/TimeAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/phone/InCallScreenView;->mTimeAnimator:Landroid/animation/TimeAnimator;

    .line 246
    iget-object v0, p0, Lcom/android/phone/InCallScreenView;->mTimeAnimator:Landroid/animation/TimeAnimator;

    iget-object v1, p0, Lcom/android/phone/InCallScreenView;->mAnimationCallback:Landroid/animation/TimeAnimator$TimeListener;

    invoke-virtual {v0, v1}, Landroid/animation/TimeAnimator;->setTimeListener(Landroid/animation/TimeAnimator$TimeListener;)V

    .line 247
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/InCallScreenView;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/android/phone/InCallScreenView;->animationTick(J)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/InCallScreenView;)Landroid/animation/TimeAnimator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/phone/InCallScreenView;->mTimeAnimator:Landroid/animation/TimeAnimator;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/phone/InCallScreenView;)Lcom/android/phone/InCallScreenView$FlingTracker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/phone/InCallScreenView;->mVelocityTracker:Lcom/android/phone/InCallScreenView$FlingTracker;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/phone/InCallScreenView;Lcom/android/phone/InCallScreenView$FlingTracker;)Lcom/android/phone/InCallScreenView$FlingTracker;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    iput-object p1, p0, Lcom/android/phone/InCallScreenView;->mVelocityTracker:Lcom/android/phone/InCallScreenView$FlingTracker;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/phone/InCallScreenView;Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreenView;->trackMovement(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/phone/InCallScreenView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget v0, p0, Lcom/android/phone/InCallScreenView;->mExpandedHeight:F

    return v0
.end method

.method static synthetic access$1300(Lcom/android/phone/InCallScreenView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/phone/InCallScreenView;->runPeekAnimation()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/phone/InCallScreenView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget v0, p0, Lcom/android/phone/InCallScreenView;->mFlingGestureMaxXVelocityPx:F

    return v0
.end method

.method static synthetic access$1500(Lcom/android/phone/InCallScreenView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget v0, p0, Lcom/android/phone/InCallScreenView;->mFlingGestureMaxOutputVelocityPx:F

    return v0
.end method

.method static synthetic access$1600(Lcom/android/phone/InCallScreenView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget v0, p0, Lcom/android/phone/InCallScreenView;->mFlingGestureMinDistPx:F

    return v0
.end method

.method static synthetic access$1700(Lcom/android/phone/InCallScreenView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget v0, p0, Lcom/android/phone/InCallScreenView;->mFlingExpandMinVelocityPx:F

    return v0
.end method

.method static synthetic access$202(Lcom/android/phone/InCallScreenView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/android/phone/InCallScreenView;->mRubberbanding:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/phone/InCallScreenView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/android/phone/InCallScreenView;->mClosing:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/phone/InCallScreenView;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/phone/InCallScreenView;->mAbsPos:[I

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/InCallScreenView;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/phone/InCallScreenView;->mHandleViewAbsPos:[I

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/InCallScreenView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/phone/InCallScreenView;->mHandleView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/phone/InCallScreenView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/android/phone/InCallScreenView;->mTracking:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/phone/InCallScreenView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget v0, p0, Lcom/android/phone/InCallScreenView;->mStatusBarHeight:I

    return v0
.end method

.method private animationTick(J)V
    .locals 10
    .parameter "dtms"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v9, 0x0

    .line 132
    iget-object v4, p0, Lcom/android/phone/InCallScreenView;->mTimeAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v4}, Landroid/animation/TimeAnimator;->isStarted()Z

    move-result v4

    if-nez v4, :cond_7

    .line 134
    new-instance v4, Landroid/animation/TimeAnimator;

    invoke-direct {v4}, Landroid/animation/TimeAnimator;-><init>()V

    iput-object v4, p0, Lcom/android/phone/InCallScreenView;->mTimeAnimator:Landroid/animation/TimeAnimator;

    .line 135
    iget-object v4, p0, Lcom/android/phone/InCallScreenView;->mTimeAnimator:Landroid/animation/TimeAnimator;

    iget-object v7, p0, Lcom/android/phone/InCallScreenView;->mAnimationCallback:Landroid/animation/TimeAnimator$TimeListener;

    invoke-virtual {v4, v7}, Landroid/animation/TimeAnimator;->setTimeListener(Landroid/animation/TimeAnimator$TimeListener;)V

    .line 137
    iget-object v4, p0, Lcom/android/phone/InCallScreenView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/InCallScreenView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 139
    :cond_0
    iget-object v4, p0, Lcom/android/phone/InCallScreenView;->mTimeAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v4}, Landroid/animation/TimeAnimator;->start()V

    .line 141
    iget-boolean v4, p0, Lcom/android/phone/InCallScreenView;->mRubberbandingEnabled:Z

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/android/phone/InCallScreenView;->mExpandedHeight:F

    invoke-direct {p0}, Lcom/android/phone/InCallScreenView;->getFullHeight()F

    move-result v7

    cmpl-float v4, v4, v7

    if-lez v4, :cond_2

    iget v4, p0, Lcom/android/phone/InCallScreenView;->mVel:F

    iget v7, p0, Lcom/android/phone/InCallScreenView;->mFlingGestureMinDistPx:F

    neg-float v7, v7

    cmpl-float v4, v4, v7

    if-ltz v4, :cond_2

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lcom/android/phone/InCallScreenView;->mRubberbanding:Z

    .line 144
    iget-boolean v4, p0, Lcom/android/phone/InCallScreenView;->mRubberbanding:Z

    if-eqz v4, :cond_3

    .line 145
    iput-boolean v5, p0, Lcom/android/phone/InCallScreenView;->mClosing:Z

    .line 203
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v4, v6

    .line 141
    goto :goto_0

    .line 146
    :cond_3
    iget v4, p0, Lcom/android/phone/InCallScreenView;->mVel:F

    cmpl-float v4, v4, v9

    if-nez v4, :cond_5

    .line 148
    iget v4, p0, Lcom/android/phone/InCallScreenView;->mFinalTouchY:F

    invoke-direct {p0}, Lcom/android/phone/InCallScreenView;->getFullHeight()F

    move-result v7

    iget v8, p0, Lcom/android/phone/InCallScreenView;->mBottomTransparentViewHeight:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    div-float/2addr v4, v7

    const v7, 0x3f6b851f

    cmpg-float v4, v4, v7

    if-gez v4, :cond_4

    :goto_2
    iput-boolean v5, p0, Lcom/android/phone/InCallScreenView;->mClosing:Z

    goto :goto_1

    :cond_4
    move v5, v6

    goto :goto_2

    .line 150
    :cond_5
    iget v4, p0, Lcom/android/phone/InCallScreenView;->mExpandedHeight:F

    cmpl-float v4, v4, v9

    if-lez v4, :cond_6

    iget v4, p0, Lcom/android/phone/InCallScreenView;->mVel:F

    cmpg-float v4, v4, v9

    if-gtz v4, :cond_6

    :goto_3
    iput-boolean v5, p0, Lcom/android/phone/InCallScreenView;->mClosing:Z

    goto :goto_1

    :cond_6
    move v5, v6

    goto :goto_3

    .line 152
    :cond_7
    const-wide/16 v7, 0x0

    cmp-long v4, p1, v7

    if-lez v4, :cond_1

    .line 153
    long-to-float v4, p1

    const v7, 0x3a83126f

    mul-float v1, v4, v7

    .line 155
    .local v1, dt:F
    invoke-direct {p0}, Lcom/android/phone/InCallScreenView;->getFullHeight()F

    move-result v2

    .line 156
    .local v2, fh:F
    const/4 v0, 0x0

    .line 166
    .local v0, braking:Z
    iget-boolean v4, p0, Lcom/android/phone/InCallScreenView;->mClosing:Z

    if-eqz v4, :cond_d

    iget v4, p0, Lcom/android/phone/InCallScreenView;->mCollapseAccelPx:F

    neg-float v4, v4

    :goto_4
    iput v4, p0, Lcom/android/phone/InCallScreenView;->mAccel:F

    .line 169
    iget v4, p0, Lcom/android/phone/InCallScreenView;->mVel:F

    iget v7, p0, Lcom/android/phone/InCallScreenView;->mAccel:F

    mul-float/2addr v7, v1

    add-float/2addr v4, v7

    iput v4, p0, Lcom/android/phone/InCallScreenView;->mVel:F

    .line 171
    if-eqz v0, :cond_f

    .line 172
    iget-boolean v4, p0, Lcom/android/phone/InCallScreenView;->mClosing:Z

    if-eqz v4, :cond_e

    iget v4, p0, Lcom/android/phone/InCallScreenView;->mVel:F

    iget v7, p0, Lcom/android/phone/InCallScreenView;->mBrakingSpeedPx:F

    neg-float v7, v7

    cmpl-float v4, v4, v7

    if-lez v4, :cond_e

    .line 173
    iget v4, p0, Lcom/android/phone/InCallScreenView;->mBrakingSpeedPx:F

    neg-float v4, v4

    iput v4, p0, Lcom/android/phone/InCallScreenView;->mVel:F

    .line 185
    :cond_8
    :goto_5
    iget v4, p0, Lcom/android/phone/InCallScreenView;->mExpandedHeight:F

    iget v7, p0, Lcom/android/phone/InCallScreenView;->mVel:F

    mul-float/2addr v7, v1

    add-float v3, v4, v7

    .line 187
    .local v3, h:F
    iget-boolean v4, p0, Lcom/android/phone/InCallScreenView;->mRubberbanding:Z

    if-eqz v4, :cond_9

    cmpg-float v4, v3, v2

    if-gez v4, :cond_9

    .line 188
    move v3, v2

    .line 191
    :cond_9
    invoke-virtual {p0, v3}, Lcom/android/phone/InCallScreenView;->setExpandedHeightInternal(F)V

    .line 193
    iget v4, p0, Lcom/android/phone/InCallScreenView;->mVel:F

    cmpl-float v4, v4, v9

    if-eqz v4, :cond_c

    iget-boolean v4, p0, Lcom/android/phone/InCallScreenView;->mClosing:Z

    if-eqz v4, :cond_a

    iget v4, p0, Lcom/android/phone/InCallScreenView;->mExpandedHeight:F

    cmpl-float v4, v4, v9

    if-eqz v4, :cond_c

    :cond_a
    iget-boolean v4, p0, Lcom/android/phone/InCallScreenView;->mRubberbanding:Z

    if-nez v4, :cond_b

    iget-boolean v4, p0, Lcom/android/phone/InCallScreenView;->mClosing:Z

    if-nez v4, :cond_1

    :cond_b
    iget v4, p0, Lcom/android/phone/InCallScreenView;->mExpandedHeight:F

    cmpl-float v4, v4, v2

    if-nez v4, :cond_1

    .line 196
    :cond_c
    iget-object v4, p0, Lcom/android/phone/InCallScreenView;->mStopAnimator:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/android/phone/InCallScreenView;->post(Ljava/lang/Runnable;)Z

    .line 197
    iget v4, p0, Lcom/android/phone/InCallScreenView;->mExpandedHeight:F

    cmpg-float v4, v4, v9

    if-gtz v4, :cond_1

    iget-object v4, p0, Lcom/android/phone/InCallScreenView;->mActivity:Lcom/android/phone/InCallScreen;

    if-eqz v4, :cond_1

    .line 198
    iget-object v4, p0, Lcom/android/phone/InCallScreenView;->mActivity:Lcom/android/phone/InCallScreen;

    invoke-virtual {v4, v5}, Lcom/android/phone/InCallScreen;->moveTaskToBack(Z)Z

    .line 199
    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/phone/InCallScreenView;->mActivity:Lcom/android/phone/InCallScreen;

    aput-object v5, v4, v6

    invoke-static {v4}, Lcom/android/phone/BaiduPhoneUtil;->onHalfViewFolded([Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 166
    .end local v3           #h:F
    :cond_d
    iget v4, p0, Lcom/android/phone/InCallScreenView;->mExpandAccelPx:F

    goto :goto_4

    .line 174
    :cond_e
    iget-boolean v4, p0, Lcom/android/phone/InCallScreenView;->mClosing:Z

    if-nez v4, :cond_8

    iget v4, p0, Lcom/android/phone/InCallScreenView;->mVel:F

    iget v7, p0, Lcom/android/phone/InCallScreenView;->mBrakingSpeedPx:F

    cmpg-float v4, v4, v7

    if-gez v4, :cond_8

    .line 175
    iget v4, p0, Lcom/android/phone/InCallScreenView;->mBrakingSpeedPx:F

    iput v4, p0, Lcom/android/phone/InCallScreenView;->mVel:F

    goto :goto_5

    .line 178
    :cond_f
    iget-boolean v4, p0, Lcom/android/phone/InCallScreenView;->mClosing:Z

    if-eqz v4, :cond_10

    iget v4, p0, Lcom/android/phone/InCallScreenView;->mVel:F

    iget v7, p0, Lcom/android/phone/InCallScreenView;->mFlingCollapseMinVelocityPx:F

    neg-float v7, v7

    cmpl-float v4, v4, v7

    if-lez v4, :cond_10

    .line 179
    iget v4, p0, Lcom/android/phone/InCallScreenView;->mFlingCollapseMinVelocityPx:F

    neg-float v4, v4

    iput v4, p0, Lcom/android/phone/InCallScreenView;->mVel:F

    goto :goto_5

    .line 180
    :cond_10
    iget-boolean v4, p0, Lcom/android/phone/InCallScreenView;->mClosing:Z

    if-nez v4, :cond_8

    iget v4, p0, Lcom/android/phone/InCallScreenView;->mVel:F

    iget v7, p0, Lcom/android/phone/InCallScreenView;->mFlingGestureMaxOutputVelocityPx:F

    cmpl-float v4, v4, v7

    if-lez v4, :cond_8

    .line 181
    iget v4, p0, Lcom/android/phone/InCallScreenView;->mFlingGestureMaxOutputVelocityPx:F

    iput v4, p0, Lcom/android/phone/InCallScreenView;->mVel:F

    goto/16 :goto_5
.end method

.method private getFullHeight()F
    .locals 3

    .prologue
    const/high16 v2, 0x4000

    const/4 v1, -0x2

    .line 438
    iget v0, p0, Lcom/android/phone/InCallScreenView;->mFullHeight:I

    if-gtz v0, :cond_0

    .line 439
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/InCallScreenView;->measure(II)V

    .line 442
    :cond_0
    iget v0, p0, Lcom/android/phone/InCallScreenView;->mFullHeight:I

    int-to-float v0, v0

    return v0
.end method

.method private loadDimens()V
    .locals 3

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/android/phone/InCallScreenView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 263
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0b0030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/phone/InCallScreenView;->mFlingExpandMinVelocityPx:F

    .line 264
    const v1, 0x7f0b0031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/phone/InCallScreenView;->mFlingCollapseMinVelocityPx:F

    .line 266
    const v1, 0x7f0b0034

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/phone/InCallScreenView;->mFlingGestureMinDistPx:F

    .line 268
    const v1, 0x7f0b0035

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/phone/InCallScreenView;->mExpandAccelPx:F

    .line 269
    const v1, 0x7f0b0036

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/phone/InCallScreenView;->mCollapseAccelPx:F

    .line 271
    const v1, 0x7f0b0032

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/phone/InCallScreenView;->mFlingGestureMaxXVelocityPx:F

    .line 273
    const v1, 0x7f0b0033

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/phone/InCallScreenView;->mFlingGestureMaxOutputVelocityPx:F

    .line 275
    const v1, 0x7f0b0037

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p0}, Lcom/android/phone/InCallScreenView;->getPaddingBottom()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v1

    iget-object v1, p0, Lcom/android/phone/InCallScreenView;->mHandleView:Landroid/view/View;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    int-to-float v1, v1

    sub-float v1, v2, v1

    iput v1, p0, Lcom/android/phone/InCallScreenView;->mPeekHeight:F

    .line 279
    const v1, #dimen@status_bar_height#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/phone/InCallScreenView;->mStatusBarHeight:I

    .line 280
    return-void

    .line 275
    :cond_0
    iget-object v1, p0, Lcom/android/phone/InCallScreenView;->mHandleView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    goto :goto_0
.end method

.method private runPeekAnimation()V
    .locals 4

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/phone/InCallScreenView;->mTimeAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    :goto_0
    return-void

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreenView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_1

    .line 236
    const-string v0, "expandedHeight"

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/phone/InCallScreenView;->mPeekHeight:F

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreenView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    .line 240
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InCallScreenView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method private trackMovement(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 418
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float v0, v2, v3

    .line 419
    .local v0, deltaX:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float v1, v2, v3

    .line 420
    .local v1, deltaY:F
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 421
    iget-object v2, p0, Lcom/android/phone/InCallScreenView;->mVelocityTracker:Lcom/android/phone/InCallScreenView$FlingTracker;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/InCallScreenView;->mVelocityTracker:Lcom/android/phone/InCallScreenView$FlingTracker;

    invoke-virtual {v2, p1}, Lcom/android/phone/InCallScreenView$FlingTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 422
    :cond_0
    neg-float v2, v0

    neg-float v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 423
    return-void
.end method


# virtual methods
.method public fling(FZ)V
    .locals 2
    .parameter "vel"
    .parameter "always"

    .prologue
    .line 426
    iput p1, p0, Lcom/android/phone/InCallScreenView;->mVel:F

    .line 428
    if-nez p2, :cond_0

    iget v0, p0, Lcom/android/phone/InCallScreenView;->mVel:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 429
    :cond_0
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/phone/InCallScreenView;->animationTick(J)V

    .line 431
    :cond_1
    return-void
.end method

.method public getExpandedHeight()F
    .locals 1

    .prologue
    .line 434
    iget v0, p0, Lcom/android/phone/InCallScreenView;->mExpandedHeight:F

    return v0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 251
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 252
    new-instance v1, Lcom/android/phone/InCallScreenView$CloseTouchListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/phone/InCallScreenView$CloseTouchListener;-><init>(Lcom/android/phone/InCallScreenView;Lcom/android/phone/InCallScreenView$1;)V

    .line 253
    .local v1, l:Lcom/android/phone/InCallScreenView$CloseTouchListener;
    const v2, 0x7f07007b

    invoke-virtual {p0, v2}, Lcom/android/phone/InCallScreenView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/InCallScreenView;->mHandleView:Landroid/view/View;

    .line 254
    iget-object v2, p0, Lcom/android/phone/InCallScreenView;->mHandleView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 255
    const v2, 0x7f07007c

    invoke-virtual {p0, v2}, Lcom/android/phone/InCallScreenView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 256
    .local v0, expand:Landroid/view/View;
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 257
    invoke-direct {p0}, Lcom/android/phone/InCallScreenView;->loadDimens()V

    .line 258
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 285
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 287
    iget v1, p0, Lcom/android/phone/InCallScreenView;->mHeight:I

    if-nez v1, :cond_0

    .line 288
    invoke-virtual {p0}, Lcom/android/phone/InCallScreenView;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/android/phone/InCallScreenView;->mHeight:I

    .line 289
    iget v1, p0, Lcom/android/phone/InCallScreenView;->mHeight:I

    iput v1, p0, Lcom/android/phone/InCallScreenView;->mFullHeight:I

    .line 291
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 292
    .local v0, location:[I
    iget-object v1, p0, Lcom/android/phone/InCallScreenView;->mHandleView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 293
    const/4 v1, 0x1

    aget v1, v0, v1

    iput v1, p0, Lcom/android/phone/InCallScreenView;->mHandleViewY:I

    .line 295
    iget-object v1, p0, Lcom/android/phone/InCallScreenView;->mHandleView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/android/phone/InCallScreenView;->mHandleViewHeight:I

    .line 297
    iget v1, p0, Lcom/android/phone/InCallScreenView;->mFullHeight:I

    iget v2, p0, Lcom/android/phone/InCallScreenView;->mHandleViewY:I

    iget v3, p0, Lcom/android/phone/InCallScreenView;->mStatusBarHeight:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/phone/InCallScreenView;->mHandleViewHeight:I

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/phone/InCallScreenView;->mBottomTransparentViewHeight:I

    .line 299
    .end local v0           #location:[I
    :cond_0
    return-void
.end method

.method public setActivity(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "mainActivity"

    .prologue
    .line 206
    iput-object p1, p0, Lcom/android/phone/InCallScreenView;->mActivity:Lcom/android/phone/InCallScreen;

    .line 207
    return-void
.end method

.method public setExpandedHeightInternal(F)V
    .locals 7
    .parameter "h"

    .prologue
    const/4 v6, 0x0

    .line 387
    cmpg-float v4, p1, v6

    if-gez v4, :cond_0

    .line 388
    const/4 p1, 0x0

    .line 390
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/InCallScreenView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 391
    .local v2, lp:Landroid/widget/FrameLayout$LayoutParams;
    float-to-int v4, p1

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 392
    invoke-virtual {p0, v2}, Lcom/android/phone/InCallScreenView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 394
    invoke-direct {p0}, Lcom/android/phone/InCallScreenView;->getFullHeight()F

    move-result v1

    .line 396
    .local v1, fh:F
    iget-object v4, p0, Lcom/android/phone/InCallScreenView;->mHandleView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 397
    .local v3, lp2:Landroid/widget/FrameLayout$LayoutParams;
    sub-float v4, v1, p1

    iget v5, p0, Lcom/android/phone/InCallScreenView;->mBottomTransparentViewHeight:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-int v0, v4

    .line 398
    .local v0, bottomMargin:I
    if-gez v0, :cond_1

    .line 399
    const/4 v0, 0x0

    .line 401
    :cond_1
    iput v0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 402
    iget-object v4, p0, Lcom/android/phone/InCallScreenView;->mHandleView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 404
    cmpl-float v4, v1, v6

    if-nez v4, :cond_2

    .line 408
    :cond_2
    cmpg-float v4, p1, v6

    if-gez v4, :cond_3

    const/4 p1, 0x0

    .line 409
    :cond_3
    iget-boolean v4, p0, Lcom/android/phone/InCallScreenView;->mRubberbandingEnabled:Z

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lcom/android/phone/InCallScreenView;->mTracking:Z

    if-nez v4, :cond_5

    iget-boolean v4, p0, Lcom/android/phone/InCallScreenView;->mRubberbanding:Z

    if-nez v4, :cond_5

    :cond_4
    cmpl-float v4, p1, v1

    if-lez v4, :cond_5

    move p1, v1

    .line 410
    :cond_5
    iput p1, p0, Lcom/android/phone/InCallScreenView;->mExpandedHeight:F

    .line 412
    invoke-virtual {p0}, Lcom/android/phone/InCallScreenView;->requestLayout()V

    .line 413
    return-void
.end method

.method public setRubberbandingEnabled(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 228
    iput-boolean p1, p0, Lcom/android/phone/InCallScreenView;->mRubberbandingEnabled:Z

    .line 229
    return-void
.end method
