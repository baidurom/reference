.class final Lcom/android/server/wm/WindowState;
.super Ljava/lang/Object;
.source "WindowState.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$WindowState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowState$1;,
        Lcom/android/server/wm/WindowState$DeathRecipient;
    }
.end annotation


# instance fields
.field mAlpha:F

.field mAnimLayer:I

.field mAnimating:Z

.field mAnimation:Landroid/view/animation/Animation;

.field mAnimationIsEntrance:Z

.field mAppFreezing:Z

.field mAppToken:Lcom/android/server/wm/AppWindowToken;

.field mAttachedHidden:Z

.field final mAttachedWindow:Lcom/android/server/wm/WindowState;

.field final mAttrs:Landroid/view/WindowManager$LayoutParams;

.field final mBaseLayer:I

.field final mChildWindows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field final mClient:Landroid/view/IWindow;

.field mCommitDrawPending:Z

.field final mCompatFrame:Landroid/graphics/Rect;

.field mConfiguration:Landroid/content/res/Configuration;

.field final mContainingFrame:Landroid/graphics/Rect;

.field mContentChanged:Z

.field final mContentFrame:Landroid/graphics/Rect;

.field final mContentInsets:Landroid/graphics/Rect;

.field mContentInsetsChanged:Z

.field final mDeathRecipient:Lcom/android/server/wm/WindowState$DeathRecipient;

.field mDestroying:Z

.field final mDisplayFrame:Landroid/graphics/Rect;

.field mDrawPending:Z

.field mDsDx:F

.field mDsDy:F

.field mDtDx:F

.field mDtDy:F

.field mEnforceSizeCompat:Z

.field mEnterAnimationPending:Z

.field mExiting:Z

.field final mFrame:Landroid/graphics/Rect;

.field final mGivenContentInsets:Landroid/graphics/Rect;

.field mGivenInsetsPending:Z

.field final mGivenTouchableRegion:Landroid/graphics/Region;

.field final mGivenVisibleInsets:Landroid/graphics/Rect;

.field mGlobalScale:F

.field mHScale:F

.field mHasDrawn:Z

.field mHasLocalTransformation:Z

.field mHasTransformation:Z

.field mHaveFrame:Z

.field mHaveMatrix:Z

.field mInputChannel:Landroid/view/InputChannel;

.field final mInputWindowHandle:Lcom/android/server/wm/InputWindowHandle;

.field mInvGlobalScale:F

.field final mIsFloatingLayer:Z

.field final mIsImWindow:Z

.field final mIsWallpaper:Z

.field mLastAlpha:F

.field final mLastContentInsets:Landroid/graphics/Rect;

.field mLastDsDx:F

.field mLastDsDy:F

.field mLastDtDx:F

.field mLastDtDy:F

.field final mLastFrame:Landroid/graphics/Rect;

.field mLastHScale:F

.field mLastHidden:Z

.field mLastLayer:I

.field mLastTitle:Ljava/lang/CharSequence;

.field mLastVScale:F

.field final mLastVisibleInsets:Landroid/graphics/Rect;

.field mLayer:I

.field final mLayoutAttached:Z

.field mLayoutNeeded:Z

.field mLayoutSeq:I

.field mLocalAnimating:Z

.field mObscured:Z

.field mOrientationChanging:Z

.field final mParentFrame:Landroid/graphics/Rect;

.field mPendingDestroySurface:Landroid/view/Surface;

.field mPolicyVisibility:Z

.field mPolicyVisibilityAfterAnim:Z

.field mReadyToShow:Z

.field mRebuilding:Z

.field mRelayoutCalled:Z

.field mRemoveOnExit:Z

.field mRemoved:Z

.field mReportDestroySurface:Z

.field mRequestedHeight:I

.field mRequestedWidth:I

.field mRootToken:Lcom/android/server/wm/WindowToken;

.field mSeq:I

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field final mSession:Lcom/android/server/wm/Session;

.field mShownAlpha:F

.field final mShownFrame:Landroid/graphics/RectF;

.field mStringNameCache:Ljava/lang/String;

.field final mSubLayer:I

.field mSurface:Landroid/view/Surface;

.field mSurfaceAlpha:F

.field mSurfaceDestroyDeferred:Z

.field mSurfaceH:F

.field mSurfaceLayer:I

.field mSurfacePendingDestroy:Z

.field mSurfacePositionChanged:Z

.field mSurfaceResized:Z

.field mSurfaceShown:Z

.field mSurfaceW:F

.field mSurfaceX:F

.field mSurfaceY:F

.field mSystemUiVisibility:I

.field mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

.field final mTmpMatrix:Landroid/graphics/Matrix;

.field mToken:Lcom/android/server/wm/WindowToken;

.field mTouchableInsets:I

.field final mTransformation:Landroid/view/animation/Transformation;

.field mTurnOnScreen:Z

.field mVScale:F

.field mViewVisibility:I

.field final mVisibleFrame:Landroid/graphics/Rect;

.field final mVisibleInsets:Landroid/graphics/Rect;

.field mVisibleInsetsChanged:Z

.field mWallpaperVisible:Z

.field mWallpaperX:F

.field mWallpaperXStep:F

.field mWallpaperY:F

.field mWallpaperYStep:F

.field mWasPaused:Z

.field mXOffset:I

.field mYOffset:I


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/Session;Landroid/view/IWindow;Lcom/android/server/wm/WindowToken;Lcom/android/server/wm/WindowState;ILandroid/view/WindowManager$LayoutParams;I)V
    .locals 9
    .parameter "service"
    .parameter "s"
    .parameter "c"
    .parameter "token"
    .parameter "attachedWindow"
    .parameter "seq"
    .parameter "a"
    .parameter "viewVisibility"

    .prologue
    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v6}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v6, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 68
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    .line 79
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    .line 80
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    .line 104
    const/4 v6, -0x1

    iput v6, p0, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    .line 106
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    .line 113
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    iput-object v6, p0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    .line 131
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/android/server/wm/WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    .line 132
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/android/server/wm/WindowState;->mLastVisibleInsets:Landroid/graphics/Rect;

    .line 139
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    .line 140
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/android/server/wm/WindowState;->mLastContentInsets:Landroid/graphics/Rect;

    .line 153
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    .line 159
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    .line 164
    new-instance v6, Landroid/graphics/Region;

    invoke-direct {v6}, Landroid/graphics/Region;-><init>()V

    iput-object v6, p0, Lcom/android/server/wm/WindowState;->mGivenTouchableRegion:Landroid/graphics/Region;

    .line 172
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    .line 176
    const/high16 v6, 0x3f80

    iput v6, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    .line 177
    const/high16 v6, 0x3f80

    iput v6, p0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    .line 178
    const/high16 v6, 0x3f80

    iput v6, p0, Lcom/android/server/wm/WindowState;->mDsDx:F

    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/wm/WindowState;->mDtDx:F

    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/wm/WindowState;->mDsDy:F

    const/high16 v6, 0x3f80

    iput v6, p0, Lcom/android/server/wm/WindowState;->mDtDy:F

    .line 179
    const/high16 v6, 0x3f80

    iput v6, p0, Lcom/android/server/wm/WindowState;->mLastDsDx:F

    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/wm/WindowState;->mLastDtDx:F

    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/wm/WindowState;->mLastDsDy:F

    const/high16 v6, 0x3f80

    iput v6, p0, Lcom/android/server/wm/WindowState;->mLastDtDy:F

    .line 180
    const/high16 v6, 0x3f80

    iput v6, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    const/high16 v6, 0x3f80

    iput v6, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    .line 181
    const/high16 v6, 0x3f80

    iput v6, p0, Lcom/android/server/wm/WindowState;->mLastHScale:F

    const/high16 v6, 0x3f80

    iput v6, p0, Lcom/android/server/wm/WindowState;->mLastVScale:F

    .line 182
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    iput-object v6, p0, Lcom/android/server/wm/WindowState;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 185
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    .line 186
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/android/server/wm/WindowState;->mLastFrame:Landroid/graphics/Rect;

    .line 189
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    .line 191
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    .line 192
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    .line 193
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    .line 194
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/android/server/wm/WindowState;->mParentFrame:Landroid/graphics/Rect;

    .line 195
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    .line 199
    const/high16 v6, 0x3f80

    iput v6, p0, Lcom/android/server/wm/WindowState;->mShownAlpha:F

    .line 200
    const/high16 v6, 0x3f80

    iput v6, p0, Lcom/android/server/wm/WindowState;->mAlpha:F

    .line 201
    const/high16 v6, 0x3f80

    iput v6, p0, Lcom/android/server/wm/WindowState;->mLastAlpha:F

    .line 214
    new-instance v6, Landroid/view/animation/Transformation;

    invoke-direct {v6}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v6, p0, Lcom/android/server/wm/WindowState;->mTransformation:Landroid/view/animation/Transformation;

    .line 218
    const/high16 v6, -0x4080

    iput v6, p0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    .line 219
    const/high16 v6, -0x4080

    iput v6, p0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    .line 223
    const/high16 v6, -0x4080

    iput v6, p0, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    .line 224
    const/high16 v6, -0x4080

    iput v6, p0, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    .line 299
    iput-object p1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 300
    iput-object p2, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    .line 301
    iput-object p3, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 302
    iput-object p4, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 303
    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p7

    invoke-virtual {v6, v0}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 304
    move/from16 v0, p8

    iput v0, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    .line 305
    new-instance v3, Lcom/android/server/wm/WindowState$DeathRecipient;

    const/4 v6, 0x0

    invoke-direct {v3, p0, v6}, Lcom/android/server/wm/WindowState$DeathRecipient;-><init>(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState$1;)V

    .line 306
    .local v3, deathRecipient:Lcom/android/server/wm/WindowState$DeathRecipient;
    move-object/from16 v0, p7

    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    iput v6, p0, Lcom/android/server/wm/WindowState;->mAlpha:F

    .line 307
    iput p6, p0, Lcom/android/server/wm/WindowState;->mSeq:I

    .line 308
    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v7, 0x2000

    and-int/2addr v6, v7

    if-eqz v6, :cond_4

    const/4 v6, 0x1

    :goto_0
    iput-boolean v6, p0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    .line 309
    sget-boolean v6, Lcom/android/server/wm/WindowManagerService;->localLOGV:Z

    if-eqz v6, :cond_0

    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Window "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " client="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p3}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " token="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v8, v8, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_0
    :try_start_0
    invoke-interface {p3}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v3, v7}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    iput-object v3, p0, Lcom/android/server/wm/WindowState;->mDeathRecipient:Lcom/android/server/wm/WindowState$DeathRecipient;

    .line 328
    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x3e8

    if-lt v6, v7, :cond_9

    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x7cf

    if-gt v6, v7, :cond_9

    .line 332
    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v7, p5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-interface {v6, v7}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    move-result v6

    mul-int/lit16 v6, v6, 0x2710

    add-int/lit16 v6, v6, 0x3e8

    iput v6, p0, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    .line 335
    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p7

    iget v7, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-interface {v6, v7}, Landroid/view/WindowManagerPolicy;->subWindowTypeToLayerLw(I)I

    move-result v6

    iput v6, p0, Lcom/android/server/wm/WindowState;->mSubLayer:I

    .line 336
    iput-object p5, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    .line 337
    sget-boolean v6, Lcom/android/server/wm/WindowManagerService;->DEBUG_ADD_REMOVE:Z

    if-eqz v6, :cond_1

    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Adding "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_1
    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v6, v6, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v6, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x3eb

    if-eq v6, v7, :cond_5

    const/4 v6, 0x1

    :goto_1
    iput-boolean v6, p0, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    .line 341
    iget-object v6, p5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x7db

    if-eq v6, v7, :cond_2

    iget-object v6, p5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x7dc

    if-ne v6, v7, :cond_6

    :cond_2
    const/4 v6, 0x1

    :goto_2
    iput-boolean v6, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    .line 343
    iget-object v6, p5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x7dd

    if-ne v6, v7, :cond_7

    const/4 v6, 0x1

    :goto_3
    iput-boolean v6, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    .line 344
    iget-boolean v6, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-nez v6, :cond_3

    iget-boolean v6, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v6, :cond_8

    :cond_3
    const/4 v6, 0x1

    :goto_4
    iput-boolean v6, p0, Lcom/android/server/wm/WindowState;->mIsFloatingLayer:Z

    .line 360
    :goto_5
    move-object v2, p0

    .line 361
    .local v2, appWin:Lcom/android/server/wm/WindowState;
    :goto_6
    iget-object v6, v2, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v6, :cond_f

    .line 362
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    goto :goto_6

    .line 308
    .end local v2           #appWin:Lcom/android/server/wm/WindowState;
    :cond_4
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 314
    :catch_0
    move-exception v4

    .line 315
    .local v4, e:Landroid/os/RemoteException;
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/wm/WindowState;->mDeathRecipient:Lcom/android/server/wm/WindowState$DeathRecipient;

    .line 316
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    .line 317
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    .line 318
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    .line 319
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    .line 320
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/wm/WindowState;->mIsFloatingLayer:Z

    .line 321
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    .line 322
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/wm/WindowState;->mSubLayer:I

    .line 323
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/wm/InputWindowHandle;

    .line 385
    .end local v4           #e:Landroid/os/RemoteException;
    :goto_7
    return-void

    .line 339
    :cond_5
    const/4 v6, 0x0

    goto :goto_1

    .line 341
    :cond_6
    const/4 v6, 0x0

    goto :goto_2

    .line 343
    :cond_7
    const/4 v6, 0x0

    goto :goto_3

    .line 344
    :cond_8
    const/4 v6, 0x0

    goto :goto_4

    .line 348
    :cond_9
    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p7

    iget v7, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-interface {v6, v7}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    move-result v6

    mul-int/lit16 v6, v6, 0x2710

    add-int/lit16 v6, v6, 0x3e8

    iput v6, p0, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    .line 351
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/wm/WindowState;->mSubLayer:I

    .line 352
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    .line 353
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    .line 354
    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x7db

    if-eq v6, v7, :cond_a

    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x7dc

    if-ne v6, v7, :cond_c

    :cond_a
    const/4 v6, 0x1

    :goto_8
    iput-boolean v6, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    .line 356
    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x7dd

    if-ne v6, v7, :cond_d

    const/4 v6, 0x1

    :goto_9
    iput-boolean v6, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    .line 357
    iget-boolean v6, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-nez v6, :cond_b

    iget-boolean v6, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v6, :cond_e

    :cond_b
    const/4 v6, 0x1

    :goto_a
    iput-boolean v6, p0, Lcom/android/server/wm/WindowState;->mIsFloatingLayer:Z

    goto :goto_5

    .line 354
    :cond_c
    const/4 v6, 0x0

    goto :goto_8

    .line 356
    :cond_d
    const/4 v6, 0x0

    goto :goto_9

    .line 357
    :cond_e
    const/4 v6, 0x0

    goto :goto_a

    .line 364
    .restart local v2       #appWin:Lcom/android/server/wm/WindowState;
    :cond_f
    iget-object v1, v2, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 365
    .local v1, appToken:Lcom/android/server/wm/WindowToken;
    :goto_b
    iget-object v6, v1, Lcom/android/server/wm/WindowToken;->appWindowToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v6, :cond_10

    .line 366
    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    iget-object v7, v1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowToken;

    .line 367
    .local v5, parent:Lcom/android/server/wm/WindowToken;
    if-eqz v5, :cond_10

    if-ne v1, v5, :cond_11

    .line 372
    .end local v5           #parent:Lcom/android/server/wm/WindowToken;
    :cond_10
    iput-object v1, p0, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    .line 373
    iget-object v6, v1, Lcom/android/server/wm/WindowToken;->appWindowToken:Lcom/android/server/wm/AppWindowToken;

    iput-object v6, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 375
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    .line 376
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    .line 377
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    .line 378
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/wm/WindowState;->mXOffset:I

    .line 379
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/wm/WindowState;->mYOffset:I

    .line 380
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/wm/WindowState;->mLayer:I

    .line 381
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    .line 382
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/wm/WindowState;->mLastLayer:I

    .line 383
    new-instance v7, Lcom/android/server/wm/InputWindowHandle;

    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v6, :cond_12

    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v6, v6, Lcom/android/server/wm/AppWindowToken;->mInputApplicationHandle:Lcom/android/server/wm/InputApplicationHandle;

    :goto_c
    invoke-direct {v7, v6, p0}, Lcom/android/server/wm/InputWindowHandle;-><init>(Lcom/android/server/wm/InputApplicationHandle;Landroid/view/WindowManagerPolicy$WindowState;)V

    iput-object v7, p0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/wm/InputWindowHandle;

    goto/16 :goto_7

    .line 370
    .restart local v5       #parent:Lcom/android/server/wm/WindowToken;
    :cond_11
    move-object v1, v5

    .line 371
    goto :goto_b

    .line 383
    .end local v5           #parent:Lcom/android/server/wm/WindowToken;
    :cond_12
    const/4 v6, 0x0

    goto :goto_c
.end method

.method private static applyInsets(Landroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 5
    .parameter "outRegion"
    .parameter "frame"
    .parameter "inset"

    .prologue
    .line 1645
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/graphics/Region;->set(IIII)Z

    .line 1648
    return-void
.end method


# virtual methods
.method attach()V
    .locals 3

    .prologue
    .line 388
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->localLOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attaching "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", list="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iget-object v2, v2, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v0}, Lcom/android/server/wm/Session;->windowAddedLocked()V

    .line 392
    return-void
.end method

.method public final canReceiveKeys()Z
    .locals 1

    .prologue
    .line 1562
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleOrAdding()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method cancelExitAnimationForNextAnimationLocked()V
    .locals 1

    .prologue
    .line 638
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-nez v0, :cond_0

    .line 645
    :goto_0
    return-void

    .line 639
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    .line 640
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 641
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mAnimation:Landroid/view/animation/Animation;

    .line 642
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->destroySurfaceLocked()V

    .line 644
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    goto :goto_0
.end method

.method public clearAnimation()V
    .locals 1

    .prologue
    .line 627
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 628
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimating:Z

    .line 629
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mLocalAnimating:Z

    .line 630
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 631
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mAnimation:Landroid/view/animation/Animation;

    .line 633
    :cond_0
    return-void
.end method

.method commitFinishDrawingLocked(J)Z
    .locals 5
    .parameter "currentTime"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 881
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mCommitDrawPending:Z

    if-nez v3, :cond_0

    .line 891
    :goto_0
    return v1

    .line 884
    :cond_0
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mCommitDrawPending:Z

    .line 885
    iput-boolean v2, p0, Lcom/android/server/wm/WindowState;->mReadyToShow:Z

    .line 886
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    move v1, v2

    .line 887
    .local v1, starting:Z
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 888
    .local v0, atoken:Lcom/android/server/wm/AppWindowToken;
    if-eqz v0, :cond_2

    iget-boolean v3, v0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-nez v3, :cond_2

    if-eqz v1, :cond_3

    .line 889
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->performShowLocked()Z

    :cond_3
    move v1, v2

    .line 891
    goto :goto_0
.end method

.method public computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 21
    .parameter "pf"
    .parameter "df"
    .parameter "cf"
    .parameter "vf"

    .prologue
    .line 395
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    .line 397
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    .line 398
    .local v5, container:Landroid/graphics/Rect;
    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 400
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    .line 401
    .local v11, display:Landroid/graphics/Rect;
    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 403
    iget v2, v5, Landroid/graphics/Rect;->right:I

    iget v6, v5, Landroid/graphics/Rect;->left:I

    sub-int v15, v2, v6

    .line 404
    .local v15, pw:I
    iget v2, v5, Landroid/graphics/Rect;->bottom:I

    iget v6, v5, Landroid/graphics/Rect;->top:I

    sub-int v14, v2, v6

    .line 407
    .local v14, ph:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, 0x4000

    if-eqz v2, :cond_11

    .line 408
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    if-gez v2, :cond_d

    .line 409
    move v3, v15

    .line 415
    .local v3, w:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    if-gez v2, :cond_f

    .line 416
    move v4, v14

    .line 439
    .local v4, h:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mParentFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 442
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mParentFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 443
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowState;->mContentChanged:Z

    .line 446
    :cond_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    .line 447
    .local v9, content:Landroid/graphics/Rect;
    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    .line 450
    .local v16, visible:Landroid/graphics/Rect;
    move-object/from16 v0, v16

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 452
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    .line 453
    .local v8, frame:Landroid/graphics/Rect;
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v13

    .line 454
    .local v13, fw:I
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v12

    .line 460
    .local v12, fh:I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    if-eqz v2, :cond_16

    .line 461
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float v18, v2, v6

    .line 462
    .local v18, x:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float v19, v2, v6

    .line 468
    .local v19, y:F
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    int-to-float v7, v15

    mul-float/2addr v6, v7

    add-float v6, v6, v18

    float-to-int v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    int-to-float v0, v14

    move/from16 v20, v0

    mul-float v7, v7, v20

    add-float v7, v7, v19

    float-to-int v7, v7

    invoke-static/range {v2 .. v8}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;)V

    .line 475
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move-object/from16 v0, p2

    invoke-static {v2, v0, v8}, Landroid/view/Gravity;->applyDisplay(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 479
    iget v2, v9, Landroid/graphics/Rect;->left:I

    iget v6, v8, Landroid/graphics/Rect;->left:I

    if-ge v2, v6, :cond_1

    iget v2, v8, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    .line 480
    :cond_1
    iget v2, v9, Landroid/graphics/Rect;->top:I

    iget v6, v8, Landroid/graphics/Rect;->top:I

    if-ge v2, v6, :cond_2

    iget v2, v8, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    .line 481
    :cond_2
    iget v2, v9, Landroid/graphics/Rect;->right:I

    iget v6, v8, Landroid/graphics/Rect;->right:I

    if-le v2, v6, :cond_3

    iget v2, v8, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    .line 482
    :cond_3
    iget v2, v9, Landroid/graphics/Rect;->bottom:I

    iget v6, v8, Landroid/graphics/Rect;->bottom:I

    if-le v2, v6, :cond_4

    iget v2, v8, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    .line 483
    :cond_4
    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v6, v8, Landroid/graphics/Rect;->left:I

    if-ge v2, v6, :cond_5

    iget v2, v8, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v16

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 484
    :cond_5
    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v6, v8, Landroid/graphics/Rect;->top:I

    if-ge v2, v6, :cond_6

    iget v2, v8, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v16

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 485
    :cond_6
    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v6, v8, Landroid/graphics/Rect;->right:I

    if-le v2, v6, :cond_7

    iget v2, v8, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v16

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 486
    :cond_7
    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v6, v8, Landroid/graphics/Rect;->bottom:I

    if-le v2, v6, :cond_8

    iget v2, v8, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v16

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 488
    :cond_8
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    .line 489
    .local v10, contentInsets:Landroid/graphics/Rect;
    iget v2, v9, Landroid/graphics/Rect;->left:I

    iget v6, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v6

    iput v2, v10, Landroid/graphics/Rect;->left:I

    .line 490
    iget v2, v9, Landroid/graphics/Rect;->top:I

    iget v6, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v6

    iput v2, v10, Landroid/graphics/Rect;->top:I

    .line 491
    iget v2, v8, Landroid/graphics/Rect;->right:I

    iget v6, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v6

    iput v2, v10, Landroid/graphics/Rect;->right:I

    .line 492
    iget v2, v8, Landroid/graphics/Rect;->bottom:I

    iget v6, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v6

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    .line 494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    .line 495
    .local v17, visibleInsets:Landroid/graphics/Rect;
    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v6, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v6

    move-object/from16 v0, v17

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 496
    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v6, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v6

    move-object/from16 v0, v17

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 497
    iget v2, v8, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v16

    iget v6, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v6

    move-object/from16 v0, v17

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 498
    iget v2, v8, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v16

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v6

    move-object/from16 v0, v17

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 500
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 501
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    if-eqz v2, :cond_9

    .line 505
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    invoke-virtual {v10, v2}, Landroid/graphics/Rect;->scale(F)V

    .line 506
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->scale(F)V

    .line 510
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    invoke-virtual {v2, v6}, Landroid/graphics/Rect;->scale(F)V

    .line 513
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v2, :cond_b

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-ne v13, v2, :cond_a

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-eq v12, v2, :cond_b

    .line 514
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v6, v6, Lcom/android/server/wm/WindowManagerService;->mAppDisplayWidth:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v7, v7, Lcom/android/server/wm/WindowManagerService;->mAppDisplayHeight:I

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v2, v0, v6, v7, v1}, Lcom/android/server/wm/WindowManagerService;->updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;IIZ)Z

    .line 518
    :cond_b
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->localLOGV:Z

    if-eqz v2, :cond_c

    .line 521
    const-string v2, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Resolving (mRequestedWidth="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mRequestedheight="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") to"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (pw="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", ph="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "): frame="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ci="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v10}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " vi="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    :cond_c
    return-void

    .line 410
    .end local v3           #w:I
    .end local v4           #h:I
    .end local v8           #frame:Landroid/graphics/Rect;
    .end local v9           #content:Landroid/graphics/Rect;
    .end local v10           #contentInsets:Landroid/graphics/Rect;
    .end local v12           #fh:I
    .end local v13           #fw:I
    .end local v16           #visible:Landroid/graphics/Rect;
    .end local v17           #visibleInsets:Landroid/graphics/Rect;
    .end local v18           #x:F
    .end local v19           #y:F
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    if-eqz v2, :cond_e

    .line 411
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float/2addr v2, v6

    const/high16 v6, 0x3f00

    add-float/2addr v2, v6

    float-to-int v3, v2

    .restart local v3       #w:I
    goto/16 :goto_0

    .line 413
    .end local v3           #w:I
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .restart local v3       #w:I
    goto/16 :goto_0

    .line 417
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    if-eqz v2, :cond_10

    .line 418
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float/2addr v2, v6

    const/high16 v6, 0x3f00

    add-float/2addr v2, v6

    float-to-int v4, v2

    .restart local v4       #h:I
    goto/16 :goto_1

    .line 420
    .end local v4           #h:I
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .restart local v4       #h:I
    goto/16 :goto_1

    .line 423
    .end local v3           #w:I
    .end local v4           #h:I
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v6, -0x1

    if-ne v2, v6, :cond_12

    .line 424
    move v3, v15

    .line 430
    .restart local v3       #w:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v6, -0x1

    if-ne v2, v6, :cond_14

    .line 431
    move v4, v14

    .restart local v4       #h:I
    goto/16 :goto_1

    .line 425
    .end local v3           #w:I
    .end local v4           #h:I
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    if-eqz v2, :cond_13

    .line 426
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float/2addr v2, v6

    const/high16 v6, 0x3f00

    add-float/2addr v2, v6

    float-to-int v3, v2

    .restart local v3       #w:I
    goto :goto_3

    .line 428
    .end local v3           #w:I
    :cond_13
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    .restart local v3       #w:I
    goto :goto_3

    .line 432
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    if-eqz v2, :cond_15

    .line 433
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float/2addr v2, v6

    const/high16 v6, 0x3f00

    add-float/2addr v2, v6

    float-to-int v4, v2

    .restart local v4       #h:I
    goto/16 :goto_1

    .line 435
    .end local v4           #h:I
    :cond_15
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    .restart local v4       #h:I
    goto/16 :goto_1

    .line 464
    .restart local v8       #frame:Landroid/graphics/Rect;
    .restart local v9       #content:Landroid/graphics/Rect;
    .restart local v12       #fh:I
    .restart local v13       #fw:I
    .restart local v16       #visible:Landroid/graphics/Rect;
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v0, v2

    move/from16 v18, v0

    .line 465
    .restart local v18       #x:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v0, v2

    move/from16 v19, v0

    .restart local v19       #y:F
    goto/16 :goto_2
.end method

.method computeShownFrameLocked()V
    .locals 15

    .prologue
    .line 1171
    iget-boolean v5, p0, Lcom/android/server/wm/WindowState;->mHasLocalTransformation:Z

    .line 1172
    .local v5, selfTransformation:Z
    iget-object v11, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v11, :cond_d

    iget-object v11, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-boolean v11, v11, Lcom/android/server/wm/WindowState;->mHasLocalTransformation:Z

    if-eqz v11, :cond_d

    iget-object v11, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v1, v11, Lcom/android/server/wm/WindowState;->mTransformation:Landroid/view/animation/Transformation;

    .line 1175
    .local v1, attachedTransformation:Landroid/view/animation/Transformation;
    :goto_0
    iget-object v11, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v11, :cond_e

    iget-object v11, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v11, v11, Lcom/android/server/wm/AppWindowToken;->hasTransformation:Z

    if-eqz v11, :cond_e

    iget-object v11, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v11, Lcom/android/server/wm/AppWindowToken;->transformation:Landroid/view/animation/Transformation;

    .line 1181
    .local v0, appTransformation:Landroid/view/animation/Transformation;
    :goto_1
    iget-object v11, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v12, 0x7dd

    if-ne v11, v12, :cond_1

    iget-object v11, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v11, v11, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-nez v11, :cond_1

    iget-object v11, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v11, v11, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v11, :cond_1

    .line 1183
    iget-object v11, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v11, v11, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-boolean v11, v11, Lcom/android/server/wm/WindowState;->mHasLocalTransformation:Z

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v11, v11, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v11, v11, Lcom/android/server/wm/WindowState;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v11, v11, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v11, v11, Lcom/android/server/wm/WindowState;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v11}, Landroid/view/animation/Animation;->getDetachWallpaper()Z

    move-result v11

    if-nez v11, :cond_0

    .line 1186
    iget-object v11, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v11, v11, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v1, v11, Lcom/android/server/wm/WindowState;->mTransformation:Landroid/view/animation/Transformation;

    .line 1187
    sget-boolean v11, Lcom/android/server/wm/WindowManagerService;->DEBUG_WALLPAPER:Z

    if-eqz v11, :cond_0

    if-eqz v1, :cond_0

    .line 1188
    const-string v11, "WindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "WP target attached xform: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    :cond_0
    iget-object v11, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v11, v11, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v11, v11, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v11, v11, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v11, v11, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v11, v11, Lcom/android/server/wm/AppWindowToken;->hasTransformation:Z

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v11, v11, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v11, v11, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v11, v11, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v11, v11, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v11, v11, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v11, v11, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v11}, Landroid/view/animation/Animation;->getDetachWallpaper()Z

    move-result v11

    if-nez v11, :cond_1

    .line 1195
    iget-object v11, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v11, v11, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v11, v11, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v11, Lcom/android/server/wm/AppWindowToken;->transformation:Landroid/view/animation/Transformation;

    .line 1196
    sget-boolean v11, Lcom/android/server/wm/WindowManagerService;->DEBUG_WALLPAPER:Z

    if-eqz v11, :cond_1

    if-eqz v0, :cond_1

    .line 1197
    const-string v11, "WindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "WP target app xform: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    :cond_1
    iget-object v11, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v11, v11, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v11, :cond_f

    iget-object v11, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v11, v11, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v11}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v11

    if-eqz v11, :cond_f

    const/4 v4, 0x1

    .line 1204
    .local v4, screenAnimation:Z
    :goto_2
    if-nez v5, :cond_2

    if-nez v1, :cond_2

    if-nez v0, :cond_2

    if-eqz v4, :cond_12

    .line 1207
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    .line 1208
    .local v2, frame:Landroid/graphics/Rect;
    iget-object v11, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v11, Lcom/android/server/wm/WindowManagerService;->mTmpFloats:[F

    .line 1209
    .local v6, tmpFloats:[F
    iget-object v7, p0, Lcom/android/server/wm/WindowState;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 1212
    .local v7, tmpMatrix:Landroid/graphics/Matrix;
    if-eqz v4, :cond_11

    .line 1220
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v8, v11

    .line 1221
    .local v8, w:F
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v11

    int-to-float v3, v11

    .line 1222
    .local v3, h:F
    const/high16 v11, 0x3f80

    cmpl-float v11, v8, v11

    if-ltz v11, :cond_10

    const/high16 v11, 0x3f80

    cmpl-float v11, v3, v11

    if-ltz v11, :cond_10

    .line 1223
    const/high16 v11, 0x3f80

    const/high16 v12, 0x4000

    div-float/2addr v12, v8

    add-float/2addr v11, v12

    const/high16 v12, 0x3f80

    const/high16 v13, 0x4000

    div-float/2addr v13, v3

    add-float/2addr v12, v13

    const/high16 v13, 0x4000

    div-float v13, v8, v13

    const/high16 v14, 0x4000

    div-float v14, v3, v14

    invoke-virtual {v7, v11, v12, v13, v14}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 1230
    .end local v3           #h:F
    .end local v8           #w:F
    :goto_3
    iget v11, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    iget v12, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    invoke-virtual {v7, v11, v12}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1231
    if-eqz v5, :cond_3

    .line 1232
    iget-object v11, p0, Lcom/android/server/wm/WindowState;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v11}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 1234
    :cond_3
    iget v11, v2, Landroid/graphics/Rect;->left:I

    iget v12, p0, Lcom/android/server/wm/WindowState;->mXOffset:I

    add-int/2addr v11, v12

    int-to-float v11, v11

    iget v12, v2, Landroid/graphics/Rect;->top:I

    iget v13, p0, Lcom/android/server/wm/WindowState;->mYOffset:I

    add-int/2addr v12, v13

    int-to-float v12, v12

    invoke-virtual {v7, v11, v12}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1235
    if-eqz v1, :cond_4

    .line 1236
    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 1238
    :cond_4
    if-eqz v0, :cond_5

    .line 1239
    invoke-virtual {v0}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 1241
    :cond_5
    if-eqz v4, :cond_6

    .line 1242
    iget-object v11, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v11, v11, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v11}, Lcom/android/server/wm/ScreenRotationAnimation;->getEnterTransformation()Landroid/view/animation/Transformation;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 1252
    :cond_6
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/server/wm/WindowState;->mHaveMatrix:Z

    .line 1253
    invoke-virtual {v7, v6}, Landroid/graphics/Matrix;->getValues([F)V

    .line 1254
    const/4 v11, 0x0

    aget v11, v6, v11

    iput v11, p0, Lcom/android/server/wm/WindowState;->mDsDx:F

    .line 1255
    const/4 v11, 0x3

    aget v11, v6, v11

    iput v11, p0, Lcom/android/server/wm/WindowState;->mDtDx:F

    .line 1256
    const/4 v11, 0x1

    aget v11, v6, v11

    iput v11, p0, Lcom/android/server/wm/WindowState;->mDsDy:F

    .line 1257
    const/4 v11, 0x4

    aget v11, v6, v11

    iput v11, p0, Lcom/android/server/wm/WindowState;->mDtDy:F

    .line 1258
    const/4 v11, 0x2

    aget v9, v6, v11

    .line 1259
    .local v9, x:F
    const/4 v11, 0x5

    aget v10, v6, v11

    .line 1260
    .local v10, y:F
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v8

    .line 1261
    .local v8, w:I
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 1262
    .local v3, h:I
    iget-object v11, p0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    int-to-float v12, v8

    add-float/2addr v12, v9

    int-to-float v13, v3

    add-float/2addr v13, v10

    invoke-virtual {v11, v9, v10, v12, v13}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1269
    iget v11, p0, Lcom/android/server/wm/WindowState;->mAlpha:F

    iput v11, p0, Lcom/android/server/wm/WindowState;->mShownAlpha:F

    .line 1270
    iget-object v11, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v11, v11, Lcom/android/server/wm/WindowManagerService;->mLimitedAlphaCompositing:Z

    if-eqz v11, :cond_7

    iget-object v11, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-static {v11}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v11

    if-eqz v11, :cond_7

    iget v11, p0, Lcom/android/server/wm/WindowState;->mDsDx:F

    iget v12, p0, Lcom/android/server/wm/WindowState;->mDtDx:F

    iget v13, p0, Lcom/android/server/wm/WindowState;->mDsDy:F

    iget v14, p0, Lcom/android/server/wm/WindowState;->mDtDy:F

    invoke-virtual {p0, v11, v12, v13, v14}, Lcom/android/server/wm/WindowState;->isIdentityMatrix(FFFF)Z

    move-result v11

    if-eqz v11, :cond_b

    iget v11, v2, Landroid/graphics/Rect;->left:I

    int-to-float v11, v11

    cmpl-float v11, v9, v11

    if-nez v11, :cond_b

    iget v11, v2, Landroid/graphics/Rect;->top:I

    int-to-float v11, v11

    cmpl-float v11, v10, v11

    if-nez v11, :cond_b

    .line 1275
    :cond_7
    if-eqz v5, :cond_8

    .line 1276
    iget v11, p0, Lcom/android/server/wm/WindowState;->mShownAlpha:F

    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v12}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v12

    mul-float/2addr v11, v12

    iput v11, p0, Lcom/android/server/wm/WindowState;->mShownAlpha:F

    .line 1278
    :cond_8
    if-eqz v1, :cond_9

    .line 1279
    iget v11, p0, Lcom/android/server/wm/WindowState;->mShownAlpha:F

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v12

    mul-float/2addr v11, v12

    iput v11, p0, Lcom/android/server/wm/WindowState;->mShownAlpha:F

    .line 1281
    :cond_9
    if-eqz v0, :cond_a

    .line 1282
    iget v11, p0, Lcom/android/server/wm/WindowState;->mShownAlpha:F

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v12

    mul-float/2addr v11, v12

    iput v11, p0, Lcom/android/server/wm/WindowState;->mShownAlpha:F

    .line 1284
    :cond_a
    if-eqz v4, :cond_b

    .line 1285
    iget v11, p0, Lcom/android/server/wm/WindowState;->mShownAlpha:F

    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v12}, Lcom/android/server/wm/ScreenRotationAnimation;->getEnterTransformation()Landroid/view/animation/Transformation;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v12

    mul-float/2addr v11, v12

    iput v11, p0, Lcom/android/server/wm/WindowState;->mShownAlpha:F

    .line 1292
    :cond_b
    sget-boolean v11, Lcom/android/server/wm/WindowManagerService;->localLOGV:Z

    if-eqz v11, :cond_c

    const-string v11, "WindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Continuing animation in "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", alpha="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/server/wm/WindowState;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v13}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    .end local v2           #frame:Landroid/graphics/Rect;
    .end local v3           #h:I
    .end local v6           #tmpFloats:[F
    .end local v7           #tmpMatrix:Landroid/graphics/Matrix;
    .end local v8           #w:I
    .end local v9           #x:F
    .end local v10           #y:F
    :cond_c
    :goto_4
    return-void

    .line 1172
    .end local v0           #appTransformation:Landroid/view/animation/Transformation;
    .end local v1           #attachedTransformation:Landroid/view/animation/Transformation;
    .end local v4           #screenAnimation:Z
    :cond_d
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1175
    .restart local v1       #attachedTransformation:Landroid/view/animation/Transformation;
    :cond_e
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 1202
    .restart local v0       #appTransformation:Landroid/view/animation/Transformation;
    :cond_f
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 1225
    .restart local v2       #frame:Landroid/graphics/Rect;
    .local v3, h:F
    .restart local v4       #screenAnimation:Z
    .restart local v6       #tmpFloats:[F
    .restart local v7       #tmpMatrix:Landroid/graphics/Matrix;
    .local v8, w:F
    :cond_10
    invoke-virtual {v7}, Landroid/graphics/Matrix;->reset()V

    goto/16 :goto_3

    .line 1228
    .end local v3           #h:F
    .end local v8           #w:F
    :cond_11
    invoke-virtual {v7}, Landroid/graphics/Matrix;->reset()V

    goto/16 :goto_3

    .line 1299
    .end local v2           #frame:Landroid/graphics/Rect;
    .end local v6           #tmpFloats:[F
    .end local v7           #tmpMatrix:Landroid/graphics/Matrix;
    :cond_12
    iget-object v11, p0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v11, v12}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 1300
    iget v11, p0, Lcom/android/server/wm/WindowState;->mXOffset:I

    if-nez v11, :cond_13

    iget v11, p0, Lcom/android/server/wm/WindowState;->mYOffset:I

    if-eqz v11, :cond_14

    .line 1301
    :cond_13
    iget-object v11, p0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iget v12, p0, Lcom/android/server/wm/WindowState;->mXOffset:I

    int-to-float v12, v12

    iget v13, p0, Lcom/android/server/wm/WindowState;->mYOffset:I

    int-to-float v13, v13

    invoke-virtual {v11, v12, v13}, Landroid/graphics/RectF;->offset(FF)V

    .line 1303
    :cond_14
    iget v11, p0, Lcom/android/server/wm/WindowState;->mAlpha:F

    iput v11, p0, Lcom/android/server/wm/WindowState;->mShownAlpha:F

    .line 1304
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/server/wm/WindowState;->mHaveMatrix:Z

    .line 1305
    iget v11, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    iput v11, p0, Lcom/android/server/wm/WindowState;->mDsDx:F

    .line 1306
    const/4 v11, 0x0

    iput v11, p0, Lcom/android/server/wm/WindowState;->mDtDx:F

    .line 1307
    const/4 v11, 0x0

    iput v11, p0, Lcom/android/server/wm/WindowState;->mDsDy:F

    .line 1308
    iget v11, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    iput v11, p0, Lcom/android/server/wm/WindowState;->mDtDy:F

    goto :goto_4
.end method

.method createSurfaceLocked()Landroid/view/Surface;
    .locals 13

    .prologue
    const/4 v3, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v10, 0x0

    .line 648
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    if-nez v0, :cond_10

    .line 649
    iput-boolean v10, p0, Lcom/android/server/wm/WindowState;->mReportDestroySurface:Z

    .line 650
    iput-boolean v10, p0, Lcom/android/server/wm/WindowState;->mSurfacePendingDestroy:Z

    .line 651
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_ORIENTATION:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createSurface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": DRAW NOW PENDING"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    :cond_0
    iput-boolean v12, p0, Lcom/android/server/wm/WindowState;->mDrawPending:Z

    .line 654
    iput-boolean v10, p0, Lcom/android/server/wm/WindowState;->mCommitDrawPending:Z

    .line 655
    iput-boolean v10, p0, Lcom/android/server/wm/WindowState;->mReadyToShow:Z

    .line 656
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_1

    .line 657
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iput-boolean v10, v0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    .line 660
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowManagerService;->makeWindowFreezingScreenIfNeededLocked(Lcom/android/server/wm/WindowState;)V

    .line 662
    const/4 v8, 0x0

    .line 664
    .local v8, flags:I
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_2

    .line 665
    or-int/lit16 v8, v8, 0x80

    .line 667
    :cond_2
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_VISIBILITY:Z

    if-eqz v0, :cond_3

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating surface in session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget-object v2, v2, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " window "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " w="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " h="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " format="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " flags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 675
    .local v5, w:I
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 676
    .local v6, h:I
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_4

    .line 679
    iget v5, p0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    .line 680
    iget v6, p0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    .line 685
    :cond_4
    if-gtz v5, :cond_5

    const/4 v5, 0x1

    .line 686
    :cond_5
    if-gtz v6, :cond_6

    const/4 v6, 0x1

    .line 688
    :cond_6
    iput-boolean v10, p0, Lcom/android/server/wm/WindowState;->mSurfaceShown:Z

    .line 689
    iput v10, p0, Lcom/android/server/wm/WindowState;->mSurfaceLayer:I

    .line 690
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/server/wm/WindowState;->mSurfaceAlpha:F

    .line 691
    iput v3, p0, Lcom/android/server/wm/WindowState;->mSurfaceX:F

    .line 692
    iput v3, p0, Lcom/android/server/wm/WindowState;->mSurfaceY:F

    .line 693
    int-to-float v0, v5

    iput v0, p0, Lcom/android/server/wm/WindowState;->mSurfaceW:F

    .line 694
    int-to-float v0, v6

    iput v0, p0, Lcom/android/server/wm/WindowState;->mSurfaceH:F

    .line 696
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x100

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    move v10, v12

    .line 698
    .local v10, isHwAccelerated:Z
    :cond_7
    if-eqz v10, :cond_11

    const/4 v7, -0x3

    .line 699
    .local v7, format:I
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-static {v0}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 700
    or-int/lit16 v8, v8, 0x400

    .line 702
    :cond_8
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget-object v1, v1, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v2, v2, Lcom/android/server/wm/Session;->mPid:I

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v3}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/Surface;-><init>(Landroid/view/SurfaceSession;ILjava/lang/String;IIIII)V

    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    .line 706
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->SHOW_TRANSACTIONS:Z

    if-nez v0, :cond_9

    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->SHOW_SURFACE_ALLOC:Z

    if-eqz v0, :cond_a

    :cond_9
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  CREATE SURFACE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " IN SESSION "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget-object v2, v2, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v2, v2, Lcom/android/server/wm/Session;->mPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " format="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " flags=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 723
    :cond_a
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->localLOGV:Z

    if-eqz v0, :cond_b

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got surface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", set left="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " top="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", animLayer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    :cond_b
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v0, :cond_c

    .line 728
    const-string v0, "WindowManager"

    const-string v1, ">>> OPEN TRANSACTION createSurfaceLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE pos=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), layer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " HIDE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v11}, Lcom/android/server/wm/WindowManagerService;->logSurface(Lcom/android/server/wm/WindowState;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 734
    :cond_c
    invoke-static {}, Landroid/view/Surface;->openTransaction()V

    .line 738
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/server/wm/WindowState;->mXOffset:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/wm/WindowState;->mSurfaceX:F

    .line 739
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/server/wm/WindowState;->mYOffset:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/wm/WindowState;->mSurfaceY:F

    .line 740
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    iget v1, p0, Lcom/android/server/wm/WindowState;->mSurfaceX:F

    iget v2, p0, Lcom/android/server/wm/WindowState;->mSurfaceY:F

    invoke-virtual {v0, v1, v2}, Landroid/view/Surface;->setPosition(FF)V

    .line 744
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mSurfacePositionChanged:Z

    .line 745
    iget v0, p0, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    iput v0, p0, Lcom/android/server/wm/WindowState;->mSurfaceLayer:I

    .line 746
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    iget v1, p0, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    invoke-virtual {v0, v1}, Landroid/view/Surface;->setLayer(I)V

    .line 747
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mSurfaceShown:Z

    .line 748
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->hide()V

    .line 749
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_e

    .line 750
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->SHOW_TRANSACTIONS:Z

    if-eqz v0, :cond_d

    const-string v0, "DITHER"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->logSurface(Lcom/android/server/wm/WindowState;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 751
    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    const/4 v1, 0x4

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/view/Surface;->setFlags(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 758
    :cond_e
    :goto_1
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mLastHidden:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 760
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 761
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v0, :cond_f

    const-string v0, "WindowManager"

    const-string v1, "<<< CLOSE TRANSACTION createSurfaceLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    :cond_f
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->localLOGV:Z

    if-eqz v0, :cond_10

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Created surface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    .end local v5           #w:I
    .end local v6           #h:I
    .end local v7           #format:I
    .end local v8           #flags:I
    .end local v10           #isHwAccelerated:Z
    :cond_10
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    :goto_2
    return-object v0

    .line 698
    .restart local v5       #w:I
    .restart local v6       #h:I
    .restart local v8       #flags:I
    .restart local v10       #isHwAccelerated:Z
    :cond_11
    :try_start_3
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v0, Landroid/view/WindowManager$LayoutParams;->format:I
    :try_end_3
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 714
    .end local v10           #isHwAccelerated:Z
    :catch_0
    move-exception v9

    .line 715
    .local v9, e:Landroid/view/Surface$OutOfResourcesException;
    const-string v0, "WindowManager"

    const-string v1, "OutOfResourcesException creating surface"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string v1, "create"

    invoke-virtual {v0, p0, v1, v12}, Lcom/android/server/wm/WindowManagerService;->reclaimSomeSurfaceMemoryLocked(Lcom/android/server/wm/WindowState;Ljava/lang/String;Z)Z

    move-object v0, v11

    .line 717
    goto :goto_2

    .line 718
    .end local v9           #e:Landroid/view/Surface$OutOfResourcesException;
    :catch_1
    move-exception v9

    .line 719
    .local v9, e:Ljava/lang/Exception;
    const-string v0, "WindowManager"

    const-string v1, "Exception creating surface"

    invoke-static {v0, v1, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v11

    .line 720
    goto :goto_2

    .line 754
    .end local v9           #e:Ljava/lang/Exception;
    .restart local v7       #format:I
    .restart local v10       #isHwAccelerated:Z
    :catch_2
    move-exception v9

    .line 755
    .local v9, e:Ljava/lang/RuntimeException;
    :try_start_4
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error creating surface in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 756
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string v1, "create-init"

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->reclaimSomeSurfaceMemoryLocked(Lcom/android/server/wm/WindowState;Ljava/lang/String;Z)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 760
    .end local v9           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 761
    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v1, :cond_12

    const-string v1, "WindowManager"

    const-string v2, "<<< CLOSE TRANSACTION createSurfaceLocked"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    throw v0
.end method

.method destroyDeferredSurfaceLocked()V
    .locals 4

    .prologue
    .line 847
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mPendingDestroySurface:Landroid/view/Surface;

    if-eqz v1, :cond_3

    .line 848
    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->SHOW_TRANSACTIONS:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->SHOW_SURFACE_ALLOC:Z

    if-eqz v1, :cond_2

    .line 849
    :cond_0
    const/4 v0, 0x0

    .line 850
    .local v0, e:Ljava/lang/RuntimeException;
    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->HIDE_STACK_CRAWLS:Z

    if-nez v1, :cond_1

    .line 851
    new-instance v0, Ljava/lang/RuntimeException;

    .end local v0           #e:Ljava/lang/RuntimeException;
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 852
    .restart local v0       #e:Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 854
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string v1, "DESTROY PENDING"

    invoke-static {p0, v1, v0}, Lcom/android/server/wm/WindowManagerService;->logSurface(Lcom/android/server/wm/WindowState;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 856
    .end local v0           #e:Ljava/lang/RuntimeException;
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mPendingDestroySurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->destroy()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 863
    :cond_3
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mSurfaceDestroyDeferred:Z

    .line 864
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/WindowState;->mPendingDestroySurface:Landroid/view/Surface;

    .line 865
    return-void

    .line 858
    :catch_0
    move-exception v0

    .line 859
    .restart local v0       #e:Ljava/lang/RuntimeException;
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception thrown when destroying Window "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " surface "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mPendingDestroySurface:Landroid/view/Surface;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method destroySurfaceLocked()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 771
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v3, v3, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-ne p0, v3, :cond_0

    .line 772
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iput-boolean v6, v3, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    .line 775
    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v3, :cond_2

    .line 776
    iput-boolean v6, p0, Lcom/android/server/wm/WindowState;->mDrawPending:Z

    .line 777
    iput-boolean v6, p0, Lcom/android/server/wm/WindowState;->mCommitDrawPending:Z

    .line 778
    iput-boolean v6, p0, Lcom/android/server/wm/WindowState;->mReadyToShow:Z

    .line 780
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 781
    .local v2, i:I
    :goto_0
    if-lez v2, :cond_1

    .line 782
    add-int/lit8 v2, v2, -0x1

    .line 783
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    .line 784
    .local v0, c:Lcom/android/server/wm/WindowState;
    iput-boolean v4, v0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    goto :goto_0

    .line 787
    .end local v0           #c:Lcom/android/server/wm/WindowState;
    :cond_1
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mReportDestroySurface:Z

    if-eqz v3, :cond_3

    .line 788
    iput-boolean v6, p0, Lcom/android/server/wm/WindowState;->mReportDestroySurface:Z

    .line 789
    iput-boolean v4, p0, Lcom/android/server/wm/WindowState;->mSurfacePendingDestroy:Z

    .line 791
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v3}, Landroid/view/IWindow;->dispatchGetNewSurface()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 843
    .end local v2           #i:I
    :cond_2
    :goto_1
    return-void

    .line 794
    .restart local v2       #i:I
    :catch_0
    move-exception v3

    .line 799
    :cond_3
    :try_start_1
    sget-boolean v3, Lcom/android/server/wm/WindowManagerService;->DEBUG_VISIBILITY:Z

    if-eqz v3, :cond_5

    .line 800
    const/4 v1, 0x0

    .line 801
    .local v1, e:Ljava/lang/RuntimeException;
    sget-boolean v3, Lcom/android/server/wm/WindowManagerService;->HIDE_STACK_CRAWLS:Z

    if-nez v3, :cond_4

    .line 802
    new-instance v1, Ljava/lang/RuntimeException;

    .end local v1           #e:Ljava/lang/RuntimeException;
    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    .line 803
    .restart local v1       #e:Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 805
    :cond_4
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Window "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " destroying surface "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", session "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 808
    .end local v1           #e:Ljava/lang/RuntimeException;
    :cond_5
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mSurfaceDestroyDeferred:Z

    if-eqz v3, :cond_b

    .line 809
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mPendingDestroySurface:Landroid/view/Surface;

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    if-eq v3, v4, :cond_a

    .line 810
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mPendingDestroySurface:Landroid/view/Surface;

    if-eqz v3, :cond_9

    .line 811
    sget-boolean v3, Lcom/android/server/wm/WindowManagerService;->SHOW_TRANSACTIONS:Z

    if-nez v3, :cond_6

    sget-boolean v3, Lcom/android/server/wm/WindowManagerService;->SHOW_SURFACE_ALLOC:Z

    if-eqz v3, :cond_8

    .line 812
    :cond_6
    const/4 v1, 0x0

    .line 813
    .restart local v1       #e:Ljava/lang/RuntimeException;
    sget-boolean v3, Lcom/android/server/wm/WindowManagerService;->HIDE_STACK_CRAWLS:Z

    if-nez v3, :cond_7

    .line 814
    new-instance v1, Ljava/lang/RuntimeException;

    .end local v1           #e:Ljava/lang/RuntimeException;
    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    .line 815
    .restart local v1       #e:Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 817
    :cond_7
    const-string v3, "DESTROY PENDING"

    invoke-static {p0, v3, v1}, Lcom/android/server/wm/WindowManagerService;->logSurface(Lcom/android/server/wm/WindowState;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 819
    .end local v1           #e:Ljava/lang/RuntimeException;
    :cond_8
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mPendingDestroySurface:Landroid/view/Surface;

    invoke-virtual {v3}, Landroid/view/Surface;->destroy()V

    .line 821
    :cond_9
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    iput-object v3, p0, Lcom/android/server/wm/WindowState;->mPendingDestroySurface:Landroid/view/Surface;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 840
    :cond_a
    :goto_2
    iput-boolean v6, p0, Lcom/android/server/wm/WindowState;->mSurfaceShown:Z

    .line 841
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    goto :goto_1

    .line 824
    :cond_b
    :try_start_2
    sget-boolean v3, Lcom/android/server/wm/WindowManagerService;->SHOW_TRANSACTIONS:Z

    if-nez v3, :cond_c

    sget-boolean v3, Lcom/android/server/wm/WindowManagerService;->SHOW_SURFACE_ALLOC:Z

    if-eqz v3, :cond_e

    .line 825
    :cond_c
    const/4 v1, 0x0

    .line 826
    .restart local v1       #e:Ljava/lang/RuntimeException;
    sget-boolean v3, Lcom/android/server/wm/WindowManagerService;->HIDE_STACK_CRAWLS:Z

    if-nez v3, :cond_d

    .line 827
    new-instance v1, Ljava/lang/RuntimeException;

    .end local v1           #e:Ljava/lang/RuntimeException;
    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    .line 828
    .restart local v1       #e:Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 830
    :cond_d
    const-string v3, "DESTROY"

    invoke-static {p0, v3, v1}, Lcom/android/server/wm/WindowManagerService;->logSurface(Lcom/android/server/wm/WindowState;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 832
    .end local v1           #e:Ljava/lang/RuntimeException;
    :cond_e
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    invoke-virtual {v3}, Landroid/view/Surface;->destroy()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 834
    :catch_1
    move-exception v1

    .line 835
    .restart local v1       #e:Ljava/lang/RuntimeException;
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception thrown when destroying Window "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " surface "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " session "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method disposeInputChannel()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1533
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_0

    .line 1534
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/InputManager;->unregisterInputChannel(Landroid/view/InputChannel;)V

    .line 1536
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 1537
    iput-object v2, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    .line 1540
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/wm/InputWindowHandle;

    iput-object v2, v0, Lcom/android/server/wm/InputWindowHandle;->inputChannel:Landroid/view/InputChannel;

    .line 1541
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 3
    .parameter "pw"
    .parameter "prefix"
    .parameter "dumpAll"

    .prologue
    const/high16 v2, -0x4080

    const/high16 v1, 0x3f80

    .line 1673
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSession="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1674
    const-string v0, " mClient="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1675
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAttrs="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1676
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Requested w="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1677
    const-string v0, " h="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1678
    const-string v0, " mLayoutSeq="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1679
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    if-eqz v0, :cond_1

    .line 1680
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAttachedWindow="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1681
    const-string v0, " mLayoutAttached="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1683
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsFloatingLayer:Z

    if-eqz v0, :cond_3

    .line 1684
    :cond_2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mIsImWindow="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1685
    const-string v0, " mIsWallpaper="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1686
    const-string v0, " mIsFloatingLayer="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsFloatingLayer:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1687
    const-string v0, " mWallpaperVisible="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mWallpaperVisible:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1689
    :cond_3
    if-eqz p3, :cond_4

    .line 1690
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBaseLayer="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1691
    const-string v0, " mSubLayer="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowState;->mSubLayer:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1692
    const-string v0, " mAnimLayer="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowState;->mLayer:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, "+"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1693
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    iget v0, v0, Lcom/android/server/wm/AppWindowToken;->animLayerAdjustment:I

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1695
    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1696
    const-string v0, " mLastLayer="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowState;->mLastLayer:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1698
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_6

    .line 1699
    if-eqz p3, :cond_5

    .line 1700
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSurface="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1702
    :cond_5
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Surface: shown="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mSurfaceShown:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1703
    const-string v0, " layer="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowState;->mSurfaceLayer:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1704
    const-string v0, " alpha="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowState;->mSurfaceAlpha:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 1705
    const-string v0, " rect=("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowState;->mSurfaceX:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 1706
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowState;->mSurfaceY:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 1707
    const-string v0, ") "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowState;->mSurfaceW:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 1708
    const-string v0, " x "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowState;->mSurfaceH:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 1710
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mPendingDestroySurface:Landroid/view/Surface;

    if-eqz v0, :cond_7

    .line 1711
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPendingDestroySurface="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1712
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mPendingDestroySurface:Landroid/view/Surface;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1714
    :cond_7
    if-eqz p3, :cond_a

    .line 1715
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mToken="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1716
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRootToken="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1717
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_8

    .line 1718
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAppToken="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1720
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_9

    .line 1721
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTargetAppToken="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1723
    :cond_9
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mViewVisibility=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1724
    iget v0, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1725
    const-string v0, " mLastHidden="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mLastHidden:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1726
    const-string v0, " mHaveFrame="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1727
    const-string v0, " mObscured="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mObscured:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1728
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSeq="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowState;->mSeq:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1729
    const-string v0, " mSystemUiVisibility=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1730
    iget v0, p0, Lcom/android/server/wm/WindowState;->mSystemUiVisibility:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1732
    :cond_a
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-eqz v0, :cond_c

    .line 1733
    :cond_b
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPolicyVisibility="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1734
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1735
    const-string v0, " mPolicyVisibilityAfterAnim="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1736
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1737
    const-string v0, " mAttachedHidden="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1739
    :cond_c
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    if-eqz v0, :cond_e

    .line 1740
    :cond_d
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRelayoutCalled="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1741
    const-string v0, " mLayoutNeeded="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1743
    :cond_e
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mSurfaceResized:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mSurfaceDestroyDeferred:Z

    if-eqz v0, :cond_10

    .line 1744
    :cond_f
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSurfaceResized="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mSurfaceResized:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1745
    const-string v0, " mSurfaceDestroyDeferred="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mSurfaceDestroyDeferred:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1747
    :cond_10
    iget v0, p0, Lcom/android/server/wm/WindowState;->mXOffset:I

    if-nez v0, :cond_11

    iget v0, p0, Lcom/android/server/wm/WindowState;->mYOffset:I

    if-eqz v0, :cond_12

    .line 1748
    :cond_11
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Offsets x="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowState;->mXOffset:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1749
    const-string v0, " y="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowState;->mYOffset:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1751
    :cond_12
    if-eqz p3, :cond_15

    .line 1752
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mGivenContentInsets="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1753
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 1754
    const-string v0, " mGivenVisibleInsets="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1755
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 1756
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1757
    iget v0, p0, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    if-nez v0, :cond_13

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    if-eqz v0, :cond_14

    .line 1758
    :cond_13
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTouchableInsets="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1759
    const-string v0, " mGivenInsetsPending="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1761
    :cond_14
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mConfiguration="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1763
    :cond_15
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mShownFrame="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1764
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1765
    if-eqz p3, :cond_16

    .line 1766
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFrame="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 1767
    const-string v0, " last="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mLastFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 1768
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1770
    :cond_16
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    if-eqz v0, :cond_17

    .line 1771
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCompatFrame="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 1772
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1774
    :cond_17
    if-eqz p3, :cond_18

    .line 1775
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mContainingFrame="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1776
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 1777
    const-string v0, " mParentFrame="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1778
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mParentFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 1779
    const-string v0, " mDisplayFrame="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1780
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 1781
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1782
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mContentFrame="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 1783
    const-string v0, " mVisibleFrame="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 1784
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1785
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mContentInsets="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 1786
    const-string v0, " last="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mLastContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 1787
    const-string v0, " mVisibleInsets="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 1788
    const-string v0, " last="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mLastVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 1789
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1791
    :cond_18
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimating:Z

    if-nez v0, :cond_19

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mLocalAnimating:Z

    if-nez v0, :cond_19

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimationIsEntrance:Z

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1a

    .line 1793
    :cond_19
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAnimating="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimating:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1794
    const-string v0, " mLocalAnimating="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mLocalAnimating:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1795
    const-string v0, " mAnimationIsEntrance="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimationIsEntrance:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1796
    const-string v0, " mAnimation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1798
    :cond_1a
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHasTransformation:Z

    if-nez v0, :cond_1b

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHasLocalTransformation:Z

    if-eqz v0, :cond_1c

    .line 1799
    :cond_1b
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "XForm: has="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1800
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHasTransformation:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1801
    const-string v0, " hasLocal="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHasLocalTransformation:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1802
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p1}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    .line 1803
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1805
    :cond_1c
    iget v0, p0, Lcom/android/server/wm/WindowState;->mShownAlpha:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1d

    iget v0, p0, Lcom/android/server/wm/WindowState;->mAlpha:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1d

    iget v0, p0, Lcom/android/server/wm/WindowState;->mLastAlpha:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1e

    .line 1806
    :cond_1d
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mShownAlpha="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowState;->mShownAlpha:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 1807
    const-string v0, " mAlpha="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowState;->mAlpha:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 1808
    const-string v0, " mLastAlpha="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowState;->mLastAlpha:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 1810
    :cond_1e
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHaveMatrix:Z

    if-nez v0, :cond_1f

    iget v0, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_20

    .line 1811
    :cond_1f
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mGlobalScale="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 1812
    const-string v0, " mDsDx="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowState;->mDsDx:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 1813
    const-string v0, " mDtDx="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowState;->mDtDx:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 1814
    const-string v0, " mDsDy="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowState;->mDsDy:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 1815
    const-string v0, " mDtDy="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowState;->mDtDy:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 1817
    :cond_20
    if-eqz p3, :cond_21

    .line 1818
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDrawPending="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDrawPending:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1819
    const-string v0, " mCommitDrawPending="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mCommitDrawPending:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1820
    const-string v0, " mReadyToShow="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mReadyToShow:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1821
    const-string v0, " mHasDrawn="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHasDrawn:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1823
    :cond_21
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-nez v0, :cond_22

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    if-nez v0, :cond_22

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v0, :cond_22

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-eqz v0, :cond_23

    .line 1824
    :cond_22
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mExiting="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1825
    const-string v0, " mRemoveOnExit="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1826
    const-string v0, " mDestroying="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1827
    const-string v0, " mRemoved="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mRemoved:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1829
    :cond_23
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    if-nez v0, :cond_24

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    if-nez v0, :cond_24

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mTurnOnScreen:Z

    if-eqz v0, :cond_25

    .line 1830
    :cond_24
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mOrientationChanging="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1831
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1832
    const-string v0, " mAppFreezing="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1833
    const-string v0, " mTurnOnScreen="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mTurnOnScreen:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1835
    :cond_25
    iget v0, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_26

    iget v0, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_27

    .line 1836
    :cond_26
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHScale="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 1837
    const-string v0, " mVScale="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 1839
    :cond_27
    iget v0, p0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_28

    iget v0, p0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_29

    .line 1840
    :cond_28
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mWallpaperX="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 1841
    const-string v0, " mWallpaperY="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 1843
    :cond_29
    iget v0, p0, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2a

    iget v0, p0, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_2b

    .line 1844
    :cond_2a
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mWallpaperXStep="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 1845
    const-string v0, " mWallpaperYStep="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 1847
    :cond_2b
    return-void

    .line 1693
    :cond_2c
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget v0, v0, Lcom/android/server/wm/AppWindowToken;->animLayerAdjustment:I

    goto/16 :goto_0

    :cond_2d
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method finishDrawingLocked()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 868
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mDrawPending:Z

    if-eqz v2, :cond_2

    .line 869
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->SHOW_TRANSACTIONS:Z

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_ORIENTATION:Z

    if-eqz v2, :cond_1

    :cond_0
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finishDrawingLocked: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    :cond_1
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mCommitDrawPending:Z

    .line 872
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mDrawPending:Z

    .line 875
    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method finishExit()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1112
    sget-boolean v3, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v3, :cond_0

    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "finishExit in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": exiting="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " remove="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " windowAnimating="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isWindowAnimating()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1119
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1120
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->finishExit()V

    .line 1119
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1123
    :cond_1
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-nez v3, :cond_3

    .line 1151
    :cond_2
    :goto_1
    return-void

    .line 1127
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isWindowAnimating()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1131
    sget-boolean v3, Lcom/android/server/wm/WindowManagerService;->localLOGV:Z

    if-eqz v3, :cond_4

    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exit animation finished in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": remove="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    :cond_4
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v3, :cond_6

    .line 1135
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1136
    iput-boolean v7, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    .line 1137
    sget-boolean v3, Lcom/android/server/wm/WindowManagerService;->SHOW_TRANSACTIONS:Z

    if-eqz v3, :cond_5

    const-string v3, "HIDE (finishExit)"

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Lcom/android/server/wm/WindowManagerService;->logSurface(Lcom/android/server/wm/WindowState;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 1138
    :cond_5
    iput-boolean v6, p0, Lcom/android/server/wm/WindowState;->mSurfaceShown:Z

    .line 1140
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    invoke-virtual {v3}, Landroid/view/Surface;->hide()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1144
    :goto_2
    iput-boolean v7, p0, Lcom/android/server/wm/WindowState;->mLastHidden:Z

    .line 1146
    :cond_6
    iput-boolean v6, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    .line 1147
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    if-eqz v3, :cond_2

    .line 1148
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1149
    iput-boolean v6, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    goto :goto_1

    .line 1141
    :catch_0
    move-exception v1

    .line 1142
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error hiding surface in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public getAppToken()Landroid/view/IApplicationToken;
    .locals 1

    .prologue
    .line 603
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAttrs()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public getContentFrameLw()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 544
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getDisplayFrameLw()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getFrameLw()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getGivenContentInsetsLw()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getGivenInsetsPendingLw()Z
    .locals 1

    .prologue
    .line 552
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    return v0
.end method

.method public getGivenVisibleInsetsLw()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getInputDispatchingTimeoutNanos()J
    .locals 2

    .prologue
    .line 607
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-wide v0, v0, Lcom/android/server/wm/AppWindowToken;->inputDispatchingTimeoutNanos:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x12a05f200L

    goto :goto_0
.end method

.method public getNeedsMenuLw(Landroid/view/WindowManagerPolicy$WindowState;)Z
    .locals 5
    .parameter "bottom"

    .prologue
    const/4 v2, 0x0

    .line 568
    const/4 v0, -0x1

    .line 569
    .local v0, index:I
    move-object v1, p0

    .line 571
    .local v1, ws:Lcom/android/server/wm/WindowState;
    :goto_0
    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_1

    .line 573
    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x800

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 588
    :cond_0
    return v2

    .line 577
    :cond_1
    if-eq v1, p1, :cond_0

    .line 583
    if-gez v0, :cond_2

    .line 584
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 586
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 587
    if-ltz v0, :cond_0

    .line 590
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #ws:Lcom/android/server/wm/WindowState;
    check-cast v1, Lcom/android/server/wm/WindowState;

    .restart local v1       #ws:Lcom/android/server/wm/WindowState;
    goto :goto_0
.end method

.method public getShownFrameLw()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getSurfaceLayer()I
    .locals 1

    .prologue
    .line 599
    iget v0, p0, Lcom/android/server/wm/WindowState;->mLayer:I

    return v0
.end method

.method public getSystemUiVisibility()I
    .locals 1

    .prologue
    .line 595
    iget v0, p0, Lcom/android/server/wm/WindowState;->mSystemUiVisibility:I

    return v0
.end method

.method public getTouchableRegion(Landroid/graphics/Region;)V
    .locals 4
    .parameter "outRegion"

    .prologue
    .line 1651
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    .line 1652
    .local v0, frame:Landroid/graphics/Rect;
    iget v2, p0, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    packed-switch v2, :pswitch_data_0

    .line 1655
    invoke-virtual {p1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 1670
    :goto_0
    return-void

    .line 1658
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    invoke-static {p1, v0, v2}, Lcom/android/server/wm/WindowState;->applyInsets(Landroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 1661
    :pswitch_1
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    invoke-static {p1, v0, v2}, Lcom/android/server/wm/WindowState;->applyInsets(Landroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 1664
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mGivenTouchableRegion:Landroid/graphics/Region;

    .line 1665
    .local v1, givenTouchableRegion:Landroid/graphics/Region;
    invoke-virtual {p1, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 1666
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Region;->translate(II)V

    goto :goto_0

    .line 1652
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getVisibleFrameLw()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method public hasAppShownWindows()Z
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDrawnLw()Z
    .locals 1

    .prologue
    .line 1568
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHasDrawn:Z

    return v0
.end method

.method public hideLw(Z)Z
    .locals 1
    .parameter "doAnimation"

    .prologue
    .line 1604
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    move-result v0

    return v0
.end method

.method hideLw(ZZ)Z
    .locals 6
    .parameter "doAnimation"
    .parameter "requestAnim"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1608
    if-eqz p1, :cond_1

    .line 1609
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy;->isScreenOnFully()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1610
    :cond_0
    const/4 p1, 0x0

    .line 1613
    :cond_1
    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    .line 1615
    .local v0, current:Z
    :goto_0
    if-nez v0, :cond_3

    .line 1641
    :goto_1
    return v1

    .line 1613
    .end local v0           #current:Z
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    goto :goto_0

    .line 1618
    .restart local v0       #current:Z
    :cond_3
    if-eqz p1, :cond_4

    .line 1619
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    const/16 v4, 0x2002

    invoke-virtual {v3, p0, v4, v1}, Lcom/android/server/wm/WindowManagerService;->applyAnimationLocked(Lcom/android/server/wm/WindowState;IZ)Z

    .line 1620
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAnimation:Landroid/view/animation/Animation;

    if-nez v3, :cond_4

    .line 1621
    const/4 p1, 0x0

    .line 1624
    :cond_4
    if-eqz p1, :cond_7

    .line 1625
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    .line 1638
    :cond_5
    :goto_2
    if-eqz p2, :cond_6

    .line 1639
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/android/server/wm/WindowManagerService;->requestAnimationLocked(J)V

    :cond_6
    move v1, v2

    .line 1641
    goto :goto_1

    .line 1627
    :cond_7
    sget-boolean v3, Lcom/android/server/wm/WindowManagerService;->DEBUG_VISIBILITY:Z

    if-eqz v3, :cond_8

    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Policy visibility false: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1628
    :cond_8
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    .line 1629
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    .line 1633
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->enableScreenIfNeededLocked()V

    .line 1634
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-ne v1, p0, :cond_5

    .line 1635
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v2, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    goto :goto_2
.end method

.method isAnimating()Z
    .locals 3

    .prologue
    .line 1427
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    .line 1428
    .local v1, attached:Lcom/android/server/wm/WindowState;
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1429
    .local v0, atoken:Lcom/android/server/wm/AppWindowToken;
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAnimation:Landroid/view/animation/Animation;

    if-nez v2, :cond_1

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mAnimation:Landroid/view/animation/Animation;

    if-nez v2, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    if-nez v2, :cond_1

    iget-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->inPendingTransaction:Z

    if-eqz v2, :cond_2

    :cond_1
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isDisplayedLw()Z
    .locals 2

    .prologue
    .line 1446
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1447
    .local v0, atoken:Lcom/android/server/wm/AppWindowToken;
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mDrawPending:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mCommitDrawPending:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-eqz v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAnimating:Z

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isDrawnLw()Z
    .locals 2

    .prologue
    .line 1470
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1471
    .local v0, atoken:Lcom/android/server/wm/AppWindowToken;
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mDrawPending:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mCommitDrawPending:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isFullscreen(II)Z
    .locals 1
    .parameter "screenWidth"
    .parameter "screenHeight"

    .prologue
    .line 1501
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-lt v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-lt v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGoneForLayoutLw()Z
    .locals 3

    .prologue
    .line 1455
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1456
    .local v0, atoken:Lcom/android/server/wm/AppWindowToken;
    iget v1, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowToken;->hidden:Z

    if-nez v1, :cond_2

    :cond_0
    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-nez v1, :cond_2

    :cond_1
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-eqz v1, :cond_3

    :cond_2
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isIdentityMatrix(FFFF)Z
    .locals 6
    .parameter "dsdx"
    .parameter "dtdx"
    .parameter "dsdy"
    .parameter "dtdy"

    .prologue
    const v5, 0x3f800054

    const v4, 0x3f7fff58

    const v3, 0x358637bd

    const v2, -0x4a79c843

    const/4 v0, 0x0

    .line 1154
    cmpg-float v1, p1, v4

    if-ltz v1, :cond_0

    cmpl-float v1, p1, v5

    if-lez v1, :cond_1

    .line 1158
    :cond_0
    :goto_0
    return v0

    .line 1155
    :cond_1
    cmpg-float v1, p4, v4

    if-ltz v1, :cond_0

    cmpl-float v1, p4, v5

    if-gtz v1, :cond_0

    .line 1156
    cmpg-float v1, p2, v2

    if-ltz v1, :cond_0

    cmpl-float v1, p2, v3

    if-gtz v1, :cond_0

    .line 1157
    cmpg-float v1, p3, v2

    if-ltz v1, :cond_0

    cmpl-float v1, p3, v3

    if-gtz v1, :cond_0

    .line 1158
    const/4 v0, 0x1

    goto :goto_0
.end method

.method isOnScreen()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1396
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1397
    .local v0, atoken:Lcom/android/server/wm/AppWindowToken;
    if-eqz v0, :cond_3

    .line 1398
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-nez v3, :cond_0

    iget-boolean v3, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAnimation:Landroid/view/animation/Animation;

    if-nez v3, :cond_1

    iget-object v3, v0, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_2

    .line 1402
    :cond_1
    :goto_0
    return v1

    :cond_2
    move v1, v2

    .line 1398
    goto :goto_0

    .line 1402
    :cond_3
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAnimation:Landroid/view/animation/Animation;

    if-nez v3, :cond_1

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method isOpaqueDrawn()Z
    .locals 2

    .prologue
    .line 1480
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7dd

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    if-nez v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDrawPending:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mCommitDrawPending:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isPotentialDragTarget()Z
    .locals 1

    .prologue
    .line 1373
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/wm/InputWindowHandle;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isReadyForDisplay()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1412
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowToken;->waitingToShow:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v4, v4, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 1419
    :goto_0
    return v3

    .line 1416
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1417
    .local v1, atoken:Lcom/android/server/wm/AppWindowToken;
    if-eqz v1, :cond_4

    iget-object v4, v1, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    if-eqz v4, :cond_3

    move v0, v2

    .line 1419
    .local v0, animating:Z
    :goto_1
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v4, :cond_5

    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-nez v4, :cond_1

    iget v4, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowToken;->hidden:Z

    if-eqz v4, :cond_2

    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mAnimation:Landroid/view/animation/Animation;

    if-nez v4, :cond_2

    if-eqz v0, :cond_5

    :cond_2
    :goto_2
    move v3, v2

    goto :goto_0

    .end local v0           #animating:Z
    :cond_3
    move v0, v3

    .line 1417
    goto :goto_1

    :cond_4
    move v0, v3

    goto :goto_1

    .restart local v0       #animating:Z
    :cond_5
    move v2, v3

    .line 1419
    goto :goto_2
.end method

.method public isVisibleLw()Z
    .locals 2

    .prologue
    .line 1317
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1318
    .local v0, atoken:Lcom/android/server/wm/AppWindowToken;
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-nez v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isVisibleNow()Z
    .locals 1

    .prologue
    .line 1363
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowToken;->hidden:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isVisibleOrAdding()Z
    .locals 2

    .prologue
    .line 1382
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1383
    .local v0, atoken:Lcom/android/server/wm/AppWindowToken;
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mReportDestroySurface:Z

    if-eqz v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    if-nez v1, :cond_3

    iget v1, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-nez v1, :cond_3

    :cond_1
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-nez v1, :cond_3

    if-eqz v0, :cond_2

    iget-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-nez v1, :cond_3

    :cond_2
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v1, :cond_3

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isVisibleOrBehindKeyguardLw()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1332
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowToken;->waitingToShow:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v4, v4, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 1339
    :goto_0
    return v3

    .line 1336
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1337
    .local v1, atoken:Lcom/android/server/wm/AppWindowToken;
    if-eqz v1, :cond_5

    iget-object v4, v1, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    if-eqz v4, :cond_4

    move v0, v2

    .line 1339
    .local v0, animating:Z
    :goto_1
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v4, :cond_7

    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v4, :cond_7

    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-nez v4, :cond_7

    if-nez v1, :cond_6

    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v4, :cond_7

    :cond_1
    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-nez v4, :cond_2

    iget v4, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowToken;->hidden:Z

    if-eqz v4, :cond_3

    :cond_2
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mAnimation:Landroid/view/animation/Animation;

    if-nez v4, :cond_3

    if-eqz v0, :cond_7

    :cond_3
    :goto_2
    move v3, v2

    goto :goto_0

    .end local v0           #animating:Z
    :cond_4
    move v0, v3

    .line 1337
    goto :goto_1

    :cond_5
    move v0, v3

    goto :goto_1

    .line 1339
    .restart local v0       #animating:Z
    :cond_6
    iget-boolean v4, v1, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-eqz v4, :cond_1

    :cond_7
    move v2, v3

    goto :goto_2
.end method

.method public isWinVisibleLw()Z
    .locals 2

    .prologue
    .line 1352
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1353
    .local v0, atoken:Lcom/android/server/wm/AppWindowToken;
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->animating:Z

    if-eqz v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isWindowAnimating()Z
    .locals 1

    .prologue
    .line 1438
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method makeInputChannelName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1850
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method performShowLocked()Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 896
    sget-boolean v3, Lcom/android/server/wm/WindowManagerService;->DEBUG_VISIBILITY:Z

    if-eqz v3, :cond_1

    .line 897
    const/4 v1, 0x0

    .line 898
    .local v1, e:Ljava/lang/RuntimeException;
    sget-boolean v3, Lcom/android/server/wm/WindowManagerService;->HIDE_STACK_CRAWLS:Z

    if-nez v3, :cond_0

    .line 899
    new-instance v1, Ljava/lang/RuntimeException;

    .end local v1           #e:Ljava/lang/RuntimeException;
    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    .line 900
    .restart local v1       #e:Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 902
    :cond_0
    const-string v6, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "performShow on "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ": readyToShow="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v7, p0, Lcom/android/server/wm/WindowState;->mReadyToShow:Z

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " readyForDisplay="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isReadyForDisplay()Z

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " starting="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v3, v8, :cond_5

    move v3, v4

    :goto_0
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 906
    .end local v1           #e:Ljava/lang/RuntimeException;
    :cond_1
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mReadyToShow:Z

    if-eqz v3, :cond_10

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isReadyForDisplay()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 907
    sget-boolean v3, Lcom/android/server/wm/WindowManagerService;->SHOW_TRANSACTIONS:Z

    if-nez v3, :cond_2

    sget-boolean v3, Lcom/android/server/wm/WindowManagerService;->DEBUG_ORIENTATION:Z

    if-eqz v3, :cond_3

    :cond_2
    const-string v3, "SHOW (performShowLocked)"

    invoke-static {p0, v3, v9}, Lcom/android/server/wm/WindowManagerService;->logSurface(Lcom/android/server/wm/WindowState;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 909
    :cond_3
    sget-boolean v3, Lcom/android/server/wm/WindowManagerService;->DEBUG_VISIBILITY:Z

    if-eqz v3, :cond_4

    const-string v6, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Showing "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " during animation: policyVis="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v7, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " attHidden="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v7, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " tok.hiddenRequested="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v3, v3, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    :goto_1
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " tok.hidden="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v3, v3, Lcom/android/server/wm/AppWindowToken;->hidden:Z

    :goto_2
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " animating="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v7, p0, Lcom/android/server/wm/WindowState;->mAnimating:Z

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " tok animating="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v3, v3, Lcom/android/server/wm/AppWindowToken;->animating:Z

    :goto_3
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    :cond_4
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, p0}, Lcom/android/server/wm/WindowManagerService;->showSurfaceRobustlyLocked(Lcom/android/server/wm/WindowState;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 972
    :goto_4
    return v5

    .restart local v1       #e:Ljava/lang/RuntimeException;
    :cond_5
    move v3, v5

    .line 902
    goto/16 :goto_0

    .end local v1           #e:Ljava/lang/RuntimeException;
    :cond_6
    move v3, v5

    .line 909
    goto :goto_1

    :cond_7
    move v3, v5

    goto :goto_2

    :cond_8
    move v3, v5

    goto :goto_3

    .line 922
    :cond_9
    const/high16 v3, -0x4080

    iput v3, p0, Lcom/android/server/wm/WindowState;->mLastAlpha:F

    .line 923
    iput-boolean v4, p0, Lcom/android/server/wm/WindowState;->mHasDrawn:Z

    .line 924
    iput-boolean v5, p0, Lcom/android/server/wm/WindowState;->mLastHidden:Z

    .line 925
    iput-boolean v5, p0, Lcom/android/server/wm/WindowState;->mReadyToShow:Z

    .line 926
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->enableScreenIfNeededLocked()V

    .line 928
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, p0}, Lcom/android/server/wm/WindowManagerService;->applyEnterAnimationLocked(Lcom/android/server/wm/WindowState;)V

    .line 930
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 931
    .local v2, i:I
    :cond_a
    :goto_5
    if-lez v2, :cond_b

    .line 932
    add-int/lit8 v2, v2, -0x1

    .line 933
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    .line 934
    .local v0, c:Lcom/android/server/wm/WindowState;
    iget-boolean v3, v0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-eqz v3, :cond_a

    .line 935
    iput-boolean v5, v0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    .line 936
    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v3, :cond_a

    .line 937
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->performShowLocked()Z

    .line 943
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v4, v3, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    goto :goto_5

    .line 948
    .end local v0           #c:Lcom/android/server/wm/WindowState;
    :cond_b
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v3, v8, :cond_10

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_10

    .line 950
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iput-boolean v4, v3, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    .line 952
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v3, v3, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    if-eqz v3, :cond_f

    .line 953
    sget-boolean v3, Lcom/android/server/wm/WindowManagerService;->DEBUG_STARTING_WINDOW:Z

    if-nez v3, :cond_c

    sget-boolean v3, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v3, :cond_d

    :cond_c
    const-string v3, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Finish starting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": first real window is shown, no animation"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    :cond_d
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_e

    .line 961
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v3}, Landroid/view/animation/Animation;->cancel()V

    .line 962
    iput-object v9, p0, Lcom/android/server/wm/WindowState;->mAnimation:Landroid/view/animation/Animation;

    .line 964
    iput-boolean v4, p0, Lcom/android/server/wm/WindowState;->mAnimating:Z

    .line 966
    :cond_e
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 967
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/4 v5, 0x7

    invoke-virtual {v3, v5}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 969
    :cond_f
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    .end local v2           #i:I
    :cond_10
    move v5, v4

    .line 972
    goto/16 :goto_4
.end method

.method prelayout()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f80

    .line 1162
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    if-eqz v0, :cond_0

    .line 1163
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mCompatibleScreenScale:F

    iput v0, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    .line 1164
    iget v0, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    div-float v0, v1, v0

    iput v0, p0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    .line 1168
    :goto_0
    return-void

    .line 1166
    :cond_0
    iput v1, p0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    iput v1, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    goto :goto_0
.end method

.method removeLocked()V
    .locals 3

    .prologue
    .line 1506
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->disposeInputChannel()V

    .line 1508
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_1

    .line 1509
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_ADD_REMOVE:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1510
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1512
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->destroyDeferredSurfaceLocked()V

    .line 1513
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->destroySurfaceLocked()V

    .line 1514
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v0}, Lcom/android/server/wm/Session;->windowRemovedLocked()V

    .line 1516
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mDeathRecipient:Lcom/android/server/wm/WindowState$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1521
    :goto_0
    return-void

    .line 1517
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setAnimation(Landroid/view/animation/Animation;)V
    .locals 4
    .parameter "anim"

    .prologue
    const/4 v3, 0x0

    .line 617
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->localLOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting animation in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    :cond_0
    iput-boolean v3, p0, Lcom/android/server/wm/WindowState;->mAnimating:Z

    .line 620
    iput-boolean v3, p0, Lcom/android/server/wm/WindowState;->mLocalAnimating:Z

    .line 621
    iput-object p1, p0, Lcom/android/server/wm/WindowState;->mAnimation:Landroid/view/animation/Animation;

    .line 622
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAnimation:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 623
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScale:F

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 624
    return-void
.end method

.method setInputChannel(Landroid/view/InputChannel;)V
    .locals 2
    .parameter "inputChannel"

    .prologue
    .line 1524
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_0

    .line 1525
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Window already has an input channel."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1528
    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    .line 1529
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/wm/InputWindowHandle;

    iput-object p1, v0, Lcom/android/server/wm/InputWindowHandle;->inputChannel:Landroid/view/InputChannel;

    .line 1530
    return-void
.end method

.method shouldAnimateMove()Z
    .locals 2

    .prologue
    .line 1493
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mContentChanged:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mLastHidden:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mLastFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mLastFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-eq v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->shouldAnimateMove()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->isScreenOnFully()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showLw(Z)Z
    .locals 1
    .parameter "doAnimation"

    .prologue
    .line 1572
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowState;->showLw(ZZ)Z

    move-result v0

    return v0
.end method

.method showLw(ZZ)Z
    .locals 4
    .parameter "doAnimation"
    .parameter "requestAnim"

    .prologue
    const/4 v0, 0x1

    .line 1576
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    if-eqz v1, :cond_1

    .line 1577
    const/4 v0, 0x0

    .line 1600
    :cond_0
    :goto_0
    return v0

    .line 1579
    :cond_1
    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->DEBUG_VISIBILITY:Z

    if-eqz v1, :cond_2

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Policy visibility true: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1580
    :cond_2
    if-eqz p1, :cond_5

    .line 1581
    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->DEBUG_VISIBILITY:Z

    if-eqz v1, :cond_3

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doAnimation: mPolicyVisibility="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mAnimation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1583
    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy;->isScreenOnFully()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1584
    :cond_4
    const/4 p1, 0x0

    .line 1592
    :cond_5
    :goto_1
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    .line 1593
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    .line 1594
    if-eqz p1, :cond_6

    .line 1595
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    const/16 v2, 0x1001

    invoke-virtual {v1, p0, v2, v0}, Lcom/android/server/wm/WindowManagerService;->applyAnimationLocked(Lcom/android/server/wm/WindowState;IZ)Z

    .line 1597
    :cond_6
    if-eqz p2, :cond_0

    .line 1598
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/WindowManagerService;->requestAnimationLocked(J)V

    goto :goto_0

    .line 1585
    :cond_7
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAnimation:Landroid/view/animation/Animation;

    if-nez v1, :cond_5

    .line 1589
    const/4 p1, 0x0

    goto :goto_1
.end method

.method stepAnimationLocked(JII)Z
    .locals 7
    .parameter "currentTime"
    .parameter "dw"
    .parameter "dh"

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 978
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v1, :cond_16

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy;->isScreenOnFully()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 981
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mDrawPending:Z

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mCommitDrawPending:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_6

    .line 982
    iput-boolean v3, p0, Lcom/android/server/wm/WindowState;->mHasTransformation:Z

    .line 983
    iput-boolean v3, p0, Lcom/android/server/wm/WindowState;->mHasLocalTransformation:Z

    .line 984
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mLocalAnimating:Z

    if-nez v1, :cond_1

    .line 985
    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v1, :cond_0

    const-string v1, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Starting animation in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " @ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": ww="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " wh="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dw="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dh="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " scale="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v5, v5, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScale:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAnimation:Landroid/view/animation/Animation;

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {v1, v4, v5, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 991
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, p1, p2}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 992
    iput-boolean v3, p0, Lcom/android/server/wm/WindowState;->mLocalAnimating:Z

    .line 993
    iput-boolean v3, p0, Lcom/android/server/wm/WindowState;->mAnimating:Z

    .line 995
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->clear()V

    .line 996
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAnimation:Landroid/view/animation/Animation;

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1, p1, p2, v4}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v0

    .line 998
    .local v0, more:Z
    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v1, :cond_2

    const-string v1, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stepped animation in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": more="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", xform="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    :cond_2
    if-eqz v0, :cond_4

    move v2, v3

    .line 1108
    .end local v0           #more:Z
    :cond_3
    :goto_0
    return v2

    .line 1005
    .restart local v0       #more:Z
    :cond_4
    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v1, :cond_5

    const-string v1, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Finished animation in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " @ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_6

    .line 1010
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1}, Landroid/view/animation/Animation;->cancel()V

    .line 1011
    iput-object v6, p0, Lcom/android/server/wm/WindowState;->mAnimation:Landroid/view/animation/Animation;

    .line 1015
    .end local v0           #more:Z
    :cond_6
    iput-boolean v2, p0, Lcom/android/server/wm/WindowState;->mHasLocalTransformation:Z

    .line 1016
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mLocalAnimating:Z

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAnimationIsEntrance:Z

    if-eqz v1, :cond_8

    :cond_7
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_8

    .line 1025
    iput-boolean v3, p0, Lcom/android/server/wm/WindowState;->mAnimating:Z

    .line 1026
    iput-boolean v3, p0, Lcom/android/server/wm/WindowState;->mHasTransformation:Z

    .line 1027
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->clear()V

    goto :goto_0

    .line 1029
    :cond_8
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mHasTransformation:Z

    if-eqz v1, :cond_15

    .line 1032
    iput-boolean v3, p0, Lcom/android/server/wm/WindowState;->mAnimating:Z

    .line 1045
    :cond_9
    :goto_1
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAnimating:Z

    if-nez v1, :cond_a

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mLocalAnimating:Z

    if-eqz v1, :cond_3

    .line 1049
    :cond_a
    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v1, :cond_b

    const-string v4, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Animation done in "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ": exiting="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v5, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", reportedVisible="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v1, v1, Lcom/android/server/wm/AppWindowToken;->reportedVisible:Z

    :goto_2
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    :cond_b
    iput-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAnimating:Z

    .line 1055
    iput-boolean v2, p0, Lcom/android/server/wm/WindowState;->mLocalAnimating:Z

    .line 1056
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_c

    .line 1057
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1}, Landroid/view/animation/Animation;->cancel()V

    .line 1058
    iput-object v6, p0, Lcom/android/server/wm/WindowState;->mAnimation:Landroid/view/animation/Animation;

    .line 1060
    :cond_c
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    if-ne v1, p0, :cond_d

    .line 1061
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-object v6, v1, Lcom/android/server/wm/WindowManagerService;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    .line 1063
    :cond_d
    iget v1, p0, Lcom/android/server/wm/WindowState;->mLayer:I

    iput v1, p0, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    .line 1064
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-eqz v1, :cond_18

    .line 1065
    iget v1, p0, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v4, v4, Lcom/android/server/wm/WindowManagerService;->mInputMethodAnimLayerAdjustment:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    .line 1069
    :cond_e
    :goto_3
    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->DEBUG_LAYERS:Z

    if-eqz v1, :cond_f

    const-string v1, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stepping win "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " anim layer: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    :cond_f
    iput-boolean v2, p0, Lcom/android/server/wm/WindowState;->mHasTransformation:Z

    .line 1072
    iput-boolean v2, p0, Lcom/android/server/wm/WindowState;->mHasLocalTransformation:Z

    .line 1073
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    if-eq v1, v4, :cond_12

    .line 1074
    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->DEBUG_VISIBILITY:Z

    if-eqz v1, :cond_10

    .line 1075
    const-string v1, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Policy visibility changing after anim in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    :cond_10
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    .line 1079
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v3, v1, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 1080
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-nez v1, :cond_12

    .line 1081
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-ne v1, p0, :cond_11

    .line 1082
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v3, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 1087
    :cond_11
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->enableScreenIfNeededLocked()V

    .line 1090
    :cond_12
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->clear()V

    .line 1091
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mHasDrawn:Z

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_14

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v1, v1, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    if-eqz v1, :cond_14

    .line 1096
    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->DEBUG_STARTING_WINDOW:Z

    if-eqz v1, :cond_13

    const-string v1, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Finish starting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": first real window done animating"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    :cond_13
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1099
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/4 v3, 0x7

    invoke-virtual {v1, v3}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 1102
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->finishExit()V

    .line 1104
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_3

    .line 1105
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    goto/16 :goto_0

    .line 1033
    :cond_15
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1034
    iput-boolean v3, p0, Lcom/android/server/wm/WindowState;->mAnimating:Z

    goto/16 :goto_1

    .line 1036
    :cond_16
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_9

    .line 1039
    iput-boolean v3, p0, Lcom/android/server/wm/WindowState;->mAnimating:Z

    .line 1040
    iput-boolean v3, p0, Lcom/android/server/wm/WindowState;->mLocalAnimating:Z

    .line 1041
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1}, Landroid/view/animation/Animation;->cancel()V

    .line 1042
    iput-object v6, p0, Lcom/android/server/wm/WindowState;->mAnimation:Landroid/view/animation/Animation;

    goto/16 :goto_1

    :cond_17
    move v1, v2

    .line 1049
    goto/16 :goto_2

    .line 1066
    :cond_18
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v1, :cond_e

    .line 1067
    iget v1, p0, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v4, v4, Lcom/android/server/wm/WindowManagerService;->mWallpaperAnimLayerAdjustment:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    goto/16 :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1856
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mStringNameCache:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mLastTitle:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mWasPaused:Z

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowToken;->paused:Z

    if-eq v0, v1, :cond_1

    .line 1858
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mLastTitle:Ljava/lang/CharSequence;

    .line 1859
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowToken;->paused:Z

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mWasPaused:Z

    .line 1860
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Window{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mLastTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " paused="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mWasPaused:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mStringNameCache:Ljava/lang/String;

    .line 1863
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mStringNameCache:Ljava/lang/String;

    return-object v0
.end method
