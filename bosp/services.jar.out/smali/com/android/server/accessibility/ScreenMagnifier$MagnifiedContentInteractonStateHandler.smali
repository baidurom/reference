.class final Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ScreenMagnifier.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/ScreenMagnifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MagnifiedContentInteractonStateHandler"
.end annotation


# static fields
.field private static final MAX_SCALE:F = 5.0f

.field private static final MIN_SCALE:F = 1.3f

.field private static final SCALING_THRESHOLD:F = 0.3f


# instance fields
.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private mInitialScaleFactor:F

.field private final mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private mScaling:Z

.field final synthetic this$0:Lcom/android/server/accessibility/ScreenMagnifier;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/ScreenMagnifier;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 383
    iput-object p1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 380
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->mInitialScaleFactor:F

    .line 384
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-direct {v0, p2, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 385
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p2, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->mGestureDetector:Landroid/view/GestureDetector;

    .line 386
    return-void
.end method

.method static synthetic access$300(Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 370
    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->clear()V

    return-void
.end method

.method private clear()V
    .locals 1

    .prologue
    .line 464
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->mInitialScaleFactor:F

    .line 465
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->mScaling:Z

    .line 466
    return-void
.end method


# virtual methods
.method public onMotionEvent(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    const/4 v3, 0x3

    .line 389
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 390
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 391
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    #getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mCurrentState:I
    invoke-static {v1}, Lcom/android/server/accessibility/ScreenMagnifier;->access$500(Lcom/android/server/accessibility/ScreenMagnifier;)I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    .line 407
    :cond_0
    :goto_0
    return-void

    .line 394
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 395
    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->clear()V

    .line 396
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    #getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;
    invoke-static {v1}, Lcom/android/server/accessibility/ScreenMagnifier;->access$600(Lcom/android/server/accessibility/ScreenMagnifier;)Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->getScale()F

    move-result v1

    const v2, 0x3fa66666

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/high16 v2, 0x40a0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 398
    .local v0, scale:F
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    #calls: Lcom/android/server/accessibility/ScreenMagnifier;->getPersistedScale()F
    invoke-static {v1}, Lcom/android/server/accessibility/ScreenMagnifier;->access$700(Lcom/android/server/accessibility/ScreenMagnifier;)F

    move-result v1

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_2

    .line 399
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    #calls: Lcom/android/server/accessibility/ScreenMagnifier;->persistScale(F)V
    invoke-static {v1, v0}, Lcom/android/server/accessibility/ScreenMagnifier;->access$800(Lcom/android/server/accessibility/ScreenMagnifier;F)V

    .line 401
    :cond_2
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    #getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mPreviousState:I
    invoke-static {v1}, Lcom/android/server/accessibility/ScreenMagnifier;->access$900(Lcom/android/server/accessibility/ScreenMagnifier;)I

    move-result v1

    if-ne v1, v3, :cond_3

    .line 402
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    #calls: Lcom/android/server/accessibility/ScreenMagnifier;->transitionToState(I)V
    invoke-static {v1, v3}, Lcom/android/server/accessibility/ScreenMagnifier;->access$1000(Lcom/android/server/accessibility/ScreenMagnifier;I)V

    goto :goto_0

    .line 404
    :cond_3
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    const/4 v2, 0x2

    #calls: Lcom/android/server/accessibility/ScreenMagnifier;->transitionToState(I)V
    invoke-static {v1, v2}, Lcom/android/server/accessibility/ScreenMagnifier;->access$1000(Lcom/android/server/accessibility/ScreenMagnifier;I)V

    goto :goto_0
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 8
    .parameter "detector"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 430
    iget-boolean v5, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->mScaling:Z

    if-nez v5, :cond_2

    .line 431
    iget v5, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->mInitialScaleFactor:F

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1

    .line 432
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v3

    iput v3, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->mInitialScaleFactor:F

    :cond_0
    move v3, v4

    .line 450
    :goto_0
    return v3

    .line 434
    :cond_1
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v5

    iget v6, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->mInitialScaleFactor:F

    sub-float v0, v5, v6

    .line 435
    .local v0, deltaScale:F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v6, 0x3e99999a

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    .line 436
    iput-boolean v3, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->mScaling:Z

    goto :goto_0

    .line 442
    .end local v0           #deltaScale:F
    :cond_2
    iget-object v5, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    #getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;
    invoke-static {v5}, Lcom/android/server/accessibility/ScreenMagnifier;->access$600(Lcom/android/server/accessibility/ScreenMagnifier;)Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->getScale()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v6

    mul-float v1, v5, v6

    .line 444
    .local v1, newScale:F
    const v5, 0x3fa66666

    invoke-static {v1, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    const/high16 v6, 0x40a0

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 448
    .local v2, normalizedNewScale:F
    iget-object v5, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    #getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;
    invoke-static {v5}, Lcom/android/server/accessibility/ScreenMagnifier;->access$600(Lcom/android/server/accessibility/ScreenMagnifier;)Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    move-result-object v5

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v7

    invoke-virtual {v5, v2, v6, v7, v4}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->setScale(FFFZ)V

    goto :goto_0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 2
    .parameter "detector"

    .prologue
    .line 455
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    #getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mCurrentState:I
    invoke-static {v0}, Lcom/android/server/accessibility/ScreenMagnifier;->access$500(Lcom/android/server/accessibility/ScreenMagnifier;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0
    .parameter "detector"

    .prologue
    .line 460
    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->clear()V

    .line 461
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 8
    .parameter "first"
    .parameter "second"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v7, 0x1

    .line 412
    iget-object v5, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    #getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mCurrentState:I
    invoke-static {v5}, Lcom/android/server/accessibility/ScreenMagnifier;->access$500(Lcom/android/server/accessibility/ScreenMagnifier;)I

    move-result v5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_0

    .line 425
    :goto_0
    return v7

    .line 415
    :cond_0
    iget-object v5, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    #getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;
    invoke-static {v5}, Lcom/android/server/accessibility/ScreenMagnifier;->access$600(Lcom/android/server/accessibility/ScreenMagnifier;)Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->getScale()F

    move-result v2

    .line 416
    .local v2, scale:F
    div-float v3, p3, v2

    .line 417
    .local v3, scrollX:F
    div-float v4, p4, v2

    .line 418
    .local v4, scrollY:F
    iget-object v5, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    #getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;
    invoke-static {v5}, Lcom/android/server/accessibility/ScreenMagnifier;->access$600(Lcom/android/server/accessibility/ScreenMagnifier;)Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->getMagnifiedRegionCenterX()F

    move-result v5

    add-float v0, v5, v3

    .line 419
    .local v0, centerX:F
    iget-object v5, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    #getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;
    invoke-static {v5}, Lcom/android/server/accessibility/ScreenMagnifier;->access$600(Lcom/android/server/accessibility/ScreenMagnifier;)Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->getMagnifiedRegionCenterY()F

    move-result v5

    add-float v1, v5, v4

    .line 424
    .local v1, centerY:F
    iget-object v5, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    #getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;
    invoke-static {v5}, Lcom/android/server/accessibility/ScreenMagnifier;->access$600(Lcom/android/server/accessibility/ScreenMagnifier;)Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v1, v6}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->setMagnifiedRegionCenter(FFZ)V

    goto :goto_0
.end method
