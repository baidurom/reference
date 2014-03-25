.class public Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;
.super Lcom/android/internal/policy/impl/keyguard/PagedView;
.source "KeyguardWidgetPager.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/PagedView$PageSwitchListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/internal/policy/impl/keyguard/ChallengeLayout$OnBouncerStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$ZInterpolator;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$Callbacks;
    }
.end annotation


# static fields
.field private static CAMERA_DISTANCE:F = 0.0f

.field public static final CHILDREN_OUTLINE_FADE_IN_DURATION:I = 0x64

.field public static final CHILDREN_OUTLINE_FADE_OUT_DURATION:I = 0x177

.field private static final CUSTOM_WIDGET_USER_ACTIVITY_TIMEOUT:J = 0x7530L

.field protected static OVERSCROLL_MAX_ROTATION:F = 0.0f

.field private static final PERFORM_OVERSCROLL_ROTATION:Z = true

.field private static final TAG:Ljava/lang/String; = "KeyguardWidgetPager"


# instance fields
.field private BOUNCER_SCALE_FACTOR:F

.field private final mBackgroundWorkerHandler:Landroid/os/Handler;

.field private final mBackgroundWorkerThread:Landroid/os/HandlerThread;

.field private mBouncerZoomInOutDuration:I

.field private mCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$Callbacks;

.field private mCenterSmallWidgetsVertically:Z

.field protected mChildrenOutlineFadeAnimation:Landroid/animation/AnimatorSet;

.field private mHasMeasure:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPage:I

.field protected mScreenCenter:I

.field protected mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

.field private mWidgetToResetAfterFadeOut:I

.field mZInterpolator:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$ZInterpolator;

.field showHintsAfterLayout:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const v0, 0x461c4000

    sput v0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->CAMERA_DISTANCE:F

    .line 51
    const/high16 v0, 0x41f0

    sput v0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->OVERSCROLL_MAX_ROTATION:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, v1, v1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 91
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/keyguard/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$ZInterpolator;

    const/high16 v1, 0x3f00

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$ZInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mZInterpolator:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$ZInterpolator;

    .line 62
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mHasMeasure:Z

    .line 63
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->showHintsAfterLayout:Z

    .line 69
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mPage:I

    .line 75
    const/16 v0, 0xfa

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mBouncerZoomInOutDuration:I

    .line 76
    const v0, 0x3f2b851f

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->BOUNCER_SCALE_FACTOR:F

    .line 92
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getImportantForAccessibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 93
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->setImportantForAccessibility(I)V

    .line 96
    :cond_0
    invoke-virtual {p0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->setPageSwitchListener(Lcom/android/internal/policy/impl/keyguard/PagedView$PageSwitchListener;)V

    .line 98
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "KeyguardWidgetPager Worker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mBackgroundWorkerThread:Landroid/os/HandlerThread;

    .line 99
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mBackgroundWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 100
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mBackgroundWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mBackgroundWorkerHandler:Landroid/os/Handler;

    .line 101
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mWidgetToResetAfterFadeOut:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mWidgetToResetAfterFadeOut:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->updateWidgetFramesImportantForAccessibility()V

    return-void
.end method

.method private captureUserInteraction(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    move-result-object v0

    .line 212
    .local v0, currentWidgetPage:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->onUserInteraction(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private enforceKeyguardWidgetFrame(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 377
    instance-of v0, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    if-nez v0, :cond_0

    .line 378
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "KeyguardWidgetPager children must be KeyguardWidgetFrames"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 381
    :cond_0
    return-void
.end method

.method private updatePageAlphaValues(I)V
    .locals 0
    .parameter "screenCenter"

    .prologue
    .line 459
    return-void
.end method

.method private updateWidgetFrameImportantForAccessibility(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;)V
    .locals 2
    .parameter "frame"

    .prologue
    .line 186
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getContentAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 187
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setImportantForAccessibility(I)V

    .line 191
    :goto_0
    return-void

    .line 189
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setImportantForAccessibility(I)V

    goto :goto_0
.end method

.method private updateWidgetFramesImportantForAccessibility()V
    .locals 3

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getPageCount()I

    move-result v2

    .line 179
    .local v2, pageCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 180
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    move-result-object v0

    .line 181
    .local v0, frame:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->updateWidgetFrameImportantForAccessibility(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;)V

    .line 179
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 183
    .end local v0           #frame:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    :cond_0
    return-void
.end method

.method private userActivity()V
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$Callbacks;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$Callbacks;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$Callbacks;->onUserActivityTimeoutChanged()V

    .line 196
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$Callbacks;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$Callbacks;->userActivity()V

    .line 198
    :cond_0
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;I)V
    .locals 0
    .parameter "child"
    .parameter "index"

    .prologue
    .line 342
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->enforceKeyguardWidgetFrame(Landroid/view/View;)V

    .line 343
    invoke-super {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/PagedView;->addView(Landroid/view/View;I)V

    .line 344
    return-void
.end method

.method public addView(Landroid/view/View;II)V
    .locals 0
    .parameter "child"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 352
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->enforceKeyguardWidgetFrame(Landroid/view/View;)V

    .line 353
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/keyguard/PagedView;->addView(Landroid/view/View;II)V

    .line 354
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 372
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->enforceKeyguardWidgetFrame(Landroid/view/View;)V

    .line 373
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/keyguard/PagedView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 374
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .parameter "child"
    .parameter "params"

    .prologue
    .line 362
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->enforceKeyguardWidgetFrame(Landroid/view/View;)V

    .line 363
    invoke-super {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/PagedView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 364
    return-void
.end method

.method public addWidget(Landroid/view/View;)V
    .locals 1
    .parameter "widget"

    .prologue
    .line 244
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->addWidget(Landroid/view/View;I)V

    .line 245
    return-void
.end method

.method public addWidget(Landroid/view/View;I)V
    .locals 12
    .parameter "widget"
    .parameter "pageIndex"

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v11, 0x0

    .line 285
    instance-of v7, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    if-nez v7, :cond_3

    .line 286
    new-instance v3, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v3, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;-><init>(Landroid/content/Context;)V

    .line 287
    .local v3, frame:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 289
    .local v5, lp:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v7, 0x30

    iput v7, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 293
    invoke-virtual {p1, v11, v11, v11, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 294
    invoke-virtual {v3, p1, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 297
    instance-of v7, p1, Landroid/appwidget/AppWidgetHostView;

    if-eqz v7, :cond_0

    move-object v0, p1

    .line 298
    check-cast v0, Landroid/appwidget/AppWidgetHostView;

    .line 299
    .local v0, awhv:Landroid/appwidget/AppWidgetHostView;
    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v4

    .line 300
    .local v4, info:Landroid/appwidget/AppWidgetProviderInfo;
    iget v7, v4, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_2

    .line 301
    invoke-virtual {v3, v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setWidgetLockedSmall(Z)V

    .line 314
    .end local v0           #awhv:Landroid/appwidget/AppWidgetHostView;
    .end local v4           #info:Landroid/appwidget/AppWidgetProviderInfo;
    .end local v5           #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    :goto_0
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 316
    .local v6, pageLp:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v3, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 317
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mBackgroundWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setWorkerHandler(Landroid/os/Handler;)V

    .line 319
    if-ne p2, v8, :cond_4

    .line 320
    invoke-virtual {p0, v3, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 326
    :goto_1
    if-ne p1, v3, :cond_5

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getContent()Landroid/view/View;

    move-result-object v1

    .line 327
    .local v1, content:Landroid/view/View;
    :goto_2
    if-eqz v1, :cond_1

    .line 328
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mContext:Landroid/content/Context;

    const v8, #string@keyguard_accessibility_widget#t

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 331
    .local v2, contentDescription:Ljava/lang/String;
    invoke-virtual {v3, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 333
    .end local v2           #contentDescription:Ljava/lang/String;
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->updateWidgetFrameImportantForAccessibility(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;)V

    .line 334
    return-void

    .line 304
    .end local v1           #content:Landroid/view/View;
    .end local v6           #pageLp:Landroid/view/ViewGroup$LayoutParams;
    .restart local v0       #awhv:Landroid/appwidget/AppWidgetHostView;
    .restart local v4       #info:Landroid/appwidget/AppWidgetProviderInfo;
    .restart local v5       #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    invoke-virtual {v3, v9}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setWidgetLockedSmall(Z)V

    .line 305
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mCenterSmallWidgetsVertically:Z

    if-eqz v7, :cond_0

    .line 306
    const/16 v7, 0x11

    iput v7, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    .end local v0           #awhv:Landroid/appwidget/AppWidgetHostView;
    .end local v3           #frame:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    .end local v4           #info:Landroid/appwidget/AppWidgetProviderInfo;
    .end local v5           #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_3
    move-object v3, p1

    .line 311
    check-cast v3, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    .restart local v3       #frame:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    goto :goto_0

    .line 322
    .restart local v6       #pageLp:Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    invoke-virtual {p0, v3, p2, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_5
    move-object v1, p1

    .line 326
    goto :goto_2
.end method

.method animateOutlinesAndSidePages(Z)V
    .locals 1
    .parameter "show"

    .prologue
    .line 635
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->animateOutlinesAndSidePages(ZI)V

    .line 636
    return-void
.end method

.method animateOutlinesAndSidePages(ZI)V
    .locals 12
    .parameter "show"
    .parameter "duration"

    .prologue
    .line 647
    const-string v9, "KeyguardWidgetPager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "animateOutlinesAndSidePages show="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", duration="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mChildrenOutlineFadeAnimation:Landroid/animation/AnimatorSet;

    if-eqz v9, :cond_0

    .line 649
    const-string v9, "KeyguardWidgetPager"

    const-string v10, "animateOutlinesAndSidePages mChildrenOutlineFadeAnimation != null, cancel it"

    invoke-static {v9, v10}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mChildrenOutlineFadeAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->cancel()V

    .line 651
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mChildrenOutlineFadeAnimation:Landroid/animation/AnimatorSet;

    .line 653
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v4

    .line 655
    .local v4, count:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 657
    .local v2, anims:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const/4 v9, -0x1

    if-ne p2, v9, :cond_1

    .line 658
    if-eqz p1, :cond_2

    const/16 p2, 0x64

    .line 662
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getNextPage()I

    move-result v5

    .line 663
    .local v5, curPage:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    if-ge v8, v4, :cond_6

    .line 665
    if-eqz p1, :cond_3

    .line 666
    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mScreenCenter:I

    invoke-virtual {p0, v9, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getAlphaForPage(II)F

    move-result v6

    .line 672
    .local v6, finalContentAlpha:F
    :goto_2
    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    move-result-object v3

    .line 674
    .local v3, child:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    const-string v9, "contentAlpha"

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    aput v6, v10, v11

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 675
    .local v1, alpha:Landroid/animation/PropertyValuesHolder;
    const/4 v9, 0x1

    new-array v9, v9, [Landroid/animation/PropertyValuesHolder;

    const/4 v10, 0x0

    aput-object v1, v9, v10

    invoke-static {v3, v9}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 676
    .local v0, a:Landroid/animation/ObjectAnimator;
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 678
    if-eqz p1, :cond_5

    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mScreenCenter:I

    invoke-virtual {p0, v9, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getOutlineAlphaForPage(II)F

    move-result v7

    .line 679
    .local v7, finalOutlineAlpha:F
    :goto_3
    invoke-virtual {v3, p0, p1, v7, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->fadeFrame(Ljava/lang/Object;ZFI)V

    .line 663
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 658
    .end local v0           #a:Landroid/animation/ObjectAnimator;
    .end local v1           #alpha:Landroid/animation/PropertyValuesHolder;
    .end local v3           #child:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    .end local v5           #curPage:I
    .end local v6           #finalContentAlpha:F
    .end local v7           #finalOutlineAlpha:F
    .end local v8           #i:I
    :cond_2
    const/16 p2, 0x177

    goto :goto_0

    .line 667
    .restart local v5       #curPage:I
    .restart local v8       #i:I
    :cond_3
    if-nez p1, :cond_4

    if-ne v8, v5, :cond_4

    .line 668
    const/high16 v6, 0x3f80

    .restart local v6       #finalContentAlpha:F
    goto :goto_2

    .line 670
    .end local v6           #finalContentAlpha:F
    :cond_4
    const/4 v6, 0x0

    .restart local v6       #finalContentAlpha:F
    goto :goto_2

    .line 678
    .restart local v0       #a:Landroid/animation/ObjectAnimator;
    .restart local v1       #alpha:Landroid/animation/PropertyValuesHolder;
    .restart local v3       #child:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    :cond_5
    const/4 v7, 0x0

    goto :goto_3

    .line 682
    .end local v0           #a:Landroid/animation/ObjectAnimator;
    .end local v1           #alpha:Landroid/animation/PropertyValuesHolder;
    .end local v3           #child:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    .end local v6           #finalContentAlpha:F
    :cond_6
    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mChildrenOutlineFadeAnimation:Landroid/animation/AnimatorSet;

    .line 683
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mChildrenOutlineFadeAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v9, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 685
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mChildrenOutlineFadeAnimation:Landroid/animation/AnimatorSet;

    int-to-long v10, p2

    invoke-virtual {v9, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 686
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mChildrenOutlineFadeAnimation:Landroid/animation/AnimatorSet;

    new-instance v10, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$3;

    invoke-direct {v10, p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$3;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;Z)V

    invoke-virtual {v9, v10}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 710
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mChildrenOutlineFadeAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->start()V

    .line 711
    return-void
.end method

.method backgroundAlphaInterpolator(F)F
    .locals 1
    .parameter "r"

    .prologue
    .line 455
    const/high16 v0, 0x3f80

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method boundByReorderablePages(Z[I)V
    .locals 4
    .parameter "isReordering"
    .parameter "range"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 528
    if-eqz p1, :cond_1

    .line 530
    :goto_0
    aget v0, p2, v3

    aget v1, p2, v2

    if-lt v0, v1, :cond_0

    aget v0, p2, v3

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->isWidgetPage(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 531
    aget v0, p2, v3

    add-int/lit8 v0, v0, -0x1

    aput v0, p2, v3

    goto :goto_0

    .line 533
    :cond_0
    :goto_1
    aget v0, p2, v2

    aget v1, p2, v3

    if-gt v0, v1, :cond_1

    aget v0, p2, v2

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->isWidgetPage(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 534
    aget v0, p2, v2

    add-int/lit8 v0, v0, 0x1

    aput v0, p2, v2

    goto :goto_1

    .line 537
    :cond_1
    return-void
.end method

.method protected disablePageContentLayers()V
    .locals 3

    .prologue
    .line 424
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v0

    .line 425
    .local v0, children:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 426
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->disableHardwareLayersForContent()V

    .line 425
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 428
    :cond_0
    return-void
.end method

.method protected enablePageContentLayers()V
    .locals 3

    .prologue
    .line 417
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v0

    .line 418
    .local v0, children:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 419
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->enableHardwareLayersForContent()V

    .line 418
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 421
    :cond_0
    return-void
.end method

.method public getAlphaForPage(II)F
    .locals 1
    .parameter "screenCenter"
    .parameter "index"

    .prologue
    .line 462
    const/high16 v0, 0x3f80

    return v0
.end method

.method public getOutlineAlphaForPage(II)F
    .locals 2
    .parameter "screenCenter"
    .parameter "index"

    .prologue
    .line 466
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getAlphaForPage(II)F

    move-result v0

    const v1, 0x3f19999a

    mul-float/2addr v0, v1

    return v0
.end method

.method public getUserActivityTimeout()J
    .locals 5

    .prologue
    .line 220
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mPage:I

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 221
    .local v0, page:Landroid/view/View;
    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    move-object v1, v0

    .line 222
    check-cast v1, Landroid/view/ViewGroup;

    .line 223
    .local v1, vg:Landroid/view/ViewGroup;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 224
    .local v2, view:Landroid/view/View;
    instance-of v3, v2, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;

    if-nez v3, :cond_0

    instance-of v3, v2, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;

    if-nez v3, :cond_0

    .line 226
    const-wide/16 v3, 0x7530

    .line 229
    .end local v1           #vg:Landroid/view/ViewGroup;
    .end local v2           #view:Landroid/view/View;
    :goto_0
    return-wide v3

    :cond_0
    const-wide/16 v3, -0x1

    goto :goto_0
.end method

.method public getWidgetPageAt(I)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    .locals 1
    .parameter "index"

    .prologue
    .line 385
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    return-object v0
.end method

.method public getWidgetPageIndex(Landroid/view/View;)I
    .locals 1
    .parameter "view"

    .prologue
    .line 742
    instance-of v0, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    if-eqz v0, :cond_0

    .line 743
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 746
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->indexOfChild(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method

.method public getWidgetToResetOnPageFadeOut()I
    .locals 1

    .prologue
    .line 643
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mWidgetToResetAfterFadeOut:I

    return v0
.end method

.method hideOutlinesAndSidePages()V
    .locals 2

    .prologue
    .line 562
    const-string v0, "KeyguardWidgetPager"

    const-string v1, "hideOutlinesAndSidePages"

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->animateOutlinesAndSidePages(Z)V

    .line 564
    return-void
.end method

.method isAddPage(I)Z
    .locals 3
    .parameter "pageIndex"

    .prologue
    .line 813
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 814
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    const v2, #id@keyguard_add_widget#t

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isCameraPage(I)Z
    .locals 2
    .parameter "pageIndex"

    .prologue
    .line 818
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 819
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected isOverScrollChild(IF)Z
    .locals 6
    .parameter "index"
    .parameter "scrollProgress"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 470
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mOverScrollX:I

    if-ltz v3, :cond_0

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mOverScrollX:I

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mMaxScrollX:I

    if-le v3, v4, :cond_3

    :cond_0
    move v0, v1

    .line 471
    .local v0, isInOverscroll:Z
    :goto_0
    if-eqz v0, :cond_4

    if-nez p1, :cond_1

    cmpg-float v3, p2, v5

    if-ltz v3, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne p1, v3, :cond_4

    cmpl-float v3, p2, v5

    if-lez v3, :cond_4

    :cond_2
    :goto_1
    return v1

    .end local v0           #isInOverscroll:Z
    :cond_3
    move v0, v2

    .line 470
    goto :goto_0

    .restart local v0       #isInOverscroll:Z
    :cond_4
    move v1, v2

    .line 471
    goto :goto_1
.end method

.method public isWidgetPage(I)Z
    .locals 4
    .parameter "pageIndex"

    .prologue
    const/4 v2, 0x0

    .line 512
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v3

    if-lt p1, v3, :cond_1

    .line 520
    :cond_0
    :goto_0
    return v2

    .line 515
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 516
    .local v1, v:Landroid/view/View;
    if-eqz v1, :cond_0

    instance-of v3, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    if-eqz v3, :cond_0

    move-object v0, v1

    .line 517
    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    .line 518
    .local v0, kwf:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getContentAppWidgetId()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onAddView(Landroid/view/View;I)V
    .locals 4
    .parameter "v"
    .parameter "index"

    .prologue
    .line 262
    move-object v2, p1

    check-cast v2, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getContentAppWidgetId()I

    move-result v0

    .line 263
    .local v0, appWidgetId:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mTempVisiblePagesRange:[I

    array-length v2, v2

    new-array v1, v2, [I

    .line 264
    .local v1, pagesRange:[I
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getVisiblePages([I)V

    .line 265
    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->boundByReorderablePages(Z[I)V

    .line 266
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$Callbacks;

    if-eqz v2, :cond_0

    .line 267
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$Callbacks;

    invoke-interface {v2, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$Callbacks;->onAddView(Landroid/view/View;)V

    .line 271
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mBackgroundWorkerHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$2;

    invoke-direct {v3, p0, v0, p2, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$2;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;II[I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 277
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 594
    invoke-super {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->onAttachedToWindow()V

    .line 595
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mHasMeasure:Z

    .line 596
    return-void
.end method

.method public onBouncerStateChanged(Z)V
    .locals 0
    .parameter "bouncerActive"

    .prologue
    .line 759
    if-eqz p1, :cond_0

    .line 760
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->zoomOutToBouncer()V

    .line 764
    :goto_0
    return-void

    .line 762
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->zoomInFromBouncer()V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 105
    invoke-super {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->onDetachedFromWindow()V

    .line 108
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mBackgroundWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 109
    return-void
.end method

.method protected onEndReordering()V
    .locals 0

    .prologue
    .line 552
    invoke-super {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->onEndReordering()V

    .line 553
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->hideOutlinesAndSidePages()V

    .line 554
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 207
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->captureUserInteraction(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 600
    invoke-super/range {p0 .. p5}, Lcom/android/internal/policy/impl/keyguard/PagedView;->onLayout(ZIIII)V

    .line 601
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .parameter "v"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 716
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->isChallengeShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->isChallengeOverlapping()Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    .line 718
    .local v0, isChallengeOverlapping:Z
    :goto_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->startReordering()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 721
    :goto_1
    return v1

    .end local v0           #isChallengeOverlapping:Z
    :cond_0
    move v0, v2

    .line 716
    goto :goto_0

    .restart local v0       #isChallengeOverlapping:Z
    :cond_1
    move v1, v2

    .line 721
    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 9
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 604
    const/4 v4, -0x1

    .line 605
    .local v4, maxChallengeTop:I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 606
    .local v5, parent:Landroid/view/View;
    const/4 v0, 0x0

    .line 610
    .local v0, challengeShowing:Z
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    instance-of v8, v8, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    if-eqz v8, :cond_1

    .line 611
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    .line 612
    .local v6, scl:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;
    invoke-virtual {v6}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getMaxChallengeTop()I

    move-result v7

    .line 616
    .local v7, top:I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getPaddingTop()I

    move-result v8

    sub-int v4, v7, v8

    .line 617
    invoke-virtual {v6}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->isChallengeShowing()Z

    move-result v0

    .line 619
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v1

    .line 620
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 621
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    move-result-object v2

    .line 622
    .local v2, frame:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    invoke-virtual {v2, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setMaxChallengeTop(I)V

    .line 625
    if-eqz v0, :cond_0

    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mCurrentPage:I

    if-ne v3, v8, :cond_0

    iget-boolean v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mHasMeasure:Z

    if-nez v8, :cond_0

    .line 626
    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->shrinkWidget()V

    .line 620
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 630
    .end local v1           #count:I
    .end local v2           #frame:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    .end local v3           #i:I
    .end local v6           #scl:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;
    .end local v7           #top:I
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/PagedView;->onMeasure(II)V

    .line 631
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mHasMeasure:Z

    .line 632
    return-void
.end method

.method protected onPageBeginMoving()V
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->onPageBeginMoving()V

    .line 397
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->isReordering(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 398
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->showOutlinesAndSidePages()V

    .line 400
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->userActivity()V

    .line 401
    return-void
.end method

.method protected onPageEndMoving()V
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->onPageEndMoving()V

    .line 411
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->isReordering(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 412
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->hideOutlinesAndSidePages()V

    .line 414
    :cond_1
    return-void
.end method

.method public onPageSwitched(Landroid/view/View;I)V
    .locals 9
    .parameter "newPage"
    .parameter "newPageIndex"

    .prologue
    const/4 v8, 0x0

    .line 128
    const/4 v4, 0x0

    .line 129
    .local v4, showingStatusWidget:Z
    instance-of v6, p1, Landroid/view/ViewGroup;

    if-eqz v6, :cond_0

    move-object v5, p1

    .line 130
    check-cast v5, Landroid/view/ViewGroup;

    .line 131
    .local v5, vg:Landroid/view/ViewGroup;
    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    instance-of v6, v6, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;

    if-eqz v6, :cond_0

    .line 132
    const/4 v4, 0x1

    .line 137
    .end local v5           #vg:Landroid/view/ViewGroup;
    :cond_0
    if-eqz v4, :cond_5

    .line 138
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getSystemUiVisibility()I

    move-result v6

    const/high16 v7, 0x80

    or-int/2addr v6, v7

    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->setSystemUiVisibility(I)V

    .line 144
    :goto_0
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mPage:I

    if-eq v6, p2, :cond_3

    .line 145
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mPage:I

    .line 146
    .local v2, oldPageIndex:I
    iput p2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mPage:I

    .line 147
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->userActivity()V

    .line 148
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    move-result-object v3

    .line 149
    .local v3, oldWidgetPage:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    if-eqz v3, :cond_1

    .line 150
    invoke-virtual {v3, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->onActive(Z)V

    .line 152
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    move-result-object v1

    .line 153
    .local v1, newWidgetPage:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    if-eqz v1, :cond_2

    .line 154
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->onActive(Z)V

    .line 155
    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->requestAccessibilityFocus()Z

    .line 157
    :cond_2
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mParent:Landroid/view/ViewParent;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 158
    const/16 v6, 0x1000

    invoke-static {v6}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 160
    .local v0, event:Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 161
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 162
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mParent:Landroid/view/ViewParent;

    invoke-interface {v6, p0, v0}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 165
    .end local v0           #event:Landroid/view/accessibility/AccessibilityEvent;
    .end local v1           #newWidgetPage:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    .end local v2           #oldPageIndex:I
    .end local v3           #oldWidgetPage:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    :cond_3
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    if-eqz v6, :cond_4

    .line 166
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    invoke-virtual {v6, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->onPageSwitched(Landroid/view/View;I)V

    .line 168
    :cond_4
    return-void

    .line 140
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getSystemUiVisibility()I

    move-result v6

    const v7, -0x800001

    and-int/2addr v6, v7

    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->setSystemUiVisibility(I)V

    goto :goto_0
.end method

.method public onPageSwitching(Landroid/view/View;I)V
    .locals 1
    .parameter "newPage"
    .parameter "newPageIndex"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->onPageSwitching(Landroid/view/View;I)V

    .line 124
    :cond_0
    return-void
.end method

.method public onRemoveView(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 249
    move-object v1, p1

    check-cast v1, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getContentAppWidgetId()I

    move-result v0

    .line 250
    .local v0, appWidgetId:I
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$Callbacks;

    if-eqz v1, :cond_0

    .line 251
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$Callbacks;

    invoke-interface {v1, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$Callbacks;->onRemoveView(Landroid/view/View;)V

    .line 253
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mBackgroundWorkerHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$1;

    invoke-direct {v2, p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 259
    return-void
.end method

.method protected onStartReordering()V
    .locals 0

    .prologue
    .line 545
    invoke-super {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->onStartReordering()V

    .line 546
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->enablePageContentLayers()V

    .line 547
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->reorderStarting()V

    .line 548
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 202
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->captureUserInteraction(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onUnhandledTap(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "ev"

    .prologue
    .line 389
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->showPagingFeedback()V

    .line 390
    return-void
.end method

.method protected overScroll(F)V
    .locals 0
    .parameter "amount"

    .prologue
    .line 451
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->acceleratedOverScroll(F)V

    .line 452
    return-void
.end method

.method public removeWidget(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 725
    instance-of v2, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    if-eqz v2, :cond_0

    .line 726
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->removeView(Landroid/view/View;)V

    .line 739
    :goto_0
    return-void

    .line 730
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getWidgetPageIndex(Landroid/view/View;)I

    move-result v1

    .line 731
    .local v1, pos:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 732
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    .line 733
    .local v0, frame:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->removeView(Landroid/view/View;)V

    .line 734
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 736
    .end local v0           #frame:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    :cond_1
    const-string v2, "KeyguardWidgetPager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeWidget() can\'t find:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected reorderStarting()V
    .locals 0

    .prologue
    .line 540
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->showOutlinesAndSidePages()V

    .line 541
    return-void
.end method

.method protected screenScrolled(I)V
    .locals 10
    .parameter "screenCenter"

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 477
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mScreenCenter:I

    .line 478
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->updatePageAlphaValues(I)V

    .line 479
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v6

    if-ge v1, v6, :cond_5

    .line 480
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    move-result-object v5

    .line 481
    .local v5, v:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mDragView:Landroid/view/View;

    if-ne v5, v6, :cond_1

    .line 479
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 482
    :cond_1
    if-eqz v5, :cond_0

    .line 483
    invoke-virtual {p0, p1, v5, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getScrollProgress(ILandroid/view/View;I)F

    move-result v4

    .line 485
    .local v4, scrollProgress:F
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mDensity:F

    sget v8, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->CAMERA_DISTANCE:F

    mul-float/2addr v6, v8

    invoke-virtual {v5, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setCameraDistance(F)V

    .line 487
    invoke-virtual {p0, v1, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->isOverScrollChild(IF)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 488
    invoke-virtual {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getMeasuredWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v2, v6

    .line 489
    .local v2, pivotX:F
    invoke-virtual {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getMeasuredHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v3, v6

    .line 490
    .local v3, pivotY:F
    invoke-virtual {v5, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setPivotX(F)V

    .line 491
    invoke-virtual {v5, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setPivotY(F)V

    .line 492
    sget v6, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->OVERSCROLL_MAX_ROTATION:F

    neg-float v6, v6

    mul-float/2addr v6, v4

    invoke-virtual {v5, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setRotationY(F)V

    .line 493
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpg-float v6, v4, v9

    if-gez v6, :cond_2

    const/4 v6, 0x1

    :goto_2
    invoke-virtual {v5, v8, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setOverScrollAmount(FZ)V

    .line 499
    .end local v2           #pivotX:F
    .end local v3           #pivotY:F
    :goto_3
    invoke-virtual {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getAlpha()F

    move-result v0

    .line 502
    .local v0, alpha:F
    cmpl-float v6, v0, v9

    if-nez v6, :cond_4

    .line 503
    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setVisibility(I)V

    goto :goto_1

    .end local v0           #alpha:F
    .restart local v2       #pivotX:F
    .restart local v3       #pivotY:F
    :cond_2
    move v6, v7

    .line 493
    goto :goto_2

    .line 495
    .end local v2           #pivotX:F
    .end local v3           #pivotY:F
    :cond_3
    invoke-virtual {v5, v9}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setRotationY(F)V

    .line 496
    invoke-virtual {v5, v9, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setOverScrollAmount(FZ)V

    goto :goto_3

    .line 504
    .restart local v0       #alpha:F
    :cond_4
    invoke-virtual {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_0

    .line 505
    invoke-virtual {v5, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setVisibility(I)V

    goto :goto_1

    .line 509
    .end local v0           #alpha:F
    .end local v4           #scrollProgress:F
    .end local v5           #v:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    :cond_5
    return-void
.end method

.method public sendAccessibilityEvent(I)V
    .locals 1
    .parameter "eventType"

    .prologue
    .line 172
    const/16 v0, 0x1000

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->isPageMoving()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->sendAccessibilityEvent(I)V

    .line 175
    :cond_1
    return-void
.end method

.method setBouncerAnimationDuration(I)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 767
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mBouncerZoomInOutDuration:I

    .line 768
    return-void
.end method

.method public setCallbacks(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$Callbacks;)V
    .locals 0
    .parameter "callbacks"

    .prologue
    .line 233
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$Callbacks;

    .line 234
    return-void
.end method

.method setCurrentPage(I)V
    .locals 0
    .parameter "currentPage"

    .prologue
    .line 588
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->setCurrentPage(I)V

    .line 589
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->updateWidgetFramesImportantForAccessibility()V

    .line 590
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 117
    return-void
.end method

.method protected setPageHoveringOverDeleteDropTarget(IZ)V
    .locals 1
    .parameter "viewIndex"
    .parameter "isHovering"

    .prologue
    .line 752
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    move-result-object v0

    .line 753
    .local v0, child:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    invoke-virtual {v0, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setIsHoveringOverDeleteDropTarget(Z)V

    .line 754
    return-void
.end method

.method public setViewStateManager(Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;)V
    .locals 0
    .parameter "viewStateManager"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    .line 113
    return-void
.end method

.method public setWidgetToResetOnPageFadeOut(I)V
    .locals 0
    .parameter "widget"

    .prologue
    .line 639
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mWidgetToResetAfterFadeOut:I

    .line 640
    return-void
.end method

.method protected shouldSetTopAlignedPivotForWidget(I)Z
    .locals 1
    .parameter "childIndex"

    .prologue
    .line 824
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->isCameraPage(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->shouldSetTopAlignedPivotForWidget(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showInitialPageHints()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 567
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v1

    .line 568
    .local v1, count:I
    const-string v3, "KeyguardWidgetPager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showInitialPageHints childCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mCurrentPage="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mCurrentPage:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 570
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    move-result-object v0

    .line 571
    .local v0, child:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mCurrentPage:I

    if-eq v2, v3, :cond_0

    .line 572
    const/4 v3, 0x1

    const v4, 0x3f19999a

    const/16 v5, 0x64

    invoke-virtual {v0, p0, v3, v4, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->fadeFrame(Ljava/lang/Object;ZFI)V

    .line 574
    invoke-virtual {v0, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setContentAlpha(F)V

    .line 569
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 576
    :cond_0
    invoke-virtual {v0, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setBackgroundAlpha(F)V

    .line 577
    const/high16 v3, 0x3f80

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setContentAlpha(F)V

    goto :goto_1

    .line 580
    .end local v0           #child:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    :cond_1
    return-void
.end method

.method showOutlinesAndSidePages()V
    .locals 2

    .prologue
    .line 557
    const-string v0, "KeyguardWidgetPager"

    const-string v1, "showOutlinesAndSidePages"

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->animateOutlinesAndSidePages(Z)V

    .line 559
    return-void
.end method

.method public showPagingFeedback()V
    .locals 0

    .prologue
    .line 217
    return-void
.end method

.method public showSidePageHints()V
    .locals 2

    .prologue
    .line 583
    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->animateOutlinesAndSidePages(ZI)V

    .line 584
    return-void
.end method

.method zoomInFromBouncer()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v5, 0x3f80

    .line 772
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 773
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 775
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 776
    .local v0, currentPage:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v1

    cmpg-float v1, v1, v5

    if-ltz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getScaleY()F

    move-result v1

    cmpg-float v1, v1, v5

    if-gez v1, :cond_2

    .line 777
    :cond_1
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    .line 778
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/animation/Animator;

    const-string v3, "scaleX"

    new-array v4, v7, [F

    aput v5, v4, v6

    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v6

    const-string v3, "scaleY"

    new-array v4, v7, [F

    aput v5, v4, v6

    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 781
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mBouncerZoomInOutDuration:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 782
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x3fc0

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 783
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 785
    :cond_2
    return-void
.end method

.method zoomOutToBouncer()V
    .locals 9

    .prologue
    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 789
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 790
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 792
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getCurrentPage()I

    move-result v0

    .line 793
    .local v0, curPage:I
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    .line 794
    .local v1, currentPage:Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->shouldSetTopAlignedPivotForWidget(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 795
    invoke-virtual {v1, v3}, Landroid/view/View;->setPivotY(F)V

    .line 798
    invoke-virtual {v1, v3}, Landroid/view/View;->setPivotX(F)V

    .line 799
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotX(F)V

    .line 801
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getScaleX()F

    move-result v2

    cmpg-float v2, v2, v4

    if-ltz v2, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getScaleY()F

    move-result v2

    cmpg-float v2, v2, v4

    if-ltz v2, :cond_2

    .line 802
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    .line 803
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    const-string v4, "scaleX"

    new-array v5, v8, [F

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->BOUNCER_SCALE_FACTOR:F

    aput v6, v5, v7

    invoke-static {v1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v7

    const-string v4, "scaleY"

    new-array v5, v8, [F

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->BOUNCER_SCALE_FACTOR:F

    aput v6, v5, v7

    invoke-static {v1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 806
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mBouncerZoomInOutDuration:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 807
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v4, 0x3fc0

    invoke-direct {v3, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 808
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 810
    :cond_2
    return-void
.end method
