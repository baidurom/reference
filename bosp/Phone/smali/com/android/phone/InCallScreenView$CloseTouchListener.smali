.class Lcom/android/phone/InCallScreenView$CloseTouchListener;
.super Ljava/lang/Object;
.source "InCallScreenView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InCallScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CloseTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallScreenView;


# direct methods
.method private constructor <init>(Lcom/android/phone/InCallScreenView;)V
    .locals 0
    .parameter

    .prologue
    .line 301
    iput-object p1, p0, Lcom/android/phone/InCallScreenView$CloseTouchListener;->this$0:Lcom/android/phone/InCallScreenView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/InCallScreenView;Lcom/android/phone/InCallScreenView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 301
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreenView$CloseTouchListener;-><init>(Lcom/android/phone/InCallScreenView;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "v"
    .parameter "event"

    .prologue
    .line 305
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 306
    .local v6, y:F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    .line 307
    .local v3, rawY:F
    iget-object v8, p0, Lcom/android/phone/InCallScreenView$CloseTouchListener;->this$0:Lcom/android/phone/InCallScreenView;

    iget-object v9, p0, Lcom/android/phone/InCallScreenView$CloseTouchListener;->this$0:Lcom/android/phone/InCallScreenView;

    #getter for: Lcom/android/phone/InCallScreenView;->mAbsPos:[I
    invoke-static {v9}, Lcom/android/phone/InCallScreenView;->access$500(Lcom/android/phone/InCallScreenView;)[I

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/phone/InCallScreenView;->getLocationOnScreen([I)V

    .line 308
    iget-object v8, p0, Lcom/android/phone/InCallScreenView$CloseTouchListener;->this$0:Lcom/android/phone/InCallScreenView;

    #getter for: Lcom/android/phone/InCallScreenView;->mHandleView:Landroid/view/View;
    invoke-static {v8}, Lcom/android/phone/InCallScreenView;->access$700(Lcom/android/phone/InCallScreenView;)Landroid/view/View;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/InCallScreenView$CloseTouchListener;->this$0:Lcom/android/phone/InCallScreenView;

    #getter for: Lcom/android/phone/InCallScreenView;->mHandleViewAbsPos:[I
    invoke-static {v9}, Lcom/android/phone/InCallScreenView;->access$600(Lcom/android/phone/InCallScreenView;)[I

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 310
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 382
    :cond_0
    :goto_0
    const/4 v8, 0x1

    return v8

    .line 312
    :pswitch_0
    iget-object v8, p0, Lcom/android/phone/InCallScreenView$CloseTouchListener;->this$0:Lcom/android/phone/InCallScreenView;

    const/4 v9, 0x1

    #setter for: Lcom/android/phone/InCallScreenView;->mTracking:Z
    invoke-static {v8, v9}, Lcom/android/phone/InCallScreenView;->access$802(Lcom/android/phone/InCallScreenView;Z)Z

    .line 313
    iget-object v8, p0, Lcom/android/phone/InCallScreenView$CloseTouchListener;->this$0:Lcom/android/phone/InCallScreenView;

    #getter for: Lcom/android/phone/InCallScreenView;->mHandleView:Landroid/view/View;
    invoke-static {v8}, Lcom/android/phone/InCallScreenView;->access$700(Lcom/android/phone/InCallScreenView;)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/view/View;->setPressed(Z)V

    .line 314
    iget-object v8, p0, Lcom/android/phone/InCallScreenView$CloseTouchListener;->this$0:Lcom/android/phone/InCallScreenView;

    invoke-virtual {v8}, Lcom/android/phone/InCallScreenView;->postInvalidate()V

    .line 315
    iget-object v8, p0, Lcom/android/phone/InCallScreenView$CloseTouchListener;->this$0:Lcom/android/phone/InCallScreenView;

    iget-object v9, p0, Lcom/android/phone/InCallScreenView$CloseTouchListener;->this$0:Lcom/android/phone/InCallScreenView;

    #getter for: Lcom/android/phone/InCallScreenView;->mStatusBarHeight:I
    invoke-static {v9}, Lcom/android/phone/InCallScreenView;->access$900(Lcom/android/phone/InCallScreenView;)I

    move-result v9

    int-to-float v9, v9

    sub-float v9, v3, v9

    iput v9, v8, Lcom/android/phone/InCallScreenView;->mInitialTouchY:F

    .line 316
    iget-object v8, p0, Lcom/android/phone/InCallScreenView$CloseTouchListener;->this$0:Lcom/android/phone/InCallScreenView;

    invoke-static {}, Lcom/android/phone/InCallScreenView$FlingTracker;->obtain()Lcom/android/phone/InCallScreenView$FlingTracker;

    move-result-object v9

    #setter for: Lcom/android/phone/InCallScreenView;->mVelocityTracker:Lcom/android/phone/InCallScreenView$FlingTracker;
    invoke-static {v8, v9}, Lcom/android/phone/InCallScreenView;->access$1002(Lcom/android/phone/InCallScreenView;Lcom/android/phone/InCallScreenView$FlingTracker;)Lcom/android/phone/InCallScreenView$FlingTracker;

    .line 317
    iget-object v8, p0, Lcom/android/phone/InCallScreenView$CloseTouchListener;->this$0:Lcom/android/phone/InCallScreenView;

    #calls: Lcom/android/phone/InCallScreenView;->trackMovement(Landroid/view/MotionEvent;)V
    invoke-static {v8, p2}, Lcom/android/phone/InCallScreenView;->access$1100(Lcom/android/phone/InCallScreenView;Landroid/view/MotionEvent;)V

    .line 318
    iget-object v8, p0, Lcom/android/phone/InCallScreenView$CloseTouchListener;->this$0:Lcom/android/phone/InCallScreenView;

    #getter for: Lcom/android/phone/InCallScreenView;->mTimeAnimator:Landroid/animation/TimeAnimator;
    invoke-static {v8}, Lcom/android/phone/InCallScreenView;->access$100(Lcom/android/phone/InCallScreenView;)Landroid/animation/TimeAnimator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/animation/TimeAnimator;->cancel()V

    .line 319
    iget-object v8, p0, Lcom/android/phone/InCallScreenView$CloseTouchListener;->this$0:Lcom/android/phone/InCallScreenView;

    #getter for: Lcom/android/phone/InCallScreenView;->mExpandedHeight:F
    invoke-static {v8}, Lcom/android/phone/InCallScreenView;->access$1200(Lcom/android/phone/InCallScreenView;)F

    move-result v8

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-nez v8, :cond_0

    .line 320
    iget-object v8, p0, Lcom/android/phone/InCallScreenView$CloseTouchListener;->this$0:Lcom/android/phone/InCallScreenView;

    #calls: Lcom/android/phone/InCallScreenView;->runPeekAnimation()V
    invoke-static {v8}, Lcom/android/phone/InCallScreenView;->access$1300(Lcom/android/phone/InCallScreenView;)V

    goto :goto_0

    .line 325
    :pswitch_1
    move v1, v3

    .line 326
    .local v1, h:F
    iget-object v8, p0, Lcom/android/phone/InCallScreenView$CloseTouchListener;->this$0:Lcom/android/phone/InCallScreenView;

    invoke-virtual {v8, v1}, Lcom/android/phone/InCallScreenView;->setExpandedHeightInternal(F)V

    .line 327
    iget-object v8, p0, Lcom/android/phone/InCallScreenView$CloseTouchListener;->this$0:Lcom/android/phone/InCallScreenView;

    #calls: Lcom/android/phone/InCallScreenView;->trackMovement(Landroid/view/MotionEvent;)V
    invoke-static {v8, p2}, Lcom/android/phone/InCallScreenView;->access$1100(Lcom/android/phone/InCallScreenView;Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 332
    .end local v1           #h:F
    :pswitch_2
    iget-object v8, p0, Lcom/android/phone/InCallScreenView$CloseTouchListener;->this$0:Lcom/android/phone/InCallScreenView;

    iget-object v9, p0, Lcom/android/phone/InCallScreenView$CloseTouchListener;->this$0:Lcom/android/phone/InCallScreenView;

    #getter for: Lcom/android/phone/InCallScreenView;->mStatusBarHeight:I
    invoke-static {v9}, Lcom/android/phone/InCallScreenView;->access$900(Lcom/android/phone/InCallScreenView;)I

    move-result v9

    int-to-float v9, v9

    sub-float v9, v3, v9

    iput v9, v8, Lcom/android/phone/InCallScreenView;->mFinalTouchY:F

    .line 333
    iget-object v8, p0, Lcom/android/phone/InCallScreenView$CloseTouchListener;->this$0:Lcom/android/phone/InCallScreenView;

    const/4 v9, 0x0

    #setter for: Lcom/android/phone/InCallScreenView;->mTracking:Z
    invoke-static {v8, v9}, Lcom/android/phone/InCallScreenView;->access$802(Lcom/android/phone/InCallScreenView;Z)Z

    .line 334
    iget-object v8, p0, Lcom/android/phone/InCallScreenView$CloseTouchListener;->this$0:Lcom/android/phone/InCallScreenView;

    #getter for: Lcom/android/phone/InCallScreenView;->mHandleView:Landroid/view/View;
    invoke-static {v8}, Lcom/android/phone/InCallScreenView;->access$700(Lcom/android/phone/InCallScreenView;)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setPressed(Z)V

    .line 335
    iget-object v8, p0, Lcom/android/phone/InCallScreenView$CloseTouchListener;->this$0:Lcom/android/phone/InCallScreenView;

    invoke-virtual {v8}, Lcom/android/phone/InCallScreenView;->postInvalidate()V

    .line 336
    iget-object v8, p0, Lcom/android/phone/InCallScreenView$CloseTouchListener;->this$0:Lcom/android/phone/InCallScreenView;

    #calls: Lcom/android/phone/InCallScreenView;->trackMovement(Landroid/view/MotionEvent;)V
    invoke-static {v8, p2}, Lcom/android/phone/InCallScreenView;->access$1100(Lcom/android/phone/InCallScreenView;Landroid/view/MotionEvent;)V

    .line 338
    const/4 v4, 0x0

    .local v4, vel:F
    const/4 v7, 0x0

    .local v7, yVel:F
    const/4 v5, 0x0

    .line 339
    .local v5, xVel:F
    const/4 v2, 0x0

    .line 341
    .local v2, negative:Z
    iget-object v8, p0, Lcom/android/phone/InCallScreenView$CloseTouchListener;->this$0:Lcom/android/phone/InCallScreenView;

    #getter for: Lcom/android/phone/InCallScreenView;->mVelocityTracker:Lcom/android/phone/InCallScreenView$FlingTracker;
    invoke-static {v8}, Lcom/android/phone/InCallScreenView;->access$1000(Lcom/android/phone/InCallScreenView;)Lcom/android/phone/InCallScreenView$FlingTracker;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 343
    iget-object v8, p0, Lcom/android/phone/InCallScreenView$CloseTouchListener;->this$0:Lcom/android/phone/InCallScreenView;

    #getter for: Lcom/android/phone/InCallScreenView;->mVelocityTracker:Lcom/android/phone/InCallScreenView$FlingTracker;
    invoke-static {v8}, Lcom/android/phone/InCallScreenView;->access$1000(Lcom/android/phone/InCallScreenView;)Lcom/android/phone/InCallScreenView$FlingTracker;

    move-result-object v8

    const-wide/16 v9, 0x3e8

    invoke-virtual {v8, v9, v10}, Lcom/android/phone/InCallScreenView$FlingTracker;->computeCurrentVelocity(J)V

    .line 345
    iget-object v8, p0, Lcom/android/phone/InCallScreenView$CloseTouchListener;->this$0:Lcom/android/phone/InCallScreenView;

    #getter for: Lcom/android/phone/InCallScreenView;->mVelocityTracker:Lcom/android/phone/InCallScreenView$FlingTracker;
    invoke-static {v8}, Lcom/android/phone/InCallScreenView;->access$1000(Lcom/android/phone/InCallScreenView;)Lcom/android/phone/InCallScreenView$FlingTracker;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/InCallScreenView$FlingTracker;->getYVelocity()F

    move-result v7

    .line 346
    const/4 v8, 0x0

    cmpg-float v8, v7, v8

    if-gez v8, :cond_8

    const/4 v2, 0x1

    .line 348
    :goto_1
    iget-object v8, p0, Lcom/android/phone/InCallScreenView$CloseTouchListener;->this$0:Lcom/android/phone/InCallScreenView;

    #getter for: Lcom/android/phone/InCallScreenView;->mVelocityTracker:Lcom/android/phone/InCallScreenView$FlingTracker;
    invoke-static {v8}, Lcom/android/phone/InCallScreenView;->access$1000(Lcom/android/phone/InCallScreenView;)Lcom/android/phone/InCallScreenView$FlingTracker;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/InCallScreenView$FlingTracker;->getXVelocity()F

    move-result v5

    .line 349
    const/4 v8, 0x0

    cmpg-float v8, v5, v8

    if-gez v8, :cond_1

    .line 350
    neg-float v5, v5

    .line 352
    :cond_1
    iget-object v8, p0, Lcom/android/phone/InCallScreenView$CloseTouchListener;->this$0:Lcom/android/phone/InCallScreenView;

    #getter for: Lcom/android/phone/InCallScreenView;->mFlingGestureMaxXVelocityPx:F
    invoke-static {v8}, Lcom/android/phone/InCallScreenView;->access$1400(Lcom/android/phone/InCallScreenView;)F

    move-result v8

    cmpl-float v8, v5, v8

    if-lez v8, :cond_2

    .line 353
    iget-object v8, p0, Lcom/android/phone/InCallScreenView$CloseTouchListener;->this$0:Lcom/android/phone/InCallScreenView;

    #getter for: Lcom/android/phone/InCallScreenView;->mFlingGestureMaxXVelocityPx:F
    invoke-static {v8}, Lcom/android/phone/InCallScreenView;->access$1400(Lcom/android/phone/InCallScreenView;)F

    move-result v5

    .line 356
    :cond_2
    float-to-double v8, v7

    float-to-double v10, v5

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v8

    double-to-float v4, v8

    .line 357
    iget-object v8, p0, Lcom/android/phone/InCallScreenView$CloseTouchListener;->this$0:Lcom/android/phone/InCallScreenView;

    #getter for: Lcom/android/phone/InCallScreenView;->mFlingGestureMaxOutputVelocityPx:F
    invoke-static {v8}, Lcom/android/phone/InCallScreenView;->access$1500(Lcom/android/phone/InCallScreenView;)F

    move-result v8

    cmpl-float v8, v4, v8

    if-lez v8, :cond_3

    .line 358
    iget-object v8, p0, Lcom/android/phone/InCallScreenView$CloseTouchListener;->this$0:Lcom/android/phone/InCallScreenView;

    #getter for: Lcom/android/phone/InCallScreenView;->mFlingGestureMaxOutputVelocityPx:F
    invoke-static {v8}, Lcom/android/phone/InCallScreenView;->access$1500(Lcom/android/phone/InCallScreenView;)F

    move-result v4

    .line 361
    :cond_3
    iget-object v8, p0, Lcom/android/phone/InCallScreenView$CloseTouchListener;->this$0:Lcom/android/phone/InCallScreenView;

    #getter for: Lcom/android/phone/InCallScreenView;->mVelocityTracker:Lcom/android/phone/InCallScreenView$FlingTracker;
    invoke-static {v8}, Lcom/android/phone/InCallScreenView;->access$1000(Lcom/android/phone/InCallScreenView;)Lcom/android/phone/InCallScreenView$FlingTracker;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/InCallScreenView$FlingTracker;->recycle()V

    .line 362
    iget-object v8, p0, Lcom/android/phone/InCallScreenView$CloseTouchListener;->this$0:Lcom/android/phone/InCallScreenView;

    const/4 v9, 0x0

    #setter for: Lcom/android/phone/InCallScreenView;->mVelocityTracker:Lcom/android/phone/InCallScreenView$FlingTracker;
    invoke-static {v8, v9}, Lcom/android/phone/InCallScreenView;->access$1002(Lcom/android/phone/InCallScreenView;Lcom/android/phone/InCallScreenView$FlingTracker;)Lcom/android/phone/InCallScreenView$FlingTracker;

    .line 367
    :cond_4
    iget-object v8, p0, Lcom/android/phone/InCallScreenView$CloseTouchListener;->this$0:Lcom/android/phone/InCallScreenView;

    iget v8, v8, Lcom/android/phone/InCallScreenView;->mFinalTouchY:F

    iget-object v9, p0, Lcom/android/phone/InCallScreenView$CloseTouchListener;->this$0:Lcom/android/phone/InCallScreenView;

    iget v9, v9, Lcom/android/phone/InCallScreenView;->mInitialTouchY:F

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 368
    .local v0, deltaY:F
    iget-object v8, p0, Lcom/android/phone/InCallScreenView$CloseTouchListener;->this$0:Lcom/android/phone/InCallScreenView;

    #getter for: Lcom/android/phone/InCallScreenView;->mFlingGestureMinDistPx:F
    invoke-static {v8}, Lcom/android/phone/InCallScreenView;->access$1600(Lcom/android/phone/InCallScreenView;)F

    move-result v8

    cmpg-float v8, v0, v8

    if-ltz v8, :cond_5

    iget-object v8, p0, Lcom/android/phone/InCallScreenView$CloseTouchListener;->this$0:Lcom/android/phone/InCallScreenView;

    #getter for: Lcom/android/phone/InCallScreenView;->mFlingExpandMinVelocityPx:F
    invoke-static {v8}, Lcom/android/phone/InCallScreenView;->access$1700(Lcom/android/phone/InCallScreenView;)F

    move-result v8

    cmpg-float v8, v4, v8

    if-gez v8, :cond_6

    .line 371
    :cond_5
    const/4 v4, 0x0

    .line 374
    :cond_6
    if-eqz v2, :cond_7

    .line 375
    neg-float v4, v4

    .line 378
    :cond_7
    iget-object v8, p0, Lcom/android/phone/InCallScreenView$CloseTouchListener;->this$0:Lcom/android/phone/InCallScreenView;

    const/4 v9, 0x1

    invoke-virtual {v8, v4, v9}, Lcom/android/phone/InCallScreenView;->fling(FZ)V

    goto/16 :goto_0

    .line 346
    .end local v0           #deltaY:F
    :cond_8
    const/4 v2, 0x0

    goto :goto_1

    .line 310
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
