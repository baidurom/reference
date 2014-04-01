.class public Landroid/widget/BounceGallery;
.super Landroid/widget/AbsSpinner;
.source "BounceGallery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/BounceGallery$OnSelectionChangeListener;,
        Landroid/widget/BounceGallery$FlingRunnable;,
        Landroid/widget/BounceGallery$CheckForLongPress;,
        Landroid/widget/BounceGallery$WindowRunnnable;,
        Landroid/widget/BounceGallery$CheckForTap;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final DBG_KEY:Z = true

.field private static final DBG_LAYOUT:Z = true

.field private static final DBG_MOTION:Z = true

.field private static final TAG:Ljava/lang/String; = "BounceGallery"

.field static final TOUCH_MODE_DOWN:I = 0x0

.field static final TOUCH_MODE_FLING:I = 0x2

.field static final TOUCH_MODE_OVERFLING:I = 0x4

.field static final TOUCH_MODE_OVERSCROLL:I = 0x3

.field static final TOUCH_MODE_REST:I = -0x1

.field static final TOUCH_MODE_SCROLL:I = 0x1


# instance fields
.field private mAnimationDuration:I

.field private mContextMenuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;

.field private mDirection:I

.field private mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

.field private mDistanceLeft:I

.field private mDownTouchPosition:I

.field private mDownTouchView:Landroid/view/View;

.field private mFlingRunnable:Landroid/widget/BounceGallery$FlingRunnable;

.field private mGravity:I

.field private mLastMotionX:I

.field private mLeftMost:I

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mNeedOverscroll:Z

.field private mOverflingDistance:I

.field private mOverscrollDistance:I

.field private mPendingCheckForLongPress:Landroid/widget/BounceGallery$CheckForLongPress;

.field private mPendingCheckForTap:Ljava/lang/Runnable;

.field private mReceivedInvokeKeyDown:Z

.field private mRightMost:I

.field private mSelectedChild:Landroid/view/View;

.field private mSelectionChangeListener:Landroid/widget/BounceGallery$OnSelectionChangeListener;

.field private mShouldCallbackDuringFling:Z

.field private mShouldCallbackOnUnselectedItemClick:Z

.field private mShouldStopFling:Z

.field private mSpacing:I

.field private mSuppressSelectionChanged:Z

.field private mTouchMode:I

.field private mTouchSlop:I

.field private mUnselectedAlpha:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 259
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/BounceGallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 260
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 263
    const v0, #attr@galleryStyle#t

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/BounceGallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 264
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v11, 0x1

    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 267
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 93
    iput v9, p0, Landroid/widget/BounceGallery;->mSpacing:I

    .line 99
    const/16 v7, 0x190

    iput v7, p0, Landroid/widget/BounceGallery;->mAnimationDuration:I

    .line 143
    new-instance v7, Landroid/widget/BounceGallery$FlingRunnable;

    invoke-direct {v7, p0}, Landroid/widget/BounceGallery$FlingRunnable;-><init>(Landroid/widget/BounceGallery;)V

    iput-object v7, p0, Landroid/widget/BounceGallery;->mFlingRunnable:Landroid/widget/BounceGallery$FlingRunnable;

    .line 149
    new-instance v7, Landroid/widget/BounceGallery$1;

    invoke-direct {v7, p0}, Landroid/widget/BounceGallery$1;-><init>(Landroid/widget/BounceGallery;)V

    iput-object v7, p0, Landroid/widget/BounceGallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    .line 173
    iput-boolean v11, p0, Landroid/widget/BounceGallery;->mShouldCallbackDuringFling:Z

    .line 178
    iput-boolean v11, p0, Landroid/widget/BounceGallery;->mShouldCallbackOnUnselectedItemClick:Z

    .line 224
    iput v10, p0, Landroid/widget/BounceGallery;->mTouchMode:I

    .line 249
    iput v9, p0, Landroid/widget/BounceGallery;->mDirection:I

    .line 269
    iget-object v7, p0, Landroid/widget/BounceGallery;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "window"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    .line 272
    .local v6, windowManager:Landroid/view/WindowManager;
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v7

    div-int/lit8 v7, v7, 0x3

    iput v7, p0, Landroid/widget/BounceGallery;->mOverscrollDistance:I

    .line 273
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v7

    div-int/lit8 v7, v7, 0x3

    iput v7, p0, Landroid/widget/BounceGallery;->mOverflingDistance:I

    .line 275
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v7

    iput v7, p0, Landroid/widget/BounceGallery;->mTouchSlop:I

    .line 276
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v7

    iput v7, p0, Landroid/widget/BounceGallery;->mMinimumVelocity:I

    .line 277
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v7

    iput v7, p0, Landroid/widget/BounceGallery;->mMaximumVelocity:I

    .line 278
    invoke-virtual {p0, v9}, Landroid/widget/BounceGallery;->setHorizontalScrollBarEnabled(Z)V

    .line 280
    sget-object v7, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {p1, v7}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 281
    .local v2, av:Landroid/content/res/TypedArray;
    invoke-virtual {p0, v2}, Landroid/widget/BounceGallery;->initializeScrollbars(Landroid/content/res/TypedArray;)V

    .line 282
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 284
    sget-object v7, Lcom/android/internal/R$styleable;->Gallery:[I

    invoke-virtual {p1, p2, v7, p3, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 287
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 288
    .local v3, index:I
    if-ltz v3, :cond_0

    .line 289
    invoke-virtual {p0, v3}, Landroid/widget/BounceGallery;->setGravity(I)V

    .line 292
    :cond_0
    invoke-virtual {v0, v11, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 294
    .local v1, animationDuration:I
    if-lez v1, :cond_1

    .line 295
    invoke-virtual {p0, v1}, Landroid/widget/BounceGallery;->setAnimationDuration(I)V

    .line 298
    :cond_1
    const/4 v7, 0x2

    invoke-virtual {v0, v7, v9}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    .line 300
    .local v4, spacing:I
    invoke-virtual {p0, v4}, Landroid/widget/BounceGallery;->setSpacing(I)V

    .line 302
    const/4 v7, 0x3

    const/high16 v8, 0x3f00

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    .line 304
    .local v5, unselectedAlpha:F
    invoke-virtual {p0, v5}, Landroid/widget/BounceGallery;->setUnselectedAlpha(F)V

    .line 306
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 309
    iget v7, p0, Landroid/widget/BounceGallery;->mGroupFlags:I

    or-int/lit16 v7, v7, 0x400

    iput v7, p0, Landroid/widget/BounceGallery;->mGroupFlags:I

    .line 310
    iget v7, p0, Landroid/widget/BounceGallery;->mGroupFlags:I

    or-int/lit16 v7, v7, 0x800

    iput v7, p0, Landroid/widget/BounceGallery;->mGroupFlags:I

    .line 311
    return-void
.end method

.method static synthetic access$002(Landroid/widget/BounceGallery;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-boolean p1, p0, Landroid/widget/BounceGallery;->mSuppressSelectionChanged:Z

    return p1
.end method

.method static synthetic access$1000(Landroid/widget/BounceGallery;Landroid/view/View;IJ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 83
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/BounceGallery;->performLongPress(Landroid/view/View;IJ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Landroid/widget/BounceGallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Landroid/widget/BounceGallery;->mScrollX:I

    return v0
.end method

.method static synthetic access$1200(Landroid/widget/BounceGallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Landroid/widget/BounceGallery;->mAnimationDuration:I

    return v0
.end method

.method static synthetic access$1300(Landroid/widget/BounceGallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Landroid/widget/BounceGallery;->mScrollX:I

    return v0
.end method

.method static synthetic access$1400(Landroid/widget/BounceGallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Landroid/widget/BounceGallery;->mScrollX:I

    return v0
.end method

.method static synthetic access$1500(Landroid/widget/BounceGallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Landroid/widget/BounceGallery;->mScrollX:I

    return v0
.end method

.method static synthetic access$1600(Landroid/widget/BounceGallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Landroid/widget/BounceGallery;->mScrollX:I

    return v0
.end method

.method static synthetic access$1700(Landroid/widget/BounceGallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Landroid/widget/BounceGallery;->mScrollX:I

    return v0
.end method

.method static synthetic access$1800(Landroid/widget/BounceGallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Landroid/widget/BounceGallery;->mScrollX:I

    return v0
.end method

.method static synthetic access$1900(Landroid/widget/BounceGallery;)Landroid/view/VelocityTracker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Landroid/widget/BounceGallery;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-object v0
.end method

.method static synthetic access$200(Landroid/widget/BounceGallery;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Landroid/widget/BounceGallery;->dispatchUnpress()V

    return-void
.end method

.method static synthetic access$2000(Landroid/widget/BounceGallery;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Landroid/widget/BounceGallery;->scrollIntoSlots()V

    return-void
.end method

.method static synthetic access$2100(Landroid/widget/BounceGallery;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-boolean v0, p0, Landroid/widget/BounceGallery;->mShouldStopFling:Z

    return v0
.end method

.method static synthetic access$2102(Landroid/widget/BounceGallery;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-boolean p1, p0, Landroid/widget/BounceGallery;->mShouldStopFling:Z

    return p1
.end method

.method static synthetic access$2200(Landroid/widget/BounceGallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Landroid/widget/BounceGallery;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$2300(Landroid/widget/BounceGallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Landroid/widget/BounceGallery;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$2400(Landroid/widget/BounceGallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Landroid/widget/BounceGallery;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$2500(Landroid/widget/BounceGallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Landroid/widget/BounceGallery;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$2600(Landroid/widget/BounceGallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Landroid/widget/BounceGallery;->mScrollX:I

    return v0
.end method

.method static synthetic access$2700(Landroid/widget/BounceGallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Landroid/widget/BounceGallery;->mDistanceLeft:I

    return v0
.end method

.method static synthetic access$2800(Landroid/widget/BounceGallery;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-boolean v0, p0, Landroid/widget/BounceGallery;->mNeedOverscroll:Z

    return v0
.end method

.method static synthetic access$2802(Landroid/widget/BounceGallery;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-boolean p1, p0, Landroid/widget/BounceGallery;->mNeedOverscroll:Z

    return p1
.end method

.method static synthetic access$2900(Landroid/widget/BounceGallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Landroid/widget/BounceGallery;->mScrollX:I

    return v0
.end method

.method static synthetic access$300(Landroid/widget/BounceGallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Landroid/widget/BounceGallery;->mTouchMode:I

    return v0
.end method

.method static synthetic access$3000(Landroid/widget/BounceGallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Landroid/widget/BounceGallery;->mOverflingDistance:I

    return v0
.end method

.method static synthetic access$302(Landroid/widget/BounceGallery;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput p1, p0, Landroid/widget/BounceGallery;->mTouchMode:I

    return p1
.end method

.method static synthetic access$3100(Landroid/widget/BounceGallery;IIIIIIIIZ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"
    .parameter "x9"

    .prologue
    .line 83
    invoke-virtual/range {p0 .. p9}, Landroid/widget/BounceGallery;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Landroid/widget/BounceGallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Landroid/widget/BounceGallery;->mScrollX:I

    return v0
.end method

.method static synthetic access$3300(Landroid/widget/BounceGallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Landroid/widget/BounceGallery;->mScrollX:I

    return v0
.end method

.method static synthetic access$3400(Landroid/widget/BounceGallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Landroid/widget/BounceGallery;->mScrollX:I

    return v0
.end method

.method static synthetic access$3500(Landroid/widget/BounceGallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Landroid/widget/BounceGallery;->mScrollX:I

    return v0
.end method

.method static synthetic access$3600(Landroid/widget/BounceGallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Landroid/widget/BounceGallery;->mScrollX:I

    return v0
.end method

.method static synthetic access$3700(Landroid/widget/BounceGallery;IIIIIIIIZ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"
    .parameter "x9"

    .prologue
    .line 83
    invoke-virtual/range {p0 .. p9}, Landroid/widget/BounceGallery;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3800(Landroid/widget/BounceGallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Landroid/widget/BounceGallery;->mScrollX:I

    return v0
.end method

.method static synthetic access$3900(Landroid/widget/BounceGallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Landroid/widget/BounceGallery;->mScrollX:I

    return v0
.end method

.method static synthetic access$400(Landroid/widget/BounceGallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Landroid/widget/BounceGallery;->mDownTouchPosition:I

    return v0
.end method

.method static synthetic access$402(Landroid/widget/BounceGallery;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput p1, p0, Landroid/widget/BounceGallery;->mDownTouchPosition:I

    return p1
.end method

.method static synthetic access$500(Landroid/widget/BounceGallery;)Landroid/widget/BounceGallery$CheckForLongPress;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Landroid/widget/BounceGallery;->mPendingCheckForLongPress:Landroid/widget/BounceGallery$CheckForLongPress;

    return-object v0
.end method

.method static synthetic access$502(Landroid/widget/BounceGallery;Landroid/widget/BounceGallery$CheckForLongPress;)Landroid/widget/BounceGallery$CheckForLongPress;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-object p1, p0, Landroid/widget/BounceGallery;->mPendingCheckForLongPress:Landroid/widget/BounceGallery$CheckForLongPress;

    return-object p1
.end method

.method static synthetic access$700(Landroid/widget/BounceGallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    invoke-virtual {p0}, Landroid/widget/BounceGallery;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Landroid/widget/BounceGallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    invoke-virtual {p0}, Landroid/widget/BounceGallery;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method private calculateTop(Landroid/view/View;Z)I
    .locals 6
    .parameter "child"
    .parameter "duringLayout"

    .prologue
    .line 956
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/widget/BounceGallery;->getMeasuredHeight()I

    move-result v3

    .line 957
    .local v3, myHeight:I
    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 959
    .local v1, childHeight:I
    :goto_1
    const/4 v2, 0x0

    .line 961
    .local v2, childTop:I
    iget v4, p0, Landroid/widget/BounceGallery;->mGravity:I

    sparse-switch v4, :sswitch_data_0

    .line 974
    :goto_2
    return v2

    .line 956
    .end local v1           #childHeight:I
    .end local v2           #childTop:I
    .end local v3           #myHeight:I
    :cond_0
    invoke-virtual {p0}, Landroid/widget/BounceGallery;->getHeight()I

    move-result v3

    goto :goto_0

    .line 957
    .restart local v3       #myHeight:I
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    goto :goto_1

    .line 963
    .restart local v1       #childHeight:I
    .restart local v2       #childTop:I
    :sswitch_0
    iget-object v4, p0, Landroid/widget/BounceGallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v2, v4, Landroid/graphics/Rect;->top:I

    .line 964
    goto :goto_2

    .line 966
    :sswitch_1
    iget-object v4, p0, Landroid/widget/BounceGallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v3, v4

    iget-object v5, p0, Landroid/widget/BounceGallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    sub-int v0, v4, v1

    .line 968
    .local v0, availableSpace:I
    iget-object v4, p0, Landroid/widget/BounceGallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    div-int/lit8 v5, v0, 0x2

    add-int v2, v4, v5

    .line 969
    goto :goto_2

    .line 971
    .end local v0           #availableSpace:I
    :sswitch_2
    iget-object v4, p0, Landroid/widget/BounceGallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v3, v4

    sub-int v2, v4, v1

    goto :goto_2

    .line 961
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method private detachOffScreenChildren(Z)V
    .locals 10
    .parameter "toLeft"

    .prologue
    .line 566
    invoke-virtual {p0}, Landroid/widget/BounceGallery;->getChildCount()I

    move-result v6

    .line 567
    .local v6, numChildren:I
    iget v2, p0, Landroid/widget/BounceGallery;->mFirstPosition:I

    .line 568
    .local v2, firstPosition:I
    const/4 v7, 0x0

    .line 569
    .local v7, start:I
    const/4 v1, 0x0

    .line 571
    .local v1, count:I
    if-eqz p1, :cond_3

    .line 572
    iget v3, p0, Landroid/widget/BounceGallery;->mPaddingLeft:I

    .line 573
    .local v3, galleryLeft:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v6, :cond_0

    .line 574
    invoke-virtual {p0, v5}, Landroid/widget/BounceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 575
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v8

    if-lt v8, v3, :cond_2

    .line 596
    .end local v0           #child:Landroid/view/View;
    .end local v3           #galleryLeft:I
    :cond_0
    invoke-virtual {p0, v7, v1}, Landroid/widget/BounceGallery;->detachViewsFromParent(II)V

    .line 598
    if-eqz p1, :cond_1

    .line 599
    iget v8, p0, Landroid/widget/BounceGallery;->mFirstPosition:I

    add-int/2addr v8, v1

    iput v8, p0, Landroid/widget/BounceGallery;->mFirstPosition:I

    .line 601
    :cond_1
    return-void

    .line 578
    .restart local v0       #child:Landroid/view/View;
    .restart local v3       #galleryLeft:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 579
    iget-object v8, p0, Landroid/widget/BounceGallery;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    add-int v9, v2, v5

    invoke-virtual {v8, v9, v0}, Landroid/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 573
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 583
    .end local v0           #child:Landroid/view/View;
    .end local v3           #galleryLeft:I
    .end local v5           #i:I
    :cond_3
    invoke-virtual {p0}, Landroid/widget/BounceGallery;->getWidth()I

    move-result v8

    iget v9, p0, Landroid/widget/BounceGallery;->mPaddingRight:I

    sub-int v4, v8, v9

    .line 584
    .local v4, galleryRight:I
    add-int/lit8 v5, v6, -0x1

    .restart local v5       #i:I
    :goto_1
    if-ltz v5, :cond_0

    .line 585
    invoke-virtual {p0, v5}, Landroid/widget/BounceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 586
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v8

    if-le v8, v4, :cond_0

    .line 589
    move v7, v5

    .line 590
    add-int/lit8 v1, v1, 0x1

    .line 591
    iget-object v8, p0, Landroid/widget/BounceGallery;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    add-int v9, v2, v5

    invoke-virtual {v8, v9, v0}, Landroid/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 584
    add-int/lit8 v5, v5, -0x1

    goto :goto_1
.end method

.method private dispatchPress(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    const/4 v0, 0x1

    .line 1002
    if-eqz p1, :cond_0

    .line 1003
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 1006
    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/BounceGallery;->setPressed(Z)V

    .line 1007
    return-void
.end method

.method private dispatchUnpress()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1010
    invoke-virtual {p0}, Landroid/widget/BounceGallery;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 1011
    invoke-virtual {p0, v0}, Landroid/widget/BounceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 1010
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1014
    :cond_0
    invoke-virtual {p0, v2}, Landroid/widget/BounceGallery;->setPressed(Z)V

    .line 1015
    return-void
.end method

.method private fillToGalleryLeft()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 779
    iget v3, p0, Landroid/widget/BounceGallery;->mSpacing:I

    .line 780
    .local v3, itemSpacing:I
    iget v2, p0, Landroid/widget/BounceGallery;->mPaddingLeft:I

    .line 783
    .local v2, galleryLeft:I
    invoke-virtual {p0, v8}, Landroid/widget/BounceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 787
    .local v4, prevIterationView:Landroid/view/View;
    if-eqz v4, :cond_0

    .line 788
    iget v5, p0, Landroid/widget/BounceGallery;->mFirstPosition:I

    add-int/lit8 v0, v5, -0x1

    .line 789
    .local v0, curPosition:I
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v1, v5, v3

    .line 798
    .local v1, curRightEdge:I
    :goto_0
    const-string v5, "BounceGallery"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fillToGalleryLeft:curRightEdge = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",galleryLeft = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",curPosition = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",mSelectedPosition = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/widget/BounceGallery;->mSelectedPosition:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",mFirstPosition = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/widget/BounceGallery;->mFirstPosition:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    :goto_1
    if-le v1, v2, :cond_1

    if-ltz v0, :cond_1

    .line 804
    iget v5, p0, Landroid/widget/BounceGallery;->mSelectedPosition:I

    sub-int v5, v0, v5

    invoke-direct {p0, v0, v5, v1, v8}, Landroid/widget/BounceGallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v4

    .line 808
    iput v0, p0, Landroid/widget/BounceGallery;->mFirstPosition:I

    .line 811
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v1, v5, v3

    .line 812
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 792
    .end local v0           #curPosition:I
    .end local v1           #curRightEdge:I
    :cond_0
    const/4 v0, 0x0

    .line 793
    .restart local v0       #curPosition:I
    iget v5, p0, Landroid/widget/BounceGallery;->mRight:I

    iget v6, p0, Landroid/widget/BounceGallery;->mLeft:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/BounceGallery;->mPaddingRight:I

    sub-int v1, v5, v6

    .line 794
    .restart local v1       #curRightEdge:I
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/widget/BounceGallery;->mShouldStopFling:Z

    goto :goto_0

    .line 814
    :cond_1
    return-void
.end method

.method private fillToGalleryRight()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 817
    iget v3, p0, Landroid/widget/BounceGallery;->mSpacing:I

    .line 818
    .local v3, itemSpacing:I
    iget v7, p0, Landroid/widget/BounceGallery;->mRight:I

    iget v8, p0, Landroid/widget/BounceGallery;->mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/widget/BounceGallery;->mPaddingRight:I

    sub-int v2, v7, v8

    .line 819
    .local v2, galleryRight:I
    invoke-virtual {p0}, Landroid/widget/BounceGallery;->getChildCount()I

    move-result v4

    .line 820
    .local v4, numChildren:I
    iget v5, p0, Landroid/widget/BounceGallery;->mItemCount:I

    .line 823
    .local v5, numItems:I
    add-int/lit8 v7, v4, -0x1

    invoke-virtual {p0, v7}, Landroid/widget/BounceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 827
    .local v6, prevIterationView:Landroid/view/View;
    if-eqz v6, :cond_0

    .line 828
    iget v7, p0, Landroid/widget/BounceGallery;->mFirstPosition:I

    add-int v1, v7, v4

    .line 829
    .local v1, curPosition:I
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    add-int v0, v7, v3

    .line 837
    .local v0, curLeftEdge:I
    :goto_0
    const-string v7, "BounceGallery"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fillToGalleryRight: curLeftEdge = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",galleryRight = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",curPosition = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",mSelectedPosition = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/widget/BounceGallery;->mSelectedPosition:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",mFirstPosition = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/widget/BounceGallery;->mFirstPosition:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",numItems = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    :goto_1
    if-ge v0, v2, :cond_1

    if-ge v1, v5, :cond_1

    .line 844
    iget v7, p0, Landroid/widget/BounceGallery;->mSelectedPosition:I

    sub-int v7, v1, v7

    invoke-direct {p0, v1, v7, v0, v10}, Landroid/widget/BounceGallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v6

    .line 848
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    add-int v0, v7, v3

    .line 849
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 831
    .end local v0           #curLeftEdge:I
    .end local v1           #curPosition:I
    :cond_0
    iget v7, p0, Landroid/widget/BounceGallery;->mItemCount:I

    add-int/lit8 v1, v7, -0x1

    .restart local v1       #curPosition:I
    iput v1, p0, Landroid/widget/BounceGallery;->mFirstPosition:I

    .line 832
    iget v0, p0, Landroid/widget/BounceGallery;->mPaddingLeft:I

    .line 833
    .restart local v0       #curLeftEdge:I
    iput-boolean v10, p0, Landroid/widget/BounceGallery;->mShouldStopFling:Z

    goto :goto_0

    .line 851
    :cond_1
    return-void
.end method

.method private getCenterOfGallery()I
    .locals 2

    .prologue
    .line 534
    invoke-virtual {p0}, Landroid/widget/BounceGallery;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/widget/BounceGallery;->mPaddingLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/BounceGallery;->mPaddingRight:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Landroid/widget/BounceGallery;->mPaddingLeft:I

    add-int/2addr v0, v1

    return v0
.end method

.method private static getCenterOfView(Landroid/view/View;)I
    .locals 2
    .parameter "view"

    .prologue
    .line 541
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method private getSemmChildDrawingOrder(III)I
    .locals 2
    .parameter "childCount"
    .parameter "i"
    .parameter "selectedIndex"

    .prologue
    .line 1229
    if-ne p2, p3, :cond_0

    .line 1230
    add-int/lit8 v0, p1, -0x1

    .line 1234
    :goto_0
    return v0

    .line 1231
    :cond_0
    if-lt p2, p3, :cond_1

    .line 1232
    sub-int v0, p2, p3

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, p1, v0

    goto :goto_0

    .line 1234
    :cond_1
    add-int/lit8 v0, p1, -0x1

    sub-int v1, p3, p2

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private makeAndAddView(IIIZ)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "offset"
    .parameter "x"
    .parameter "fromLeft"

    .prologue
    .line 872
    iget-boolean v3, p0, Landroid/widget/BounceGallery;->mDataChanged:Z

    if-nez v3, :cond_0

    .line 873
    iget-object v3, p0, Landroid/widget/BounceGallery;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v3, p1}, Landroid/widget/AbsSpinner$RecycleBin;->get(I)Landroid/view/View;

    move-result-object v0

    .line 874
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 876
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 879
    .local v2, childLeft:I
    iget v3, p0, Landroid/widget/BounceGallery;->mRightMost:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Landroid/widget/BounceGallery;->mRightMost:I

    .line 881
    iget v3, p0, Landroid/widget/BounceGallery;->mLeftMost:I

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Landroid/widget/BounceGallery;->mLeftMost:I

    .line 884
    invoke-direct {p0, v0, p2, p3, p4}, Landroid/widget/BounceGallery;->setUpChild(Landroid/view/View;IIZ)V

    move-object v1, v0

    .line 896
    .end local v0           #child:Landroid/view/View;
    .end local v2           #childLeft:I
    .local v1, child:Landroid/view/View;
    :goto_0
    return-object v1

    .line 891
    .end local v1           #child:Landroid/view/View;
    :cond_0
    iget-object v3, p0, Landroid/widget/BounceGallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    const/4 v4, 0x0

    invoke-interface {v3, p1, v4, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 894
    .restart local v0       #child:Landroid/view/View;
    invoke-direct {p0, v0, p2, p3, p4}, Landroid/widget/BounceGallery;->setUpChild(Landroid/view/View;IIZ)V

    move-object v1, v0

    .line 896
    .end local v0           #child:Landroid/view/View;
    .restart local v1       #child:Landroid/view/View;
    goto :goto_0
.end method

.method private offsetChildrenLeftAndRight(I)V
    .locals 2
    .parameter "offset"

    .prologue
    .line 525
    invoke-virtual {p0}, Landroid/widget/BounceGallery;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 526
    invoke-virtual {p0, v0}, Landroid/widget/BounceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 525
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 528
    :cond_0
    return-void
.end method

.method private onFinishedMovement()V
    .locals 3

    .prologue
    .line 627
    const-string v0, "BounceGallery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onFinishedMovement: mSelectedPosition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/BounceGallery;->mSelectedPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    iget-boolean v0, p0, Landroid/widget/BounceGallery;->mSuppressSelectionChanged:Z

    if-eqz v0, :cond_0

    .line 630
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/BounceGallery;->mSuppressSelectionChanged:Z

    .line 633
    invoke-super {p0}, Landroid/widget/AbsSpinner;->selectionChanged()V

    .line 636
    :cond_0
    invoke-virtual {p0}, Landroid/widget/BounceGallery;->invalidate()V

    .line 637
    return-void
.end method

.method private performLongPress(Landroid/view/View;IJ)Z
    .locals 7
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1637
    const/4 v6, 0x0

    .line 1639
    .local v6, handled:Z
    iget-object v0, p0, Landroid/widget/BounceGallery;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    .line 1640
    iget-object v0, p0, Landroid/widget/BounceGallery;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    iget-object v2, p0, Landroid/widget/BounceGallery;->mDownTouchView:Landroid/view/View;

    iget v3, p0, Landroid/widget/BounceGallery;->mDownTouchPosition:I

    move-object v1, p0

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 1644
    :cond_0
    if-nez v6, :cond_1

    .line 1645
    new-instance v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    iput-object v0, p0, Landroid/widget/BounceGallery;->mContextMenuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 1646
    invoke-super {p0, p0}, Landroid/widget/AbsSpinner;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 1649
    :cond_1
    if-eqz v6, :cond_2

    .line 1650
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/BounceGallery;->performHapticFeedback(I)Z

    .line 1653
    :cond_2
    return v6
.end method

.method private removeRunnables(Ljava/lang/Runnable;)V
    .locals 4
    .parameter "runnable"

    .prologue
    .line 1617
    invoke-virtual {p0}, Landroid/widget/BounceGallery;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 1619
    .local v0, handler:Landroid/os/Handler;
    const-string v1, "BounceGallery"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeRunnables runnable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",handler = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    if-eqz v0, :cond_0

    .line 1622
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1624
    :cond_0
    return-void
.end method

.method private scrollIntoSlots()V
    .locals 6

    .prologue
    .line 608
    invoke-virtual {p0}, Landroid/widget/BounceGallery;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/BounceGallery;->mSelectedChild:Landroid/view/View;

    if-nez v3, :cond_1

    .line 623
    :cond_0
    :goto_0
    return-void

    .line 610
    :cond_1
    iget-object v3, p0, Landroid/widget/BounceGallery;->mSelectedChild:Landroid/view/View;

    invoke-virtual {p0, v3}, Landroid/widget/BounceGallery;->getCenterOfChildWithScroll(Landroid/view/View;)I

    move-result v1

    .line 611
    .local v1, selectedCenter:I
    invoke-direct {p0}, Landroid/widget/BounceGallery;->getCenterOfGallery()I

    move-result v2

    .line 613
    .local v2, targetCenter:I
    sub-int v0, v2, v1

    .line 615
    .local v0, scrollAmount:I
    const-string v3, "BounceGallery"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "scrollIntoSlots:mSelectedChild = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/BounceGallery;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",selectedCenter = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",targetCenter = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",scrollAmount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    if-eqz v0, :cond_2

    .line 619
    iget-object v3, p0, Landroid/widget/BounceGallery;->mFlingRunnable:Landroid/widget/BounceGallery$FlingRunnable;

    invoke-virtual {v3, v0}, Landroid/widget/BounceGallery$FlingRunnable;->startUsingDistance(I)V

    goto :goto_0

    .line 621
    :cond_2
    invoke-direct {p0}, Landroid/widget/BounceGallery;->onFinishedMovement()V

    goto :goto_0
.end method

.method private scrollToChild(I)Z
    .locals 5
    .parameter "childPosition"

    .prologue
    .line 1117
    invoke-virtual {p0, p1}, Landroid/widget/BounceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1119
    .local v0, child:Landroid/view/View;
    const-string v2, "BounceGallery"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "scrollToChild: childPosition = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",mSelectedPosition = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/widget/BounceGallery;->mSelectedPosition:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",mFirstPosition = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/widget/BounceGallery;->mFirstPosition:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",mScrollX = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/widget/BounceGallery;->mScrollX:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",child = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    if-eqz v0, :cond_0

    .line 1124
    invoke-direct {p0}, Landroid/widget/BounceGallery;->getCenterOfGallery()I

    move-result v2

    invoke-static {v0}, Landroid/widget/BounceGallery;->getCenterOfView(Landroid/view/View;)I

    move-result v3

    sub-int v1, v2, v3

    .line 1126
    .local v1, distance:I
    const-string v2, "BounceGallery"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "scrollToChild: childPosition = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",centerGallery = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Landroid/widget/BounceGallery;->getCenterOfGallery()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",center view = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/widget/BounceGallery;->getCenterOfView(Landroid/view/View;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",distance = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    iget-object v2, p0, Landroid/widget/BounceGallery;->mFlingRunnable:Landroid/widget/BounceGallery$FlingRunnable;

    invoke-virtual {v2, v1}, Landroid/widget/BounceGallery$FlingRunnable;->startUsingDistance(I)V

    .line 1131
    const/4 v2, 0x1

    .line 1134
    .end local v1           #distance:I
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setSelectionToCenterChild()V
    .locals 11

    .prologue
    .line 659
    iget-object v7, p0, Landroid/widget/BounceGallery;->mSelectedChild:Landroid/view/View;

    .line 660
    .local v7, selView:Landroid/view/View;
    iget-object v8, p0, Landroid/widget/BounceGallery;->mSelectedChild:Landroid/view/View;

    if-nez v8, :cond_1

    .line 700
    :cond_0
    :goto_0
    return-void

    .line 662
    :cond_1
    invoke-direct {p0}, Landroid/widget/BounceGallery;->getCenterOfGallery()I

    move-result v3

    .line 665
    .local v3, galleryCenter:I
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    if-gt v8, v3, :cond_2

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v8

    if-ge v8, v3, :cond_0

    .line 669
    :cond_2
    const v2, 0x7fffffff

    .line 670
    .local v2, closestEdgeDistance:I
    const/4 v6, 0x0

    .line 671
    .local v6, newSelectedChildIndex:I
    invoke-virtual {p0}, Landroid/widget/BounceGallery;->getChildCount()I

    move-result v8

    add-int/lit8 v4, v8, -0x1

    .local v4, i:I
    :goto_1
    if-ltz v4, :cond_3

    .line 673
    invoke-virtual {p0, v4}, Landroid/widget/BounceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 675
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v8

    if-gt v8, v3, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v8

    if-lt v8, v3, :cond_4

    .line 677
    move v6, v4

    .line 689
    .end local v0           #child:Landroid/view/View;
    :cond_3
    iget v8, p0, Landroid/widget/BounceGallery;->mFirstPosition:I

    add-int v5, v8, v6

    .line 691
    .local v5, newPos:I
    const-string v8, "BounceGallery"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setSelectionToCenterChild: newPos = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",newSelectedChildIndex = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",mSelectedPosition = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Landroid/widget/BounceGallery;->mSelectedPosition:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    iget v8, p0, Landroid/widget/BounceGallery;->mSelectedPosition:I

    if-eq v5, v8, :cond_0

    .line 696
    invoke-virtual {p0, v5}, Landroid/widget/BounceGallery;->setSelectedPositionInt(I)V

    .line 697
    invoke-virtual {p0, v5}, Landroid/widget/BounceGallery;->setNextSelectedPositionInt(I)V

    .line 698
    invoke-virtual {p0}, Landroid/widget/BounceGallery;->checkSelectionChanged()V

    goto :goto_0

    .line 681
    .end local v5           #newPos:I
    .restart local v0       #child:Landroid/view/View;
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr v8, v3

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v9

    sub-int/2addr v9, v3

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 683
    .local v1, childClosestEdgeDistance:I
    if-ge v1, v2, :cond_5

    .line 684
    move v2, v1

    .line 685
    move v6, v4

    .line 671
    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_1
.end method

.method private setUpChild(Landroid/view/View;IIZ)V
    .locals 11
    .parameter "child"
    .parameter "offset"
    .parameter "x"
    .parameter "fromLeft"

    .prologue
    .line 913
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/Gallery$LayoutParams;

    .line 915
    .local v6, lp:Landroid/widget/Gallery$LayoutParams;
    if-nez v6, :cond_0

    .line 916
    invoke-virtual {p0}, Landroid/widget/BounceGallery;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .end local v6           #lp:Landroid/widget/Gallery$LayoutParams;
    check-cast v6, Landroid/widget/Gallery$LayoutParams;

    .line 919
    .restart local v6       #lp:Landroid/widget/Gallery$LayoutParams;
    :cond_0
    if-eqz p4, :cond_1

    const/4 v8, -0x1

    :goto_0
    invoke-virtual {p0, p1, v8, v6}, Landroid/widget/BounceGallery;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 921
    if-nez p2, :cond_2

    const/4 v8, 0x1

    :goto_1
    invoke-virtual {p1, v8}, Landroid/view/View;->setSelected(Z)V

    .line 923
    iget v8, p0, Landroid/widget/BounceGallery;->mHeightMeasureSpec:I

    iget-object v9, p0, Landroid/widget/BounceGallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Landroid/widget/BounceGallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/widget/Gallery$LayoutParams;->height:I

    invoke-static {v8, v9, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 925
    .local v1, childHeightSpec:I
    iget v8, p0, Landroid/widget/BounceGallery;->mWidthMeasureSpec:I

    iget-object v9, p0, Landroid/widget/BounceGallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iget-object v10, p0, Landroid/widget/BounceGallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/widget/Gallery$LayoutParams;->width:I

    invoke-static {v8, v9, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    .line 928
    .local v5, childWidthSpec:I
    invoke-virtual {p1, v5, v1}, Landroid/view/View;->measure(II)V

    .line 934
    const/4 v8, 0x1

    invoke-direct {p0, p1, v8}, Landroid/widget/BounceGallery;->calculateTop(Landroid/view/View;Z)I

    move-result v4

    .line 935
    .local v4, childTop:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int v0, v4, v8

    .line 937
    .local v0, childBottom:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 938
    .local v7, width:I
    if-eqz p4, :cond_3

    .line 939
    move v2, p3

    .line 940
    .local v2, childLeft:I
    add-int v3, v2, v7

    .line 946
    .local v3, childRight:I
    :goto_2
    invoke-virtual {p1, v2, v4, v3, v0}, Landroid/view/View;->layout(IIII)V

    .line 947
    return-void

    .line 919
    .end local v0           #childBottom:I
    .end local v1           #childHeightSpec:I
    .end local v2           #childLeft:I
    .end local v3           #childRight:I
    .end local v4           #childTop:I
    .end local v5           #childWidthSpec:I
    .end local v7           #width:I
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 921
    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    .line 942
    .restart local v0       #childBottom:I
    .restart local v1       #childHeightSpec:I
    .restart local v4       #childTop:I
    .restart local v5       #childWidthSpec:I
    .restart local v7       #width:I
    :cond_3
    sub-int v2, p3, v7

    .line 943
    .restart local v2       #childLeft:I
    move v3, p3

    .restart local v3       #childRight:I
    goto :goto_2
.end method

.method private startScrollIfNeeded(I)Z
    .locals 8
    .parameter "deltaX"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1547
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 1548
    .local v0, distance:I
    iget v5, p0, Landroid/widget/BounceGallery;->mScrollX:I

    if-eqz v5, :cond_3

    move v2, v3

    .line 1550
    .local v2, overscroll:Z
    :goto_0
    const-string v5, "BounceGallery"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "startScrollIfNeeded: distance = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",mScrollX = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/widget/BounceGallery;->mScrollX:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",mTouchSlop = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/widget/BounceGallery;->mTouchSlop:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",mPendingCheckForLongPress = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/widget/BounceGallery;->mPendingCheckForLongPress:Landroid/widget/BounceGallery$CheckForLongPress;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1553
    if-nez v2, :cond_0

    iget v5, p0, Landroid/widget/BounceGallery;->mTouchSlop:I

    if-le v0, v5, :cond_2

    .line 1554
    :cond_0
    if-eqz v2, :cond_4

    const/4 v5, 0x3

    :goto_1
    iput v5, p0, Landroid/widget/BounceGallery;->mTouchMode:I

    .line 1556
    iget-object v5, p0, Landroid/widget/BounceGallery;->mPendingCheckForLongPress:Landroid/widget/BounceGallery$CheckForLongPress;

    invoke-direct {p0, v5}, Landroid/widget/BounceGallery;->removeRunnables(Ljava/lang/Runnable;)V

    .line 1558
    invoke-virtual {p0, v4}, Landroid/widget/BounceGallery;->setPressed(Z)V

    .line 1559
    iget v5, p0, Landroid/widget/BounceGallery;->mDownTouchPosition:I

    iget v6, p0, Landroid/widget/BounceGallery;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Landroid/widget/BounceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1560
    .local v1, motionView:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 1561
    invoke-virtual {v1, v4}, Landroid/view/View;->setPressed(Z)V

    .line 1563
    :cond_1
    invoke-virtual {p0, v3}, Landroid/widget/BounceGallery;->requestDisallowInterceptTouchEvent(Z)V

    move v4, v3

    .line 1566
    .end local v1           #motionView:Landroid/view/View;
    :cond_2
    return v4

    .end local v2           #overscroll:Z
    :cond_3
    move v2, v4

    .line 1548
    goto :goto_0

    .restart local v2       #overscroll:Z
    :cond_4
    move v5, v3

    .line 1554
    goto :goto_1
.end method

.method private updateSelectedItemMetadata()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1146
    iget-object v1, p0, Landroid/widget/BounceGallery;->mSelectedChild:Landroid/view/View;

    .line 1148
    .local v1, oldSelectedChild:Landroid/view/View;
    iget v2, p0, Landroid/widget/BounceGallery;->mSelectedPosition:I

    iget v3, p0, Landroid/widget/BounceGallery;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/widget/BounceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/BounceGallery;->mSelectedChild:Landroid/view/View;

    .line 1149
    .local v0, child:Landroid/view/View;
    if-nez v0, :cond_1

    .line 1173
    :cond_0
    :goto_0
    return-void

    .line 1153
    :cond_1
    invoke-virtual {v0, v5}, Landroid/view/View;->setSelected(Z)V

    .line 1154
    invoke-virtual {v0, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 1156
    invoke-virtual {p0}, Landroid/widget/BounceGallery;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1157
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1161
    :cond_2
    if-eqz v1, :cond_0

    .line 1164
    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    .line 1170
    invoke-virtual {v1, v4}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 399
    instance-of v0, p1, Landroid/widget/Gallery$LayoutParams;

    return v0
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 1

    .prologue
    .line 382
    const/4 v0, 0x1

    return v0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 1

    .prologue
    .line 388
    iget v0, p0, Landroid/widget/BounceGallery;->mSelectedPosition:I

    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 1

    .prologue
    .line 394
    iget v0, p0, Landroid/widget/BounceGallery;->mItemCount:I

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 1037
    invoke-virtual {p1, p0, v0, v0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected dispatchSetPressed(Z)V
    .locals 1
    .parameter "pressed"

    .prologue
    .line 1029
    iget-object v0, p0, Landroid/widget/BounceGallery;->mSelectedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1030
    iget-object v0, p0, Landroid/widget/BounceGallery;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 1032
    :cond_0
    return-void
.end method

.method public dispatchSetSelected(Z)V
    .locals 0
    .parameter "selected"

    .prologue
    .line 1024
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 417
    new-instance v0, Landroid/widget/Gallery$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 409
    new-instance v0, Landroid/widget/Gallery$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/BounceGallery;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/Gallery$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 404
    new-instance v0, Landroid/widget/Gallery$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/Gallery$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected getCenterOfChildWithScroll(Landroid/view/View;)I
    .locals 2
    .parameter "child"

    .prologue
    .line 556
    invoke-static {p1}, Landroid/widget/BounceGallery;->getCenterOfView(Landroid/view/View;)I

    move-result v0

    iget v1, p0, Landroid/widget/BounceGallery;->mScrollX:I

    sub-int/2addr v0, v1

    return v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 5
    .parameter "childCount"
    .parameter "i"

    .prologue
    .line 1194
    iget v3, p0, Landroid/widget/BounceGallery;->mSelectedPosition:I

    iget v4, p0, Landroid/widget/BounceGallery;->mFirstPosition:I

    sub-int v2, v3, v4

    .line 1196
    .local v2, selectedIndex:I
    if-gez v2, :cond_0

    .line 1217
    .end local p2
    :goto_0
    return p2

    .line 1198
    .restart local p2
    :cond_0
    const/4 v1, 0x0

    .line 1200
    .local v1, ret:I
    mul-int/lit8 v3, v2, 0x2

    sub-int/2addr v3, p1

    add-int/lit8 v0, v3, 0x1

    .line 1201
    .local v0, notSymmNum:I
    if-nez v0, :cond_1

    .line 1202
    invoke-direct {p0, p1, p2, v2}, Landroid/widget/BounceGallery;->getSemmChildDrawingOrder(III)I

    move-result v1

    :goto_1
    move p2, v1

    .line 1217
    goto :goto_0

    .line 1203
    :cond_1
    if-gez v0, :cond_3

    .line 1204
    mul-int/lit8 v3, v2, 0x2

    if-le p2, v3, :cond_2

    .line 1205
    add-int/lit8 v3, p1, -0x1

    sub-int v1, v3, p2

    goto :goto_1

    .line 1207
    :cond_2
    invoke-direct {p0, p1, p2, v2}, Landroid/widget/BounceGallery;->getSemmChildDrawingOrder(III)I

    move-result v1

    goto :goto_1

    .line 1210
    :cond_3
    if-ge p2, v0, :cond_4

    .line 1211
    move v1, p2

    goto :goto_1

    .line 1213
    :cond_4
    invoke-direct {p0, p1, p2, v2}, Landroid/widget/BounceGallery;->getSemmChildDrawingOrder(III)I

    move-result v1

    goto :goto_1
.end method

.method getChildHeight(Landroid/view/View;)I
    .locals 1
    .parameter "child"

    .prologue
    .line 436
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .locals 1
    .parameter "child"
    .parameter "t"

    .prologue
    .line 374
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->clear()V

    .line 375
    iget-object v0, p0, Landroid/widget/BounceGallery;->mSelectedChild:Landroid/view/View;

    if-ne p1, v0, :cond_0

    const/high16 v0, 0x3f80

    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 376
    const/4 v0, 0x1

    return v0

    .line 375
    :cond_0
    iget v0, p0, Landroid/widget/BounceGallery;->mUnselectedAlpha:F

    goto :goto_0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 1255
    iget-object v0, p0, Landroid/widget/BounceGallery;->mContextMenuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;

    return-object v0
.end method

.method getLimitedMotionScrollAmount(ZI)I
    .locals 7
    .parameter "motionToLeft"
    .parameter "deltaX"

    .prologue
    const/4 v5, 0x0

    .line 487
    if-eqz p1, :cond_1

    iget v6, p0, Landroid/widget/BounceGallery;->mItemCount:I

    add-int/lit8 v3, v6, -0x1

    .line 488
    .local v3, extremeItemPosition:I
    :goto_0
    iget v6, p0, Landroid/widget/BounceGallery;->mFirstPosition:I

    sub-int v6, v3, v6

    invoke-virtual {p0, v6}, Landroid/widget/BounceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 490
    .local v1, extremeChild:Landroid/view/View;
    if-nez v1, :cond_2

    move v5, p2

    .line 513
    :cond_0
    :goto_1
    return v5

    .end local v1           #extremeChild:Landroid/view/View;
    .end local v3           #extremeItemPosition:I
    :cond_1
    move v3, v5

    .line 487
    goto :goto_0

    .line 494
    .restart local v1       #extremeChild:Landroid/view/View;
    .restart local v3       #extremeItemPosition:I
    :cond_2
    invoke-static {v1}, Landroid/widget/BounceGallery;->getCenterOfView(Landroid/view/View;)I

    move-result v2

    .line 495
    .local v2, extremeChildCenter:I
    invoke-direct {p0}, Landroid/widget/BounceGallery;->getCenterOfGallery()I

    move-result v4

    .line 497
    .local v4, galleryCenter:I
    if-eqz p1, :cond_4

    .line 498
    if-le v2, v4, :cond_0

    .line 511
    :cond_3
    sub-int v0, v4, v2

    .line 513
    .local v0, centerDifference:I
    if-eqz p1, :cond_5

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_1

    .line 504
    .end local v0           #centerDifference:I
    :cond_4
    if-lt v2, v4, :cond_3

    goto :goto_1

    .line 513
    .restart local v0       #centerDifference:I
    :cond_5
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_1
.end method

.method layout(IZ)V
    .locals 7
    .parameter "delta"
    .parameter "animate"

    .prologue
    const/4 v6, 0x0

    .line 715
    iget-object v4, p0, Landroid/widget/BounceGallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v0, v4, Landroid/graphics/Rect;->left:I

    .line 716
    .local v0, childrenLeft:I
    iget v4, p0, Landroid/widget/BounceGallery;->mRight:I

    iget v5, p0, Landroid/widget/BounceGallery;->mLeft:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/BounceGallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/BounceGallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int v1, v4, v5

    .line 718
    .local v1, childrenWidth:I
    iget-boolean v4, p0, Landroid/widget/BounceGallery;->mDataChanged:Z

    if-eqz v4, :cond_0

    .line 719
    invoke-virtual {p0}, Landroid/widget/BounceGallery;->handleDataChanged()V

    .line 723
    :cond_0
    iget v4, p0, Landroid/widget/BounceGallery;->mItemCount:I

    if-nez v4, :cond_1

    .line 724
    invoke-virtual {p0}, Landroid/widget/BounceGallery;->resetList()V

    .line 773
    :goto_0
    return-void

    .line 729
    :cond_1
    iget v4, p0, Landroid/widget/BounceGallery;->mNextSelectedPosition:I

    if-ltz v4, :cond_2

    .line 730
    iget v4, p0, Landroid/widget/BounceGallery;->mNextSelectedPosition:I

    invoke-virtual {p0, v4}, Landroid/widget/BounceGallery;->setSelectedPositionInt(I)V

    .line 734
    :cond_2
    invoke-virtual {p0}, Landroid/widget/BounceGallery;->recycleAllViews()V

    .line 737
    invoke-virtual {p0}, Landroid/widget/BounceGallery;->detachAllViewsFromParent()V

    .line 743
    iput v6, p0, Landroid/widget/BounceGallery;->mRightMost:I

    .line 744
    iput v6, p0, Landroid/widget/BounceGallery;->mLeftMost:I

    .line 752
    iget v4, p0, Landroid/widget/BounceGallery;->mSelectedPosition:I

    iput v4, p0, Landroid/widget/BounceGallery;->mFirstPosition:I

    .line 753
    iget v4, p0, Landroid/widget/BounceGallery;->mSelectedPosition:I

    const/4 v5, 0x1

    invoke-direct {p0, v4, v6, v6, v5}, Landroid/widget/BounceGallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v2

    .line 756
    .local v2, sel:Landroid/view/View;
    div-int/lit8 v4, v1, 0x2

    add-int/2addr v4, v0

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v3, v4, v5

    .line 757
    .local v3, selectedOffset:I
    invoke-virtual {v2, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 759
    invoke-direct {p0}, Landroid/widget/BounceGallery;->fillToGalleryRight()V

    .line 760
    invoke-direct {p0}, Landroid/widget/BounceGallery;->fillToGalleryLeft()V

    .line 763
    iget-object v4, p0, Landroid/widget/BounceGallery;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v4}, Landroid/widget/AbsSpinner$RecycleBin;->clear()V

    .line 765
    invoke-virtual {p0}, Landroid/widget/BounceGallery;->invalidate()V

    .line 766
    invoke-virtual {p0}, Landroid/widget/BounceGallery;->checkSelectionChanged()V

    .line 768
    iput-boolean v6, p0, Landroid/widget/BounceGallery;->mDataChanged:Z

    .line 769
    iput-boolean v6, p0, Landroid/widget/BounceGallery;->mNeedSync:Z

    .line 770
    iget v4, p0, Landroid/widget/BounceGallery;->mSelectedPosition:I

    invoke-virtual {p0, v4}, Landroid/widget/BounceGallery;->setNextSelectedPositionInt(I)V

    .line 772
    invoke-direct {p0}, Landroid/widget/BounceGallery;->updateSelectedItemMetadata()V

    goto :goto_0
.end method

.method moveNext()Z
    .locals 2

    .prologue
    .line 1108
    iget v0, p0, Landroid/widget/BounceGallery;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/widget/BounceGallery;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/BounceGallery;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 1109
    iget v0, p0, Landroid/widget/BounceGallery;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/BounceGallery;->mFirstPosition:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/BounceGallery;->scrollToChild(I)Z

    .line 1110
    const/4 v0, 0x1

    .line 1112
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method movePrevious()Z
    .locals 2

    .prologue
    .line 1099
    iget v0, p0, Landroid/widget/BounceGallery;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/widget/BounceGallery;->mSelectedPosition:I

    if-lez v0, :cond_0

    .line 1100
    iget v0, p0, Landroid/widget/BounceGallery;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/BounceGallery;->mFirstPosition:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Landroid/widget/BounceGallery;->scrollToChild(I)Z

    .line 1101
    const/4 v0, 0x1

    .line 1103
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 1240
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsSpinner;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1247
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/widget/BounceGallery;->mSelectedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1248
    iget-object v0, p0, Landroid/widget/BounceGallery;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->requestFocus(I)Z

    .line 1251
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 1046
    sparse-switch p1, :sswitch_data_0

    .line 1064
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/AbsSpinner;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_0
    :goto_1
    return v0

    .line 1048
    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/BounceGallery;->movePrevious()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1049
    invoke-virtual {p0, v0}, Landroid/widget/BounceGallery;->playSoundEffect(I)V

    goto :goto_1

    .line 1054
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/BounceGallery;->moveNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1055
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Landroid/widget/BounceGallery;->playSoundEffect(I)V

    goto :goto_1

    .line 1061
    :sswitch_2
    iput-boolean v0, p0, Landroid/widget/BounceGallery;->mReceivedInvokeKeyDown:Z

    goto :goto_0

    .line 1046
    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x17 -> :sswitch_2
        0x42 -> :sswitch_2
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1069
    sparse-switch p1, :sswitch_data_0

    .line 1095
    invoke-super {p0, p1, p2}, Landroid/widget/AbsSpinner;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 1072
    :sswitch_0
    iget-boolean v1, p0, Landroid/widget/BounceGallery;->mReceivedInvokeKeyDown:Z

    if-eqz v1, :cond_0

    .line 1073
    iget v1, p0, Landroid/widget/BounceGallery;->mItemCount:I

    if-lez v1, :cond_0

    .line 1074
    iget-object v1, p0, Landroid/widget/BounceGallery;->mSelectedChild:Landroid/view/View;

    invoke-direct {p0, v1}, Landroid/widget/BounceGallery;->dispatchPress(Landroid/view/View;)V

    .line 1075
    new-instance v1, Landroid/widget/BounceGallery$2;

    invoke-direct {v1, p0}, Landroid/widget/BounceGallery$2;-><init>(Landroid/widget/BounceGallery;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p0, v1, v2, v3}, Landroid/widget/BounceGallery;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1081
    iget v1, p0, Landroid/widget/BounceGallery;->mSelectedPosition:I

    iget v2, p0, Landroid/widget/BounceGallery;->mFirstPosition:I

    sub-int v0, v1, v2

    .line 1082
    .local v0, selectedIndex:I
    invoke-virtual {p0, v0}, Landroid/widget/BounceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Landroid/widget/BounceGallery;->mSelectedPosition:I

    iget-object v3, p0, Landroid/widget/BounceGallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget v4, p0, Landroid/widget/BounceGallery;->mSelectedPosition:I

    invoke-interface {v3, v4}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v3

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/widget/BounceGallery;->performItemClick(Landroid/view/View;IJ)Z

    .line 1088
    .end local v0           #selectedIndex:I
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/BounceGallery;->mReceivedInvokeKeyDown:Z

    .line 1089
    const/4 v1, 0x1

    goto :goto_0

    .line 1069
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/4 v1, 0x0

    .line 423
    invoke-super/range {p0 .. p5}, Landroid/widget/AbsSpinner;->onLayout(ZIIII)V

    .line 429
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/BounceGallery;->mInLayout:Z

    .line 430
    invoke-virtual {p0, v1, v1}, Landroid/widget/BounceGallery;->layout(IZ)V

    .line 431
    iput-boolean v1, p0, Landroid/widget/BounceGallery;->mInLayout:Z

    .line 432
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 3
    .parameter "scrollX"
    .parameter "scrollY"
    .parameter "clampedX"
    .parameter "clampedY"

    .prologue
    .line 1573
    const-string v0, "BounceGallery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onOverScrolled: scrollX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",clampedX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mScrollX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/BounceGallery;->mScrollX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1576
    iget v0, p0, Landroid/widget/BounceGallery;->mScrollX:I

    if-eq v0, p1, :cond_0

    .line 1577
    iput p1, p0, Landroid/widget/BounceGallery;->mScrollX:I

    .line 1578
    invoke-virtual {p0}, Landroid/widget/BounceGallery;->invalidateParentIfNeeded()V

    .line 1580
    invoke-virtual {p0}, Landroid/widget/BounceGallery;->awakenScrollBars()Z

    .line 1582
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 29
    .parameter "ev"

    .prologue
    .line 1283
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v13

    .line 1284
    .local v13, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v0, v3

    move/from16 v28, v0

    .line 1285
    .local v28, y:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v0, v3

    move/from16 v27, v0

    .line 1288
    .local v27, x:I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/BounceGallery;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v3, :cond_0

    .line 1289
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/widget/BounceGallery;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1290
    const-string v3, "BounceGallery"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onTouchEvent new mVelocityTracker = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/BounceGallery;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/BounceGallery;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1294
    const/16 v18, 0x0

    .line 1295
    .local v18, handled:Z
    const/4 v15, 0x0

    .line 1297
    .local v15, deltaX:I
    and-int/lit16 v3, v13, 0xff

    packed-switch v3, :pswitch_data_0

    .line 1537
    :goto_0
    return v18

    .line 1300
    :pswitch_0
    const-string v3, "BounceGallery"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Touch down: mTouchMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/BounceGallery;->mTouchMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",x = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mLastMotionX = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/BounceGallery;->mLastMotionX:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mDownTouchPosition = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/BounceGallery;->mDownTouchPosition:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mVelocityTracker = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/BounceGallery;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/BounceGallery;->mLastMotionX:I

    .line 1306
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/BounceGallery;->mTouchMode:I

    packed-switch v3, :pswitch_data_1

    .line 1328
    :pswitch_1
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/BounceGallery;->mTouchMode:I

    .line 1331
    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/widget/BounceGallery;->pointToPosition(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/BounceGallery;->mDownTouchPosition:I

    .line 1332
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/BounceGallery;->mDownTouchPosition:I

    if-ltz v3, :cond_1

    .line 1333
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/BounceGallery;->mDownTouchPosition:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/BounceGallery;->mFirstPosition:I

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/widget/BounceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/widget/BounceGallery;->mDownTouchView:Landroid/view/View;

    .line 1334
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/BounceGallery;->mDownTouchView:Landroid/view/View;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setPressed(Z)V

    .line 1337
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/BounceGallery;->mPendingCheckForTap:Ljava/lang/Runnable;

    if-nez v3, :cond_2

    .line 1338
    new-instance v3, Landroid/widget/BounceGallery$CheckForTap;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Landroid/widget/BounceGallery$CheckForTap;-><init>(Landroid/widget/BounceGallery;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/widget/BounceGallery;->mPendingCheckForTap:Ljava/lang/Runnable;

    .line 1340
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/BounceGallery;->mPendingCheckForTap:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v4

    int-to-long v4, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/widget/BounceGallery;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1343
    :cond_3
    :goto_1
    const/16 v18, 0x1

    .line 1344
    goto/16 :goto_0

    .line 1308
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/BounceGallery;->mFlingRunnable:Landroid/widget/BounceGallery$FlingRunnable;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/BounceGallery$FlingRunnable;->stop(Z)V

    .line 1309
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/BounceGallery;->mScrollX:I

    if-nez v3, :cond_4

    .line 1310
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/BounceGallery;->mTouchMode:I

    goto :goto_1

    .line 1312
    :cond_4
    const/4 v3, 0x3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/BounceGallery;->mTouchMode:I

    goto :goto_1

    .line 1317
    :pswitch_3
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/BounceGallery;->mTouchMode:I

    .line 1319
    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/widget/BounceGallery;->pointToPosition(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/BounceGallery;->mDownTouchPosition:I

    .line 1320
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/BounceGallery;->mDownTouchPosition:I

    if-ltz v3, :cond_3

    .line 1321
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/BounceGallery;->mDownTouchPosition:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/BounceGallery;->mFirstPosition:I

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/widget/BounceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/widget/BounceGallery;->mDownTouchView:Landroid/view/View;

    .line 1322
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/BounceGallery;->mDownTouchView:Landroid/view/View;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setPressed(Z)V

    goto :goto_1

    .line 1347
    :pswitch_4
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/BounceGallery;->mLastMotionX:I

    sub-int v15, v27, v3

    .line 1349
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/BounceGallery;->mTouchMode:I

    packed-switch v3, :pswitch_data_2

    .line 1433
    :cond_5
    :goto_2
    :pswitch_5
    const/16 v18, 0x1

    .line 1434
    goto/16 :goto_0

    .line 1352
    :pswitch_6
    const-string v3, "BounceGallery"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Touch move from touch down: mLastMotionX = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/BounceGallery;->mLastMotionX:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",x = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mDownTouchPosition = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/BounceGallery;->mDownTouchPosition:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",deltaX = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mVelocityTracker = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/BounceGallery;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Landroid/widget/BounceGallery;->startScrollIfNeeded(I)Z

    goto :goto_2

    .line 1363
    :pswitch_7
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/BounceGallery;->mLastMotionX:I

    move/from16 v0, v27

    if-eq v0, v3, :cond_5

    .line 1364
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/widget/BounceGallery;->trackMotionScroll(I)V

    .line 1366
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/BounceGallery;->mFirstPosition:I

    move/from16 v16, v0

    .line 1367
    .local v16, firstPosition:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/BounceGallery;->getChildCount()I

    move-result v3

    add-int v20, v16, v3

    .line 1372
    .local v20, lastPosition:I
    if-lez v15, :cond_7

    if-nez v16, :cond_7

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/widget/BounceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/widget/BounceGallery;->getCenterOfView(Landroid/view/View;)I

    move-result v3

    invoke-direct/range {p0 .. p0}, Landroid/widget/BounceGallery;->getCenterOfGallery()I

    move-result v4

    if-lt v3, v4, :cond_7

    .line 1374
    const/4 v3, 0x3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/BounceGallery;->mTouchMode:I

    .line 1380
    :cond_6
    :goto_3
    const-string v3, "BounceGallery"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Touch move from scroll: mTouchMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/BounceGallery;->mTouchMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mLastMotionX = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/BounceGallery;->mLastMotionX:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",x = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mDownTouchPosition = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/BounceGallery;->mDownTouchPosition:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",deltaX = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mFirstPosition = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/BounceGallery;->mFirstPosition:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mVelocityTracker = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/BounceGallery;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/BounceGallery;->mLastMotionX:I

    goto/16 :goto_2

    .line 1375
    :cond_7
    if-gez v15, :cond_6

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/BounceGallery;->mItemCount:I

    move/from16 v0, v20

    if-ne v0, v3, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/BounceGallery;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/widget/BounceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/widget/BounceGallery;->getCenterOfView(Landroid/view/View;)I

    move-result v3

    invoke-direct/range {p0 .. p0}, Landroid/widget/BounceGallery;->getCenterOfGallery()I

    move-result v4

    if-gt v3, v4, :cond_6

    .line 1377
    const/4 v3, 0x3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/BounceGallery;->mTouchMode:I

    goto/16 :goto_3

    .line 1391
    .end local v16           #firstPosition:I
    .end local v20           #lastPosition:I
    :pswitch_8
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/BounceGallery;->mScrollX:I

    move/from16 v23, v0

    .line 1392
    .local v23, oldScroll:I
    sub-int v22, v23, v15

    .line 1393
    .local v22, newScroll:I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/BounceGallery;->mScrollX:I

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    float-to-int v0, v3

    move/from16 v21, v0

    .line 1394
    .local v21, newDirection:I
    mul-int v3, v23, v22

    if-gez v3, :cond_b

    const/16 v24, 0x1

    .line 1397
    .local v24, scrollDirectionWillChange:Z
    :goto_4
    const-string v3, "BounceGallery"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Touch move from over scroll: mScrollX = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/BounceGallery;->mScrollX:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mLastMotionX = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/BounceGallery;->mLastMotionX:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",x = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",deltaX = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mDownTouchPosition = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/BounceGallery;->mDownTouchPosition:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",newScroll = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mFirstPosition = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/BounceGallery;->mFirstPosition:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mDirection = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/BounceGallery;->mDirection:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mVelocityTracker = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/BounceGallery;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1404
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/BounceGallery;->mDirection:I

    if-nez v3, :cond_8

    .line 1405
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/BounceGallery;->mDirection:I

    .line 1408
    :cond_8
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/BounceGallery;->mDirection:I

    move/from16 v0, v21

    if-ne v3, v0, :cond_9

    if-eqz v24, :cond_c

    .line 1414
    :cond_9
    move/from16 v0, v22

    neg-int v15, v0

    .line 1415
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/BounceGallery;->mScrollX:I

    .line 1418
    if-eqz v15, :cond_a

    .line 1419
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/widget/BounceGallery;->trackMotionScroll(I)V

    .line 1421
    :cond_a
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/BounceGallery;->mTouchMode:I

    .line 1429
    :goto_5
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/BounceGallery;->mDirection:I

    .line 1430
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/BounceGallery;->mLastMotionX:I

    goto/16 :goto_2

    .line 1394
    .end local v24           #scrollDirectionWillChange:Z
    :cond_b
    const/16 v24, 0x0

    goto/16 :goto_4

    .line 1424
    .restart local v24       #scrollDirectionWillChange:Z
    :cond_c
    neg-int v4, v15

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/BounceGallery;->mScrollX:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Landroid/widget/BounceGallery;->mOverscrollDistance:I

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v12}, Landroid/widget/BounceGallery;->overScrollBy(IIIIIIIIZ)Z

    .line 1426
    invoke-virtual/range {p0 .. p0}, Landroid/widget/BounceGallery;->invalidate()V

    goto :goto_5

    .line 1438
    .end local v21           #newDirection:I
    .end local v22           #newScroll:I
    .end local v23           #oldScroll:I
    .end local v24           #scrollDirectionWillChange:Z
    :pswitch_9
    const-string v3, "BounceGallery"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Touch up: mTouchMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/BounceGallery;->mTouchMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mLastMotionX = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/BounceGallery;->mLastMotionX:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",x = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",deltaX = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mScrollX = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/BounceGallery;->mScrollX:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mDownTouchPosition = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/BounceGallery;->mDownTouchPosition:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/BounceGallery;->mTouchMode:I

    packed-switch v3, :pswitch_data_3

    .line 1518
    :cond_d
    :goto_6
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/BounceGallery;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_e

    .line 1519
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/BounceGallery;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->recycle()V

    .line 1520
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/widget/BounceGallery;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1522
    :cond_e
    const/16 v18, 0x1

    .line 1523
    goto/16 :goto_0

    .line 1445
    :pswitch_b
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/BounceGallery;->mDownTouchPosition:I

    if-ltz v3, :cond_d

    .line 1446
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/BounceGallery;->mDownTouchPosition:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/BounceGallery;->mFirstPosition:I

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/widget/BounceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 1447
    .local v14, child:Landroid/view/View;
    if-eqz v14, :cond_f

    invoke-virtual {v14}, Landroid/view/View;->hasFocusable()Z

    move-result v3

    if-nez v3, :cond_f

    invoke-virtual {v14}, Landroid/view/View;->isPressed()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1448
    const/4 v3, 0x0

    invoke-virtual {v14, v3}, Landroid/view/View;->setPressed(Z)V

    .line 1452
    :cond_f
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/BounceGallery;->mDownTouchPosition:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/BounceGallery;->mFirstPosition:I

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/widget/BounceGallery;->scrollToChild(I)Z

    .line 1455
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/BounceGallery;->mShouldCallbackOnUnselectedItemClick:Z

    if-nez v3, :cond_10

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/BounceGallery;->mDownTouchPosition:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/BounceGallery;->mSelectedPosition:I

    if-ne v3, v4, :cond_d

    .line 1456
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/BounceGallery;->mDownTouchView:Landroid/view/View;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/BounceGallery;->mDownTouchPosition:I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/BounceGallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/BounceGallery;->mDownTouchPosition:I

    invoke-interface {v5, v6}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/widget/BounceGallery;->performItemClick(Landroid/view/View;IJ)Z

    goto :goto_6

    .line 1462
    .end local v14           #child:Landroid/view/View;
    :pswitch_c
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/BounceGallery;->mShouldCallbackDuringFling:Z

    if-nez v3, :cond_11

    .line 1467
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/BounceGallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/widget/BounceGallery;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1470
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/BounceGallery;->mSuppressSelectionChanged:Z

    if-nez v3, :cond_11

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/widget/BounceGallery;->mSuppressSelectionChanged:Z

    .line 1474
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/BounceGallery;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v17, v0

    .line 1475
    .local v17, flingVelocityTracker:Landroid/view/VelocityTracker;
    const/16 v3, 0x3e8

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/BounceGallery;->mMaximumVelocity:I

    int-to-float v4, v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1476
    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v3

    float-to-int v0, v3

    move/from16 v26, v0

    .line 1478
    .local v26, velocityX:I
    const-string v3, "BounceGallery"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Touch up from scroll: velocityX = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mMinimumVelocity = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/BounceGallery;->mMinimumVelocity:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mVelocityTracker = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/BounceGallery;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1483
    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/BounceGallery;->mMinimumVelocity:I

    if-le v3, v4, :cond_13

    .line 1484
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/BounceGallery;->mFlingRunnable:Landroid/widget/BounceGallery$FlingRunnable;

    if-nez v3, :cond_12

    .line 1485
    new-instance v3, Landroid/widget/BounceGallery$FlingRunnable;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Landroid/widget/BounceGallery$FlingRunnable;-><init>(Landroid/widget/BounceGallery;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/widget/BounceGallery;->mFlingRunnable:Landroid/widget/BounceGallery$FlingRunnable;

    .line 1487
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/BounceGallery;->mFlingRunnable:Landroid/widget/BounceGallery$FlingRunnable;

    move/from16 v0, v26

    neg-int v4, v0

    invoke-virtual {v3, v4}, Landroid/widget/BounceGallery$FlingRunnable;->startUsingVelocity(I)V

    goto/16 :goto_6

    .line 1489
    :cond_13
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/BounceGallery;->mTouchMode:I

    .line 1490
    invoke-virtual/range {p0 .. p0}, Landroid/widget/BounceGallery;->onUpOrCancel()V

    goto/16 :goto_6

    .line 1495
    .end local v17           #flingVelocityTracker:Landroid/view/VelocityTracker;
    .end local v26           #velocityX:I
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/BounceGallery;->mFlingRunnable:Landroid/widget/BounceGallery$FlingRunnable;

    if-nez v3, :cond_14

    .line 1496
    new-instance v3, Landroid/widget/BounceGallery$FlingRunnable;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Landroid/widget/BounceGallery$FlingRunnable;-><init>(Landroid/widget/BounceGallery;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/widget/BounceGallery;->mFlingRunnable:Landroid/widget/BounceGallery$FlingRunnable;

    .line 1499
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/BounceGallery;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v25, v0

    .line 1500
    .local v25, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v3, 0x3e8

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/BounceGallery;->mMaximumVelocity:I

    int-to-float v4, v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1501
    invoke-virtual/range {v25 .. v25}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v3

    float-to-int v0, v3

    move/from16 v19, v0

    .line 1503
    .local v19, initialVelocity:I
    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/BounceGallery;->mMinimumVelocity:I

    if-le v3, v4, :cond_15

    .line 1504
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/BounceGallery;->mFlingRunnable:Landroid/widget/BounceGallery$FlingRunnable;

    move/from16 v0, v19

    neg-int v4, v0

    invoke-virtual {v3, v4}, Landroid/widget/BounceGallery$FlingRunnable;->startOverfling(I)V

    goto/16 :goto_6

    .line 1506
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/BounceGallery;->mFlingRunnable:Landroid/widget/BounceGallery$FlingRunnable;

    invoke-virtual {v3}, Landroid/widget/BounceGallery$FlingRunnable;->startSpringback()V

    goto/16 :goto_6

    .line 1511
    .end local v19           #initialVelocity:I
    .end local v25           #velocityTracker:Landroid/view/VelocityTracker;
    :pswitch_e
    const-string v3, "BounceGallery"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Touch up from TOUCH_MODE_REST: mDownTouchView = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/BounceGallery;->mDownTouchView:Landroid/view/View;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1512
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/BounceGallery;->mDownTouchView:Landroid/view/View;

    if-eqz v3, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/BounceGallery;->mDownTouchView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->isPressed()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1513
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/BounceGallery;->mDownTouchView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setPressed(Z)V

    goto/16 :goto_6

    .line 1527
    :pswitch_f
    const-string v3, "BounceGallery"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Touch cancel: mTouchMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/BounceGallery;->mTouchMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mDownTouchView = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/BounceGallery;->mDownTouchView:Landroid/view/View;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1529
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/BounceGallery;->mTouchMode:I

    .line 1530
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/BounceGallery;->mDownTouchView:Landroid/view/View;

    if-eqz v3, :cond_16

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/BounceGallery;->mDownTouchView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->isPressed()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 1531
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/BounceGallery;->mDownTouchView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setPressed(Z)V

    .line 1533
    :cond_16
    invoke-virtual/range {p0 .. p0}, Landroid/widget/BounceGallery;->onUpOrCancel()V

    .line 1534
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 1297
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_9
        :pswitch_4
        :pswitch_f
    .end packed-switch

    .line 1306
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1349
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_8
    .end packed-switch

    .line 1443
    :pswitch_data_3
    .packed-switch -0x1
        :pswitch_e
        :pswitch_b
        :pswitch_c
        :pswitch_a
        :pswitch_d
    .end packed-switch
.end method

.method onUpOrCancel()V
    .locals 3

    .prologue
    .line 982
    const-string v0, "BounceGallery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUpOrCancel: finished = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/BounceGallery;->mFlingRunnable:Landroid/widget/BounceGallery$FlingRunnable;

    #getter for: Landroid/widget/BounceGallery$FlingRunnable;->mScroller:Landroid/widget/OverScroller;
    invoke-static {v2}, Landroid/widget/BounceGallery$FlingRunnable;->access$100(Landroid/widget/BounceGallery$FlingRunnable;)Landroid/widget/OverScroller;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mSelectedPosition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/BounceGallery;->mSelectedPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mVelocityTracker = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/BounceGallery;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    iget-object v0, p0, Landroid/widget/BounceGallery;->mPendingCheckForTap:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Landroid/widget/BounceGallery;->removeRunnables(Ljava/lang/Runnable;)V

    .line 987
    iget-object v0, p0, Landroid/widget/BounceGallery;->mPendingCheckForLongPress:Landroid/widget/BounceGallery$CheckForLongPress;

    invoke-direct {p0, v0}, Landroid/widget/BounceGallery;->removeRunnables(Ljava/lang/Runnable;)V

    .line 989
    iget-object v0, p0, Landroid/widget/BounceGallery;->mFlingRunnable:Landroid/widget/BounceGallery$FlingRunnable;

    #getter for: Landroid/widget/BounceGallery$FlingRunnable;->mScroller:Landroid/widget/OverScroller;
    invoke-static {v0}, Landroid/widget/BounceGallery$FlingRunnable;->access$100(Landroid/widget/BounceGallery$FlingRunnable;)Landroid/widget/OverScroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 990
    invoke-direct {p0}, Landroid/widget/BounceGallery;->scrollIntoSlots()V

    .line 993
    :cond_0
    invoke-direct {p0}, Landroid/widget/BounceGallery;->dispatchUnpress()V

    .line 995
    iget-object v0, p0, Landroid/widget/BounceGallery;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    .line 996
    iget-object v0, p0, Landroid/widget/BounceGallery;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 997
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/BounceGallery;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 999
    :cond_1
    return-void
.end method

.method selectionChanged()V
    .locals 3

    .prologue
    .line 641
    iget-boolean v0, p0, Landroid/widget/BounceGallery;->mSuppressSelectionChanged:Z

    if-nez v0, :cond_0

    .line 642
    invoke-super {p0}, Landroid/widget/AbsSpinner;->selectionChanged()V

    .line 645
    :cond_0
    iget-object v0, p0, Landroid/widget/BounceGallery;->mSelectionChangeListener:Landroid/widget/BounceGallery$OnSelectionChangeListener;

    if-eqz v0, :cond_1

    .line 646
    iget-object v0, p0, Landroid/widget/BounceGallery;->mSelectionChangeListener:Landroid/widget/BounceGallery$OnSelectionChangeListener;

    invoke-interface {v0}, Landroid/widget/BounceGallery$OnSelectionChangeListener;->onSelectionChanged()V

    .line 649
    :cond_1
    const-string v0, "BounceGallery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "selectionChanged mSelectedPosition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/BounceGallery;->mSelectedPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    return-void
.end method

.method public setAnimationDuration(I)V
    .locals 0
    .parameter "animationDurationMillis"

    .prologue
    .line 349
    iput p1, p0, Landroid/widget/BounceGallery;->mAnimationDuration:I

    .line 350
    return-void
.end method

.method public setCallbackDuringFling(Z)V
    .locals 0
    .parameter "shouldCallback"

    .prologue
    .line 323
    iput-boolean p1, p0, Landroid/widget/BounceGallery;->mShouldCallbackDuringFling:Z

    .line 324
    return-void
.end method

.method public setCallbackOnUnselectedItemClick(Z)V
    .locals 0
    .parameter "shouldCallback"

    .prologue
    .line 336
    iput-boolean p1, p0, Landroid/widget/BounceGallery;->mShouldCallbackOnUnselectedItemClick:Z

    .line 337
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .parameter "gravity"

    .prologue
    .line 1182
    iget v0, p0, Landroid/widget/BounceGallery;->mGravity:I

    if-eq v0, p1, :cond_0

    .line 1183
    iput p1, p0, Landroid/widget/BounceGallery;->mGravity:I

    .line 1184
    invoke-virtual {p0}, Landroid/widget/BounceGallery;->requestLayout()V

    .line 1186
    :cond_0
    return-void
.end method

.method public setOnSelectionChangeListener(Landroid/widget/BounceGallery$OnSelectionChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1608
    iput-object p1, p0, Landroid/widget/BounceGallery;->mSelectionChangeListener:Landroid/widget/BounceGallery$OnSelectionChangeListener;

    .line 1609
    return-void
.end method

.method public setOverScrollDistance(I)V
    .locals 0
    .parameter "distance"

    .prologue
    .line 1632
    iput p1, p0, Landroid/widget/BounceGallery;->mOverscrollDistance:I

    .line 1633
    iput p1, p0, Landroid/widget/BounceGallery;->mOverflingDistance:I

    .line 1634
    return-void
.end method

.method public setOverflingDistance(I)V
    .locals 0
    .parameter "overflingDistance"

    .prologue
    .line 1599
    iput p1, p0, Landroid/widget/BounceGallery;->mOverflingDistance:I

    .line 1600
    return-void
.end method

.method public setOverscrollDistance(I)V
    .locals 0
    .parameter "overscrollDistance"

    .prologue
    .line 1590
    iput p1, p0, Landroid/widget/BounceGallery;->mOverscrollDistance:I

    .line 1591
    return-void
.end method

.method setSelectedPositionInt(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 1139
    invoke-super {p0, p1}, Landroid/widget/AbsSpinner;->setSelectedPositionInt(I)V

    .line 1142
    invoke-direct {p0}, Landroid/widget/BounceGallery;->updateSelectedItemMetadata()V

    .line 1143
    return-void
.end method

.method public setSpacing(I)V
    .locals 0
    .parameter "spacing"

    .prologue
    .line 358
    iput p1, p0, Landroid/widget/BounceGallery;->mSpacing:I

    .line 359
    return-void
.end method

.method public setUnselectedAlpha(F)V
    .locals 0
    .parameter "unselectedAlpha"

    .prologue
    .line 369
    iput p1, p0, Landroid/widget/BounceGallery;->mUnselectedAlpha:F

    .line 370
    return-void
.end method

.method public showContextMenu()Z
    .locals 5

    .prologue
    .line 1272
    invoke-virtual {p0}, Landroid/widget/BounceGallery;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/widget/BounceGallery;->mSelectedPosition:I

    if-ltz v2, :cond_0

    .line 1273
    iget v2, p0, Landroid/widget/BounceGallery;->mSelectedPosition:I

    iget v3, p0, Landroid/widget/BounceGallery;->mFirstPosition:I

    sub-int v0, v2, v3

    .line 1274
    .local v0, index:I
    invoke-virtual {p0, v0}, Landroid/widget/BounceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1275
    .local v1, v:Landroid/view/View;
    iget v2, p0, Landroid/widget/BounceGallery;->mSelectedPosition:I

    iget-wide v3, p0, Landroid/widget/BounceGallery;->mSelectedRowId:J

    invoke-direct {p0, v1, v2, v3, v4}, Landroid/widget/BounceGallery;->performLongPress(Landroid/view/View;IJ)Z

    move-result v2

    .line 1278
    .end local v0           #index:I
    .end local v1           #v:Landroid/view/View;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 4
    .parameter "originalView"

    .prologue
    .line 1260
    invoke-virtual {p0, p1}, Landroid/widget/BounceGallery;->getPositionForView(Landroid/view/View;)I

    move-result v2

    .line 1261
    .local v2, longPressPosition:I
    if-gez v2, :cond_0

    .line 1262
    const/4 v3, 0x0

    .line 1266
    :goto_0
    return v3

    .line 1265
    :cond_0
    iget-object v3, p0, Landroid/widget/BounceGallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v3, v2}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v0

    .line 1266
    .local v0, longPressId:J
    invoke-direct {p0, p1, v2, v0, v1}, Landroid/widget/BounceGallery;->performLongPress(Landroid/view/View;IJ)Z

    move-result v3

    goto :goto_0
.end method

.method trackMotionScroll(I)V
    .locals 5
    .parameter "deltaX"

    .prologue
    const/4 v2, 0x1

    .line 447
    invoke-virtual {p0}, Landroid/widget/BounceGallery;->getChildCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 484
    :goto_0
    return-void

    .line 451
    :cond_0
    if-gez p1, :cond_3

    move v1, v2

    .line 453
    .local v1, toLeft:Z
    :goto_1
    invoke-virtual {p0, v1, p1}, Landroid/widget/BounceGallery;->getLimitedMotionScrollAmount(ZI)I

    move-result v0

    .line 454
    .local v0, limitedDeltaX:I
    if-eq v0, p1, :cond_2

    .line 456
    iget v3, p0, Landroid/widget/BounceGallery;->mTouchMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 457
    iput-boolean v2, p0, Landroid/widget/BounceGallery;->mNeedOverscroll:Z

    .line 458
    sub-int v2, p1, v0

    iput v2, p0, Landroid/widget/BounceGallery;->mDistanceLeft:I

    .line 462
    :cond_1
    const-string v2, "BounceGallery"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "trackMotionScroll: may need over scroll, mTouchMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/widget/BounceGallery;->mTouchMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",deltaX = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",limitedDeltaX = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",mDistanceLeft = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/widget/BounceGallery;->mDistanceLeft:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",mFirstPosition = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/widget/BounceGallery;->mFirstPosition:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    :cond_2
    invoke-direct {p0, v0}, Landroid/widget/BounceGallery;->offsetChildrenLeftAndRight(I)V

    .line 470
    invoke-direct {p0, v1}, Landroid/widget/BounceGallery;->detachOffScreenChildren(Z)V

    .line 472
    if-eqz v1, :cond_4

    .line 474
    invoke-direct {p0}, Landroid/widget/BounceGallery;->fillToGalleryRight()V

    .line 481
    :goto_2
    iget-object v2, p0, Landroid/widget/BounceGallery;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v2}, Landroid/widget/AbsSpinner$RecycleBin;->clear()V

    .line 482
    invoke-direct {p0}, Landroid/widget/BounceGallery;->setSelectionToCenterChild()V

    .line 483
    invoke-virtual {p0}, Landroid/widget/BounceGallery;->invalidate()V

    goto :goto_0

    .line 451
    .end local v0           #limitedDeltaX:I
    .end local v1           #toLeft:Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 477
    .restart local v0       #limitedDeltaX:I
    .restart local v1       #toLeft:Z
    :cond_4
    invoke-direct {p0}, Landroid/widget/BounceGallery;->fillToGalleryLeft()V

    goto :goto_2
.end method
