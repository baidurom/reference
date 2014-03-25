.class public Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;
.super Landroid/view/ViewGroup;
.source "SlidingChallengeLayout.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;,
        Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$OnChallengeScrolledListener;
    }
.end annotation


# static fields
.field private static final CHALLENGE_FADE_IN_DURATION:I = 0xa0

.field private static final CHALLENGE_FADE_OUT_DURATION:I = 0x64

.field private static final DEBUG:Z = false

.field private static final DEBUG_PLUG_IN:Z = false

.field private static final DRAG_HANDLE_CLOSED_ABOVE:I = 0x8

.field private static final DRAG_HANDLE_CLOSED_BELOW:I = 0x0

.field private static final DRAG_HANDLE_OPEN_ABOVE:I = 0x8

.field private static final DRAG_HANDLE_OPEN_BELOW:I = 0x0

.field static final HANDLE_ALPHA:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final HANDLE_ANIMATE_DURATION:I = 0xfa

.field private static final INVALID_POINTER:I = -0x1

.field private static final MAX_SETTLE_DURATION:I = 0x258

.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_FADING:I = 0x3

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SlidingChallengeLayout"

.field private static final sHandleFadeInterpolator:Landroid/view/animation/Interpolator;

.field private static final sMotionInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mActivePointerId:I

.field private mBlockDrag:Z

.field private mBouncerListener:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout$OnBouncerStateChangedListener;

.field private mChallengeBottomBound:I

.field private mChallengeInteractiveExternal:Z

.field private mChallengeInteractiveInternal:Z

.field private mChallengeOffset:F

.field private mChallengeShowing:Z

.field private mChallengeShowingTargetState:Z

.field private mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mDragHandleClosedAbove:I

.field private mDragHandleClosedBelow:I

.field private mDragHandleEdgeSlop:I

.field private mDragHandleOpenAbove:I

.field private mDragHandleOpenBelow:I

.field private mDragging:Z

.field private mEdgeCaptured:Z

.field private final mEndScrollRunnable:Ljava/lang/Runnable;

.field private final mExpandChallengeClickListener:Landroid/view/View$OnClickListener;

.field private mExpandChallengeView:Landroid/view/View;

.field private mFader:Landroid/animation/ObjectAnimator;

.field mFrameAlpha:F

.field private mFrameAnimation:Landroid/animation/ObjectAnimator;

.field mFrameAnimationTarget:F

.field private mGestureStartChallengeBottom:I

.field private mGestureStartX:F

.field private mGestureStartY:F

.field mHandleAlpha:F

.field private mHandleAnimation:Landroid/animation/ObjectAnimator;

.field private mHasGlowpad:Z

.field private mHasLayout:Z

.field private mIsBouncing:Z

.field private mKeyguardLayerBackground:Lcom/mediatek/common/policy/IKeyguardLayer;

.field private mKeyguardLayerBackgroundLayout:Landroid/widget/FrameLayout;

.field private mKeyguardLayerBackgroundView:Landroid/view/View;

.field private mKeyguardLayerForeground:Lcom/mediatek/common/policy/IKeyguardLayer;

.field private mKeyguardLayerForegroundLayout:Landroid/widget/FrameLayout;

.field private mKeyguardLayerForegroundView:Landroid/view/View;

.field private mMaxVelocity:I

.field private mMinVelocity:I

.field private final mScrimClickListener:Landroid/view/View$OnClickListener;

.field private mScrimView:Landroid/view/View;

.field private mScrollListener:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$OnChallengeScrolledListener;

.field private mScrollState:I

.field private final mScroller:Landroid/widget/Scroller;

.field private mShowKeyguardLayer:Z

.field private mShowKeyguardLayerRunnable:Ljava/lang/Runnable;

.field private mTouchSlop:I

.field private mTouchSlopSquare:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWasChallengeShowing:Z

.field private mWidgetsView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 144
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$1;

    const-string v1, "handleAlpha"

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->HANDLE_ALPHA:Landroid/util/Property;

    .line 161
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$2;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$2;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->sMotionInterpolator:Landroid/view/animation/Interpolator;

    .line 168
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$3;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$3;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->sHandleFadeInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 237
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 238
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 241
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 242
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x4100

    const/4 v6, 0x0

    const/high16 v5, 0x3f00

    const/4 v4, 0x1

    .line 245
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    const/high16 v3, 0x3f80

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeOffset:F

    .line 84
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeShowing:Z

    .line 85
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeShowingTargetState:Z

    .line 86
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mWasChallengeShowing:Z

    .line 87
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mIsBouncing:Z

    .line 106
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mActivePointerId:I

    .line 134
    const/4 v3, 0x1

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mFrameAnimationTarget:F

    .line 141
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeInteractiveExternal:Z

    .line 142
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeInteractiveInternal:Z

    .line 174
    new-instance v3, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$4;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$4;-><init>(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mEndScrollRunnable:Ljava/lang/Runnable;

    .line 180
    new-instance v3, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$5;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$5;-><init>(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScrimClickListener:Landroid/view/View$OnClickListener;

    .line 187
    new-instance v3, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$6;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$6;-><init>(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mExpandChallengeClickListener:Landroid/view/View$OnClickListener;

    .line 1318
    new-instance v3, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$10;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$10;-><init>(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mShowKeyguardLayerRunnable:Ljava/lang/Runnable;

    .line 247
    new-instance v3, Landroid/widget/Scroller;

    sget-object v4, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->sMotionInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v3, p1, v4}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScroller:Landroid/widget/Scroller;

    .line 249
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 250
    .local v2, vc:Landroid/view/ViewConfiguration;
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mMinVelocity:I

    .line 251
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mMaxVelocity:I

    .line 253
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 254
    .local v1, res:Landroid/content/res/Resources;
    const v3, #dimen@kg_edge_swipe_region_size#t

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mDragHandleEdgeSlop:I

    .line 256
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mTouchSlop:I

    .line 257
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mTouchSlop:I

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mTouchSlop:I

    mul-int/2addr v3, v4

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mTouchSlopSquare:I

    .line 259
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 260
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v3, Landroid/util/DisplayMetrics;->density:F

    .line 263
    .local v0, density:F
    mul-float v3, v7, v0

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mDragHandleClosedAbove:I

    .line 264
    mul-float v3, v6, v0

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mDragHandleClosedBelow:I

    .line 265
    mul-float v3, v7, v0

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mDragHandleOpenAbove:I

    .line 266
    mul-float v3, v6, v0

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mDragHandleOpenBelow:I

    .line 269
    const v3, #dimen@kg_widget_pager_bottom_padding#t

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeBottomBound:I

    .line 271
    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->setWillNotDraw(Z)V

    .line 272
    const/16 v3, 0x100

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->setSystemUiVisibility(I)V

    .line 273
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScrimView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->onFadeStart(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->onFadeEnd(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mShowKeyguardLayer:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->updateKeyguardLayerView(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mKeyguardLayerForegroundLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mKeyguardLayerBackgroundLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private cancelTransitionsInProgress()V
    .locals 1

    .prologue
    .line 1053
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1054
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1055
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->completeChallengeScroll()V

    .line 1057
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mFader:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 1058
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mFader:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1060
    :cond_1
    return-void
.end method

.method private crossedDragHandle(FFF)Z
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "initialY"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 800
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->getTop()I

    move-result v0

    .line 801
    .local v0, challengeTop:I
    const/4 v5, 0x0

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getWidth()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v5, p1, v5

    if-gez v5, :cond_0

    move v1, v3

    .line 804
    .local v1, horizOk:Z
    :goto_0
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeShowing:Z

    if-eqz v5, :cond_2

    .line 805
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getDragHandleSizeAbove()I

    move-result v5

    sub-int v5, v0, v5

    int-to-float v5, v5

    cmpg-float v5, p3, v5

    if-gez v5, :cond_1

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getDragHandleSizeBelow()I

    move-result v5

    add-int/2addr v5, v0

    int-to-float v5, v5

    cmpl-float v5, p2, v5

    if-lez v5, :cond_1

    move v2, v3

    .line 811
    .local v2, vertOk:Z
    :goto_1
    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    :goto_2
    return v3

    .end local v1           #horizOk:Z
    .end local v2           #vertOk:Z
    :cond_0
    move v1, v4

    .line 801
    goto :goto_0

    .restart local v1       #horizOk:Z
    :cond_1
    move v2, v4

    .line 805
    goto :goto_1

    .line 808
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getDragHandleSizeBelow()I

    move-result v5

    add-int/2addr v5, v0

    int-to-float v5, v5

    cmpl-float v5, p3, v5

    if-lez v5, :cond_3

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getDragHandleSizeAbove()I

    move-result v5

    sub-int v5, v0, v5

    int-to-float v5, v5

    cmpg-float v5, p2, v5

    if-gez v5, :cond_3

    move v2, v3

    .restart local v2       #vertOk:Z
    :goto_3
    goto :goto_1

    .end local v2           #vertOk:Z
    :cond_3
    move v2, v4

    goto :goto_3

    .restart local v2       #vertOk:Z
    :cond_4
    move v3, v4

    .line 811
    goto :goto_2
.end method

.method private getChallengeAlpha()F
    .locals 3

    .prologue
    const/high16 v2, 0x3f80

    .line 573
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeOffset:F

    sub-float v0, v1, v2

    .line 574
    .local v0, x:F
    mul-float v1, v0, v0

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    return v1
.end method

.method private getChallengeBottom()I
    .locals 1

    .prologue
    .line 1194
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1196
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->getBottom()I

    move-result v0

    goto :goto_0
.end method

.method private getChallengeMargin(Z)I
    .locals 1
    .parameter "expanded"

    .prologue
    .line 569
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mHasGlowpad:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mDragHandleEdgeSlop:I

    goto :goto_0
.end method

.method private getDragHandleSizeAbove()I
    .locals 1

    .prologue
    .line 776
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->isChallengeShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mDragHandleOpenAbove:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mDragHandleClosedAbove:I

    goto :goto_0
.end method

.method private getDragHandleSizeBelow()I
    .locals 1

    .prologue
    .line 779
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->isChallengeShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mDragHandleOpenBelow:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mDragHandleClosedBelow:I

    goto :goto_0
.end method

.method private getLayoutBottom()I
    .locals 4

    .prologue
    .line 1183
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    if-nez v2, :cond_0

    const/4 v0, 0x0

    .line 1186
    .local v0, bottomMargin:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int v1, v2, v0

    .line 1187
    .local v1, layoutBottom:I
    return v1

    .line 1183
    .end local v0           #bottomMargin:I
    .end local v1           #layoutBottom:I
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;

    iget v0, v2, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;->bottomMargin:I

    goto :goto_0
.end method

.method private getMaxChallengeBottom()I
    .locals 4

    .prologue
    .line 1093
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 1097
    :goto_0
    return v2

    .line 1094
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getLayoutBottom()I

    move-result v1

    .line 1095
    .local v1, layoutBottom:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->getMeasuredHeight()I

    move-result v0

    .line 1097
    .local v0, challengeHeight:I
    add-int v2, v1, v0

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeBottomBound:I

    sub-int/2addr v2, v3

    goto :goto_0
.end method

.method private getMinChallengeBottom()I
    .locals 1

    .prologue
    .line 1101
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getLayoutBottom()I

    move-result v0

    return v0
.end method

.method private isChallengeInteractionBlocked()Z
    .locals 1

    .prologue
    .line 635
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeInteractiveExternal:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeInteractiveInternal:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isEdgeSwipeBeginEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "ev"

    .prologue
    const/4 v1, 0x0

    .line 763
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-eqz v2, :cond_1

    .line 768
    :cond_0
    :goto_0
    return v1

    .line 767
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 768
    .local v0, x:F
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mDragHandleEdgeSlop:I

    int-to-float v2, v2

    cmpg-float v2, v0, v2

    if-ltz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mDragHandleEdgeSlop:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isInChallengeView(FF)Z
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 783
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->isPointInView(FFLandroid/view/View;)Z

    move-result v0

    return v0
.end method

.method private isInDragHandle(FF)Z
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 787
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mExpandChallengeView:Landroid/view/View;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->isPointInView(FFLandroid/view/View;)Z

    move-result v0

    return v0
.end method

.method private isPointInView(FFLandroid/view/View;)Z
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "view"

    .prologue
    const/4 v0, 0x0

    .line 791
    if-nez p3, :cond_1

    .line 794
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, p2, v1

    if-gez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private makeChildMeasureSpec(II)I
    .locals 3
    .parameter "maxSize"
    .parameter "childDimen"

    .prologue
    .line 817
    packed-switch p2, :pswitch_data_0

    .line 827
    const/high16 v0, 0x4000

    .line 828
    .local v0, mode:I
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 831
    .local v1, size:I
    :goto_0
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    return v2

    .line 819
    .end local v0           #mode:I
    .end local v1           #size:I
    :pswitch_0
    const/high16 v0, -0x8000

    .line 820
    .restart local v0       #mode:I
    move v1, p1

    .line 821
    .restart local v1       #size:I
    goto :goto_0

    .line 823
    .end local v0           #mode:I
    .end local v1           #size:I
    :pswitch_1
    const/high16 v0, 0x4000

    .line 824
    .restart local v0       #mode:I
    move v1, p1

    .line 825
    .restart local v1       #size:I
    goto :goto_0

    .line 817
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private moveChallengeTo(I)Z
    .locals 8
    .parameter "bottom"

    .prologue
    const/4 v3, 0x1

    .line 1147
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mHasLayout:Z

    if-nez v4, :cond_1

    .line 1148
    :cond_0
    const/4 v3, 0x0

    .line 1175
    :goto_0
    return v3

    .line 1151
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getLayoutBottom()I

    move-result v1

    .line 1152
    .local v1, layoutBottom:I
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->getHeight()I

    move-result v0

    .line 1154
    .local v0, challengeHeight:I
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getMinChallengeBottom()I

    move-result v4

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getMaxChallengeBottom()I

    move-result v5

    invoke-static {p1, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1157
    const/high16 v4, 0x3f80

    sub-int v5, p1, v1

    int-to-float v5, v5

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeBottomBound:I

    sub-int v6, v0, v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    sub-float v2, v4, v5

    .line 1159
    .local v2, offset:F
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeOffset:F

    .line 1160
    const/4 v4, 0x0

    cmpl-float v4, v2, v4

    if-lez v4, :cond_2

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeShowing:Z

    if-nez v4, :cond_2

    .line 1161
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->setChallengeShowing(Z)V

    .line 1165
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->updateKeyguardLayerPosition(I)V

    .line 1167
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->getLeft()I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->getHeight()I

    move-result v6

    sub-int v6, p1, v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->getRight()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->layout(IIII)V

    .line 1170
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getChallengeAlpha()F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->setAlpha(F)V

    .line 1171
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScrollListener:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$OnChallengeScrolledListener;

    if-eqz v4, :cond_3

    .line 1172
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScrollListener:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$OnChallengeScrolledListener;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->getTop()I

    move-result v5

    invoke-interface {v4, v2, v5}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$OnChallengeScrolledListener;->onScrollPositionChanged(FI)V

    .line 1174
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->postInvalidateOnAnimation()V

    goto :goto_0
.end method

.method private onFadeEnd(Z)V
    .locals 3
    .parameter "show"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeInteractiveInternal:Z

    .line 1118
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->setChallengeShowing(Z)V

    .line 1120
    if-nez p1, :cond_0

    .line 1121
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getMaxChallengeBottom()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->moveChallengeTo(I)Z

    .line 1124
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1125
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mFader:Landroid/animation/ObjectAnimator;

    .line 1126
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->setScrollState(I)V

    .line 1127
    return-void
.end method

.method private onFadeStart(Z)V
    .locals 3
    .parameter "show"

    .prologue
    .line 1106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeInteractiveInternal:Z

    .line 1107
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1109
    if-eqz p1, :cond_0

    .line 1110
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getMinChallengeBottom()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->moveChallengeTo(I)Z

    .line 1113
    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->setScrollState(I)V

    .line 1114
    return-void
.end method

.method private resetTouch()V
    .locals 1

    .prologue
    .line 639
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 640
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 641
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mActivePointerId:I

    .line 642
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mBlockDrag:Z

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mDragging:Z

    .line 643
    return-void
.end method

.method private sendInitialListenerUpdates()V
    .locals 3

    .prologue
    .line 304
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScrollListener:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$OnChallengeScrolledListener;

    if-eqz v1, :cond_0

    .line 305
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->getTop()I

    move-result v0

    .line 306
    .local v0, challengeTop:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScrollListener:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$OnChallengeScrolledListener;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeOffset:F

    invoke-interface {v1, v2, v0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$OnChallengeScrolledListener;->onScrollPositionChanged(FI)V

    .line 307
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScrollListener:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$OnChallengeScrolledListener;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScrollState:I

    invoke-interface {v1, v2}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$OnChallengeScrolledListener;->onScrollStateChanged(I)V

    .line 309
    .end local v0           #challengeTop:I
    :cond_0
    return-void

    .line 305
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setChallengeShowing(Z)V
    .locals 3
    .parameter "showChallenge"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 464
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeShowing:Z

    if-ne v0, p1, :cond_1

    .line 493
    :cond_0
    :goto_0
    return-void

    .line 467
    :cond_1
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeShowing:Z

    .line 469
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mExpandChallengeView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    if-eqz v0, :cond_0

    .line 476
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeShowing:Z

    if-eqz v0, :cond_2

    .line 477
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mExpandChallengeView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 478
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->setVisibility(I)V

    .line 479
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->requestAccessibilityFocus()Z

    .line 481
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mContext:Landroid/content/Context;

    const v2, #string@keyguard_accessibility_unlock_area_expanded#t

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 485
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mExpandChallengeView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 486
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->setVisibility(I)V

    .line 487
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mExpandChallengeView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestAccessibilityFocus()Z

    .line 489
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mContext:Landroid/content/Context;

    const v2, #string@keyguard_accessibility_unlock_area_collapsed#t

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private showChallenge(I)V
    .locals 5
    .parameter "velocity"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1213
    const/4 v0, 0x0

    .line 1214
    .local v0, show:Z
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mMinVelocity:I

    if-le v3, v4, :cond_1

    .line 1215
    if-gez p1, :cond_0

    move v0, v1

    .line 1219
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->showChallenge(ZI)V

    .line 1220
    return-void

    :cond_0
    move v0, v2

    .line 1215
    goto :goto_0

    .line 1217
    :cond_1
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeOffset:F

    const/high16 v4, 0x3f00

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_2

    move v0, v1

    :goto_1
    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method private showChallenge(ZI)V
    .locals 3
    .parameter "show"
    .parameter "velocity"

    .prologue
    .line 1223
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    if-nez v1, :cond_1

    .line 1224
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->setChallengeShowing(Z)V

    .line 1234
    :cond_0
    :goto_0
    return-void

    .line 1228
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mHasLayout:Z

    if-eqz v1, :cond_0

    .line 1229
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeShowingTargetState:Z

    .line 1230
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getLayoutBottom()I

    move-result v0

    .line 1231
    .local v0, layoutBottom:I
    if-eqz p1, :cond_2

    .end local v0           #layoutBottom:I
    :goto_1
    invoke-virtual {p0, v0, p2}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->animateChallengeTo(II)V

    goto :goto_0

    .restart local v0       #layoutBottom:I
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->getHeight()I

    move-result v1

    add-int/2addr v1, v0

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeBottomBound:I

    sub-int v0, v1, v2

    goto :goto_1
.end method

.method private updateKeyguardLayerPosition(I)V
    .locals 9
    .parameter "bottom"

    .prologue
    const/high16 v8, 0x3f80

    .line 1421
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mKeyguardLayerForegroundLayout:Landroid/widget/FrameLayout;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    if-eqz v4, :cond_0

    .line 1422
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mKeyguardLayerForegroundLayout:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mKeyguardLayerForegroundLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mKeyguardLayerForegroundLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v6

    sub-int v6, p1, v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mKeyguardLayerForegroundLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getRight()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7, p1}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 1426
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getLayoutBottom()I

    move-result v2

    .line 1427
    .local v2, minBottom:I
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getLayoutBottom()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->getMeasuredHeight()I

    move-result v5

    add-int v1, v4, v5

    .line 1428
    .local v1, maxBottom:I
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1429
    .local v3, realBottom:I
    sub-int v4, v3, v2

    int-to-float v4, v4

    mul-float/2addr v4, v8

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    sub-float v0, v8, v4

    .line 1430
    .local v0, alpha:F
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mKeyguardLayerForegroundView:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 1431
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mKeyguardLayerForegroundView:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1440
    .end local v0           #alpha:F
    .end local v1           #maxBottom:I
    .end local v2           #minBottom:I
    .end local v3           #realBottom:I
    :cond_0
    return-void
.end method

.method private updateKeyguardLayerView(Z)V
    .locals 12
    .parameter "show"

    .prologue
    .line 1364
    if-eqz p1, :cond_1

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mKeyguardLayerBackgroundView:Landroid/view/View;

    if-nez v8, :cond_1

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mKeyguardLayerForegroundView:Landroid/view/View;

    if-nez v8, :cond_1

    .line 1366
    :try_start_0
    const-class v8, Lcom/mediatek/common/pluginmanager/IPluginManager;

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "create"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mContext:Landroid/content/Context;

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-class v11, Lcom/mediatek/common/policy/IKeyguardLayer;

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const/4 v11, 0x0

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/common/pluginmanager/IPluginManager;

    .line 1371
    .local v5, plugManager:Lcom/mediatek/common/pluginmanager/IPluginManager;
    invoke-interface {v5}, Lcom/mediatek/common/pluginmanager/IPluginManager;->getPluginCount()I

    move-result v7

    .line 1372
    .local v7, pluginCount:I
    if-eqz v7, :cond_2

    .line 1376
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v7, :cond_2

    .line 1377
    invoke-interface {v5, v1}, Lcom/mediatek/common/pluginmanager/IPluginManager;->getPlugin(I)Lcom/mediatek/common/pluginmanager/IPlugin;

    move-result-object v6

    .line 1378
    .local v6, plugin:Lcom/mediatek/common/pluginmanager/IPlugin;
    invoke-interface {v6}, Lcom/mediatek/common/pluginmanager/IPlugin;->createObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/common/policy/IKeyguardLayer;

    .line 1379
    .local v2, keyguardLayer:Lcom/mediatek/common/policy/IKeyguardLayer;
    invoke-interface {v2}, Lcom/mediatek/common/policy/IKeyguardLayer;->create()Landroid/view/View;

    move-result-object v3

    .line 1380
    .local v3, keyguardLayerView:Landroid/view/View;
    const-string v8, "SlidingChallengeLayout"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateDataUsageView create plugin keyguardLayer="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", this="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1381
    invoke-interface {v2}, Lcom/mediatek/common/policy/IKeyguardLayer;->getKeyguardLayerInfo()Lcom/mediatek/common/policy/KeyguardLayerInfo;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 1382
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mKeyguardLayerBackground:Lcom/mediatek/common/policy/IKeyguardLayer;

    .line 1383
    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mKeyguardLayerBackgroundView:Landroid/view/View;

    .line 1376
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1385
    :cond_0
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mKeyguardLayerForeground:Lcom/mediatek/common/policy/IKeyguardLayer;

    .line 1386
    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mKeyguardLayerForegroundView:Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1402
    .end local v1           #i:I
    .end local v2           #keyguardLayer:Lcom/mediatek/common/policy/IKeyguardLayer;
    .end local v3           #keyguardLayerView:Landroid/view/View;
    .end local v5           #plugManager:Lcom/mediatek/common/pluginmanager/IPluginManager;
    .end local v6           #plugin:Lcom/mediatek/common/pluginmanager/IPlugin;
    .end local v7           #pluginCount:I
    :catch_0
    move-exception v0

    .line 1403
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1406
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    :goto_2
    return-void

    .line 1391
    .restart local v5       #plugManager:Lcom/mediatek/common/pluginmanager/IPluginManager;
    .restart local v7       #pluginCount:I
    :cond_2
    :try_start_1
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mKeyguardLayerForegroundLayout:Landroid/widget/FrameLayout;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mKeyguardLayerForegroundView:Landroid/view/View;

    if-eqz v8, :cond_3

    .line 1392
    new-instance v4, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-direct {v4, v8, v9}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;-><init>(II)V

    .line 1393
    .local v4, layoutParam:Landroid/view/ViewGroup$LayoutParams;
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mKeyguardLayerForegroundView:Landroid/view/View;

    invoke-virtual {v8, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1394
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mKeyguardLayerForegroundLayout:Landroid/widget/FrameLayout;

    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mKeyguardLayerForegroundView:Landroid/view/View;

    invoke-virtual {v8, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1397
    .end local v4           #layoutParam:Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mKeyguardLayerBackgroundLayout:Landroid/widget/FrameLayout;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mKeyguardLayerBackgroundView:Landroid/view/View;

    if-eqz v8, :cond_1

    .line 1398
    new-instance v4, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-direct {v4, v8, v9}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;-><init>(II)V

    .line 1399
    .restart local v4       #layoutParam:Landroid/view/ViewGroup$LayoutParams;
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mKeyguardLayerBackgroundView:Landroid/view/View;

    invoke-virtual {v8, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1400
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mKeyguardLayerBackgroundLayout:Landroid/widget/FrameLayout;

    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mKeyguardLayerBackgroundView:Landroid/view/View;

    invoke-virtual {v8, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method


# virtual methods
.method animateChallengeTo(II)V
    .locals 13
    .parameter "y"
    .parameter "velocity"

    .prologue
    const/4 v11, 0x2

    const/4 v1, 0x0

    const/high16 v12, 0x3f80

    .line 425
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    if-nez v0, :cond_0

    .line 461
    :goto_0
    return-void

    .line 430
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->cancelTransitionsInProgress()V

    .line 432
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeInteractiveInternal:Z

    .line 433
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    const/4 v3, 0x0

    invoke-virtual {v0, v11, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->setLayerType(ILandroid/graphics/Paint;)V

    .line 434
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->getBottom()I

    move-result v2

    .line 435
    .local v2, sy:I
    sub-int v4, p1, v2

    .line 436
    .local v4, dy:I
    if-nez v4, :cond_1

    .line 437
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->completeChallengeScroll()V

    goto :goto_0

    .line 441
    :cond_1
    invoke-virtual {p0, v11}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->setScrollState(I)V

    .line 443
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->getHeight()I

    move-result v7

    .line 444
    .local v7, childHeight:I
    div-int/lit8 v10, v7, 0x2

    .line 445
    .local v10, halfHeight:I
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v12

    int-to-float v3, v7

    div-float/2addr v0, v3

    invoke-static {v12, v0}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 446
    .local v9, distanceRatio:F
    int-to-float v0, v10

    int-to-float v3, v10

    invoke-virtual {p0, v9}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->distanceInfluenceForSnapDuration(F)F

    move-result v11

    mul-float/2addr v3, v11

    add-float v8, v0, v3

    .line 449
    .local v8, distance:F
    const/4 v5, 0x0

    .line 450
    .local v5, duration:I
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 451
    if-lez p2, :cond_2

    .line 452
    const/high16 v0, 0x447a

    int-to-float v3, p2

    div-float v3, v8, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v5, v0, 0x4

    .line 457
    :goto_1
    const/16 v0, 0x258

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 459
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScroller:Landroid/widget/Scroller;

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 460
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->postInvalidateOnAnimation()V

    goto :goto_0

    .line 454
    :cond_2
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    int-to-float v3, v7

    div-float v6, v0, v3

    .line 455
    .local v6, childDelta:F
    add-float v0, v6, v12

    const/high16 v3, 0x42c8

    mul-float/2addr v0, v3

    float-to-int v5, v0

    goto :goto_1
.end method

.method animateHandle(Z)V
    .locals 4
    .parameter "visible"

    .prologue
    .line 289
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mHandleAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_0

    .line 290
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mHandleAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 291
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mHandleAnimation:Landroid/animation/ObjectAnimator;

    .line 293
    :cond_0
    if-eqz p1, :cond_1

    const/high16 v0, 0x3f80

    .line 294
    .local v0, targetAlpha:F
    :goto_0
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mHandleAlpha:F

    cmpl-float v1, v0, v1

    if-nez v1, :cond_2

    .line 301
    :goto_1
    return-void

    .line 293
    .end local v0           #targetAlpha:F
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 297
    .restart local v0       #targetAlpha:F
    :cond_2
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->HANDLE_ALPHA:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mHandleAnimation:Landroid/animation/ObjectAnimator;

    .line 298
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mHandleAnimation:Landroid/animation/ObjectAnimator;

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->sHandleFadeInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 299
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mHandleAnimation:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 300
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mHandleAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_1
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 1255
    instance-of v0, p1, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;

    return v0
.end method

.method completeChallengeScroll()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 401
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeShowingTargetState:Z

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->setChallengeShowing(Z)V

    .line 402
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeShowing:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f80

    :goto_0
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeOffset:F

    .line 403
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->setScrollState(I)V

    .line 404
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeInteractiveInternal:Z

    .line 405
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->setLayerType(ILandroid/graphics/Paint;)V

    .line 406
    return-void

    .line 402
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 2

    .prologue
    .line 1033
    invoke-super {p0}, Landroid/view/ViewGroup;->computeScroll()V

    .line 1035
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1036
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    if-nez v0, :cond_1

    .line 1038
    const-string v0, "SlidingChallengeLayout"

    const-string v1, "Challenge view missing in computeScroll"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1050
    :cond_0
    :goto_0
    return-void

    .line 1043
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 1044
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->moveChallengeTo(I)Z

    .line 1046
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1047
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "ev"

    .prologue
    const/4 v4, 0x0

    .line 734
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 735
    .local v0, action:I
    const/4 v1, 0x0

    .line 736
    .local v1, handled:Z
    if-nez v0, :cond_0

    .line 738
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mEdgeCaptured:Z

    .line 740
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mWidgetsView:Landroid/view/View;

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mIsBouncing:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mEdgeCaptured:Z

    if-nez v2, :cond_1

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->isEdgeSwipeBeginEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 748
    :cond_1
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mEdgeCaptured:Z

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mWidgetsView:Landroid/view/View;

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    or-int v1, v2, v3

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mEdgeCaptured:Z

    .line 751
    :cond_2
    if-nez v1, :cond_3

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mEdgeCaptured:Z

    if-nez v2, :cond_3

    .line 752
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 755
    :cond_3
    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    if-ne v0, v2, :cond_5

    .line 756
    :cond_4
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mEdgeCaptured:Z

    .line 759
    :cond_5
    return v1
.end method

.method distanceInfluenceForSnapDuration(F)F
    .locals 4
    .parameter "f"

    .prologue
    .line 384
    const/high16 v0, 0x3f00

    sub-float/2addr p1, v0

    .line 385
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 386
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 1019
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 1030
    return-void
.end method

.method public fadeChallenge(Z)V
    .locals 6
    .parameter "show"

    .prologue
    .line 1071
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    if-eqz v2, :cond_0

    .line 1073
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->cancelTransitionsInProgress()V

    .line 1074
    if-eqz p1, :cond_1

    const/high16 v0, 0x3f80

    .line 1075
    .local v0, alpha:F
    :goto_0
    if-eqz p1, :cond_2

    const/16 v1, 0xa0

    .line 1076
    .local v1, duration:I
    :goto_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    const-string v3, "alpha"

    const/4 v4, 0x1

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v0, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mFader:Landroid/animation/ObjectAnimator;

    .line 1077
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mFader:Landroid/animation/ObjectAnimator;

    new-instance v3, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$9;

    invoke-direct {v3, p0, p1}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$9;-><init>(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;Z)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1087
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mFader:Landroid/animation/ObjectAnimator;

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1088
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mFader:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 1090
    .end local v0           #alpha:F
    .end local v1           #duration:I
    :cond_0
    return-void

    .line 1074
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1075
    .restart local v0       #alpha:F
    :cond_2
    const/16 v1, 0x64

    goto :goto_1
.end method

.method public fadeInChallenge()V
    .locals 1

    .prologue
    .line 1063
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->fadeChallenge(Z)V

    .line 1064
    return-void
.end method

.method public fadeOutChallenge()V
    .locals 1

    .prologue
    .line 1067
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->fadeChallenge(Z)V

    .line 1068
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 1250
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 1238
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 1243
    instance-of v0, p1, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;

    check-cast p1, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;

    .end local p1
    invoke-direct {v0, p1}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;-><init>(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;)V

    :goto_0
    return-object v0

    .restart local p1
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local p1
    invoke-direct {v0, p1}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    .restart local p1
    :cond_1
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public getBouncerAnimationDuration()I
    .locals 1

    .prologue
    .line 514
    const/16 v0, 0xfa

    return v0
.end method

.method public getMaxChallengeTop()I
    .locals 3

    .prologue
    .line 1130
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 1134
    :goto_0
    return v2

    .line 1132
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getLayoutBottom()I

    move-result v1

    .line 1133
    .local v1, layoutBottom:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->getMeasuredHeight()I

    move-result v0

    .line 1134
    .local v0, challengeHeight:I
    sub-int v2, v1, v0

    goto :goto_0
.end method

.method public hideBouncer()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 545
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mIsBouncing:Z

    if-nez v1, :cond_1

    .line 566
    :cond_0
    :goto_0
    return-void

    .line 546
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mWasChallengeShowing:Z

    if-nez v1, :cond_2

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->showChallenge(Z)V

    .line 547
    :cond_2
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mIsBouncing:Z

    .line 549
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScrimView:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 550
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScrimView:Landroid/view/View;

    const-string v2, "alpha"

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v4, v3, v5

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 551
    .local v0, anim:Landroid/animation/Animator;
    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 552
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$8;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$8;-><init>(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 558
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 560
    .end local v0           #anim:Landroid/animation/Animator;
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    if-eqz v1, :cond_4

    .line 561
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    const/16 v2, 0xfa

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->hideBouncer(I)V

    .line 563
    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mBouncerListener:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout$OnBouncerStateChangedListener;

    if-eqz v1, :cond_0

    .line 564
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mBouncerListener:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout$OnBouncerStateChangedListener;

    invoke-interface {v1, v5}, Lcom/android/internal/policy/impl/keyguard/ChallengeLayout$OnBouncerStateChangedListener;->onBouncerStateChanged(Z)V

    goto :goto_0
.end method

.method public isBouncing()Z
    .locals 1

    .prologue
    .line 509
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mIsBouncing:Z

    return v0
.end method

.method public isChallengeOverlapping()Z
    .locals 1

    .prologue
    .line 504
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeShowing:Z

    return v0
.end method

.method public isChallengeShowing()Z
    .locals 1

    .prologue
    .line 499
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeShowing:Z

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 324
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 333
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mHasLayout:Z

    .line 334
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 338
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 348
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 350
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mShowKeyguardLayerRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 352
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mHasLayout:Z

    .line 355
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mKeyguardLayerBackground:Lcom/mediatek/common/policy/IKeyguardLayer;

    if-eqz v0, :cond_0

    .line 356
    const-string v0, "SlidingChallengeLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDetachedFromWindow mKeyguardLayerBackground destroy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mKeyguardLayerBackground:Lcom/mediatek/common/policy/IKeyguardLayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mKeyguardLayerBackground:Lcom/mediatek/common/policy/IKeyguardLayer;

    invoke-interface {v0}, Lcom/mediatek/common/policy/IKeyguardLayer;->destroy()V

    .line 358
    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mKeyguardLayerBackground:Lcom/mediatek/common/policy/IKeyguardLayer;

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mKeyguardLayerForeground:Lcom/mediatek/common/policy/IKeyguardLayer;

    if-eqz v0, :cond_1

    .line 361
    const-string v0, "SlidingChallengeLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDetachedFromWindow mKeyguardLayerForeground destroy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mKeyguardLayerForeground:Lcom/mediatek/common/policy/IKeyguardLayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mKeyguardLayerForeground:Lcom/mediatek/common/policy/IKeyguardLayer;

    invoke-interface {v0}, Lcom/mediatek/common/policy/IKeyguardLayer;->destroy()V

    .line 363
    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mKeyguardLayerForeground:Lcom/mediatek/common/policy/IKeyguardLayer;

    .line 365
    :cond_1
    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mKeyguardLayerBackgroundView:Landroid/view/View;

    .line 366
    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mKeyguardLayerForegroundView:Landroid/view/View;

    .line 367
    return-void
.end method

.method public onFinishInflate()V
    .locals 6

    .prologue
    .line 1332
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 1333
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getChildCount()I

    move-result v1

    .line 1334
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_5

    .line 1335
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1336
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;

    .line 1337
    .local v3, lp:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;
    iget v4, v3, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;->childType:I

    const/16 v5, 0x8

    if-ne v4, v5, :cond_1

    .line 1338
    check-cast v0, Landroid/widget/FrameLayout;

    .end local v0           #child:Landroid/view/View;
    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mKeyguardLayerForegroundLayout:Landroid/widget/FrameLayout;

    .line 1334
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1339
    .restart local v0       #child:Landroid/view/View;
    :cond_1
    iget v4, v3, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;->childType:I

    const/16 v5, 0x9

    if-ne v4, v5, :cond_2

    .line 1340
    check-cast v0, Landroid/widget/FrameLayout;

    .end local v0           #child:Landroid/view/View;
    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mKeyguardLayerBackgroundLayout:Landroid/widget/FrameLayout;

    goto :goto_1

    .line 1341
    .restart local v0       #child:Landroid/view/View;
    :cond_2
    iget v4, v3, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;->childType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 1342
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    if-eqz v4, :cond_3

    .line 1343
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "There may only be one child with layout_isChallenge=\"true\""

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1346
    :cond_3
    instance-of v4, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    if-nez v4, :cond_4

    .line 1347
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Challenge must be a KeyguardSecurityContainer"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1350
    :cond_4
    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    .end local v0           #child:Landroid/view/View;
    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    goto :goto_1

    .line 1353
    .end local v3           #lp:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;
    :cond_5
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "ev"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 586
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v5, :cond_0

    .line 587
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 589
    :cond_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 591
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 592
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 626
    :cond_1
    :goto_0
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mBlockDrag:Z

    if-nez v5, :cond_2

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->isChallengeInteractionBlocked()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 627
    :cond_2
    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mActivePointerId:I

    .line 628
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mDragging:Z

    .line 631
    :cond_3
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mDragging:Z

    return v5

    .line 594
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mGestureStartX:F

    .line 595
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mGestureStartY:F

    .line 596
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mBlockDrag:Z

    goto :goto_0

    .line 601
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->resetTouch()V

    goto :goto_0

    .line 605
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 606
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 607
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 608
    .local v3, x:F
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 609
    .local v4, y:F
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mIsBouncing:Z

    if-nez v5, :cond_6

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mActivePointerId:I

    if-ne v5, v7, :cond_6

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mGestureStartY:F

    invoke-direct {p0, v3, v4, v5}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->crossedDragHandle(FFF)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-direct {p0, v3, v4}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->isInChallengeView(FF)Z

    move-result v5

    if-eqz v5, :cond_6

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScrollState:I

    if-ne v5, v10, :cond_6

    .line 613
    :cond_4
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mActivePointerId:I

    .line 614
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mGestureStartX:F

    .line 615
    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mGestureStartY:F

    .line 616
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getChallengeBottom()I

    move-result v5

    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mGestureStartChallengeBottom:I

    .line 617
    iput-boolean v9, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mDragging:Z

    .line 618
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    const/4 v6, 0x0

    invoke-virtual {v5, v10, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->setLayerType(ILandroid/graphics/Paint;)V

    .line 606
    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 619
    :cond_6
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeShowing:Z

    if-eqz v5, :cond_5

    invoke-direct {p0, v3, v4}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->isInChallengeView(FF)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 620
    iput-boolean v9, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mBlockDrag:Z

    goto :goto_2

    .line 592
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 27
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 953
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getPaddingLeft()I

    move-result v17

    .line 954
    .local v17, paddingLeft:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getPaddingTop()I

    move-result v19

    .line 955
    .local v19, paddingTop:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getPaddingRight()I

    move-result v18

    .line 956
    .local v18, paddingRight:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getPaddingBottom()I

    move-result v16

    .line 957
    .local v16, paddingBottom:I
    sub-int v22, p4, p2

    .line 958
    .local v22, width:I
    sub-int v11, p5, p3

    .line 960
    .local v11, height:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getChildCount()I

    move-result v10

    .line 961
    .local v10, count:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    if-ge v12, v10, :cond_5

    .line 962
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 964
    .local v7, child:Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v23

    const/16 v24, 0x8

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1

    .line 961
    :cond_0
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 966
    :cond_1
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;

    .line 968
    .local v15, lp:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;
    iget v0, v15, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;->childType:I

    move/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_2

    .line 971
    add-int v23, v17, v22

    sub-int v23, v23, v18

    div-int/lit8 v6, v23, 0x2

    .line 972
    .local v6, center:I
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 973
    .local v9, childWidth:I
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 974
    .local v8, childHeight:I
    div-int/lit8 v23, v9, 0x2

    sub-int v14, v6, v23

    .line 975
    .local v14, left:I
    sub-int v23, v11, v16

    iget v0, v15, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;->bottomMargin:I

    move/from16 v24, v0

    sub-int v13, v23, v24

    .line 978
    .local v13, layoutBottom:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeBottomBound:I

    move/from16 v23, v0

    sub-int v23, v8, v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x3f80

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeOffset:F

    move/from16 v25, v0

    sub-float v24, v24, v25

    mul-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    add-int v5, v13, v23

    .line 980
    .local v5, bottom:I
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getChallengeAlpha()F

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/view/View;->setAlpha(F)V

    .line 981
    sub-int v23, v5, v8

    add-int v24, v14, v9

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v7, v14, v0, v1, v5}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 982
    .end local v5           #bottom:I
    .end local v6           #center:I
    .end local v8           #childHeight:I
    .end local v9           #childWidth:I
    .end local v13           #layoutBottom:I
    .end local v14           #left:I
    :cond_2
    iget v0, v15, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;->childType:I

    move/from16 v23, v0

    const/16 v24, 0x6

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_3

    .line 983
    add-int v23, v17, v22

    sub-int v23, v23, v18

    div-int/lit8 v6, v23, 0x2

    .line 984
    .restart local v6       #center:I
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v23

    div-int/lit8 v23, v23, 0x2

    sub-int v14, v6, v23

    .line 985
    .restart local v14       #left:I
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v23

    add-int v20, v14, v23

    .line 986
    .local v20, right:I
    sub-int v23, v11, v16

    iget v0, v15, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;->bottomMargin:I

    move/from16 v24, v0

    sub-int v5, v23, v24

    .line 987
    .restart local v5       #bottom:I
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v23

    sub-int v21, v5, v23

    .line 988
    .local v21, top:I
    move/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v7, v14, v0, v1, v5}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_1

    .line 991
    .end local v5           #bottom:I
    .end local v6           #center:I
    .end local v14           #left:I
    .end local v20           #right:I
    .end local v21           #top:I
    :cond_3
    iget v0, v15, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;->childType:I

    move/from16 v23, v0

    const/16 v24, 0x8

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_0

    .line 994
    iget v0, v15, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;->childType:I

    move/from16 v23, v0

    const/16 v24, 0x9

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_4

    .line 995
    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_1

    .line 1000
    :cond_4
    iget v0, v15, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;->leftMargin:I

    move/from16 v23, v0

    add-int v23, v23, v17

    iget v0, v15, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;->topMargin:I

    move/from16 v24, v0

    add-int v24, v24, v19

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v25

    add-int v25, v25, v17

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    add-int v26, v26, v19

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_1

    .line 1007
    .end local v7           #child:Landroid/view/View;
    .end local v15           #lp:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mKeyguardLayerForegroundLayout:Landroid/widget/FrameLayout;

    move-object/from16 v23, v0

    if-eqz v23, :cond_6

    .line 1009
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mKeyguardLayerForegroundLayout:Landroid/widget/FrameLayout;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->getBottom()I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mKeyguardLayerForegroundLayout:Landroid/widget/FrameLayout;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v25

    sub-int v24, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->getBottom()I

    move-result v25

    move-object/from16 v0, v23

    move/from16 v1, p2

    move/from16 v2, v24

    move/from16 v3, p4

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 1012
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mHasLayout:Z

    move/from16 v23, v0

    if-nez v23, :cond_7

    .line 1013
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mHasLayout:Z

    .line 1015
    :cond_7
    return-void
.end method

.method protected onMeasure(II)V
    .locals 26
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    .line 836
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    const/high16 v3, 0x4000

    if-ne v2, v3, :cond_0

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    const/high16 v3, 0x4000

    if-eq v2, v3, :cond_1

    .line 838
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "SlidingChallengeLayout must be measured with an exact size"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 842
    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v23

    .line 843
    .local v23, width:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v15

    .line 844
    .local v15, height:I
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1, v15}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->setMeasuredDimension(II)V

    .line 847
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    move-object/from16 v19, v0

    .line 848
    .local v19, oldChallengeView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    move-object/from16 v20, v0

    .line 849
    .local v20, oldExpandChallengeView:Landroid/view/View;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    .line 850
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mExpandChallengeView:Landroid/view/View;

    .line 851
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getChildCount()I

    move-result v13

    .line 855
    .local v13, count:I
    const/16 v16, 0x0

    .local v16, i:I
    :goto_0
    move/from16 v0, v16

    if-ge v0, v13, :cond_d

    .line 856
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 857
    .local v8, child:Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;

    .line 858
    .local v17, lp:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;
    move-object/from16 v0, v17

    iget v2, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;->childType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_8

    .line 859
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    if-eqz v2, :cond_2

    .line 860
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "There may only be one child with layout_isChallenge=\"true\""

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 863
    :cond_2
    instance-of v2, v8, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    if-nez v2, :cond_3

    .line 864
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Challenge must be a KeyguardSecurityContainer"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    move-object v2, v8

    .line 867
    check-cast v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    .line 868
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    move-object/from16 v0, v19

    if-eq v2, v0, :cond_4

    .line 869
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeShowing:Z

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v3, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->setVisibility(I)V

    .line 872
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mHasLayout:Z

    if-nez v2, :cond_5

    .line 874
    const v2, #id@keyguard_selector_view#t

    invoke-virtual {v8, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mHasGlowpad:Z

    .line 855
    :cond_5
    :goto_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 869
    :cond_6
    const/4 v2, 0x4

    goto :goto_1

    .line 874
    :cond_7
    const/4 v2, 0x0

    goto :goto_2

    .line 877
    :cond_8
    move-object/from16 v0, v17

    iget v2, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;->childType:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_b

    .line 878
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mExpandChallengeView:Landroid/view/View;

    if-eqz v2, :cond_9

    .line 879
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "There may only be one child with layout_childType=\"expandChallengeHandle\""

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 883
    :cond_9
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mExpandChallengeView:Landroid/view/View;

    .line 884
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mExpandChallengeView:Landroid/view/View;

    move-object/from16 v0, v20

    if-eq v2, v0, :cond_5

    .line 885
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mExpandChallengeView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeShowing:Z

    if-eqz v2, :cond_a

    const/4 v2, 0x4

    :goto_4
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 886
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mExpandChallengeView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mExpandChallengeClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 885
    :cond_a
    const/4 v2, 0x0

    goto :goto_4

    .line 888
    :cond_b
    move-object/from16 v0, v17

    iget v2, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;->childType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_c

    .line 889
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->setScrimView(Landroid/view/View;)V

    goto :goto_3

    .line 890
    :cond_c
    move-object/from16 v0, v17

    iget v2, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;->childType:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_5

    .line 891
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mWidgetsView:Landroid/view/View;

    goto :goto_3

    .line 898
    .end local v8           #child:Landroid/view/View;
    .end local v17           #lp:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_f

    .line 905
    move/from16 v6, p2

    .line 906
    .local v6, challengeHeightSpec:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getRootView()Landroid/view/View;

    move-result-object v21

    .line 907
    .local v21, root:Landroid/view/View;
    if-eqz v21, :cond_e

    .line 908
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;

    .line 909
    .restart local v17       #lp:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v22

    .line 910
    .local v22, specSize:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sub-int v24, v2, v3

    .line 911
    .local v24, windowHeight:I
    sub-int v14, v24, v22

    .line 912
    .local v14, diff:I
    move-object/from16 v0, v17

    iget v2, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;->maxHeight:I

    sub-int v18, v2, v14

    .line 913
    .local v18, maxChallengeHeight:I
    if-lez v18, :cond_e

    .line 917
    .end local v14           #diff:I
    .end local v17           #lp:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;
    .end local v18           #maxChallengeHeight:I
    .end local v22           #specSize:I
    .end local v24           #windowHeight:I
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move/from16 v4, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 921
    .end local v6           #challengeHeightSpec:I
    .end local v21           #root:Landroid/view/View;
    :cond_f
    const/16 v16, 0x0

    :goto_5
    move/from16 v0, v16

    if-ge v0, v13, :cond_13

    .line 922
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 923
    .restart local v8       #child:Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_11

    .line 921
    :cond_10
    :goto_6
    add-int/lit8 v16, v16, 0x1

    goto :goto_5

    .line 927
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    if-eq v8, v2, :cond_10

    .line 931
    move/from16 v9, p1

    .local v9, parentWidthSpec:I
    move/from16 v11, p2

    .line 932
    .local v11, parentHeightSpec:I
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;

    .line 933
    .restart local v17       #lp:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;
    move-object/from16 v0, v17

    iget v2, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;->childType:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_12

    .line 934
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getRootView()Landroid/view/View;

    move-result-object v21

    .line 935
    .restart local v21       #root:Landroid/view/View;
    if-eqz v21, :cond_12

    .line 939
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v25, v0

    .line 940
    .local v25, windowWidth:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sub-int v24, v2, v3

    .line 941
    .restart local v24       #windowHeight:I
    const/high16 v2, 0x4000

    move/from16 v0, v25

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 943
    const/high16 v2, 0x4000

    move/from16 v0, v24

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 947
    .end local v21           #root:Landroid/view/View;
    .end local v24           #windowHeight:I
    .end local v25           #windowWidth:I
    :cond_12
    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, p0

    invoke-virtual/range {v7 .. v12}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    goto :goto_6

    .line 949
    .end local v8           #child:Landroid/view/View;
    .end local v9           #parentWidthSpec:I
    .end local v11           #parentHeightSpec:I
    .end local v17           #lp:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;
    :cond_13
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "ev"

    .prologue
    const/4 v11, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 647
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v7, :cond_0

    .line 648
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 650
    :cond_0
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 652
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 653
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 722
    :cond_1
    :goto_0
    :pswitch_0
    return v10

    .line 655
    :pswitch_1
    iput-boolean v9, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mBlockDrag:Z

    .line 656
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mGestureStartX:F

    .line 657
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mGestureStartY:F

    goto :goto_0

    .line 661
    :pswitch_2
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mDragging:Z

    if-eqz v7, :cond_2

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->isChallengeInteractionBlocked()Z

    move-result v7

    if-nez v7, :cond_2

    .line 662
    invoke-direct {p0, v9}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->showChallenge(I)V

    .line 664
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->resetTouch()V

    goto :goto_0

    .line 668
    :pswitch_3
    iget v7, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mActivePointerId:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v8

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    if-ne v7, v8, :cond_1

    .line 672
    :pswitch_4
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mDragging:Z

    if-eqz v7, :cond_3

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->isChallengeInteractionBlocked()Z

    move-result v7

    if-nez v7, :cond_3

    .line 673
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v8, 0x3e8

    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mMaxVelocity:I

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 674
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mActivePointerId:I

    invoke-virtual {v7, v8}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v7

    float-to-int v7, v7

    invoke-direct {p0, v7}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->showChallenge(I)V

    .line 676
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->resetTouch()V

    goto :goto_0

    .line 680
    :pswitch_5
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mDragging:Z

    if-nez v7, :cond_5

    iget-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mBlockDrag:Z

    if-nez v7, :cond_5

    iget-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mIsBouncing:Z

    if-nez v7, :cond_5

    .line 681
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 682
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_5

    .line 683
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 684
    .local v5, x:F
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    .line 686
    .local v6, y:F
    invoke-direct {p0, v5, v6}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->isInDragHandle(FF)Z

    move-result v7

    if-nez v7, :cond_4

    iget v7, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mGestureStartY:F

    invoke-direct {p0, v5, v6, v7}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->crossedDragHandle(FFF)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-direct {p0, v5, v6}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->isInChallengeView(FF)Z

    move-result v7

    if-eqz v7, :cond_6

    iget v7, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScrollState:I

    if-ne v7, v11, :cond_6

    :cond_4
    iget v7, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mActivePointerId:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_6

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->isChallengeInteractionBlocked()Z

    move-result v7

    if-nez v7, :cond_6

    .line 690
    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mGestureStartX:F

    .line 691
    iput v6, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mGestureStartY:F

    .line 692
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mActivePointerId:I

    .line 693
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getChallengeBottom()I

    move-result v7

    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mGestureStartChallengeBottom:I

    .line 694
    iput-boolean v10, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mDragging:Z

    .line 695
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    const/4 v8, 0x0

    invoke-virtual {v7, v11, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->setLayerType(ILandroid/graphics/Paint;)V

    .line 701
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v5           #x:F
    .end local v6           #y:F
    :cond_5
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mDragging:Z

    if-eqz v7, :cond_1

    .line 704
    invoke-virtual {p0, v10}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->setScrollState(I)V

    .line 706
    iget v7, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mActivePointerId:I

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 707
    .local v3, index:I
    if-gez v3, :cond_7

    .line 710
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->resetTouch()V

    .line 711
    invoke-direct {p0, v9}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->showChallenge(I)V

    goto/16 :goto_0

    .line 682
    .end local v3           #index:I
    .restart local v1       #count:I
    .restart local v2       #i:I
    .restart local v5       #x:F
    .restart local v6       #y:F
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 714
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v5           #x:F
    .end local v6           #y:F
    .restart local v3       #index:I
    :cond_7
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    .line 715
    .restart local v6       #y:F
    iget v7, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mGestureStartY:F

    sub-float v7, v6, v7

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getLayoutBottom()I

    move-result v8

    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeBottomBound:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 718
    .local v4, pos:F
    iget v7, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mGestureStartChallengeBottom:I

    float-to-int v8, v4

    add-int/2addr v7, v8

    invoke-direct {p0, v7}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->moveChallengeTo(I)Z

    goto/16 :goto_0

    .line 653
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .parameter "child"
    .parameter "focused"

    .prologue
    .line 371
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mIsBouncing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    if-eq p1, v0, :cond_0

    .line 374
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->hideBouncer()V

    .line 376
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 377
    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .parameter "allowIntercept"

    .prologue
    .line 582
    return-void
.end method

.method public setChallengeInteractive(Z)V
    .locals 1
    .parameter "interactive"

    .prologue
    .line 282
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeInteractiveExternal:Z

    .line 283
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mExpandChallengeView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mExpandChallengeView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 286
    :cond_0
    return-void
.end method

.method public setClipChildrenForNewEventView(Z)V
    .locals 1
    .parameter "clipChildren"

    .prologue
    .line 1443
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->setClipChildren(Z)V

    .line 1444
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    if-eqz v0, :cond_0

    .line 1445
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->setClipChildrenForNewEventView(Z)V

    .line 1447
    :cond_0
    return-void
.end method

.method public setHandleAlpha(F)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mExpandChallengeView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mExpandChallengeView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 279
    :cond_0
    return-void
.end method

.method public setOnBouncerStateChangedListener(Lcom/android/internal/policy/impl/keyguard/ChallengeLayout$OnBouncerStateChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 319
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mBouncerListener:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout$OnBouncerStateChangedListener;

    .line 320
    return-void
.end method

.method public setOnChallengeScrolledListener(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$OnChallengeScrolledListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 312
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScrollListener:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$OnChallengeScrolledListener;

    .line 313
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mHasLayout:Z

    if-eqz v0, :cond_0

    .line 314
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->sendInitialListenerUpdates()V

    .line 316
    :cond_0
    return-void
.end method

.method setScrimView(Landroid/view/View;)V
    .locals 2
    .parameter "scrim"

    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScrimView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScrimView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 412
    :cond_0
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScrimView:Landroid/view/View;

    .line 413
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScrimView:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mIsBouncing:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 414
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScrimView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 415
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScrimView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScrimClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 416
    return-void

    .line 413
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method setScrollState(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 390
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScrollState:I

    if-eq v0, p1, :cond_0

    .line 391
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScrollState:I

    .line 393
    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeShowing:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->animateHandle(Z)V

    .line 394
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScrollListener:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$OnChallengeScrolledListener;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScrollListener:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$OnChallengeScrolledListener;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$OnChallengeScrolledListener;->onScrollStateChanged(I)V

    .line 398
    :cond_0
    return-void

    .line 393
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTouchRecepientForKeyguardLayer(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;)V
    .locals 1
    .parameter "glowPadView"

    .prologue
    .line 1415
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mKeyguardLayerForegroundLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1416
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mKeyguardLayerForegroundLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->setTouchRecepient(Landroid/view/View;)V

    .line 1418
    :cond_0
    return-void
.end method

.method public showBouncer()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 519
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mIsBouncing:Z

    if-eqz v1, :cond_1

    .line 541
    :cond_0
    :goto_0
    return-void

    .line 520
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeShowing:Z

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mWasChallengeShowing:Z

    .line 521
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mIsBouncing:Z

    .line 522
    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->showChallenge(Z)V

    .line 523
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScrimView:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 524
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScrimView:Landroid/view/View;

    const-string v2, "alpha"

    new-array v3, v6, [F

    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 525
    .local v0, anim:Landroid/animation/Animator;
    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 526
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$7;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$7;-><init>(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 532
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 534
    .end local v0           #anim:Landroid/animation/Animator;
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    if-eqz v1, :cond_3

    .line 535
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    const/16 v2, 0xfa

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->showBouncer(I)V

    .line 538
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mBouncerListener:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout$OnBouncerStateChangedListener;

    if-eqz v1, :cond_0

    .line 539
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mBouncerListener:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout$OnBouncerStateChangedListener;

    invoke-interface {v1, v6}, Lcom/android/internal/policy/impl/keyguard/ChallengeLayout$OnBouncerStateChangedListener;->onBouncerStateChanged(Z)V

    goto :goto_0
.end method

.method public showChallenge(Z)V
    .locals 1
    .parameter "show"

    .prologue
    .line 1204
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->showChallenge(ZI)V

    .line 1205
    if-nez p1, :cond_0

    .line 1208
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mBlockDrag:Z

    .line 1210
    :cond_0
    return-void
.end method

.method public updateKeyguardLayerVisibility(Z)V
    .locals 1
    .parameter "show"

    .prologue
    .line 1409
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mShowKeyguardLayer:Z

    .line 1410
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mShowKeyguardLayerRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1411
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mShowKeyguardLayerRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->post(Ljava/lang/Runnable;)Z

    .line 1412
    return-void
.end method
