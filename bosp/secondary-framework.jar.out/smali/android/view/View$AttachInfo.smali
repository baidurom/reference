.class Landroid/view/View$AttachInfo;
.super Ljava/lang/Object;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AttachInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/View$AttachInfo$InvalidateInfo;,
        Landroid/view/View$AttachInfo$Callbacks;
    }
.end annotation


# instance fields
.field mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

.field mAccessibilityWindowId:I

.field mApplicationScale:F

.field mCanvas:Landroid/graphics/Canvas;

.field final mContentInsets:Landroid/graphics/Rect;

.field mDebugLayout:Z

.field mDisabledSystemUiVisibility:I

.field final mDisplay:Landroid/view/Display;

.field mDrawingTime:J

.field mForceReportNewAttributes:Z

.field final mGivenInternalInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

.field mGlobalSystemUiVisibility:I

.field final mHandler:Landroid/os/Handler;

.field mHardwareAccelerated:Z

.field mHardwareAccelerationRequested:Z

.field mHardwareCanvas:Landroid/view/HardwareCanvas;

.field mHardwareRenderer:Landroid/view/HardwareRenderer;

.field mHasSystemUiListeners:Z

.field mHasWindowFocus:Z

.field mIgnoreDirtyState:Z

.field mInTouchMode:Z

.field mIncludeNotImportantViews:Z

.field final mInvalidateChildLocation:[I

.field mKeepScreenOn:Z

.field final mKeyDispatchState:Landroid/view/KeyEvent$DispatcherState;

.field mPanelParentWindowToken:Landroid/os/IBinder;

.field final mPoint:Landroid/graphics/Point;

.field mRecomputeGlobalAttributes:Z

.field final mRootCallbacks:Landroid/view/View$AttachInfo$Callbacks;

.field mRootView:Landroid/view/View;

.field mScalingRequired:Z

.field mScreenOn:Z

.field final mScrollContainers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final mSession:Landroid/view/IWindowSession;

.field mSetIgnoreDirtyState:Z

.field mSurface:Landroid/view/Surface;

.field mSystemUiVisibility:I

.field final mTempArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final mTmpInvalRect:Landroid/graphics/Rect;

.field final mTmpMatrix:Landroid/graphics/Matrix;

.field final mTmpTransformLocation:[F

.field final mTmpTransformRect:Landroid/graphics/RectF;

.field final mTmpTransformation:Landroid/view/animation/Transformation;

.field final mTransparentLocation:[I

.field final mTreeObserver:Landroid/view/ViewTreeObserver;

.field mTurnOffWindowResizeAnim:Z

.field mUse32BitDrawingCache:Z

.field final mViewRootImpl:Landroid/view/ViewRootImpl;

.field mViewScrollChanged:Z

.field mViewVisibilityChanged:Z

.field final mVisibleInsets:Landroid/graphics/Rect;

.field final mWindow:Landroid/view/IWindow;

.field mWindowLeft:I

.field final mWindowToken:Landroid/os/IBinder;

.field mWindowTop:I

.field mWindowVisibility:I


# direct methods
.method constructor <init>(Landroid/view/IWindowSession;Landroid/view/IWindow;Landroid/view/Display;Landroid/view/ViewRootImpl;Landroid/os/Handler;Landroid/view/View$AttachInfo$Callbacks;)V
    .locals 3
    .parameter "session"
    .parameter "window"
    .parameter "display"
    .parameter "viewRootImpl"
    .parameter "handler"
    .parameter "effectPlayer"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 18325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18118
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    .line 18125
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    .line 18134
    new-instance v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    invoke-direct {v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;-><init>()V

    iput-object v0, p0, Landroid/view/View$AttachInfo;->mGivenInternalInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    .line 18142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    .line 18144
    new-instance v0, Landroid/view/KeyEvent$DispatcherState;

    invoke-direct {v0}, Landroid/view/KeyEvent$DispatcherState;-><init>()V

    iput-object v0, p0, Landroid/view/View$AttachInfo;->mKeyDispatchState:Landroid/view/KeyEvent$DispatcherState;

    .line 18171
    iput-boolean v2, p0, Landroid/view/View$AttachInfo;->mSetIgnoreDirtyState:Z

    .line 18229
    new-array v0, v1, [I

    iput-object v0, p0, Landroid/view/View$AttachInfo;->mTransparentLocation:[I

    .line 18235
    new-array v0, v1, [I

    iput-object v0, p0, Landroid/view/View$AttachInfo;->mInvalidateChildLocation:[I

    .line 18242
    new-array v0, v1, [F

    iput-object v0, p0, Landroid/view/View$AttachInfo;->mTmpTransformLocation:[F

    .line 18248
    new-instance v0, Landroid/view/ViewTreeObserver;

    invoke-direct {v0}, Landroid/view/ViewTreeObserver;-><init>()V

    iput-object v0, p0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 18270
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .line 18275
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    .line 18280
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/view/View$AttachInfo;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 18285
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Landroid/view/View$AttachInfo;->mTmpTransformation:Landroid/view/animation/Transformation;

    .line 18290
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/view/View$AttachInfo;->mTempArrayList:Ljava/util/ArrayList;

    .line 18295
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/View$AttachInfo;->mAccessibilityWindowId:I

    .line 18311
    const-string v0, "debug.layout"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/View$AttachInfo;->mDebugLayout:Z

    .line 18316
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/view/View$AttachInfo;->mPoint:Landroid/graphics/Point;

    .line 18326
    iput-object p1, p0, Landroid/view/View$AttachInfo;->mSession:Landroid/view/IWindowSession;

    .line 18327
    iput-object p2, p0, Landroid/view/View$AttachInfo;->mWindow:Landroid/view/IWindow;

    .line 18328
    invoke-interface {p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/view/View$AttachInfo;->mWindowToken:Landroid/os/IBinder;

    .line 18329
    iput-object p3, p0, Landroid/view/View$AttachInfo;->mDisplay:Landroid/view/Display;

    .line 18330
    iput-object p4, p0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    .line 18331
    iput-object p5, p0, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    .line 18332
    iput-object p6, p0, Landroid/view/View$AttachInfo;->mRootCallbacks:Landroid/view/View$AttachInfo$Callbacks;

    .line 18333
    return-void
.end method
