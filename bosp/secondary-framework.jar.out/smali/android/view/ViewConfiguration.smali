.class public Landroid/view/ViewConfiguration;
.super Ljava/lang/Object;
.source "ViewConfiguration.java"


# static fields
.field public static final ALPHA_THRESHOLD:F = 0.020833334f

.field private static final DEFAULT_LONG_PRESS_TIMEOUT:I = 0x1f4

.field private static final DOUBLE_TAP_SLOP:I = 0x64

.field private static final DOUBLE_TAP_TIMEOUT:I = 0x12c

.field private static final DOUBLE_TAP_TOUCH_SLOP:I = 0x8

.field private static final EDGE_SLOP:I = 0xc

.field private static final FADING_EDGE_LENGTH:I = 0xc

.field private static final GLOBAL_ACTIONS_KEY_TIMEOUT:I = 0x1f4

.field private static final HOVER_TAP_SLOP:I = 0x14

.field private static final HOVER_TAP_TIMEOUT:I = 0x96

.field private static final JUMP_TAP_TIMEOUT:I = 0x1f4

.field private static final KEY_REPEAT_DELAY:I = 0x32

.field private static final MAXIMUM_DRAWING_CACHE_SIZE:I = 0x177000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final MAXIMUM_FLING_VELOCITY:I = 0x1f40

.field private static final MINIMUM_FLING_VELOCITY:I = 0x32

.field private static final OVERFLING_DISTANCE:I = 0x6

.field private static final OVERSCROLL_DISTANCE:I = 0x0

.field private static final PAGING_TOUCH_SLOP:I = 0x10

.field public static final PANEL_BIT_DEPTH:F = 24.0f

.field private static final PRESSED_STATE_DURATION:I = 0x40

.field private static final SCROLL_BAR_DEFAULT_DELAY:I = 0x12c

.field private static final SCROLL_BAR_FADE_DURATION:I = 0xfa

.field private static final SCROLL_BAR_SIZE:I = 0xa

.field private static final SCROLL_FRICTION:F = 0.015f

.field private static final SEND_RECURRING_ACCESSIBILITY_EVENTS_INTERVAL_MILLIS:J = 0x64L

.field private static final TAP_TIMEOUT:I = 0xb4

.field private static final TOUCH_SLOP:I = 0x8

.field private static final WINDOW_TOUCH_SLOP:I = 0x10

.field private static final ZOOM_CONTROLS_TIMEOUT:I = 0xbb8

.field static final sConfigurations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/ViewConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDoubleTapSlop:I

.field private final mDoubleTapTouchSlop:I

.field private final mEdgeSlop:I

.field private final mFadingEdgeLength:I

.field private final mFadingMarqueeEnabled:Z

.field private final mMaximumDrawingCacheSize:I

.field private final mMaximumFlingVelocity:I

.field private final mMinimumFlingVelocity:I

.field private final mOverflingDistance:I

.field private final mOverscrollDistance:I

.field private final mPagingTouchSlop:I

.field private final mScrollbarSize:I

.field private final mTouchSlop:I

.field private final mWindowTouchSlop:I

.field private sHasPermanentMenuKey:Z

.field private sHasPermanentMenuKeySet:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 228
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Landroid/view/ViewConfiguration;->sConfigurations:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/16 v2, 0x10

    const/16 v0, 0xc

    const/16 v1, 0x8

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    iput v0, p0, Landroid/view/ViewConfiguration;->mEdgeSlop:I

    .line 237
    iput v0, p0, Landroid/view/ViewConfiguration;->mFadingEdgeLength:I

    .line 238
    const/16 v0, 0x32

    iput v0, p0, Landroid/view/ViewConfiguration;->mMinimumFlingVelocity:I

    .line 239
    const/16 v0, 0x1f40

    iput v0, p0, Landroid/view/ViewConfiguration;->mMaximumFlingVelocity:I

    .line 240
    const/16 v0, 0xa

    iput v0, p0, Landroid/view/ViewConfiguration;->mScrollbarSize:I

    .line 241
    iput v1, p0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    .line 242
    iput v1, p0, Landroid/view/ViewConfiguration;->mDoubleTapTouchSlop:I

    .line 243
    iput v2, p0, Landroid/view/ViewConfiguration;->mPagingTouchSlop:I

    .line 244
    const/16 v0, 0x64

    iput v0, p0, Landroid/view/ViewConfiguration;->mDoubleTapSlop:I

    .line 245
    iput v2, p0, Landroid/view/ViewConfiguration;->mWindowTouchSlop:I

    .line 247
    const v0, 0x177000

    iput v0, p0, Landroid/view/ViewConfiguration;->mMaximumDrawingCacheSize:I

    .line 248
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewConfiguration;->mOverscrollDistance:I

    .line 249
    const/4 v0, 0x6

    iput v0, p0, Landroid/view/ViewConfiguration;->mOverflingDistance:I

    .line 250
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewConfiguration;->mFadingMarqueeEnabled:Z

    .line 251
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 12
    .parameter "context"

    .prologue
    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 265
    .local v5, res:Landroid/content/res/Resources;
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 266
    .local v4, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 267
    .local v0, config:Landroid/content/res/Configuration;
    iget v1, v4, Landroid/util/DisplayMetrics;->density:F

    .line 269
    .local v1, density:F
    const/4 v10, 0x4

    invoke-virtual {v0, v10}, Landroid/content/res/Configuration;->isLayoutSizeAtLeast(I)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 270
    const/high16 v10, 0x3fc0

    mul-float v7, v1, v10

    .line 275
    .local v7, sizeAndDensity:F
    :goto_0
    const/high16 v10, 0x4140

    mul-float/2addr v10, v7

    const/high16 v11, 0x3f00

    add-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, p0, Landroid/view/ViewConfiguration;->mEdgeSlop:I

    .line 276
    const/high16 v10, 0x4140

    mul-float/2addr v10, v7

    const/high16 v11, 0x3f00

    add-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, p0, Landroid/view/ViewConfiguration;->mFadingEdgeLength:I

    .line 277
    const/high16 v10, 0x4248

    mul-float/2addr v10, v1

    const/high16 v11, 0x3f00

    add-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, p0, Landroid/view/ViewConfiguration;->mMinimumFlingVelocity:I

    .line 278
    const/high16 v10, 0x45fa

    mul-float/2addr v10, v1

    const/high16 v11, 0x3f00

    add-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, p0, Landroid/view/ViewConfiguration;->mMaximumFlingVelocity:I

    .line 279
    const/high16 v10, 0x4120

    mul-float/2addr v10, v1

    const/high16 v11, 0x3f00

    add-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, p0, Landroid/view/ViewConfiguration;->mScrollbarSize:I

    .line 280
    const/high16 v10, 0x42c8

    mul-float/2addr v10, v7

    const/high16 v11, 0x3f00

    add-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, p0, Landroid/view/ViewConfiguration;->mDoubleTapSlop:I

    .line 281
    const/high16 v10, 0x4180

    mul-float/2addr v10, v7

    const/high16 v11, 0x3f00

    add-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, p0, Landroid/view/ViewConfiguration;->mWindowTouchSlop:I

    .line 284
    const-string v10, "window"

    invoke-virtual {p1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager;

    .line 285
    .local v8, win:Landroid/view/WindowManager;
    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 286
    .local v2, display:Landroid/view/Display;
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    .line 287
    .local v6, size:Landroid/graphics/Point;
    invoke-virtual {v2, v6}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 288
    iget v10, v6, Landroid/graphics/Point;->x:I

    mul-int/lit8 v10, v10, 0x4

    iget v11, v6, Landroid/graphics/Point;->y:I

    mul-int/2addr v10, v11

    iput v10, p0, Landroid/view/ViewConfiguration;->mMaximumDrawingCacheSize:I

    .line 290
    const/4 v10, 0x0

    mul-float/2addr v10, v7

    const/high16 v11, 0x3f00

    add-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, p0, Landroid/view/ViewConfiguration;->mOverscrollDistance:I

    .line 291
    const/high16 v10, 0x40c0

    mul-float/2addr v10, v7

    const/high16 v11, 0x3f00

    add-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, p0, Landroid/view/ViewConfiguration;->mOverflingDistance:I

    .line 293
    iget-boolean v10, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKeySet:Z

    if-nez v10, :cond_0

    .line 294
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v9

    .line 296
    .local v9, wm:Landroid/view/IWindowManager;
    :try_start_0
    invoke-interface {v9}, Landroid/view/IWindowManager;->hasSystemNavBar()Z

    move-result v10

    if-nez v10, :cond_2

    invoke-interface {v9}, Landroid/view/IWindowManager;->hasNavigationBar()Z

    move-result v10

    if-nez v10, :cond_2

    const/4 v10, 0x1

    :goto_1
    iput-boolean v10, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKey:Z

    .line 297
    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKeySet:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    .end local v9           #wm:Landroid/view/IWindowManager;
    :cond_0
    :goto_2
    const v10, #bool@config_ui_enableFadingMarquee#t

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    iput-boolean v10, p0, Landroid/view/ViewConfiguration;->mFadingMarqueeEnabled:Z

    .line 305
    const v10, #dimen@config_viewConfigurationTouchSlop#t

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iput v10, p0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    .line 307
    iget v10, p0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    mul-int/lit8 v10, v10, 0x2

    iput v10, p0, Landroid/view/ViewConfiguration;->mPagingTouchSlop:I

    .line 309
    iget v10, p0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    iput v10, p0, Landroid/view/ViewConfiguration;->mDoubleTapTouchSlop:I

    .line 310
    return-void

    .line 272
    .end local v2           #display:Landroid/view/Display;
    .end local v6           #size:Landroid/graphics/Point;
    .end local v7           #sizeAndDensity:F
    .end local v8           #win:Landroid/view/WindowManager;
    :cond_1
    move v7, v1

    .restart local v7       #sizeAndDensity:F
    goto/16 :goto_0

    .line 296
    .restart local v2       #display:Landroid/view/Display;
    .restart local v6       #size:Landroid/graphics/Point;
    .restart local v8       #win:Landroid/view/WindowManager;
    .restart local v9       #wm:Landroid/view/IWindowManager;
    :cond_2
    const/4 v10, 0x0

    goto :goto_1

    .line 298
    :catch_0
    move-exception v3

    .line 299
    .local v3, ex:Landroid/os/RemoteException;
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKey:Z

    goto :goto_2
.end method

.method public static get(Landroid/content/Context;)Landroid/view/ViewConfiguration;
    .locals 5
    .parameter "context"

    .prologue
    .line 320
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 321
    .local v2, metrics:Landroid/util/DisplayMetrics;
    const/high16 v3, 0x42c8

    iget v4, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    float-to-int v1, v3

    .line 323
    .local v1, density:I
    sget-object v3, Landroid/view/ViewConfiguration;->sConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewConfiguration;

    .line 324
    .local v0, configuration:Landroid/view/ViewConfiguration;
    if-nez v0, :cond_0

    .line 325
    new-instance v0, Landroid/view/ViewConfiguration;

    .end local v0           #configuration:Landroid/view/ViewConfiguration;
    invoke-direct {v0, p0}, Landroid/view/ViewConfiguration;-><init>(Landroid/content/Context;)V

    .line 326
    .restart local v0       #configuration:Landroid/view/ViewConfiguration;
    sget-object v3, Landroid/view/ViewConfiguration;->sConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 329
    :cond_0
    return-object v0
.end method

.method public static getDoubleTapSlop()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 522
    const/16 v0, 0x64

    return v0
.end method

.method public static getDoubleTapTimeout()I
    .locals 1

    .prologue
    .line 437
    const/16 v0, 0x12c

    return v0
.end method

.method public static getEdgeSlop()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 468
    const/16 v0, 0xc

    return v0
.end method

.method public static getFadingEdgeLength()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 372
    const/16 v0, 0xc

    return v0
.end method

.method public static getGlobalActionKeyTimeout()J
    .locals 2

    .prologue
    .line 657
    const-wide/16 v0, 0x1f4

    return-wide v0
.end method

.method public static getHoverTapSlop()I
    .locals 1

    .prologue
    .line 457
    const/16 v0, 0x14

    return v0
.end method

.method public static getHoverTapTimeout()I
    .locals 1

    .prologue
    .line 447
    const/16 v0, 0x96

    return v0
.end method

.method public static getJumpTapTimeout()I
    .locals 1

    .prologue
    .line 428
    const/16 v0, 0x1f4

    return v0
.end method

.method public static getKeyRepeatDelay()I
    .locals 1

    .prologue
    .line 410
    const/16 v0, 0x32

    return v0
.end method

.method public static getKeyRepeatTimeout()I
    .locals 1

    .prologue
    .line 403
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    return v0
.end method

.method public static getLongPressTimeout()I
    .locals 2

    .prologue
    .line 395
    const-string v0, "long_press_timeout"

    const/16 v1, 0x1f4

    invoke-static {v0, v1}, Landroid/app/AppGlobals;->getIntCoreSetting(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getMaximumDrawingCacheSize()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 610
    const v0, 0x177000

    return v0
.end method

.method public static getMaximumFlingVelocity()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 590
    const/16 v0, 0x1f40

    return v0
.end method

.method public static getMinimumFlingVelocity()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 573
    const/16 v0, 0x32

    return v0
.end method

.method public static getPressedStateDuration()I
    .locals 1

    .prologue
    .line 387
    const/16 v0, 0x40

    return v0
.end method

.method public static getScrollBarFadeDuration()I
    .locals 1

    .prologue
    .line 355
    const/16 v0, 0xfa

    return v0
.end method

.method public static getScrollBarSize()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 340
    const/16 v0, 0xa

    return v0
.end method

.method public static getScrollDefaultDelay()I
    .locals 1

    .prologue
    .line 362
    const/16 v0, 0x12c

    return v0
.end method

.method public static getScrollFriction()F
    .locals 1

    .prologue
    .line 667
    const v0, 0x3c75c28f

    return v0
.end method

.method public static getSendRecurringAccessibilityEventsInterval()J
    .locals 2

    .prologue
    .line 543
    const-wide/16 v0, 0x64

    return-wide v0
.end method

.method public static getTapTimeout()I
    .locals 1

    .prologue
    .line 419
    const/16 v0, 0xb4

    return v0
.end method

.method public static getTouchSlop()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 486
    const/16 v0, 0x8

    return v0
.end method

.method public static getWindowTouchSlop()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 555
    const/16 v0, 0x10

    return v0
.end method

.method public static getZoomControlsTimeout()J
    .locals 2

    .prologue
    .line 646
    const-wide/16 v0, 0xbb8

    return-wide v0
.end method


# virtual methods
.method public getScaledDoubleTapSlop()I
    .locals 1

    .prologue
    .line 530
    iget v0, p0, Landroid/view/ViewConfiguration;->mDoubleTapSlop:I

    return v0
.end method

.method public getScaledDoubleTapTouchSlop()I
    .locals 1

    .prologue
    .line 502
    iget v0, p0, Landroid/view/ViewConfiguration;->mDoubleTapTouchSlop:I

    return v0
.end method

.method public getScaledEdgeSlop()I
    .locals 1

    .prologue
    .line 476
    iget v0, p0, Landroid/view/ViewConfiguration;->mEdgeSlop:I

    return v0
.end method

.method public getScaledFadingEdgeLength()I
    .locals 1

    .prologue
    .line 379
    iget v0, p0, Landroid/view/ViewConfiguration;->mFadingEdgeLength:I

    return v0
.end method

.method public getScaledMaximumDrawingCacheSize()I
    .locals 1

    .prologue
    .line 619
    iget v0, p0, Landroid/view/ViewConfiguration;->mMaximumDrawingCacheSize:I

    return v0
.end method

.method public getScaledMaximumFlingVelocity()I
    .locals 1

    .prologue
    .line 597
    iget v0, p0, Landroid/view/ViewConfiguration;->mMaximumFlingVelocity:I

    return v0
.end method

.method public getScaledMinimumFlingVelocity()I
    .locals 1

    .prologue
    .line 580
    iget v0, p0, Landroid/view/ViewConfiguration;->mMinimumFlingVelocity:I

    return v0
.end method

.method public getScaledOverflingDistance()I
    .locals 1

    .prologue
    .line 635
    iget v0, p0, Landroid/view/ViewConfiguration;->mOverflingDistance:I

    return v0
.end method

.method public getScaledOverscrollDistance()I
    .locals 1

    .prologue
    .line 627
    iget v0, p0, Landroid/view/ViewConfiguration;->mOverscrollDistance:I

    return v0
.end method

.method public getScaledPagingTouchSlop()I
    .locals 1

    .prologue
    .line 510
    iget v0, p0, Landroid/view/ViewConfiguration;->mPagingTouchSlop:I

    return v0
.end method

.method public getScaledScrollBarSize()I
    .locals 1

    .prologue
    .line 348
    iget v0, p0, Landroid/view/ViewConfiguration;->mScrollbarSize:I

    return v0
.end method

.method public getScaledTouchSlop()I
    .locals 1

    .prologue
    .line 493
    iget v0, p0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    return v0
.end method

.method public getScaledWindowTouchSlop()I
    .locals 1

    .prologue
    .line 563
    iget v0, p0, Landroid/view/ViewConfiguration;->mWindowTouchSlop:I

    return v0
.end method

.method public hasPermanentMenuKey()Z
    .locals 1

    .prologue
    .line 683
    iget-boolean v0, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKey:Z

    return v0
.end method

.method public isFadingMarqueeEnabled()Z
    .locals 1

    .prologue
    .line 691
    iget-boolean v0, p0, Landroid/view/ViewConfiguration;->mFadingMarqueeEnabled:Z

    return v0
.end method
